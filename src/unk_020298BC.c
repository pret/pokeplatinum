#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_strbuf_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_02014A84.h"
#include "struct_defs/struct_020298D8.h"
#include "overlay022/struct_ov22_02255040.h"
#include "overlay061/struct_ov61_0222AE80.h"
#include "overlay061/struct_ov61_0222AE80_sub2.h"
#include "overlay061/struct_ov61_0222BED8_sub2_sub1_sub1_sub1.h"

#include "unk_02014A84.h"
#include "unk_02015064.h"
#include "heap.h"
#include "string/strbuf.h"
#include "unk_020244AC.h"
#include "unk_020298BC.h"
#include "unk_02073C2C.h"
#include "overlay022/ov22_02259098.h"

typedef struct UnkStruct_0202A138_t {
    u32 unk_00;
    u32 unk_04;
    u16 unk_08;
    u16 unk_0A[11];
    u16 unk_20[8];
    s8 unk_30;
    u8 unk_31;
    u8 unk_32;
    u8 unk_33;
    u8 unk_34;
} UnkStruct_0202A138;

typedef struct UnkStruct_0202A150_t {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    s8 unk_03;
} UnkStruct_0202A150;

typedef struct UnkStruct_02029C68_t {
    u32 unk_00;
    UnkStruct_0202A138 unk_04;
    u32 unk_3C;
    UnkStruct_02014A84 unk_40;
    UnkStruct_0202A150 unk_48[10];
    u8 unk_70;
    u8 unk_71;
} UnkStruct_02029C68;

typedef struct UnkStruct_02029C88_t {
    u32 unk_00;
    u32 unk_04;
    UnkStruct_0202A138 unk_08;
    u32 unk_40;
    UnkStruct_0202A150 unk_44[20];
    u8 unk_94;
} UnkStruct_02029C88;

typedef struct UnkStruct_02029D04_t {
    u32 unk_00[8];
    u32 unk_20[2];
    u32 unk_28[6];
} UnkStruct_02029D04;

typedef struct UnkStruct_0202A750_t {
    UnkStruct_02029C68 unk_00[11];
    UnkStruct_02029C88 unk_4C8[5];
    UnkStruct_02029D04 unk_7A4;
} UnkStruct_0202A750;

static BOOL sub_020298BC (u32 param0)
{
    if ((param0 == 0x1234) || (param0 == 0x2345)) {
        return 1;
    }

    return 0;
}

static inline BOOL inline_02029CA8 (const UnkStruct_02029C68 * param0)
{
    return sub_020298BC(param0->unk_00);
}

static inline BOOL inline_02029CD0 (const UnkStruct_02029C88 * param0)
{
    return sub_020298BC(param0->unk_00);
}

static inline void inline_02029BFC (UnkStruct_02029C68 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_02029C68));
    param0->unk_00 = 0x1234;
}

static inline void inline_02029BFC_1 (UnkStruct_02029C88 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_02029C88));
    param0->unk_00 = 0x1234;
}

static void sub_020298D8 (UnkStruct_020298D8 * param0, u8 * param1, u8 * param2, s8 * param3)
{
    int v0, v1;
    int v2;

    ov22_02259250(param0, &v0, &v1);
    v2 = ov22_022591E0(param0);

    GF_ASSERT(v0 < 256);
    GF_ASSERT(v1 < 256);
    GF_ASSERT(v2 > -128);

    *param1 = v0;
    *param2 = v1;
    *param3 = v2;
}

static void sub_0202992C (UnkStruct_0202A138 * param0, UnkStruct_02073C74 * param1, u8 param2, u8 param3, s8 param4)
{
    param0->unk_08 = sub_02074470(param1, 5, NULL);
    sub_02074470(param1, 117, param0->unk_0A);

    param0->unk_00 = sub_02074470(param1, 0, NULL);
    param0->unk_04 = sub_02074470(param1, 7, NULL);
    param0->unk_33 = sub_02074470(param1, 112, NULL);

    param0->unk_31 = param2;
    param0->unk_32 = param3;
    param0->unk_30 = param4;
}

static void sub_02029990 (UnkStruct_0202A138 * param0, UnkStruct_02073C74 * param1, UnkStruct_020298D8 * param2)
{
    u8 v0, v1;
    s8 v2;

    sub_020298D8(param2, &v0, &v1, &v2);
    sub_0202992C(param0, param1, v0, v1, v2);
}

