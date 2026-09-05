#include "rankings.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_defs/battle_frontier.h"

#include "battle_frontier_save.h"
#include "charcode_util.h"
#include "game_records.h"
#include "heap.h"
#include "record_mixed_rng.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
#include "trainer_info.h"

#include "res/text/bank/rankings_machine.h"

typedef struct RankingSortBuffer {
    int savedEntryCount;
    int mixedEntryCount;
    int totalEntryCount;
    RankingEntry *sortedEntries[MAX_RANKINGS_ENTRIES * 2 - 1];
    RankingEntry *savedEntries[MAX_RANKINGS_ENTRIES];
    RankingList list;
} RankingSortBuffer;

typedef struct RecordListInfo {
    u8 length;
    u8 firstStat;
} RecordListInfo;

static const RecordListInfo sRecordsListsInfo[] = {
    { RANKING_STAT_BATTLE_TOWER_COUNT, RANKING_STAT_BATTLE_TOWER_SINGLE_WINS },
    { RANKING_STAT_POKEMON_COUNT, RANKING_STAT_POKEMON_DEFEATED },
    { RANKING_STAT_CONTEST_COUNT, RANKING_STAT_CONTEST_WINS }
};

u8 GetRecordsListLength(int listID)
{
    return sRecordsListsInfo[listID].length;
}

u8 GetRecordsListFirstRecord(int listID)
{
    return sRecordsListsInfo[listID].firstStat;
}

void RankingEntry_Clear(RankingEntry *entry)
{
    entry->seed = 0;
    entry->recordValue = 0;

    CharCode_FillWithEOS(entry->playerName, TRAINER_NAME_LEN + 1);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);
}

BOOL RankingEntry_HasPlayerName(RankingEntry *entry)
{
    return CharCode_Length(entry->playerName) != 0;
}

int Rankings_SaveSize(void)
{
    return sizeof(Rankings);
}

void Rankings_Init(Rankings *rankings)
{
    MI_CpuClear8(rankings, sizeof(Rankings));

    for (int listID = 0; listID < RANKING_STAT_MAX * 2; listID++) {
        for (int entryID = 0; entryID < MAX_RANKINGS_ENTRIES; entryID++) {
            RankingEntry_Clear(&(rankings->lists[listID].entries[entryID]));
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);
}

Rankings *SaveData_GetRankings(SaveData *saveData)
{
    SaveData_Checksum(SAVE_TABLE_ENTRY_RANKINGS);
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_RANKINGS);
}

void Rankings_RemoveEntry(Rankings *rankings, int listID, u8 entryID)
{
    if (entryID >= MAX_RANKINGS_ENTRIES) {
        GF_ASSERT(entryID < MAX_RANKINGS_ENTRIES);
        return;
    }

    RankingList *list = &rankings->lists[listID];

    for (int i = entryID; i < MAX_RANKINGS_ENTRIES - 1; i++) {
        list->entries[i] = list->entries[i + 1];
    }

    RankingEntry_Clear(&(list->entries[MAX_RANKINGS_ENTRIES - 1]));
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);
}

int RankingsEntries_Size(void)
{
    return sizeof(RankingsEntries);
}

static u32 *GetRecordValues(SaveData *saveData, enum HeapID heapID)
{
    int i;
    u32 recordValue;
    static const int recordIDs[] = {
        0,
        2,
        4,
        6,
        8,
        RECORD_BATTLE_TOWER_VICTORIES,
        RECORD_FAINTED_IN_BATTLE,
        RECORD_CAUGHT_POKEMON,
        RECORD_EGGS_HATCHED,
        RECORD_CAUGHT_FISH,
        RECORD_OFFICIAL_CONTEST_WINS,
        RECORD_SUPER_CONTEST_PARTICIPATIONS,
        RECORD_RIBBONS_WON
    };

    GameRecords *gameRecords = SaveData_GetGameRecords(saveData);
    BattleFrontierSave *frontier = SaveData_GetBattleFrontier(saveData);
    u32 *recordValues = Heap_AllocAtEnd(heapID, sizeof(u32) * RANKING_STAT_MAX);

    for (i = 0; i < RANKING_STAT_MAX; i++) {
        switch (i) {
        case RANKING_STAT_BATTLE_TOWER_AVG_WIN_STREAK:
            recordValue = GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_TOWER_CHALLENGES);

            if (recordValue > 0) {
                recordValue = GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_TOWER_VICTORIES) / recordValue;
            }

            recordValues[i] = recordValue;
            break;
        case RANKING_STAT_CONTEST_WINS:
            recordValue = GameRecords_GetRecordValue(gameRecords, RECORD_OFFICIAL_CONTEST_WINS);
            recordValue += GameRecords_GetRecordValue(gameRecords, RECORD_LINK_CONTEST_WINS);
            recordValues[i] = recordValue;
            break;
        case RANKING_STAT_CONTEST_ENTRIES:
            recordValue = GameRecords_GetRecordValue(gameRecords, RECORD_SUPER_CONTEST_PARTICIPATIONS);
            recordValue += GameRecords_GetRecordValue(gameRecords, RECORD_LINK_CONTEST_PARTICIPATIONS);

            if (recordValue > 0) {
                recordValue = (recordValues[RANKING_STAT_CONTEST_WINS] * 100) / recordValue;
            }

            recordValues[i] = recordValue;
            break;
        default:
            if (i >= RANKING_STAT_BATTLE_TOWER_SINGLE_WINS && i <= RANKING_STAT_BATTLE_TOWER_WIFI_WINS) {
                recordValues[i] = BattleFrontierSave_GetStat(frontier, recordIDs[i], 0xFF);
            } else {
                recordValues[i] = GameRecords_GetRecordValue(gameRecords, recordIDs[i]);
            }
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);

    return recordValues;
}

