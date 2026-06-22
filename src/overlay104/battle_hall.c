#include "overlay104/battle_hall.h"

#include <nitro.h>

#include "constants/battle_frontier.h"

#include "struct_defs/battle_frontier.h"

#include "applications/frontier/battle_hall/main.h"
#include "overlay104/battle_hall.h"
#include "overlay104/battle_hall_helpers.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0222ECE8.h"

#include "battle_frontier_save.h"
#include "battle_frontier_stats.h"
#include "battle_hall_save.h"
#include "battle_hall_win_records.h"
#include "frontier_trainers.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"
#include "system_vars.h"
#include "vars_flags.h"

static void SetupNextOpponent(BattleHall *battleHall);
static u16 GetBattleHallAppSelectedCell(BattleHallAppArgs *args, u8 unused);
static u16 BattleHall_LoadTypeRanks(SaveData *saveData, u8 challengeType, u8 type, u16 *type1Rank, u16 *type2Rank);
static void BattleHall_SaveTypeRank(SaveData *saveData, u8 challengeType, u8 type, u8 value);
static u16 BattleHall_CalcOpponentsLevel(BattleHall *battleHall);

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
        battleHall->currentBattle = 0;

        BattleHallSave_Init(currentChallenge);

        if (battleHall->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            streakActive = SystemVars_GetWiFiFrontierCleared(SaveData_GetVarsFlags(battleHall->saveData));
        } else {
            streakActive = BattleHallStreakFlags_GetFlag(streakFlags, HALL_SAVE_STREAK_FLAGS, battleHall->challengeType, 0, NULL);
        }

        if (streakActive == TRUE) {
            battleHall->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(battleHall->saveData), BattleFrontierStats_GetHallLatestStreakIndex(battleHall->challengeType));
        } else {
            battleHall->currentStreak = 0;

            for (i = 0; i < NUM_POKEMON_TYPES; i++) {
                BattleHall_SaveTypeRank(battleHall->saveData, battleHall->challengeType, i, 0);
            }
        }

        battleHall->partySlots[0] = partySlot1;
        battleHall->partySlots[1] = partySlot2;
    } else {
        battleHall->challengeType = BattleHallSave_GetMember(currentChallenge, HALL_SAVE_CHALLENGE_TYPE, 0, 0, NULL);
        partySize = BattleHall_GetPlayerPartySize(battleHall->challengeType);
        battleHall->currentBattle = BattleHallSave_GetMember(currentChallenge, HALL_SAVE_CURRENT_BATTLE, 0, 0, NULL);
        battleHall->currentStreak = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(battleHall->saveData), BattleFrontierStats_GetHallLatestStreakIndex(battleHall->challengeType));

        for (i = 0; i < partySize; i++) {
            battleHall->partySlots[i] = BattleHallSave_GetMember(currentChallenge, HALL_SAVE_PARTY_SLOTS, i, 0, NULL);
        }

        for (i = 0; i < HALL_BATTLES_PER_ROUND * 2; i++) {
            battleHall->trainerIDs[i] = BattleHallSave_GetMember(currentChallenge, HALL_SAVE_TRAINER_IDS, i, 0, NULL);
        }

        for (i = 0; i < HALL_BATTLES_PER_ROUND * 2; i++) {
            battleHall->monIndices[i] = (u8)BattleHallSave_GetMember(currentChallenge, HALL_SAVE_POKEMON_INDICES, i, 0, NULL);
        }
    }

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(battleHall->saveData), battleHall->partySlots[i]);
        battleHall->heldItems[i] = Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL);
    }

    battleHall->unk_10 = 0;
    battleHall->currentRound = battleHall->currentStreak / HALL_BATTLES_PER_ROUND;

    if (battleHall->challengeType == FRONTIER_CHALLENGE_MULTI) {
        for (i = 0; i < NUM_POKEMON_TYPES; i++) {
            BattleHall_SetRankOfType(i, &battleHall->typeRanks[2][0], HALL_MAX_TYPE_RANK - 1);
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

void BattleHall_SetupNextOpponent(BattleHall *battleHall, u16 unused)
{
    SetupNextOpponent(battleHall);
}

static void SetupNextOpponent(BattleHall *battleHall)
{
    u8 battleType = FRONTIER_NEXT_BATTLE_NORMAL;

    u8 numOppTrainers = 1;
    if (battleHall->challengeType != FRONTIER_CHALLENGE_SINGLE) {
        numOppTrainers = 2;
    }

    u8 typeRank = BattleHall_GetRankOfType(battleHall->selectedTypeIdx, &battleHall->typeRanks[battleHall->challengeType][0]);
    battleHall->opponentsLevel = BattleHall_CalcOpponentsLevel(battleHall);

    BattleHall_PickOpponentTrainerClasses(battleHall->selectedTypeIdx, numOppTrainers, typeRank, battleHall->currentBattle, battleHall->trainerIDs);
    BattleHall_PickOpponentTrainers(battleHall->challengeType, numOppTrainers, battleHall->currentRound, typeRank, battleHall->currentBattle, battleHall->trainerIDs);

    u8 offset = battleHall->currentBattle * 2;

    if (battleHall->trainerIDs[offset] == FRONTIER_TRAINER_HALL_MATRON_ARGENTA_SILVER || battleHall->trainerIDs[offset] == FRONTIER_TRAINER_HALL_MATRON_ARGENTA_GOLD) {
        typeRank = (int)BattleHall_GetHallMatronTypeRank(battleHall);
    }

    if (battleHall->trainerIDs[offset] == FRONTIER_TRAINER_HALL_MATRON_ARGENTA_SILVER) {
        battleType = FRONTIER_NEXT_BATTLE_SILVER;
    }

    if (battleHall->trainerIDs[offset] == FRONTIER_TRAINER_HALL_MATRON_ARGENTA_GOLD) {
        battleType = FRONTIER_NEXT_BATTLE_GOLD;
    }

    Pokemon *playersMon = Party_GetPokemonBySlotIndex(battleHall->party, 0);
    BattleHall_PickNextOpponentPokemon(1, battleHall->selectedType, typeRank, battleHall->currentBattle, Pokemon_GetValue(playersMon, MON_DATA_SPECIES, NULL), battleHall->monIndices, battleType);
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
    BattleFrontierSave *frontier;
    Pokemon *mon;
    BattleHallStreakFlags *streakFlags = BattleHallStreakFlags_Get(battleHall->saveData);

    frontier = SaveData_GetBattleFrontier(battleHall->saveData);

    *u8Ptr = battleHall->challengeType;
    BattleHallSave_SetMember(battleHall->hallSave, HALL_SAVE_CHALLENGE_TYPE, 0, 0, u8Ptr);
    BattleHallSave_RecordSave(battleHall->hallSave, TRUE);

    mon = Party_GetPokemonBySlotIndex(SaveData_GetParty(battleHall->saveData), battleHall->partySlots[0]);
    u16 currentSpecies = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    u16 speciesOnRecord = BattleFrontierSave_GetStatAutoHostIdx(frontier, BattleFrontierStats_GetHallLatestSpeciesIndex(battleHall->challengeType));

    *u8Ptr = battleHall->currentBattle;
    BattleHallSave_SetMember(battleHall->hallSave, HALL_SAVE_CURRENT_BATTLE, 0, 0, u8Ptr);
    BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetHallLatestStreakIndex(battleHall->challengeType), battleHall->currentStreak);

    if (saveType != 2) {
        if (battleHall->challengeType != FRONTIER_CHALLENGE_MULTI_WFC) {
            BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType), battleHall->currentStreak);
        } else {
            if (speciesOnRecord != currentSpecies) {
                BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType), battleHall->currentStreak);
            } else {
                BattleFrontierSave_SetIfBetterAutoHostIdx(frontier, BattleFrontierStats_GetHallCurrentStreakIndex(battleHall->challengeType), battleHall->currentStreak);
            }
        }

        *u8Ptr = battleHall->saveStreak;
        BattleHallStreakFlags_SetFlag(streakFlags, HALL_SAVE_STREAK_FLAGS, battleHall->challengeType, 0, u8Ptr);

        if (battleHall->challengeType == FRONTIER_CHALLENGE_MULTI_WFC) {
            BattleFrontierSave_SetStatAutoHostIdx(frontier, STAT_HALL_WFC_STREAK_ACTIVE, battleHall->saveStreak);
        }
    }

    for (i = 0; i < HALL_BATTLES_PER_ROUND * 2; i++) {
        *u16Ptr = battleHall->trainerIDs[i];
        BattleHallSave_SetMember(battleHall->hallSave, HALL_SAVE_TRAINER_IDS, i, 0, u16Ptr);
    }

    for (i = 0; i < 2; i++) {
        *u8Ptr = battleHall->partySlots[i];
        BattleHallSave_SetMember(battleHall->hallSave, HALL_SAVE_PARTY_SLOTS, i, 0, u8Ptr);
    }

    for (i = 0; i < NUM_POKEMON_TYPES; i++) {
        *u8Ptr = BattleHall_GetRankOfType(i, &battleHall->typeRanks[battleHall->challengeType][0]);
        BattleHall_SaveTypeRank(battleHall->saveData, battleHall->challengeType, i, *u8Ptr);
    }

    for (i = 0; i < HALL_BATTLES_PER_ROUND * 2; i++) {
        *u16Ptr = battleHall->monIndices[i];
        BattleHallSave_SetMember(battleHall->hallSave, HALL_SAVE_POKEMON_INDICES, i, 0, u16Ptr);
    }

    BattleFrontierSave_SetStatAutoHostIdx(frontier, BattleFrontierStats_GetHallLatestSpeciesIndex(battleHall->challengeType), Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL));
}

