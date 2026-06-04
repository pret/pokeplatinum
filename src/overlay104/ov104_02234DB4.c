#include "overlay104/ov104_02234DB4.h"

#include <nitro.h>

#include "constants/battle_frontier.h"

#include "struct_defs/battle_frontier.h"

#include "applications/frontier/battle_hall/main.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222ECE8.h"
#include "overlay104/ov104_0223AF58.h"
#include "overlay104/struct_battle_hall.h"

#include "battle_frontier_stats.h"
#include "battle_hall_save.h"
#include "battle_hall_win_records.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "system_vars.h"
#include "unk_0205DFC4.h"
#include "vars_flags.h"

static void ov104_022350B8(BattleHall *param0);
static u16 GetBattleHallAppSelectedCell(BattleHallAppArgs *args, u8 unused);
static u16 BattleHall_LoadTypeRanks(SaveData *saveData, u8 challengeType, u8 type, u16 *type1Rank, u16 *type2Rank);
static void BattleHall_SaveTypeRank(SaveData *saveData, u8 challengeType, u8 type, u8 value);
static u16 ov104_02235704(BattleHall *param0);

BattleHall *BattleHall_Init(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u8 partySlot1, u8 partySlot2)
{
    u16 i;

    static BattleHall *battleHall;
    battleHall = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleHall));

    MI_CpuClear8(battleHall, sizeof(BattleHall));

    battleHall->hallSave = BattleHallSave_Get(saveData);
    battleHall->saveData = saveData;
    battleHall->unused = 11;
    battleHall->party = Party_New(HEAP_ID_FIELD2);
    battleHall->partnersMon = Pokemon_New(HEAP_ID_FIELD2);

    BattleHallSave *currentChallenge = battleHall->hallSave;
    BattleHallStreakFlags *streakFlags = BattleHallStreakFlags_Get(saveData);

    u8 streakActive, partySize;
    if (!resumingFromSave) {
        battleHall->challengeType = challengeType;
        partySize = BattleHall_GetPlayerPartySize(battleHall->challengeType);
        battleHall->unk_05 = 0;

        BattleHallSave_Init(currentChallenge);

        if (battleHall->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            streakActive = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(battleHall->saveData));
        } else {
            streakActive = BattleHallStreakFlags_GetFlag(streakFlags, 5, battleHall->challengeType, 0, NULL);
        }

        if (streakActive == TRUE) {
            battleHall->currentStreak = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(battleHall->saveData), BattleFrontierStats_GetHallLatestStreakIndex(battleHall->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallLatestStreakIndex(battleHall->challengeType)));
        } else {
            battleHall->currentStreak = 0;

            for (i = 0; i < NUM_POKEMON_TYPES; i++) {
                BattleHall_SaveTypeRank(battleHall->saveData, battleHall->challengeType, i, 0);
            }
        }

        battleHall->partySlots[0] = partySlot1;
        battleHall->partySlots[1] = partySlot2;
    } else {
        battleHall->challengeType = BattleHallSave_GetMember(currentChallenge, 0, 0, 0, NULL);
        partySize = BattleHall_GetPlayerPartySize(battleHall->challengeType);
        battleHall->unk_05 = BattleHallSave_GetMember(currentChallenge, 1, 0, 0, NULL);
        battleHall->currentStreak = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(battleHall->saveData), BattleFrontierStats_GetHallLatestStreakIndex(battleHall->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallLatestStreakIndex(battleHall->challengeType)));

        for (i = 0; i < partySize; i++) {
            battleHall->partySlots[i] = BattleHallSave_GetMember(currentChallenge, 3, i, 0, NULL);
        }

        for (i = 0; i < BATTLES_PER_ROUND_HALL * 2; i++) {
            battleHall->trainerIDs[i] = BattleHallSave_GetMember(currentChallenge, 2, i, 0, NULL);
        }

        for (i = 0; i < (10 * 2); i++) {
            battleHall->unk_268[i] = (u8)BattleHallSave_GetMember(currentChallenge, 4, i, 0, NULL);
        }
    }

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(battleHall->saveData), battleHall->partySlots[i]);
        battleHall->heldItems[i] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    }

    battleHall->unk_10 = 0;
    battleHall->currentRound = battleHall->currentStreak / 10;

    if (battleHall->challengeType == FRONTIER_CHALLENGE_MULTI) {
        for (i = 0; i < NUM_POKEMON_TYPES; i++) {
            BattleHall_SetRankOfType(i, &battleHall->typeRanks[2][0], 10 - 1);
        }
    } else {
        for (i = 0; i < NUM_POKEMON_TYPES; i++) {
            u16 ptr1, ptr2;
            u16 rank = BattleHall_LoadTypeRanks(saveData, battleHall->challengeType, i, &ptr1, &ptr2);

            BattleHall_SetRankOfType(i, &battleHall->typeRanks[battleHall->challengeType][0], rank);
        }
    }

    if (BattleHall_IsMultiPlayerChallenge(battleHall->challengeType) == TRUE) {
        BattleFrontier_FlagGeonetLinkInfo(battleHall->saveData);
    }

    return battleHall;
}

