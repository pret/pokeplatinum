#ifndef POKEPLATINUM_RANKINGS_H
#define POKEPLATINUM_RANKINGS_H

#include "constants/heap.h"
#include "constants/string.h"

#include "savedata.h"
#include "string_gf.h"

#define MAX_RANKINGS_ENTRIES 6

#define RECORDS_WITH_RANKINGS_COUNT 13

typedef struct RankingEntry {
    u32 seed;
    u32 recordValue;
    u16 playerName[TRAINER_NAME_LEN + 1];
} RankingEntry;

typedef struct RankingList {
    RankingEntry entries[MAX_RANKINGS_ENTRIES];
} RankingList;

typedef struct Rankings {
    RankingList lists[RECORDS_WITH_RANKINGS_COUNT * 2];
} Rankings;

typedef struct RankingPlayerInfo {
    u32 seed;
    u32 recordValue;
    String *playerName;
} RankingPlayerInfo;

typedef struct RecordPlayersInfo {
    int count;
    RankingPlayerInfo players[MAX_RANKINGS_ENTRIES];
} RecordPlayersInfo;

u8 GetRecordsListLength(int listID);
u8 GetRecordsListFirstRecord(int listID);
void sub_0202E858(RankingEntry *entry);
BOOL sub_0202E870(RankingEntry *entry);
int Rankings_SaveSize(void);
void Rankings_Init(Rankings *rankings);
Rankings *SaveData_GetRankings(SaveData *saveData);
void Rankings_RemoveEntry(Rankings *rankings, int listID, u8 entryID);
int RankingsEntries_Size(void);
void *sub_0202E9FC(SaveData *saveData, enum HeapID heapID);
void sub_0202ED0C(SaveData *saveData, int param1, u8 param2, const void **inRankingsEntries, enum HeapID heapID);
RecordPlayersInfo *Rankings_GetCurrentPlayerInfo(SaveData *saveData, int listID, enum HeapID heapID);
RecordPlayersInfo *Rankings_GetConnectedPlayersInfo(Rankings *rankings, int listID, enum HeapID heapID);
void RecordPlayersInfo_Free(RecordPlayersInfo *entry);

#endif // POKEPLATINUM_RANKINGS_H