static void sub_020299C0 (UnkStruct_0202A138 * param0, const Strbuf * param1, int param2)
{
    PLString_Dump(param1, param0->unk_20, 8);
    param0->unk_34 = param2;
}

static void sub_020299D8 (const UnkStruct_0202A138 * param0, UnkStruct_02073C74 * param1)
{
    sub_02073D80(param1, param0->unk_08, 0, 0, 1, param0->unk_00, 1, param0->unk_04);
    sub_02074B30(param1, 117, param0->unk_0A);
    sub_02074B30(param1, 112, &param0->unk_33);
}

static void sub_02029A18 (UnkStruct_0202A150 * param0, u8 param1, u8 param2, u8 param3, u8 param4)
{
    param0->unk_00 = param1;
    param0->unk_01 = param2;
    param0->unk_02 = param3;
    param0->unk_03 = param4;
}

static void sub_02029A2C (u32 * param0, u8 param1, u8 param2)
{
    u8 v0;
    u8 v1;

    GF_ASSERT(param2 < 61);

    v0 = param2 / 8;
    v1 = param2 % 8;

    v1 *= 4;

    param0[v0] &= ~(0xf << v1);
    param0[v0] |= (param1 << v1);
}

static u8 sub_02029A70 (const u32 * param0, u8 param1)
{
    u8 v0;
    u8 v1;
    u8 v2;

    GF_ASSERT(param1 < 61);

    v1 = param1 / 8;
    v2 = param1 % 8;
    v2 *= 4;
    v0 = (param0[v1] >> v2) & 0xf;

    if (v0 > 9) {
        v0 = 9;
    }

    return v0;
}

static void sub_02029AB0 (u32 * param0, u8 param1, u8 param2)
{
    u8 v0;
    u8 v1;

    GF_ASSERT(param1 < 2);

    v0 = param2 / 32;
    v1 = param2 % 32;

    v1 *= 1;

    param0[v0] &= ~(0x1 << v1);
    param0[v0] |= (param1 << v1);
}

static u8 sub_02029AF0 (const u32 * param0, u8 param1)
{
    u8 v0;
    u8 v1;

    v0 = param1 / 32;
    v1 = param1 % 32;

    v1 *= 1;

    return (param0[v0] >> v1) & 0x1;
}

static void sub_02029B18 (u32 * param0, u8 param1, u8 param2)
{
    u8 v0;
    u8 v1;

    GF_ASSERT(param1 <= 18);

    v0 = param2 / 4;
    v1 = param2 % 4;

    v1 *= 8;

    param0[v0] &= ~(0xff << v1);
    param0[v0] |= (param1 << v1);
}

static u8 sub_02029B5C (const u32 * param0, u8 param1)
{
    u8 v0;
    u8 v1;

    v0 = param1 / 4;
    v1 = param1 % 4;

    v1 *= 8;

    return (param0[v0] >> v1) & 0xff;
}

static u8 sub_02029B80 (const u32 * param0)
{
    int v0;
    int v1;

    v1 = 0;

    for (v0 = 0; v0 < 18; v0++) {
        if (sub_02029B5C(param0, v0) != 18) {
            v1++;
        }
    }

    return v1;
}

static BOOL sub_02029BA4 (u32 param0)
{
    if (param0 < 61) {
        return 1;
    }

    return 0;
}

static inline u8 inline_02029D94 (u32 param0)
{
    GF_ASSERT(param0 >= 61);
    return param0 - 61;
}

static void sub_02029BB0 (UnkStruct_02029D04 * param0)
{
    int v0;

    memset(param0, 0, sizeof(UnkStruct_02029D04));

    for (v0 = 0; v0 < 18; v0++) {
        sub_02029B18(param0->unk_28, 18, v0);
    }
}

static void sub_02029BD8 (UnkStruct_02073C74 * param0, u8 * param1, u8 * param2)
{
    u8 v0 = sub_020765B8(param0, 2);

    *param1 = 192 - (8 * 8);
    *param2 = (16 + 129) - ((80 / 2) - v0) + -4;
    *param2 += (5 * 8);
}

void sub_02029BFC (UnkStruct_0202A750 * param0)
{
    int v0;

    for (v0 = 0; v0 < 11; v0++) {
        inline_02029BFC(&param0->unk_00[v0]);
    }

    for (v0 = 0; v0 < 5; v0++) {
        inline_02029BFC_1(&param0->unk_4C8[v0]);
    }

    sub_02029BB0(&param0->unk_7A4);
}

