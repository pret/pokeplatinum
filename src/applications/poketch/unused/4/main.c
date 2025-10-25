#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/poketch_system.h"
#include "applications/poketch/unused/4/graphics.h"

#include "bg_window.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct PoketchUnusedApp4 {
    u8 state;
    u8 subState;
    u8 shouldExit;
    Unused4Data data;
    UnusedApp4Graphics *graphics;
    PoketchSystem *poketchSys;
} PoketchUnusedApp4;

typedef BOOL (*StateFunc)(PoketchUnusedApp4 *);

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchUnusedApp4 *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchUnusedApp4 *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchUnusedApp4 *appData, u32 newState);
static BOOL State_LoadApp(PoketchUnusedApp4 *appData);
static BOOL State_UpdateApp(PoketchUnusedApp4 *appData);
static BOOL State_UnloadApp(PoketchUnusedApp4 *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchUnusedApp4 *unusedApp = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchUnusedApp4));

    if (unusedApp != NULL) {
        if (Init(unusedApp, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, unusedApp, 1) != NULL) {
                *appData = unusedApp;
                unusedApp->data.appID = appID;
                return TRUE;
            }
        }

        Heap_Free(unusedApp);
    }

    return FALSE;
}

static BOOL Init(PoketchUnusedApp4 *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchUnusedApp4Graphics_New(&appData->graphics, &appData->data, bgConfig)) {
        appData->state = 0;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchUnusedApp4 *appData)
{
    PoketchUnusedApp4Graphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchUnusedApp4 *unusedApp = appData;

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
    ((PoketchUnusedApp4 *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchUnusedApp4 *appData, u32 newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = 2;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchUnusedApp4 *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchUnusedApp4Graphics_StartTask(appData->graphics, 0);
        appData->subState++;
        break;
    case 1:
        if (PoketchUnusedApp4Graphics_TaskIsNotActive(appData->graphics, 0)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, 1);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchUnusedApp4 *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, 2);
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchUnusedApp4 *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchUnusedApp4Graphics_StartTask(appData->graphics, 1);
        appData->subState++;
        break;
    case 1:
        if (PoketchUnusedApp4Graphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
