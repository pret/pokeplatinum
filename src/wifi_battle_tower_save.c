#include "wifi_battle_tower_save.h"

#include <nitro.h>

#include "constants/battle_tower.h"

#include "struct_defs/battle_frontier.h"
#include "struct_defs/struct_0202D080.h"
#include "struct_defs/struct_0202D63C.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay096/struct_wifi_player_profile.h"
#include "overlay104/frontier_data_transfer.h"

#include "easy_chat_sentence.h"
#include "heap.h"
#include "inlines.h"
#include "message.h"
#include "savedata.h"

int WifiPlayerProfile_Size(void)
{
    return sizeof(WifiPlayerProfile);
}

void WifiBattleTowerSave_Init(WifiBattleTowerSave *save)
{
    MI_CpuClear8(save, sizeof(WifiBattleTowerSave));
}

void WifiBattleTowerRecord_Init(WifiBattleTowerRecord *record)
{
    MI_CpuClear8(record, sizeof(WifiBattleTowerRecord));
    record->rank = 1;
}

void FrontierEasyChatMessages_Init(FrontierEasyChatMessages *easyChatMsgs)
{
    EasyChatSentence_SetDefaultFrontierFields(&easyChatMsgs->sentences[0], EASY_CHAT_SENTENCE_TYPE_PRE_BATTLE);
    EasyChatSentence_SetDefaultFrontierFields(&easyChatMsgs->sentences[1], EASY_CHAT_SENTENCE_TYPE_WIN);
    EasyChatSentence_SetDefaultFrontierFields(&easyChatMsgs->sentences[2], EASY_CHAT_SENTENCE_TYPE_LOSS);
    EasyChatSentence_SetDefaultFrontierFields(&easyChatMsgs->sentences[3], FRONTIER_EASY_CHAT_SENTENCE_TYPE_NO_1);
}

void WifiBattleTowerDownloadData_Init(WifiBattleTowerDownloadData *downloadData)
{
    MI_CpuClear8(downloadData, sizeof(WifiBattleTowerDownloadData));
}

u32 WifiBattleTowerSave_GetField(WifiBattleTowerSave *save, int fieldId, void *outBuf)
{
    switch (fieldId) {
    case BT_WIFI_SAVE_FIELD_CHALLENGE_MODE:
        return (u32)save->challengeMode;
    case BT_WIFI_SAVE_FIELD_NEXT_OPPONENT_NUM:
        return (u32)save->nextOpponentNum;
    case BT_WIFI_SAVE_FIELD_UNK_03:
        return (u32)save->unk_03;
    case BT_WIFI_SAVE_FIELD_UNK_04:
        return save->unk_04;
    case BT_WIFI_SAVE_FIELD_UNK_06:
        return save->unk_06;
    case BT_WIFI_SAVE_FIELD_PARTY_SLOTS:
        MI_CpuCopy8(save->partySlots, outBuf, 4);
        return 0;
    case BT_WIFI_SAVE_FIELD_PARTNER_DATA:
        MI_CpuCopy8(&save->unk_2C, outBuf, sizeof(BattleTowerPartnerData));
        return 0;
    case BT_WIFI_SAVE_FIELD_UNK_00_0:
        return save->unk_00_0;
    case BT_WIFI_SAVE_FIELD_TRAINER_IDS:
        MI_CpuCopy8(save->trainerIDs, outBuf, BT_OPPONENTS_COUNT * 2 * sizeof(u16));
        return 0;
    case BT_WIFI_SAVE_FIELD_PARTNER_ID:
        return save->partnerID;
    case BT_WIFI_SAVE_FIELD_RNG_SEED:
        return save->rngSeed;
    }

    return 0;
}

