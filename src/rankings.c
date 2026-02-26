#include "rankings.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_defs/battle_frontier.h"

#include "charcode_util.h"
#include "game_records.h"
#include "heap.h"
#include "record_mixed_rng.h"
#include "save_player.h"
#include "savedata.h"
#include "string_gf.h"
#include "trainer_info.h"
#include "unk_0203061C.h"

#include "res/text/bank/rankings_machine.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    RankingEntry *unk_0C[11];
    RankingEntry *unk_38[6];
    RankingList list;
} UnkStruct_0202EABC;

typedef struct RankingsEntries {
    RankingEntry entries[RECORDS_WITH_RANKINGS_COUNT];
} RankingsEntries;

static const u8 sRecordsListsInfo[][2] = {
    { 6, 0 },
    { 4, 6 },
    { 3, 10 }
};

u8 GetRecordsListLength(int listID)
{
    return sRecordsListsInfo[listID][0];
}

u8 GetRecordsListFirstRecord(int listID)
{
    return sRecordsListsInfo[listID][1];
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
    if (CharCode_Length(entry->playerName) == 0) {
        return FALSE;
    }

    return TRUE;
}

int Rankings_SaveSize(void)
{
    return sizeof(Rankings);
}

void Rankings_Init(Rankings *rankings)
{
    int listID, entryID;

    MI_CpuClear8(rankings, sizeof(Rankings));

    for (listID = 0; listID < RECORDS_WITH_RANKINGS_COUNT * 2; listID++) {
        for (entryID = 0; entryID < MAX_RANKINGS_ENTRIES; entryID++) {
            RankingEntry_Clear(&(rankings->lists[listID].entries[entryID]));
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);
}

Rankings *sub_0202E8C0(SaveData *saveData)
{
    SaveData_Checksum(SAVE_TABLE_ENTRY_RANKINGS);
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_RANKINGS);
}

void Rankings_RemoveEntry(Rankings *rankings, int listID, u8 entryID)
{
    int i;
    RankingList *list;

    if (entryID >= MAX_RANKINGS_ENTRIES) {
        GF_ASSERT(entryID < MAX_RANKINGS_ENTRIES);
        return;
    }

    list = &(rankings->lists[listID]);

    for (i = entryID; i < MAX_RANKINGS_ENTRIES - 1; i++) {
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
    GameRecords *gameRecords;
    BattleFrontier *frontier;
    u32 *recordValues;
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
        RECORD_SUPER_CONTEST_WINS,
        RECORD_SUPER_CONTEST_PARTICIPATIONS,
        RECORD_RIBBONS_WON
    };

    gameRecords = SaveData_GetGameRecords(saveData);
    frontier = SaveData_GetBattleFrontier(saveData);
    recordValues = Heap_AllocAtEnd(heapID, sizeof(u32) * RECORDS_WITH_RANKINGS_COUNT);

    for (i = 0; i < RECORDS_WITH_RANKINGS_COUNT; i++) {
        switch (i) {
        case 5:
            recordValue = GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_TOWER_CHALLENGES);

            if (recordValue > 0) {
                recordValue = GameRecords_GetRecordValue(gameRecords, RECORD_BATTLE_TOWER_VICTORIES) / recordValue;
            }

            recordValues[i] = recordValue;
            break;
        case 10:
            recordValue = GameRecords_GetRecordValue(gameRecords, RECORD_SUPER_CONTEST_WINS);
            recordValue += GameRecords_GetRecordValue(gameRecords, RECORD_LINK_CONTEST_WINS);
            recordValues[i] = recordValue;
            break;
        case 11:
            recordValue = GameRecords_GetRecordValue(gameRecords, RECORD_SUPER_CONTEST_PARTICIPATIONS);
            recordValue += GameRecords_GetRecordValue(gameRecords, RECORD_LINK_CONTEST_PARTICIPATIONS);

            if (recordValue > 0) {
                recordValue = (recordValues[10] * 100) / recordValue;
            }

            recordValues[i] = recordValue;
            break;
        default:
            if (i >= 0 && i <= 4) {
                recordValues[i] = sub_02030698(frontier, recordIDs[i], 0xFF);
            } else {
                recordValues[i] = GameRecords_GetRecordValue(gameRecords, recordIDs[i]);
            }
        }
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);

    return recordValues;
}

