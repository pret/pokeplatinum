#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "constants/heap.h"
#include "generated/pokemon_types.h"

#include "overlay043/ov43_02256544.h"
#include "overlay043/struct_ov43_02256544_1.h"
#include "overlay043/struct_ov43_02256544_decl.h"
#include "poketch/poketch_button.h"
#include "poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct {
    u8 sysTaskState;
    u8 taskFuncState;
    u8 shouldExit;
    u32 appID;
    MoveTesterData moveTesterData;
    PoketchMoveTesterGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 buttonState;
} PoketchMoveTester;

enum MoveTesterMatchup {
    MOVE_TESTER_NEUTRAL = 0,
    MOVE_TESTER_VERY_EFFECTIVE = 1,
    MOVE_TESTER_NOT_VERY_EFFECTIVE = -1,
    MOVE_TESTER_IMMUNE = -10,
};

static void NitroStaticInit(void);

static BOOL PoketchMoveTester_New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL PoketchMoveTester_Init(PoketchMoveTester *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void PoketchMoveTester_InitData(MoveTesterData *moveTesterData);
static void PoketchMoveTester_Free(PoketchMoveTester *appData);
static void Task_MoveTesterMain(SysTask *task, void *appData);
static void PoketchMoveTester_ButtonChanged(u32 buttonID, u32 buttonState, u32 touchState, void *appData);
static void PoketchMoveTester_Shutdown(void *appData);
static void ov43_02256318(PoketchMoveTester *appData, u32 param1);
static BOOL ov43_0225632C(PoketchMoveTester *appData);
static BOOL ov43_0225636C(PoketchMoveTester *appData);
static BOOL ov43_02256478(PoketchMoveTester *appData);
static u32 PoketchMoveTester_GetExclamation(u32 attackType, u32 defenderType1, u32 defenderType2);
static u32 PoketchMoveTester_GetTypeAfterShift(s32 type, s32 shift, BOOL isType2);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(PoketchMoveTester_New, PoketchMoveTester_Shutdown);
}

static BOOL PoketchMoveTester_New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchMoveTester *moveTester = (PoketchMoveTester *)Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(PoketchMoveTester));

    if (moveTester != NULL) {
        if (PoketchMoveTester_Init(moveTester, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_MoveTesterMain, moveTester, 1) != NULL) {
                *appData = moveTester;
                return TRUE;
            }
        }

        Heap_FreeToHeap(moveTester);
    }

    return FALSE;
}

static BOOL PoketchMoveTester_Init(PoketchMoveTester *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    static const TouchScreenHitTable sHitTableMoveTester[] = {
        { 112, 144, 16, 40 },
        { 112, 144, 104, 128 },
        { 24, 56, 96, 120 },
        { 24, 56, 184, 208 },
        { 56, 88, 96, 120 },
        { 56, 88, 184, 208 }
    };

    appData->appID = appID;

    if (PoketchMemory_Read32(appID, &(appData->moveTesterData), sizeof(appData->moveTesterData)) == FALSE) {
        PoketchMoveTester_InitData(&(appData->moveTesterData));
    }

    if (ov43_02256544(&(appData->graphics), &(appData->moveTesterData), bgConfig)) {
        appData->sysTaskState = 0;
        appData->taskFuncState = 0;
        appData->shouldExit = 0;
        appData->buttonManager = PoketchButtonManager_New(sHitTableMoveTester, NELEMS(sHitTableMoveTester), PoketchMoveTester_ButtonChanged, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = 0;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void PoketchMoveTester_InitData(MoveTesterData *moveTesterData)
{
    moveTesterData->lastButtonPressed = TYPE_NORMAL;
    moveTesterData->attackType = TYPE_NORMAL;
    moveTesterData->defenderType1 = TYPE_NORMAL;
    moveTesterData->defenderType2 = 18;
    moveTesterData->exclamCount = PoketchMoveTester_GetExclamation(moveTesterData->attackType, moveTesterData->defenderType1, moveTesterData->defenderType2);
}

static void PoketchMoveTester_Free(PoketchMoveTester *appData)
{
    PoketchMemory_Write32(appData->appID, &(appData->moveTesterData), sizeof(appData->moveTesterData));
    PoketchButtonManager_Free(appData->buttonManager);
    ov43_02256680(appData->graphics);
    Heap_FreeToHeap(appData);
}

static void Task_MoveTesterMain(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchMoveTester *) = {
        ov43_0225632C,
        ov43_0225636C,
        ov43_02256478
    };

    PoketchMoveTester *moveTester = (PoketchMoveTester *)appData;

    if (moveTester->sysTaskState < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(moveTester->poketchSys, moveTester->buttonManager);

        if (stateFuncs[moveTester->sysTaskState](moveTester)) {
            PoketchMoveTester_Free(moveTester);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(moveTester->poketchSys);
        }
    } else {
    }
}

static void PoketchMoveTester_ButtonChanged(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchMoveTester *moveTester = (PoketchMoveTester *)appData;

    moveTester->moveTesterData.lastButtonPressed = buttonID;
    moveTester->buttonState = buttonState;
}

static void PoketchMoveTester_Shutdown(void *appData)
{
    ((PoketchMoveTester *)appData)->shouldExit = TRUE;
}

static void ov43_02256318(PoketchMoveTester *appData, u32 param1)
{
    if (appData->shouldExit == FALSE) {
        appData->sysTaskState = param1;
    } else {
        appData->sysTaskState = 2;
    }

    appData->taskFuncState = 0;
}

static BOOL ov43_0225632C(PoketchMoveTester *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        ov43_022566B0(appData->graphics, 0);
        appData->taskFuncState++;
        break;
    case 1:
        if (ov43_022566D4(appData->graphics, 0)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ov43_02256318(appData, 1);
        }
        break;
    }

    return 0;
}

static BOOL ov43_0225636C(PoketchMoveTester *appData)
{
    if (appData->shouldExit) {
        if (ov43_022566E0(appData->graphics)) {
            ov43_02256318(appData, 2);
        }

        return FALSE;
    }

    switch (appData->taskFuncState) {
    case 0:
        if (appData->buttonState == 1) {
            ov43_022566B0(appData->graphics, 2);
            appData->taskFuncState++;
        }
        break;
    case 1:
        if (appData->buttonState == 2) {
            ov43_022566B0(appData->graphics, 3);
            appData->taskFuncState = 0;
            break;
        }

        if (appData->buttonState == 3) {
            switch (appData->moveTesterData.lastButtonPressed) {
            case 0:
                appData->moveTesterData.attackType = PoketchMoveTester_GetTypeAfterShift(appData->moveTesterData.attackType, -1, 0);
                break;
            case 1:
                appData->moveTesterData.attackType = PoketchMoveTester_GetTypeAfterShift(appData->moveTesterData.attackType, 1, 0);
                break;
            case 2:
                appData->moveTesterData.defenderType1 = PoketchMoveTester_GetTypeAfterShift(appData->moveTesterData.defenderType1, -1, 0);
                break;
            case 3:
                appData->moveTesterData.defenderType1 = PoketchMoveTester_GetTypeAfterShift(appData->moveTesterData.defenderType1, 1, 0);
                break;
            case 4:
                appData->moveTesterData.defenderType2 = PoketchMoveTester_GetTypeAfterShift(appData->moveTesterData.defenderType2, -1, 1);
                break;
            case 5:
                appData->moveTesterData.defenderType2 = PoketchMoveTester_GetTypeAfterShift(appData->moveTesterData.defenderType2, 1, 1);
                break;
            }

            appData->moveTesterData.exclamCount = PoketchMoveTester_GetExclamation(appData->moveTesterData.attackType, appData->moveTesterData.defenderType1, appData->moveTesterData.defenderType2);
            ov43_022566B0(appData->graphics, 3);
            ov43_022566B0(appData->graphics, 4);
            appData->taskFuncState++;
            break;
        }
        break;
    case 2:
        if (ov43_022566E0(appData->graphics)) {
            appData->taskFuncState = 0;
        }
        break;
    }

    return FALSE;
}

static BOOL ov43_02256478(PoketchMoveTester *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        ov43_022566B0(appData->graphics, 1);
        appData->taskFuncState++;
        break;
    case 1:
        if (ov43_022566E0(appData->graphics)) {
            return 1;
        }
        break;
    }

    return 0;
}