void ov104_022350B0(BattleHall *param0, u16 param1)
{
    if (param1 == 0) {
        ov104_022350B8(param0);
    } else {
        ov104_022350B8(param0);
    }

    return;
}

static void ov104_022350B8(BattleHall *param0)
{
    u8 v0, v1, v2, v3;
    int v4, v5;
    Pokemon *v6;

    v3 = 0;
    v1 = 1;

    if (param0->challengeType != 0) {
        v1 = 2;
    }

    v0 = BattleHall_GetRankOfType(param0->selectedTypeIdx, &param0->typeRanks[param0->challengeType][0]);
    param0->unk_07 = ov104_02235704(param0);

    ov104_0223AF58(param0->selectedTypeIdx, v1, v0, param0->unk_05, param0->trainerIDs);
    ov104_0223AFB4(param0->challengeType, v1, param0->currentRound, v0, param0->unk_05, param0->trainerIDs);

    v2 = (param0->unk_05 * 2);

    if ((param0->trainerIDs[v2] == 307) || (param0->trainerIDs[v2] == 308)) {
        v5 = ov104_0223B5C0(param0);
        v0 = v5;
    }

    if (param0->trainerIDs[v2] == 307) {
        v3 = 1;
    }

    if (param0->trainerIDs[v2] == 308) {
        v3 = 2;
    }

    v6 = Party_GetPokemonBySlotIndex(param0->party, 0);
    ov104_0223B0C8(1, param0->selectedType, v0, param0->unk_05, Pokemon_GetValue(v6, MON_DATA_SPECIES, NULL), param0->unk_268, v3);

    return;
}

void BattleHall_Free(BattleHall *battleHall)
{
    if (battleHall == NULL) {
        return;
    }

    if (battleHall->party != NULL) {
        Heap_Free(battleHall->party);
    }

    if (battleHall->partnersMon != NULL) {
        Heap_Free(battleHall->partnersMon);
    }

    MI_CpuClear8(battleHall, sizeof(BattleHall));

    Heap_Free(battleHall);
    battleHall = NULL;
}

void BattleHall_GetTypeSelectionAppResult(BattleHall *battleHall, void *args)
{
    battleHall->selectedTypeIdx2 = GetBattleHallAppSelectedCell(args, 0);
    battleHall->selectedTypeIdx = battleHall->selectedTypeIdx2;
    battleHall->selectedType = BattleHall_CursorPosToType(battleHall->selectedTypeIdx2);

    if (battleHall->selectedTypeIdx >= 17) {
        battleHall->selectedTypeIdx = 17;
    }
}

static u16 GetBattleHallAppSelectedCell(BattleHallAppArgs *args, u8 unused)
{
    return args->selectedCell;
}

void BattleHall_UpdateWinRecordForCurrentMon(BattleHall *battleHall, u16 *updated)
{
    int unused, unused2;

    if (battleHall->challengeType != FRONTIER_CHALLENGE_MULTI_WFC) {
        *updated = BattleHallWinRecords_UpdateRecord(battleHall->saveData, BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType), BattleFrontierStats_GetHallLatestSpeciesIndex(battleHall->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType)), BattleFrontierStats_GetHallRecordStreakIndex(battleHall->challengeType), HEAP_ID_FIELD2, &unused, &unused2);
    } else {
        *updated = 0;
    }
}

