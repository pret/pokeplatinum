#include "overlay104/ov104_022361B4.h"

#include <nitro.h>

#include "constants/heap.h"
#include "generated/game_records.h"

#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_defs/battle_frontier.h"

#include "applications/frontier/battle_castle/args.h"
#include "overlay104/defs.h"
#include "overlay104/frontier_script_manager.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222ECE8.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/struct_battle_castle.h"

#include "battle_frontier_stats.h"
#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "game_records.h"
#include "heap.h"
#include "message.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
#include "string_template.h"
#include "system_vars.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020302D0.h"
#include "unk_0205DFC4.h"
#include "vars_flags.h"

void ov104_02236514(BattleCastle *param0, u16 param1);
static void ov104_02236528(BattleCastle *param0);
static void ov104_022365F8(BattleCastle *param0);
static void ov104_022366A4(BattleCastle *param0);
void ov104_022367AC(BattleCastle *param0);
static u16 GetBattleCastleAppSelectedSlot(BattleCastleAppArgs *args, u8 i);
void ov104_02236BF0(BattleCastle *param0);
void ov104_02236BF8(BattleCastle *param0);
void ov104_02236C50(BattleCastle *param0);
int ov104_02236D10(BattleCastle *param0);
BOOL ov104_02236F70(BattleCastle *param0, u16 param1, u16 param2);
void ov104_02236FC0(FrontierScriptManager *param0, BattleCastle *param1);
void ov104_022370E0(FrontierScriptManager *param0, BattleCastle *param1);
void ov104_02237180(FrontierScriptManager *param0, BattleCastle *param1);
static void ov104_022370C0(BgConfig *param0, Window *param1);
static void ov104_02237284(FrontierScriptManager *param0, Window *param1, TrainerInfo *param2, u16 param3);
u16 ov104_02237338(BattleCastle *param0);