int sub_02029C58 (void)
{
    return sizeof(UnkStruct_0202A750);
}

int sub_02029C60 (void)
{
    return sizeof(UnkStruct_02029C68);
}

int sub_02029C64 (void)
{
    return sizeof(UnkStruct_02029C88);
}

UnkStruct_02029C68 * sub_02029C68 (u32 param0)
{
    UnkStruct_02029C68 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02029C68));
    inline_02029BFC(v0);

    return v0;
}

UnkStruct_02029C88 * sub_02029C88 (u32 param0)
{
    UnkStruct_02029C88 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02029C88));
    inline_02029BFC_1(v0);

    return v0;
}

UnkStruct_02029C68 * sub_02029CA8 (UnkStruct_0202A750 * param0, int param1)
{
    GF_ASSERT(param1 < 11);
    GF_ASSERT(inline_02029CA8(&param0->unk_00[param1]));

    return &param0->unk_00[param1];
}

UnkStruct_02029C88 * sub_02029CD0 (UnkStruct_0202A750 * param0, int param1)
{
    GF_ASSERT(param1 < 5);
    GF_ASSERT(inline_02029CD0(&param0->unk_4C8[param1]));

    return &param0->unk_4C8[param1];
}

UnkStruct_02029D04 * sub_02029D04 (UnkStruct_0202A750 * param0)
{
    return &param0->unk_7A4;
}

BOOL sub_02029D10 (const UnkStruct_0202A750 * param0, int param1)
{
    GF_ASSERT(param1 < 11);
    return sub_02029F34(&param0->unk_00[param1]);
}

BOOL sub_02029D2C (const UnkStruct_0202A750 * param0, int param1)
{
    GF_ASSERT(param1 < 5);
    return sub_0202A218(&param0->unk_4C8[param1]);
}

BOOL sub_02029D50 (const UnkStruct_02029D04 * param0, u32 param1, u32 param2)
{
    u32 v0;
    BOOL v1 = 1;

    v0 = sub_02029D94(param0, param1);

    if (sub_02029BA4(param1)) {
        v0 += param2;

        if (v0 > 9) {
            v1 = 0;
        }
    } else {
        v0 += param2;

        if (v0 > 1) {
            v1 = 0;
        }
    }

    return v1;
}

BOOL sub_02029D80 (const UnkStruct_02029D04 * param0, u32 param1)
{
    u32 v0;

    v0 = sub_02029DD4(param0, param1);

    if (v0 != 18) {
        return 1;
    }

    return 0;
}

u32 sub_02029D94 (const UnkStruct_02029D04 * param0, u32 param1)
{
    u32 v0;

    GF_ASSERT(param1 < 100);

    if (sub_02029BA4(param1)) {
        v0 = sub_02029A70(param0->unk_00, param1);
    } else {
        param1 = inline_02029D94(param1);
        v0 = sub_02029AF0(param0->unk_20, param1);
    }

    return v0;
}

u32 sub_02029DD4 (const UnkStruct_02029D04 * param0, u32 param1)
{
    BOOL v0;

    GF_ASSERT(param1 < 18);
    v0 = sub_02029B5C(param0->unk_28, param1);

    return v0;
}

u32 sub_02029DF0 (const UnkStruct_02029D04 * param0)
{
    int v0;
    int v1;

    v1 = 0;

    for (v0 = 0; v0 < 100; v0++) {
        v1 += sub_02029D94(param0, v0);
    }

    return v1;
}

u32 sub_02029E0C (const UnkStruct_02029D04 * param0)
{
    int v0;
    int v1 = 0;

    for (v0 = 0; v0 < 18; v0++) {
        if (sub_02029DD4(param0, v0) != 18) {
            v1++;
        }
    }

    return v1;
}

void sub_02029E2C (UnkStruct_02029D04 * param0, u32 param1, u32 param2)
{
    u8 v0;

    GF_ASSERT(param1 < 100);

    if (sub_02029BA4(param1)) {
        v0 = sub_02029A70(param0->unk_00, param1);
        v0 += param2;

        if (v0 > 9) {
            v0 = 9;
        }

        sub_02029A2C(param0->unk_00, v0, param1);
    } else {
        v0 = sub_02029AF0(param0->unk_20, param1);
        v0 += param2;

        if (v0 > 1) {
            v0 = 1;
        }

        param1 = inline_02029D94(param1);
        sub_02029AB0(param0->unk_20, v0, param1);
    }
}

