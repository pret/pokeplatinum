#ifndef POKEPLATINUM_UNK_02030880_H
#define POKEPLATINUM_UNK_02030880_H

#include "constants/heap.h"

#include "struct_decls/struct_020308A0_decl.h"

#include "savedata.h"
#include "unk_0203061C.h"

int BattleHallWinRecords_SaveSize(void);
void BattleHallWinRecords_Init(BattleHallWinRecords *records);
BattleHallWinRecords *BattleHallWinRecords_Get(SaveData *saveData, enum HeapID heapID, int *resultCode);
int BattleHallWinRecords_Save(SaveData *saveData, BattleHallWinRecords *records);
u16 BattleFrontierStats_GetHallRecordForSpecies(SaveData *saveData, BattleHallWinRecords *records, int challengeType, int species);
BOOL BattleHallWinRecords_UpdateRecord(SaveData *saveData, enum BattleFrontierStatsIndex recordIndex, enum BattleFrontierStatsIndex speciesIndex, int hostFriendID, int challengeType, enum HeapID heapID, int *resultCode, int *saveResult);

#endif // POKEPLATINUM_UNK_02030880_H