void BattleHall_Save(BattleHall *battleHall, u8 saveType)
{
    u16 i;
    u8 u8Ptr[4];
    u16 u16Ptr[4];
    u32 u32Ptr[4];
    BattleFrontier *frontier;
    Pokemon *mon;
    BattleHallStreakFlags *streakFlags = BattleHallStreakFlags_Get(battleHall->saveData);

    frontier = SaveData_GetBattleFrontier(battleHall->saveData);

    *u8Ptr = battleHall->challengeType;
    BattleHallSave_SetMember(battleHall->hallSave, 0, 0, 0, u8Ptr);
    BattleHallSave_RecordSave(battleHall->hallSave, TRUE);

    mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(battleHall->saveData), battleHall->partySlots[0]);
    u16 currentSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    u16 speciesOnRecord = BattleFrontierStats_GetStat(frontier, BattleFrontierStats_GetHallLatestSpeciesIndex(battleHall->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallLatestSpeciesIndex(battleHall->challengeType)));

    *u8Ptr = battleHall->unk_05;
    BattleHallSave_SetMember(battleHall->hallSave, 1, 0, 0, u8Ptr);
    BattleFrontierStats_SetStat(frontier, BattleFrontierStats_GetHallLatestStreakIndex(battleHall->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallLatestStreakIndex(battleHall->challengeType)), battleHall->currentStreak);

    if (saveType != 2) {
        if (battleHall->challengeType != FRONTIER_CHALLENGE_MULTI_WFC) {
            BattleFrontierStats_SetStat(frontier, BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType)), battleHall->currentStreak);
        } else {
            if (speciesOnRecord != currentSpecies) {
                BattleFrontierStats_SetStat(frontier, BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType)), battleHall->currentStreak);
            } else {
                BattleFrontierStats_SetIfBetter(frontier, BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType)), battleHall->currentStreak);
            }
        }

        *u8Ptr = battleHall->streakActive;
        BattleHallStreakFlags_SetFlag(streakFlags, 5, battleHall->challengeType, 0, u8Ptr);

        if (battleHall->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            BattleFrontierStats_SetStat(frontier, STAT_HALL_WFC_STREAK_ACTIVE, BattleFrontierStats_GetHostFriendIdx(STAT_HALL_WFC_STREAK_ACTIVE), battleHall->streakActive);
        }
    }

    for (i = 0; i < (10 * 2); i++) {
        *u16Ptr = battleHall->trainerIDs[i];
        BattleHallSave_SetMember(battleHall->hallSave, 2, i, 0, u16Ptr);
    }

    for (i = 0; i < 2; i++) {
        *u8Ptr = battleHall->partySlots[i];
        BattleHallSave_SetMember(battleHall->hallSave, 3, i, 0, u8Ptr);
    }

    for (i = 0; i < NUM_POKEMON_TYPES; i++) {
        *u8Ptr = BattleHall_GetRankOfType(i, &battleHall->typeRanks[battleHall->challengeType][0]);
        BattleHall_SaveTypeRank(battleHall->saveData, battleHall->challengeType, i, *u8Ptr);
    }

    for (i = 0; i < (10 * 2); i++) {
        *u16Ptr = battleHall->unk_268[i];
        BattleHallSave_SetMember(battleHall->hallSave, 4, i, 0, u16Ptr);
    }

    BattleFrontierStats_SetStat(frontier, BattleFrontierStats_GetHallLatestSpeciesIndex(battleHall->challengeType), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallLatestSpeciesIndex(battleHall->challengeType)), Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL));
}

u16 ov104_022354B0(BattleHall *param0)
{
    param0->unk_05++;
    return param0->unk_05;
}

u16 ov104_022354BC(BattleHall *param0)
{
    return param0->unk_05;
}

u16 ov104_022354C0(BattleHall *param0, u8 param1)
{
    FrontierTrainerDataDTO v0;
    u8 v2 = (param0->unk_05 * 2) + param1;

    Heap_Free(BattleFrontier_GetTrainerData(&v0, param0->trainerIDs[v2], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return BattleTower_GetObjectIDFromTrainerClass(v0.trainerType);
}

void ov104_022354F4(BattleHall *param0)
{
    int v0;

    BattleHall_ResetRankOfAllTypes(&param0->typeRanks[param0->challengeType][0]);
    BattleHall_Save(param0, 1);

    return;
}

void ov104_02235518(BattleHall *param0)
{
    Pokemon *v0;

    param0->streakActive = 1;

    if (param0->currentRound < 18) {
        param0->currentRound++;
    }

    param0->unk_05 = 0;
    BattleHall_Save(param0, 0);

    return;
}

BOOL ov104_02235534(BattleHall *param0, u16 param1, u16 param2)
{
    int v0;

    switch (param1) {
    case 0:
        v0 = ov104_0222ED00(param0);
        break;
    case 1:
        v0 = ov104_0222ED44(param0);
        break;
    case 2:
        v0 = ov104_0222EDA8(param0);
        break;
    case 3:
        v0 = ov104_0222EE14(param0, param2);
        break;
    case 7:
        v0 = ov104_0222EE60(param0);
        break;
    }

    return v0;
}

u16 ov104_02235578(BattleHall *param0)
{
    u8 v0;
    static const u8 v1[18 + 1] = { 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 6, 6, 8, 8, 10, 10, 12 };
    static const u8 v2[18 + 1] = { 0, 6, 6, 6, 8, 8, 8, 10, 10, 10, 12, 12, 14, 15, 17, 17, 20, 20, 23 };

    if ((param0->challengeType == 0) || (param0->challengeType == 1)) {
        if (param0->currentRound >= 18) {
            v0 = v1[18];
        } else {
            v0 = v1[param0->currentRound];
        }
    } else {
        if (param0->currentRound >= 18) {
            v0 = v2[18];
        } else {
            v0 = v2[param0->currentRound];
        }
    }

    if (param0->challengeType == 0) {
        if ((param0->currentStreak == 50) || (param0->currentStreak == 170)) {
            v0 = 20;
        }
    } else if (param0->challengeType == 2) {
        v0 = 12;
    }

    return v0;
}

static u16 BattleHall_LoadTypeRanks(SaveData *saveData, u8 challengeType, u8 type, u16 *type1Rank, u16 *type2Rank)
{
    u16 rankPair = BattleFrontierStats_GetStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetHallCurrentTypeRanksIndex(challengeType, type), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallCurrentTypeRanksIndex(challengeType, type)));
    rankPair &= 0xff;

    *type1Rank = rankPair & 0xf;
    *type2Rank = rankPair >> 4;

    if (type % 2 == 0) {
        return *type1Rank;
    } else {
        return *type2Rank;
    }
}

