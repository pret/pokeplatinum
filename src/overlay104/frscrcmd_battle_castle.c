#include "overlay104/frscrcmd_battle_castle.h"

#include <nitro.h>

#include "constants/battle_castle_functions.h"
#include "constants/battle_frontier.h"

#include "applications/frontier/battle_castle/args.h"
#include "applications/frontier/battle_castle/opponent_app.h"
#include "applications/frontier/battle_castle/self_app.h"
#include "global/utility.h"
#include "overlay104/battle_castle.h"
#include "overlay104/battle_castle_helpers.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frontier_script_manager.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "battle_castle_save.h"
#include "battle_frontier.h"
#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(battle_castle_app);

#include <nitro/code16.h>

static BOOL WaitForCommResponses(FrontierScriptContext *ctx);
static void SetupBattleCastleAppArgs(BattleCastleAppArgs *args, BattleCastle *battleCastle);
static BOOL ov104_02236058(FrontierScriptContext *ctx);
static void StoreBattleCastleAppResult(void *data);

BOOL FrontierScrCmd_InitBattleCastle(FrontierScriptContext *ctx)
{
    u16 resumingFromSave = FrontierScriptContext_GetVar(ctx);
    u16 challengeType = FrontierScriptContext_GetVar(ctx);
    u16 partySlot1 = FrontierScriptContext_GetVar(ctx);
    u16 partySlot2 = FrontierScriptContext_GetVar(ctx);
    u16 partySlot3 = FrontierScriptContext_GetVar(ctx);
    u16 *v7 = FrontierScriptContext_TryGetVarPointer(ctx);

    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleCastle *castle = BattleCastle_Init(fieldData->saveData, resumingFromSave, challengeType, partySlot1, partySlot2, partySlot3, v7);

    BattleFrontier_SetFacilityStruct(ctx->scriptMan->frontier, castle);

    return FALSE;
}

BOOL FrontierScrCmd_LoadTrainersForRound(FrontierScriptContext *ctx)
{
    u16 resumingFromSave = FrontierScriptContext_GetVar(ctx);

    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastle_LoadTrainersForRound(castle, resumingFromSave);

    return FALSE;
}

BOOL FrontierScrCmd_FreeBattleCastle(FrontierScriptContext *ctx)
{
    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastle_Free(castle);

    return FALSE;
}

BOOL FrontierScrCmd_OpenBattleCastleSelfApp(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    FS_EXTERN_OVERLAY(battle_castle_app);

    static const ApplicationManagerTemplate sBattleCastleSelfAppTemplate = {
        BattleCastleSelfApp_Init,
        BattleCastleSelfApp_Main,
        BattleCastleSelfApp_Exit,
        FS_OVERLAY_ID(battle_castle_app)
    };

    BattleCastle *battleCastle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastleAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleCastleAppArgs));

    MI_CpuClear8(args, sizeof(BattleCastleAppArgs));
    args->saveData = fieldData->saveData;

    SetupBattleCastleAppArgs(args, battleCastle);
    sub_0209B988(ctx->scriptMan->frontier, &sBattleCastleSelfAppTemplate, args, 0, StoreBattleCastleAppResult);
    return TRUE;
}

BOOL FrontierScrCmd_DummyOpenBattleCastleApp(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    FS_EXTERN_OVERLAY(battle_castle_app);

    static const ApplicationManagerTemplate sBattleCastleNullTemplate = {
        NULL,
        NULL,
        NULL,
        FS_OVERLAY_ID(battle_castle_app)
    };

    BattleCastle *battleCastle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastleAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleCastleAppArgs));

    MI_CpuClear8(args, sizeof(BattleCastleAppArgs));
    args->saveData = fieldData->saveData;

    SetupBattleCastleAppArgs(args, battleCastle);
    sub_0209B988(ctx->scriptMan->frontier, &sBattleCastleNullTemplate, args, 0, StoreBattleCastleAppResult);

    return TRUE;
}

