#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "applications/poketch/stopwatch/ov27_0225680C.h"
#include "applications/poketch/stopwatch/struct_ov27_0225680C_1.h"
#include "applications/poketch/stopwatch/struct_ov27_0225680C_decl.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"
#include "unk_02022844.h"

typedef struct StopwatchData {
    BOOL unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u64 unk_14;
    u64 unk_1C;
} StopwatchData;

typedef struct PoketchStopwatch {
    u8 activeTask;
    u8 taskFuncState;
    u8 shouldExit;
    u8 lastActiveTask;
    u8 buttonState;
    u16 unk_06;
    u32 appID;
    u64 unk_0C;
    u64 unk_14;
    PoketchStopwatchGraphics_1 unk_1C;
    StopwatchData stopwatchData;
    PoketchButtonManager *buttonManager;
    PoketchStopwatchGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchStopwatch;

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchStopwatch *appData, BgConfig *bgConfig, u32 appID);
static void ov27_022562AC(PoketchStopwatch *appData);
static void Task_Main(SysTask *task, void *appData);
static void Exit(void *appData);
static void ChangeActiveTask(PoketchStopwatch *appData, u32 taskID);
static BOOL Task_LoadApp(PoketchStopwatch *appData);
static BOOL ov27_022563CC(PoketchStopwatch *appData);
static BOOL ov27_0225644C(PoketchStopwatch *appData);
static BOOL ov27_022564D0(PoketchStopwatch *appData);
static BOOL ov27_02256534(PoketchStopwatch *appData);
static BOOL Task_UnloadApp(PoketchStopwatch *appData);
static BOOL ov27_02256608(PoketchStopwatch *appData);
static void Free(PoketchStopwatch *appData);
static void ButtonChanged(u32 buttonID, u32 buttonState, u32 touchState, void *appData);
static void ov27_02256664(PoketchStopwatch *appData);
static void ov27_02256680(PoketchStopwatch *appData);
static void ov27_022566C4(PoketchStopwatch *appData);
static void ov27_022566D8(PoketchStopwatch *appData, PoketchStopwatchGraphics_1 *param1);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchStopwatch *stopwatch = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(PoketchStopwatch));

    if (stopwatch != NULL) {
        if (Init(stopwatch, bgConfig, appID)) {
            stopwatch->poketchSys = poketchSys;

            if (SysTask_Start(Task_Main, stopwatch, 1) != NULL) {
                *appData = stopwatch;
                return TRUE;
            }
        } else {
            Heap_FreeToHeap(stopwatch);
            stopwatch = NULL;
        }
    }

    return FALSE;
}

static BOOL Init(PoketchStopwatch *appData, BgConfig *bgConfig, u32 appID)
{
    appData->appID = appID;

    if (PoketchMemory_Read32(appID, &(appData->stopwatchData), sizeof(appData->stopwatchData))) {
        appData->unk_0C = appData->stopwatchData.unk_14;
        appData->unk_14 = appData->stopwatchData.unk_1C;
        appData->unk_1C.unk_14 = appData->stopwatchData.unk_04;
        appData->unk_1C.unk_10 = appData->stopwatchData.unk_08;
        appData->unk_1C.unk_0C = appData->stopwatchData.unk_0C;
        appData->unk_1C.unk_08 = appData->stopwatchData.unk_10;
        appData->unk_1C.unk_00 = appData->stopwatchData.unk_00;

        if (appData->unk_1C.unk_00) {
            appData->unk_1C.unk_18 = 2;
        } else {
            appData->unk_1C.unk_18 = 0;
        }
    } else {
        ov27_02256664(appData);
        appData->unk_1C.unk_18 = 0;
    }

    if (ov27_0225680C(&(appData->graphics), &(appData->unk_1C), bgConfig)) {
        appData->activeTask = 0;
        appData->taskFuncState = 0;
        appData->lastActiveTask = appData->activeTask;
        appData->shouldExit = FALSE;

        if (ov27_02256608(appData)) {
            return TRUE;
        }
    }

    return FALSE;
}

