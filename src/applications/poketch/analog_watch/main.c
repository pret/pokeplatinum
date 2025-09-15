#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/analog_watch/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "rtc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchAnalogWatch {
    u8 state;
    u8 subState;
    u8 shouldExit;
    u8 unused[2];
    u8 lastUpdateMinute;
    u8 brightnessChangePending;
    u32 unused2[2];
    PoketchButtonManager *buttonManager;
    AnalogWatchData watchData;
    AnalogWatchGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchAnalogWatch;

enum AnalogWatchState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchAnalogWatch *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchAnalogWatch *appData);
static void Exit(void *appData);
static void TouchCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *taskMan);
static void ChangeState(PoketchAnalogWatch *appData, enum AnalogWatchState newState);
static BOOL State_LoadApp(PoketchAnalogWatch *appData);
static BOOL State_UpdateApp(PoketchAnalogWatch *appData);
static BOOL State_UnloadApp(PoketchAnalogWatch *appData);

static const TouchScreenRect sScreenHitBox[] = {
    {
        .rect = {
            .top = POKETCH_SCREEN_MIN_Y,
            .bottom = POKETCH_SCREEN_MAX_Y,
            .left = POKETCH_SCREEN_MIN_X,
            .right = POKETCH_SCREEN_MAX_X,
        },
    },
};

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchAnalogWatch *analogWatch = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchAnalogWatch));

    if (analogWatch != NULL) {
        if (Init(analogWatch, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, analogWatch, 1) != NULL) {
                *appData = analogWatch;
                return TRUE;
            }
        }

        Heap_Free(analogWatch);
    }

    return FALSE;
}

static BOOL Init(PoketchAnalogWatch *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchAnalogWatch_New(&appData->graphics, &appData->watchData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->unused[0] = 1;
        appData->brightnessChangePending = FALSE;
        appData->watchData.isBright = FALSE;

        GetCurrentTime(&appData->watchData.time);

        if (appData->watchData.time.hour >= 24) {
            appData->watchData.time.hour %= 24;
        }

        if (appData->watchData.time.minute >= 60) {
            appData->watchData.time.hour %= 60;
        }

        appData->lastUpdateMinute = appData->watchData.time.minute;
        appData->buttonManager = PoketchButtonManager_New(sScreenHitBox, NELEMS(sScreenHitBox), TouchCallback, appData, HEAP_ID_POKETCH_APP);

        if (appData->buttonManager == NULL) {
            return FALSE;
        }

        appData->poketchSys = poketchSys;
        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchAnalogWatch *appData)
{
    PoketchAnalogWatchGraphics_Free(appData->graphics);
    PoketchButtonManager_Free(appData->buttonManager);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *taskMan)
{
    static BOOL (*const stateFuncs[])(PoketchAnalogWatch *) = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchAnalogWatch *appData = taskMan;

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
    ((PoketchAnalogWatch *)appData)->shouldExit = TRUE;
}

static void TouchCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchAnalogWatch *analogWatch = appData;

    switch (touchState) {
    case BUTTON_TOUCH_PRESSED:
        analogWatch->watchData.isBright = TRUE;
        analogWatch->brightnessChangePending = TRUE;
        break;
    case BUTTON_TOUCH_RELEASED:
        analogWatch->watchData.isBright = FALSE;
        analogWatch->brightnessChangePending = TRUE;
        break;
    }
}

static void ChangeState(PoketchAnalogWatch *appData, enum AnalogWatchState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchAnalogWatch *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchAnalogWatchGraphics_StartTask(appData->graphics, ANALOG_WATCH_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchAnalogWatchGraphics_TaskIsNotActive(appData->graphics, ANALOG_WATCH_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchAnalogWatch *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (appData->brightnessChangePending) {
        appData->brightnessChangePending = FALSE;
        PoketchAnalogWatchGraphics_StartTask(appData->graphics, ANALOG_WATCH_GRAPHICS_BRIGHTNESS);
    }

    if (PoketchAnalogWatchGraphics_TaskIsNotActive(appData->graphics, ANALOG_WATCH_GRAPHICS_TIME)) {
        appData->lastUpdateMinute = appData->watchData.time.minute;
        GetCurrentTime(&appData->watchData.time);

        if (appData->lastUpdateMinute != appData->watchData.time.minute) {
            PoketchAnalogWatchGraphics_StartTask(appData->graphics, ANALOG_WATCH_GRAPHICS_TIME);
        }
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchAnalogWatch *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchAnalogWatchGraphics_StartTask(appData->graphics, ANALOG_WATCH_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchAnalogWatchGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }

        break;
    }

    return FALSE;
}