void sub_02029EA0 (UnkStruct_02029D04 * param0, u32 param1, u32 param2)
{
    u8 v0;

    GF_ASSERT(param1 < 100);

    if (sub_02029BA4(param1)) {
        v0 = sub_02029A70(param0->unk_00, param1);

        if (v0 > param2) {
            v0 -= param2;
        } else {
            v0 = 0;
        }

        sub_02029A2C(param0->unk_00, v0, param1);
    } else {
        v0 = 0;
        param1 = inline_02029D94(param1);

        sub_02029AB0(param0->unk_20, v0, param1);
    }
}

void sub_02029EFC (UnkStruct_02029D04 * param0, u32 param1)
{
    u8 v0;

    GF_ASSERT(param1 < 18);

    if (sub_02029B5C(param0->unk_28, param1) == 18) {
        v0 = sub_02029B80(param0->unk_28);

        sub_02029B18(param0->unk_28, v0, param1);
    }
}

BOOL sub_02029F34 (const UnkStruct_02029C68 * param0)
{
    GF_ASSERT(inline_02029CA8(param0));

    if (param0->unk_00 == 0x2345) {
        return 1;
    }

    return 0;
}

void sub_02029F5C (UnkStruct_02029C68 * param0)
{
    GF_ASSERT(inline_02029CA8(param0));

    param0->unk_00 = 0x2345;
    param0->unk_71 = Unk_020E4C44;
}

void sub_02029F84 (UnkStruct_02029C68 * param0)
{
    GF_ASSERT(inline_02029CA8(param0));
    inline_02029BFC(param0);
}

void sub_02029FAC (UnkStruct_02029C68 * param0, UnkStruct_02073C74 * param1, UnkStruct_020298D8 * param2)
{
    GF_ASSERT(inline_02029CA8(param0));
    sub_02029990(&param0->unk_04, param1, param2);
}

void sub_02029FD0 (UnkStruct_02029C68 * param0, const UnkStruct_ov22_02255040 * param1, int param2)
{
    NNSG2dSVec2 v0 = sub_0201525C(param1->unk_04);
    int v1 = sub_02015290(param1->unk_04);

    GF_ASSERT(param2 < (11 - 1));
    GF_ASSERT(v0.x < 256);
    GF_ASSERT(v0.y < 256);
    GF_ASSERT(v1 > -128);
    GF_ASSERT(!(param0->unk_3C & (1 << param2)));
    GF_ASSERT(inline_02029CA8(param0));

    sub_02029A18(&param0->unk_48[param2], param1->unk_00, v0.x, v0.y, v1);

    param0->unk_3C |= 1 << param2;
}

void sub_0202A084 (UnkStruct_02029C68 * param0, u8 param1)
{
    GF_ASSERT(inline_02029CA8(param0));
    param0->unk_70 = param1;
}

void sub_0202A0A0 (UnkStruct_02029C68 * param0, u16 param1)
{
    GF_ASSERT(inline_02029CA8(param0));

    sub_02014A84(&param0->unk_40);
    sub_02014CF8(&param0->unk_40, 0, param1);
}

void sub_0202A0CC (UnkStruct_02029C68 * param0, const UnkStruct_02029C68 * param1)
{
    GF_ASSERT(inline_02029CA8(param0));
    memcpy(param0, param1, sizeof(UnkStruct_02029C68));
}

void sub_0202A0EC (UnkStruct_02029C68 * param0, const Strbuf * param1, int param2)
{
    GF_ASSERT(inline_02029CA8(param0));
    sub_020299C0(&param0->unk_04, param1, param2);
}

BOOL sub_0202A110 (const UnkStruct_02029C68 * param0, int param1)
{
    GF_ASSERT(param1 < (11 - 1));
    GF_ASSERT(inline_02029CA8(param0));

    return param0->unk_3C & (1 << param1);
}

const UnkStruct_0202A138 * sub_0202A138 (const UnkStruct_02029C68 * param0)
{
    GF_ASSERT(inline_02029CA8(param0));
    return &param0->unk_04;
}

const UnkStruct_0202A150 * sub_0202A150 (const UnkStruct_02029C68 * param0, int param1)
{
    GF_ASSERT(param1 < (11 - 1));
    GF_ASSERT(param0->unk_3C & (1 << param1));
    GF_ASSERT(inline_02029CA8(param0));

    return &param0->unk_48[param1];
}

