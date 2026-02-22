#include "game_records.h"

#include <nitro.h>

#include "generated/game_records.h"
#include "generated/trainer_score_events.h"

#include "math_util.h"
#include "pokedex.h"

#define START_ENCODED_RECORDS RECORD_TRAINER_SCORE
#define SIZE_ENCODED_RECORDS  (sizeof(GameRecords) - sizeof(EncodingSeed) - (START_ENCODED_RECORDS * sizeof(u32)))

static void EncodeGameRecords(GameRecords *records, int id);
static void DecodeGameRecords(GameRecords *records, int id);
static u32 GetRecordValue(const GameRecords *records, int id);
static u32 SetRecordValue(GameRecords *records, int id, u32 val);
static u32 GetRecordLimit(int id);
static int GetTrainerScoreIncrement(int records);

int GameRecords_SaveSize(void)
{
    return sizeof(GameRecords);
}

void GameRecords_Init(GameRecords *records)
{
    MI_CpuClear32(records, sizeof(GameRecords));
    records->seed.modifier = OS_GetVBlankCount() | (OS_GetVBlankCount() << 8);

    EncodeGameRecords(records, START_ENCODED_RECORDS);
}

GameRecords *SaveData_GetGameRecords(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_GAME_RECORDS);
}

// this inline does not match when operating on the substruct
static inline u32 HashEncodingSeed(GameRecords *records)
{
    return records->seed.byteSum + (records->seed.modifier << 16);
}

static void EncodeGameRecords(GameRecords *records, int id)
{
    if (id == RECORD_UNK_000) {
        return;
    }

    records->seed.byteSum = SumBytes(&records->recordsU32[START_ENCODED_RECORDS], SIZE_ENCODED_RECORDS) & 0xFFFF;
    EncodeData(&records->recordsU32[START_ENCODED_RECORDS], SIZE_ENCODED_RECORDS, HashEncodingSeed(records));
}

static void DecodeGameRecords(GameRecords *records, int id)
{
    if (id == RECORD_UNK_000) {
        return;
    }

    DecodeData(&records->recordsU32[START_ENCODED_RECORDS], SIZE_ENCODED_RECORDS, HashEncodingSeed(records));
}

static u32 GetRecordValue(const GameRecords *records, int id)
{
    if (id < NUM_U32_RECORDS) {
        return records->recordsU32[id];
    } else if (id < NUM_U16_RECORDS + NUM_U32_RECORDS) {
        return records->recordsU16[id - NUM_U32_RECORDS];
    }

    GF_ASSERT(FALSE);
    return 0;
}

static u32 SetRecordValue(GameRecords *records, int id, u32 val)
{
    if (id < NUM_U32_RECORDS) {
        records->recordsU32[id] = val;
    } else if (id < MAX_RECORDS) {
        records->recordsU16[id - NUM_U32_RECORDS] = val;
    } else {
        GF_ASSERT(FALSE);
    }

    return GetRecordValue(records, id);
}

