#include "overlay104/frscrcmd_battle_hall.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "constants/battle_hall_functions.h"

#include "struct_decls/tv_broadcast.h"

#include "applications/frontier/battle_hall/main.h"
#include "global/utility.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_02234DB4.h"
#include "overlay104/ov104_0223AF58.h"
#include "overlay104/struct_battle_hall.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "savedata/save_table.h"

#include "battle_frontier.h"
#include "battle_hall_save.h"
#include "field_battle_data_transfer.h"
#include "gx_layers.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "sound.h"
#include "tv_segment.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(battle_hall_app);

#include <nitro/code16.h>

static BOOL ov104_02234CEC(FrontierScriptContext *param0);
static void StoreBattleHallAppResult(void *data);

BOOL FrontierScrCmd_InitBattleHall(FrontierScriptContext *ctx)
{
    u16 resumingFromSave = FrontierScriptContext_GetVar(ctx);
    u16 challengeType = FrontierScriptContext_GetVar(ctx);
    u16 partySlot1 = FrontierScriptContext_GetVar(ctx);
    u16 partySlot2 = FrontierScriptContext_GetVar(ctx);

    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleHall *battleHall = BattleHall_Init(fieldData->saveData, resumingFromSave, challengeType, partySlot1, partySlot2);

    BattleFrontier_SetFacilityStruct(ctx->scriptMan->frontier, battleHall);

    return FALSE;
}

BOOL FrontierScrCmd_BattleHall_SetupNextOpponent(FrontierScriptContext *ctx)
{
    u16 unused = FrontierScriptContext_GetVar(ctx);

    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleHall_SetupNextOpponent(battleHall, unused);

    return FALSE;
}

BOOL FrontierScrCmd_FreeBattleHall(FrontierScriptContext *ctx)
{
    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleHall_Free(battleHall);

    return FALSE;
}

BOOL FrontierScrCmd_OpenBattleHallApp(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    FS_EXTERN_OVERLAY(battle_hall_app);

    static const ApplicationManagerTemplate sBattleHallAppTemplate = {
        BattleHallApp_Init,
        BattleHallApp_Main,
        BattleHallApp_Exit,
        FS_OVERLAY_ID(battle_hall_app)
    };

    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleHallAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleHallAppArgs));

    MI_CpuClear8(args, sizeof(BattleHallAppArgs));

    args->saveData = fieldData->saveData;
    args->challengeType = battleHall->challengeType;
    args->battleHall = battleHall;
    args->typeRanks = &battleHall->typeRanks[battleHall->challengeType][0];
    args->party = battleHall->party;
    args->currentStreak = battleHall->currentStreak;
    args->cursorPos = battleHall->selectedTypeIdx;
    args->partnersLevel = &battleHall->unk_D84[0];

    Party_Init(args->party);

    Party *party = SaveData_GetParty(fieldData->saveData);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleHall->partySlots[0]);

    Party_AddPokemon(args->party, mon);

    if (args->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        mon = Party_GetPokemonBySlotIndex(party, battleHall->partySlots[1]);
        Party_AddPokemon(args->party, mon);
    } else if (args->challengeType == FRONTIER_CHALLENGE_MULTI || args->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
        Party_AddPokemon(args->party, battleHall->partnersMon);
    }

    sub_0209B988(ctx->scriptMan->frontier, &sBattleHallAppTemplate, args, 0, StoreBattleHallAppResult);
    return TRUE;
}

BOOL FrontierScrCmd_BattleHall_CleanupBattle(FrontierScriptContext *ctx)
{
    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FieldBattleDTO *dto = battleHall->dto;

    battleHall->wonBattle = CheckPlayerWonBattle(dto->resultMask);
    FieldBattleDTO_Free(dto);

    return FALSE;
}

BOOL FrontierScrCmd_BattleHall_StartBattle(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    FieldBattleDTO *dto = BattleHall_SetupBattle(battleHall, fieldData);
    battleHall->dto = dto;

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_BATTLE, SEQ_BATTLE_TRAINER, 1);
    sub_0209B988(ctx->scriptMan->frontier, &gBattleApplicationTemplate, dto, 0, NULL);

    return TRUE;
}