BattleCastle *ov104_022361B4(SaveData *saveData, u16 param1, u8 param2, u16 param3, u16 param4, u16 param5, u16 *param6)
{
    u32 v0, v1;
    Party *v2;
    Pokemon *v3;
    UnkStruct_020302DC *v4;
    u8 v5, v6;
    u16 v7, v8;
    static BattleCastle *v9;
    UnkStruct_0203041C *v10;

    v9 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleCastle));
    MI_CpuClear8(v9, sizeof(BattleCastle));

    v9->unk_08 = sub_020302DC(saveData);
    v9->saveData = saveData;
    v9->unk_00 = 11;
    v9->playersParty = Party_New(HEAP_ID_FIELD2);
    v9->opponentsParty = Party_New(HEAP_ID_FIELD2);
    v9->unk_A20 = param6;

    v4 = v9->unk_08;
    v10 = sub_0203041C(saveData);

    if (param1 == 0) {
        v9->challengeType = param2;
        v9->unk_11 = 0;

        sub_020302D0(v4);

        if (v9->challengeType == 3) {
            v5 = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(v9->saveData));
        } else {
            v5 = (u8)sub_02030470(v10, 9, v9->challengeType, 0, NULL);
        }

        if (v5 == 1) {
            v9->currentStreak = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(v9->saveData), BattleFrontierStats_GetCastleLatestStreakIndex(v9->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestStreakIndex(v9->challengeType)));
        } else {
            v9->currentStreak = 0;

            BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(v9->saveData), BattleFrontierStats_GetCastleLatestCPIndex(v9->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(v9->challengeType)), 0);
            BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(v9->saveData), BattleFrontierStats_GetCastleSpentCPIndex(param2), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleSpentCPIndex(param2)), 0);

            for (v7 = 0; v7 < 3; v7++) {
                BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(v9->saveData), BattleFrontierStats_GetCastleRankIndex(v9->challengeType, v7), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRankIndex(v9->challengeType, v7)), 1);
            }
        }

        v9->unk_16 = (u16)(v9->currentStreak / 7);
        v9->unk_18 = 0;
        v9->unk_24[0] = param3;
        v9->unk_24[1] = param4;
        v9->unk_24[2] = param5;
        v9->unk_20 = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(v9->saveData), BattleFrontierStats_GetCastleLatestCPIndex(v9->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(v9->challengeType)));

        BattleFrontierStats_AddToStat(SaveData_GetBattleFrontier(v9->saveData), BattleFrontierStats_GetCastleLatestCPIndex(v9->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(v9->challengeType)), 10);
    } else {
        v9->challengeType = (u8)sub_02030398(v4, 0, 0, 0, NULL);
        v9->unk_11 = (u8)sub_02030398(v4, 1, 0, 0, NULL);
        v9->currentStreak = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(v9->saveData), BattleFrontierStats_GetCastleLatestStreakIndex(v9->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestStreakIndex(v9->challengeType)));
        v9->unk_16 = (u16)(v9->currentStreak / 7);

        for (v7 = 0; v7 < 3; v7++) {
            v9->unk_24[v7] = (u8)sub_02030398(v4, 7, v7, 0, NULL);
        }
    }

    for (v7 = 0; v7 < 3; v7++) {
        v3 = Party_GetPokemonBySlotIndex(SaveData_GetParty(v9->saveData), v9->unk_24[v7]);
        v9->unk_36A[v7] = Pokemon_GetValue(v3, MON_DATA_HELD_ITEM, NULL);
    }

    v2 = SaveData_GetParty(v9->saveData);
    v6 = BattleCastle_GetPlayerPartySize(v9->challengeType, 0);

    for (v7 = 0; v7 < v6; v7++) {
        Party_AddPokemon(v9->playersParty, Party_GetPokemonBySlotIndex(v2, v9->unk_24[v7]));

        v3 = Party_GetPokemonBySlotIndex(v9->playersParty, v7);
        v0 = 0;

        Pokemon_SetValue(v3, MON_DATA_HELD_ITEM, &v0);

        if (Pokemon_GetValue(v3, MON_DATA_LEVEL, NULL) > 50) {
            v1 = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(v3, MON_DATA_SPECIES, NULL), 50);
            Pokemon_SetValue(v3, MON_DATA_EXPERIENCE, &v1);
            Pokemon_CalcLevelAndStats(v3);
        }
    }

    if (BattleCastle_IsMultiPlayerChallenge(v9->challengeType) == 1) {
        ov104_0222E630(v9->saveData);
    }

    return v9;
}

void ov104_02236514(BattleCastle *param0, u16 param1)
{
    if (param1 == 0) {
        ov104_02236528(param0);
    } else {
        ov104_022365F8(param0);
    }

    return;
}

static void ov104_02236528(BattleCastle *param0)
{
    u8 v0 = Party_GetCurrentCount(param0->playersParty);

    for (int i = 0; i < v0; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(param0->playersParty, i);

        param0->unk_394[i][0] = Pokemon_GetValue(mon, MON_DATA_MOVE1_PP, NULL);
        param0->unk_394[i][1] = Pokemon_GetValue(mon, MON_DATA_MOVE2_PP, NULL);
        param0->unk_394[i][2] = Pokemon_GetValue(mon, MON_DATA_MOVE3_PP, NULL);
        param0->unk_394[i][3] = Pokemon_GetValue(mon, MON_DATA_MOVE4_PP, NULL);
    }

    ov104_0223B760(param0->challengeType, ov104_0223BB60(param0), param0->trainerIDs, 7 * 2);

    ov104_0222E4BC(BattleCastle_GetOpponentPartySize(param0->challengeType, 1), param0->trainerIDs[param0->unk_11], param0->trainerIDs[param0->unk_11 + 7], param0->unk_26C, param0->unk_288, param0->unk_274, param0->unk_278, BattleCastle_IsMultiPlayerChallenge(param0->challengeType));

    return;
}

