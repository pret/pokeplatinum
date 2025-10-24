#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/coin_toss/graphics.h"
#include "applications/poketch/poketch_system.h"

#include "bg_window.h"
#include "heap.h"
#include "math_util.h"
#include "poketch_memory.h"
#include "sys_task.h"
#include "sys_task_manager.h"

typedef struct PoketchCoinToss {
    u8 state;
    u8 subState;
    u8 shouldExit;
    u32 appID;
    CoinTossResult coin;
    CoinTossGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchCoinToss;

typedef BOOL (*StateFunc)(PoketchCoinToss *);

enum CoinTossState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchCoinToss *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchCoinToss *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchCoinToss *appData, enum CoinTossState newState);
static BOOL State_LoadApp(PoketchCoinToss *appData);
static BOOL State_UpdateApp(PoketchCoinToss *appData);
static BOOL State_UnloadApp(PoketchCoinToss *appData);

static BOOL CheckCoinTapped(void);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchCoinToss *coinToss = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchCoinToss));

    if (coinToss != NULL) {
        if (Init(coinToss, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, coinToss, 1) != NULL) {
                *appData = coinToss;
                return TRUE;
            }
        }

        Heap_Free(coinToss);
    }

    return FALSE;
}

static BOOL Init(PoketchCoinToss *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    appData->appID = appID;

    if (!PoketchMemory_Read32(appID, &appData->coin, sizeof(appData->coin))) {
        appData->coin.isHeads = TRUE;
    }

    if (PoketchCoinTossGraphics_New(&appData->graphics, &appData->coin, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->poketchSys = poketchSys;
        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchCoinToss *appData)
{
    PoketchMemory_Write32(appData->appID, &appData->coin, sizeof(appData->coin));
    PoketchCoinTossGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchCoinToss *coinToss = appData;

    if (coinToss->state < NELEMS(stateFuncs)) {
        if (stateFuncs[coinToss->state](coinToss)) {
            Free(coinToss);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(coinToss->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchCoinToss *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchCoinToss *appData, enum CoinTossState newState)
{
    if (!appData->shouldExit) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchCoinToss *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchCoinTossGraphics_StartTask(appData->graphics, COIN_TOSS_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchCoinTossGraphics_TaskIsNotActive(appData->graphics, COIN_TOSS_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchCoinToss *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
    }

    switch (appData->subState) {
    case 0:
        if (CheckCoinTapped()) {
            appData->coin.isHeads = MTRNG_Next() % 2;
            PoketchCoinTossGraphics_StartTask(appData->graphics, COIN_TOSS_GRAPHICS_TOSS_COIN);
            appData->subState++;
        }
        break;
    case 1:
        if (PoketchCoinTossGraphics_TaskIsNotActive(appData->graphics, COIN_TOSS_GRAPHICS_TOSS_COIN)) {
            appData->subState = 0;
        }
        break;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchCoinToss *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchCoinTossGraphics_StartTask(appData->graphics, COIN_TOSS_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchCoinTossGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL CheckCoinTapped(void)
{
    u32 x, y;

    if (PoketchSystem_GetDisplayTappedCoords(&x, &y)) {
        x = (COIN_REST_POSITION_X - x) * (COIN_REST_POSITION_X - x);
        y = (COIN_REST_POSITION_Y - y) * (COIN_REST_POSITION_Y - y);

        if (x + y < COIN_RADIUS * COIN_RADIUS) {
            return TRUE;
        }
    }

    return FALSE;
}
