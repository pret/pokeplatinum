#include <nitro.h>
#include <nitro/sinit.h>

#include "generated/sdat.h"

#include "applications/poketch/link_searcher/graphics.h"
#include "applications/poketch/poketch_system.h"
#include "field/field_system.h"

#include "bg_window.h"
#include "communication_system.h"
#include "heap.h"
#include "map_header.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"

#define COMM_STATE_IDLE      0
#define COMM_STATE_SEARCHING 1
#define COMM_STATE_CONNECTED 2
#define COMM_STATE_CLOSE     3

typedef struct PoketchLinkSearcher {
    u8 state;
    u8 subState;
    u8 shouldExit;
    LinkResults results;
    LinkSearcherGraphics *graphics;
    PoketchSystem *poketchSys;
    u32 subStateTimer;
    u8 commState;
    u8 killCommSys;
} PoketchLinkSearcher;

typedef BOOL (*StateFunc)(PoketchLinkSearcher *);

enum LinkSearcherState {
    STATE_LOAD_APP = 0,
    STATE_INTRO_SCREEN,
    STATE_SHOW_RESULTS,
    STATE_UNUSABLE_ERROR,
    STATE_DONT_MOVE_ERROR,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchLinkSearcher *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchLinkSearcher *appData);
static void Exit(void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchLinkSearcher *appData, enum LinkSearcherState newState);
static BOOL State_LoadApp(PoketchLinkSearcher *appData);
static BOOL State_OnIntroScreen(PoketchLinkSearcher *appData);
static BOOL State_ShowResults(PoketchLinkSearcher *appData);
static BOOL State_UnusableError(PoketchLinkSearcher *appData);
static BOOL State_DontMoveError(PoketchLinkSearcher *appData);
static BOOL State_UnloadApp(PoketchLinkSearcher *appData);

static BOOL CheckPlayerMoving(PoketchLinkSearcher *appData);
static BOOL ScreenIsPressed(PoketchLinkSearcher *appData);
static BOOL UpdateLinkSearchResults(PoketchLinkSearcher *appData);
static void UpdateCommState(PoketchLinkSearcher *appData);
static void StartLinkSearch(PoketchLinkSearcher *appData);
static BOOL LinkResultsReady(PoketchLinkSearcher *appData);
static void StopLinkSearch(PoketchLinkSearcher *appData);
static BOOL CommStateIdle(PoketchLinkSearcher *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchLinkSearcher *linkSearcher = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchLinkSearcher));

    if (linkSearcher != NULL) {
        if (Init(linkSearcher, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, linkSearcher, 1) != NULL) {
                *appData = linkSearcher;
                return TRUE;
            }
        }

        Heap_Free(linkSearcher);
    }

    return FALSE;
}

static BOOL Init(PoketchLinkSearcher *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    if (PoketchLinkSearcherGraphics_New(&appData->graphics, &appData->results, bgConfig)) {
        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->commState = COMM_STATE_IDLE;
        appData->killCommSys = FALSE;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchLinkSearcher *appData)
{
    PoketchLinkSearchGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_OnIntroScreen,
        State_ShowResults,
        State_UnusableError,
        State_DontMoveError,
        State_UnloadApp
    };

    PoketchLinkSearcher *linkSearcher = appData;

    if (linkSearcher->state < NELEMS(stateFuncs)) {
        UpdateCommState(linkSearcher);

        if (stateFuncs[linkSearcher->state](linkSearcher)) {
            Free(linkSearcher);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(linkSearcher->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchLinkSearcher *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchLinkSearcher *appData, enum LinkSearcherState newState)
{
    if (!appData->shouldExit) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchLinkSearcher *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchLinkSearcherGraphics_TaskIsNotActive(appData->graphics, LINK_SEARCHER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_INTRO_SCREEN);
        }
        break;
    }

    return FALSE;
}

static BOOL State_OnIntroScreen(PoketchLinkSearcher *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    if (appData->subState == 0 && ScreenIsPressed(appData)) {
        if (CommStateIdle(appData)) {
            FieldSystem *fieldSystem = PoketchSystem_GetFieldSystem(appData->poketchSys);

            PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_SEARCHING);

            if (MapHeader_IsPokemonCenter2(fieldSystem->location->mapId)) {
                ChangeState(appData, STATE_UNUSABLE_ERROR);
            } else {
                ChangeState(appData, STATE_SHOW_RESULTS);
            }
        } else {
            PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
        }
    }

    return FALSE;
}

static BOOL State_ShowResults(PoketchLinkSearcher *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        StartLinkSearch(appData);
        appData->subStateTimer = 0;
        appData->subState++;
        break;
    case 1:
        if (CheckPlayerMoving(appData)) {
            ChangeState(appData, STATE_DONT_MOVE_ERROR);
            return FALSE;
        }

        if (appData->subStateTimer < 60) {
            appData->subStateTimer++;
        }

        if (LinkResultsReady(appData) && appData->subStateTimer >= 60) {
            UpdateLinkSearchResults(appData);
            PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_RESULTS);
            appData->subStateTimer = 0;
            appData->subState++;
        }
        break;
    case 2:
        if (CheckPlayerMoving(appData) || ScreenIsPressed(appData)) {
            StopLinkSearch(appData);
            PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_INTRO);
            ChangeState(appData, STATE_INTRO_SCREEN);
            return FALSE;
        }

        if (++appData->subStateTimer >= 30) {
            appData->subStateTimer = 0;

            if (UpdateLinkSearchResults(appData)) {
                PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_RESULTS);
            }
        }
        break;
    }

    return FALSE;
}

