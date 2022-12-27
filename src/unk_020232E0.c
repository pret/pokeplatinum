#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"

#include "struct_defs/struct_02002328.h"

#include "unk_020068C8.h"
#include "unk_02017E74.h"
#include "unk_0201D0C8.h"
#include "unk_0201D670.h"
#include "unk_020232E0.h"

typedef void (* UnkFuncPtr_02023350)(const UnkStruct_02023350 *, u16, UnkStruct_02002328 *);
typedef u8 (* UnkFuncPtr_02023350_1)(const UnkStruct_02023350 *, u32);

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
} UnkStruct_02023350_sub1;

typedef struct UnkStruct_02023350_t {
    int unk_00;
    UnkFuncPtr_02023350 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u8 * unk_10;
    u8 unk_14[64];
    UnkStruct_02006C24 * unk_54;
    u32 unk_58;
    UnkStruct_02023350_sub1 unk_5C;
    BOOL unk_6C;
    UnkFuncPtr_02023350_1 unk_70;
    u8 * unk_74;
} UnkStruct_02023350;

static void sub_02023350(UnkStruct_02023350 * param0, u32 param1, u32 param2, BOOL param3, u32 param4);
static void sub_02023408(UnkStruct_02023350 * param0);
static void sub_02023424(UnkStruct_02023350 * param0, int param1, u32 param2);
static void sub_0202343C(UnkStruct_02023350 * param0, u32 param1);
static void sub_0202346C(UnkStruct_02023350 * param0, u32 param1);
static void sub_02023478(UnkStruct_02023350 * param0);
static void sub_0202348C(UnkStruct_02023350 * param0);
static void sub_0202349C(UnkStruct_02023350 * param0);
static void sub_020234BC(const UnkStruct_02023350 * param0, u16 param1, UnkStruct_02002328 * param2);
static void sub_02023564(const UnkStruct_02023350 * param0, u16 param1, UnkStruct_02002328 * param2);
static u8 sub_020236B0(const UnkStruct_02023350 * param0, u32 param1);
static u8 sub_020236C8(const UnkStruct_02023350 * param0, u32 param1);

UnkStruct_02023350 * sub_020232E0 (u32 param0, u32 param1, int param2, BOOL param3, u32 param4)
{
    UnkStruct_02023350 * v0 = sub_02018144(param4, sizeof(UnkStruct_02023350));

    if (v0) {
        sub_02023350(v0, param0, param1, param3, param4);
        sub_02023424(v0, param2, param4);
    }

    return v0;
}

void sub_02023318 (UnkStruct_02023350 * param0)
{
    sub_02023478(param0);
    sub_02023408(param0);
    sub_020181C4(param0);
}

void sub_02023330 (UnkStruct_02023350 * param0, int param1, u32 param2)
{
    if (param0->unk_00 != param1) {
        sub_02023478(param0);
        sub_02023424(param0, param1, param2);
    }
}

static void sub_02023350 (UnkStruct_02023350 * param0, u32 param1, u32 param2, BOOL param3, u32 param4)
{
    param0->unk_54 = sub_02006C24(param1, param4);

    if (param0->unk_54) {
        sub_02006DC8(param0->unk_54, param2, 0, sizeof(UnkStruct_02023350_sub1), &(param0->unk_5C));

        param0->unk_6C = param3;

        if (param3) {
            param0->unk_74 = NULL;
            param0->unk_70 = sub_020236C8;
        } else {
            GF_ASSERT(param0->unk_5C.unk_04);

            param0->unk_74 = sub_02018144(param4, param0->unk_5C.unk_08);
            param0->unk_70 = sub_020236B0;

            sub_02006DC8(param0->unk_54, param2, param0->unk_5C.unk_04, param0->unk_5C.unk_08, (void *)(param0->unk_74));
        }

        {
            static const u8 v0[2][2] = {
                {0x0, 0x1},
                {0x2, 0x3}
            };

            GF_ASSERT(param0->unk_5C.unk_0E <= 2 && param0->unk_5C.unk_0F <= 2);

            param0->unk_08 = v0[param0->unk_5C.unk_0E - 1][param0->unk_5C.unk_0F - 1];
            param0->unk_0C = 16 * param0->unk_5C.unk_0E * param0->unk_5C.unk_0F;
        }

        param0->unk_58 = param2;
    }
}

