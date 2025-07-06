#include "overlay094/ov94_022444C8.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/gts.h"

#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay095/ov95_02246C20.h"

#include "heap.h"
#include "overlay_manager.h"
#include "party.h"
#include "pc_boxes.h"
#include "pokemon.h"
#include "poketch.h"
#include "trainer_info.h"
#include "unk_0202DA40.h"
#include "unk_0207AE68.h"

FS_EXTERN_OVERLAY(overlay95);

static TrainerInfo *ov94_02244870(GTSPokemonListing *param0);
static Pokemon *GTSApplication_Screen9_GetTradedPokemon(GTSApplicationState *param0, int param1);
static void ov94_022448E8(GTSApplicationState *param0);

static const ApplicationManagerTemplate sTradeSequenceConfig = {
    TradeSequence_Init, // init
    TradeSequence_Main, // main
    TradeSequence_Exit, // exit
    FS_OVERLAY_ID(overlay95)
};

int ov94_022444C8(GTSApplicationState *appState, int param1) // init
{
    appState->unk_1104 = Pokemon_New(HEAP_ID_62);

    switch (appState->screenArgument) {
    case 7:
        appState->tradeAnimationConfig.sendingPokemon = (BoxPokemon *)Pokemon_GetBoxPokemon((Pokemon *)appState->receivedListing.pokemon.bytes);
        appState->tradeAnimationConfig.receivingPokemon = appState->tradeAnimationConfig.sendingPokemon;
        appState->receivingPokemonTrainer = ov94_02244870(&appState->receivedListing);
        appState->tradeAnimationConfig.otherTrainer = appState->receivingPokemonTrainer;
        appState->tradeAnimationConfig.backgroundColour = 3;
        appState->tradeAnimationConfig.tradeType = 2;
        break;
    case 8: // from network handler receiving flow
        appState->tradeAnimationConfig.receivingPokemon = (BoxPokemon *)Pokemon_GetBoxPokemon((Pokemon *)appState->receivedListing.pokemon.bytes);
        appState->tradeAnimationConfig.sendingPokemon = appState->tradeAnimationConfig.receivingPokemon;
        appState->receivingPokemonTrainer = ov94_02244870(&appState->receivedListing);
        appState->tradeAnimationConfig.otherTrainer = appState->receivingPokemonTrainer;
        appState->tradeAnimationConfig.backgroundColour = 3;
        appState->tradeAnimationConfig.tradeType = 4;
        break;
    case 10:
        appState->tradeAnimationConfig.receivingPokemon = Pokemon_GetBoxPokemon((Pokemon *)appState->receivedListing.pokemon.bytes);
        GlobalTrade_CopyStoredPokemon(appState->unk_00->unk_00, appState->unk_1104);
        appState->tradeAnimationConfig.sendingPokemon = Pokemon_GetBoxPokemon(appState->unk_1104);
        appState->receivingPokemonTrainer = ov94_02244870(&appState->receivedListing);
        appState->tradeAnimationConfig.otherTrainer = appState->receivingPokemonTrainer;
        appState->tradeAnimationConfig.backgroundColour = 3;
        appState->tradeAnimationConfig.tradeType = 1;
        break;
    case 9:
        GlobalTrade_CopyStoredPokemon(appState->unk_00->unk_00, appState->unk_1104);
        appState->tradeAnimationConfig.sendingPokemon = Pokemon_GetBoxPokemon(appState->unk_1104);
        appState->tradeAnimationConfig.receivingPokemon = (BoxPokemon *)Pokemon_GetBoxPokemon((Pokemon *)appState->unk_250[appState->unk_11C].pokemon.bytes);
        appState->receivingPokemonTrainer = ov94_02244870(&appState->unk_250[appState->unk_11C]);
        appState->tradeAnimationConfig.otherTrainer = appState->receivingPokemonTrainer;
        appState->tradeAnimationConfig.backgroundColour = 3;
        appState->tradeAnimationConfig.tradeType = 1;
        break;
    }
    appState->tradeAnimationConfig.options = appState->unk_00->options;
    appState->appMan = ApplicationManager_New(&sTradeSequenceConfig, &appState->tradeAnimationConfig, HEAP_ID_62);
    appState->unk_104 = 1;

    return GTS_APPLICATION_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_Screen9_Main(GTSApplicationState *param0, int param1)
{
    int v0 = 3;

    switch (param0->currentScreenInstruction) {
    case 0:
        if (ApplicationManager_Exec(param0->appMan)) {
            ApplicationManager_Free(param0->appMan);

            if (param0->screenArgument == 9) {
                Pokemon *v1 = GTSApplication_Screen9_GetTradedPokemon(param0, param0->screenArgument);
                int v2 = Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL);
                int v3;
                int v4;

                v3 = Pokemon_GetEvolutionTargetSpecies(NULL, v1, EVO_CLASS_BY_TRADE, v2, &v4);

                if (v3 != 0) {
                    param0->unk_100 = sub_0207AE68(NULL, v1, v3, param0->unk_00->options, param0->unk_00->unk_3C, param0->unk_00->unk_10, param0->unk_00->unk_30, param0->unk_00->records, SaveData_GetPoketch(param0->unk_00->saveData), v4, 0x4, HEAP_ID_62);
                    param0->currentScreenInstruction = 1;
                } else {
                    GTSApplication_SetNextScreenWithArgument(param0, 1, 0);
                    v0 = 4;
                }
            } else if ((param0->screenArgument == 8) || (param0->screenArgument == 10)) { // receiving flow
                Pokemon *v1 = GTSApplication_Screen9_GetTradedPokemon(param0, param0->screenArgument);
                Pokemon *v5 = Pokemon_New(HEAP_ID_62);

                GlobalTrade_CopyStoredPokemon(param0->unk_00->unk_00, v5);

                if ((Pokemon_GetValue(v1, MON_DATA_SPECIES, NULL) != Pokemon_GetValue(v5, MON_DATA_SPECIES, NULL)) || (Pokemon_GetValue(v1, MON_DATA_PERSONALITY, NULL) != Pokemon_GetValue(v5, MON_DATA_PERSONALITY, NULL))) {
                    int v6 = Pokemon_GetValue(v1, MON_DATA_HELD_ITEM, NULL);
                    int v7;
                    int v8;

                    v7 = Pokemon_GetEvolutionTargetSpecies(NULL, v1, EVO_CLASS_BY_TRADE, v6, &v8);

                    if (v7 != 0) {
                        param0->unk_100 = sub_0207AE68(NULL, v1, v7, param0->unk_00->options, param0->unk_00->unk_3C, param0->unk_00->unk_10, param0->unk_00->unk_30, param0->unk_00->records, SaveData_GetPoketch(param0->unk_00->saveData), v8, 0x4, HEAP_ID_62);
                        param0->currentScreenInstruction = 1;
                    } else {
                        GTSApplication_SetNextScreenWithArgument(param0, 1, 0);
                        v0 = 4;
                    }
                } else {
                    GTSApplication_SetNextScreenWithArgument(param0, 1, 0);
                    v0 = 4;
                }

                Heap_FreeToHeap(v5);
            } else {
                GTSApplication_SetNextScreenWithArgument(param0, 1, 0);
                v0 = 4;
            }
        }
        break;
    case 1:
        if (sub_0207B0D0(param0->unk_100)) {
            sub_0207B0E0(param0->unk_100);
            ov94_022448E8(param0);
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            GTSApplication_SetNextScreenWithArgument(param0, 7, 12);
            v0 = 4;
        }
        break;
    }

    return v0;
}