static void ov27_022562AC(PoketchStopwatch *appData)
{
    appData->stopwatchData.unk_14 = appData->unk_0C;
    appData->stopwatchData.unk_1C = appData->unk_14;
    appData->stopwatchData.unk_04 = appData->unk_1C.unk_14;
    appData->stopwatchData.unk_08 = appData->unk_1C.unk_10;
    appData->stopwatchData.unk_0C = appData->unk_1C.unk_0C;
    appData->stopwatchData.unk_10 = appData->unk_1C.unk_08;
    appData->stopwatchData.unk_00 = appData->unk_1C.unk_00;

    PoketchMemory_Write32(appData->appID, &(appData->stopwatchData), sizeof(appData->stopwatchData));

    Free(appData);
    PoketchStopwatchGraphics_Free(appData->graphics);

    Heap_FreeToHeap(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const funcArray[])(PoketchStopwatch *) = {
        Task_LoadApp,
        ov27_022563CC,
        ov27_0225644C,
        ov27_022564D0,
        ov27_02256534,
        Task_UnloadApp
    };

    PoketchStopwatch *stopwatch = appData;

    if (stopwatch->activeTask < NELEMS(funcArray)) {
        if (stopwatch->shouldExit && (stopwatch->activeTask != 5)) {
            ChangeActiveTask(stopwatch, 5);
            stopwatch->shouldExit = FALSE;
        }

        PoketechSystem_UpdateButtonManager(stopwatch->poketchSys, stopwatch->buttonManager);
        ov27_022566D8(stopwatch, &(stopwatch->unk_1C));

        if (funcArray[stopwatch->activeTask](stopwatch)) {
            ov27_022562AC(stopwatch);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(stopwatch->poketchSys);
        }
    } else {
    }
}

static void Exit(void *appData)
{
    ((PoketchStopwatch *)appData)->shouldExit = TRUE;
}

static void ChangeActiveTask(PoketchStopwatch *appData, u32 taskID)
{
    appData->lastActiveTask = appData->activeTask;

    if (appData->shouldExit == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = 5;
        appData->shouldExit = FALSE;
    }

    appData->taskFuncState = 0;
}

static BOOL Task_LoadApp(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchStopwatchGraphics_StartTask(appData->graphics, 0);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchStopwatchGraphics_TaskIsNotActive(appData->graphics, 0)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);

            if (appData->unk_1C.unk_00) {
                ChangeActiveTask(appData, 2);
            } else {
                ChangeActiveTask(appData, 1);
            }
        }
        break;
    }

    return FALSE;
}

