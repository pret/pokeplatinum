#include <nitro.h>
#include <nitro/sinit.h>

#include "generated/sdat.h"

#include "applications/poketch/alarm_clock/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch.h"
#include "rtc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

#define BUTTON_SET_ALARM   0
#define BUTTON_EDIT_ALARM  1
#define BUTTON_HOUR_UP     2
#define BUTTON_HOUR_DOWN   3
#define BUTTON_MINUTE_UP   4
#define BUTTON_MINUTE_DOWN 5

typedef struct PoketchAlarmClock {
    u8 state;
    u8 subState;
    u8 shouldExit;
    AlarmClockData clockData;
    AlarmClockGraphics *graphics;
    PoketchSystem *poketchSys;
    Poketch *poketch;
    PoketchButtonManager *buttonManager;
    u32 pressedButton;
    u32 buttonState;
    RTCTime currentTime;
    BOOL alwaysFalse;
    BOOL currentTimeLoaded;
} PoketchAlarmClock;

typedef BOOL (*StateFunc)(PoketchAlarmClock *);

enum AlarmClockState {
    STATE_LOAD_APP = 0,
    STATE_EDITING_ALARM,
    STATE_ALARM_SET,
    STATE_ALARM_BLARING,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchAlarmClock *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchAlarmClock *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);
static void InitCurrentTime(AlarmClockData *clockData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchAlarmClock *appData, enum AlarmClockState newState);
static BOOL State_LoadApp(PoketchAlarmClock *appData);
static BOOL State_EditingAlarm(PoketchAlarmClock *appData);
static BOOL State_AlarmSet(PoketchAlarmClock *appData);
static BOOL State_AlarmBlaring(PoketchAlarmClock *appData);
static BOOL State_UnloadApp(PoketchAlarmClock *appData);

static BOOL AlwaysFalse(PoketchAlarmClock *appData);
static void UpdateCurrentTime(PoketchAlarmClock *appData);
static BOOL GetCurrentTime(PoketchAlarmClock *appData, u32 *hour, u32 *minute);
static BOOL ActivateAlarm(AlarmClockData *clockData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchAlarmClock *alarmClock = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchAlarmClock));

    if (alarmClock != NULL) {
        if (Init(alarmClock, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, alarmClock, 1) != NULL) {
                *appData = alarmClock;
                return TRUE;
            }
        }

        Heap_Free(alarmClock);
    }

    return FALSE;
}

static BOOL Init(PoketchAlarmClock *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect sButtonHitBoxes[] = {
        [BUTTON_SET_ALARM] = { .rect = { .top = 72, .bottom = 104, .left = 176, .right = 208 } },
        [BUTTON_EDIT_ALARM] = { .rect = { .top = 104, .bottom = 136, .left = 176, .right = 208 } },
        [BUTTON_HOUR_UP] = { .rect = { .top = 112, .bottom = 128, .left = 64, .right = 80 } },
        [BUTTON_HOUR_DOWN] = { .rect = { .top = 160, .bottom = 176, .left = 64, .right = 80 } },
        [BUTTON_MINUTE_UP] = { .rect = { .top = 112, .bottom = 128, .left = 112, .right = 128 } },
        [BUTTON_MINUTE_DOWN] = { .rect = { .top = 160, .bottom = 176, .left = 112, .right = 128 } },
    };

    appData->poketch = PoketchSystem_GetPoketchData(poketchSys);
    appData->clockData.alarmSet = Poketch_IsAlarmSet(appData->poketch);

    u32 hour, minute;
    Poketch_AlarmTime(appData->poketch, &hour, &minute);

    appData->clockData.alarmHour = hour;
    appData->clockData.alarmMinute = minute;

    InitCurrentTime(&appData->clockData);

    if (PoketchAlarmClockGraphics_New(&appData->graphics, &appData->clockData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(sButtonHitBoxes, NELEMS(sButtonHitBoxes), ButtonCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;

        PoketchButtonManager_SetRepeatTime(appData->buttonManager, 2, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, 3, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, 4, 4);
        PoketchButtonManager_SetRepeatTime(appData->buttonManager, 5, 4);

        appData->alwaysFalse = FALSE;
        appData->currentTimeLoaded = FALSE;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void InitCurrentTime(AlarmClockData *clockData)
{
    RTCTime time;

    RTC_GetCurrentTime(&time);

    if (time.hour >= 24) {
        time.hour %= 24;
    }

    if (time.minute >= 60) {
        time.hour %= 60;
    }

    clockData->currentHour = time.hour;
    clockData->currentMinute = time.minute;
}

static void Free(PoketchAlarmClock *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchAlarmClockGraphics_Free(appData->graphics);

    Heap_Free(appData);
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchAlarmClock *alarmClock = appData;

    alarmClock->pressedButton = buttonID;
    alarmClock->buttonState = buttonState;
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_EditingAlarm,
        State_AlarmSet,
        State_AlarmBlaring,
        State_UnloadApp
    };

    PoketchAlarmClock *alarmClock = appData;

    if (alarmClock->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(alarmClock->poketchSys, alarmClock->buttonManager);

        if (stateFuncs[alarmClock->state](alarmClock)) {
            Free(alarmClock);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(alarmClock->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchAlarmClock *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchAlarmClock *appData, enum AlarmClockState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchAlarmClock *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchAlarmClockGraphics_TaskIsNotActive(appData->graphics, ALARM_CLOCK_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);

            if (appData->clockData.alarmSet) {
                ChangeState(appData, STATE_ALARM_SET);
            } else {
                ChangeState(appData, STATE_EDITING_ALARM);
            }
        }
        break;
    }

    return FALSE;
}

static BOOL State_EditingAlarm(PoketchAlarmClock *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH && appData->pressedButton == BUTTON_SET_ALARM) {
            appData->clockData.alarmSet = TRUE;
            InitCurrentTime(&appData->clockData);
            Poketch_SetAlarm(appData->poketch, TRUE, appData->clockData.alarmHour, appData->clockData.alarmMinute);
            PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_SHOW_CURRENT_TIME);
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            appData->subState++;
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH && appData->pressedButton == BUTTON_EDIT_ALARM) {
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH || appData->buttonState == BUTTON_MANAGER_STATE_REPEAT) {
            switch (appData->pressedButton) {
            case BUTTON_HOUR_UP:
                if (++appData->clockData.alarmHour > 23) {
                    appData->clockData.alarmHour = 0;
                }
                break;
            case BUTTON_HOUR_DOWN:
                if (--appData->clockData.alarmHour < 0) {
                    appData->clockData.alarmHour = 23;
                }
                break;
            case BUTTON_MINUTE_UP:
                if (++appData->clockData.alarmMinute > 59) {
                    appData->clockData.alarmMinute = 0;
                }
                break;
            case BUTTON_MINUTE_DOWN:
                if (--appData->clockData.alarmMinute < 0) {
                    appData->clockData.alarmMinute = 59;
                }
                break;
            }

            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_UPDATE_DIGITS);
            break;
        }
        break;
    case 1:
        if (PoketchAlarmClockGraphics_TaskIsNotActive(appData->graphics, ALARM_CLOCK_GRAPHICS_SHOW_CURRENT_TIME)) {
            ChangeState(appData, STATE_ALARM_SET);
        }
        break;
    }

    return FALSE;
}