int ov94_0224484C(GTSApplicationState *param0, int param1)
{
    Heap_FreeToHeap(param0->unk_1104);
    Heap_FreeToHeap(param0->receivingPokemonTrainer);
    GTSApplication_MoveToNextScreen(param0);

    return 1;
}

static TrainerInfo *ov94_02244870(GTSPokemonListing *param0)
{
    TrainerInfo *v0 = TrainerInfo_New(HEAP_ID_62);

    TrainerInfo_Init(v0);
    TrainerInfo_SetName(v0, param0->unk_10C);
    TrainerInfo_SetGameCode(v0, param0->unk_122);
    TrainerInfo_SetRegionCode(v0, param0->trainerLanguage);

    return v0;
}

static Pokemon *GTSApplication_Screen9_GetTradedPokemon(GTSApplicationState *appState, int screenArgument)
{
    if (screenArgument == 9) {
        return (Pokemon *)appState->unk_250[appState->unk_11C].pokemon.bytes;
    } else if (screenArgument == 10) {
        return (Pokemon *)appState->receivedListing.pokemon.bytes;
    } else if (screenArgument == 8) {
        return (Pokemon *)appState->receivedListing.pokemon.bytes;
    }

    GF_ASSERT(0);
    return NULL;
}

static void ov94_022448E8(GTSApplicationState *param0)
{
    Pokemon *v0 = GTSApplication_Screen9_GetTradedPokemon(param0, param0->screenArgument);

    if (param0->tradedPokemonLocation.boxIndex == 18) {
        Pokemon_Copy(v0, Party_GetPokemonBySlotIndex(param0->unk_00->unk_08, param0->tradedPokemonLocation.index));
    } else {
        int v1 = 0, v2 = 0;

        PCBoxes_InitBoxMonAt(param0->unk_00->pcBoxes, param0->tradedPokemonLocation.boxIndex, param0->tradedPokemonLocation.index);
        PCBoxes_TryGetNextAvailableSpace(param0->unk_00->pcBoxes, &v1, &v2);
        PCBoxes_TryStoreBoxMonInBox(param0->unk_00->pcBoxes, v1, Pokemon_GetBoxPokemon(v0));
    }
}
