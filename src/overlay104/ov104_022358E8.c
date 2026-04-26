#include "overlay104/ov104_022358E8.h"

#include <nitro.h>

#include "constants/battle_castle_functions.h"

#include "applications/frontier/battle_castle/args.h"
#include "applications/frontier/battle_castle/opponent_app.h"
#include "applications/frontier/battle_castle/self_app.h"
#include "overlay104/frontier_script_context.h"
#include "overlay104/frontier_script_manager.h"
#include "overlay104/frscrcmd.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_02231F74.h"
#include "overlay104/ov104_022361B4.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/struct_ov104_02230BE4.h"
#include "overlay104/struct_ov104_0223BA10.h"

#include "battle_frontier_stats.h"
#include "communication_system.h"
#include "field_battle_data_transfer.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "unk_020302D0.h"
#include "unk_0205DFC4.h"
#include "unk_0209B6F8.h"
#include "unk_0209BA80.h"

#include "constdata/const_020EA358.h"

FS_EXTERN_OVERLAY(battle_castle_app);

#include <nitro/code16.h>

static BOOL ov104_02236008(FrontierScriptContext *param0);
static void SetupBattleCastleAppArgs(BattleCastleAppArgs *args, BattleCastle *battleCastle);
static BOOL ov104_02236058(FrontierScriptContext *param0);
static void StoreBattleCastleAppResult(void *data);

BOOL FrontierScrCmd_97(FrontierScriptContext *param0)
{
    BattleCastle *v0;
    UnkStruct_ov104_02230BE4 *v1;
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);
    u16 v4 = FrontierScriptContext_GetVar(param0);
    u16 v5 = FrontierScriptContext_GetVar(param0);
    u16 v6 = FrontierScriptContext_GetVar(param0);
    u16 *v7 = FrontierScriptContext_TryGetVarPointer(param0);

    v1 = sub_0209B970(param0->scriptMan->unk_00);
    v0 = ov104_022361B4(v1->saveData, v2, v3, v4, v5, v6, v7);

    sub_0209B980(param0->scriptMan->unk_00, v0);

    return 0;
}

BOOL FrontierScrCmd_98(FrontierScriptContext *param0)
{
    BattleCastle *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);

    v0 = sub_0209B978(param0->scriptMan->unk_00);
    ov104_02236514(v0, v1);

    return 0;
}

BOOL FrontierScrCmd_99(FrontierScriptContext *param0)
{
    BattleCastle *v0 = sub_0209B978(param0->scriptMan->unk_00);
    ov104_022367AC(v0);

    return 0;
}

BOOL FrontierScrCmd_OpenBattleCastleSelfApp(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(ctx->scriptMan->unk_00);

    FS_EXTERN_OVERLAY(battle_castle_app);

    static const ApplicationManagerTemplate sBattleCastleSelfAppTemplate = {
        BattleCastleSelfApp_Init,
        BattleCastleSelfApp_Main,
        BattleCastleSelfApp_Exit,
        FS_OVERLAY_ID(battle_castle_app)
    };

    BattleCastle *battleCastle = sub_0209B978(ctx->scriptMan->unk_00);
    BattleCastleAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleCastleAppArgs));

    MI_CpuClear8(args, sizeof(BattleCastleAppArgs));
    args->saveData = v3->saveData;

    SetupBattleCastleAppArgs(args, battleCastle);
    sub_0209B988(ctx->scriptMan->unk_00, &sBattleCastleSelfAppTemplate, args, 0, StoreBattleCastleAppResult);
    return TRUE;
}

BOOL FrontierScrCmd_A4(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(ctx->scriptMan->unk_00);

    FS_EXTERN_OVERLAY(battle_castle_app);

    static const ApplicationManagerTemplate sBattleCastleNullTemplate = {
        NULL,
        NULL,
        NULL,
        FS_OVERLAY_ID(battle_castle_app)
    };

    BattleCastle *battleCastle = sub_0209B978(ctx->scriptMan->unk_00);
    BattleCastleAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleCastleAppArgs));

    MI_CpuClear8(args, sizeof(BattleCastleAppArgs));
    args->saveData = v3->saveData;

    SetupBattleCastleAppArgs(args, battleCastle);
    sub_0209B988(ctx->scriptMan->unk_00, &sBattleCastleNullTemplate, args, 0, StoreBattleCastleAppResult);

    return TRUE;
}

