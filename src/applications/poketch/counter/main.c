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
    u8 activeTask;
    u8 taskFuncState;
    u8 shouldExit;
    u32 appID;
    CounterState counterState;
    CounterGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    enum ButtonManagerState buttonState;
} PoketchCounter;

enum CounterTask {
    TASK_LOAD_APP = 0,
    TASK_UPDATE_LOOP,
    TASK_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchCounter *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchCounter *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void ChangeActiveTask(PoketchCounter *appData, enum CounterTask taskID);
static void Task_Main(SysTask *task, void *appData);
static BOOL Task_LoadApp(PoketchCounter *appData);
static BOOL Task_UpdateApp(PoketchCounter *appData);
static BOOL Task_UnloadApp(PoketchCounter *appData);

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

    appData->counterState.buttonPosition = COUNTER_BUTTON_UNPRESSED;

    if (PoketchMemory_Read32(appID, &appData->counterState.value, sizeof(u32)) == FALSE) {
        appData->counterState.value = 0;
    }

    appData->appID = appID;

    if (PoketchCounterGraphics_New(&appData->graphics, &appData->counterState, bgConfig)) {
        appData->activeTask = TASK_LOAD_APP;
        appData->taskFuncState = 0;
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
    PoketchMemory_Write32(appData->appID, &appData->counterState.value, sizeof(u32));
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchCounterGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchCounter *) = {
        Task_LoadApp,
        Task_UpdateApp,
        Task_UnloadApp
    };

    PoketchCounter *counter = appData;

    if (counter->activeTask < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(counter->poketchSys, counter->buttonManager);

        if (stateFuncs[counter->activeTask](counter)) {
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

static void ChangeActiveTask(PoketchCounter *appData, enum CounterTask taskID)
{
    if (appData->shouldExit == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = TASK_SHUTDOWN;
    }

    appData->taskFuncState = 0;
}

static BOOL Task_LoadApp(PoketchCounter *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_INIT);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchCounterGraphics_TaskIsNotActive(appData->graphics, COUNTER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeActiveTask(appData, TASK_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UpdateApp(PoketchCounter *appData)
{
    CounterState *counterState = &appData->counterState;

    if (appData->shouldExit) {
        ChangeActiveTask(appData, TASK_SHUTDOWN);
        return FALSE;
    }

    switch (appData->taskFuncState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            counterState->buttonPosition = COUNTER_BUTTON_PRESSED;
            PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_UPDATE_BUTTON);
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            appData->taskFuncState++;
        }
        break;
    case 1:
        if (appData->buttonState == BUTTON_MANAGER_STATE_DRAGGING) {
            counterState->buttonPosition = COUNTER_BUTTON_UNPRESSED;
            PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_UPDATE_BUTTON);
            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
            appData->taskFuncState = 0;
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
            appData->taskFuncState = 0;
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UnloadApp(PoketchCounter *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchCounterGraphics_StartTask(appData->graphics, COUNTER_GRAPHICS_FREE);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchCounterGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