u16 sub_0202A184 (const UnkStruct_02029C68 * param0)
{
    GF_ASSERT(inline_02029CA8(param0));
    return sub_0202A5E8(&param0->unk_04);
}

void sub_0202A1A0 (const UnkStruct_02029C68 * param0, Strbuf * param1)
{
    GF_ASSERT(inline_02029CA8(param0));
    sub_0202A5EC(&param0->unk_04, param1);
}

u32 sub_0202A1C0 (const UnkStruct_02029C68 * param0)
{
    GF_ASSERT(inline_02029CA8(param0));
    return sub_0202A5FC(&param0->unk_04);
}

u8 sub_0202A1DC (const UnkStruct_02029C68 * param0)
{
    GF_ASSERT(inline_02029CA8(param0));
    return param0->unk_70;
}

u16 sub_0202A1F4 (const UnkStruct_02029C68 * param0)
{
    u16 v0 = sub_02014C78(&param0->unk_40, 0);
    return v0;
}

u8 sub_0202A200 (const UnkStruct_02029C68 * param0)
{
    GF_ASSERT(inline_02029CA8(param0));
    return param0->unk_71;
}

BOOL sub_0202A218 (const UnkStruct_02029C88 * param0)
{
    GF_ASSERT(inline_02029CD0(param0));

    if (param0->unk_00 == 0x2345) {
        return 1;
    }

    return 0;
}

void sub_0202A240 (UnkStruct_02029C88 * param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    param0->unk_00 = 0x2345;
}

void sub_0202A25C (UnkStruct_02029C88 * param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    inline_02029BFC_1(param0);
}

void sub_0202A284 (UnkStruct_02029C88 * param0, UnkStruct_02073C74 * param1, UnkStruct_020298D8 * param2)
{
    GF_ASSERT(inline_02029CD0(param0));
    sub_02029990(&param0->unk_08, param1, param2);
}

void sub_0202A2A8 (UnkStruct_02029C88 * param0, const UnkStruct_ov22_02255040 * param1, int param2)
{
    NNSG2dSVec2 v0 = sub_0201525C(param1->unk_04);
    int v1 = sub_02015290(param1->unk_04);

    GF_ASSERT(param2 < (21 - 1));
    GF_ASSERT(v0.x < 256);
    GF_ASSERT(v0.y < 256);
    GF_ASSERT(v1 > -128);
    GF_ASSERT(!(param0->unk_40 & (1 << param2)));
    GF_ASSERT(inline_02029CD0(param0));

    sub_02029A18(&param0->unk_44[param2], param1->unk_00, v0.x, v0.y, v1);

    param0->unk_40 |= 1 << param2;
}

void sub_0202A35C (UnkStruct_02029C88 * param0, u8 param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    param0->unk_94 = param1;
}

void sub_0202A378 (UnkStruct_02029C88 * param0, u32 param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    param0->unk_04 = param1;
}

void sub_0202A390 (UnkStruct_02029C88 * param0, const UnkStruct_02029C88 * param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    memcpy(param0, param1, sizeof(UnkStruct_02029C88));
}

void sub_0202A3B0 (UnkStruct_02029C88 * param0, UnkStruct_02073C74 * param1, s8 param2)
{
    u8 v0;
    u8 v1;

    GF_ASSERT(inline_02029CD0(param0));

    sub_02029BD8(param1, &v0, &v1);
    sub_0202992C(&param0->unk_08, param1, v0, v1, param2);
}

void sub_0202A3EC (UnkStruct_02029C88 * param0, u32 param1, u8 param2, u8 param3, u8 param4, s8 param5)
{
    GF_ASSERT(param1 < (21 - 1));
    GF_ASSERT(param2 < 100);
    GF_ASSERT(param3 < 256);
    GF_ASSERT(param4 < 256);
    GF_ASSERT(param5 > -128);
    GF_ASSERT(!(param0->unk_40 & (1 << param1)));
    GF_ASSERT(inline_02029CD0(param0));

    if (param0->unk_08.unk_30 >= param5) {
        param5 = param0->unk_08.unk_30 + 1;
    }

    sub_02029A18(&param0->unk_44[param1], param2, param3, param4, param5);
    param0->unk_40 |= 1 << param1;
}