void WifiBattleTowerSave_SetField(WifiBattleTowerSave *save, int fieldId, const void *inBuf)
{
    u32 *inBuf32 = (u32 *)inBuf;
    u16 *inBuf16 = (u16 *)inBuf;
    u8 *inBuf8 = (u8 *)inBuf;

    switch (fieldId) {
    case BT_WIFI_SAVE_FIELD_CHALLENGE_MODE:
        save->challengeMode = inBuf8[0];
        break;
    case BT_WIFI_SAVE_FIELD_NEXT_OPPONENT_NUM:
        save->nextOpponentNum = inBuf8[0];
        break;
    case BT_WIFI_SAVE_FIELD_UNK_03:
        save->unk_03 = inBuf8[0];
        break;
    case BT_WIFI_SAVE_FIELD_UNK_04:
        save->unk_04 = inBuf16[0];
        break;
    case BT_WIFI_SAVE_FIELD_UNK_06:
        save->unk_06 = inBuf16[0];
        break;
    case BT_WIFI_SAVE_FIELD_PARTY_SLOTS:
        MI_CpuCopy8(inBuf8, save->partySlots, 4);
        break;
    case BT_WIFI_SAVE_FIELD_PARTNER_DATA:
        MI_CpuCopy8(inBuf16, &save->unk_2C, sizeof(BattleTowerPartnerData));
        break;
    case BT_WIFI_SAVE_FIELD_UNK_00_0:
        save->unk_00_0 = inBuf8[0];
        break;
    case BT_WIFI_SAVE_FIELD_TRAINER_IDS:
        MI_CpuCopy8(inBuf16, save->trainerIDs, 2 * 14);
        break;
    case BT_WIFI_SAVE_FIELD_RNG_SEED:
        save->rngSeed = inBuf32[0];
        break;
    case BT_WIFI_SAVE_FIELD_PARTNER_ID:
        save->partnerID = inBuf8[0];
        break;
    }
}

void WifiBattleTowerSave_AddCounters(WifiBattleTowerSave *save, u8 param1, u16 param2, u16 param3)
{
    if (save->unk_03 + param1 < 255) {
        save->unk_03 += param1;
    }

    if (save->unk_04 + param2 < 65535) {
        save->unk_04 += param2;
    }

    if (save->unk_06 + param3 < 65535) {
        save->unk_06 += param3;
    }
}

BOOL WifiBattleTowerSave_GetIsInProgress(WifiBattleTowerSave *save)
{
    return save->isInProgress;
}

void WifiBattleTowerSave_SetIsInProgress(WifiBattleTowerSave *save, BOOL isInProgress)
{
    save->isInProgress = isInProgress;
}

u16 WifiBattleTowerRecord_UpdateBattlePoints(WifiBattleTowerRecord *record, u16 value, int func)
{
    switch (func) {
    case BATTLE_POINTS_FUNC_SET:
        if (value > 9999) {
            record->battlePoints = 9999;
        } else {
            record->battlePoints = value;
        }
        break;
    case BATTLE_POINTS_FUNC_ADD:
        if (record->battlePoints + value > 9999) {
            record->battlePoints = 9999;
        } else {
            record->battlePoints += value;
        }
        break;
    case BATTLE_POINTS_FUNC_SUB:
        if (record->battlePoints < value) {
            record->battlePoints = 0;
        } else {
            record->battlePoints -= value;
        }
    case BATTLE_POINTS_FUNC_NONE:
    default:
        break;
    }

    return record->battlePoints;
}

u8 WifiBattleTowerRecord_UpdateLossStreak(WifiBattleTowerRecord *record, int op)
{
    switch (op) {
    case 2:
        record->lossStreak = 0;
        record->lossStreakInitialized = 0;
        break;
    case 3:
        if (record->lossStreakInitialized) {
            record->lossStreak += 1;
        } else {
            record->lossStreak = 1;
            record->lossStreakInitialized = 1;
        }
        break;
    }

    return record->lossStreak;
}

