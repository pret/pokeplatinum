#include "overlay094/screens/pokemon_info.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/gts.h"

#include "applications/pokemon_summary_screen/main.h"
#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/screens/select_pokemon.h"

#include "overlay_manager.h"
#include "unk_0202D778.h"

#include "constdata/const_020F410C.h"

static const u8 sGTSPokemonSummaryPages[] = {
    SUMMARY_PAGE_INFO,
    SUMMARY_PAGE_MEMO,
    SUMMARY_PAGE_SKILLS,
    SUMMARY_PAGE_CONDITION,
    SUMMARY_PAGE_BATTLE_MOVES,
    SUMMARY_PAGE_CONTEST_MOVES,
    SUMMARY_PAGE_RIBBONS,
    SUMMARY_PAGE_EXIT,
    SUMMARY_PAGE_MAX
};

int GTSApplication_PokemonInfo_Init(GTSApplicationState *appState, int unused1)
{
    appState->pokemonSummary.monData = ov94_022411DC(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->unk_112);
    appState->pokemonSummary.dataType = SUMMARY_DATA_BOX_MON;
    appState->pokemonSummary.monMax = 1;
    appState->pokemonSummary.monIndex = 0;
    appState->pokemonSummary.mode = SUMMARY_MODE_LOCK_MOVES;
    appState->pokemonSummary.move = 0;
    appState->pokemonSummary.showContest = PokemonSummaryScreen_ShowContestData(appState->playerData->saveData);
    appState->pokemonSummary.dexMode = appState->playerData->dexMode;
    appState->pokemonSummary.options = appState->playerData->options;
    appState->pokemonSummary.specialRibbons = sub_0202D79C(appState->playerData->saveData);

    PokemonSummaryScreen_FlagVisiblePages(&appState->pokemonSummary, sGTSPokemonSummaryPages);
    PokemonSummaryScreen_SetPlayerProfile(&appState->pokemonSummary, appState->playerData->trainerInfo);

    appState->appMan = ApplicationManager_New(&gPokemonSummaryScreenApp, &appState->pokemonSummary, HEAP_ID_62);
    appState->hasTradedPokemon = TRUE;

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_PokemonInfo_Main(GTSApplicationState *appState, int unused1)
{
    int loopState = GTS_LOOP_STATE_MAIN;

    if (ApplicationManager_Exec(appState->appMan)) {
        ApplicationManager_Free(appState->appMan);
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SELECT_POKEMON, appState->screenArgument);

        loopState = GTS_LOOP_STATE_FINISH;
    }

    return loopState;
}

int GTSApplication_PokemonInfo_Exit(GTSApplicationState *appState, int unused1)
{
    GTSApplication_MoveToNextScreen(appState);
    return GTS_LOOP_STATE_INIT;
}
