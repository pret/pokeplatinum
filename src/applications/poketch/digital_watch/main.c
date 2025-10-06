#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/digital_watch/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "rtc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchDigitalWatch {
    u8 state;
    u8 subState;
    u8 shouldExit;
    u8 unused_0;
    u8 unused_1;
    u8 hour;
    u8 minute;
    u8 backlightChange;
    u8 unused_2[8];
    PoketchButtonManager *buttonManager;
    DigitalWatchData watchData;
    PoketchDigitalWatchGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchDigitalWatch;

typedef BOOL (*StateFunc)(PoketchDigitalWatch *);

enum DigitalWatchState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchDigitalWatch *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchDigitalWatch *appData);
static void Exit(void *appData);

static void ChangeState(PoketchDigitalWatch *appData, enum DigitalWatchState newState);
static void Task_Main(SysTask *task, void *taskManager);
static BOOL State_LoadApp(PoketchDigitalWatch *appData);
static BOOL State_UpdateApp(PoketchDigitalWatch *appData);
static BOOL State_UnloadApp(PoketchDigitalWatch *appData);

static void ToggleBacklight(u32 btnNumber, u32 buttonState, u32 touchState, void *appDataIn);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchDigitalWatch *digitalWatch = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchDigitalWatch));

    if (digitalWatch != NULL) {
        if (Init(digitalWatch, poketchSys, bgConfig, appID)
            && SysTask_Start(Task_Main, digitalWatch, 1)) {
            *appData = digitalWatch;
            return TRUE;
        }

        Heap_Free(digitalWatch);
    }

    return FALSE;
}

static BOOL Init(PoketchDigitalWatch *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect sButtonHitTable[] = {
        { .rect = { .top = POKETCH_SCREEN_MIN_Y, .bottom = POKETCH_SCREEN_MAX_Y, .left = POKETCH_SCREEN_MIN_X, .right = POKETCH_SCREEN_MAX_X } }
    };

    if (PoketchDigitalWatchGraphics_New(&appData->graphics, &appData->watchData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->unused_0 = 1;
        appData->backlightChange = FALSE;
        appData->watchData.backlightActive = FALSE;

        GetCurrentTime(&appData->watchData.time);

        if (appData->watchData.time.hour >= 24) {
            appData->watchData.time.hour %= 24;
        }

        if (appData->watchData.time.minute >= 60) {
            appData->watchData.time.hour %= 60;
            appData->watchData.time.minute %= 60;
        }

        appData->minute = appData->watchData.time.minute;
        appData->hour = appData->watchData.time.hour;
        appData->buttonManager = PoketchButtonManager_New(sButtonHitTable, NELEMS(sButtonHitTable), ToggleBacklight, appData, HEAP_ID_POKETCH_APP);

        if (appData->buttonManager == NULL) {
            return FALSE;
        }

        appData->poketchSys = poketchSys;
        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchDigitalWatch *appData)
{
    PoketchDigitalWatchGraphics_Free(appData->graphics);
    PoketchButtonManager_Free(appData->buttonManager);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *callbackData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp,
    };

    PoketchDigitalWatch *appData = callbackData;

    if (appData->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(appData->poketchSys, appData->buttonManager);

        if (stateFuncs[appData->state](appData)) {
            Free(appData);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(appData->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchDigitalWatch *)appData)->shouldExit = TRUE;
}

static void ToggleBacklight(u32 btnNumber, u32 buttonState, u32 touchState, void *appDataIn)
{
    PoketchDigitalWatch *appData = appDataIn;

    switch (touchState) {
    case BUTTON_TOUCH_PRESSED:
        appData->watchData.backlightActive = TRUE;
        appData->backlightChange = TRUE;
        break;
    case BUTTON_TOUCH_RELEASED:
        appData->watchData.backlightActive = FALSE;
        appData->backlightChange = TRUE;
        break;
    }
}

static void ChangeState(PoketchDigitalWatch *appData, enum DigitalWatchState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchDigitalWatch *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchDigitalWatchGraphics_StartTask(appData->graphics, DIGITAL_WATCH_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchDigitalWatchGraphics_TaskIsNotActive(appData->graphics, DIGITAL_WATCH_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchDigitalWatch *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (appData->backlightChange) {
        appData->backlightChange = FALSE;
        PoketchDigitalWatchGraphics_StartTask(appData->graphics, DIGITAL_WATCH_GRAPHICS_TOGGLE_BACKLIGHT);
    }

    if (PoketchDigitalWatchGraphics_TaskIsNotActive(appData->graphics, DIGITAL_WATCH_GRAPHICS_UPDATE_DIGITS)) {
        appData->minute = appData->watchData.time.minute;
        appData->hour = appData->watchData.time.hour;
        GetCurrentTime(&appData->watchData.time);

        if ((appData->minute != appData->watchData.time.minute) || (appData->hour != appData->watchData.time.hour)) {
            PoketchDigitalWatchGraphics_StartTask(appData->graphics, DIGITAL_WATCH_GRAPHICS_UPDATE_DIGITS);
        }
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchDigitalWatch *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchDigitalWatchGraphics_StartTask(appData->graphics, DIGITAL_WATCH_GRAPHICS_FREE);
        appData->subState++;
        break;

    case 1:
        if (PoketchDigitalWatchGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }

        break;
    }

    return FALSE;
}
