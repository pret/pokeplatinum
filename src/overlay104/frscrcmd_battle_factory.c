#include "overlay104/frscrcmd_battle_factory.h"

#include <nitro.h>

#include "constants/battle_factory_functions.h"
#include "constants/battle_frontier.h"
#include "constants/heap.h"

#include "applications/frontier/battle_factory/main.h"
#include "global/utility.h"
#include "overlay104/battle_factory.h"
#include "overlay104/battle_factory_helpers.h"
#include "overlay104/frontier_opponents.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frontier_script_manager.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "battle_factory_save.h"
#include "battle_frontier.h"
#include "bg_window.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(battle_factory_app);

#include <nitro/code16.h>

static BOOL WaitForCommResponse(FrontierScriptContext *ctx);
static void UpdateCorridorFloorBG(SysTask *task, void *data);
static void StoreBattleFactoryAppResult(void *data);

BOOL FrontierScrCmd_InitBattleFactory(FrontierScriptContext *ctx)
{
    u16 resumingFromSave = FrontierScriptContext_GetVar(ctx);
    u16 challengeType = FrontierScriptContext_GetVar(ctx);
    u16 isOpenLevel = FrontierScriptContext_GetVar(ctx);

    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleFactory *factory = BattleFactory_Init(fieldData->saveData, resumingFromSave, challengeType, isOpenLevel);

    BattleFrontier_SetFacilityStruct(ctx->scriptMan->frontier, factory);

    return FALSE;
}

BOOL FrontierScrCmd_BattleFactory_LoadTrainersForRound(FrontierScriptContext *ctx)
{
    u16 resumingFromSave = FrontierScriptContext_GetVar(ctx);

    BattleFactory *factory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleFactory_LoadTrainersAndRentalsForRound(factory, resumingFromSave);

    return FALSE;
}

BOOL FrontierScrCmd_FreeBattleFactory(FrontierScriptContext *ctx)
{
    BattleFactory *factory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleFactory_Free(factory);

    return FALSE;
}

BOOL FrontierScrCmd_OpenBattleFactoryAppInitial(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    FS_EXTERN_OVERLAY(battle_factory_app);

    static const ApplicationManagerTemplate sBattleFactoryAppTemplate = {
        BattleFactoryApp_Init,
        BattleFactoryApp_Main,
        BattleFactoryApp_Exit,
        FS_OVERLAY_ID(battle_factory_app)
    };

    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleFactoryAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleFactoryAppArgs));

    MI_CpuClear8(args, sizeof(BattleFactoryAppArgs));

    args->saveData = fieldData->saveData;
    args->challengeType = battleFactory->challengeType;
    args->isOpenLevel = battleFactory->isOpenLevel;
    args->isExchangeMode = FALSE;
    args->personalParty = battleFactory->playersParty;
    args->receivableParty = battleFactory->opponentsParty;
    args->battleFactory = battleFactory;

    sub_0209B988(ctx->scriptMan->frontier, &sBattleFactoryAppTemplate, args, 0, StoreBattleFactoryAppResult);
    return TRUE;
}

BOOL FrontierScrCmd_BattleFactory_CleanupBattle(FrontierScriptContext *ctx)
{
    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FieldBattleDTO *dto = battleFactory->dto;

    battleFactory->wonBattle = CheckPlayerWonBattle(dto->resultMask);

    FieldBattleDTO_Free(dto);
    return FALSE;
}

BOOL FrontierScrCmd_BattleFactory_StartBattle(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    FieldBattleDTO *dto = BattleFactory_SetupBattle(battleFactory, fieldData);
    battleFactory->dto = dto;

    sub_0209B988(ctx->scriptMan->frontier, &gBattleApplicationTemplate, dto, 0, NULL);

    return TRUE;
}