u8 WifiBattleTowerRecord_UpdateRank(WifiBattleTowerRecord *record, int op)
{
    switch (op) {
    case 2:
        record->rank = 1;
        break;
    case 3:
        if (record->rank < 10) {
            record->rank += 1;
        }
        break;
    case 4:
        if (record->rank > 1) {
            record->rank -= 1;
        }
        break;
    }

    return record->rank;
}

void WifiBattleTowerRecord_SetTeam(WifiBattleTowerRecord *record, int teamIdx, FrontierPokemonDataDTO *monDataDTO)
{
    if (teamIdx == 0) {
        MI_CpuCopy8(monDataDTO, record->team0, sizeof(FrontierPokemonDataDTO) * 3);
    } else {
        MI_CpuCopy8(monDataDTO, record->team1, sizeof(FrontierPokemonDataDTO) * 3);
    }
}

void WifiBattleTowerRecord_GetTeam(WifiBattleTowerRecord *record, int teamIdx, FrontierPokemonDataDTO *outBuf)
{
    if (teamIdx == 0) {
        MI_CpuCopy8(record->team0, outBuf, sizeof(FrontierPokemonDataDTO) * 3);
    } else {
        MI_CpuCopy8(record->team1, outBuf, sizeof(FrontierPokemonDataDTO) * 3);
    }
}

u16 WifiBattleTowerRecord_CalcRatingScore(WifiBattleTowerRecord *record, WifiBattleTowerSave *save)
{
    u16 progressScore, penaltyA, penaltyB, efficiencyBonus, performanceScore;
    u16 ratingScore = 0;

    progressScore = (save->nextOpponentNum - 1) * 1000;
    penaltyA = save->unk_04 * 10;
    penaltyB = save->unk_03 * 20;

    if (penaltyA + penaltyB > 950) {
        performanceScore = 0;
    } else {
        performanceScore = 950 - (penaltyA + penaltyB);
    }

    if (save->unk_06 > (1000 - 30)) {
        efficiencyBonus = 0;
    } else {
        efficiencyBonus = (1000 - save->unk_06) / 30;
    }

    ratingScore = progressScore + performanceScore + efficiencyBonus;
    record->ratingScore = ratingScore;

    return ratingScore;
}

u16 WifiBattleTowerRecord_GetRatingScore(WifiBattleTowerRecord *record)
{
    return record->ratingScore;
}

u8 WifiBattleTowerRecord_GetRatingTier(WifiBattleTowerRecord *record)
{
    u8 ratingTier = 0;

    ratingTier = (record->ratingScore) / 1000;
    return ratingTier;
}

u16 WifiBattleTowerRecord_UpdateRoomNum(WifiBattleTowerRecord *record, u16 challengeMode, int op)
{
    u16 modeIdx;

    if (challengeMode == 5) {
        return 0;
    }

    if (challengeMode == 6) {
        modeIdx = 5;
    } else {
        modeIdx = challengeMode;
    }

    switch (op) {
    case 2:
        record->roomNums[modeIdx] = 0;
        break;
    case 3:
        if (record->roomNums[modeIdx] < 65534) {
            record->roomNums[modeIdx] += 1;
        }
        break;
    }

    return record->roomNums[modeIdx];
}

u16 WifiBattleTowerRecord_SetRoomNum(WifiBattleTowerRecord *record, u16 challengeMode, u16 roomNum)
{
    u16 modeIdx;

    if (challengeMode == 5) {
        return 0;
    }

    if (challengeMode == 6) {
        modeIdx = 5;
    } else {
        modeIdx = challengeMode;
    }

    record->roomNums[modeIdx] = roomNum;
    return record->roomNums[modeIdx];
}