BOOL FrontierScrCmd_BattleCastle_CleanupBattle(FrontierScriptContext *ctx)
{

    BattleCastle *battleCastle = sub_0209B978(ctx->scriptMan->unk_00);
    FieldBattleDTO *dto = battleCastle->unk_0C;

    Pokemon *mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_1], 0);
    Party_AddPokemonBySlotIndex(battleCastle->unk_28, 0, mon);

    mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_1], 1);
    Party_AddPokemonBySlotIndex(battleCastle->unk_28, 1, mon);

    if (!BattleCastle_IsMultiPlayerChallenge(battleCastle->challengeType)) {
        mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_1], 2);
        Party_AddPokemonBySlotIndex(battleCastle->unk_28, 2, mon);
    } else {
        mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_2], 0);
        Party_AddPokemonBySlotIndex(battleCastle->unk_28, 2, mon);

        mon = Party_GetPokemonBySlotIndex(dto->parties[BATTLER_PLAYER_2], 1);
        Party_AddPokemonBySlotIndex(battleCastle->unk_28, 3, mon);
    }

    battleCastle->wonBattle = CheckPlayerWonBattle(dto->resultMask);
    FieldBattleDTO_Free(dto);
    return FALSE;
}

BOOL FrontierScrCmd_BattleCastle_StartBattle(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(ctx->scriptMan->unk_00);
    BattleCastle *battleCastle = sub_0209B978(ctx->scriptMan->unk_00);

    FieldBattleDTO *dto = ov104_0223B810(battleCastle, v2);
    battleCastle->unk_0C = dto;

    sub_0209B988(ctx->scriptMan->unk_00, &gBattleApplicationTemplate, dto, 0, NULL);
    return TRUE;
}

BOOL FrontierScrCmd_OpenBattleCastleOpponentApp(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v3 = sub_0209B970(ctx->scriptMan->unk_00);

    FS_EXTERN_OVERLAY(battle_castle_app);

    static const ApplicationManagerTemplate sBattleCastleOpponentAppTemplate = {
        BattleCastleOpponentApp_Init,
        BattleCastleOpponentApp_Main,
        BattleCastleOpponentApp_Exit,
        FS_OVERLAY_ID(battle_castle_app)
    };

    BattleCastle *battleCastle = sub_0209B978(ctx->scriptMan->unk_00);
    BattleCastleAppArgs *args = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleCastleAppArgs));

    MI_CpuClear8(args, sizeof(BattleCastleAppArgs));
    args->saveData = v3->saveData;

    SetupBattleCastleAppArgs(args, battleCastle);
    sub_0209B988(ctx->scriptMan->unk_00, &sBattleCastleOpponentAppTemplate, args, 0, StoreBattleCastleAppResult);
    return TRUE;
}

