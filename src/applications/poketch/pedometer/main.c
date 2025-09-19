#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/pedometer/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchPedometer {
    u8 state;
    u8 subState;
    u8 shouldExit;
    PedometerData pedometerData;
    PedometerGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 buttonState;
    Poketch *poketch;
} PoketchPedometer;

enum PedometerState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchPedometer *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchPedometer *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchPedometer *appData, enum PedometerState newState);
static BOOL State_LoadApp(PoketchPedometer *appData);
static BOOL State_UpdateApp(PoketchPedometer *appData);
static BOOL State_UnloadApp(PoketchPedometer *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchPedometer *pedometer = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchPedometer));

    if (pedometer != NULL) {
        if (Init(pedometer, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, pedometer, 1) != NULL) {
                *appData = pedometer;
                return TRUE;
            }
        }

        Heap_Free(pedometer);
    }

    return FALSE;
}

static BOOL Init(PoketchPedometer *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect buttonHitBox[] = {
        { .rect = { .top = 100, .bottom = 156, .left = 82, .right = 146 } },
    };

    appData->poketchSys = poketchSys;
    appData->poketch = PoketchSystem_GetPoketchData(poketchSys);
    appData->pedometerData.buttonPosition = PEDOMETER_BUTTON_UNPRESSED;
    appData->pedometerData.steps = Poketch_StepCount(appData->poketch);

    if (PoketchPedometerGraphics_New(&appData->graphics, &appData->pedometerData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(buttonHitBox, NELEMS(buttonHitBox), ButtonCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;

        return TRUE;
    }

    return FALSE;
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchPedometer *pedometer = appData;

    if (buttonID == 0) {
        pedometer->buttonState = buttonState;
    }
}

static void Free(PoketchPedometer *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchPedometerGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchPedometer *) = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchPedometer *pedometer = appData;

    if (pedometer->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(pedometer->poketchSys, pedometer->buttonManager);

        if (stateFuncs[pedometer->state](pedometer)) {
            Free(pedometer);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(pedometer->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchPedometer *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchPedometer *appData, enum PedometerState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchPedometer *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchPedometerGraphics_StartTask(appData->graphics, PEDOMETER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchPedometerGraphics_TaskIsNotActive(appData->graphics, PEDOMETER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchPedometer *appData)
{
    PedometerData *pedometerData = &appData->pedometerData;

    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            pedometerData->buttonPosition = PEDOMETER_BUTTON_PRESSED;
            PoketchPedometerGraphics_StartTask(appData->graphics, PEDOMETER_GRAPHICS_UPDATE_BUTTON);
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            appData->subState++;
            break;
        }

        if (PoketchSystem_PedometerUpdated(appData->poketchSys)) {
            pedometerData->steps = Poketch_StepCount(appData->poketch);
            PoketchPedometerGraphics_StartTask(appData->graphics, PEDOMETER_GRAPHICS_UPDATE_VALUE);
            break;
        }
        break;
    case 1:
        if (appData->buttonState == BUTTON_MANAGER_STATE_DRAGGING) {
            pedometerData->buttonPosition = PEDOMETER_BUTTON_UNPRESSED;

            PoketchPedometerGraphics_StartTask(appData->graphics, PEDOMETER_GRAPHICS_UPDATE_BUTTON);

            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            appData->subState = 0;
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TAP) {
            pedometerData->buttonPosition = PEDOMETER_BUTTON_UNPRESSED;
            pedometerData->steps = 0;

            Poketch_SetStepCount(appData->poketch, 0);

            PoketchPedometerGraphics_StartTask(appData->graphics, PEDOMETER_GRAPHICS_UPDATE_BUTTON);
            PoketchPedometerGraphics_StartTask(appData->graphics, PEDOMETER_GRAPHICS_UPDATE_VALUE);

            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            appData->subState = 0;
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchPedometer *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchPedometerGraphics_StartTask(appData->graphics, PEDOMETER_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchPedometerGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
