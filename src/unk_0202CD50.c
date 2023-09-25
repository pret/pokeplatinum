#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02026324_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "unk_0201D15C.h"
#include "unk_020244AC.h"
#include "unk_0202631C.h"
#include "unk_0202CD50.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
} UnkStruct_0202CD88_sub1;

typedef struct UnkStruct_0202CD88_t {
    u32 unk_00[71];
    u16 unk_11C[77];
    u16 unk_1B6;
    UnkStruct_0202CD88_sub1 unk_1B8;
} UnkStruct_0202CD88;

static void sub_0202CD94(UnkStruct_0202CD88 * param0, int param1);
static void sub_0202CDC0(UnkStruct_0202CD88 * param0, int param1);

int GameRecord_SaveSize (void)
{
    return sizeof(UnkStruct_0202CD88);
}

void GameRecord_Init (UnkStruct_0202CD88 * param0)
{
    MI_CpuClear32(param0, sizeof(UnkStruct_0202CD88));
    param0->unk_1B8.unk_02 = OS_GetVBlankCount() | (OS_GetVBlankCount() << 8);

    sub_0202CD94(param0, (0 + 1));
}

UnkStruct_0202CD88 * sub_0202CD88 (SaveData * param0)
{
    return SaveData_Get(param0, 20);
}

static void sub_0202CD94 (UnkStruct_0202CD88 * param0, int param1)
{
    if (param1 == (0 + 0)) {
        return;
    }

    param0->unk_1B8.unk_00 = sub_0201D5B8(&param0->unk_00[1], sizeof(UnkStruct_0202CD88) - sizeof(UnkStruct_0202CD88_sub1) - sizeof(u32)) & 0xffff;
    EncryptData(&param0->unk_00[1], sizeof(UnkStruct_0202CD88) - sizeof(UnkStruct_0202CD88_sub1) - sizeof(u32), param0->unk_1B8.unk_00 + (param0->unk_1B8.unk_02 << 16));
}

static void sub_0202CDC0 (UnkStruct_0202CD88 * param0, int param1)
{
    if (param1 == (0 + 0)) {
        return;
    }

    DecryptData(&param0->unk_00[1], sizeof(UnkStruct_0202CD88) - sizeof(UnkStruct_0202CD88_sub1) - sizeof(u32), param0->unk_1B8.unk_00 + (param0->unk_1B8.unk_02 << 16));
}

static u32 sub_0202CDE0 (const UnkStruct_0202CD88 * param0, int param1)
{
    if (param1 < ((70 + 1))) {
        return param0->unk_00[param1];
    } else if (param1 < ((49 + 28) + ((70 + 1)))) {
        return param0->unk_11C[param1 - ((70 + 1))];
    }

    GF_ASSERT(0);
    return 0;
}

static u32 sub_0202CE08 (UnkStruct_0202CD88 * param0, int param1, u32 param2)
{
    if (param1 < ((70 + 1))) {
        param0->unk_00[param1] = param2;
    } else if (param1 < ((49 + 28) + ((70 + 1)))) {
        param0->unk_11C[param1 - ((70 + 1))] = param2;
    } else {
        GF_ASSERT(0);
    }

    return sub_0202CDE0(param0, param1);
}

static u32 sub_0202CE3C (int param0)
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
    if (param0 < ((70 + 1))) {
        if (v0[param0]) {
            return 999999999;
        } else {
            return 999999;
        }
    } else if (param0 < ((49 + 28) + ((70 + 1)))) {
        if (v0[param0]) {
            return 0xffff;
        } else {
            return 9999;
        }
    }

    GF_ASSERT(0);
    return 0;
}

static int sub_0202CE84 (int param0)
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

    return v0[param0];
}

u32 sub_0202CE90 (UnkStruct_0202CD88 * param0, int param1, u32 param2)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;

    sub_0202CDC0(param0, param1);

    if (param2 < v0) {
        v1 = sub_0202CE08(param0, param1, param2);
    } else {
        v1 = sub_0202CE08(param0, param1, v0);
    }

    sub_0202CD94(param0, param1);

    return v1;
}

u32 sub_0202CED0 (UnkStruct_0202CD88 * param0, int param1, u32 param2)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;
    u32 v2;

    sub_0202CDC0(param0, param1);

    v1 = sub_0202CDE0(param0, param1);
    v2 = v1;

    if (param2 > v0) {
        param2 = v0;
    }

    if (v1 < param2) {
        v2 = sub_0202CE08(param0, param1, param2);
    } else {
        if (v1 > v0) {
            v2 = sub_0202CE08(param0, param1, v0);
        }
    }

    sub_0202CD94(param0, param1);

    return v2;
}

u32 sub_0202CF28 (UnkStruct_0202CD88 * param0, int param1)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;
    u32 v2;

    sub_0202CDC0(param0, param1);

    v1 = sub_0202CDE0(param0, param1);

    if (v1 + 1 < v0) {
        v2 = sub_0202CE08(param0, param1, v1 + 1);
    } else {
        v2 = sub_0202CE08(param0, param1, v0);
    }

    sub_0202CD94(param0, param1);

    return v2;
}

u32 sub_0202CF70 (UnkStruct_0202CD88 * param0, int param1, u32 param2)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;
    u32 v2;

    sub_0202CDC0(param0, param1);

    v1 = sub_0202CDE0(param0, param1);

    if (v1 + param2 < v0) {
        v2 = sub_0202CE08(param0, param1, v1 + param2);
    } else {
        v2 = sub_0202CE08(param0, param1, v0);
    }

    sub_0202CD94(param0, param1);

    return v2;
}

u32 sub_0202CFB8 (UnkStruct_0202CD88 * param0, int param1)
{
    u32 v0 = sub_0202CE3C(param1);
    u32 v1;

    sub_0202CDC0(param0, param1);
    v1 = sub_0202CDE0(param0, param1);
    sub_0202CD94(param0, param1);

    if (v1 > v0) {
        return v0;
    } else {
        return v1;
    }
}

void sub_0202CFEC (UnkStruct_0202CD88 * param0, int param1)
{
    u32 v0;

    GF_ASSERT(param1 < 51);

    v0 = sub_0202CFB8(param0, (0 + 1));

    if (v0 + sub_0202CE84(param1) > 99999999) {
        sub_0202CE90(param0, (0 + 1), 99999999);
    } else {
        sub_0202CF70(param0, (0 + 1), sub_0202CE84(param1));
    }
}

u32 sub_0202D034 (UnkStruct_0202CD88 * param0)
{
    return sub_0202CFB8(param0, (0 + 1));
}

void sub_0202D040 (UnkStruct_0202CD88 * param0, const UnkStruct_02026324 * param1, u16 const param2)
{
    if (!sub_02026F9C(param1, param2)) {
        sub_0202CFEC(param0, 22);
    }
}