static void SetupBattleCastleAppArgs(BattleCastleAppArgs *args, BattleCastle *battleCastle)
{
    args->challengeType = battleCastle->challengeType;
    args->party = battleCastle->unk_28;
    args->opponentsParty = battleCastle->unk_2C;
    args->battleCastle = battleCastle;
    args->partnersCP = battleCastle->partnersCP;

    for (int i = 0; i < 4; i++) {
        args->identityUnlocked[i] = battleCastle->appIdentityUnlocked[i];
        args->levelAdjustmentUnlocked[i] = battleCastle->appLevelAdjustmentsUnlocked[i];
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

BOOL FrontierScrCmd_9E(FrontierScriptContext *param0)
{
    BattleCastle *v0 = sub_0209B978(param0->scriptMan->unk_00);
    ov104_02236BF0(v0);

    return 0;
}

BOOL FrontierScrCmd_9F(FrontierScriptContext *param0)
{
    BattleCastle *v0 = sub_0209B978(param0->scriptMan->unk_00);
    ov104_02236BF8(v0);

    return 0;
}

BOOL FrontierScrCmd_CallBattleCastleFunction(FrontierScriptContext *ctx)
{
    UnkStruct_ov104_02230BE4 *v11;
    u8 command = FrontierScriptContext_ReadByte(ctx);
    u8 arg1 = FrontierScriptContext_ReadByte(ctx);
    u8 arg2 = FrontierScriptContext_ReadByte(ctx);
    u16 *returnVar = FrontierScriptContext_TryGetVarPointer(ctx);

    BattleCastle *battleCastle = sub_0209B978(ctx->scriptMan->unk_00);
    v11 = sub_0209B970(ctx->scriptMan->unk_00);

    switch (command) {
    case BC_FUNC_SET_CHALLENGE_TYPE:
        battleCastle->challengeType = arg1;
        break;
    case BC_FUNC_UNK_3:
        *returnVar = battleCastle->unk_380[arg1];
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
    case BC_FUNC_UNK_9:
        *returnVar = sub_020302EC(battleCastle->unk_08);
        break;
    case BC_FUNC_UNK_10:
        ov104_02236848(battleCastle, 2);
        break;
    case BC_FUNC_UNK_14:
        *returnVar = ov104_02236B48(battleCastle);
        break;
    case BC_FUNC_UNK_15:
        *returnVar = battleCastle->unk_288[arg1].species;
        break;
    case BC_FUNC_UNK_16:
        *returnVar = battleCastle->unk_288[arg1].moves[arg2];
        break;
    case BC_FUNC_UNK_18: {
        Party *v2 = SaveData_GetParty(v11->saveData);

        for (int v8 = 0; v8 < 3; v8++) {
            Pokemon *v1 = Party_GetPokemonBySlotIndex(v2, battleCastle->unk_24[v8]);
            Pokemon_SetValue(v1, MON_DATA_HELD_ITEM, &battleCastle->unk_36A[v8]);
        }
    } break;
    case BC_FUNC_UNK_19:
        *returnVar = ov104_0223BB60(battleCastle);
        break;
    case BC_FUNC_UNK_20:
        *returnVar = ov104_02236B58(battleCastle, arg1);
        break;
    case BC_FUNC_UNK_21:
        ov104_02236B8C(battleCastle);
        break;
    case BC_FUNC_UNK_22:
        ov104_02236BD0(battleCastle);
        break;
    case BC_FUNC_UNK_23:
        *returnVar = ov104_02236B54(battleCastle);
        break;
    case BC_FUNC_UNK_24:
        *returnVar = battleCastle->unk_A10;
        break;
    case BC_FUNC_UNK_26:
        *returnVar = battleCastle->unk_A11;
        break;
    case BC_FUNC_UNK_27:
        *returnVar = ov104_02236D10(battleCastle);
        ov104_02236ED8(battleCastle->saveData, battleCastle->challengeType, *returnVar);
        break;
    case BC_FUNC_UNK_28:
        ov104_02236C50(battleCastle);
        break;
    case BC_FUNC_UNK_29:
        sub_0209BA80(battleCastle);
        break;
    case BC_FUNC_UNK_30:
        if (battleCastle->unk_A1B >= 6) {
            *returnVar = (battleCastle->unk_A1B - 6);
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
            ov104_0223BC2C(SaveData_GetBattleFrontier(v11->saveData), battleCastle->challengeType, 50);
        } else {
            battleCastle->partnersCP -= 50;
        }
    } break;
    case BC_FUNC_UNK_34:
        *returnVar = 0;

        if (BattleCastle_IsMultiPlayerChallenge(battleCastle->challengeType) == 1) {
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
    case BC_FUNC_UNK_25:
        *returnVar = battleCastle->unk_12;
        break;
    case BC_FUNC_UNK_36: {
        FrontierGraphics *v12 = FrontierScriptManager_GetGraphics(ctx->scriptMan);
        ov104_0223BB84(v12->bgConfig, battleCastle, 3);
    } break;
    case BC_FUNC_UNK_37:
        ov104_0222E278(&(battleCastle->unk_4C[0]), battleCastle->unk_30[battleCastle->unk_11], HEAP_ID_FIELD2, 178);
        ov104_0222E278(&(battleCastle->unk_4C[1]), battleCastle->unk_30[battleCastle->unk_11 + 7], HEAP_ID_FIELD2, 178);
        break;
    case BC_FUNC_UNK_38:
        *returnVar = ov104_02237338(battleCastle);
        break;
    case BC_FUNC_UNK_39: {
        u8 v13[4];
        *returnVar = (u16)sub_02030470(sub_0203041C(v11->saveData), 10, 0, 0, NULL);
        v13[0] = 1;
        sub_02030430(sub_0203041C(v11->saveData), 10, 0, 0, v13);
    } break;
    case BC_FUNC_UNK_40:
        *returnVar = 0;

        if (battleCastle->challengeType == 0) {
            if ((battleCastle->currentStreak + 1) == 21) {
                *returnVar = 1;
            } else if ((battleCastle->currentStreak + 1) == 49) {
                *returnVar = 2;
            }
        }
        break;
    case BC_FUNC_UNK_41:
        ov104_0222E330(battleCastle->unk_288, battleCastle->unk_26C, battleCastle->unk_274, battleCastle->unk_278, NULL, 4, 11, 179);
        break;
    case BC_FUNC_UNK_42:
        ov104_0223BAB8(battleCastle);
        break;
    case BC_FUNC_UNK_43:
        *returnVar = battleCastle->unk_13;
        battleCastle->unk_13 = 1;
        break;
    case BC_FUNC_UNK_44:
        if (battleCastle->challengeType == 3) {
            if (arg1 == 0) {
                battleCastle->unk_22 = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(v11->saveData), BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType)));
                BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(v11->saveData), BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType)), battleCastle->unk_20);
            } else {
                BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(v11->saveData), BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(battleCastle->challengeType)), battleCastle->unk_22);
            }
        }
        break;
    }

    return FALSE;
}