BOOL FrontierScrCmd_OpenBattleFactoryAppForTrade(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    FS_EXTERN_OVERLAY(battle_factory_app);

    static const ApplicationManagerTemplate sBattleFactoryAppTradeTemplate = {
        BattleFactoryApp_Init,
        BattleFactoryApp_Main,
        BattleFactoryApp_Exit,
        FS_OVERLAY_ID(battle_factory_app)
    };

    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    for (int i = 0; i < 6; i++) {
        battleFactory->selectedAppSlots[i] = 0;
    }

    BattleFactoryAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleFactoryAppArgs));
    MI_CpuClear8(args, sizeof(BattleFactoryAppArgs));

    args->saveData = fieldData->saveData;
    args->challengeType = battleFactory->challengeType;
    args->isOpenLevel = battleFactory->isOpenLevel;
    args->isExchangeMode = TRUE;
    args->personalParty = battleFactory->playersParty;
    args->receivableParty = battleFactory->opponentsParty;
    args->battleFactory = battleFactory;

    sub_0209B988(ctx->scriptMan->frontier, &sBattleFactoryAppTradeTemplate, args, 0, StoreBattleFactoryAppResult);
    return TRUE;
}

static void StoreBattleFactoryAppResult(void *data)
{
    BattleFactoryAppArgs *args = data;
    BattleFactory_GetMonSelectionAppResult(args->battleFactory, data);
    Heap_Free(data);
}

BOOL FrontierScrCmd_AddSelectedRentalsToParty(FrontierScriptContext *ctx)
{
    BattleFactory *factory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleFactory_AddSelectedRentalsToParty(factory);

    return FALSE;
}

BOOL FrontierScrCmd_BattleFactory_SetupNextOpponent(FrontierScriptContext *ctx)
{
    BattleFactory *factory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleFactory_SetupNextOpponent(factory);

    return FALSE;
}

BOOL FrontierScrCmd_BattleFactory_ApplyTrade(FrontierScriptContext *ctx)
{
    BattleFactory *factory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleFactory_ApplyTrade(factory);

    return FALSE;
}

BOOL FrontierScrCmd_BattleFactory_SetupNextOpponentsParty(FrontierScriptContext *ctx)
{
    BattleFactory *factory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleFactory_SetupNextOpponentsParty(factory);

    return FALSE;
}