BOOL FrontierScrCmd_BattleCastle_CleanupBattle(FrontierScriptContext *ctx)
{
    BattleCastle *battleCastle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    FieldBattleDTO *dto = battleCastle->dto;

    Pokemon *mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_1], 0);
    Party_AddPokemonBySlotIndex(battleCastle->playersParty, 0, mon);

    mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_1], 1);
    Party_AddPokemonBySlotIndex(battleCastle->playersParty, 1, mon);

    if (!BattleCastle_IsMultiPlayerChallenge(battleCastle->challengeType)) {
        mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_1], 2);
        Party_AddPokemonBySlotIndex(battleCastle->playersParty, 2, mon);
    } else {
        mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_2], 0);
        Party_AddPokemonBySlotIndex(battleCastle->playersParty, 2, mon);

        mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_2], 1);
        Party_AddPokemonBySlotIndex(battleCastle->playersParty, 3, mon);
    }

    battleCastle->wonBattle = CheckPlayerWonBattle(dto->resultMask);
    FieldBattleDTO_Free(dto);
    return FALSE;
}

BOOL FrontierScrCmd_BattleCastle_StartBattle(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleCastle *battleCastle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    FieldBattleDTO *dto = BattleCastle_SetupBattle(battleCastle, fieldData);
    battleCastle->dto = dto;

    sub_0209B988(ctx->scriptMan->frontier, &gBattleApplicationTemplate, dto, 0, NULL);
    return TRUE;
}

BOOL FrontierScrCmd_OpenBattleCastleOpponentApp(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    FS_EXTERN_OVERLAY(battle_castle_app);

    static const ApplicationManagerTemplate sBattleCastleOpponentAppTemplate = {
        BattleCastleOpponentApp_Init,
        BattleCastleOpponentApp_Main,
        BattleCastleOpponentApp_Exit,
        FS_OVERLAY_ID(battle_castle_app)
    };

    BattleCastle *battleCastle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastleAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleCastleAppArgs));

    MI_CpuClear8(args, sizeof(BattleCastleAppArgs));
    args->saveData = fieldData->saveData;

    SetupBattleCastleAppArgs(args, battleCastle);
    sub_0209B988(ctx->scriptMan->frontier, &sBattleCastleOpponentAppTemplate, args, 0, StoreBattleCastleAppResult);
    return TRUE;
}

static void SetupBattleCastleAppArgs(BattleCastleAppArgs *args, BattleCastle *battleCastle)
{
    args->challengeType = battleCastle->challengeType;
    args->party = battleCastle->playersParty;
    args->opponentsParty = battleCastle->opponentsParty;
    args->battleCastle = battleCastle;
    args->partnersCP = battleCastle->partnersCP;

    for (int i = 0; i < 4; i++) {
        args->identityUnlocked[i] = battleCastle->appIdentityUnlocked[i];
        args->levelAdjustments[i] = battleCastle->levelAdjustments[i];
        args->statsUnlocked[i] = battleCastle->appStatsUnlocked[i];
        args->movesUnlocked[i] = battleCastle->appMovesUnlocked[i];
    }
}

static void StoreBattleCastleAppResult(void *data)
{
    BattleCastleAppArgs *args = data;
    BattleCastle_StoreAppResults(args->battleCastle, data);
    Heap_Free(data);
}

BOOL FrontierScrCmd_BattleCastle_SetupFirstOpponent(FrontierScriptContext *ctx)
{
    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastle_SetupFirstOpponentsParty(castle);

    return FALSE;
}

BOOL FrontierScrCmd_BattleCastle_SetupNextOpponent(FrontierScriptContext *ctx)
{
    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastle_SetupNextOpponentsParty(castle);

    return FALSE;
}