BOOL sub_0202A488 (const UnkStruct_02029C88 * param0, int param1)
{
    GF_ASSERT(param1 < (21 - 1));
    GF_ASSERT(inline_02029CD0(param0));

    if ((param0->unk_40 & (1 << param1)) != 0) {
        return 1;
    }

    return 0;
}

void sub_0202A4B4 (UnkStruct_02029C88 * param0, const Strbuf * param1, int param2)
{
    GF_ASSERT(inline_02029CD0(param0));
    sub_020299C0(&param0->unk_08, param1, param2);
}

const UnkStruct_0202A138 * sub_0202A4D8 (const UnkStruct_02029C88 * param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    return &param0->unk_08;
}

const UnkStruct_0202A150 * sub_0202A4F0 (const UnkStruct_02029C88 * param0, int param1)
{
    GF_ASSERT(param1 < (21 - 1));
    GF_ASSERT(param0->unk_40 & (1 << param1));
    GF_ASSERT(inline_02029CD0(param0));

    return &param0->unk_44[param1];
}

void sub_0202A524 (const UnkStruct_02029C88 * param0, Strbuf * param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    sub_0202A5EC(&param0->unk_08, param1);
}

u32 sub_0202A544 (const UnkStruct_02029C88 * param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    return sub_0202A5FC(&param0->unk_08);
}

void sub_0202A560 (const UnkStruct_02029C88 * param0, UnkStruct_02073C74 * param1)
{
    GF_ASSERT(inline_02029CD0(param0));
    sub_020299D8(&param0->unk_08, param1);
}

u8 sub_0202A580 (const UnkStruct_02029C88 * param0, int param1)
{
    GF_ASSERT(param1 < (21 - 1));
    GF_ASSERT(param0->unk_40 & (1 << param1));
    GF_ASSERT(inline_02029CD0(param0));

    return sub_0202A624(&param0->unk_44[param1]);
}

u8 sub_0202A5B8 (const UnkStruct_02029C88 * param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    return param0->unk_94;
}

u32 sub_0202A5D0 (const UnkStruct_02029C88 * param0)
{
    GF_ASSERT(inline_02029CD0(param0));
    return param0->unk_04;
}

u16 sub_0202A5E8 (const UnkStruct_0202A138 * param0)
{
    return param0->unk_08;
}

void sub_0202A5EC (const UnkStruct_0202A138 * param0, Strbuf * param1)
{
    PLString_FillWithChars(param1, param0->unk_20);
}

u32 sub_0202A5FC (const UnkStruct_0202A138 * param0)
{
    return param0->unk_34;
}

s8 sub_0202A604 (const UnkStruct_0202A138 * param0)
{
    return param0->unk_30;
}

u8 sub_0202A60C (const UnkStruct_0202A138 * param0)
{
    return param0->unk_31;
}

u8 sub_0202A614 (const UnkStruct_0202A138 * param0)
{
    return param0->unk_32;
}

void sub_0202A61C (const UnkStruct_0202A138 * param0, UnkStruct_02073C74 * param1)
{
    sub_020299D8(param0, param1);
}

u8 sub_0202A624 (const UnkStruct_0202A150 * param0)
{
    return param0->unk_00;
}

u8 sub_0202A628 (const UnkStruct_0202A150 * param0)
{
    return param0->unk_01;
}

u8 sub_0202A62C (const UnkStruct_0202A150 * param0)
{
    return param0->unk_02;
}

s8 sub_0202A630 (const UnkStruct_0202A150 * param0)
{
    return param0->unk_03;
}

static BOOL sub_0202A638 (UnkStruct_0202A750 * param0, const UnkStruct_02029C68 * param1)
{
    int v0;
    const void * v1;
    u32 v2, v3;
    MATHCRC32Table v4;
    BOOL v5 = 1;

    if (sub_02029F34(param1) == 1) {
        MATH_CRC32InitTable(&v4);
        v2 = MATH_CalcCRC32(&v4, param1, sizeof(UnkStruct_02029C68));

        for (v0 = 0; v0 < 11; v0++) {
            v1 = sub_02029CA8(param0, v0);
            MATH_CRC32InitTable(&v4);
            v3 = MATH_CalcCRC32(&v4, v1, sizeof(UnkStruct_02029C68));

            if (v3 == v2) {
                v5 = 0;
                break;
            }
        }
    } else {
        v5 = 0;
    }

    return v5;
}