BOOL WifiBattleTowerRecord_UpdateBitFlag(WifiBattleTowerRecord *record, u16 bitIdx, int op)
{
    u16 i;
    u16 mask = 1;

    if (bitIdx >= 16) {
        GF_ASSERT(FALSE);
        return 0;
    }

    for (i = 0; i < bitIdx; i++) {
        mask <<= 1;
    }

    switch (op) {
    case 2:
        mask = (mask ^ 0xFFFF);
        record->flags &= mask;
        break;
    case 1:
        record->flags |= mask;
        break;
    case 0:
        return (BOOL)((record->flags >> bitIdx) & 0x1);
    }

    return 0;
}

void WifiBattleTowerRecord_SetRngState(WifiBattleTowerRecord *record, u32 value)
{
    record->rngState = value;
}

u32 WifiBattleTowerRecord_GetRngState(WifiBattleTowerRecord *record)
{
    return record->rngState;
}

void FrontierEasyChatMessages_SetSentence(SaveData *saveData, int sentenceIdx, EasyChatSentence *sentence)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    EasyChatSentence_Copy(&(frontier->unk_950.easyChatMessages.sentences[sentenceIdx]), sentence);
}

EasyChatSentence *FrontierEasyChatMessages_GetSentence(SaveData *saveData, int sentenceIdx)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);

    return &(frontier->unk_950.easyChatMessages.sentences[sentenceIdx]);
}

void WifiBattleTowerDownloadData_MarkOpponent(WifiBattleTowerDownloadData *downloadData, u8 rank, u8 opponentIdx, RTCDate *date)
{
    u8 byteIdx, bitIdx;
    u8 mask = 1;
    u16 flatIdx;

    if ((opponentIdx == 0) || (opponentIdx > 200)) {
        return;
    }

    if ((rank == 0) || (rank > 10)) {
        return;
    }

    flatIdx = (rank - 1) * 200 + (opponentIdx - 1);
    byteIdx = flatIdx / 8;
    bitIdx = flatIdx % 8;

    mask <<= bitIdx;

    downloadData->downloadedOpponents[byteIdx] |= mask;
    downloadData->lastDownloadDate = Date_Encode(date);
}

void WifiBattleTowerDownloadData_Reset(WifiBattleTowerDownloadData *downloadData)
{
    MI_CpuClear8(downloadData->downloadedOpponents, 250);
    MI_CpuClear8(&downloadData->lastDownloadDate, sizeof(u32));
}

static BOOL Date_IsAfter(RTCDate *dateA, RTCDate *dateB)
{
    if (dateA->year > dateB->year) {
        return 1;
    }

    if (dateA->month > dateB->month) {
        return 1;
    }

    if (dateA->day > dateB->day) {
        return 1;
    }

    return 0;
}

BOOL WifiBattleTowerDownloadData_IsOpponentMarked(WifiBattleTowerDownloadData *downloadData, u8 rank, u8 opponentIdx, RTCDate *date)
{
    u8 byteIdx, bitIdx;
    u8 mask = 1;
    u16 flatIdx;
    RTCDate storedDate;

    if ((opponentIdx > 200) || (rank > 10)) {
        return 0;
    }

    Date_Decode(downloadData->lastDownloadDate, &storedDate);

    if (Date_IsAfter(date, &storedDate)) {
        WifiBattleTowerDownloadData_Reset(downloadData);
        return 0;
    }

    flatIdx = (rank - 1) * 200 + (opponentIdx - 1);
    byteIdx = flatIdx / 8;
    bitIdx = flatIdx % 8;

    mask <<= bitIdx;

    if (downloadData->downloadedOpponents[byteIdx] & mask) {
        return 1;
    }

    return 0;
}

BOOL WifiBattleTowerDownloadData_HasOpponentData(WifiBattleTowerDownloadData *downloadData)
{
    return (BOOL)downloadData->hasOpponentData;
}

BOOL WifiBattleTowerDownloadData_HasMatchListData(WifiBattleTowerDownloadData *downloadData)
{
    return (BOOL)downloadData->hasMatchListData;
}