static BOOL State_AlarmSet(PoketchAlarmClock *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (ActivateAlarm(&appData->clockData)) {
            ChangeState(appData, STATE_ALARM_BLARING);
            return FALSE;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH && appData->pressedButton == BUTTON_EDIT_ALARM) {
            appData->clockData.alarmSet = FALSE;
            PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_ENTER_EDIT_MODE);
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            ChangeState(appData, STATE_EDITING_ALARM);
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH && appData->pressedButton == BUTTON_SET_ALARM) {
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
            break;
        }

        if (AlwaysFalse(appData) == FALSE) {
            UpdateCurrentTime(appData);
        }

        u32 hour, minute;

        if (GetCurrentTime(appData, &hour, &minute)) {
            if (minute != appData->clockData.currentMinute) {
                appData->clockData.currentMinute = minute;
                appData->clockData.currentHour = hour;
                PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_UPDATE_DIGITS);
                appData->subState++;
                break;
            }
        }
        break;
    case 1:
        if (PoketchAlarmClockGraphics_TaskIsNotActive(appData->graphics, ALARM_CLOCK_GRAPHICS_UPDATE_DIGITS)) {
            appData->subState = 0;
        }
        break;
    }

    return FALSE;
}

static BOOL State_AlarmBlaring(PoketchAlarmClock *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_SOUND_ALARM);
        appData->subState++;
        break;
    case 1:
        if (ActivateAlarm(&appData->clockData) == FALSE) {
            StopSoundingAlarm(appData->graphics);
            PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_SHOW_CURRENT_TIME);
            ChangeState(appData, STATE_ALARM_SET);
            return FALSE;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH && appData->pressedButton == BUTTON_EDIT_ALARM) {
            appData->clockData.alarmSet = FALSE;
            StopSoundingAlarm(appData->graphics);
            PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_ENTER_EDIT_MODE);
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            ChangeState(appData, STATE_EDITING_ALARM);
            return FALSE;
        }

        if (AlwaysFalse(appData) == FALSE) {
            UpdateCurrentTime(appData);
        }

        u32 hour, minute;

        if (GetCurrentTime(appData, &hour, &minute)) {
            if (minute != appData->clockData.currentMinute) {
                appData->clockData.currentMinute = minute;
                appData->clockData.currentHour = hour;
                PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_UPDATE_DIGITS);
            }
        }
        break;
    }

    return FALSE;
}

static BOOL AlwaysFalse(PoketchAlarmClock *appData)
{
    return appData->alwaysFalse;
}

static void UpdateCurrentTime(PoketchAlarmClock *appData)
{
    if (appData->alwaysFalse == FALSE) {
        RTC_GetCurrentTime(&appData->currentTime);
        appData->currentTimeLoaded = TRUE;
    }
}

static BOOL GetCurrentTime(PoketchAlarmClock *appData, u32 *hour, u32 *minute)
{
    if (appData->currentTimeLoaded) {
        *hour = appData->currentTime.hour;
        *minute = appData->currentTime.minute;
        return TRUE;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchAlarmClock *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchAlarmClockGraphics_StartTask(appData->graphics, ALARM_CLOCK_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchAlarmClockGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL ActivateAlarm(AlarmClockData *clockData)
{
    return clockData->currentHour == clockData->alarmHour && clockData->currentMinute == clockData->alarmMinute;
}