static BOOL ov27_022563CC(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        if (appData->buttonState == 1) {
            appData->unk_1C.unk_18 = 1;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            appData->taskFuncState++;
        }
        break;
    case 1:
        switch (appData->buttonState) {
        case 2:
            appData->unk_1C.unk_18 = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            appData->taskFuncState--;
            break;
        case 3:
            appData->unk_1C.unk_18 = 2;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            ov27_02256680(appData);
            ChangeActiveTask(appData, 2);
            break;
        case 5:
            appData->unk_1C.unk_18 = 3;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            ChangeActiveTask(appData, 3);
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL ov27_0225644C(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        if (appData->buttonState == 1) {
            appData->unk_1C.unk_18 = 1;
            ov27_022566C4(appData);
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            appData->taskFuncState++;
        }
        break;
    case 1:
        switch (appData->buttonState) {
        case 2:
            appData->unk_1C.unk_18 = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            ChangeActiveTask(appData, 1);
            break;
        case 3:
            appData->unk_1C.unk_18 = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            ChangeActiveTask(appData, 1);
            break;
        case 5:
            appData->unk_1C.unk_18 = 3;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            ChangeActiveTask(appData, 3);
            break;
        }
        break;
    }

    return FALSE;
}

static BOOL ov27_022564D0(PoketchStopwatch *appData)
{
    switch (appData->buttonState) {
    case 3:
        if (appData->lastActiveTask == 1) {
            ov27_02256680(appData);
            appData->unk_1C.unk_18 = 2;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            ChangeActiveTask(appData, 2);
            break;
        }
    case 2:
        appData->unk_1C.unk_18 = 0;
        PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
        ChangeActiveTask(appData, 1);
        break;
    case 6:
        appData->unk_1C.unk_18 = 4;
        PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
        ChangeActiveTask(appData, 4);
        break;
    }

    return FALSE;
}

static BOOL ov27_02256534(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        appData->unk_06 = 0;
        appData->taskFuncState++;
    case 1:
        if (++(appData->unk_06) >= 90) {
            appData->unk_1C.unk_18 = 5;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            appData->unk_06 = 0;
            appData->taskFuncState++;
        }
        break;
    case 2:
        if (++(appData->unk_06) >= 60) {
            appData->unk_1C.unk_18 = 6;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            ov27_02256664(appData);
            appData->unk_06 = 0;
            appData->taskFuncState++;
        }
        break;
    case 3:
        if (PoketchStopwatchGraphics_TaskIsNotActive(appData->graphics, 1)) {
            appData->unk_1C.unk_18 = 0;
            PoketchStopwatchGraphics_StartTask(appData->graphics, 1);
            ChangeActiveTask(appData, 1);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UnloadApp(PoketchStopwatch *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        appData->unk_1C.unk_18 = 7;
        PoketchStopwatchGraphics_StartTask(appData->graphics, 3);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchStopwatchGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL ov27_02256608(PoketchStopwatch *appData)
{
    static const TouchScreenHitTable v0[] = {
        { TOUCHSCREEN_USE_CIRCLE, 112, 112, 39 },
    };

    appData->buttonManager = PoketchButtonManager_New(v0, NELEMS(v0), ButtonChanged, appData, HEAP_ID_POKETCH_APP);

    if (appData->buttonManager != NULL) {
        PoketchButtonManager_SetButtonTimer(appData->buttonManager, 0, 0, 15);
        PoketchButtonManager_SetButtonTimer(appData->buttonManager, 0, 1, 75);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchStopwatch *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
}

static void ButtonChanged(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchStopwatch *stopwatch = appData;
    stopwatch->buttonState = buttonState;
}

static void ov27_02256664(PoketchStopwatch *appData)
{
    appData->unk_1C.unk_00 = 0;
    appData->unk_1C.unk_04 = 1;
    appData->unk_1C.unk_08 = 0;
    appData->unk_1C.unk_0C = 0;
    appData->unk_1C.unk_10 = 0;
    appData->unk_1C.unk_14 = 0;
    appData->unk_0C = 0;
    appData->unk_14 = 0;
}

static void ov27_02256680(PoketchStopwatch *appData)
{
    if (appData->unk_0C) {
        appData->unk_0C += (sub_0202293C() - appData->unk_14);
    } else {
        appData->unk_0C = sub_0202293C();
    }

    appData->unk_1C.unk_00 = 1;
    appData->unk_1C.unk_04 = 0;
}

static void ov27_022566C4(PoketchStopwatch *appData)
{
    appData->unk_14 = sub_0202293C();
    appData->unk_1C.unk_00 = 0;
}

static void ov27_022566D8(PoketchStopwatch *appData, PoketchStopwatchGraphics_1 *param1)
{
    if (param1->unk_00) {
        u64 v0, v1, v2;

        v2 = sub_0202293C() - appData->unk_0C;

        CP_SetDiv64_32(sub_02022944(v2), 1000);

        v0 = CP_GetDivResult64();
        v1 = CP_GetDivRemainder64();

        CP_SetDiv64_32(v1, 10);
        param1->unk_08 = CP_GetDivResult32();

        CP_SetDiv64_32(v0, 60);

        v0 = CP_GetDivResult64();
        param1->unk_0C = CP_GetDivRemainder32();

        CP_SetDiv64_32(v0, 60);

        v0 = CP_GetDivResult64();
        param1->unk_10 = CP_GetDivRemainder32();

        if (v0 >= 24) {
            CP_SetDiv64_32(v0, 24);
            v0 = CP_GetDivRemainder32();
        }

        param1->unk_14 = (u32)v0;
    }
}