RankingsEntries *SaveData_GetRankingEntries(SaveData *saveData, enum HeapID heapID)
{
    u32 seed, unused;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);

    RankingsEntries *rankingsEntries = Heap_AllocAtEnd(heapID, sizeof(RankingsEntries));
    MI_CpuClear8(rankingsEntries, sizeof(RankingsEntries));

    seed = RecordMixedRNG_GetEntrySeed(SaveData_GetRecordMixedRNG(saveData), RECORD_MIXED_RNG_PLAYER_OVERRIDE);
    String *string = TrainerInfo_NameNewString(trainerInfo, heapID);
    u32 *recordValues = GetRecordValues(saveData, heapID);

    for (int i = 0; i < RANKING_STAT_MAX; i++) {
        unused = 0;

        rankingsEntries->entries[i].seed = seed;
        String_ToChars(string, rankingsEntries->entries[i].playerName, TRAINER_NAME_LEN + 1);
        rankingsEntries->entries[i].recordValue = recordValues[i];
    }

    Heap_Free(recordValues);
    String_Free(string);
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);

    return rankingsEntries;
}

static void RankingList_ClearEntries(RankingList *list)
{
    for (int i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
        RankingEntry_Clear(&list->entries[i]);
    }
}

static BOOL CompareEntriesSeedsAndNames(const RankingEntry *entry0, const RankingEntry *entry1)
{
    if (entry0->seed != entry1->seed) {
        return FALSE;
    }

    if (CharCode_Compare(entry0->playerName, entry1->playerName)) {
        return FALSE;
    }

    return TRUE;
}

static BOOL RankingEntryExists(RankingSortBuffer *sortBuffer, const RankingEntry *entry)
{
    for (int i = 0; i < sortBuffer->mixedEntryCount; i++) {
        if (CompareEntriesSeedsAndNames(sortBuffer->sortedEntries[i], entry)) {
            return TRUE;
        }
    }

    return FALSE;
}

static void SortRankings(Rankings *rankings, RankingSortBuffer *sortBuffer, u32 seed, u8 statIndex, u8 scope, RankingsEntries **rankingsEntries, u8 playerCount, enum HeapID heapID)
{
    int i;
    RankingList *list;

    MI_CpuClear8(sortBuffer, sizeof(RankingSortBuffer));

    if (scope == RANKING_SCOPE_GLOBAL) {
        list = &(rankings->lists[statIndex]);

        MI_CpuCopy8(list, &(sortBuffer->list), sizeof(RankingList));

        for (i = 0; i < playerCount; i++) {
            sortBuffer->sortedEntries[sortBuffer->mixedEntryCount++] = &(rankingsEntries[i]->entries[statIndex]);
        }

        for (i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
            if (!RankingEntry_HasPlayerName(&(sortBuffer->list.entries[i]))) {
                continue;
            }

            if (RankingEntryExists(sortBuffer, &(sortBuffer->list.entries[i]))) {
                continue;
            }

            sortBuffer->savedEntries[sortBuffer->savedEntryCount++] = &(sortBuffer->list.entries[i]);
        }
    } else {
        list = &(rankings->lists[statIndex + RANKING_STAT_MAX]);
        MI_CpuCopy8(list, &(sortBuffer->list), sizeof(RankingList));

        for (i = 0; i < playerCount; i++) {
            if ((rankingsEntries[i]->entries[statIndex].seed == 0) || (rankingsEntries[i]->entries[statIndex].seed != seed)) {
                continue;
            }

            sortBuffer->sortedEntries[sortBuffer->mixedEntryCount++] = &(rankingsEntries[i]->entries[statIndex]);
        }

        for (i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
            if (!RankingEntry_HasPlayerName(&(sortBuffer->list.entries[i]))) {
                continue;
            }

            if (sortBuffer->list.entries[i].seed != seed) {
                continue;
            }

            if (RankingEntryExists(sortBuffer, &(sortBuffer->list.entries[i]))) {
                continue;
            }

            sortBuffer->savedEntries[sortBuffer->savedEntryCount++] = &(sortBuffer->list.entries[i]);
        }
    }

    sortBuffer->totalEntryCount = sortBuffer->mixedEntryCount + sortBuffer->savedEntryCount;

    for (i = 0; i < sortBuffer->savedEntryCount; i++) {
        sortBuffer->sortedEntries[i + sortBuffer->mixedEntryCount] = sortBuffer->savedEntries[i];
    }

    for (i = 0; i < (sortBuffer->totalEntryCount - 1); i++) {
        for (int j = (sortBuffer->totalEntryCount - 1); j > i; j--) {
            if (sortBuffer->sortedEntries[i]->recordValue >= sortBuffer->sortedEntries[j]->recordValue) {
                continue;
            }

            RankingEntry *tempEntry = sortBuffer->sortedEntries[i];

            sortBuffer->sortedEntries[i] = sortBuffer->sortedEntries[j];
            sortBuffer->sortedEntries[j] = tempEntry;
        }
    }

    RankingList_ClearEntries(list);

    for (i = 0; (i < MAX_RANKINGS_ENTRIES && i < sortBuffer->totalEntryCount); i++) {
        list->entries[i] = *(sortBuffer->sortedEntries[i]);
    }
}