u16 BattleHall_IncrementCurrentBattle(BattleHall *battleHall)
{
    battleHall->currentBattle++;
    return battleHall->currentBattle;
}

u16 BattleHall_GetCurrentBattle(BattleHall *battleHall)
{
    return battleHall->currentBattle;
}

u16 BattleHall_GetNextOpponentObjectID(BattleHall *battleHall, u8 trainerSlot)
{
    FrontierTrainerDataDTO trainer;
    u8 offset = (battleHall->currentBattle * 2) + trainerSlot;

    Heap_Free(BattleFrontier_GetTrainerData(&trainer, battleHall->trainerIDs[offset], HEAP_ID_FIELD2, NARC_INDEX_BATTLE__B_PL_TOWER__PL_BTDTR));

    return BattleTower_GetObjectIDFromTrainerClass(trainer.trainerType);
}

void BattleHall_SaveOnLoss(BattleHall *battleHall)
{
    BattleHall_ResetRankOfAllTypes(&battleHall->typeRanks[battleHall->challengeType][0]);
    BattleHall_Save(battleHall, 1);
}

void BattleHall_SaveOnCompletingRound(BattleHall *battleHall)
{
    battleHall->saveStreak = TRUE;

    if (battleHall->currentRound < HALL_MAX_DISTINCT_ROUNDS) {
        battleHall->currentRound++;
    }

    battleHall->currentBattle = 0;
    BattleHall_Save(battleHall, 0);
}

