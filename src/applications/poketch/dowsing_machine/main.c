#include <nitro.h>
#include <nitro/sinit.h>

#include "generated/sdat.h"

#include "applications/poketch/dowsing_machine/graphics.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "script_manager.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

#define DOWSING_RESULT_NO_ITEMS     0
#define DOWSING_RESULT_FAR_ITEMS    1
#define DOWSING_RESULT_NEARBY_ITEMS 2

typedef struct PoketchDowsingMachine {
    u8 state;
    u8 subState;
    u8 shouldExit;
    DowsingMachineData dowsingData;
    DowsingMachineGraphics *graphics;
    PoketchSystem *poketchSys;
    void *unused;
} PoketchDowsingMachine;

enum DowsingMachineState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchDowsingMachine *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchDowsingMachine *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchDowsingMachine *appData, enum DowsingMachineState newState);
static BOOL State_LoadApp(PoketchDowsingMachine *appData);
static BOOL State_UpdateApp(PoketchDowsingMachine *appData);
static BOOL State_UnloadApp(PoketchDowsingMachine *appData);

static BOOL CheckScreenTapped(PoketchDowsingMachine *appData, u32 *x, u32 *y);
static void FindNearbyHiddenItems(PoketchDowsingMachine *appData, int x, int y);
static void GetItemScreenPosition(int screenTileX, int screenTileZ, int *x, int *y);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchDowsingMachine *dowsingMachine = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchDowsingMachine));

    if (dowsingMachine != NULL) {
        if (Init(dowsingMachine, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, dowsingMachine, 1) != NULL) {
                *appData = dowsingMachine;
                return TRUE;
            }
        }

        Heap_Free(dowsingMachine);
    }

    return FALSE;
}

static BOOL Init(PoketchDowsingMachine *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchDowsingMachineGraphics_New(&appData->graphics, &appData->dowsingData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->unused = NULL;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchDowsingMachine *appData)
{
    if (appData->unused) {
        Heap_Free(appData->unused);
    }

    PoketchDowsingMachineGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchDowsingMachine *) = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchDowsingMachine *dowsingMachine = appData;

    if (dowsingMachine->state < NELEMS(stateFuncs)) {
        if (stateFuncs[dowsingMachine->state](dowsingMachine)) {
            Free(dowsingMachine);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(dowsingMachine->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchDowsingMachine *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchDowsingMachine *appData, enum DowsingMachineState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchDowsingMachine *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchDowsingMachineGraphics_StartTask(appData->graphics, DOWSING_MACHINE_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchDowsingMachineGraphics_TaskIsNotActive(appData->graphics, DOWSING_MACHINE_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchDowsingMachine *appData)
{
    u32 x, y;

    if (appData->shouldExit) {
        PoketchDowsingMachineGraphics_StopAllAnimations(appData->graphics);
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (CheckScreenTapped(appData, &x, &y)) {
            FindNearbyHiddenItems(appData, x, y);
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_009);
            PoketchDowsingMachineGraphics_StartTask(appData->graphics, DOWSING_MACHINE_GRAPHICS_START_PING);
            appData->subState = 1;
        }
        break;
    case 1:
        if (PoketchDowsingMachineGraphics_TaskIsNotActive(appData->graphics, DOWSING_MACHINE_GRAPHICS_START_PING)) {
            appData->subState = 0;
            break;
        }

        if ((PoketchSystem_IsPlayerMoving(appData->poketchSys) == TRUE) || PoketechSystem_IsRunningTask(appData->poketchSys)) {
            PoketchDowsingMachineGraphics_StopAllAnimations(appData->graphics);
            appData->subState = 2;
            break;
        }

        if (CheckScreenTapped(appData, &x, &y)) {
            FindNearbyHiddenItems(appData, x, y);
            PoketchDowsingMachineGraphics_StopAllAnimations(appData->graphics);
            appData->subState = 3;
            break;
        }
        break;
    case 2:
        if (PoketchDowsingMachineGraphics_TaskIsNotActive(appData->graphics, DOWSING_MACHINE_GRAPHICS_START_PING)) {
            appData->subState = 0;
        }
        break;
    case 3:
        if (PoketchDowsingMachineGraphics_TaskIsNotActive(appData->graphics, DOWSING_MACHINE_GRAPHICS_START_PING)) {
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_POKETCH_009);
            PoketchDowsingMachineGraphics_StartTask(appData->graphics, DOWSING_MACHINE_GRAPHICS_START_PING);
            appData->subState = 1;
        }
        break;
    }

    return FALSE;
}

static BOOL CheckScreenTapped(PoketchDowsingMachine *appData, u32 *x, u32 *y)
{
    if (PoketechSystem_IsRunningTask(appData->poketchSys) == FALSE) {
        if (TouchScreen_GetTapState(x, y)) {
            if ((*x - 24 < 176) & (*y - 24 < 144)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static void FindNearbyHiddenItems(PoketchDowsingMachine *appData, int x, int y)
{
    static const fx32 sRangeDistances[] = {
        FX32_CONST(8),
        FX32_CONST(24),
        FX32_CONST(48),
    };
    HiddenItemTilePosition *hiddenItems = FieldSystem_GetNearbyHiddenItems(PoketchSystem_GetFieldSystem(appData->poketchSys), HEAP_ID_POKETCH_APP);
    DowsingMachineData *dowsingData = &appData->dowsingData;

    dowsingData->dowsingResult = DOWSING_RESULT_NO_ITEMS;
    dowsingData->touchX = x;
    dowsingData->touchY = y;
    dowsingData->itemCount = 0;

    if (hiddenItems) {
        int itemX, itemY;
        fx32 itemDistance;

        for (int i = 0; hiddenItems[i].range != 0xff; i++) {
            GetItemScreenPosition(hiddenItems[i].screenTileX, hiddenItems[i].screenTileZ, &itemX, &itemY);
            itemDistance = FX_Sqrt(((itemX - x) * (itemX - x) + (itemY - y) * (itemY - y)) << FX32_SHIFT);

            if (itemDistance <= sRangeDistances[hiddenItems[i].range]) {
                if (dowsingData->itemCount < MAX_DOWSING_ITEMS) {
                    dowsingData->itemPositions[dowsingData->itemCount].x = itemX;
                    dowsingData->itemPositions[dowsingData->itemCount].y = itemY;
                    dowsingData->itemPositions[dowsingData->itemCount].range = hiddenItems[i].range;
                    dowsingData->itemCount++;
                    dowsingData->dowsingResult = DOWSING_RESULT_NEARBY_ITEMS;
                }
            } else if (itemDistance <= sRangeDistances[NELEMS(sRangeDistances) - 1]) {
                if (dowsingData->dowsingResult == DOWSING_RESULT_NO_ITEMS) {
                    dowsingData->dowsingResult = DOWSING_RESULT_FAR_ITEMS;
                }
            }
        }

        Heap_Free(hiddenItems);
    }
}

static void GetItemScreenPosition(int screenTileX, int screenTileZ, int *x, int *y)
{
    screenTileX -= 7;
    screenTileZ -= 7;

    *x = 112 + (screenTileX * 11);
    *y = 101 + (screenTileZ * 11);
}

static BOOL State_UnloadApp(PoketchDowsingMachine *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchDowsingMachineGraphics_StartTask(appData->graphics, DOWSING_MACHINE_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchDowsingMachineGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
