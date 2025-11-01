#include <nitro.h>
#include <nitro/sinit.h>

#include "applications/poketch/berry_searcher/graphics.h"
#include "applications/poketch/poketch_system.h"

#include "berry_patches.h"
#include "bg_window.h"
#include "heap.h"
#include "inlines.h"
#include "savedata_misc.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system_vars.h"
#include "vars_flags.h"

static const struct {
    u8 x;
    u8 y;
} sBerryPositions[] = {
    { 5, 20 },
    { 5, 20 },
    { 6, 20 },
    { 6, 20 },
    { 6, 19 },
    { 6, 19 },
    { 7, 17 },
    { 7, 17 },
    { 7, 17 },
    { 7, 17 },
    { 5, 18 },
    { 5, 18 },
    { 5, 18 },
    { 5, 18 },
    { 8, 16 },
    { 8, 16 },
    { 8, 16 },
    { 8, 16 },
    { 9, 19 },
    { 9, 19 },
    { 9, 21 },
    { 9, 21 },
    { 9, 22 },
    { 9, 22 },
    { 9, 22 },
    { 9, 22 },
    { 13, 22 },
    { 13, 22 },
    { 13, 22 },
    { 13, 22 },
    { 16, 22 },
    { 16, 22 },
    { 17, 21 },
    { 17, 21 },
    { 17, 20 },
    { 17, 20 },
    { 17, 20 },
    { 17, 20 },
    { 17, 19 },
    { 17, 19 },
    { 17, 19 },
    { 17, 19 },
    { 15, 16 },
    { 15, 16 },
    { 15, 16 },
    { 15, 16 },
    { 13, 16 },
    { 13, 16 },
    { 13, 16 },
    { 13, 16 },
    { 14, 24 },
    { 14, 24 },
    { 14, 25 },
    { 14, 25 },
    { 17, 26 },
    { 17, 26 },
    { 17, 26 },
    { 17, 26 },
    { 19, 25 },
    { 19, 25 },
    { 19, 25 },
    { 19, 25 },
    { 20, 25 },
    { 20, 25 },
    { 20, 25 },
    { 20, 25 },
    { 22, 20 },
    { 22, 20 },
    { 22, 20 },
    { 22, 20 },
    { 19, 18 },
    { 19, 18 },
    { 20, 18 },
    { 20, 18 },
    { 2, 23 },
    { 2, 23 },
    { 2, 23 },
    { 2, 23 },
    { 8, 28 },
    { 8, 28 },
    { 8, 28 },
    { 8, 28 },
    { 23, 24 },
    { 23, 24 },
    { 23, 24 },
    { 23, 24 },
    { 28, 16 },
    { 28, 16 },
    { 28, 16 },
    { 28, 16 },
    { 19, 13 },
    { 20, 13 },
    { 20, 13 },
    { 20, 13 },
    { 19, 10 },
    { 19, 10 },
    { 19, 10 },
    { 19, 10 },
    { 21, 10 },
    { 21, 10 },
    { 21, 10 },
    { 21, 10 },
    { 24, 12 },
    { 24, 12 },
    { 24, 12 },
    { 24, 12 },
    { 25, 13 },
    { 25, 13 },
    { 25, 13 },
    { 25, 13 },
    { 25, 14 },
    { 25, 14 },
    { 25, 14 },
    { 25, 14 },
    { 21, 13 },
    { 21, 13 },
    { 21, 13 },
    { 21, 13 }
};

typedef struct PoketchBerrySearcher {
    u8 state;
    u8 subState;
    u8 shouldExit;
    BerrySearcherData mapData;
    BerrySearcherGraphics *graphics;
    PoketchSystem *poketchSys;
} PoketchBerrySearcher;

typedef BOOL (*StateFunc)(PoketchBerrySearcher *);

enum BerrySearcherState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchBerrySearcher *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchBerrySearcher *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchBerrySearcher *appData, enum BerrySearcherState newState);
static BOOL State_LoadApp(PoketchBerrySearcher *appData);
static BOOL State_UpdateApp(PoketchBerrySearcher *appData);
static BOOL State_UnloadApp(PoketchBerrySearcher *appData);

static int GetReadyBerryPatches(PoketchBerrySearcher *appData);
static BOOL CheckPlayerPositionUpdated(PoketchBerrySearcher *appData);
static void LoadHiddenLocationsState(PoketchBerrySearcher *appData, PoketchSystem *poketchSys);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchBerrySearcher *berrySearcher = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchBerrySearcher));

    if (berrySearcher != NULL) {
        if (Init(berrySearcher, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, berrySearcher, 1) != NULL) {
                *appData = berrySearcher;
                return TRUE;
            }
        }

        Heap_Free(berrySearcher);
    }

    return FALSE;
}