static void sub_02023408 (UnkStruct_02023350 * param0)
{
    if (param0->unk_74) {
        sub_020181C4(param0->unk_74);
    }

    if (param0->unk_54) {
        sub_02006CA8(param0->unk_54);
    }
}

static void sub_02023424 (UnkStruct_02023350 * param0, int param1, u32 param2)
{
    static void(*const v0[])(UnkStruct_02023350 *, u32) = {
        sub_0202343C, sub_0202346C,
    };

    param0->unk_00 = param1;
    v0[param1](param0, param2);
}

static void sub_0202343C (UnkStruct_02023350 * param0, u32 param1)
{
    u32 v0 = param0->unk_0C * param0->unk_5C.unk_08;

    param0->unk_10 = sub_02018144(param1, v0);
    param0->unk_04 = sub_020234BC;

    sub_02006DC8(param0->unk_54, param0->unk_58, param0->unk_5C.unk_00, v0, param0->unk_10);
}

static void sub_0202346C (UnkStruct_02023350 * param0, u32 param1)
{
    param0->unk_04 = sub_02023564;
}

static void sub_02023478 (UnkStruct_02023350 * param0)
{
    static void(*const v0[])(UnkStruct_02023350 *) = {
        sub_0202348C,
        sub_0202349C
    };

    v0[param0->unk_00](param0);
}

static void sub_0202348C (UnkStruct_02023350 * param0)
{
    sub_020181C4(param0->unk_10);
    param0->unk_10 = NULL;
}

static void sub_0202349C (UnkStruct_02023350 * param0)
{
    (void)0;
}

void sub_020234A0 (const UnkStruct_02023350 * param0, u16 param1, UnkStruct_02002328 * param2)
{
    if (param1 <= param0->unk_5C.unk_08) {
        param1--;
    } else {
        param1 = 0x1ac - 1;
    }

    param0->unk_04(param0, param1, param2);
}

static void sub_020234BC (const UnkStruct_02023350 * param0, u16 param1, UnkStruct_02002328 * param2)
{
    u32 v0;

    v0 = (u32)(&param0->unk_10[param1 * param0->unk_0C]);

    switch (param0->unk_08) {
    case 0:
        sub_0201DAA0(v0 + 0x10 * 0, ((u32)param2->unk_00) + 0x20 * 0);
        break;
    case 1:
        sub_0201DAA0(v0 + 0x10 * 0, ((u32)param2->unk_00) + 0x20 * 0);
        sub_0201DAA0(v0 + 0x10 * 1, ((u32)param2->unk_00) + 0x20 * 2);
        break;
    case 2:
        sub_0201DAA0(v0 + 0x10 * 0, ((u32)param2->unk_00) + 0x20 * 0);
        sub_0201DAA0(v0 + 0x10 * 1, ((u32)param2->unk_00) + 0x20 * 1);
        break;
    case 3:
        sub_0201DAA0(v0 + 0x10 * 0, ((u32)param2->unk_00) + 0x20 * 0);
        sub_0201DAA0(v0 + 0x10 * 1, ((u32)param2->unk_00) + 0x20 * 1);
        sub_0201DAA0(v0 + 0x10 * 2, ((u32)param2->unk_00) + 0x20 * 2);
        sub_0201DAA0(v0 + 0x10 * 3, ((u32)param2->unk_00) + 0x20 * 3);
        break;
    }

    param2->unk_80 = param0->unk_70(param0, param1);
    param2->unk_81 = param0->unk_5C.unk_0D;
}

