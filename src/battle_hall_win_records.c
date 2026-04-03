#include "battle_hall_win_records.h"

#include <nitro.h>

#include "constants/battle_frontier.h"

#include "struct_defs/battle_frontier.h"

#include "savedata/save_table.h"

#include "battle_frontier_stats.h"
#include "heap.h"
#include "savedata.h"

static u16 WriteWinRecord(BattleHallWinRecords *records, int challengeType, int species, u16 streak);

int BattleHallWinRecords_SaveSize(void)
{
    GF_ASSERT(sizeof(BattleHallWinRecords) % 4 == 0);
    return sizeof(BattleHallWinRecords);
}

void BattleHallWinRecords_Init(BattleHallWinRecords *records)
{
    MI_CpuClear8(records, sizeof(BattleHallWinRecords));
    records->alwaysNegative1 = -1;
}

BattleHallWinRecords *BattleHallWinRecords_Get(SaveData *saveData, enum HeapID heapID, int *resultCode)
{
    return SaveData_BattleHallWinRecords(saveData, heapID, resultCode);
}

int BattleHallWinRecords_Save(SaveData *saveData, BattleHallWinRecords *records)
{
    return SaveData_SaveBattleHallWinRecords(saveData, records) | SaveData_Save(saveData);
}

u16 BattleHallWinRecords_GetRecordForSpecies(SaveData *saveData, BattleHallWinRecords *records, int challengeType, int species)
{
    if (!SaveData_MiscSaveBlock_InitFlag(saveData)) {
        return 0;
    }

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        return records->singleStreaks[species];
    case FRONTIER_CHALLENGE_DOUBLE:
        return records->doubleStreaks[species];
    case FRONTIER_CHALLENGE_MULTI:
        return records->multiStreaks[species];
    }

    GF_ASSERT(0);
    return 0;
}

static u16 WriteWinRecord(BattleHallWinRecords *records, int challengeType, int species, u16 streak)
{
    if (streak > 9999) {
        streak = 9999;
    }

    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
        records->singleStreaks[species] = streak;
        break;
    case FRONTIER_CHALLENGE_DOUBLE:
        records->doubleStreaks[species] = streak;
        break;
    case FRONTIER_CHALLENGE_MULTI:
        records->multiStreaks[species] = streak;
        break;
    default:
        GF_ASSERT(0);
        return 0;
    }

    return streak;
}

static u16 UpdateWinRecord(SaveData *saveData, BattleHallWinRecords *records, int challengeType, int species, u16 newRecord)
{
    if (SaveData_MiscSaveBlock_InitFlag(saveData) == 0) {
        return 0;
    }

    u16 currentRecord = BattleHallWinRecords_GetRecordForSpecies(saveData, records, challengeType, species);

    if (currentRecord < newRecord) {
        return WriteWinRecord(records, challengeType, species, newRecord);
    }
    if (currentRecord > 9999) {
        return WriteWinRecord(records, challengeType, species, 9999);
    }

    return currentRecord;
}

BOOL BattleHallWinRecords_UpdateRecord(SaveData *saveData, enum BattleFrontierStatsIndex recordIndex, enum BattleFrontierStatsIndex speciesIndex, int hostFriendID, int challengeType, enum HeapID heapID, int *resultCode, int *saveResult)
{
    u16 newRecord, currentRecord;
    int species;
    BOOL updated = 0;

    GF_ASSERT(recordIndex >= 34 && recordIndex <= 60);
    GF_ASSERT(speciesIndex == STAT_HALL_LATEST_SPECIES_SINGLE || speciesIndex == STAT_HALL_LATEST_SPECIES_DOUBLE || speciesIndex == STAT_HALL_LATEST_SPECIES_MULTI);

    *resultCode = 1;
    *saveResult = 2;

    if (hostFriendID != 0xff) {
        return updated;
    }

    if (SaveData_MiscSaveBlock_InitFlag(saveData) == 0) {
        return updated;
    }

    BattleFrontier *frontier = SaveData_GetBattleFrontier(saveData);
    newRecord = BattleFrontierStats_GetStat(frontier, recordIndex, hostFriendID);
    species = BattleFrontierStats_GetStat(frontier, speciesIndex, hostFriendID);
    BattleHallWinRecords *records = BattleHallWinRecords_Get(saveData, heapID, resultCode);

    if (*resultCode != LOAD_RESULT_OK) {
        currentRecord = 0;
    } else {
        currentRecord = BattleHallWinRecords_GetRecordForSpecies(saveData, records, challengeType, species);
    }

    UpdateWinRecord(saveData, records, challengeType, species, newRecord);

    if (newRecord != currentRecord) {
        *saveResult = BattleHallWinRecords_Save(saveData, records);
        updated = 1;
    }

    if (records != NULL) {
        Heap_Free(records);
    }

    return updated;
}
