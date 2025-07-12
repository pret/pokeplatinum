#include "trainer_card.h"

#include <nitro.h>
#include <string.h>

#include "generated/game_records.h"

#include "struct_defs/battle_frontier.h"
#include "struct_defs/underground_record.h"

#include "field/field_system.h"

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
#include "trainer_card_save_data.h"
#include "trainer_info.h"
#include "unk_0202854C.h"
#include "unk_0203061C.h"
#include "unk_0203D1B8.h"
#include "unk_020559DC.h"
#include "unk_0205B33C.h"
#include "vars_flags.h"

typedef struct {
    int unk_00;
    TrainerCard *unk_04;
} UnkStruct_02072204;

static void sub_02072014(u8 param0, u8 gameVersion, u8 stars, u8 param3, u8 regionCode, TrainerCard *trainerCard);
static void TrainerCard_SetTrainerInfo(u16 id, u8 gender, const u16 *name, u32 money, u32 seenPokemon, BOOL pokedexObtained, u32 score, TrainerCard *trainerCard);
static void TrainerCard_SetDates(u8 gameCompleted, const PlayTime *playTime, const RTCDate *adventureStartedDate, const RTCDate *hofDebutDate, const RTCTime *hofDebutTime, u8 param5, TrainerCard *trainerCard);
static void TrainerCard_SetLinkDataAndSignature(u32 param0, u32 param1, u32 param2, u32 param3, const u8 *param4, TrainerCard *trainerCard);
static void sub_0207216C(TrainerInfo *param0, FieldSystem *fieldSystem, TrainerCard *trainerCard);
static BOOL sub_02072230(FieldTask *param0);

void TrainerCard_Init(u8 param0, u8 param1, u8 param2, u8 param3, FieldSystem *fieldSystem, TrainerCard *trainerCard)
{
    SaveData *saveData = FieldSystem_GetSaveData(fieldSystem);
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(saveData);
    GameRecords *gameRecords = SaveData_GetGameRecords(saveData);

    trainerCard->unk_05 = param3;

    sub_02072014(param0, GAME_VERSION, TrainerCard_CalculateStars(fieldSystem), param2, TrainerInfo_RegionCode(trainerInfo), trainerCard);

    TrainerCard_SetTrainerInfo(TrainerInfo_ID_LowHalf(trainerInfo), TrainerInfo_Gender(trainerInfo), TrainerInfo_Name(trainerInfo), TrainerInfo_Money(trainerInfo), Pokedex_CountSeen(SaveData_GetPokedex(fieldSystem->saveData)), Pokedex_IsObtained(SaveData_GetPokedex(fieldSystem->saveData)), GameRecords_GetTrainerScore(gameRecords), trainerCard);

    RTCDate adventureStartedDate;
    RTCDate firstCompletionDate;
    RTCTime firstCompletionTime;
    PlayTime *playTime = SaveData_GetPlayTime(saveData);

    FieldSystem_GetStartTimestamp(fieldSystem, &adventureStartedDate, &firstCompletionTime);
    FieldSystem_GetFirstCompletionTimestamp(fieldSystem, &firstCompletionDate, &firstCompletionTime);
    TrainerCard_SetDates(SystemFlag_CheckGameCompleted(SaveData_GetVarsFlags(fieldSystem->saveData)), playTime, &adventureStartedDate, &firstCompletionDate, &firstCompletionTime, param1, trainerCard);

    TrainerCardSaveData *tcSaveData = SaveData_GetTrainerCardSaveData(fieldSystem->saveData);
    u32 timesLinked = GameRecords_GetRecordValue(gameRecords, RECORD_UNK_091) + GameRecords_GetRecordValue(gameRecords, RECORD_LOCAL_LINK_TRADES) + GameRecords_GetRecordValue(gameRecords, RECORD_WIFI_TRADES) + GameRecords_GetRecordValue(gameRecords, RECORD_UNK_020) + GameRecords_GetRecordValue(gameRecords, RECORD_UNK_025) + GameRecords_GetRecordValue(gameRecords, RECORD_UNK_032);
    u32 linkBattleWins = GameRecords_GetRecordValue(gameRecords, RECORD_LOCAL_LINK_BATTLE_WINS) + GameRecords_GetRecordValue(gameRecords, RECORD_WIFI_BATTLE_WINS);
    u32 linkBattleLosses = GameRecords_GetRecordValue(gameRecords, RECORD_LOCAL_LINK_BATTLE_LOSSES) + GameRecords_GetRecordValue(gameRecords, RECORD_WIFI_BATTLE_LOSSES);
    u32 linkTrades = GameRecords_GetRecordValue(gameRecords, RECORD_LOCAL_LINK_TRADES) + GameRecords_GetRecordValue(gameRecords, RECORD_WIFI_TRADES);

    TrainerCard_SetLinkDataAndSignature(timesLinked, linkBattleWins, linkBattleLosses, linkTrades, TrainerCardSaveData_GetSignature(tcSaveData), trainerCard);

    sub_0207216C(trainerInfo, fieldSystem, trainerCard);

    int i, checksum = 0;
    u8 *v15 = (u8 *)trainerCard;

    for (i = 0; i < sizeof(TrainerCard); i++) {
        checksum ^= v15[i];
    }

    trainerCard->checksum = checksum;

    trainerCard->unk_66A = 0;
}