static void SortRankingsForStat(Rankings *rankings, u32 seed, u8 statIndex, RankingsEntries **rankingsEntries, u8 playerCount, enum HeapID heapID)
{
    RankingSortBuffer *sortBuffer = Heap_AllocAtEnd(heapID, sizeof(RankingSortBuffer));

    SortRankings(rankings, sortBuffer, seed, statIndex, RANKING_SCOPE_GLOBAL, rankingsEntries, playerCount, heapID);

    if (seed != 0) {
        SortRankings(rankings, sortBuffer, seed, statIndex, RANKING_SCOPE_GROUP, rankingsEntries, playerCount, heapID);
    }

    Heap_Free(sortBuffer);
}

void SaveData_UpdateRankings(SaveData *saveData, int playerIndex, u8 inEntryCount, const void **inRankingsEntries, enum HeapID heapID)
{
    u8 i;
    u32 seed;
    RankingsEntries *rankingsEntries[MAX_RANKINGS_ENTRIES - 1];
    Rankings *rankings = SaveData_GetRankings(saveData);

    seed = RecordMixedRNG_GetEntrySeed(SaveData_GetRecordMixedRNG(saveData), RECORD_MIXED_RNG_PLAYER_OVERRIDE);
    u8 playerCount = 0;

    for (i = 0; i < inEntryCount; i++) {
        if (i == playerIndex) {
            continue;
        }

        if (inRankingsEntries[i] == NULL) {
            continue;
        }

        rankingsEntries[playerCount++] = (RankingsEntries *)inRankingsEntries[i];
    }

    if (playerCount == 0) {
        return;
    }

    for (i = 0; i < RANKING_STAT_MAX; i++) {
        SortRankingsForStat(rankings, seed, i, rankingsEntries, playerCount, heapID);
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);

    return;
}

RecordPlayersInfo *Rankings_GetCurrentPlayerInfo(SaveData *saveData, int listID, enum HeapID heapID)
{
    u32 seed;
    u32 *recordValues;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);
    RecordPlayersInfo *playersInfo = Heap_Alloc(heapID, sizeof(RecordPlayersInfo));

    MI_CpuClear8(playersInfo, sizeof(RecordPlayersInfo));

    seed = RecordMixedRNG_GetEntrySeed(SaveData_GetRecordMixedRNG(saveData), RECORD_MIXED_RNG_PLAYER_OVERRIDE);
    recordValues = GetRecordValues(saveData, heapID);
    playersInfo->count = GetRecordsListLength(listID);
    u8 firstRecordID = GetRecordsListFirstRecord(listID);

    for (int i = 0; i < playersInfo->count; i++) {
        playersInfo->players[i].seed = seed;
        playersInfo->players[i].recordValue = recordValues[i + firstRecordID];
        playersInfo->players[i].playerName = TrainerInfo_NameNewString(trainerInfo, heapID);
    }

    Heap_Free(recordValues);
    return playersInfo;
}

RecordPlayersInfo *Rankings_GetConnectedPlayersInfo(Rankings *rankings, int listID, enum HeapID heapID)
{
    RecordPlayersInfo *playersInfo = Heap_Alloc(heapID, sizeof(RecordPlayersInfo));

    MI_CpuClear8(playersInfo, sizeof(RecordPlayersInfo));
    RankingList *list = &rankings->lists[listID];

    for (int i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
        if (!RankingEntry_HasPlayerName(&list->entries[i])) {
            continue;
        }

        playersInfo->players[playersInfo->count].seed = list->entries[i].seed;
        playersInfo->players[playersInfo->count].recordValue = list->entries[i].recordValue;
        playersInfo->players[playersInfo->count].playerName = String_Init(TRAINER_NAME_LEN + 1, heapID);
        String_CopyChars(playersInfo->players[playersInfo->count].playerName, list->entries[i].playerName);
        ++playersInfo->count;
    }

    return playersInfo;
}

void RecordPlayersInfo_Free(RecordPlayersInfo *playersInfo)
{
    for (int i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
        if (playersInfo->players[i].playerName != NULL) {
            String_Free(playersInfo->players[i].playerName);
        }
    }

    MI_CpuClear8(playersInfo, sizeof(RecordPlayersInfo));

    Heap_Free(playersInfo);
    playersInfo = NULL;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);
}