BOOL FrontierScrCmd_CallBattleFactoryFunction(FrontierScriptContext *ctx)
{
    int i;
    u8 command = FrontierScriptContext_ReadByte(ctx);
    u8 arg1 = FrontierScriptContext_ReadByte(ctx);
    u8 arg2 = FrontierScriptContext_ReadByte(ctx);
    u16 *returnVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FrontierGraphics *graphics = FrontierScriptManager_GetGraphics(ctx->scriptMan);

    switch (command) {
    case BF_FUNC_UNK_0:
        battleFactory->unused2 = arg1;
        break;
    case BF_FUNC_SET_IS_OPEN_LEVEL:
        battleFactory->isOpenLevel = arg1;
        break;
    case BF_FUNC_SET_CHALLENGE_TYPE:
        battleFactory->challengeType = arg1;
        break;
    case BF_FUNC_GET_SELECTED_APP_SLOT:
        *returnVar = battleFactory->selectedAppSlots[arg1];
        break;
    case BF_FUNC_GET_CURRENT_STREAK:
        *returnVar = battleFactory->currentStreak;
        break;
    case BF_FUNC_INCREMENT_CURRENT_STREAK:
        if (battleFactory->currentStreak < 9999) {
            battleFactory->currentStreak++;
        }
        break;
    case BF_FUNC_RESET_SYSTEM:
        OS_ResetSystem(0);
        break;
    case BF_FUNC_HAS_SAVED:
        *returnVar = BattleFactorySave_HasSaved(battleFactory->factorySave);
        break;
    case BF_FUNC_QUICKSAVE:
        BattleFactory_Save(battleFactory, 2);
        break;
    case BF_FUNC_INCREMENT_CURRENT_BATTLE:
        *returnVar = BattleFactory_IncrementCurrentBattle(battleFactory);
        break;
    case BF_FUNC_GET_MONS_SPECIES:
        *returnVar = battleFactory->opponentMons[arg1].species;
        break;
    case BF_FUNC_GET_MONS_MOVE:
        *returnVar = battleFactory->opponentMons[arg1].moves[arg2];
        break;
    case BF_FUNC_GET_MONS_TYPE: {
        Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);
        FrontierPokemon_InitPokemon(&battleFactory->opponentMons[arg1], mon, BattleFactory_GetPokemonLevel(battleFactory));
        *returnVar = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
        Heap_Free(mon);
    } break;
    case BF_FUNC_GET_COMMON_TYPE: {
        int typeCounts[NUM_POKEMON_TYPES];
        u8 partySize = BattleFactory_GetOpponentPartySize(battleFactory->challengeType, TRUE);

        for (i = 0; i < NUM_POKEMON_TYPES; i++) {
            typeCounts[i] = 0;
        }

        Pokemon *mon = Pokemon_New(HEAP_ID_FIELD2);

        for (i = 0; i < partySize; i++) {
            FrontierPokemon_InitPokemon(&battleFactory->opponentMons[i], mon, BattleFactory_GetPokemonLevel(battleFactory));

            u32 type1 = Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL);
            u32 type2 = Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL);

            if (type1 == type2) {
                type2 = 0xff;
            }

            typeCounts[type1]++;

            if (type2 != 0xff) {
                typeCounts[type2]++;
            }
        }

        Heap_Free(mon);

        u32 commonType = 0;

        for (i = 0; i < NUM_POKEMON_TYPES; i++) {
            if (typeCounts[commonType] < typeCounts[i]) {
                commonType = i;
            }
        }

        if (typeCounts[commonType] <= 1) {
            *returnVar = 0xff;
        } else {
            *returnVar = commonType;
        }
    } break;
    case BF_FUNC_GET_CURRENT_ROUND:
        *returnVar = BattleFactory_GetCurrentRound(battleFactory);
        break;
    case BF_FUNC_GET_OPPONENT_OBJECT_ID:
        *returnVar = BattleFactory_GetNextOpponentObjectID(battleFactory, arg1);
        break;
    case BF_FUNC_SAVE_ON_LOSS:
        BattleFactory_SaveOnLoss(battleFactory);
        break;
    case BF_FUNC_SAVE_ON_COMPLETING_ROUND:
        BattleFactory_SaveOnCompletingRound(battleFactory);
        break;
    case BF_FUNC_GET_CURRENT_BATTLE:
        *returnVar = BattleFactory_GetCurrentBattle(battleFactory);
        break;
    case BF_FUNC_UNK_24:
        *returnVar = battleFactory->unk_57C;
        break;
    case BF_FUNC_UNK_26:
        *returnVar = battleFactory->unk_57D;
        break;
    case BF_FUNC_INIT_COMM_MANAGER:
        sub_0209BA80(battleFactory);
        break;
    case BF_FUNC_IS_MULTIPLAYER_CHALLENGE:
        *returnVar = BattleFactory_IsMultiplayerChallenge(battleFactory->challengeType);
        break;
    case BF_FUNC_GET_CHALLENGE_TYPE:
        *returnVar = battleFactory->challengeType;
        break;
    case BF_FUNC_UPDATE_BACKGROUND:
        Bg_ChangeTilemapRectPalette(graphics->bgConfig, BG_LAYER_MAIN_3, 3, 10, 26, 11, arg1);
        Bg_ScheduleTilemapTransfer(graphics->bgConfig, BG_LAYER_MAIN_3);
        break;
    case BF_FUNC_START_CORRIDOR_ANIMATION:
        battleFactory->corridorAnimation = SysTask_Start(UpdateCorridorFloorBG, FrontierScriptManager_GetGraphics(ctx->scriptMan), 5);
        break;
    case BF_FUNC_STOP_CORRIDOR_ANIMATION:
        if (battleFactory->corridorAnimation != NULL) {
            SysTask_Done(battleFactory->corridorAnimation);
            battleFactory->corridorAnimation = NULL;
        }
        break;
    case BF_FUNC_LOAD_TRAINERS:
        BattleFrontier_LoadTrainer(&battleFactory->opponents[0], battleFactory->trainerIDs[battleFactory->currentBattle], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        BattleFrontier_LoadTrainer(&battleFactory->opponents[1], battleFactory->trainerIDs[battleFactory->currentBattle + FACTORY_BATTLES_PER_ROUND], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        break;
    case BF_FUNC_SET_RENTED_MONS_IN_STRING: {
        u8 partySize = BattleFactory_GetPlayerPartySize(battleFactory->challengeType);

        for (i = 0; i < partySize; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(battleFactory->playersParty, i);
            StringTemplate_SetSpeciesName(ctx->scriptMan->strTemplate, i, Pokemon_GetBoxPokemon(mon));
        }
    } break;
    case BF_FUNC_GET_EARNED_BP:
        *returnVar = BattleFactory_GetEarnedBP(battleFactory);
        break;
    case BF_FUNC_INCREMENT_TRADE_COUNT:
        BattleFactory_IncrementTradeCount(battleFactory);
        break;
    case BF_FUNC_GET_NEXT_BATTLE_TYPE:
        *returnVar = FRONTIER_NEXT_BATTLE_NORMAL;

        if (battleFactory->challengeType == FRONTIER_CHALLENGE_SINGLE) {
            if (battleFactory->currentStreak + 1 == FACTORY_STREAK_SILVER_BATTLE) {
                *returnVar = FRONTIER_NEXT_BATTLE_SILVER;
            } else if (battleFactory->currentStreak + 1 == FACTORY_STREAK_GOLD_BATTLE) {
                *returnVar = FRONTIER_NEXT_BATTLE_GOLD;
            }
        }
        break;
    case BF_FUNC_UPDATE_PARTNERS_PARTY:
        BattleFactory_UpdatePartnersParty(battleFactory);
        break;
    case BF_FUNC_CREATE_OPPONENT_MONS:
        BattleFrontier_LoadFrontierPokemon(battleFactory->opponentMons, battleFactory->opponentMonSetIDs, battleFactory->opponentMonIVs, battleFactory->opponentMonPersonalities, NULL, FACTORY_MAX_PARTY_SIZE, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
        break;
    case BF_FUNC_CREATE_INITAL_PARTY:
        BattleFactory_CreateInitialRentalParty(battleFactory);
        break;
    case BF_FUNC_CHECK_SEEN_HEAD_INTRO:
        *returnVar = battleFactory->seenFactoryHeadIntro;
        battleFactory->seenFactoryHeadIntro = TRUE;
        break;
    }

    return FALSE;
}

void UpdateCorridorFloorBG(SysTask *task, void *data)
{
    FrontierGraphics *graphics = data;

    int offset = Bg_GetYOffset(graphics->bgConfig, BG_LAYER_MAIN_2);

    if (offset >= 255) {
        Bg_ScheduleScroll(graphics->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, 0);
    } else {
        Bg_ScheduleScroll(graphics->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_ADD_Y, 1);
    }
}

BOOL FrontierScrCmd_BattleFactory_CheckWonBattle(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleFactory *battleFactory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *destVar = battleFactory->wonBattle;

    return FALSE;
}

BOOL FrontierScrCmd_BattleFactory_SendCommMessage(FrontierScriptContext *ctx)
{
    u16 command = FrontierScriptContext_GetVar(ctx);
    u16 arg = FrontierScriptContext_GetVar(ctx);
    u16 *success = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleFactory *factory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *success = BattleFactory_SendCommMessage(factory, command, arg);

    return TRUE;
}

BOOL FrontierScrCmd_BattleFactory_WaitForCommResponses(FrontierScriptContext *ctx)
{
    ctx->data[0] = FrontierScriptContext_ReadHalfWord(ctx);
    FrontierScriptContext_Pause(ctx, WaitForCommResponse);

    return TRUE;
}

static BOOL WaitForCommResponse(FrontierScriptContext *ctx)
{
    UNUSED(FrontierScriptContext_TryGetVar(ctx, ctx->data[0]));

    BattleFactory *factory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (factory->msgsReceived >= 2) {
        factory->msgsReceived = 0;
        return TRUE;
    }

    return FALSE;
}

BOOL FrontierScrCmd_BattleFactory_PrintTrainerIntro(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    u16 index = FrontierScriptContext_ReadByte(ctx);

    BattleFactory *factory = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (factory == NULL) {
        return FALSE;
    }

    u16 *introMsg = factory->opponents[index].trainer.introMsg;

    BattleFrontier_PrintNormalTrainerMessage(ctx, introMsg);
    return TRUE;
}