void sub_0202A6A8 (u8 param0, int param1, UnkStruct_0202A750 * param2, const void ** param3)
{
    int v0;
    UnkStruct_02029C68 * v1;
    const UnkStruct_02029C68 * v2;
    int v3;
    int v4;

    v0 = 0;

    for (v3 = 0; v3 < param0; v3++) {
        if (v3 == param1) {
            continue;
        }

        if (param3[v3] != NULL) {
            v2 = param3[v3];

            if (sub_0202A638(param2, v2) == 1) {
                v0++;
            }
        }
    }

    for (v3 = 11 - 1; v3 >= 1; v3--) {
        if (v3 + v0 < 11) {
            v1 = sub_02029CA8(param2, v3 + v0);
            v2 = sub_02029CA8(param2, v3);

            sub_0202A0CC(v1, v2);
        }
    }

    v4 = 1;

    for (v3 = 0; v3 < param0; v3++) {
        if (v3 == param1) {
            continue;
        }

        if (param3[v3] != NULL) {
            v2 = param3[v3];

            if (sub_0202A638(param2, v2) == 1) {
                v1 = sub_02029CA8(param2, v4);
                v4++;
                sub_0202A0CC(v1, v2);
            }
        }
    }
}

UnkStruct_0202A750 * sub_0202A750 (UnkStruct_021C0794 * param0)
{
    UnkStruct_0202A750 * v0 = NULL;

    v0 = sub_020245BC(param0, 14);
    return v0;
}

void sub_0202A75C (const UnkStruct_02029C68 * param0, UnkStruct_ov61_0222AE80 * param1)
{
    int v0;

    MI_CpuClear8(param1, sizeof(UnkStruct_ov61_0222AE80));

    param1->unk_00 = param0->unk_00;

    {
        param1->unk_04.unk_00 = param0->unk_04.unk_00;
        param1->unk_04.unk_04 = param0->unk_04.unk_04;
        param1->unk_04.unk_08 = param0->unk_04.unk_08;

        for (v0 = 0; v0 < 8; v0++) {
            param1->unk_04.unk_0A[v0] = param0->unk_04.unk_20[v0];
        }

        param1->unk_04.unk_1A = param0->unk_04.unk_30;
        param1->unk_04.unk_1B = param0->unk_04.unk_31;
        param1->unk_04.unk_1C = param0->unk_04.unk_32;
        param1->unk_04.unk_1D = param0->unk_04.unk_33;
    }

    param1->unk_24 = param0->unk_3C;
    param1->unk_28 = *((UnkStruct_ov61_0222BED8_sub2_sub1_sub1_sub1 *)(&param0->unk_40));

    for (v0 = 0; v0 < (11 - 1); v0++) {
        param1->unk_30[v0] = *((UnkStruct_ov61_0222AE80_sub2 *)(&param0->unk_48[v0]));
    }

    param1->unk_58 = param0->unk_70;
    param1->unk_59 = param0->unk_71;
}

void sub_0202A824 (const UnkStruct_ov61_0222AE80 * param0, UnkStruct_02029C68 * param1)
{
    int v0;
    int v1;

    v0 = sub_02029C60();
    MI_CpuClear8(param1, v0);

    param1->unk_00 = param0->unk_00;

    {
        param1->unk_04.unk_00 = param0->unk_04.unk_00;
        param1->unk_04.unk_04 = param0->unk_04.unk_04;
        param1->unk_04.unk_08 = param0->unk_04.unk_08;

        for (v1 = 0; v1 < 8; v1++) {
            param1->unk_04.unk_20[v1] = param0->unk_04.unk_0A[v1];
        }

        param1->unk_04.unk_30 = param0->unk_04.unk_1A;
        param1->unk_04.unk_31 = param0->unk_04.unk_1B;
        param1->unk_04.unk_32 = param0->unk_04.unk_1C;
        param1->unk_04.unk_33 = param0->unk_04.unk_1D;
    }

    param1->unk_3C = param0->unk_24;
    param1->unk_40 = *((UnkStruct_02014A84 *)(&param0->unk_28));

    for (v1 = 0; v1 < (11 - 1); v1++) {
        param1->unk_48[v1] = *((UnkStruct_0202A150 *)(&param0->unk_30[v1]));
    }

    param1->unk_70 = param0->unk_58;
    param1->unk_71 = param0->unk_59;

    for (v1 = 0; v1 < 11; v1++) {
        param1->unk_04.unk_0A[v1] = 0xffff;
    }

    param1->unk_04.unk_34 = 0;
}