BOOL BattleHall_SendCommMessage(BattleHall *battleHall, u16 command, u16 arg)
{
    int success;

    switch (command) {
    case 0:
        success = ov104_0222ED00(battleHall);
        break;
    case 1:
        success = ov104_0222ED44(battleHall);
        break;
    case 2:
        success = ov104_0222EDA8(battleHall);
        break;
    case 3:
        success = ov104_0222EE14(battleHall, arg);
        break;
    case 7:
        success = ov104_0222EE60(battleHall);
        break;
    }

    return success;
}

u16 BattleHall_GetEarnedBP(BattleHall *battleHall)
{
    u8 bp;
    static const u8 sBPPerRoundSolo[HALL_MAX_DISTINCT_ROUNDS + 1] = { 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 6, 6, 8, 8, 10, 10, 12 };
    static const u8 sBPPerRoundWiFi[HALL_MAX_DISTINCT_ROUNDS + 1] = { 0, 6, 6, 6, 8, 8, 8, 10, 10, 10, 12, 12, 14, 15, 17, 17, 20, 20, 23 };

    if (battleHall->challengeType == FRONTIER_CHALLENGE_SINGLE || battleHall->challengeType == FRONTIER_CHALLENGE_DOUBLE) {
        if (battleHall->currentRound >= HALL_MAX_DISTINCT_ROUNDS) {
            bp = sBPPerRoundSolo[HALL_MAX_DISTINCT_ROUNDS];
        } else {
            bp = sBPPerRoundSolo[battleHall->currentRound];
        }
    } else {
        if (battleHall->currentRound >= HALL_MAX_DISTINCT_ROUNDS) {
            bp = sBPPerRoundWiFi[HALL_MAX_DISTINCT_ROUNDS];
        } else {
            bp = sBPPerRoundWiFi[battleHall->currentRound];
        }
    }

    if (battleHall->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (battleHall->currentStreak == HALL_STREAK_SILVER_BATTLE || battleHall->currentStreak == HALL_STREAK_GOLD_BATTLE) {
            bp = 20;
        }
    } else if (battleHall->challengeType == FRONTIER_CHALLENGE_MULTI) {
        bp = 12;
    }

    return bp;
}

