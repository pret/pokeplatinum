#include "trainer_case.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_defs/battle_frontier.h"

#include "field/field_system.h"

#include "badges.h"
#include "battle_frontier_stats.h"
#include "charcode_util.h"
#include "field_system.h"
#include "field_task.h"
#include "game_records.h"
#include "heap.h"
#include "play_time.h"
#include "pokedex.h"
#include "save_player.h"
#include "savedata.h"
#include "system_flags.h"
#include "trainer_case_save_data.h"
#include "trainer_info.h"
#include "underground.h"
#include "unk_0203D1B8.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "vars_flags.h"

#define TRAINER_CASE_MAX_TIMES_LINKED        999999
#define TRAINER_CASE_MAX_LINK_BATTLE_RESULTS 9999
#define TRAINER_CASE_MAX_LINK_TRADES         99999

typedef struct OpenCaseData {
    int state;
    TrainerCase *trainerCase;
} OpenCaseData;

static void TrainerCase_SetFields(u8 badgesInteractable, u8 gameVersion, u8 cardLevel, u8 gymLeadersToHide, u8 language, TrainerCase *trainerCase);
static void TrainerCase_SetTrainerInfo(u16 id, u8 gender, const u16 *name, u32 money, u32 seenPokemon, BOOL pokedexObtained, u32 score, TrainerCase *trainerCase);
static void TrainerCase_SetDates(u8 gameCompleted, const PlayTime *playTime, const RTCDate *adventureStartedDate, const RTCDate *hofDebutDate, const RTCTime *hofDebutTime, u8 param5, TrainerCase *trainerCase);
static void TrainerCase_SetLinkDataAndSignature(u32 timesLinked, u32 linkBattleWins, u32 linkBattleLosses, u32 linkTrades, const u8 *signature, TrainerCase *trainerCase);
static void TrainerCase_SetBadgeData(TrainerInfo *trainerInfo, FieldSystem *fieldSystem, TrainerCase *trainerCase);
static BOOL FieldTask_OpenUnionRoomCaseTask(FieldTask *task);

void TrainerCase_Init(u8 badgesInteractable, u8 liveTimeDisplay, u8 gymLeadersToHide, u8 trainerAppearance, FieldSystem *fieldSystem, TrainerCase *trainerCase)
{
    SaveData *saveData = FieldSystem_GetSaveData(fieldSystem);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);
    GameRecords *gameRecords = SaveData_GetGameRecords(saveData);

    trainerCase->trainerAppearance = trainerAppearance;

    TrainerCase_SetFields(badgesInteractable, GAME_VERSION, TrainerCase_CalculateTrainerCardLevel(fieldSystem), gymLeadersToHide, TrainerInfo_Language(trainerInfo), trainerCase);

    TrainerCase_SetTrainerInfo(TrainerInfo_ID_LowHalf(trainerInfo), TrainerInfo_Gender(trainerInfo), TrainerInfo_Name(trainerInfo), TrainerInfo_Money(trainerInfo), Pokedex_CountSeen(SaveData_GetPokedex(fieldSystem->saveData)), Pokedex_IsObtained(SaveData_GetPokedex(fieldSystem->saveData)), GameRecords_GetTrainerScore(gameRecords), trainerCase);

    RTCDate adventureStartedDate;
    RTCDate firstCompletionDate;
    RTCTime firstCompletionTime;
    PlayTime *playTime = SaveData_GetPlayTime(saveData);

    FieldSystem_GetStartTimestamp(fieldSystem, &adventureStartedDate, &firstCompletionTime);
    FieldSystem_GetFirstCompletionTimestamp(fieldSystem, &firstCompletionDate, &firstCompletionTime);
    TrainerCase_SetDates(SystemFlag_CheckGameCompleted(SaveData_GetVarsFlags(fieldSystem->saveData)), playTime, &adventureStartedDate, &firstCompletionDate, &firstCompletionTime, liveTimeDisplay, trainerCase);

    TrainerCaseSaveData *tcSaveData = SaveData_GetTrainerCaseSaveData(fieldSystem->saveData);
    u32 timesLinked = GameRecords_GetRecordValue(gameRecords, RECORD_LINK_CONTEST_PARTICIPATIONS) + GameRecords_GetRecordValue(gameRecords, RECORD_LOCAL_LINK_TRADES) + GameRecords_GetRecordValue(gameRecords, RECORD_WIFI_TRADES) + GameRecords_GetRecordValue(gameRecords, RECORD_UNK_020) + GameRecords_GetRecordValue(gameRecords, RECORD_UNK_025) + GameRecords_GetRecordValue(gameRecords, RECORD_UNK_032);
    u32 linkBattleWins = GameRecords_GetRecordValue(gameRecords, RECORD_LOCAL_LINK_BATTLE_WINS) + GameRecords_GetRecordValue(gameRecords, RECORD_WIFI_BATTLE_WINS);
    u32 linkBattleLosses = GameRecords_GetRecordValue(gameRecords, RECORD_LOCAL_LINK_BATTLE_LOSSES) + GameRecords_GetRecordValue(gameRecords, RECORD_WIFI_BATTLE_LOSSES);
    u32 linkTrades = GameRecords_GetRecordValue(gameRecords, RECORD_LOCAL_LINK_TRADES) + GameRecords_GetRecordValue(gameRecords, RECORD_WIFI_TRADES);

    TrainerCase_SetLinkDataAndSignature(timesLinked, linkBattleWins, linkBattleLosses, linkTrades, TrainerCaseSaveData_GetSignature(tcSaveData), trainerCase);

    TrainerCase_SetBadgeData(trainerInfo, fieldSystem, trainerCase);

    int i, checksum = 0;
    u8 *buffer = (u8 *)trainerCase;

    for (i = 0; i < sizeof(TrainerCase); i++) {
        checksum ^= buffer[i];
    }

    trainerCase->dummyChecksum = checksum;

    trainerCase->unk_66A = 0;
}