TrainerCard *TrainerCard_New(u16 heapID)
{
    TrainerCard *trainerCard = Heap_AllocFromHeap(heapID, sizeof(TrainerCard));

    memset(trainerCard, 0, sizeof(TrainerCard));
    return trainerCard;
}

void TrainerCard_Free(TrainerCard *trainerCard)
{
    Heap_Free(trainerCard);
}

u8 TrainerCard_CalculateStars(FieldSystem *fieldSystem)
{
    u8 trainerCardStars;

    SaveData *saveData = FieldSystem_GetSaveData(fieldSystem);
    GameRecords *gameRecords = SaveData_GetGameRecords(saveData);
    VarsFlags *varsFlags = SaveData_GetVarsFlags(saveData);
    UndergroundRecord *undergroundRecord = SaveData_UndergroundRecord(saveData);
    BattleFrontier *frontier = SaveData_GetBattleFrontier(saveData);
    trainerCardStars = 0;

    if (SystemFlag_CheckGameCompleted(varsFlags)) {
        trainerCardStars++;
    }

    if (Pokedex_NationalDexCompleted(SaveData_GetPokedex(saveData))) {
        trainerCardStars++;
    }

    if ((sub_02030698(frontier, 0, 0xff) >= 100) || (sub_02030698(frontier, 2, 0xff) >= 100) || (sub_02030698(frontier, 4, 0xff) >= 100) || (sub_02030698(frontier, 6, 0xff) >= 100) || (sub_02030698(frontier, 8, 0xff) >= 100)) {
        trainerCardStars++;
    }

    if (SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_COOL) || SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_CUTE) || SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_SMART) || SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_TOUGH) || SystemFlag_CheckContestMaster(varsFlags, CONTEST_TYPE_BEAUTY)) {
        trainerCardStars++;
    }

    if (UndergroundRecord_HasPlatBaseFlag(undergroundRecord) == TRUE) {
        trainerCardStars++;
    }

    return trainerCardStars;
}

static void sub_02072014(u8 param0, u8 gameVersion, u8 stars, u8 param3, u8 regionCode, TrainerCard *trainerCard)
{
    trainerCard->unk_04_0 = param0;
    trainerCard->gameVersion = gameVersion;
    trainerCard->stars = stars;
    trainerCard->regionCode = regionCode;
    trainerCard->unk_02 = param3;
}

static void TrainerCard_SetTrainerInfo(u16 id, u8 gender, const u16 *name, u32 money, u32 seenPokemon, BOOL pokedexObtained, u32 score, TrainerCard *trainerCard)
{
    trainerCard->id = id;
    trainerCard->gender = gender;

    CharCode_CopyNumChars(trainerCard->name, name, TRAINER_NAME_LEN + 1);

    trainerCard->money = money;
    trainerCard->seenPokemon = seenPokemon;
    trainerCard->pokedexObtained = pokedexObtained;
    trainerCard->score = score;
}