static u16 BattleHall_LoadTypeRanks(SaveData *saveData, u8 challengeType, u8 type, u16 *type1Rank, u16 *type2Rank)
{
    u16 rankPair = BattleFrontierSave_GetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetHallCurrentTypeRanksIndex(challengeType, type));
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

    BattleFrontierSave_SetStatAutoHostIdx(SaveData_GetBattleFrontier(saveData), BattleFrontierStats_GetHallCurrentTypeRanksIndex(challengeType, type), currentRanks);
}

void BattleHall_CapTypeRanks(BattleHall *battleHall)
{
    int type;

    if (battleHall->challengeType != FRONTIER_CHALLENGE_MULTI) {
        for (type = 0; type < NUM_POKEMON_TYPES - 1; type++) {
            u8 rank = BattleHall_GetRankOfType(type, &battleHall->typeRanks[battleHall->challengeType][0]);

            if (rank < HALL_MAX_TYPE_RANK) {
                break;
            }
        }

        if (type == NUM_POKEMON_TYPES - 1) {
            for (type = 0; type < NUM_POKEMON_TYPES - 1; type++) {
                BattleHall_SetRankOfType(type, &battleHall->typeRanks[battleHall->challengeType][0], HALL_MAX_TYPE_RANK - 1);
            }
        }
    }
}

void BattleHall_CalcPlayerLevelSqrt(BattleHall *battleHall)
{
    int level = BattleHall_GetHighestLevelInParty(battleHall);
    battleHall->playerLevelSqrt = BattleHall_GetLevelSquareRoot(level);
}

static u16 BattleHall_CalcOpponentsLevel(BattleHall *battleHall)
{
    fx32 baseLevel;
    int type;

    u8 typeRank = BattleHall_GetRankOfType(battleHall->selectedTypeIdx, &battleHall->typeRanks[battleHall->challengeType][0]);
    int playersLevel = BattleHall_GetHighestLevelInParty(battleHall);

    if (battleHall->challengeType == FRONTIER_CHALLENGE_MULTI) {
        return playersLevel;
    }

    baseLevel = FX32_CONST(playersLevel) - battleHall->playerLevelSqrt * 3;
    float rankFactor = FX_FX32_TO_F32(battleHall->playerLevelSqrt) * 5.0;

    if (playersLevel / rankFactor < 1.0) {
        rankFactor = typeRank + 1 - 1;
    } else {
        fx32 product = FX32_CONST(typeRank * playersLevel);
        rankFactor = FX_FX32_TO_F32(product) / rankFactor;
    }

    float numBattledTypesFactor = 0.0;

    for (type = 0; type < NUM_POKEMON_TYPES; type++) {
        if (type == battleHall->selectedTypeIdx) {
            numBattledTypesFactor += 1.0;
        } else {
            if (BattleHall_GetRankOfType(type, &battleHall->typeRanks[battleHall->challengeType][0]) > 0) {
                numBattledTypesFactor += 1.0;
            }
        }
    }

    if (numBattledTypesFactor != 0.0) {
        numBattledTypesFactor -= 1.0;
    }

    numBattledTypesFactor *= 0.5;

    float opponentsLevelFloat = FX_FX32_TO_F32(baseLevel) + rankFactor + numBattledTypesFactor;

    int opponentsLevel = (int)(opponentsLevelFloat);
    if (opponentsLevelFloat != (int)opponentsLevelFloat) {
        opponentsLevel++;
    }

    if (opponentsLevel > playersLevel) {
        opponentsLevel = playersLevel;
    }

    if (opponentsLevel > MAX_POKEMON_LEVEL) {
        opponentsLevel = MAX_POKEMON_LEVEL;
    }

    return opponentsLevel;
}
