#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/counter/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchCounter {
    u8 state;
    u8 subState;
    u8 shouldExit;
    u32 appID;
    CounterData counterData;
    CounterGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    enum ButtonManagerState buttonState;
} PoketchCounter;

enum CounterState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchCounter *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchCounter *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchCounter *appData, enum CounterState newState);
static BOOL State_LoadApp(PoketchCounter *appData);
static BOOL State_UpdateApp(PoketchCounter *appData);
static BOOL State_UnloadApp(PoketchCounter *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchCounter *counterApp = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchCounter));

    if (counterApp != NULL) {
        if (Init(counterApp, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, counterApp, 1) != NULL) {
                *appData = counterApp;
                return TRUE;
            }
        }
        Heap_Free(counterApp);
    }
    return FALSE;
}

static BOOL Init(PoketchCounter *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenRect buttonHitBox[] = {
        { .rect = { .top = 100, .bottom = 156, .left = 82, .right = 146 } },
    };

    appData->counterData.buttonPosition = COUNTER_BUTTON_UNPRESSED;

    if (PoketchMemory_Read32(appID, &appData->counterData.value, sizeof(u32)) == FALSE) {
        appData->counterData.value = 0;
    }

    appData->appID = appID;

    if (PoketchCounterGraphics_New(&appData->graphics, &appData->counterData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(buttonHitBox, NELEMS(buttonHitBox), ButtonCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        appData->poketchSys = poketchSys;

        return TRUE;
    }
    return FALSE;
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchCounter *counter = appData;

    if (buttonID == 0) {
        counter->buttonState = buttonState;
    }
}

static void Free(PoketchCounter *appData)
{
    PoketchMemory_Write32(appData->appID, &appData->counterData.value, sizeof(u32));
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchCounterGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchCounter *) = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchCounter *counter = appData;

    if (counter->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(counter->poketchSys, counter->buttonManager);

        if (stateFuncs[counter->state](counter)) {
            Free(counter);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(counter->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchCounter *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchCounter *appData, enum CounterState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchCounter *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchCounterGraphics_TaskIsNotActive(appData->graphics, COUNTER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchCounter *appData)
{
    CounterData *counterState = &appData->counterData;

    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            counterState->buttonPosition = COUNTER_BUTTON_PRESSED;
            PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_UPDATE_BUTTON);
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            appData->subState++;
        }
        break;
    case 1:
        if (appData->buttonState == BUTTON_MANAGER_STATE_DRAGGING) {
            counterState->buttonPosition = COUNTER_BUTTON_UNPRESSED;
            PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_UPDATE_BUTTON);
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            appData->subState = 0;
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TAP) {
            counterState->buttonPosition = COUNTER_BUTTON_UNPRESSED;

            if (++counterState->value > 9999) {
                counterState->value = 0;
            }

            PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_UPDATE_BUTTON);
            PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_UPDATE_VALUE);
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            appData->subState = 0;
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchCounter *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchCounterGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
