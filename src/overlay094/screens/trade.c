#include "overlay094/screens/trade.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay095/ov95_02246C20.h"

#include "evolution.h"
#include "global_trade.h"
#include "heap.h"
#include "overlay_manager.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "poketch.h"
#include "trainer_info.h"

FS_EXTERN_OVERLAY(overlay95);

static TrainerInfo *GTSPokemonListing_GetTrainerInfo(GTSPokemonListing *listing);
static Pokemon *GTSApplication_Trade_GetTradedPokemon(GTSApplicationState *appState, enum ScreenArgument screenArgument);
static void GTSApplication_Trade_StoreTradedPokemon(GTSApplicationState *appState);

static const ApplicationManagerTemplate sTradeSequenceConfig = {
    TradeSequence_Init,
    TradeSequence_Main,
    TradeSequence_Exit,
    FS_OVERLAY_ID(overlay95)
};

int GTSApplication_Trade_Init(GTSApplicationState *appState, int unused1)
{
    appState->tradeTempPokemon = Pokemon_New(HEAP_ID_62);

    switch (appState->screenArgument) {
    case SCREEN_ARGUMENT_DEPOSIT_POKEMON:
        appState->tradeAnimationConfig.sendingPokemon = (BoxPokemon *)Pokemon_GetBoxPokemon((Pokemon *)appState->receivedListing.pokemon.bytes);
        appState->tradeAnimationConfig.receivingPokemon = appState->tradeAnimationConfig.sendingPokemon;
        appState->receivingPokemonTrainer = GTSPokemonListing_GetTrainerInfo(&appState->receivedListing);
        appState->tradeAnimationConfig.otherTrainer = appState->receivingPokemonTrainer;
        appState->tradeAnimationConfig.background = TRADE_BACKGROUND_WIFI;
        appState->tradeAnimationConfig.tradeType = TRADE_TYPE_SEND_ONLY;
        break;
    case SCREEN_ARGUMENT_TAKE_BACK_POKEMON:
        appState->tradeAnimationConfig.receivingPokemon = (BoxPokemon *)Pokemon_GetBoxPokemon((Pokemon *)appState->receivedListing.pokemon.bytes);
        appState->tradeAnimationConfig.sendingPokemon = appState->tradeAnimationConfig.receivingPokemon;
        appState->receivingPokemonTrainer = GTSPokemonListing_GetTrainerInfo(&appState->receivedListing);
        appState->tradeAnimationConfig.otherTrainer = appState->receivingPokemonTrainer;
        appState->tradeAnimationConfig.background = TRADE_BACKGROUND_WIFI;
        appState->tradeAnimationConfig.tradeType = TRADE_TYPE_RECEIVE_ONLY;
        break;
    case SCREEN_ARGUMENT_10:
        appState->tradeAnimationConfig.receivingPokemon = Pokemon_GetBoxPokemon((Pokemon *)appState->receivedListing.pokemon.bytes);
        GlobalTrade_CopyStoredPokemon(appState->playerData->globalTrade, appState->tradeTempPokemon);
        appState->tradeAnimationConfig.sendingPokemon = Pokemon_GetBoxPokemon(appState->tradeTempPokemon);
        appState->receivingPokemonTrainer = GTSPokemonListing_GetTrainerInfo(&appState->receivedListing);
        appState->tradeAnimationConfig.otherTrainer = appState->receivingPokemonTrainer;
        appState->tradeAnimationConfig.background = TRADE_BACKGROUND_WIFI;
        appState->tradeAnimationConfig.tradeType = TRADE_TYPE_NORMAL;
        break;
    case SCREEN_ARGUMENT_9: // from the search flow
        GlobalTrade_CopyStoredPokemon(appState->playerData->globalTrade, appState->tradeTempPokemon);
        appState->tradeAnimationConfig.sendingPokemon = Pokemon_GetBoxPokemon(appState->tradeTempPokemon);
        appState->tradeAnimationConfig.receivingPokemon = Pokemon_GetBoxPokemon((Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes);
        appState->receivingPokemonTrainer = GTSPokemonListing_GetTrainerInfo(&appState->searchResults[appState->selectedSearchResult]);
        appState->tradeAnimationConfig.otherTrainer = appState->receivingPokemonTrainer;
        appState->tradeAnimationConfig.background = TRADE_BACKGROUND_WIFI;
        appState->tradeAnimationConfig.tradeType = TRADE_TYPE_NORMAL;
        break;
    }

    appState->tradeAnimationConfig.options = appState->playerData->options;
    appState->appMan = ApplicationManager_New(&sTradeSequenceConfig, &appState->tradeAnimationConfig, HEAP_ID_62);
    appState->hasTradedPokemon = TRUE;

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_Trade_Main(GTSApplicationState *appState, int unused1)
{
    int loopState = GTS_LOOP_STATE_MAIN;

    switch (appState->currentScreenInstruction) {
    case 0:
        if (ApplicationManager_Exec(appState->appMan)) {
            ApplicationManager_Free(appState->appMan);

            if (appState->screenArgument == SCREEN_ARGUMENT_9) { // search flow
                Pokemon *receivingPokemon = GTSApplication_Trade_GetTradedPokemon(appState, appState->screenArgument);
                int heldItem = Pokemon_GetValue(receivingPokemon, MON_DATA_HELD_ITEM, NULL);
                int evolutionType;

                int evolvedSpecies = Pokemon_GetEvolutionTargetSpecies(NULL, receivingPokemon, EVO_CLASS_BY_TRADE, heldItem, &evolutionType);

                if (evolvedSpecies != SPECIES_NONE) {
                    appState->evolutionData = Evolution_Begin(NULL, receivingPokemon, evolvedSpecies, appState->playerData->options, appState->playerData->showContestData, appState->playerData->pokedex, appState->playerData->bag, appState->playerData->records, SaveData_GetPoketch(appState->playerData->saveData), evolutionType, 0x4, HEAP_ID_62);
                    appState->currentScreenInstruction = 1;
                } else {
                    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
                    loopState = GTS_LOOP_STATE_FINISH;
                }
            } else if ((appState->screenArgument == SCREEN_ARGUMENT_TAKE_BACK_POKEMON) || (appState->screenArgument == SCREEN_ARGUMENT_10)) { // receiving flow
                Pokemon *tradedPokemon = GTSApplication_Trade_GetTradedPokemon(appState, appState->screenArgument);
                Pokemon *storedPokemon = Pokemon_New(HEAP_ID_62);

                GlobalTrade_CopyStoredPokemon(appState->playerData->globalTrade, storedPokemon);

                if ((Pokemon_GetValue(tradedPokemon, MON_DATA_SPECIES, NULL) != Pokemon_GetValue(storedPokemon, MON_DATA_SPECIES, NULL)) || (Pokemon_GetValue(tradedPokemon, MON_DATA_PERSONALITY, NULL) != Pokemon_GetValue(storedPokemon, MON_DATA_PERSONALITY, NULL))) {
                    int heldItem = Pokemon_GetValue(tradedPokemon, MON_DATA_HELD_ITEM, NULL);
                    int evolutionType;

                    int evolvedSpecies = Pokemon_GetEvolutionTargetSpecies(NULL, tradedPokemon, EVO_CLASS_BY_TRADE, heldItem, &evolutionType);

                    if (evolvedSpecies != SPECIES_NONE) {
                        appState->evolutionData = Evolution_Begin(NULL, tradedPokemon, evolvedSpecies, appState->playerData->options, appState->playerData->showContestData, appState->playerData->pokedex, appState->playerData->bag, appState->playerData->records, SaveData_GetPoketch(appState->playerData->saveData), evolutionType, 0x4, HEAP_ID_62);
                        appState->currentScreenInstruction = 1;
                    } else {
                        GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
                        loopState = GTS_LOOP_STATE_FINISH;
                    }
                } else {
                    // receiving our stored pokemon back
                    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
                    loopState = GTS_LOOP_STATE_FINISH;
                }

                Heap_Free(storedPokemon);
            } else {
                GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
                loopState = GTS_LOOP_STATE_FINISH;
            }
        }
        break;
    case 1:
        if (Evolution_IsDone(appState->evolutionData)) {
            Evolution_Free(appState->evolutionData);
            GTSApplication_Trade_StoreTradedPokemon(appState);
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_SAVE_AFTER_EVOLVE);
            loopState = GTS_LOOP_STATE_FINISH;
        }
        break;
    }

    return loopState;
}

int GTSApplication_Trade_Exit(GTSApplicationState *appState, int unused1)
{
    Heap_Free(appState->tradeTempPokemon);
    Heap_Free(appState->receivingPokemonTrainer);
    GTSApplication_MoveToNextScreen(appState);

    return GTS_LOOP_STATE_INIT;
}

static TrainerInfo *GTSPokemonListing_GetTrainerInfo(GTSPokemonListing *listing)
{
    TrainerInfo *trainerInfo = TrainerInfo_New(HEAP_ID_62);

    TrainerInfo_Init(trainerInfo);
    TrainerInfo_SetName(trainerInfo, listing->unk_10C);
    TrainerInfo_SetGameCode(trainerInfo, listing->unk_122);
    TrainerInfo_SetLanguage(trainerInfo, listing->trainerLanguage);

    return trainerInfo;
}

static Pokemon *GTSApplication_Trade_GetTradedPokemon(GTSApplicationState *appState, enum ScreenArgument screenArgument)
{
    if (screenArgument == SCREEN_ARGUMENT_9) {
        return (Pokemon *)appState->searchResults[appState->selectedSearchResult].pokemon.bytes;
    } else if (screenArgument == SCREEN_ARGUMENT_10) {
        return (Pokemon *)appState->receivedListing.pokemon.bytes;
    } else if (screenArgument == SCREEN_ARGUMENT_TAKE_BACK_POKEMON) {
        return (Pokemon *)appState->receivedListing.pokemon.bytes;
    }

    GF_ASSERT(FALSE);
    return NULL;
}

static void GTSApplication_Trade_StoreTradedPokemon(GTSApplicationState *appState)
{
    Pokemon *tradedPokemon = GTSApplication_Trade_GetTradedPokemon(appState, appState->screenArgument);

    if (appState->tradedPokemonLocation.boxIndex == MAX_PC_BOXES) {
        Pokemon_Copy(tradedPokemon, Party_GetPokemonBySlotIndex(appState->playerData->party, appState->tradedPokemonLocation.index));
    } else {
        int boxIdx = 0, boxSpaceIdx = 0;

        PCBoxes_InitBoxMonAt(appState->playerData->pcBoxes, appState->tradedPokemonLocation.boxIndex, appState->tradedPokemonLocation.index);
        PCBoxes_TryGetNextAvailableSpace(appState->playerData->pcBoxes, &boxIdx, &boxSpaceIdx);
        PCBoxes_TryStoreBoxMonInBox(appState->playerData->pcBoxes, boxIdx, Pokemon_GetBoxPokemon(tradedPokemon));
    }
}
