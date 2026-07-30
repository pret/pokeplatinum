#include "gts_application/screens/pokemon_summary.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "applications/pokemon_summary_screen/main.h"
#include "gts_application/application.h"
#include "gts_application/gts.h"
#include "gts_application/screens/select_pokemon.h"

#include "overlay_manager.h"
#include "start_menu.h"
#include "unk_0202D778.h"

#include "constdata/const_020F410C.h"

// identical to gAllSummaryScreenPages in start_menu.c
static const u8 sAllSummaryPages[] = {
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

int GTSApplication_PokemonSummary_Init(GTSApplicationState *appState, int unused)
{
    appState->pokemonSummary.monData = GTSApplication_GetSelectedBoxMon(appState->playerData->party, appState->playerData->pcBoxes, appState->selectedBoxId, appState->partySlotIndex);
    appState->pokemonSummary.dataType = SUMMARY_DATA_BOX_MON;
    appState->pokemonSummary.monMax = 1;
    appState->pokemonSummary.monIndex = 0;
    appState->pokemonSummary.mode = SUMMARY_MODE_LOCK_MOVES;
    appState->pokemonSummary.move = 0;
    appState->pokemonSummary.showContest = PokemonSummaryScreen_ShowContestData(appState->playerData->saveData);
    appState->pokemonSummary.dexMode = appState->playerData->dexMode;
    appState->pokemonSummary.options = appState->playerData->options;
    appState->pokemonSummary.specialRibbons = SaveData_GetRibbons(appState->playerData->saveData);

    PokemonSummaryScreen_FlagVisiblePages(&appState->pokemonSummary, sAllSummaryPages);
    PokemonSummaryScreen_SetPlayerProfile(&appState->pokemonSummary, appState->playerData->trainerInfo);

    appState->appMan = ApplicationManager_New(&gPokemonSummaryScreenApp, &appState->pokemonSummary, HEAP_ID_62);
    appState->appManActive = TRUE;

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_PokemonSummary_Main(GTSApplicationState *appState, int unused)
{
    int loopState = GTS_LOOP_STATE_MAIN;

    if (ApplicationManager_Exec(appState->appMan)) {
        ApplicationManager_Free(appState->appMan);
        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_SELECT_POKEMON, appState->screenArgument);

        loopState = GTS_LOOP_STATE_FINISH;
    }

    return loopState;
}

int GTSApplication_PokemonSummary_Exit(GTSApplicationState *appState, int unused)
{
    GTSApplication_MoveToNextScreen(appState);
    return GTS_LOOP_STATE_INIT;
}