static BOOL CheckPlayerMoving(PoketchLinkSearcher *appData)
{
    if (PoketechSystem_IsRunningTask(appData->poketchSys)) {
        return TRUE;
    }

    if (PoketchSystem_IsPlayerMoving(appData->poketchSys)) {
        return TRUE;
    }

    return FALSE;
}

static BOOL State_UnusableError(PoketchLinkSearcher *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        appData->subStateTimer = 0;
        appData->subState++;
    case 1:
        if (++appData->subStateTimer >= 60) {
            PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_UNUSABLE);
            appData->subState++;
        }
        break;
    case 2:
        if (ScreenIsPressed(appData)) {
            PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_INTRO);
            ChangeState(appData, STATE_INTRO_SCREEN);
        }
        break;
    }

    return FALSE;
}

static BOOL State_DontMoveError(PoketchLinkSearcher *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        StopLinkSearch(appData);
        PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_DONT_MOVE);
        appData->subState++;
        break;
    case 1:
        if (ScreenIsPressed(appData)) {
            PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_INTRO);
            ChangeState(appData, STATE_INTRO_SCREEN);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchLinkSearcher *appData)
{
    switch (appData->subState) {
    case 0:
        StopLinkSearch(appData);
        appData->subState++;
    case 1:
        if (CommStateIdle(appData)) {
            PoketchLinkSearcherGraphics_StartTask(appData->graphics, LINK_SEARCHER_GRAPHICS_FREE);
            appData->subState++;
        }
        break;
    case 2:
        if (PoketchLinkSearcherGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL ScreenIsPressed(PoketchLinkSearcher *appData)
{
    if (!PoketechSystem_IsRunningTask(appData->poketchSys)) {
        u32 x, y;

        if (TouchScreen_GetTapState(&x, &y)) {
            if (INSIDE_POKETCH_SCREEN(x, y)) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL UpdateLinkSearchResults(PoketchLinkSearcher *appData)
{
    static const u8 sUnionRoomLinkIDs[] = {
        9, 13, 7, 18, 26
    };
    static const u8 sUndergroundIDs[] = {
        10
    };
    static const u8 sColosseumIDs[] = {
        1, 2, 3, 4, 5
    };
    static const u8 sOtherLinksLinkIDs[] = {
        0, 6, 8, 11, 12, 14, 16, 27, 28, 30, 31, 32
    };
    static const struct {
        const u8 *linkIDs;
        u32 numElems;
    } linkTypes[] = {
        { sUnionRoomLinkIDs, NELEMS(sUnionRoomLinkIDs) },
        { sUndergroundIDs, NELEMS(sUndergroundIDs) },
        { sColosseumIDs, NELEMS(sColosseumIDs) },
        { sOtherLinksLinkIDs, NELEMS(sOtherLinksLinkIDs) }
    };
    int i;
    BOOL updated = FALSE;

    for (i = 0; i < NELEMS(linkTypes); i++) {
        int j, hits;

        for (j = 0, hits = 0; j < linkTypes[i].numElems; j++) {
            hits += sub_02034120(linkTypes[i].linkIDs[j]);
        }

        if (hits != appData->results.results[i]) {
            appData->results.results[i] = hits;
            updated = TRUE;
        }
    }

    return updated;
}

static void UpdateCommState(PoketchLinkSearcher *appData)
{
    switch (appData->commState) {
    case COMM_STATE_IDLE:
        break;
    case COMM_STATE_SEARCHING:
        if (sub_02037C18()) {
            appData->commState = COMM_STATE_CONNECTED;
        }
        break;
    case COMM_STATE_CONNECTED:
        if (appData->killCommSys) {
            sub_02037BFC();
            appData->killCommSys = FALSE;
            appData->commState = COMM_STATE_CLOSE;
        }
        break;
    case COMM_STATE_CLOSE:
        if (!CommSys_IsInitialized()) {
            appData->commState = COMM_STATE_IDLE;
        }
        break;
    }
}

static void StartLinkSearch(PoketchLinkSearcher *appData)
{
    if (appData->commState == COMM_STATE_IDLE) {
        sub_02037BC0(PoketchSystem_GetSaveData(appData->poketchSys));
        appData->commState = COMM_STATE_SEARCHING;
    }
}

static BOOL LinkResultsReady(PoketchLinkSearcher *appData)
{
    return appData->commState == COMM_STATE_CONNECTED;
}

static void StopLinkSearch(PoketchLinkSearcher *appData)
{
    appData->killCommSys = TRUE;
}

static BOOL CommStateIdle(PoketchLinkSearcher *appData)
{
    return appData->commState == COMM_STATE_IDLE;
}