void *sub_0202E9FC(SaveData *saveData, enum HeapID heapID)
{
    int i;
    u32 seed, unused;
    RankingsEntries *rankingsEntries;
    String *string;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);
    u32 *recordValues;

    rankingsEntries = Heap_AllocAtEnd(heapID, sizeof(RankingsEntries));
    MI_CpuClear8(rankingsEntries, sizeof(RankingsEntries));

    seed = RecordMixedRNG_GetEntrySeed(SaveData_GetRecordMixedRNG(saveData), 1);
    string = TrainerInfo_NameNewString(trainerInfo, heapID);
    recordValues = GetRecordValues(saveData, heapID);

    for (i = 0; i < RECORDS_WITH_RANKINGS_COUNT; i++) {
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
    int i;

    for (i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
        RankingEntry_Clear(&(list->entries[i]));
    }
}

static BOOL CompareEntries(const RankingEntry *entry0, const RankingEntry *entry1)
{
    if (entry0->seed != entry1->seed) {
        return FALSE;
    }

    if (CharCode_Compare(entry0->playerName, entry1->playerName)) {
        return FALSE;
    }

    return TRUE;
}

static BOOL sub_0202EABC(UnkStruct_0202EABC *param0, const RankingEntry *entry)
{
    int i;

    for (i = 0; i < param0->unk_04; i++) {
        if (CompareEntries(param0->unk_0C[i], entry)) {
            return TRUE;
        }
    }

    return FALSE;
}

static void sub_0202EAEC(Rankings *rankings, UnkStruct_0202EABC *param1, u32 param2, u8 param3, u8 param4, RankingsEntries **rankingsEntries, u8 param6, enum HeapID heapID)
{
    int i, v1;
    RankingEntry *v2;
    RankingList *list;

    MI_CpuClear8(param1, sizeof(UnkStruct_0202EABC));

    if (param4 == 0) {
        list = &(rankings->lists[param3]);

        MI_CpuCopy8(list, &(param1->list), sizeof(RankingList));

        for (i = 0; i < param6; i++) {
            param1->unk_0C[param1->unk_04++] = &(rankingsEntries[i]->entries[param3]);
        }

        for (i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
            if (!RankingEntry_HasPlayerName(&(param1->list.entries[i]))) {
                continue;
            }

            if (sub_0202EABC(param1, &(param1->list.entries[i]))) {
                continue;
            }

            param1->unk_38[param1->unk_00++] = &(param1->list.entries[i]);
        }
    } else {
        list = &(rankings->lists[param3 + RECORDS_WITH_RANKINGS_COUNT]);
        MI_CpuCopy8(list, &(param1->list), sizeof(RankingList));

        for (i = 0; i < param6; i++) {
            if ((rankingsEntries[i]->entries[param3].seed == 0) || (rankingsEntries[i]->entries[param3].seed != param2)) {
                continue;
            }

            param1->unk_0C[param1->unk_04++] = &(rankingsEntries[i]->entries[param3]);
        }

        for (i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
            if (!RankingEntry_HasPlayerName(&(param1->list.entries[i]))) {
                continue;
            }

            if (param1->list.entries[i].seed != param2) {
                continue;
            }

            if (sub_0202EABC(param1, &(param1->list.entries[i]))) {
                continue;
            }

            param1->unk_38[param1->unk_00++] = &(param1->list.entries[i]);
        }
    }

    param1->unk_08 = param1->unk_04 + param1->unk_00;

    for (i = 0; i < param1->unk_00; i++) {
        param1->unk_0C[i + param1->unk_04] = param1->unk_38[i];
    }

    for (i = 0; i < (param1->unk_08 - 1); i++) {
        for (v1 = (param1->unk_08 - 1); v1 > i; v1--) {
            if (param1->unk_0C[i]->recordValue >= param1->unk_0C[v1]->recordValue) {
                continue;
            }

            v2 = param1->unk_0C[i];

            param1->unk_0C[i] = param1->unk_0C[v1];
            param1->unk_0C[v1] = v2;
        }
    }

    RankingList_ClearEntries(list);

    for (i = 0; (i < MAX_RANKINGS_ENTRIES && i < param1->unk_08); i++) {
        list->entries[i] = *(param1->unk_0C[i]);
    }
}