static void sub_02023564 (const UnkStruct_02023350 * param0, u16 param1, UnkStruct_02002328 * param2)
{
    u32 v0;

    sub_02006DC8(param0->unk_54, param0->unk_58, param0->unk_5C.unk_00 + param1 * param0->unk_0C, param0->unk_0C, (void *)(param0->unk_14));

    switch (param0->unk_08) {
    case 0:
        sub_0201DAA0((u32)(&(param0->unk_14[0x10 * 0])), ((u32)param2->unk_00) + 0x20 * 0);
        break;
    case 1:
        sub_0201DAA0((u32)(&(param0->unk_14[0x10 * 0])), ((u32)param2->unk_00) + 0x20 * 0);
        sub_0201DAA0((u32)(&(param0->unk_14[0x10 * 1])), ((u32)param2->unk_00) + 0x20 * 2);
        break;
    case 2:
        sub_0201DAA0((u32)(&(param0->unk_14[0x10 * 0])), ((u32)param2->unk_00) + 0x20 * 0);
        sub_0201DAA0((u32)(&(param0->unk_14[0x10 * 1])), ((u32)param2->unk_00) + 0x20 * 1);
        break;
    case 3:
        sub_0201DAA0((u32)(&(param0->unk_14[0x10 * 0])), ((u32)param2->unk_00) + 0x20 * 0);
        sub_0201DAA0((u32)(&(param0->unk_14[0x10 * 1])), ((u32)param2->unk_00) + 0x20 * 1);
        sub_0201DAA0((u32)(&(param0->unk_14[0x10 * 2])), ((u32)param2->unk_00) + 0x20 * 2);
        sub_0201DAA0((u32)(&(param0->unk_14[0x10 * 3])), ((u32)param2->unk_00) + 0x20 * 3);
        break;
    }

    param2->unk_80 = param0->unk_70(param0, param1);
    param2->unk_81 = param0->unk_5C.unk_0D;
}

u32 sub_02023620 (const UnkStruct_02023350 * param0, const u16 * param1, u32 param2)
{
    u32 v0 = 0;

    while (*param1 != 0xffff) {
        if (*param1 == 0xfffe) {
            param1 = sub_0201D0C8(param1);

            if (*param1 == 0xffff) {
                break;
            }
        }

        v0 += (param0->unk_70(param0, (*param1) - 1) + param2);
        param1++;
    }

    return v0 - param2;
}

BOOL sub_0202366C (const UnkStruct_02023350 * param0, const u16 * param1)
{
    while (*param1 != 0xffff) {
        if (*param1 == 0xfffe) {
            param1 = sub_0201D0C8(param1);

            if (*param1 == 0xffff) {
                return 1;
            }
        }

        if (((*param1) - 1) >= param0->unk_5C.unk_08) {
            return 0;
        }

        param1++;
    }

    return 1;
}

static u8 sub_020236B0 (const UnkStruct_02023350 * param0, u32 param1)
{
    if (param1 < param0->unk_5C.unk_08) {
        return param0->unk_74[param1];
    } else {
        return param0->unk_74[0x1ac - 1];
    }
}

static u8 sub_020236C8 (const UnkStruct_02023350 * param0, u32 param1)
{
    return param0->unk_5C.unk_0C;
}

u32 sub_020236D0 (const UnkStruct_02023350 * param0, const u16 * param1, u32 param2)
{
    u32 v0 = 0, v1 = 0;

    while (*param1 != 0xffff) {
        if (*param1 == 0xfffe) {
            param1 = sub_0201D0C8(param1);
            continue;
        } else if (*param1 == 0xe000) {
            v1 -= param2;

            if (v0 < v1) {
                v0 = v1;
            }

            v1 = 0;
            param1++;

            continue;
        }

        v1 += (param0->unk_70(param0, (*param1) - 1) + param2);
        param1++;
    }

    v1 -= param2;

    if (v0 < v1) {
        v0 = v1;
    }

    return v0;
}

u32 sub_02023738 (const UnkStruct_02023350 * param0, const u16 * param1)
{
    u32 v0 = 0;

    while (*param1 != 0xffff) {
        if (*param1 == 0xfffe) {
            if (sub_0201D0F0(param1) == 0x203) {
                v0 = sub_0201D134(param1, 0) - 12;
            }

            param1 = sub_0201D0C8(param1);
            continue;
        }

        v0 += param0->unk_70(param0, (*param1) - 1);
        param1++;
    }

    return v0;
}