static void StoreBattleHallAppResult(void *data)
{
    BattleHallAppArgs *args = data;
    BattleHall_GetTypeSelectionAppResult(args->battleHall, data);
    Heap_Free(data);
}

BOOL FrontierScrCmd_CallBattleHallFunction(FrontierScriptContext *ctx)
{
    u8 rank, partySize;
    u8 command = FrontierScriptContext_ReadByte(ctx);
    u8 arg1 = FrontierScriptContext_ReadByte(ctx);
    u8 arg2 = FrontierScriptContext_ReadByte(ctx);
    u16 *returnVar = FrontierScriptContext_TryGetVarPointer(ctx);

    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    switch (command) {
    case BH_FUNC_SET_CHALLENGE_TYPE:
        battleHall->challengeType = arg1;
        break;
    case BH_FUNC_GET_SELECTED_TYPE_INDEX:
        *returnVar = battleHall->selectedTypeIdx2;
        break;
    case BH_FUNC_GET_CURRENT_STREAK:
        *returnVar = battleHall->currentStreak;
        break;
    case BH_FUNC_INCREMENT_CURRENT_STREAK:
        if (battleHall->currentStreak < 9999) {
            battleHall->currentStreak++;
        }
        break;
    case BH_FUNC_RESET_SYSTEM:
        OS_ResetSystem(0);
        break;
    case BH_FUNC_CHECK_HAS_SAVED:
        *returnVar = BattleHallSave_HasSaved(battleHall->hallSave);
        break;
    case BH_FUNC_QUICKSAVE:
        BattleHall_Save(battleHall, 2);
        break;
    case BH_FUNC_INCREMENT_CURRENT_BATTLE:
        *returnVar = BattleHall_IncrementCurrentBattle(battleHall);
        break;
    case BH_FUNC_GET_CURRENT_ROUND:
        if (battleHall->challengeType == FRONTIER_CHALLENGE_MULTI) {
            *returnVar = 10;
        } else {
            *returnVar = battleHall->currentRound;
        }
        break;
    case BH_FUNC_GET_OPPONENT_OBJECT_ID:
        *returnVar = BattleHall_GetNextOpponentObjectID(battleHall, arg1);
        break;
    case BH_FUNC_SAVE_ON_LOSS:
        BattleHall_SaveOnLoss(battleHall);
        break;
    case BH_FUNC_SAVE_ON_COMPLETING_ROUND:
        BattleHall_SaveOnCompletingRound(battleHall);
        break;
    case BH_FUNC_GET_CURRENT_BATTLE:
        *returnVar = BattleHall_GetCurrentBattle(battleHall);
        break;
    case BH_FUNC_UNK_24:
        *returnVar = battleHall->unk_D88;
        break;
    case BH_FUNC_RESTORE_HELD_ITEMS: {
        Party *party = SaveData_GetParty(fieldData->saveData);
        partySize = BattleHall_GetPlayerPartySize(battleHall->challengeType);

        for (int i = 0; i < partySize; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleHall->partySlots[i]);
            Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &battleHall->heldItems[i]);
        }
    } break;
    case BH_FUNC_INCREMENT_RANK_OF_BEATEN_TYPE:
        rank = BattleHall_GetRankOfType(battleHall->selectedTypeIdx, &battleHall->typeRanks[battleHall->challengeType][0]);

        if (rank < HALL_MAX_TYPE_RANK) {
            BattleHall_SetRankOfType(battleHall->selectedTypeIdx, &battleHall->typeRanks[battleHall->challengeType][0], rank + 1);
        }
        break;
    case BH_FUNC_UNK_29:
        sub_0209BA80(battleHall);
        break;
    case BH_FUNC_IS_MULTIPLAYER_CHALLENGE:
        *returnVar = BattleHall_IsMultiPlayerChallenge(battleHall->challengeType);
        break;
    case BH_FUNC_GET_CHALLENGE_TYPE:
        *returnVar = battleHall->challengeType;
        break;
    case BH_FUNC_TOGGLE_ENGINE_LAYER:
        if (arg1 == 0) {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        } else {
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
        }
        break;
    case BH_FUNC_LOAD_TRAINERS:
        BattleFrontier_LoadTrainer(&battleHall->opponents[0], battleHall->trainerIDs[battleHall->currentBattle * 2], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        BattleFrontier_LoadTrainer(&battleHall->opponents[1], battleHall->trainerIDs[battleHall->currentBattle * 2 + 1], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        break;
    case BH_FUNC_GET_RANK_OF_BEATEN_TYPE:
        *returnVar = BattleHall_GetRankOfType(battleHall->selectedTypeIdx, &battleHall->typeRanks[battleHall->challengeType][0]);
        break;
    case BH_FUNC_GET_EARNED_BP:
        *returnVar = BattleHall_GetEarnedBP(battleHall);
        break;
    case BH_FUNC_GET_PLAYERS_MONS_SPECIES: {
        Party *party = SaveData_GetParty(fieldData->saveData);
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleHall->partySlots[0]);
        *returnVar = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    } break;
    case BH_FUNC_CAP_TYPE_RANKS:
        BattleHall_CapTypeRanks(battleHall);
        break;
    case BH_FUNC_SET_BASE_LEVEL:
        BattleHall_CalcPlayerLevelSqrt(battleHall);
        break;
    case BH_FUNC_GET_NEXT_BATTLE_TYPE:
        *returnVar = HALL_NEXT_BATTLE_NORMAL;

        if (battleHall->challengeType == FRONTIER_CHALLENGE_SINGLE) {
            if (battleHall->currentStreak + 1 == HALL_STREAK_SILVER_BATTLE) {
                *returnVar = HALL_NEXT_BATTLE_SILVER;
            } else if (battleHall->currentStreak + 1 == HALL_STREAK_GOLD_BATTLE) {
                *returnVar = HALL_NEXT_BATTLE_GOLD;
            }
        }
        break;
    case BH_FUNC_DUMMY:
        break;
    }

    return FALSE;
}