static void sub_0202ECB0(Rankings *rankings, u32 param1, u8 param2, RankingsEntries **rankingsEntries, u8 param4, enum HeapID heapID)
{
    UnkStruct_0202EABC *v2 = Heap_AllocAtEnd(heapID, sizeof(UnkStruct_0202EABC));

    sub_0202EAEC(rankings, v2, param1, param2, 0, rankingsEntries, param4, heapID);

    if (param1 != 0) {
        sub_0202EAEC(rankings, v2, param1, param2, 1, rankingsEntries, param4, heapID);
    }

    Heap_Free(v2);
}

void sub_0202ED0C(SaveData *saveData, int param1, u8 param2, const void **inRankingsEntries, enum HeapID heapID)
{
    u8 i, v1;
    u32 v2;
    RankingsEntries *rankingsEntries[5];
    Rankings *rankings = sub_0202E8C0(saveData);

    v2 = RecordMixedRNG_GetEntrySeed(SaveData_GetRecordMixedRNG(saveData), 1);
    v1 = 0;

    for (i = 0; i < param2; i++) {
        if (i == param1) {
            continue;
        }

        if (inRankingsEntries[i] == NULL) {
            continue;
        }

        rankingsEntries[v1++] = (RankingsEntries *)inRankingsEntries[i];
    }

    if (v1 == 0) {
        return;
    }

    for (i = 0; i < 13; i++) {
        sub_0202ECB0(rankings, v2, i, rankingsEntries, v1, heapID);
    }

    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);

    return;
}

RecordPlayersInfo *Rankings_GetCurrentPlayerInfo(SaveData *saveData, int listID, enum HeapID heapID)
{
    int i, firstRecordID;
    u32 seed;
    RecordPlayersInfo *playersInfo;
    u32 *recordValues;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);
    playersInfo = Heap_Alloc(heapID, sizeof(RecordPlayersInfo));

    MI_CpuClear8(playersInfo, sizeof(RecordPlayersInfo));

    seed = RecordMixedRNG_GetEntrySeed(SaveData_GetRecordMixedRNG(saveData), 1);
    recordValues = GetRecordValues(saveData, heapID);
    playersInfo->count = GetRecordsListLength(listID);
    firstRecordID = GetRecordsListFirstRecord(listID);

    for (i = 0; i < playersInfo->count; i++) {
        playersInfo->players[i].seed = seed;
        playersInfo->players[i].recordValue = recordValues[i + firstRecordID];
        playersInfo->players[i].playerName = TrainerInfo_NameNewString(trainerInfo, heapID);
    }

    Heap_Free(recordValues);
    return playersInfo;
}

RecordPlayersInfo *Rankings_GetConnectedPlayersInfo(Rankings *rankings, int listID, enum HeapID heapID)
{
    int i;
    RecordPlayersInfo *playersInfo = Heap_Alloc(heapID, sizeof(RecordPlayersInfo));
    RankingList *list;

    MI_CpuClear8(playersInfo, sizeof(RecordPlayersInfo));
    list = &(rankings->lists[listID]);

    for (i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
        if (!RankingEntry_HasPlayerName(&(list->entries[i]))) {
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
    int i;

    for (i = 0; i < MAX_RANKINGS_ENTRIES; i++) {
        if (playersInfo->players[i].playerName != NULL) {
            String_Free(playersInfo->players[i].playerName);
        }
    }

    MI_CpuClear8(playersInfo, sizeof(RecordPlayersInfo));

    Heap_Free(playersInfo);
    playersInfo = NULL;
    SaveData_SetChecksum(SAVE_TABLE_ENTRY_RANKINGS);
}
