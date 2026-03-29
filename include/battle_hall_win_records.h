#ifndef POKEPLATINUM_BATTLE_HALL_WIN_RECORDS_H
#define POKEPLATINUM_BATTLE_HALL_WIN_RECORDS_H

#include "constants/battle_frontier_stats.h"
#include "constants/heap.h"
#include "constants/species.h"

#include "savedata.h"

typedef struct BattleHallWinRecords {
    u32 alwaysNegative1;
    u16 singleStreaks[MAX_SPECIES];
    u16 doubleStreaks[MAX_SPECIES];
    u16 multiStreaks[MAX_SPECIES];
    u16 unused;
} BattleHallWinRecords;

int BattleHallWinRecords_SaveSize(void);
void BattleHallWinRecords_Init(BattleHallWinRecords *records);
BattleHallWinRecords *BattleHallWinRecords_Get(SaveData *saveData, enum HeapID heapID, int *resultCode);
int BattleHallWinRecords_Save(SaveData *saveData, BattleHallWinRecords *records);
u16 BattleHallWinRecords_GetRecordForSpecies(SaveData *saveData, BattleHallWinRecords *records, int challengeType, int species);
BOOL BattleHallWinRecords_UpdateRecord(SaveData *saveData, enum BattleFrontierStatsIndex recordIndex, enum BattleFrontierStatsIndex speciesIndex, int hostFriendID, int challengeType, enum HeapID heapID, int *resultCode, int *saveResult);

#endif // POKEPLATINUM_BATTLE_HALL_WIN_RECORDS_H
