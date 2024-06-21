#include <nitro.h>
#include <string.h>

#include "struct_decls/pokedexdata_decl.h"

#include "unk_0201D15C.h"
#include "savedata.h"
#include "unk_0202631C.h"
#include "game_records.h"

static void sub_0202CD94(GameRecords * param0, int param1);
static void sub_0202CDC0(GameRecords * param0, int param1);

int GameRecords_SaveSize(void)
{
    return sizeof(GameRecords);
}

void GameRecords_Init(GameRecords *records)
{
    MI_CpuClear32(records, sizeof(GameRecords));
    records->unk_1B8.unk_02 = OS_GetVBlankCount() | (OS_GetVBlankCount() << 8);

    sub_0202CD94(records, 1);
}

GameRecords *SaveData_GetGameRecordsPtr(SaveData *savedata)
{
    return SaveData_SaveTable(savedata, SAVE_TABLE_ENTRY_GAME_RECORDS);
}

static void sub_0202CD94 (GameRecords * records, int param1)
{
    if (param1 == (0 + 0)) {
        return;
    }

    records->unk_1B8.unk_00 = SumBytes(&records->recordsU32[1], sizeof(GameRecords) - sizeof(GameRecords_sub1) - sizeof(u32)) & 0xffff;
    EncodeData(&records->recordsU32[1], sizeof(GameRecords) - sizeof(GameRecords_sub1) - sizeof(u32), records->unk_1B8.unk_00 + (records->unk_1B8.unk_02 << 16));
}

static void sub_0202CDC0 (GameRecords * records, int param1)
{
    if (param1 == (0 + 0)) {
        return;
    }

    DecodeData(&records->recordsU32[1], sizeof(GameRecords) - sizeof(GameRecords_sub1) - sizeof(u32), records->unk_1B8.unk_00 + (records->unk_1B8.unk_02 << 16));
}

static u32 sub_0202CDE0 (const GameRecords * records, int param1)
{
    if (param1 < ((70 + 1))) {
        return records->recordsU32[param1];
    } else if (param1 < ((49 + 28) + ((70 + 1)))) {
        return records->recordsU16[param1 - ((70 + 1))];
    }

    GF_ASSERT(0);
    return 0;
}

static u32 sub_0202CE08 (GameRecords * records, int param1, u32 param2)
{
    if (param1 < ((70 + 1))) {
        records->recordsU32[param1] = param2;
    } else if (param1 < ((49 + 28) + ((70 + 1)))) {
        records->recordsU16[param1 - ((70 + 1))] = param2;
    } else {
        GF_ASSERT(0);
    }

    return sub_0202CDE0(records, param1);
}

static u32 sub_0202CE3C (int records)
{
    static u8 v0[148] = {
        0x1,
        0x1,
        0x1,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x0,
        0x1,
        0x1,
        0x0,
        0x1,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    };
    if (records < ((70 + 1))) {
        if (v0[records]) {
            return 999999999;
        } else {
            return 999999;
        }
    } else if (records < ((49 + 28) + ((70 + 1)))) {
        if (v0[records]) {
            return 0xffff;
        } else {
            return 9999;
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

u32 sub_0202CE90 (GameRecords * records, int param1, u32 param2)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;

    sub_0202CDC0(records, param1);

    if (param2 < v0) {
        v1 = sub_0202CE08(records, param1, param2);
    } else {
        v1 = sub_0202CE08(records, param1, v0);
    }

    sub_0202CD94(records, param1);

    return v1;
}

u32 sub_0202CED0 (GameRecords * records, int param1, u32 param2)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;
    u32 v2;

    sub_0202CDC0(records, param1);

    v1 = sub_0202CDE0(records, param1);
    v2 = v1;

    if (param2 > v0) {
        param2 = v0;
    }

    if (v1 < param2) {
        v2 = sub_0202CE08(records, param1, param2);
    } else {
        if (v1 > v0) {
            v2 = sub_0202CE08(records, param1, v0);
        }
    }

    sub_0202CD94(records, param1);

    return v2;
}

u32 sub_0202CF28 (GameRecords * records, int param1)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;
    u32 v2;

    sub_0202CDC0(records, param1);

    v1 = sub_0202CDE0(records, param1);

    if (v1 + 1 < v0) {
        v2 = sub_0202CE08(records, param1, v1 + 1);
    } else {
        v2 = sub_0202CE08(records, param1, v0);
    }

    sub_0202CD94(records, param1);

    return v2;
}

u32 sub_0202CF70 (GameRecords * records, int param1, u32 param2)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;
    u32 v2;

    sub_0202CDC0(records, param1);

    v1 = sub_0202CDE0(records, param1);

    if (v1 + param2 < v0) {
        v2 = sub_0202CE08(records, param1, v1 + param2);
    } else {
        v2 = sub_0202CE08(records, param1, v0);
    }

    sub_0202CD94(records, param1);

    return v2;
}

u32 sub_0202CFB8 (GameRecords * records, int param1)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;

    sub_0202CDC0(records, param1);
    v1 = sub_0202CDE0(records, param1);
    sub_0202CD94(records, param1);

    if (v1 > v0) {
        return v0;
    } else {
        return v1;
    }
}

void sub_0202CFEC (GameRecords * records, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 51);

    v0 = sub_0202CFB8(records, (0 + 1));

    if (v0 + sub_0202CE84(param1) > 99999999) {
        sub_0202CE90(records, (0 + 1), 99999999);
    } else {
        sub_0202CF70(records, (0 + 1), sub_0202CE84(param1));
    }
}

u32 sub_0202D034 (GameRecords * records)
{
    return sub_0202CFB8(records, (0 + 1));
}

void sub_0202D040 (GameRecords * records, const PokedexData * param1, u16 const param2)
{
    if (!Pokedex_CaughtSpecies(param1, param2)) {
        sub_0202CFEC(records, 22);
    }
}