static void BattleHall_SaveTypeRank(SaveData *saveData, u8 challengeType, u8 type, u8 value)
{
    u16 type1Rank, type2Rank;
    BattleHall_LoadTypeRanks(saveData, challengeType, type, &type1Rank, &type2Rank);

    u8 currentRanks = (type2Rank << 4) | type1Rank;
    u8 nybble = type % 2;

    if (nybble == 0) {
        currentRanks = currentRanks & 0xf0;
    } else {
        currentRanks = currentRanks & 0xf;
    }

    u8 newRank = value << (4 * nybble);
    currentRanks |= newRank;

    BattleFrontierStats_SetStat(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetHallCurrentTypeRanksIndex(challengeType, type), BattleFrontierStats_GetHostFriendIdx(BattleFrontierStats_GetHallCurrentTypeRanksIndex(challengeType, type)), currentRanks);
}

void ov104_022356A0(BattleHall *param0)
{
    u8 v0;
    int v1;

    if (param0->challengeType != 2) {
        for (v1 = 0; v1 < (18 - 1); v1++) {
            v0 = BattleHall_GetRankOfType(v1, &param0->typeRanks[param0->challengeType][0]);

            if (v0 < 10) {
                break;
            }
        }

        if (v1 == (18 - 1)) {
            for (v1 = 0; v1 < (18 - 1); v1++) {
                BattleHall_SetRankOfType(v1, &param0->typeRanks[param0->challengeType][0], 10 - 1);
            }
        }
    }

    return;
}

void BattleHall_CalcPlayerLevelSqrt(BattleHall *battleHall)
{
    int level = BattleHall_GetHighestLevelInParty(battleHall);
    battleHall->playerLevelSqrt = BattleHall_GetLevelSquareRoot(level);
}

static u16 ov104_02235704(BattleHall *param0)
{
    fx32 v0, v1;
    int v2, v3;
    int v4;
    u8 v5;
    float v6, v7;

    v5 = BattleHall_GetRankOfType(param0->selectedTypeIdx, &param0->typeRanks[param0->challengeType][0]);
    v2 = BattleHall_GetHighestLevelInParty(param0);

    if (param0->challengeType == 2) {
        return v2;
    }

    v0 = (FX32_CONST(v2) - (param0->playerLevelSqrt * 3));
    v6 = (FX_FX32_TO_F32(param0->playerLevelSqrt) * 5.0);

    if ((v2 / v6) < 1.0) {
        v6 = 1.0;
        v6 = (float)(v5 + 1 - 1);
    } else {
        v1 = FX32_CONST((v5 + 1 - 1) * v2);
        v6 = (FX_FX32_TO_F32(v1) / v6);
    }

    v7 = 0.0;

    for (v3 = 0; v3 < 18; v3++) {
        if (v3 == param0->selectedTypeIdx) {
            v7 += 1.0;
        } else {
            if (BattleHall_GetRankOfType(v3, &param0->typeRanks[param0->challengeType][0]) > 0) {
                v7 += 1.0;
            }
        }
    }

    if (v7 != 0.0) {
        v7 -= 1.0;
    }

    v7 *= 0.5;

    v6 = (FX_FX32_TO_F32(v0) + v6 + v7);
    v4 = (int)(v6);

    if (v6 != (int)v6) {
        v4++;
    }

    if (v4 > v2) {
        v4 = v2;
    }

    if (v4 > 100) {
        v4 = 100;
    }

    return v4;
}