static void ov104_022365F8(BattleCastle *param0)
{
    u16 v0;
    int v1;
    Pokemon *v2;
    u8 v3;
    FrontierPokemonDataDTO v4[6];
    u8 v5[6];
    u16 v6[6];
    u32 v7[6];

    ov104_022366A4(param0);

    for (v1 = 0; v1 < (7 * 2); v1++) {
        param0->trainerIDs[v1] = (u16)sub_02030398(param0->unk_08, 6, v1, 0, NULL);
    }

    for (v1 = 0; v1 < 4; v1++) {
        v6[v1] = (u16)sub_02030398(param0->unk_08, 8, v1, 0, NULL);
        param0->unk_26C[v1] = v6[v1];
    }

    ov104_0222E330(v4, v6, v5, NULL, v7, 4, 11, 179);

    v2 = Pokemon_New(HEAP_ID_FIELD2);

    for (v1 = 0; v1 < 4; v1++) {
        FrontierPokemonDataDTO_InitPokemon(&v4[v1], v2, BattleCastle_GetOpponentLevel(param0));
        ov104_0223BAA0(param0, param0->opponentsParty, v2);
    }

    Heap_Free(v2);

    return;
}

static void ov104_022366A4(BattleCastle *param0)
{
    u8 v0;
    u32 v1;
    u16 v2;
    u8 v3;
    int v4;
    Pokemon *v5;

    v0 = Party_GetCurrentCount(param0->playersParty);

    for (v4 = 0; v4 < v0; v4++) {
        v5 = Party_GetPokemonBySlotIndex(param0->playersParty, v4);

        v2 = (u16)sub_02030398(param0->unk_08, 2, v4, 0, NULL);
        Pokemon_SetValue(v5, MON_DATA_HP, &v2);

        v3 = (u8)sub_02030398(param0->unk_08, 3, v4, 0, NULL);
        Pokemon_SetValue(v5, MON_DATA_MOVE1_PP, &v3);

        v3 = (u8)sub_02030398(param0->unk_08, 3, v4, 1, NULL);
        Pokemon_SetValue(v5, MON_DATA_MOVE2_PP, &v3);

        v3 = (u8)sub_02030398(param0->unk_08, 3, v4, 2, NULL);
        Pokemon_SetValue(v5, MON_DATA_MOVE3_PP, &v3);

        v3 = (u8)sub_02030398(param0->unk_08, 3, v4, 3, NULL);
        Pokemon_SetValue(v5, MON_DATA_MOVE4_PP, &v3);

        v1 = (u32)sub_02030398(param0->unk_08, 4, v4, 0, NULL);
        Pokemon_SetValue(v5, MON_DATA_STATUS, &v1);

        v2 = (u16)sub_02030398(param0->unk_08, 5, v4, 0, NULL);
        Pokemon_SetValue(v5, MON_DATA_HELD_ITEM, &v2);
    }

    return;
}

void ov104_022367AC(BattleCastle *param0)
{
    int v0;

    if (param0 == NULL) {
        return;
    }

    if (param0->playersParty != NULL) {
        Heap_Free(param0->playersParty);
    }

    if (param0->opponentsParty != NULL) {
        Heap_Free(param0->opponentsParty);
    }

    MI_CpuClear8(param0, sizeof(BattleCastle));
    Heap_Free(param0);

    param0 = NULL;

    return;
}

void BattleCastle_StoreAppResults(BattleCastle *battleCastle, BattleCastleAppArgs *args)
{
    for (int i = 0; i < 6; i++) {
        battleCastle->unk_380[i] = GetBattleCastleAppSelectedSlot(args, i);
    }

    for (int i = 0; i < 4; i++) {
        battleCastle->appIdentityUnlocked[i] = args->identityUnlocked[i];
        battleCastle->appLevelAdjustmentsUnlocked[i] = args->levelAdjustmentUnlocked[i];
        battleCastle->appStatsUnlocked[i] = args->statsUnlocked[i];
        battleCastle->appMovesUnlocked[i] = args->movesUnlocked[i];
    }

    battleCastle->partnersCP = args->partnersCP;
}

