#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/pokedexdata_decl.h"

#include "unk_0201D15C.h"
#include "savedata.h"
#include "unk_0202631C.h"
#include "game_records.h"

#define START_ENCODED_RECORDS   RECORD_TRAINER_SCORE
#define SIZE_ENCODED_RECORDS    (sizeof(GameRecords) - sizeof(EncodingSeed) - (START_ENCODED_RECORDS * sizeof(u32)))

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

GameRecords *SaveData_GetGameRecordsPtr(SaveData *savedata)
{
    return SaveData_SaveTable(savedata, SAVE_TABLE_ENTRY_GAME_RECORDS);
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
   [RECORD_UNK_004] = TRUE,
   [RECORD_UNK_005] = TRUE,
   [RECORD_UNK_006] = TRUE,
   [RECORD_UNK_007] = TRUE,
   [RECORD_UNK_008] = TRUE,
   [RECORD_UNK_009] = FALSE,
   [RECORD_UNK_010] = FALSE,
   [RECORD_UNK_011] = FALSE,
   [RECORD_UNK_012] = TRUE,
   [RECORD_UNK_013] = TRUE,
   [RECORD_UNK_014] = TRUE,
   [RECORD_UNK_015] = TRUE,
   [RECORD_UNK_016] = TRUE,
   [RECORD_UNK_017] = TRUE,
   [RECORD_UNK_018] = TRUE,
   [RECORD_UNK_019] = TRUE,
   [RECORD_UNK_020] = TRUE,
   [RECORD_UNK_021] = TRUE,
   [RECORD_UNK_022] = TRUE,
   [RECORD_UNK_023] = TRUE,
   [RECORD_UNK_024] = TRUE,
   [RECORD_UNK_025] = TRUE,
   [RECORD_UNK_026] = TRUE,
   [RECORD_UNK_027] = TRUE,
   [RECORD_UNK_028] = TRUE,
   [RECORD_UNK_029] = TRUE,
   [RECORD_UNK_030] = TRUE,
   [RECORD_UNK_031] = TRUE,
   [RECORD_UNK_032] = TRUE,
   [RECORD_UNK_033] = TRUE,
   [RECORD_UNK_034] = TRUE,
   [RECORD_UNK_035] = TRUE,
   [RECORD_UNK_036] = TRUE,
   [RECORD_UNK_037] = TRUE,
   [RECORD_UNK_038] = TRUE,
   [RECORD_UNK_039] = TRUE,
   [RECORD_UNK_040] = TRUE,
   [RECORD_UNK_041] = FALSE,
   [RECORD_UNK_042] = FALSE,
   [RECORD_UNK_043] = FALSE,
   [RECORD_UNK_044] = FALSE,
   [RECORD_UNK_045] = FALSE,
   [RECORD_UNK_046] = FALSE,
   [RECORD_UNK_047] = FALSE,
   [RECORD_UNK_048] = FALSE,
   [RECORD_UNK_049] = FALSE,
   [RECORD_UNK_050] = FALSE,
   [RECORD_UNK_051] = FALSE,
   [RECORD_UNK_052] = FALSE,
   [RECORD_UNK_053] = FALSE,
   [RECORD_UNK_054] = FALSE,
   [RECORD_UNK_055] = FALSE,
   [RECORD_UNK_056] = FALSE,
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
   [RECORD_UNK_068] = TRUE,
   [RECORD_UNK_069] = TRUE,
   [RECORD_UNK_070] = FALSE,
   [RECORD_UNK_071] = TRUE,
   [RECORD_UNK_072] = TRUE,
   [RECORD_UNK_073] = FALSE,
   [RECORD_UNK_074] = TRUE,
   [RECORD_UNK_075] = TRUE,
   [RECORD_UNK_076] = FALSE,
   [RECORD_UNK_077] = FALSE,
   [RECORD_UNK_078] = FALSE,
   [RECORD_UNK_079] = FALSE,
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
   [RECORD_UNK_092] = FALSE,
   [RECORD_UNK_093] = FALSE,
   [RECORD_UNK_094] = TRUE,
   [RECORD_UNK_095] = FALSE,
   [RECORD_UNK_096] = FALSE,
   [RECORD_UNK_097] = FALSE,
   [RECORD_UNK_098] = FALSE,
   [RECORD_UNK_099] = FALSE,
   [RECORD_UNK_100] = FALSE,
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
   [RECORD_UNK_115] = FALSE,
   [RECORD_UNK_116] = FALSE,
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

    GF_ASSERT(0);
    return 0;
}