BOOL FrontierScrCmd_CallBattleCastleFunction(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData;
    u8 command = FrontierScriptContext_ReadByte(ctx);
    u8 arg1 = FrontierScriptContext_ReadByte(ctx);
    u8 arg2 = FrontierScriptContext_ReadByte(ctx);
    u16 *returnVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleCastle *battleCastle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);

    switch (command) {
    case BC_FUNC_SET_CHALLENGE_TYPE:
        battleCastle->challengeType = arg1;
        break;
    case BC_FUNC_GET_SELECTED_APP_SLOT:
        *returnVar = battleCastle->selectedAppSlots[arg1];
        break;
    case BC_FUNC_GET_CURRENT_STREAK:
        *returnVar = battleCastle->currentStreak;
        break;
    case BC_FUNC_INCREMENT_CURRENT_STREAK:
        if (battleCastle->currentStreak < 9999) {
            battleCastle->currentStreak++;
        }
        break;
    case BC_FUNC_RESET_SYSTEM:
        OS_ResetSystem(0);
        break;
    case BC_FUNC_HAS_SAVED:
        *returnVar = BattleCastleSave_HasSaved(battleCastle->castleSave);
        break;
    case BC_FUNC_QUICKSAVE:
        BattleCastle_Save(battleCastle, 2);
        break;
    case BC_FUNC_INCREMENT_CURRENT_BATTLE:
        *returnVar = BattleCastle_IncrementCurrentBattle(battleCastle);
        break;
    case BC_FUNC_GET_MONS_SPECIES:
        *returnVar = battleCastle->opponentMons[arg1].species;
        break;
    case BC_FUNC_GET_MONS_MOVE:
        *returnVar = battleCastle->opponentMons[arg1].moves[arg2];
        break;
    case BC_FUNC_RESTORE_HELD_ITEMS: {
        Party *party = SaveData_GetParty(fieldData->saveData);

        for (int i = 0; i < 3; i++) {
            Pokemon *mon = Party_GetPokemonBySlotIndex(party, battleCastle->partySlots[i]);
            Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &battleCastle->savedHeldItems[i]);
        }
    } break;
    case BC_FUNC_GET_CURRENT_ROUND:
        *returnVar = BattleCastle_GetCurrentRound(battleCastle);
        break;
    case BC_FUNC_GET_OPPONENT_OBJECT_ID:
        *returnVar = BattleCastle_GetNextOpponentObjectID(battleCastle, arg1);
        break;
    case BC_FUNC_SAVE_ON_LOSS:
        BattleCastle_SaveOnLoss(battleCastle);
        break;
    case BC_FUNC_SAVE_ON_COMPLETING_ROUND:
        BattleCastle_SaveOnCompletingRound(battleCastle);
        break;
    case BC_FUNC_GET_CURRENT_BATTLE:
        *returnVar = BattleCastle_GetCurrentBattle(battleCastle);
        break;
    case BC_FUNC_UNK_24:
        *returnVar = battleCastle->unk_A10;
        break;
    case BC_FUNC_UNK_26:
        *returnVar = battleCastle->unk_A11;
        break;
    case BC_FUNC_GET_CP_FROM_BATTLE:
        *returnVar = BattleCastle_CalcCPEarnedFromBattle(battleCastle);
        BattleCastle_ReceiveCastlePoints(battleCastle->saveData, battleCastle->challengeType, *returnVar);
        break;
    case BC_FUNC_PREP_FOR_NEXT_BATTLE:
        BattleCastle_PrepForNextBattle(battleCastle);
        break;
    case BC_FUNC_INIT_COMM_MANAGER:
        sub_0209BA80(battleCastle);
        break;
    case BC_FUNC_UNK_30:
        if (battleCastle->unk_A1B >= 6) {
            *returnVar = battleCastle->unk_A1B - 6;
        } else {
            *returnVar = battleCastle->unk_A1B;
        }
        break;
    case BC_FUNC_UNK_31:
        battleCastle->unk_A1B = 0;
        battleCastle->unk_A19 = 0;
        battleCastle->unk_A18 = 0;
        break;
    case BC_FUNC_UNK_32:
        battleCastle->unk_A18 = arg1;
        break;
    case BC_FUNC_UNK_33: {
        int v10 = 0;

        if (battleCastle->unk_A1B >= 6) {
            if (CommSys_CurNetId() != 0) {
                v10 = 1;
            }
        } else {
            if (CommSys_CurNetId() == 0) {
                v10 = 1;
            }
        }

        if (v10 == 1) {
            BattleCastle_SpendCastlePoints(SaveData_GetBattleFrontier(fieldData->saveData), battleCastle->challengeType, 50);
        } else {
            battleCastle->partnersCP -= 50;
        }
    } break;
    case BC_FUNC_UNK_34:
        *returnVar = 0;

        if (BattleCastle_IsMultiPlayerChallenge(battleCastle->challengeType) == TRUE) {
            if (battleCastle->unk_A1B >= 6) {
                if (CommSys_CurNetId() == 0) {
                    *returnVar = 1;
                }
            } else {
                if (CommSys_CurNetId() != 0) {
                    *returnVar = 1;
                }
            }
        }
        break;
    case BC_FUNC_IS_MULTIPLAYER_CHALLENGE:
        *returnVar = BattleCastle_IsMultiPlayerChallenge(battleCastle->challengeType);
        break;
    case BC_FUNC_GET_CHALLENGE_TYPE:
        *returnVar = battleCastle->challengeType;
        break;
    case BC_FUNC_CHECK_IF_MON_FAINTED:
        *returnVar = battleCastle->monFainted;
        break;
    case BC_FUNC_UPDATE_EMBLEM_FRAME: {
        FrontierGraphics *graphics = FrontierScriptManager_GetGraphics(ctx->scriptMan);
        BattleCastle_UpdateEmblemFrame(graphics->bgConfig, battleCastle, BG_LAYER_MAIN_3);
    } break;
    case BC_FUNC_LOAD_TRAINERS:
        BattleFrontier_LoadTrainer(&battleCastle->opponents[0], battleCastle->trainerIDs[battleCastle->currentBattle], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        BattleFrontier_LoadTrainer(&battleCastle->opponents[1], battleCastle->trainerIDs[battleCastle->currentBattle + CASTLE_BATTLES_PER_ROUND], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR);
        break;
    case BC_FUNC_GET_EARNED_BP:
        *returnVar = BattleCastle_GetEarnedBP(battleCastle);
        break;
    case BC_FUNC_CHECK_HAVE_HEARD_DARACHS_INTRO: {
        u8 haveHeardIntro[4];
        *returnVar = BattleCastlePersistentSave_GetFlag(BattleCastlePersistentSave_Get(fieldData->saveData), CASTLE_SAVE_HAVE_HEARD_INTRO, 0, 0, NULL);
        haveHeardIntro[0] = TRUE;
        BattleCastlePersistentSave_SetFlag(BattleCastlePersistentSave_Get(fieldData->saveData), CASTLE_SAVE_HAVE_HEARD_INTRO, 0, 0, haveHeardIntro);
    } break;
    case BC_FUNC_GET_NEXT_BATTLE_TYPE:
        *returnVar = FRONTIER_NEXT_BATTLE_NORMAL;

        if (battleCastle->challengeType == FRONTIER_CHALLENGE_SINGLE) {
            if (battleCastle->currentStreak + 1 == CASTLE_STREAK_SILVER_BATTLE) {
                *returnVar = FRONTIER_NEXT_BATTLE_SILVER;
            } else if (battleCastle->currentStreak + 1 == CASTLE_STREAK_GOLD_BATTLE) {
                *returnVar = FRONTIER_NEXT_BATTLE_GOLD;
            }
        }
        break;
    case BC_FUNC_CREATE_OPPONENT_MONS:
        ov104_0222E330(battleCastle->opponentMons, battleCastle->monSetIDs, battleCastle->opponentMonIVs, battleCastle->opponentMonPersonalities, NULL, 4, HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDPM);
        break;
    case BC_FUNC_SETUP_OPPONENTS_PARTY:
        BattleCastle_SetupOpponentsParty(battleCastle);
        break;
    case BC_FUNC_CHECK_SEEN_VALET_INTRO:
        *returnVar = battleCastle->seenCastleValetIntro;
        battleCastle->seenCastleValetIntro = TRUE;
        break;
    case BC_FUNC_UPDATE_CP:
        if (battleCastle->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            if (arg1 == 0) {
                battleCastle->newCP = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(fieldData->saveData), BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType));
                BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(fieldData->saveData), BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType), battleCastle->initialCP);
            } else {
                BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(fieldData->saveData), BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType), battleCastle->newCP);
            }
        }
        break;
    }

    return FALSE;
}

