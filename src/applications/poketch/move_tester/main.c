#include <nitro.h>
#include <nitro/sinit.h>
#include <string.h>

#include "constants/heap.h"
#include "generated/pokemon_types.h"

#include "applications/poketch/move_tester/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

typedef struct PoketchMoveTester {
    u8 activeTask;
    u8 taskFuncState;
    u8 shouldExit;
    u32 appID;
    MoveTesterData moveTesterData;
    PoketchMoveTesterGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u32 buttonState;
} PoketchMoveTester;

enum MoveTesterTasks {
    TASK_LOAD_APP = 0,
    TASK_UPDATE_LOOP,
    TASK_SHUTDOWN,
};

#define X(__d) MT_##__d##_X
#define ______ X(1_0)

enum MoveTesterMatchup {
    MT_1_0_X = 0, // Regularly effective  1.0x
    MT_2_0_X = 1, // Super effective      2.0x
    MT_0_5_X = -1, // Not very effective   0.5x
    MT_0_0_X = -10, // Not effective        0.0x
};

// clang-format off
static const s8 sMoveTesterTypeChart[NUM_POKEMON_TYPES][NUM_POKEMON_TYPES] = 
{ //                                                                                Defending Type
                    //  Normal Fighting Flying  Poison  Ground  Rock    Bug    Ghost    Steel   Mystery Fire    Water   Grass  Electric Psychic Ice     Dragon  Dark
  // Attacking Type  
    [TYPE_NORMAL]   = { ______, ______, ______, ______, ______, X(0_5), ______, X(0_0), X(0_5), ______, ______, ______, ______, ______, ______, ______, ______, ______ },
    [TYPE_FIGHTING] = { X(2_0), ______, X(0_5), X(0_5), ______, X(2_0), X(0_5), X(0_0), X(2_0), ______, ______, ______, ______, ______, X(0_5), X(2_0), ______, X(2_0) },
    [TYPE_FLYING]   = { ______, X(2_0), ______, ______, ______, X(0_5), X(2_0), ______, X(0_5), ______, ______, ______, X(2_0), X(0_5), ______, ______, ______, ______ },
    [TYPE_POISON]   = { ______, ______, ______, X(0_5), X(0_5), X(0_5), ______, X(0_5), X(0_0), ______, ______, ______, X(2_0), ______, ______, ______, ______, ______ },
    [TYPE_GROUND]   = { ______, ______, X(0_0), X(2_0), ______, X(2_0), X(0_5), ______, X(2_0), ______, X(2_0), ______, X(0_5), X(2_0), ______, ______, ______, ______ },
    [TYPE_ROCK]     = { ______, X(0_5), X(2_0), ______, X(0_5), ______, X(2_0), ______, X(0_5), ______, X(2_0), ______, ______, ______, ______, X(2_0), ______, ______ },
    [TYPE_BUG]      = { ______, X(0_5), X(0_5), X(0_5), ______, ______, ______, X(0_5), X(0_5), ______, X(0_5), ______, X(2_0), ______, X(2_0), ______, ______, X(2_0) },
    [TYPE_GHOST]    = { X(0_0), ______, ______, ______, ______, ______, ______, X(2_0), X(0_5), ______, ______, ______, ______, ______, X(2_0), ______, ______, X(0_5) },
    [TYPE_STEEL]    = { ______, ______, ______, ______, ______, X(2_0), ______, ______, X(0_5), ______, X(0_5), X(0_5), ______, X(0_5), ______, X(2_0), ______, ______ },
    [TYPE_MYSTERY]  = { ______, ______, ______, ______, ______, ______, ______, ______, ______, ______, ______, ______, ______, ______, ______, ______, ______, ______ },
    [TYPE_FIRE]     = { ______, ______, ______, ______, ______, X(0_5), X(2_0), ______, X(2_0), ______, X(0_5), X(0_5), X(2_0), ______, ______, X(2_0), X(0_5), ______ },
    [TYPE_WATER]    = { ______, ______, ______, ______, X(2_0), X(2_0), ______, ______, ______, ______, X(2_0), X(0_5), X(0_5), ______, ______, ______, X(0_5), ______ },
    [TYPE_GRASS]    = { ______, ______, X(0_5), X(0_5), X(2_0), X(2_0), X(0_5), ______, X(0_5), ______, X(0_5), X(2_0), X(0_5), ______, ______, ______, X(0_5), ______ },
    [TYPE_ELECTRIC] = { ______, ______, X(2_0), ______, X(0_0), ______, ______, ______, ______, ______, ______, X(2_0), X(0_5), X(0_5), ______, ______, X(0_5), ______ },
    [TYPE_PSYCHIC]  = { ______, X(2_0), ______, X(2_0), ______, ______, ______, ______, X(0_5), ______, ______, ______, ______, ______, X(0_5), ______, ______, X(0_0) },
    [TYPE_ICE]      = { ______, ______, X(2_0), ______, X(2_0), ______, ______, ______, X(0_5), ______, X(0_5), X(0_5), X(2_0), ______, ______, X(0_5), X(2_0), ______ },
    [TYPE_DRAGON]   = { ______, ______, ______, ______, ______, ______, ______, ______, X(0_5), ______, ______, ______, ______, ______, ______, ______, X(2_0), ______ },
    [TYPE_DARK]     = { ______, X(0_5), ______, ______, ______, ______, ______, X(2_0), X(0_5), ______, ______, ______, ______, ______, X(2_0), ______, ______, X(0_5) }
};
// clang-format on