static u8 sUsesHighLimit[MAX_RECORDS] = {
    [RECORD_UNK_000] = TRUE,
    [RECORD_TRAINER_SCORE] = TRUE,
    [RECORD_UNK_002] = TRUE,
    [RECORD_UNK_003] = FALSE,
    [RECORD_BERRIES_PLANTED] = TRUE,
    [RECORD_UNK_005] = TRUE,
    [RECORD_UNK_006] = TRUE,
    [RECORD_WILD_BATTLES_FOUGHT] = TRUE,
    [RECORD_TRAINER_BATTLES_FOUGHT] = TRUE,
    [RECORD_CAUGHT_POKEMON] = FALSE,
    [RECORD_CAUGHT_FISH] = FALSE,
    [RECORD_EGGS_HATCHED] = FALSE,
    [RECORD_POKEMON_EVOLVED] = TRUE,
    [RECORD_UNK_013] = TRUE,
    [RECORD_UNK_014] = TRUE,
    [RECORD_UNK_015] = TRUE,
    [RECORD_UNK_016] = TRUE,
    [RECORD_UNK_017] = TRUE,
    [RECORD_UNK_018] = TRUE,
    [RECORD_LOCAL_LINK_TRADES] = TRUE,
    [RECORD_UNK_020] = TRUE,
    [RECORD_LOCAL_LINK_BATTLE_WINS] = TRUE,
    [RECORD_LOCAL_LINK_BATTLE_LOSSES] = TRUE,
    [RECORD_UNK_023] = TRUE,
    [RECORD_WIFI_TRADES] = TRUE,
    [RECORD_UNK_025] = TRUE,
    [RECORD_WIFI_BATTLE_WINS] = TRUE,
    [RECORD_WIFI_BATTLE_LOSSES] = TRUE,
    [RECORD_UNK_028] = TRUE,
    [RECORD_UNK_029] = TRUE,
    [RECORD_UNK_030] = TRUE,
    [RECORD_UNK_031] = TRUE,
    [RECORD_UNK_032] = TRUE,
    [RECORD_UNK_033] = TRUE,
    [RECORD_UNK_034] = TRUE,
    [RECORD_MONEY_SPENT] = TRUE,
    [RECORD_UNK_036] = TRUE,
    [RECORD_UNK_037] = TRUE,
    [RECORD_UNK_038] = TRUE,
    [RECORD_UNK_039] = TRUE,
    [RECORD_DEPOSITED_IN_DAYCARE] = TRUE,
    [RECORD_FAINTED_IN_BATTLE] = FALSE,
    [RECORD_UNK_042] = FALSE,
    [RECORD_UNK_043] = FALSE,
    [RECORD_UNK_044] = FALSE,
    [RECORD_UNK_045] = FALSE,
    [RECORD_UNK_046] = FALSE,
    [RECORD_SPHERES_BURIED] = FALSE,
    [RECORD_WATCHED_TV] = FALSE,
    [RECORD_POKEMON_NICKNAMED] = FALSE,
    [RECORD_UNK_050] = FALSE,
    [RECORD_UNK_051] = FALSE,
    [RECORD_UNK_052] = FALSE,
    [RECORD_UNK_053] = FALSE,
    [RECORD_TIMES_DRESSED_UP_POKEMON] = FALSE,
    [RECORD_UNK_055] = FALSE,
    [RECORD_TIMES_STUCK_IN_DEEP_MUD] = FALSE,
    [RECORD_UNK_057] = TRUE,
    [RECORD_UNK_058] = TRUE,
    [RECORD_UNK_059] = TRUE,
    [RECORD_UNK_060] = TRUE,
    [RECORD_UNK_061] = TRUE,
    [RECORD_UNK_062] = TRUE,
    [RECORD_UNK_063] = TRUE,
    [RECORD_UNK_064] = TRUE,
    [RECORD_UNK_065] = TRUE,
    [RECORD_UNK_066] = TRUE,
    [RECORD_UNK_067] = TRUE,
    [RECORD_BATTLE_POINTS_RECEIVED] = TRUE,
    [RECORD_BATTLE_POINTS_SPENT] = TRUE,
    [RECORD_UNK_070] = FALSE,
    [RECORD_UNK_071] = TRUE,
    [RECORD_UNK_072] = TRUE,
    [RECORD_TIMES_ENTERED_HALL_OF_FAME] = FALSE,
    [RECORD_UNK_074] = TRUE,
    [RECORD_UNK_075] = TRUE,
    [RECORD_USED_SPLASH] = FALSE,
    [RECORD_UNK_077] = FALSE,
    [RECORD_USED_SELFDESTRUCT] = FALSE,
    [RECORD_USED_EXPLOSION] = FALSE,
    [RECORD_UNK_080] = FALSE,
    [RECORD_UNK_081] = FALSE,
    [RECORD_UNK_082] = FALSE,
    [RECORD_UNK_083] = FALSE,
    [RECORD_UNK_084] = FALSE,
    [RECORD_UNK_085] = FALSE,
    [RECORD_UNK_086] = FALSE,
    [RECORD_UNK_087] = FALSE,
    [RECORD_UNK_088] = FALSE,
    [RECORD_UNK_089] = FALSE,
    [RECORD_UNK_090] = FALSE,
    [RECORD_UNK_091] = FALSE,
    [RECORD_SUPER_CONTEST_WINS] = FALSE,
    [RECORD_LINK_CONTEST_WINS] = FALSE,
    [RECORD_UNK_094] = TRUE,
    [RECORD_USED_INEFFECTIVE_MOVE] = FALSE,
    [RECORD_FAINTED_ENEMY_MON] = FALSE,
    [RECORD_ATTACKED_ALLY] = FALSE,
    [RECORD_FAILED_ESCAPE] = FALSE,
    [RECORD_WILD_MON_FLED] = FALSE,
    [RECORD_FISH_GOT_AWAY] = FALSE,
    [RECORD_UNK_101] = FALSE,
    [RECORD_UNK_102] = FALSE,
    [RECORD_UNK_103] = FALSE,
    [RECORD_UNK_104] = FALSE,
    [RECORD_UNK_105] = FALSE,
    [RECORD_UNK_106] = FALSE,
    [RECORD_UNK_107] = FALSE,
    [RECORD_UNK_108] = FALSE,
    [RECORD_UNK_109] = FALSE,
    [RECORD_UNK_110] = FALSE,
    [RECORD_UNK_111] = FALSE,
    [RECORD_UNK_112] = TRUE,
    [RECORD_UNK_113] = FALSE,
    [RECORD_UNK_114] = FALSE,
    [RECORD_POKEMON_RECEIVED_FROM_FOSSIL_REVIVAL] = FALSE,
    [RECORD_CHECKED_FOOTPRINTS] = FALSE,
    [RECORD_UNK_117] = FALSE,
    [RECORD_UNK_118] = FALSE,
    [RECORD_UNK_119] = FALSE,
    [RECORD_UNK_120] = FALSE,
    [RECORD_UNK_121] = FALSE,
    [RECORD_UNK_122] = FALSE,
    [RECORD_UNK_123] = FALSE,
    [RECORD_UNK_124] = FALSE,
    [RECORD_UNK_125] = FALSE,
    [RECORD_UNK_126] = FALSE,
    [RECORD_UNK_127] = FALSE,
    [RECORD_UNK_128] = FALSE,
    [RECORD_UNK_129] = FALSE,
    [RECORD_UNK_130] = FALSE,
    [RECORD_UNK_131] = FALSE,
    [RECORD_UNK_132] = FALSE,
    [RECORD_UNK_133] = FALSE,
    [RECORD_UNK_134] = FALSE,
    [RECORD_UNK_135] = FALSE,
    [RECORD_UNK_136] = FALSE,
    [RECORD_UNK_137] = FALSE,
    [RECORD_UNK_138] = FALSE,
    [RECORD_UNK_139] = FALSE,
    [RECORD_UNK_140] = FALSE,
    [RECORD_UNK_141] = FALSE,
    [RECORD_UNK_142] = FALSE,
    [RECORD_UNK_143] = FALSE,
    [RECORD_UNK_144] = FALSE,
    [RECORD_UNK_145] = FALSE,
    [RECORD_UNK_146] = FALSE,
    [RECORD_UNK_147] = FALSE,
};