TrainerCase *TrainerCase_New(u16 heapID)
{
    TrainerCase *trainerCase = Heap_Alloc(heapID, sizeof(TrainerCase));

    memset(trainerCase, 0, sizeof(TrainerCase));
    return trainerCase;
}

void TrainerCase_Free(TrainerCase *trainerCase)
{
    Heap_Free(trainerCase);
}

u8 TrainerCase_CalculateTrainerCardLevel(FieldSystem *fieldSystem)
{
    u8 trainerCardLevel;

    SaveData *saveData = FieldSystem_GetSaveData(fieldSystem);
    GameRecords *gameRecords = SaveData_GetGameRecords(saveData);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(saveData);
    UndergroundRecord *undergroundRecord = SaveData_GetUndergroundRecord(saveData);
    BattleFrontier *frontier = SaveData_GetBattleFrontier(saveData);
    trainerCardLevel = 0;

    if (SystemFlag_CheckGameCompleted(varsFlags)) {
        trainerCardLevel++;
    }

    if (Pokedex_NationalDexCompleted(SaveData_GetPokedex(saveData))) {
        trainerCardLevel++;
    }

    if ((BattleFrontierStats_GetStat(frontier, STAT_TOWER_RECORD_STREAK_SINGLE, 0xff) >= 100) || (BattleFrontierStats_GetStat(frontier, STAT_TOWER_RECORD_STREAK_DOUBLE, 0xff) >= 100) || (BattleFrontierStats_GetStat(frontier, STAT_TOWER_RECORD_STREAK_MULTI, 0xff) >= 100) || (BattleFrontierStats_GetStat(frontier, STAT_TOWER_RECORD_STREAK_LINK_MULTI, 0xff) >= 100) || (BattleFrontierStats_GetStat(frontier, STAT_TOWER_RECORD_STREAK_WIFI, 0xff) >= 100)) {
        trainerCardLevel++;
    }

    if (SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_COOL) || SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_BEAUTY) || SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_SMART) || SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_TOUGH) || SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_CUTE)) {
        trainerCardLevel++;
    }

    if (UndergroundRecord_HasPlatBaseFlag(undergroundRecord) == TRUE) {
        trainerCardLevel++;
    }

    return trainerCardLevel;
}

static void TrainerCase_SetFields(u8 badgesInteractable, u8 gameVersion, u8 cardLevel, u8 gymLeadersToHide, u8 language, TrainerCase *trainerCase)
{
    trainerCase->badgesInteractable = badgesInteractable;
    trainerCase->gameVersion = gameVersion;
    trainerCase->cardLevel = cardLevel;
    trainerCase->language = language;
    trainerCase->gymLeadersToHideUnused = gymLeadersToHide;
}

static void TrainerCase_SetTrainerInfo(u16 id, u8 gender, const u16 *name, u32 money, u32 seenPokemon, BOOL pokedexObtained, u32 score, TrainerCase *trainerCase)
{
    trainerCase->trainerId = id;
    trainerCase->gender = gender;

    CharCode_CopyNumChars(trainerCase->name, name, TRAINER_NAME_LEN + 1);

    trainerCase->money = money;
    trainerCase->seenPokemon = seenPokemon;
    trainerCase->pokedexObtained = pokedexObtained;
    trainerCase->score = score;
}