BOOL FrontierScrCmd_BattleCastle_CheckWonBattle(FrontierScriptContext *ctx)
{
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleCastle *battleCastle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *destVar = battleCastle->wonBattle;

    return FALSE;
}

BOOL FrontierScrCmd_BattleCastle_SendCommMessage(FrontierScriptContext *ctx)
{
    u16 command = FrontierScriptContext_GetVar(ctx);
    u16 arg = FrontierScriptContext_GetVar(ctx);
    u16 *success = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    *success = BattleCastle_SendCommMessage(castle, command, arg);

    return TRUE;
}

BOOL FrontierScrCmd_BattleCastle_WaitForCommResponses(FrontierScriptContext *ctx)
{
    ctx->data[0] = FrontierScriptContext_ReadHalfWord(ctx);
    FrontierScriptContext_Pause(ctx, WaitForCommResponses);

    return TRUE;
}

static BOOL WaitForCommResponses(FrontierScriptContext *ctx)
{
    UNUSED(FrontierScriptContext_TryGetVar(ctx, ctx->data[0]));

    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (castle->msgsReceived >= 2) {
        castle->msgsReceived = 0;
        return TRUE;
    }

    return FALSE;
}

BOOL FrontierScrCmd_A5(FrontierScriptContext *ctx)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(ctx);

    ctx->data[0] = v0;
    FrontierScriptContext_Pause(ctx, ov104_02236058);

    return TRUE;
}