static void TrainerCard_SetDates(u8 gameCompleted, const PlayTime *playTime, const RTCDate *adventureStartedDate, const RTCDate *firstCompletionDate, const RTCTime *firstCompletionTime, const u8 param5, TrainerCard *trainerCard)
{
    trainerCard->playTimeHours = PlayTime_GetHours(playTime);
    trainerCard->playTimeMinutes = PlayTime_GetMinutes(playTime);
    trainerCard->adventureStartedYear = adventureStartedDate->year;
    trainerCard->adventureStartedMonth = adventureStartedDate->month;
    trainerCard->adventureStartedDay = adventureStartedDate->day;

    if (gameCompleted) {
        trainerCard->hofDebutYear = firstCompletionDate->year;
        trainerCard->hofDebutMonth = firstCompletionDate->month;
        trainerCard->hofDebutDay = firstCompletionDate->day;
        trainerCard->hofDebutHour = firstCompletionTime->hour;
        trainerCard->hofDebutMinute = firstCompletionTime->minute;
    } else {
        trainerCard->hofDebutYear = 0;
        trainerCard->hofDebutMonth = 0;
        trainerCard->hofDebutDay = 0;
        trainerCard->hofDebutHour = 0;
        trainerCard->hofDebutMinute = 0;
    }

    trainerCard->unk_04_1 = param5;

    if (param5) {
        trainerCard->playTime = playTime;
    } else {
        trainerCard->playTime = NULL;
    }
}

static void TrainerCard_SetLinkDataAndSignature(u32 timesLinked, u32 linkBattleWins, u32 linkBattleLosses, u32 linkTrades, const u8 *signature, TrainerCard *trainerCard)
{
    trainerCard->timesLinked = timesLinked;

    if (trainerCard->timesLinked > 999999) {
        trainerCard->timesLinked = 999999;
    }

    trainerCard->linkBattleWins = linkBattleWins;
    trainerCard->linkBattleLosses = linkBattleLosses;

    if (trainerCard->linkBattleWins > 9999) {
        trainerCard->linkBattleWins = 9999;
    }

    if (trainerCard->linkBattleLosses > 9999) {
        trainerCard->linkBattleLosses = 9999;
    }

    trainerCard->linkTrades = linkTrades;

    if (trainerCard->linkTrades > 99999) {
        trainerCard->linkTrades = 99999;
    }

    MI_CpuCopy8(signature, trainerCard->signature, 24 * 8 * 8);
}

static void sub_0207216C(TrainerInfo *param0, FieldSystem *fieldSystem, TrainerCard *trainerCard)
{
    u8 v0;
    TrainerCardSaveData *v1 = SaveData_GetTrainerCardSaveData(fieldSystem->saveData);
    TrainerCardBadge *v2 = TrainerCardSaveData_GetTrainerCardBadges(v1);

    for (v0 = 0; v0 < 8; v0++) {
        if (TrainerInfo_HasBadge(param0, v0)) {
            trainerCard->unk_48[v0].unk_00_0 = 1;
        } else {
            trainerCard->unk_48[v0].unk_00_0 = 0;
        }

        trainerCard->unk_48[v0].unk_00_1 = TrainerCardBadge_GetCleanliness(v0, v2);
    }
}

void sub_020721D4(FieldSystem *fieldSystem, const TrainerCard *trainerCard)
{
    u8 v0;
    TrainerCardSaveData *v1 = SaveData_GetTrainerCardSaveData(fieldSystem->saveData);
    TrainerCardBadge *v2 = TrainerCardSaveData_GetTrainerCardBadges(v1);

    for (v0 = 0; v0 < 8; v0++) {
        TrainerCardBadge_SetCleanliness(v0, trainerCard->unk_48[v0].unk_00_1, v2);
    }
}

void sub_02072204(FieldSystem *fieldSystem)
{
    UnkStruct_02072204 *v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELDMAP, sizeof(UnkStruct_02072204));

    v0->unk_00 = 0;
    v0->unk_04 = (TrainerCard *)sub_0205C17C(fieldSystem->unk_7C);

    FieldTask_InitCall(fieldSystem->task, sub_02072230, v0);
}

static BOOL sub_02072230(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_02072204 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case 0:
        sub_0205C214(fieldSystem->unk_7C);
        v1->unk_00 = 1;
    case 1:
        if (v1->unk_04->unk_66A != 0) {
            v1->unk_00 = 10;
        }
        break;
    case 10:
        sub_0203E09C(fieldSystem, v1->unk_04);
        v1->unk_00 = 11;
        break;
    case 11:
        if (!FieldSystem_IsRunningApplication(fieldSystem)) {
            sub_0205C1F0(fieldSystem->unk_7C);
            Heap_Free(v1);
            return 1;
        }
        break;
    }

    return 0;
}