static u16 GetBattleCastleAppSelectedSlot(BattleCastleAppArgs *args, u8 i)
{
    if (i >= 6) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return args->selectedMonSlot;
}

void ov104_02236848(BattleCastle *param0, u8 param1)
{
    u16 v0, v1, v2;
    u8 v3;
    u8 v4[4];
    u16 v5[4];
    u32 v6[4];
    u32 v7, v8, v9;
    BattleFrontier *frontier;
    Pokemon *v11;
    UnkStruct_020302DC *v12 = param0->unk_08;
    UnkStruct_0203041C *v13 = sub_0203041C(param0->saveData);

    frontier = SaveData_GetBattleFrontier(param0->saveData);
    v3 = BattleCastle_GetOpponentPartySize(param0->challengeType, 1);
    v4[0] = param0->challengeType;

    sub_02030308(param0->unk_08, 0, 0, 0, v4);
    sub_020302F4(param0->unk_08, 1);

    v4[0] = param0->unk_11;

    sub_02030308(param0->unk_08, 1, 0, 0, v4);
    BattleFrontierStats_SetStat(frontier, BattleFrontierStats_GetCastleLatestStreakIndex(param0->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestStreakIndex(param0->challengeType)), param0->currentStreak);

    if (param1 != 2) {
        v1 = BattleFrontierStats_GetStat(frontier, BattleFrontierStats_GetCastleRecordStreakIndex(param0->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRecordStreakIndex(param0->challengeType)));
        v7 = BattleFrontierStats_SetIfBetter(frontier, BattleFrontierStats_GetCastleRecordStreakIndex(param0->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRecordStreakIndex(param0->challengeType)), param0->currentStreak);
        v2 = BattleFrontierStats_GetStat(frontier, BattleFrontierStats_GetCastleRecordStreakIndex(param0->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRecordStreakIndex(param0->challengeType)));
        v9 = BattleFrontierStats_GetStat(frontier, BattleFrontierStats_GetCastleLatestCPIndex(param0->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(param0->challengeType)));

        if (param0->currentStreak == v1) {
            BattleFrontierStats_SetIfBetter(frontier, BattleFrontierStats_GetCastleRecordCPIndex(param0->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRecordCPIndex(param0->challengeType)), v9);
        } else if (v1 < v2) {
            BattleFrontierStats_SetStat(frontier, BattleFrontierStats_GetCastleRecordCPIndex(param0->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRecordCPIndex(param0->challengeType)), v9);
        }

        v4[0] = param0->unk_27;
        sub_02030430(v13, 9, param0->challengeType, 0, v4);

        if (param0->challengeType == 3) {
            BattleFrontierStats_SetStat(frontier, STAT_CASTLE_WFC_STREAK_ACTIVE, BattleFrontierStats_GetHostFriendIdx(STAT_CASTLE_WFC_STREAK_ACTIVE), param0->unk_27);
        }
    }

    for (v0 = 0; v0 < (7 * 2); v0++) {
        v5[0] = param0->trainerIDs[v0];
        sub_02030308(param0->unk_08, 6, v0, 0, v5);
    }

    for (v0 = 0; v0 < 3; v0++) {
        v4[0] = param0->unk_24[v0];
        sub_02030308(param0->unk_08, 7, v0, 0, v4);
    }

    v8 = Party_GetCurrentCount(param0->playersParty);

    for (v0 = 0; v0 < v8; v0++) {
        v11 = Party_GetPokemonBySlotIndex(param0->playersParty, v0);

        v5[0] = Pokemon_GetValue(v11, MON_DATA_HP, NULL);
        sub_02030308(param0->unk_08, 2, v0, 0, v5);

        v4[0] = Pokemon_GetValue(v11, MON_DATA_MOVE1_PP, NULL);
        sub_02030308(param0->unk_08, 3, v0, 0, v4);

        v4[0] = Pokemon_GetValue(v11, MON_DATA_MOVE2_PP, NULL);
        sub_02030308(param0->unk_08, 3, v0, 1, v4);

        v4[0] = Pokemon_GetValue(v11, MON_DATA_MOVE3_PP, NULL);
        sub_02030308(param0->unk_08, 3, v0, 2, v4);

        v4[0] = Pokemon_GetValue(v11, MON_DATA_MOVE4_PP, NULL);
        sub_02030308(param0->unk_08, 3, v0, 3, v4);

        v6[0] = Pokemon_GetValue(v11, MON_DATA_STATUS, NULL);
        sub_02030308(param0->unk_08, 4, v0, 0, v6);

        v5[0] = Pokemon_GetValue(v11, MON_DATA_HELD_ITEM, NULL);
        sub_02030308(param0->unk_08, 5, v0, 0, v5);
    }

    v8 = Party_GetCurrentCount(param0->opponentsParty);

    for (v0 = 0; v0 < v8; v0++) {
        v11 = Party_GetPokemonBySlotIndex(param0->opponentsParty, v0);
        v5[0] = param0->unk_26C[v0];

        sub_02030308(param0->unk_08, 8, v0, 0, v5);
    }

    return;
}