BOOL FrontierScrCmd_BattleCastle_CheckWonBattle(FrontierScriptContext *ctx)
{
    BattleCastle *battleCastle;
    u16 *destVar = FrontierScriptContext_TryGetVarPointer(ctx);

    battleCastle = sub_0209B978(ctx->scriptMan->unk_00);
    *destVar = battleCastle->wonBattle;

    return FALSE;
}

BOOL FrontierScrCmd_A2(FrontierScriptContext *param0)
{
    BattleCastle *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 *v3 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = sub_0209B978(param0->scriptMan->unk_00);
    *v3 = ov104_02236F70(v0, v1, v2);

    return 1;
}

BOOL FrontierScrCmd_A3(FrontierScriptContext *param0)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(param0);

    param0->data[0] = v0;
    FrontierScriptContext_Pause(param0, ov104_02236008);

    return 1;
}

static BOOL ov104_02236008(FrontierScriptContext *param0)
{
    BattleCastle *v0;
    u16 v1 = FrontierScriptContext_TryGetVar(param0, param0->data[0]);

    v0 = sub_0209B978(param0->scriptMan->unk_00);

    if (v0->unk_A1A >= 2) {
        v0->unk_A1A = 0;
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_A5(FrontierScriptContext *param0)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(param0);

    param0->data[0] = v0;
    FrontierScriptContext_Pause(param0, ov104_02236058);

    return 1;
}

static BOOL ov104_02236058(FrontierScriptContext *param0)
{
    BattleCastle *v0;
    u16 *v1 = FrontierScriptContext_GetVarPointer(param0, param0->data[0]);

    v0 = sub_0209B978(param0->scriptMan->unk_00);

    if (v0->unk_A1B == 0) {
        return 0;
    }

    v0->unk_A1A = 0;
    *v1 = v0->unk_A1B;

    return 1;
}

BOOL FrontierScrCmd_50(FrontierScriptContext *param0)
{
    BattleCastle *v0 = sub_0209B978(param0->scriptMan->unk_00);
    ov104_02236FC0(param0->scriptMan, v0);

    return 0;
}

BOOL FrontierScrCmd_51(FrontierScriptContext *param0)
{
    BattleCastle *v0 = sub_0209B978(param0->scriptMan->unk_00);
    ov104_022370E0(param0->scriptMan, v0);

    return 0;
}

BOOL FrontierScrCmd_52(FrontierScriptContext *param0)
{
    BattleCastle *v0 = sub_0209B978(param0->scriptMan->unk_00);
    ov104_02237180(param0->scriptMan, v0);

    return 0;
}

BOOL FrontierScrCmd_A6(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 *v2 = FrontierScriptContext_TryGetVarPointer(param0);

    v0 = sub_0209B970(param0->scriptMan->unk_00);
    *v2 = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(v0->saveData), BattleFrontierStats_GetCastleLatestCPIndex(v1), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(v1)));

    return 0;
}

BOOL FrontierScrCmd_A7(FrontierScriptContext *param0)
{
    UnkStruct_ov104_02230BE4 *v0;
    u16 v1 = FrontierScriptContext_GetVar(param0);
    u16 v2 = FrontierScriptContext_GetVar(param0);

    v0 = sub_0209B970(param0->scriptMan->unk_00);
    ov104_0223BC2C(SaveData_GetBattleFrontier(v0->saveData), v1, v2);

    return 0;
}

BOOL FrontierScrCmd_A8(FrontierScriptContext *param0)
{
    u16 v0;
    UnkStruct_ov104_02230BE4 *v1;
    u16 v2 = FrontierScriptContext_GetVar(param0);
    u16 v3 = FrontierScriptContext_GetVar(param0);

    v1 = sub_0209B970(param0->scriptMan->unk_00);
    ov104_02236ED8(v1->saveData, v2, v3);

    return 0;
}

BOOL FrontierScrCmd_A9(FrontierScriptContext *param0)
{
    u16 *v0;
    BattleCastle *v1;
    UnkStruct_ov104_02230BE4 *v2 = sub_0209B970(param0->scriptMan->unk_00);
    u16 v3 = FrontierScriptContext_ReadByte(param0);

    v1 = sub_0209B978(param0->scriptMan->unk_00);

    if (v1 == NULL) {
        return 0;
    }

    v0 = v1->unk_4C[v3].trDataDTO.unk_18;

    ov104_022330FC(param0, v0);
    return 1;
}