static u32 PoketchMoveTester_GetExclamation(u32 attackType, u32 defenderType1, u32 defenderType2)
{
    static const s8 sMoveTesterTypeChart[][18] = {
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_IMMUNE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_IMMUNE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_IMMUNE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_IMMUNE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE },
        { MOVE_TESTER_IMMUNE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_IMMUNE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_IMMUNE },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL },
        { MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NOT_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_VERY_EFFECTIVE, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NEUTRAL, MOVE_TESTER_NOT_VERY_EFFECTIVE }
    };

    if ((sMoveTesterTypeChart[attackType][defenderType1] == MOVE_TESTER_IMMUNE) || ((defenderType2 != 18) && (sMoveTesterTypeChart[attackType][defenderType2] == MOVE_TESTER_IMMUNE))) {
        return 0;
    } else {
        u32 exclamationCount = 3;

        exclamationCount += sMoveTesterTypeChart[attackType][defenderType1];

        if ((defenderType2 != 18) && (defenderType2 != defenderType1)) {
            exclamationCount += sMoveTesterTypeChart[attackType][defenderType2];
        }

        return exclamationCount;
    }
}

static u32 PoketchMoveTester_GetTypeAfterShift(s32 currentType, s32 shift, BOOL isType2)
{
    static const u8 sMoveTesterTypeOrder[] = {
        TYPE_NORMAL,
        TYPE_FIRE,
        TYPE_WATER,
        TYPE_ELECTRIC,
        TYPE_GRASS,
        TYPE_ICE,
        TYPE_FIGHTING,
        TYPE_POISON,
        TYPE_GROUND,
        TYPE_FLYING,
        TYPE_PSYCHIC,
        TYPE_BUG,
        TYPE_ROCK,
        TYPE_GHOST,
        TYPE_DRAGON,
        TYPE_DARK,
        TYPE_STEEL
    };

    int index;

    for (index = 0; index < NELEMS(sMoveTesterTypeOrder); index++) {
        if (sMoveTesterTypeOrder[index] == currentType) {
            break;
        }
    }

    if (index == NELEMS(sMoveTesterTypeOrder)) {
        return (shift > 0) ? sMoveTesterTypeOrder[0] : sMoveTesterTypeOrder[(NELEMS(sMoveTesterTypeOrder) - 1)];
    }

    index += shift;

    if (index >= (int)(NELEMS(sMoveTesterTypeOrder))) {
        if (isType2) {
            return 18;
        }

        index = 0;
    }

    if (index < 0) {
        if (isType2) {
            return 18;
        }

        index = NELEMS(sMoveTesterTypeOrder) - 1;
    }

    return sMoveTesterTypeOrder[index];
}