static u32 GetRecordLimit(int id)
{
    if (id < NUM_U32_RECORDS) {
        if (sUsesHighLimit[id]) {
            return HIGH_LIMIT_U32;
        } else {
            return LOW_LIMIT_U32;
        }
    } else if (id < MAX_RECORDS) {
        if (sUsesHighLimit[id]) {
            return HIGH_LIMIT_U16;
        } else {
            return LOW_LIMIT_U16;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static const u16 sTrainerScoreIncrements[MAX_TRAINER_SCORE_EVENTS] = {
    [TRAINER_SCORE_EVENT_BERRY_HARVESTED] = 1,
    [TRAINER_SCORE_EVENT_HONEY_USED] = 1,
    [TRAINER_SCORE_EVENT_UNK_02] = 1,
    [TRAINER_SCORE_EVENT_TV_INTERVIEW_GIVEN] = 1,
    [TRAINER_SCORE_EVENT_UNK_04] = 1,
    [TRAINER_SCORE_EVENT_UNK_05] = 1,
    [TRAINER_SCORE_EVENT_UNK_06] = 2,
    [TRAINER_SCORE_EVENT_UNK_07] = 2,
    [TRAINER_SCORE_EVENT_WON_WILD_BATTLE] = 2,
    [TRAINER_SCORE_EVENT_CAPTURED_REGIONAL_MON] = 2,
    [TRAINER_SCORE_EVENT_CAPTURED_NATIONAL_MON] = 3,
    [TRAINER_SCORE_EVENT_WON_TRAINER_BATTLE] = 3,
    [TRAINER_SCORE_EVENT_UNK_12] = 3,
    [TRAINER_SCORE_EVENT_WIN_SUPER_CONTEST] = 7,
    [TRAINER_SCORE_EVENT_UNK_14] = 7,
    [TRAINER_SCORE_EVENT_UNK_15] = 7,
    [TRAINER_SCORE_EVENT_UNK_16] = 10,
    [TRAINER_SCORE_EVENT_FINISHED_CATCHING_SHOW] = 10,
    [TRAINER_SCORE_EVENT_UNK_18] = 11,
    [TRAINER_SCORE_EVENT_WIN_LINK_CONTEST] = 11,
    [TRAINER_SCORE_EVENT_UNK_20] = 11,
    [TRAINER_SCORE_EVENT_FOUGHT_LINK_BATTLE] = 11,
    [TRAINER_SCORE_EVENT_CAUGHT_SPECIES] = 20,
    [TRAINER_SCORE_EVENT_BADGE_EARNED] = 30,
    [TRAINER_SCORE_EVENT_HALL_OF_FAME_ENTRY] = 35,
    [TRAINER_SCORE_EVENT_GTS_TRADE_COMPLETE] = 40,
    [TRAINER_SCORE_EVENT_LOCAL_DEX_DIPLOMA_RECEIVED] = 500,
    [TRAINER_SCORE_EVENT_NATIONAL_DEX_DIPLOMA_RECEIVED] = 10000,
    [TRAINER_SCORE_EVENT_UNDERGROUND_CAPTURE_FLAG] = 30,
    [TRAINER_SCORE_EVENT_UNDERGROUND_UNUSED] = 30,
    [TRAINER_SCORE_EVENT_UNDERGROUND_UNCOVER_FOSSIL] = 2,
    [TRAINER_SCORE_EVENT_UNDERGROUND_GIVE_PLAYER_GOODS] = 5,
    [TRAINER_SCORE_EVENT_UNDERGROUND_GREET_PLAYER] = 1,
    [TRAINER_SCORE_EVENT_UNDERGROUND_ASK_PLAYER_QUESTION] = 1,
    [TRAINER_SCORE_EVENT_UNDERGROUND_HELP_TRAPPED_PLAYER] = 5,
    [TRAINER_SCORE_EVENT_UNDERGROUND_NEW_SECRET_BASE] = 3,
    [TRAINER_SCORE_EVENT_UNDERGROUND_ENTERED] = 1,
    [TRAINER_SCORE_EVENT_UNDERGROUND_100_STEPS] = 1,
    [TRAINER_SCORE_EVENT_UNK_38] = 7,
    [TRAINER_SCORE_EVENT_UNK_39] = 7,
    [TRAINER_SCORE_EVENT_BATTLE_HALL_ROUND_COMPLETED] = 7,
    [TRAINER_SCORE_EVENT_UNK_41] = 7,
    [TRAINER_SCORE_EVENT_ALL_BATTLE_FRONTIER_GOLD_PRINTS] = 1000,
    [TRAINER_SCORE_EVENT_UNK_43] = 11,
    [TRAINER_SCORE_EVENT_UNK_44] = 20,
    [TRAINER_SCORE_EVENT_UNK_45] = 10,
    [TRAINER_SCORE_EVENT_UNK_46] = 15,
    [TRAINER_SCORE_EVENT_UNK_47] = 11,
    [TRAINER_SCORE_EVENT_UNK_48] = 11,
    [TRAINER_SCORE_EVENT_UNK_49] = 10,
    [TRAINER_SCORE_EVENT_UNK_50] = 10,
};

static int GetTrainerScoreIncrement(int records)
{
    return sTrainerScoreIncrements[records];
}

static inline u32 SetRecordValueWithLimit(GameRecords *records, int id, u32 val, u32 limit)
{
    return val < limit
        ? SetRecordValue(records, id, val)
        : SetRecordValue(records, id, limit);
}

u32 GameRecords_SetRecordValue(GameRecords *records, int id, u32 val)
{
    u32 limit = GetRecordLimit(id);

    DecodeGameRecords(records, id);
    u32 new = SetRecordValueWithLimit(records, id, val, limit);
    EncodeGameRecords(records, id);

    return new;
}

u32 GameRecords_SetAndLimitRecordValue(GameRecords *records, int id, u32 val)
{
    u32 limit = GetRecordLimit(id);

    DecodeGameRecords(records, id);
    u32 cur = GetRecordValue(records, id);
    u32 new = cur;

    if (val > limit) {
        val = limit;
    }

    if (cur < val) {
        new = SetRecordValue(records, id, val);
    } else if (cur > limit) {
        new = SetRecordValue(records, id, limit);
    }

    EncodeGameRecords(records, id);

    return new;
}

u32 GameRecords_IncrementRecordValue(GameRecords *records, int id)
{
    u32 limit = GetRecordLimit(id);

    DecodeGameRecords(records, id);
    u32 cur = GetRecordValue(records, id);
    u32 new = SetRecordValueWithLimit(records, id, cur + 1, limit);
    EncodeGameRecords(records, id);

    return new;
}

u32 GameRecords_AddToRecordValue(GameRecords *records, int id, u32 toAdd)
{
    u32 limit = GetRecordLimit(id);

    DecodeGameRecords(records, id);
    u32 cur = GetRecordValue(records, id);
    u32 new = SetRecordValueWithLimit(records, id, cur + toAdd, limit);
    EncodeGameRecords(records, id);

    return new;
}

u32 GameRecords_GetRecordValue(GameRecords *records, int id)
{
    u32 limit = GetRecordLimit(id);

    DecodeGameRecords(records, id);
    u32 cur = GetRecordValue(records, id);
    EncodeGameRecords(records, id);

    return cur > limit ? limit : cur;
}

void GameRecords_IncrementTrainerScore(GameRecords *records, int scoreID)
{
    GF_ASSERT(scoreID < MAX_TRAINER_SCORE_EVENTS);

    u32 cur = GameRecords_GetRecordValue(records, RECORD_TRAINER_SCORE);
    if (cur + GetTrainerScoreIncrement(scoreID) > TRAINER_SCORE_LIMIT) {
        GameRecords_SetRecordValue(records, RECORD_TRAINER_SCORE, TRAINER_SCORE_LIMIT);
    } else {
        GameRecords_AddToRecordValue(records, RECORD_TRAINER_SCORE, GetTrainerScoreIncrement(scoreID));
    }
}

u32 GameRecords_GetTrainerScore(GameRecords *records)
{
    return GameRecords_GetRecordValue(records, RECORD_TRAINER_SCORE);
}

void GameRecords_IncrementTrainerScoreOnCatch(GameRecords *records, const Pokedex *pokedex, const u16 species)
{
    if (!Pokedex_HasCaughtSpecies(pokedex, species)) {
        GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_CAUGHT_SPECIES);
    }
}
