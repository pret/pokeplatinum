#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/poketch_system.h"
#include "applications/poketch/unused/3/graphics.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct PoketchUnusedApp3 {
    u8 state;
    u8 subState;
    u8 shouldExit;
    Unused3Data data;
    UnusedApp3Graphics *graphics;
    PoketchSystem *poketchSys;
} PoketchUnusedApp3;

typedef BOOL (*StateFunc)(PoketchUnusedApp3 *);

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchUnusedApp3 *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchUnusedApp3 *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchUnusedApp3 *appData, u32 newState);
static BOOL State_LoadApp(PoketchUnusedApp3 *appData);
static BOOL State_UpdateApp(PoketchUnusedApp3 *appData);
static BOOL State_UnloadApp(PoketchUnusedApp3 *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchUnusedApp3 *unusedApp = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchUnusedApp3));

    if (unusedApp != NULL) {
        if (Init(unusedApp, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, unusedApp, 1) != NULL) {
                *appData = unusedApp;
                return TRUE;
            }
        }

        Heap_Free(unusedApp);
    }

    return FALSE;
}

static BOOL Init(PoketchUnusedApp3 *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchUnusedApp3Graphics_New(&appData->graphics, &appData->data, bgConfig)) {
        appData->state = 0;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchUnusedApp3 *appData)
{
    PoketchUnusedApp3Graphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchUnusedApp3 *unusedApp = appData;

    if (unusedApp->state < NELEMS(stateFuncs)) {
        if (stateFuncs[unusedApp->state](unusedApp)) {
            Free(unusedApp);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(unusedApp->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchUnusedApp3 *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchUnusedApp3 *appData, u32 newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = 2;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchUnusedApp3 *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchUnusedApp3Graphics_StartTask(appData->graphics, 0);
        appData->subState++;
        break;
    case 1:
        if (PoketchUnusedApp3Graphics_TaskIsNotActive(appData->graphics, 0)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, 1);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchUnusedApp3 *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, 2);
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchUnusedApp3 *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchUnusedApp3Graphics_StartTask(appData->graphics, 1);
        appData->subState++;
        break;
    case 1:
        if (PoketchUnusedApp3Graphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