u16 ov104_02236B48(BattleCastle *param0)
{
    param0->unk_11++;
    return param0->unk_11;
}

u16 ov104_02236B54(BattleCastle *param0)
{
    return param0->unk_11;
}

u16 ov104_02236B58(BattleCastle *param0, u8 param1)
{
    FrontierTrainerDataDTO v0;
    u8 v2 = param0->unk_11 + (param1 * 7);

    Heap_Free(BattleFrontier_GetTrainerData(&v0, param0->trainerIDs[v2], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return BattleTower_GetObjectIDFromTrainerClass(v0.trainerType);
}

void ov104_02236B8C(BattleCastle *param0)
{
    u16 v0[4];
    int v1;

    v0[0] = 1;

    for (v1 = 0; v1 < 3; v1++) {
        BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(param0->saveData), BattleFrontierStats_GetCastleRankIndex(param0->challengeType, v1), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleRankIndex(param0->challengeType, v1)), 1);
    }

    ov104_02236848(param0, 1);

    return;
}

void ov104_02236BD0(BattleCastle *param0)
{
    param0->unk_27 = 1;

    if (param0->unk_16 < 8) {
        param0->unk_16++;
    }

    param0->unk_11 = 0;
    ov104_02236848(param0, 0);

    return;
}

void ov104_02236BF0(BattleCastle *param0)
{
    ov104_0223BAB8(param0);
    return;
}

void ov104_02236BF8(BattleCastle *param0)
{
    int v0, v1, v2;

    ov104_0222E4BC(BattleCastle_GetOpponentPartySize(param0->challengeType, 1), param0->trainerIDs[param0->unk_11], param0->trainerIDs[param0->unk_11 + 7], param0->unk_26C, param0->unk_288, param0->unk_274, param0->unk_278, BattleCastle_IsMultiPlayerChallenge(param0->challengeType));

    for (v0 = 0; v0 < 4; v0++) {
        (void)0;
    }

    ov104_0223BAB8(param0);
    return;
}

