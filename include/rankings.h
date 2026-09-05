#ifndef POKEPLATINUM_RANKINGS_H
#define POKEPLATINUM_RANKINGS_H

#include "constants/heap.h"
#include "constants/string.h"

#include "savedata.h"
#include "string_gf.h"

#define MAX_RANKINGS_ENTRIES 6

#define RANKING_STAT_BATTLE_TOWER_COUNT 6
#define RANKING_STAT_POKEMON_COUNT      4
#define RANKING_STAT_CONTEST_COUNT      3

enum RankingStat {
    RANKING_STAT_BATTLE_TOWER_SINGLE_WINS     = 0,
    RANKING_STAT_BATTLE_TOWER_DOUBLE_WINS     = 1,
    RANKING_STAT_BATTLE_TOWER_MULTI_NPC_WINS  = 2,
    RANKING_STAT_BATTLE_TOWER_MULTI_COMM_WINS = 3,
    RANKING_STAT_BATTLE_TOWER_WIFI_WINS       = 4,
    RANKING_STAT_BATTLE_TOWER_AVG_WIN_STREAK  = 5,

    RANKING_STAT_POKEMON_DEFEATED = 6,
    RANKING_STAT_POKEMON_CAUGHT   = 7,
    RANKING_STAT_POKEMON_HATCHED  = 8,
    RANKING_STAT_POKEMON_FISHED   = 9,

    RANKING_STAT_CONTEST_WINS    = 10,
    RANKING_STAT_CONTEST_ENTRIES = 11,
    RANKING_STAT_RIBBONS_EARNED  = 12,

    RANKING_STAT_MAX = 13
};

enum RankingScope {
    RANKING_SCOPE_GLOBAL = 0,
    RANKING_SCOPE_GROUP
};

typedef struct RankingEntry {
    u32 seed;
    u32 recordValue;
    u16 playerName[TRAINER_NAME_LEN + 1];
} RankingEntry;

typedef struct RankingList {
    RankingEntry entries[MAX_RANKINGS_ENTRIES];
} RankingList;

typedef struct Rankings {
    RankingList lists[RANKING_STAT_MAX * 2];
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

typedef struct RankingsEntries {
    RankingEntry entries[RANKING_STAT_MAX];
} RankingsEntries;

u8 GetRecordsListLength(int listID);
u8 GetRecordsListFirstRecord(int listID);
void sub_0202E858(RankingEntry *entry);
BOOL sub_0202E870(RankingEntry *entry);
int Rankings_SaveSize(void);
void Rankings_Init(Rankings *rankings);
Rankings *SaveData_GetRankings(SaveData *saveData);
void Rankings_RemoveEntry(Rankings *rankings, int listID, u8 entryID);
int RankingsEntries_Size(void);
RankingsEntries *SaveData_GetRankingEntries(SaveData *saveData, enum HeapID heapID);
void SaveData_UpdateRankings(SaveData *saveData, int playerIndex, u8 inEntryCount, const void **inRankingsEntries, enum HeapID heapID);
RecordPlayersInfo *Rankings_GetCurrentPlayerInfo(SaveData *saveData, int listID, enum HeapID heapID);
RecordPlayersInfo *Rankings_GetConnectedPlayersInfo(Rankings *rankings, int listID, enum HeapID heapID);
void RecordPlayersInfo_Free(RecordPlayersInfo *entry);

#endif // POKEPLATINUM_RANKINGS_H
