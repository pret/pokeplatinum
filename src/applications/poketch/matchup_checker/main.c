#include <nitro.h>
#include <nitro/sinit.h>

#include "constants/pokemon.h"
#include "generated/sdat.h"

#include "applications/poketch/matchup_checker/graphics.h"
#include "applications/poketch/poketch_button.h"
#include "applications/poketch/poketch_system.h"
#include "overlay005/daycare.h"

#include "bg_window.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "touch_screen.h"

#define BUTTON_CHECK_MATCHUP    0
#define BUTTON_CHANGE_LEFT_MON  1
#define BUTTON_CHANGE_RIGHT_MON 2

typedef struct PoketchMatchupChecker {
    u8 state;
    u8 subState;
    u8 shouldExit;
    MatchupCheckerData matchupData;
    MatchupCheckerGraphics *graphics;
    PoketchSystem *poketchSys;
    PoketchButtonManager *buttonManager;
    u16 pressedButton;
    u16 buttonState;
    BoxPokemon *pokemon[MAX_PARTY_SIZE];
    BoxPokemon *boxMonPair[2];
} PoketchMatchupChecker;

typedef BOOL (*StateFunc)(PoketchMatchupChecker *);

enum MatchupCheckerState {
    STATE_LOAD_APP = 0,
    STATE_UPDATE_LOOP,
    STATE_SHUTDOWN,
};

static void NitroStaticInit(void);

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static BOOL Init(PoketchMatchupChecker *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID);
static void Free(PoketchMatchupChecker *appData);
static void Exit(void *appData);
static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData);

static void Task_Main(SysTask *task, void *appData);
static void ChangeState(PoketchMatchupChecker *appData, enum MatchupCheckerState newState);
static BOOL State_LoadApp(PoketchMatchupChecker *appData);
static BOOL State_UpdateApp(PoketchMatchupChecker *appData);
static BOOL State_UnloadApp(PoketchMatchupChecker *appData);

static BOOL UpdateLeftMon(PoketchMatchupChecker *appData);
static BOOL UpdateRightMon(PoketchMatchupChecker *appData);

static void NitroStaticInit(void)
{
    PoketchSystem_SetAppFunctions(New, Exit);
}

static BOOL New(void **appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    PoketchMatchupChecker *matchupChecker = Heap_Alloc(HEAP_ID_POKETCH_APP, sizeof(PoketchMatchupChecker));

    if (matchupChecker != NULL) {
        if (Init(matchupChecker, poketchSys, bgConfig, appID)) {
            if (SysTask_Start(Task_Main, matchupChecker, 1) != NULL) {
                *appData = matchupChecker;
                return TRUE;
            }
        }

        Heap_Free(matchupChecker);
    }

    return FALSE;
}

static BOOL Init(PoketchMatchupChecker *appData, PoketchSystem *poketchSys, BgConfig *bgConfig, u32 appID)
{
    Party *party = SaveData_GetParty(PoketchSystem_GetSaveData(poketchSys));
    int nonEggMon = 0;

    appData->matchupData.partySize = Party_GetCurrentCount(party);

    for (int i = 0; i < appData->matchupData.partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_IS_EGG, NULL)) {
            continue;
        }

        appData->matchupData.spriteIndices[nonEggMon] = BoxPokemon_IconSpriteIndex((const BoxPokemon *)mon);
        appData->matchupData.species[nonEggMon] = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
        appData->matchupData.forms[nonEggMon] = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);
        appData->pokemon[nonEggMon] = (BoxPokemon *)mon;
        nonEggMon++;
    }

    appData->matchupData.partySize = nonEggMon;
    appData->matchupData.leftMonIdx = 0;
    appData->matchupData.rightMonIdx = appData->matchupData.partySize > 1 ? 1 : 0;

    if (PoketchMatchupCheckerGraphics_New(&appData->graphics, &appData->matchupData, bgConfig)) {
        static const TouchScreenRect sHitboxes[] = {
            [BUTTON_CHECK_MATCHUP] = { .rect = { .top = 128, .bottom = 168, .left = 92, .right = 132 } },
            [BUTTON_CHANGE_LEFT_MON] = { .rect = { .top = 130, .bottom = 164, .left = 24, .right = 72 } },
            [BUTTON_CHANGE_RIGHT_MON] = { .rect = { .top = 130, .bottom = 164, .left = 152, .right = 200 } }
        };

        appData->state = STATE_LOAD_APP;
        appData->subState = 0;
        appData->shouldExit = FALSE;
        appData->buttonManager = PoketchButtonManager_New(sHitboxes, NELEMS(sHitboxes), ButtonCallback, appData, HEAP_ID_POKETCH_APP);
        appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        appData->poketchSys = poketchSys;

        return TRUE;
    }

    return FALSE;
}

static void Free(PoketchMatchupChecker *appData)
{
    PoketchButtonManager_Free(appData->buttonManager);
    PoketchMatchupCheckerGraphics_Free(appData->graphics);
    Heap_Free(appData);
}

static void ButtonCallback(u32 buttonID, u32 buttonState, u32 touchState, void *appData)
{
    PoketchMatchupChecker *matchupChecker = appData;

    matchupChecker->pressedButton = buttonID;
    matchupChecker->buttonState = buttonState;
}

static void Task_Main(SysTask *task, void *appData)
{
    static const StateFunc stateFuncs[] = {
        State_LoadApp,
        State_UpdateApp,
        State_UnloadApp,
    };

    PoketchMatchupChecker *matchupChecker = appData;

    if (matchupChecker->state < NELEMS(stateFuncs)) {
        PoketechSystem_UpdateButtonManager(matchupChecker->poketchSys, matchupChecker->buttonManager);

        if (stateFuncs[matchupChecker->state](matchupChecker)) {
            Free(matchupChecker);
            SysTask_Done(task);
            PoketchSystem_NotifyAppUnloaded(matchupChecker->poketchSys);
        }
    }
}