void ov104_02236C50(BattleCastle *param0)
{
    u8 v0, v1;
    int v2, v3;
    Pokemon *v4;

    if (CommSys_CurNetId() == 0) {
        v0 = 0;
    } else {
        v0 = 2;
    }

    v1 = BattleCastle_GetPlayerPartySize(param0->challengeType, 0);
    v3 = Party_GetCurrentCount(param0->playersParty);

    for (v2 = v0; v2 < (v1 + v0); v2++) {
        v4 = Party_GetPokemonBySlotIndex(param0->playersParty, v2);

        param0->unk_394[v2 - v0][0] = Pokemon_GetValue(v4, MON_DATA_MOVE1_PP, NULL);
        param0->unk_394[v2 - v0][1] = Pokemon_GetValue(v4, MON_DATA_MOVE2_PP, NULL);
        param0->unk_394[v2 - v0][2] = Pokemon_GetValue(v4, MON_DATA_MOVE3_PP, NULL);
        param0->unk_394[v2 - v0][3] = Pokemon_GetValue(v4, MON_DATA_MOVE4_PP, NULL);
    }

    ov104_0223BA24(param0->playersParty);

    for (v2 = 0; v2 < 4; v2++) {
        param0->appIdentityUnlocked[v2] = 0;
        param0->appLevelAdjustmentsUnlocked[v2] = 0;
        param0->appStatsUnlocked[v2] = 0;
        param0->appMovesUnlocked[v2] = 0;
    }

    return;
}

int ov104_02236D10(BattleCastle *param0)
{
    u8 v0, v1, v2;
    u32 v3, v4;
    int v5, v6, v7, v8;
    Pokemon *v9;
    u8 v10[20];
    int v11 = 0;

    for (v5 = 0; v5 < 20; v5++) {
        v10[v5] = 0;
    }

    param0->unk_12 = 0;
    v8 = 0;

    if (CommSys_CurNetId() == 0) {
        v2 = 0;
    } else {
        v2 = 2;
    }

    v0 = BattleCastle_GetPlayerPartySize(param0->challengeType, 0);
    v1 = BattleCastle_GetOpponentPartySize(param0->challengeType, 1);

    for (v5 = v2; v5 < (v0 + v2); v5++) {
        v9 = Party_GetPokemonBySlotIndex(param0->playersParty, v5);

        if (Pokemon_GetValue(v9, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
            continue;
        }

        v3 = Pokemon_GetValue(v9, MON_DATA_HP, NULL);
        v4 = Pokemon_GetValue(v9, MON_DATA_MAX_HP, NULL);

        if (v3 > 0) {
            v10[0]++;

            if (v3 == v4) {
                v10[1]++;
            } else {
                if (v3 >= (v4 / 2)) {
                    v10[2]++;
                } else {
                    v10[3]++;
                }
            }

            if (Pokemon_GetValue(v9, MON_DATA_STATUS, NULL) == 0) {
                v10[4]++;
            }
        } else {
            param0->unk_12 = 1;
        }

        v8 += Pokemon_GetValue(v9, MON_DATA_MOVE1_PP, NULL);
        v8 += Pokemon_GetValue(v9, MON_DATA_MOVE2_PP, NULL);
        v8 += Pokemon_GetValue(v9, MON_DATA_MOVE3_PP, NULL);
        v8 += Pokemon_GetValue(v9, MON_DATA_MOVE4_PP, NULL);
    }

    for (v5 = 0; v5 < v1; v5++) {
        if (param0->appLevelAdjustmentsUnlocked[v5] == 1) {
            v10[8]++;
        } else if (param0->appLevelAdjustmentsUnlocked[v5] == 2) {
            (void)0;
        }
    }

    v7 = 0;

    for (v5 = 0; v5 < v0; v5++) {
        for (v6 = 0; v6 < 4; v6++) {
            v7 += param0->unk_394[v5][v6];
        }
    }

    if ((v7 - v8) <= 5) {
        v10[5]++;
    } else if ((v7 - v8) <= 10) {
        v10[6]++;
    } else if ((v7 - v8) <= 15) {
        v10[7]++;
    }

    v11 += v10[0] * 3;
    v11 += v10[1] * 3;
    v11 += v10[2] * 2;
    v11 += v10[3] * 1;
    v11 += v10[4] * 1;
    v11 += v10[5] * 8;
    v11 += v10[6] * 6;
    v11 += v10[7] * 4;
    v11 += v10[8] * 7;

    if (v11 <= 0) {
        v11 = 1;
    }

    return v11;
}

void ov104_02236ED8(SaveData *saveData, u8 param1, int param2)
{
    u16 v0 = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleLatestCPIndex(param1), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(param1)));

    if (v0 + param2 > 9999) {
        BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleLatestCPIndex(param1), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(param1)), 9999);
    } else {
        BattleFrontierStats_AddToStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetCastleLatestCPIndex(param1), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(param1)), param2);
    }

    GameRecords_AddToRecordValue(SaveData_GetGameRecords(saveData), RECORD_UNK_065, param2);
    return;
}