static const u16 sTrainerScoreIncrements[MAX_TRAINER_SCORE_EVENTS] = {
    [TRAINER_SCORE_EVENT_UNK_00] = 1,
    [TRAINER_SCORE_EVENT_UNK_01] = 1,
    [TRAINER_SCORE_EVENT_UNK_02] = 1,
    [TRAINER_SCORE_EVENT_UNK_03] = 1,
    [TRAINER_SCORE_EVENT_UNK_04] = 1,
    [TRAINER_SCORE_EVENT_UNK_05] = 1,
    [TRAINER_SCORE_EVENT_UNK_06] = 2,
    [TRAINER_SCORE_EVENT_UNK_07] = 2,
    [TRAINER_SCORE_EVENT_UNK_08] = 2,
    [TRAINER_SCORE_EVENT_UNK_09] = 2,
    [TRAINER_SCORE_EVENT_UNK_10] = 3,
    [TRAINER_SCORE_EVENT_UNK_11] = 3,
    [TRAINER_SCORE_EVENT_UNK_12] = 3,
    [TRAINER_SCORE_EVENT_UNK_13] = 7,
    [TRAINER_SCORE_EVENT_UNK_14] = 7,
    [TRAINER_SCORE_EVENT_UNK_15] = 7,
    [TRAINER_SCORE_EVENT_UNK_16] = 10,
    [TRAINER_SCORE_EVENT_UNK_17] = 10,
    [TRAINER_SCORE_EVENT_UNK_18] = 11,
    [TRAINER_SCORE_EVENT_UNK_19] = 11,
    [TRAINER_SCORE_EVENT_UNK_20] = 11,
    [TRAINER_SCORE_EVENT_UNK_21] = 11,
    [TRAINER_SCORE_EVENT_CAUGHT_SPECIES] = 20,
    [TRAINER_SCORE_EVENT_UNK_23] = 30,
    [TRAINER_SCORE_EVENT_UNK_24] = 35,
    [TRAINER_SCORE_EVENT_UNK_25] = 40,
    [TRAINER_SCORE_EVENT_UNK_26] = 500,
    [TRAINER_SCORE_EVENT_UNK_27] = 10000,
    [TRAINER_SCORE_EVENT_UNK_28] = 30,
    [TRAINER_SCORE_EVENT_UNK_29] = 30,
    [TRAINER_SCORE_EVENT_UNK_30] = 2,
    [TRAINER_SCORE_EVENT_UNK_31] = 5,
    [TRAINER_SCORE_EVENT_UNK_32] = 1,
    [TRAINER_SCORE_EVENT_UNK_33] = 1,
    [TRAINER_SCORE_EVENT_UNK_34] = 5,
    [TRAINER_SCORE_EVENT_UNK_35] = 3,
    [TRAINER_SCORE_EVENT_UNK_36] = 1,
    [TRAINER_SCORE_EVENT_UNK_37] = 1,
    [TRAINER_SCORE_EVENT_UNK_38] = 7,
    [TRAINER_SCORE_EVENT_UNK_39] = 7,
    [TRAINER_SCORE_EVENT_UNK_40] = 7,
    [TRAINER_SCORE_EVENT_UNK_41] = 7,
    [TRAINER_SCORE_EVENT_UNK_42] = 1000,
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

void GameRecords_IncrementTrainerScore(GameRecords *records, int id)
{
    GF_ASSERT(id < MAX_TRAINER_SCORE_EVENTS);

    u32 cur = GameRecords_GetRecordValue(records, RECORD_TRAINER_SCORE);
    if (cur + GetTrainerScoreIncrement(id) > TRAINER_SCORE_LIMIT) {
        GameRecords_SetRecordValue(records, RECORD_TRAINER_SCORE, TRAINER_SCORE_LIMIT);
    } else {
        GameRecords_AddToRecordValue(records, RECORD_TRAINER_SCORE, GetTrainerScoreIncrement(id));
    }
}

u32 GameRecords_GetTrainerScore (GameRecords *records)
{
    return GameRecords_GetRecordValue(records, RECORD_TRAINER_SCORE);
}

void GameRecords_IncrementTrainerScoreOnCatch(GameRecords *records, const PokedexData *pokedex, const u16 species)
{
    if (!Pokedex_CaughtSpecies(pokedex, species)) {
        GameRecords_IncrementTrainerScore(records, TRAINER_SCORE_EVENT_CAUGHT_SPECIES);
    }
}