static BOOL ov104_02236058(FrontierScriptContext *ctx)
{
    u16 *v1 = FrontierScriptContext_GetVarPointer(ctx, ctx->data[0]);

    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (castle->unk_A1B == 0) {
        return FALSE;
    }

    castle->msgsReceived = 0;
    *v1 = castle->unk_A1B;

    return TRUE;
}

BOOL FrontierScrCmd_ShowCastlePointsWindows(FrontierScriptContext *ctx)
{
    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastle_ShowPlayerInfoWindows(ctx->scriptMan, castle);

    return FALSE;
}

BOOL FrontierScrCmd_ClearCastlePointsWindows(FrontierScriptContext *ctx)
{
    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastle_ClearPlayerInfoWindows(ctx->scriptMan, castle);

    return FALSE;
}

BOOL FrontierScrCmd_ReprintCastlePointsInfo(FrontierScriptContext *ctx)
{
    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);
    BattleCastle_PrintPlayersInfo(ctx->scriptMan, castle);

    return FALSE;
}

BOOL FrontierScrCmd_GetCurrentCastlePoints(FrontierScriptContext *ctx)
{
    u16 challengeType = FrontierScriptContext_GetVar(ctx);
    u16 *cp = FrontierScriptContext_TryGetVarPointer(ctx);

    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    *cp = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(fieldData->saveData), BattleFrontierStats_GetCastleLatestCPIndex(challengeType));

    return FALSE;
}

BOOL FrontierScrCmd_SpendCastlePoints(FrontierScriptContext *ctx)
{
    u16 challengeType = FrontierScriptContext_GetVar(ctx);
    u16 cp = FrontierScriptContext_GetVar(ctx);

    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleCastle_SpendCastlePoints(SaveData_GetBattleFrontier(fieldData->saveData), challengeType, cp);

    return FALSE;
}

BOOL FrontierScrCmd_ReceiveCastlePoints(FrontierScriptContext *ctx)
{
    u16 challengeType = FrontierScriptContext_GetVar(ctx);
    u16 cp = FrontierScriptContext_GetVar(ctx);

    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    BattleCastle_ReceiveCastlePoints(fieldData->saveData, challengeType, cp);

    return FALSE;
}

BOOL FrontierScrCmd_BattleCastle_PrintTrainerIntro(FrontierScriptContext *ctx)
{
    FieldFrontierDTO *fieldData = BattleFrontier_GetFieldData(ctx->scriptMan->frontier);
    u16 index = FrontierScriptContext_ReadByte(ctx);

    BattleCastle *castle = BattleFrontier_GetFacilityStruct(ctx->scriptMan->frontier);

    if (castle == NULL) {
        return FALSE;
    }

    u16 *introMsg = castle->opponents[index].trDataDTO.introMsg;

    BattleFrontier_PrintNormalTrainerMessage(ctx, introMsg);
    return TRUE;
}