static void Exit(void *appData)
{
    ((PoketchMatchupChecker *)appData)->shouldExit = TRUE;
}

static void ChangeState(PoketchMatchupChecker *appData, enum MatchupCheckerState newState)
{
    if (appData->shouldExit == FALSE) {
        appData->state = newState;
    } else {
        appData->state = STATE_SHUTDOWN;
    }

    appData->subState = 0;
}

static BOOL State_LoadApp(PoketchMatchupChecker *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchMatchupCheckerGraphics_StartTask(appData->graphics, MATCHUP_CHECKER_GRAPHICS_INIT);
        appData->subState++;
        break;
    case 1:
        if (PoketchMatchupCheckerGraphics_TaskIsNotActive(appData->graphics, MATCHUP_CHECKER_GRAPHICS_INIT)) {
            PoketchSystem_NotifyAppLoaded(appData->poketchSys);
            ChangeState(appData, STATE_UPDATE_LOOP);
        }
        break;
    }

    return FALSE;
}

static BOOL State_UpdateApp(PoketchMatchupChecker *appData)
{
    if (appData->shouldExit) {
        ChangeState(appData, STATE_SHUTDOWN);
        return FALSE;
    }

    switch (appData->subState) {
    case 0:
        if (appData->buttonState == BUTTON_MANAGER_STATE_TOUCH) {
            switch (appData->pressedButton) {
            case BUTTON_CHANGE_LEFT_MON:
                if (UpdateLeftMon(appData)) {
                    PoketchMatchupCheckerGraphics_StartTask(appData->graphics, MATCHUP_CHECKER_GRAPHICS_UPDATE_LEFT);
                    appData->subState = 1;
                }
                break;
            case BUTTON_CHANGE_RIGHT_MON:
                if (UpdateRightMon(appData)) {
                    PoketchMatchupCheckerGraphics_StartTask(appData->graphics, MATCHUP_CHECKER_GRAPHICS_UPDATE_RIGHT);
                    appData->subState = 1;
                }
                break;
            case BUTTON_CHECK_MATCHUP:
                if (appData->matchupData.partySize > 1) {
                    PoketchMatchupCheckerGraphics_StartTask(appData->graphics, MATCHUP_CHECKER_GRAPHICS_PRESS_BUTTON);
                    appData->subState = 2;
                } else {
                    PoketchSystem_PlaySoundEffect(SEQ_SE_DP_BEEP);
                }
                break;
            }

            appData->buttonState = BUTTON_MANAGER_STATE_NULL;
        }
        break;
    case 1:
        if (PoketchMatchupCheckerGraphics_NoActiveTasks(appData->graphics)) {
            appData->subState = 0;
        }
        break;
    case 2:
        if (appData->buttonState == BUTTON_MANAGER_STATE_DRAGGING) {
            PoketchMatchupCheckerGraphics_StartTask(appData->graphics, MATCHUP_CHECKER_GRAPHICS_RELEASE_BUTTON);
            appData->subState = 0;
            break;
        }

        if (appData->buttonState == BUTTON_MANAGER_STATE_TAP) {
            appData->boxMonPair[0] = appData->pokemon[appData->matchupData.leftMonIdx];
            appData->boxMonPair[1] = appData->pokemon[appData->matchupData.rightMonIdx];
            appData->matchupData.compatibility = BoxMon_GetPairDaycareCompatibilityLevel(appData->boxMonPair);
            PoketchMatchupCheckerGraphics_StartTask(appData->graphics, MATCHUP_CHECKER_GRAPHICS_RELEASE_BUTTON);
            PoketchMatchupCheckerGraphics_StartTask(appData->graphics, MATCHUP_CHECKER_GRAPHICS_CHECK_MATCHUP);
            appData->subState++;
        }
        break;
    case 3:
        if (PoketchMatchupCheckerGraphics_TaskIsNotActive(appData->graphics, MATCHUP_CHECKER_GRAPHICS_CHECK_MATCHUP)) {
            appData->subState = 0;
        }
    }

    return FALSE;
}

static BOOL UpdateLeftMon(PoketchMatchupChecker *appData)
{
    if (appData->matchupData.partySize > 2) {
        do {
            if (++appData->matchupData.leftMonIdx >= appData->matchupData.partySize) {
                appData->matchupData.leftMonIdx = 0;
            }
        } while (appData->matchupData.leftMonIdx == appData->matchupData.rightMonIdx);

        return TRUE;
    }

    return FALSE;
}

static BOOL UpdateRightMon(PoketchMatchupChecker *appData)
{
    if (appData->matchupData.partySize > 2) {
        do {
            if (++appData->matchupData.rightMonIdx >= appData->matchupData.partySize) {
                appData->matchupData.rightMonIdx = 0;
            }
        } while (appData->matchupData.rightMonIdx == appData->matchupData.leftMonIdx);

        return TRUE;
    }

    return FALSE;
}

static BOOL State_UnloadApp(PoketchMatchupChecker *appData)
{
    switch (appData->subState) {
    case 0:
        PoketchMatchupCheckerGraphics_StartTask(appData->graphics, MATCHUP_CHECKER_GRAPHICS_FREE);
        appData->subState++;
        break;
    case 1:
        if (PoketchMatchupCheckerGraphics_NoActiveTasks(appData->graphics)) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}
