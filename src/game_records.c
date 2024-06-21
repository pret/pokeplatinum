#include <nitro.h>
#include <string.h>

#include "consts/game_records.h"

#include "struct_decls/pokedexdata_decl.h"

#include "unk_0201D15C.h"
#include "savedata.h"
#include "unk_0202631C.h"
#include "game_records.h"

#define START_ENCODED_RECORDS   RECORD_UNK_001
#define SIZE_ENCODED_RECORDS    (sizeof(GameRecords) - sizeof(EncodingSeed) - (START_ENCODED_RECORDS * sizeof(u32)))

static void EncodeGameRecords(GameRecords *records, int id);
static void DecodeGameRecords(GameRecords *records, int id);
static u32 GetRecordValue(const GameRecords *records, int id);
static u32 SetRecordValue(GameRecords *records, int id, u32 val);
static u32 GetRecordLimit(int id);

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
   [RECORD_UNK_001] = TRUE,
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

static int sub_0202CE84 (int records)
{
    static const u16 v0[51] = {
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x3,
        0x3,
        0x7,
        0x7,
        0x7,
        0xA,
        0xA,
        0xB,
        0xB,
        0xB,
        0xB,
        0x14,
        0x1E,
        0x23,
        0x28,
        0x1F4,
        0x2710,
        0x1E,
        0x1E,
        0x2,
        0x5,
        0x1,
        0x1,
        0x5,
        0x3,
        0x1,
        0x1,
        0x7,
        0x7,
        0x7,
        0x7,
        0x3E8,
        0xB,
        0x14,
        0xA,
        0xF,
        0xB,
        0xB,
        0xA,
        0xA
    };

    return v0[records];
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

void sub_0202CFEC (GameRecords * records, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 51);

    v0 = GameRecords_GetRecordValue(records, (0 + 1));

    if (v0 + sub_0202CE84(param1) > 99999999) {
        GameRecords_SetRecordValue(records, (0 + 1), 99999999);
    } else {
        GameRecords_AddToRecordValue(records, (0 + 1), sub_0202CE84(param1));
    }
}

u32 sub_0202D034 (GameRecords * records)
{
    return GameRecords_GetRecordValue(records, (0 + 1));
}

void sub_0202D040 (GameRecords * records, const PokedexData * param1, u16 const param2)
{
    if (!Pokedex_CaughtSpecies(param1, param2)) {
        sub_0202CFEC(records, 22);
    }
}