static BOOL Init(PoketchBerrySearcher *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    appData->poketchSys = poketchSys;
    appData->mapData.berryCount = GetReadyBerryPatches(appData);

    PoketchMap_GetPlayerLocation(PoketchSystem_GetFieldSystem(appData->poketchSys), &appData->mapData.playerX, &appData->mapData.playerY);

    LoadHiddenLocationsState(appData, poketchSys);

    if (PoketchBerrySearcherGraphics_New(&appData->graphics, &appData->mapData, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchBerrySearcher *appData)
{
    PoketchBerrySearcherGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp
    };

    PoketchBerrySearcher *berrySearcher = appData;

    if (berrySearcher->state < NELEMS(stateFuncs)) {
        if (stateFuncs[berrySearcher->state](berrySearcher)) {
            Free(berrySearcher);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(berrySearcher->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchBerrySearcher *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchBerrySearcher *appData, enum BerrySearcherState newState)
{
    if (!appData->shouldExit) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchBerrySearcher *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchBerrySearcherGraphics_StartTask(appData->graphics, BERRY_SEARCHER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchBerrySearcherGraphics_TaskIsNotActive(appData->graphics, BERRY_SEARCHER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchBerrySearcher *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    appData->mapData.playerPosUpdated = CheckPlayerPositionUpdated(appData);

    if (PoketchBerrySearcherGraphics_TaskIsNotActive(appData->graphics, BERRY_SEARCHER_GRAPHICS_REFRESH)) {
        u32 x, y;

        if (PoketchSystem_GetDisplayTappedCoords(&x, &y)) {
            if ((x - POKETCH_SCREEN_MIN_X < 192) & (y - POKETCH_SCREEN_MIN_Y < 192)) {
                appData->mapData.berryCount = GetReadyBerryPatches(appData);
                PoketchBerrySearcherGraphics_StartTask(appData->graphics, BERRY_SEARCHER_GRAPHICS_REFRESH);
            }
        }
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchBerrySearcher *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchBerrySearcherGraphics_StartTask(appData->graphics, BERRY_SEARCHER_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchBerrySearcherGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static int GetReadyBerryPatches(PoketchBerrySearcher *appData)
{
    BerryPatch *patches = MiscSaveBlock_GetBerryPatches(PoketchSystem_GetSaveData(appData->poketchSys));
    int i, readyPatches;

    for (i = 0, readyPatches = 0; i < NELEMS(sBerryPositions); i++) {
        if (BerryPatches_IsPatchGrowing(patches, i) == TRUE && BerryPatches_GetPatchGrowthStage(patches, i) == BERRY_GROWTH_STAGE_FRUIT) {
            appData->mapData.berries[readyPatches].x = sBerryPositions[i].x;
            appData->mapData.berries[readyPatches].y = sBerryPositions[i].y;

            while (i + 1 < NELEMS(sBerryPositions) && appData->mapData.berries[readyPatches].x == sBerryPositions[i + 1].x && appData->mapData.berries[readyPatches].y == sBerryPositions[i + 1].y) {
                i++;
            }

            if (++readyPatches >= MAX_MAP_BERRIES) {
                break;
            }
        }
    }

    return readyPatches;
}

static BOOL CheckPlayerPositionUpdated(PoketchBerrySearcher *appData)
{
    BOOL updated = FALSE;

    if (PoketchSystem_IsPlayerMoving(appData->poketchSys)) {
        int x, y;

        PoketchMap_GetPlayerLocation(PoketchSystem_GetFieldSystem(appData->poketchSys), &x, &y);

        if (x != appData->mapData.playerX || y != appData->mapData.playerY) {
            appData->mapData.playerX = x;
            appData->mapData.playerY = y;
            updated = TRUE;
        }
    }

    return updated;
}

static void LoadHiddenLocationsState(PoketchBerrySearcher *appData, PoketchSystem *poketchSys)
{
    VarsFlags *varsFlags = SaveData_GetVarsFlags(PoketchSystem_GetSaveData(poketchSys));

    for (int i = 0; i < HIDDEN_LOCATION_MAX; i++) {
        appData->mapData.showHiddenLocations[i] = SystemVars_CheckHiddenLocation(varsFlags, i);
    }
}
