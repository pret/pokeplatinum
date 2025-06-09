#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "constants/heap.h"
#include "generated/pokemon_types.h"

#include "overlay043/poketch_move_tester_graphics.h"
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

enum MoveTesterTasks {
    TASK_LOAD_APP = 0,
    TASK_UPDATE_LOOP,
    TASK_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL PoketchMoveTester_New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL PoketchMoveTester_Init(PoketchMoveTester *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void PoketchMoveTester_InitData(MoveTesterData *moveTesterData);
static void PoketchMoveTester_Free(PoketchMoveTester *appData);
static void Task_MoveTesterMain(SysTask *task, void *appData);
static void PoketchMoveTester_ButtonChanged(u32 buttonID, u32 buttonState, u32 touchState, void *appData);
static void PoketchMoveTester_Shutdown(void *appData);
static void PoketchMoveTester_SetTaskState(PoketchMoveTester *appData, u32 state);
static BOOL Task_LoadApp(PoketchMoveTester *appData);
static BOOL Task_UpdateLoop(PoketchMoveTester *appData);
static BOOL Task_Shutdown(PoketchMoveTester *appData);
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

    if (PoketchMoveTesterGraphics_New(&(appData->graphics), &(appData->moveTesterData), bgConfig)) {
        appData->sysTaskState = TASK_LOAD_APP;
        appData->taskFuncState = 0;
        appData->shouldExit = FALSE;
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
    moveTesterData->defenderType2 = MOVE_TESTER_NONE_SELECTED;
    moveTesterData->exclamCount = PoketchMoveTester_GetExclamation(moveTesterData->attackType, moveTesterData->defenderType1, moveTesterData->defenderType2);
}

static void PoketchMoveTester_Free(PoketchMoveTester *appData)
{
    PoketchMemory_Write32(appData->appID, &(appData->moveTesterData), sizeof(appData->moveTesterData));
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchMoveTesterGraphics_Free(appData->graphics);
    Heap_FreeToHeap(appData);
}

static void Task_MoveTesterMain(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchMoveTester *) = {
        Task_LoadApp,
        Task_UpdateLoop,
        Task_Shutdown
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

static void PoketchMoveTester_SetTaskState(PoketchMoveTester *appData, u32 state)
{
    if (appData->shouldExit == FALSE) {
        appData->sysTaskState = state;
    } else {
        appData->sysTaskState = TASK_SHUTDOWN;
    }

    appData->taskFuncState = 0;
}

static BOOL Task_LoadApp(PoketchMoveTester *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchMoveTesterGraphics_StartTask(appData->graphics, TASK_DRAW_APP_SCREEN);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchMoveTesterGraphics_CheckTaskActive(appData->graphics, TASK_DRAW_APP_SCREEN)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            PoketchMoveTester_SetTaskState(appData, TASK_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UpdateLoop(PoketchMoveTester *appData)
{
    if (appData->shouldExit) {
        if (PoketchMoveTesterGraphics_NoActiveTasks(appData->graphics)) {
            PoketchMoveTester_SetTaskState(appData, TASK_SHUTDOWN);
        }

        return FALSE;
    }

    switch (appData->taskFuncState) {
    case 0:
        if (appData->buttonState == 1) {
            PoketchMoveTesterGraphics_StartTask(appData->graphics, TASK_BUTTON_PRESSED);
            appData->taskFuncState++;
        }
        break;
    case 1:
        if (appData->buttonState == 2) {
            PoketchMoveTesterGraphics_StartTask(appData->graphics, TASK_BUTTON_RELEASED);
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
            PoketchMoveTesterGraphics_StartTask(appData->graphics, TASK_BUTTON_RELEASED);
            PoketchMoveTesterGraphics_StartTask(appData->graphics, TASK_UPDATE_GRAPHICS);
            appData->taskFuncState++;
            break;
        }
        break;
    case 2:
        if (PoketchMoveTesterGraphics_NoActiveTasks(appData->graphics)) {
            appData->taskFuncState = 0;
        }
        break;
    }

    return FALSE;
}

static BOOL Task_Shutdown(PoketchMoveTester *appData)
{
    switch (appData->taskFuncState) {
    case 0:
        PoketchMoveTesterGraphics_StartTask(appData->graphics, TASK_FREE_WINDOWS_AND_BG);
        appData->taskFuncState++;
        break;
    case 1:
        if (PoketchMoveTesterGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static u32 PoketchMoveTester_GetExclamation(u32 attackType, u32 defenderType1, u32 defenderType2)
{
    static const s8 sMoveTesterTypeChart[][MOVE_TESTER_NONE_SELECTED] = {
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

    if ((sMoveTesterTypeChart[attackType][defenderType1] == MOVE_TESTER_IMMUNE) || ((defenderType2 != MOVE_TESTER_NONE_SELECTED) && (sMoveTesterTypeChart[attackType][defenderType2] == MOVE_TESTER_IMMUNE))) {
        return 0;
    } else {
        u32 exclamationCount = 3;

        exclamationCount += sMoveTesterTypeChart[attackType][defenderType1];

        if ((defenderType2 != MOVE_TESTER_NONE_SELECTED) && (defenderType2 != defenderType1)) {
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
            return MOVE_TESTER_NONE_SELECTED;
        }

        index = 0;
    }

    if (index < 0) {
        if (isType2) {
            return MOVE_TESTER_NONE_SELECTED;
        }

        index = NELEMS(sMoveTesterTypeOrder) - 1;
    }

    return sMoveTesterTypeOrder[index];
}