static void TrainerCase_SetDates(u8 gameCompleted, const PlayTime *playTime, const RTCDate *adventureStartedDate, const RTCDate *firstCompletionDate, const RTCTime *firstCompletionTime, const u8 liveTimeDisplay, TrainerCase *trainerCase)
{
    trainerCase->playTimeHours = PlayTime_GetHours(playTime);
    trainerCase->playTimeMinutes = PlayTime_GetMinutes(playTime);
    trainerCase->adventureStartedYear = adventureStartedDate->year;
    trainerCase->adventureStartedMonth = adventureStartedDate->month;
    trainerCase->adventureStartedDay = adventureStartedDate->day;

    if (gameCompleted) {
        trainerCase->hofDebutYear = firstCompletionDate->year;
        trainerCase->hofDebutMonth = firstCompletionDate->month;
        trainerCase->hofDebutDay = firstCompletionDate->day;
        trainerCase->hofDebutHour = firstCompletionTime->hour;
        trainerCase->hofDebutMinute = firstCompletionTime->minute;
    } else {
        trainerCase->hofDebutYear = 0;
        trainerCase->hofDebutMonth = 0;
        trainerCase->hofDebutDay = 0;
        trainerCase->hofDebutHour = 0;
        trainerCase->hofDebutMinute = 0;
    }

    trainerCase->liveTimeDisplay = liveTimeDisplay;

    if (liveTimeDisplay) {
        trainerCase->playTime = playTime;
    } else {
        trainerCase->playTime = NULL;
    }
}

static void TrainerCase_SetLinkDataAndSignature(u32 timesLinked, u32 linkBattleWins, u32 linkBattleLosses, u32 linkTrades, const u8 *signature, TrainerCase *trainerCase)
{
    trainerCase->timesLinked = timesLinked;

    if (trainerCase->timesLinked > TRAINER_CASE_MAX_TIMES_LINKED) {
        trainerCase->timesLinked = TRAINER_CASE_MAX_TIMES_LINKED;
    }

    trainerCase->linkBattleWins = linkBattleWins;
    trainerCase->linkBattleLosses = linkBattleLosses;

    if (trainerCase->linkBattleWins > TRAINER_CASE_MAX_LINK_BATTLE_RESULTS) {
        trainerCase->linkBattleWins = TRAINER_CASE_MAX_LINK_BATTLE_RESULTS;
    }

    if (trainerCase->linkBattleLosses > TRAINER_CASE_MAX_LINK_BATTLE_RESULTS) {
        trainerCase->linkBattleLosses = TRAINER_CASE_MAX_LINK_BATTLE_RESULTS;
    }

    trainerCase->linkTrades = linkTrades;

    if (trainerCase->linkTrades > TRAINER_CASE_MAX_LINK_TRADES) {
        trainerCase->linkTrades = TRAINER_CASE_MAX_LINK_TRADES;
    }

    MI_CpuCopy8(signature, trainerCase->signature, SIGNATURE_WIDTH * SIGNATURE_HEIGHT * TILE_SIZE_1BPP);
}

static void TrainerCase_SetBadgeData(TrainerInfo *trainerInfo, FieldSystem *fieldSystem, TrainerCase *trainerCase)
{
    u8 badgeID;
    TrainerCaseSaveData *tcSaveData = SaveData_GetTrainerCaseSaveData(fieldSystem->saveData);
    TrainerCaseSaveDataBadge *badges = TrainerCaseSaveData_GetTrainerCaseSaveDataBadges(tcSaveData);

    for (badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        if (TrainerInfo_HasBadge(trainerInfo, badgeID)) {
            trainerCase->badges[badgeID].obtained = TRUE;
        } else {
            trainerCase->badges[badgeID].obtained = FALSE;
        }

        trainerCase->badges[badgeID].polish = TrainerCaseSaveDataBadge_GetPolish(badgeID, badges);
    }
}

void TrainerCase_SaveBadgePolish(FieldSystem *fieldSystem, const TrainerCase *trainerCase)
{
    u8 badgeID;
    TrainerCaseSaveData *tcSaveData = SaveData_GetTrainerCaseSaveData(fieldSystem->saveData);
    TrainerCaseSaveDataBadge *badges = TrainerCaseSaveData_GetTrainerCaseSaveDataBadges(tcSaveData);

    for (badgeID = 0; badgeID < MAX_BADGES; badgeID++) {
        TrainerCaseSaveDataBadge_SetPolish(badgeID, trainerCase->badges[badgeID].polish, badges);
    }
}

void TrainerCase_OpenUnionRoomCase(FieldSystem *fieldSystem)
{
    OpenCaseData *data = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(OpenCaseData));

    data->state = 0;
    data->trainerCase = (TrainerCase *)UnionRoom_GetTrainerCase(fieldSystem->unk_7C);

    FieldTask_InitCall(fieldSystem->task, FieldTask_OpenUnionRoomCaseTask, data);
}

static BOOL FieldTask_OpenUnionRoomCaseTask(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    OpenCaseData *data = FieldTask_GetEnv(task);

    switch (data->state) {
    case 0:
        UnionRoom_SendTrainerCase(fieldSystem->unk_7C);
        data->state = 1;
    case 1:
        if (data->trainerCase->unk_66A != 0) {
            data->state = 10;
        }
        break;
    case 10:
        FieldSystem_OpenTrainerCase(fieldSystem, data->trainerCase);
        data->state = 11;
        break;
    case 11:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            sub_0205C1F0(fieldSystem->unk_7C);
            Heap_Free(data);
            return TRUE;
        }
        break;
    }

    return FALSE;
}