void WifiBattleTowerDownloadData_StoreOpponentTeams(WifiBattleTowerDownloadData *downloadData, WifiPlayerProfile *opponentData, u8 rank, u8 opponentIdx)
{
    MI_CpuCopy8(opponentData, downloadData->trainerRecords, sizeof(WifiTrainerRecord) * 7);

    downloadData->storedRank = rank;
    downloadData->storedOpponentIdx = opponentIdx;
    downloadData->hasOpponentData = 1;
}

void WifiBattleTowerDownloadData_GetIndices(WifiBattleTowerDownloadData *downloadData, WifiBattleTowerIndices *outIndices)
{
    outIndices->rank = downloadData->storedRank;
    outIndices->opponentIdx = downloadData->storedOpponentIdx;
}

void WifiBattleTowerDownloadData_BuildOpponentDTO(WifiBattleTowerDownloadData *downloadData, FrontierDataDTO *dto, const u8 opponentNum)
{
    FrontierTrainerDataDTO *trDataDTO = &(dto->trDataDTO);
    FrontierPokemonDataDTO *monDataDTO = dto->monDataDTO;
    WifiTrainerRecord *record = &(downloadData->trainerRecords[opponentNum]);

    trDataDTO->trainerID = 10000;
    trDataDTO->trainerType = record->trainerType;

    if (record->isAnonymous) {
        MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0022, HEAP_ID_FIELD2);

        MessageLoader_Get(msgLoader, 22 + record->anonymousNameIdx, trDataDTO->trainerName);
        MessageLoader_Free(msgLoader);
    } else {
        MI_CpuCopy8(record->trainerName, trDataDTO->trainerName, 16);
    }

    MI_CpuCopy8(record->introMsg, trDataDTO->introMsg, 8);
    MI_CpuCopy8(record->winMsg, trDataDTO->winMsg, 8);
    MI_CpuCopy8(record->loseMsg, trDataDTO->loseMsg, 8);
    MI_CpuCopy8(record->monDataDTO, monDataDTO, sizeof(FrontierPokemonDataDTO) * 3);
}

void WifiBattleTowerDownloadData_StoreMatchList(WifiBattleTowerDownloadData *downloadData, WifiBattleTowerMatchCandidate *matchCandidates, u8 rank, u8 opponentIdx)
{
    MI_CpuCopy8(matchCandidates, &downloadData->matchCandidates, sizeof(WifiBattleTowerMatchCandidate) * 30);

    downloadData->storedMatchRank = rank;
    downloadData->storedMatchOpponentIdx = opponentIdx;
    downloadData->hasMatchListData = 1;
}

void WifiBattleTowerDownloadData_GetMatchIndices(WifiBattleTowerDownloadData *downloadData, WifiBattleTowerIndices *outIndices)
{
    outIndices->rank = downloadData->storedMatchRank;
    outIndices->opponentIdx = downloadData->storedMatchOpponentIdx;
}

WifiBattleTowerMatchCandidate *WifiBattleTowerDownloadData_AllocMatchList(WifiBattleTowerDownloadData *downloadData, enum HeapID heapID)
{
    WifiBattleTowerMatchCandidate *candidates = Heap_Alloc(heapID, sizeof(WifiBattleTowerMatchCandidate) * 30);
    MI_CpuCopy8(downloadData->matchCandidates, candidates, sizeof(WifiBattleTowerMatchCandidate) * 30);

    return candidates;
}

WifiBattleTowerSave *SaveData_GetWifiBattleTowerSave(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->wifiBattleTowerSave;
}

WifiBattleTowerRecord *SaveData_GetWifiBattleTowerRecord(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->unk_950.wifiBattleTowerRecord;
}

WifiBattleTowerDownloadData *SaveData_GetWifiBattleTowerDownloadData(SaveData *saveData)
{
    BattleFrontierSave *frontier = SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_FRONTIER);
    return &frontier->unk_950.wifiBattleTowerDownloadData;
}