BOOL ov104_02236F70(BattleCastle *param0, u16 param1, u16 param2)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = ov104_0222F3B8(param0);
        break;
    case 1:
        v0 = ov104_0222F44C(param0);
        break;
    case 2:
        v0 = ov104_0222F4B8(param0);
        break;
    case 3:
        v0 = ov104_0222F5D4(param0);
        break;
    case 4:
        v0 = ov104_0222F6C8(param0, param2);
        break;
    case 5:
        v0 = ov104_0222F710(param0, param2);
        break;
    case 6:
        v0 = ov104_0222F758(param0);
        break;
    }

    return v0;
}

void ov104_02236FC0(FrontierScriptManager *param0, BattleCastle *param1)
{
    FrontierGraphics *v0 = FrontierScriptManager_GetGraphics(param0);

    GF_ASSERT(param0->unk_A8 == NULL);
    GF_ASSERT(param0->unk_AC == NULL);

    if (BattleCastle_IsMultiPlayerChallenge(param1->challengeType) == 0) {
        param0->unk_A8 = Window_New(HEAP_ID_FIELD2, 1);
        Window_Add(v0->bgConfig, param0->unk_A8, 1, 1, 1, 10, 4, 14, ((((1024 - (18 + 12)) - 9) - (27 * 4)) - (11 * 22)) - (10 * 4));
        ov104_022370C0(v0->bgConfig, param0->unk_A8);
    } else {
        param0->unk_A8 = Window_New(HEAP_ID_FIELD2, 1);
        param0->unk_AC = Window_New(HEAP_ID_FIELD2, 1);

        Window_Add(v0->bgConfig, param0->unk_A8, 1, 1, 1, 10, 4, 14, ((((1024 - (18 + 12)) - 9) - (27 * 4)) - (11 * 22)) - (10 * 4));
        Window_Add(v0->bgConfig, param0->unk_AC, 1, 21, 1, 10, 4, 14, (((((1024 - (18 + 12)) - 9) - (27 * 4)) - (11 * 22)) - (10 * 4)) - (10 * 4));

        ov104_022370C0(v0->bgConfig, param0->unk_A8);
        ov104_022370C0(v0->bgConfig, param0->unk_AC);
    }

    ov104_02237180(param0, param1);
    return;
}

static void ov104_022370C0(BgConfig *param0, Window *param1)
{
    Window_DrawStandardFrame(param1, 1, (1024 - (18 + 12)) - 9, 12);
    Window_FillTilemap(param1, 15);

    return;
}

void ov104_022370E0(FrontierScriptManager *param0, BattleCastle *param1)
{
    Window *v0;
    Window *v1;

    if (BattleCastle_IsMultiPlayerChallenge(param1->challengeType) == 0) {
        GF_ASSERT(param0->unk_A8 != NULL);
        v0 = param0->unk_A8;
        Window_EraseStandardFrame(v0, 0);
        Windows_Delete(v0, 1);
    } else {
        GF_ASSERT(param0->unk_A8 != NULL);
        GF_ASSERT(param0->unk_AC != NULL);

        if (CommSys_CurNetId() == 0) {
            v0 = param0->unk_A8;
            v1 = param0->unk_AC;
        } else {
            v0 = param0->unk_AC;
            v1 = param0->unk_A8;
        }

        Window_EraseStandardFrame(v0, 0);
        Windows_Delete(v0, 1);
        Window_EraseStandardFrame(v1, 0);
        Windows_Delete(v1, 1);
    }

    param0->unk_A8 = NULL;
    param0->unk_AC = NULL;

    return;
}