#undef X
#undef ______

// This table is the order in which the types are displayed in the Move Tester app. It's only used for the order visually and has no relevance for the order of the above table.
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

static const TouchScreenHitTable sHitTableMoveTester[] = {
    { .rect = { .top = 112, .bottom = 144, .left = 16, .right = 40 } },
    { .rect = { .top = 112, .bottom = 144, .left = 104, .right = 128 } },
    { .rect = { .top = 24, .bottom = 56, .left = 96, .right = 120 } },
    { .rect = { .top = 24, .bottom = 56, .left = 184, .right = 208 } },
    { .rect = { .top = 56, .bottom = 88, .left = 96, .right = 120 } },
    { .rect = { .top = 56, .bottom = 88, .left = 184, .right = 208 } }
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchMoveTester *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void InitData(MoveTesterData *moveTesterData);
static void Free(PoketchMoveTester *appData);
static void Exit(void *appData);

static void ChangeActiveTask(PoketchMoveTester *appData, enum MoveTesterTasks taskID);
static void Task_Main(SysTask *task, void *appData);
static BOOL Task_LoadApp(PoketchMoveTester *appData);
static BOOL Task_UpdateApp(PoketchMoveTester *appData);
static BOOL Task_UnloadApp(PoketchMoveTester *appData);

static void ButtonChanged(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static u32 GetExclamationCount(u32 attackType, u32 defenderType1, u32 defenderType2);
static u32 GetTypeAfterShift(s32 type, s32 shift, BOOL isType2);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchMoveTester *moveTester = Heap_AllocFromHeap(HEAP_ID_POKETCH_APP, sizeof(PoketchMoveTester));

    if (moveTester != NULL) {
        if (Init(moveTester, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, moveTester, 1) != NULL) {
                *appData = moveTester;
                return TRUE;
            }
        }

        Heap_FreeToHeap(moveTester);
    }

    return FALSE;
}

