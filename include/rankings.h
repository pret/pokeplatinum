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
    RANKING_STAT_BATTLE_TOWER_SINGLE_WINS = 0,
    RANKING_STAT_BATTLE_TOWER_DOUBLE_WINS,
    RANKING_STAT_BATTLE_TOWER_MULTI_NPC_WINS,
    RANKING_STAT_BATTLE_TOWER_MULTI_COMM_WINS,
    RANKING_STAT_BATTLE_TOWER_WIFI_WINS,
    RANKING_STAT_BATTLE_TOWER_AVG_WIN_STREAK,

    RANKING_STAT_POKEMON_DEFEATED,
    RANKING_STAT_POKEMON_CAUGHT,
    RANKING_STAT_POKEMON_HATCHED,
    RANKING_STAT_POKEMON_FISHED,

    RANKING_STAT_CONTEST_WINS,
    RANKING_STAT_CONTEST_ENTRIES,
    RANKING_STAT_RIBBONS_EARNED,

    RANKING_STAT_MAX
};

enum RankingMode {
    RANKING_MODE_GLOBAL = 0,
    RANKING_MODE_GROUP
};

enum RankingCategory {
    RANKING_CATEGORY_BATTLE_TOWER = 0,
    RANKING_CATEGORY_POKEMON,
    RANKING_CATEGORY_CONTEST,

    RANKING_CATEGORY_MAX
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

u8 Rankings_GetCategoryStatCount(int category);
u8 Rankings_GetCategoryFirstStat(int category);
void RankingEntry_Clear(RankingEntry *entry);
BOOL RankingEntry_HasPlayerName(RankingEntry *entry);
int Rankings_SaveSize(void);
void Rankings_Init(Rankings *rankings);
Rankings *SaveData_GetRankings(SaveData *saveData);
void Rankings_RemoveEntry(Rankings *rankings, int listID, u8 entryID);
int RankingsEntries_Size(void);
RankingsEntries *SaveData_GetRankingEntries(SaveData *saveData, enum HeapID heapID);
void SaveData_UpdateRankings(SaveData *saveData, int participantIndex, u8 participantCount, const void **rankingData, enum HeapID heapID);
RecordPlayersInfo *Rankings_GetCurrentPlayerInfo(SaveData *saveData, int category, enum HeapID heapID);
RecordPlayersInfo *Rankings_GetConnectedPlayersInfo(Rankings *rankings, int listID, enum HeapID heapID);
void RecordPlayersInfo_Free(RecordPlayersInfo *entry);

#endif // POKEPLATINUM_RANKINGS_H