void ov104_02237180(FrontierScriptManager *param0, BattleCastle *param1)
{
    u16 v0, v1;

    if (BattleCastle_IsMultiPlayerChallenge(param1->challengeType) == 0) {
        GF_ASSERT(param0->unk_A8 != NULL);
        v0 = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(param1->saveData), BattleFrontierStats_GetCastleLatestCPIndex(param1->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(param1->challengeType)));
        ov104_02237284(param0, param0->unk_A8, SaveData_GetTrainerInfo(param1->saveData), v0);
    } else {
        GF_ASSERT(param0->unk_A8 != NULL);
        GF_ASSERT(param0->unk_AC != NULL);

        if (CommSys_CurNetId() == 0) {
            v0 = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(param1->saveData), BattleFrontierStats_GetCastleLatestCPIndex(param1->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(param1->challengeType)));
            v1 = param1->partnersCP;
        } else {
            v0 = param1->partnersCP;
            v1 = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(param1->saveData), BattleFrontierStats_GetCastleLatestCPIndex(param1->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetCastleLatestCPIndex(param1->challengeType)));
        }

        ov104_02237284(param0, param0->unk_A8, CommInfo_TrainerInfo(0), v0);
        ov104_02237284(param0, param0->unk_AC, CommInfo_TrainerInfo(1), v1);
    }

    return;
}

static void ov104_02237284(FrontierScriptManager *param0, Window *param1, TrainerInfo *param2, u16 param3)
{
    MessageLoader *v0;
    String *v1 = String_Init(10 * 2, param0->heapID);
    String *v2 = String_Init(10 * 2, param0->heapID);

    v0 = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_CASTLE_SELF_APP, HEAP_ID_FIELD2);

    StringTemplate_SetNumber(param0->strTemplate, 0, param3, 4, 1, 1);
    MessageLoader_GetString(v0, 2, v1);

    StringTemplate_Format(param0->strTemplate, v2, v1);
    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, 16, 2 * 8, TEXT_SPEED_NO_TRANSFER, NULL);
    StringTemplate_SetPlayerName(param0->strTemplate, 0, param2);

    MessageLoader_GetString(v0, 0, v1);

    StringTemplate_Format(param0->strTemplate, v2, v1);
    Text_AddPrinterWithParams(param1, FONT_SYSTEM, v2, 0, 0, TEXT_SPEED_INSTANT, NULL);

    String_Free(v1);
    String_Free(v2);
    MessageLoader_Free(v0);

    Window_CopyToVRAM(param1);

    return;
}

u16 ov104_02237338(BattleCastle *param0)
{
    u8 v0;
    u16 v1;
    static const u8 v2[8 + 1] = { 0, 3, 3, 4, 4, 5, 5, 7, 7 };
    static const u8 v3[8 + 1] = { 0, 8, 9, 11, 12, 14, 15, 18, 18 };

    v1 = param0->unk_16;

    if ((param0->challengeType == 0) || (param0->challengeType == 1)) {
        if (v1 >= 8) {
            v0 = v2[8];
        } else {
            v0 = v2[v1];
        }
    } else {
        if (v1 >= 8) {
            v0 = v3[8];
        } else {
            v0 = v3[v1];
        }
    }

    if (param0->challengeType == 0) {
        if ((param0->currentStreak == 21) || (param0->currentStreak == 49)) {
            v0 = 20;
        }
    }

    return v0;
}