static BOOL Init(PoketchMoveTester *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    appData->appID = appID;

    if (PoketchMemory_Read32(appID, &(appData->moveTesterData), sizeof(appData->moveTesterData)) == FALSE) {
        InitData(&(appData->moveTesterData));
    }

    if (PoketchMoveTesterGraphics_New(&(appData->graphics), &(appData->moveTesterData), bgConfig)) {
        appData->activeTask = TASK_LOAD_APP;
        appData->taskFuncState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(sHitTableMoveTester, NELEMS(sHitTableMoveTester), ButtonChanged, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void InitData(MoveTesterData *moveTesterData)
{
    moveTesterData->lastButtonPressed = TYPE_NORMAL;
    moveTesterData->attackType = TYPE_NORMAL;
    moveTesterData->defenderType1 = TYPE_NORMAL;
    moveTesterData->defenderType2 = MOVE_TESTER_NONE_SELECTED;
    moveTesterData->exclamCount = GetExclamationCount(moveTesterData->attackType, moveTesterData->defenderType1, moveTesterData->defenderType2);
}

static void Free(PoketchMoveTester *appData)
{
    PoketchMemory_Write32(appData->appID, &(appData->moveTesterData), sizeof(appData->moveTesterData));
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchMoveTesterGraphics_Free(appData->graphics);
    Heap_FreeToHeap(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static BOOL (*const stateFuncs[])(PoketchMoveTester *) = {
        Task_LoadApp,
        Task_UpdateApp,
        Task_UnloadApp
    };

    PoketchMoveTester *moveTester = appData;

    if (moveTester->activeTask < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(moveTester->poketchSys, moveTester->buttonManager);

        if (stateFuncs[moveTester->activeTask](moveTester)) {
            Free(moveTester);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(moveTester->poketchSys);
        }
    }
}

static void ButtonChanged(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchMoveTester *moveTester = appData;

    moveTester->moveTesterData.lastButtonPressed = buttonID;
    moveTester->buttonState = (enum ButtonManagerState)buttonState;
}

static void Exit(void *appData)
{
    PoketchMoveTester *moveTester = appData;
    moveTester->shouldExit = TRUE;
}

static void ChangeActiveTask(PoketchMoveTester *appData, enum MoveTesterTasks taskID)
{
    if (appData->shouldExit == FALSE) {
        appData->activeTask = taskID;
    } else {
        appData->activeTask = TASK_SHUTDOWN;
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
        if (PoketchMoveTesterGraphics_TaskIsNotActive(appData->graphics, TASK_DRAW_APP_SCREEN)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeActiveTask(appData, TASK_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL Task_UpdateApp(PoketchMoveTester *appData)
{
    if (appData->shouldExit) {
        if (PoketchMoveTesterGraphics_NoActiveTasks(appData->graphics)) {
            ChangeActiveTask(appData, TASK_SHUTDOWN);
        }

        return FALSE;
    }

    switch (appData->taskFuncState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            PoketchMoveTesterGraphics_StartTask(appData->graphics, TASK_BUTTON_PRESSED);
            appData->taskFuncState++;
        }
        break;
    case 1:
        if (appData->buttonState == BUTTON_MANAGER_STATE_DRAGGING) {
            PoketchMoveTesterGraphics_StartTask(appData->graphics, TASK_BUTTON_RELEASED);
            appData->taskFuncState = 0;
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TAP) {
            switch (appData->moveTesterData.lastButtonPressed) {
            case 0:
                appData->moveTesterData.attackType = GetTypeAfterShift(appData->moveTesterData.attackType, -1, FALSE);
                break;
            case 1:
                appData->moveTesterData.attackType = GetTypeAfterShift(appData->moveTesterData.attackType, 1, FALSE);
                break;
            case 2:
                appData->moveTesterData.defenderType1 = GetTypeAfterShift(appData->moveTesterData.defenderType1, -1, FALSE);
                break;
            case 3:
                appData->moveTesterData.defenderType1 = GetTypeAfterShift(appData->moveTesterData.defenderType1, 1, FALSE);
                break;
            case 4:
                appData->moveTesterData.defenderType2 = GetTypeAfterShift(appData->moveTesterData.defenderType2, -1, TRUE);
                break;
            case 5:
                appData->moveTesterData.defenderType2 = GetTypeAfterShift(appData->moveTesterData.defenderType2, 1, TRUE);
                break;
            }

            appData->moveTesterData.exclamCount = GetExclamationCount(appData->moveTesterData.attackType, appData->moveTesterData.defenderType1, appData->moveTesterData.defenderType2);
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

static BOOL Task_UnloadApp(PoketchMoveTester *appData)
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

static u32 GetExclamationCount(u32 attackType, u32 defenderType1, u32 defenderType2)
{
    if ((sMoveTesterTypeChart[attackType][defenderType1] == MT_0_0_X) || ((defenderType2 != MOVE_TESTER_NONE_SELECTED) && (sMoveTesterTypeChart[attackType][defenderType2] == MT_0_0_X))) {
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

static u32 GetTypeAfterShift(s32 currentType, s32 shift, BOOL isType2)
{
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