BOOL FrontierScrCmd_BattleHall_CheckWonBattle(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *destVar = battleHall->wonBattle;

    return FALSE;
}

BOOL FrontierScrCmd_BattleHall_SendCommMessage(FrontierScriptContext *ctx)
{
    u16 command = FrontierScriptContext_GetVar(ctx);
    u16 arg = FrontierScriptContext_GetVar(ctx);
    u16 *success = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *success = BattleHall_SendCommMessage(battleHall, command, arg);

    return TRUE;
}

BOOL FrontierScrCmd_94(FrontierScriptContext *ctx)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = v0;
    FrontierScriptContext_Pause(ctx, ov104_02234CEC);

    return TRUE;
}

static BOOL ov104_02234CEC(FrontierScriptContext *ctx)
{
    u16 v1 = FrontierScriptContext_TryGetVar(ctx, ctx->data[0]);

    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (battleHall->unk_D90 >= 2) {
        battleHall->unk_D90 = 0;
        return TRUE;
    }

    return FALSE;
}

BOOL FrontierScrCmd_BattleHall_PrintTrainerIntro(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    u16 index = FrontierScriptContext_ReadByte(ctx);

    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (battleHall == NULL) {
        return 0;
    }

    u16 *introMsg = battleHall->opponents[index].trDataDTO.introMsg;

    BattleFrontier_PrintNormalTrainerMessage(ctx, introMsg);
    return TRUE;
}

BOOL FrontierScrCmd_BattleHall_UpdateWinRecord(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);
    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleHall_UpdateWinRecordForCurrentMon(battleHall, destVar);

    return TRUE;
}

BOOL FrontierScrCmd_C7(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    BattleHall *battleHall = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    Party *party = SaveData_GetParty(fieldData->saveData);
    Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleHall->partySlots[0]);
    UNUSED(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL));

    if (battleHall->challengeType == 0) {
        TVBroadcast *broadcast = SaveData_GetTVBroadcast(fieldData->saveData);
        sub_0206D048(broadcast, mon);
    }

    return FALSE;
}
