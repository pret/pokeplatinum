#include <nitro.h>
#include <string.h>

#include "constdata/const_020EE4B8.h"

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "overlay101/struct_ov101_021D5D90_decl.h"

#include "constdata/const_020EE31C.h"

#include "overlay005/struct_ov5_021F8E3C.h"

#include "unk_02005474.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_0201CCF0.h"
#include "unk_02061804.h"
#include "unk_02063400.h"
#include "unk_020655F4.h"
#include "unk_02069BE0.h"
#include "unk_020711EC.h"
#include "overlay005/ov5_021F3E74.h"
#include "overlay005/ov5_021F5A10.h"

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_02061AB4 * unk_0C;
    const UnkStruct_ov5_021F8E3C * unk_10;
} UnkStruct_020EEE54;

typedef struct {
    u16 unk_00;
    s16 unk_02;
    int unk_04;
    fx32 unk_08;
} UnkStruct_02065980;

typedef struct {
    u16 unk_00;
    s16 unk_02;
} UnkStruct_02065C64;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    u16 unk_08;
    u16 unk_0A;
    s8 unk_0C;
    s8 unk_0D;
    u8 unk_0E;
    s8 unk_0F;
} UnkStruct_02065E0C;

typedef struct {
    int unk_00;
} UnkStruct_020662AC;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
} UnkStruct_02066338;

typedef struct {
    int unk_00;
    UnkStruct_ov101_021D5D90 * unk_04;
} UnkStruct_020664A0;

typedef struct {
    s16 unk_00;
    u16 unk_02;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_02066520;

typedef struct {
    int unk_00;
    VecFx32 unk_04;
} UnkStruct_02066824;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    fx32 unk_04;
    fx32 unk_08;
    u16 unk_0C;
    u16 unk_0E;
} UnkStruct_02066F88;

typedef struct {
    int unk_00;
} UnkStruct_020666C8;

typedef struct {
    u32 unk_00;
} UnkStruct_02066710;

typedef struct {
    u32 unk_00;
} UnkStruct_020667CC;

static void sub_02065788(UnkStruct_0201CD38 * param0, void * param1);
static int sub_02065910(UnkStruct_02061AB4 * param0, int param1, int param2);
static int sub_02065924(UnkStruct_02061AB4 * param0);
static void sub_02065930(UnkStruct_02061AB4 * param0, int param1);
static void sub_02065980(UnkStruct_02061AB4 * param0, int param1, fx32 param2, s16 param3, u16 param4);
static int sub_020659C8(UnkStruct_02061AB4 * param0);
static void sub_02065C64(UnkStruct_02061AB4 * param0, int param1, s16 param2, u16 param3);
static int sub_02065C98(UnkStruct_02061AB4 * param0);
static void sub_020664A0(UnkStruct_02061AB4 * param0, int param1, int param2);
static int sub_020664C8(UnkStruct_02061AB4 * param0);

int(*const Unk_020EEE54[])(UnkStruct_020EEE54 *);
const fx32 * Unk_02100B84[];
static const fx32 Unk_020EEE84[7];
static const fx32 Unk_020EEE6C[6];
static const fx32 Unk_020EECEC[3];

int sub_020655F4 (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D8(param0, (1 << 0)) == 0) {
        return 0;
    }

    if (sub_020628D8(param0, (1 << 1)) == 1) {
        return 0;
    }

    if ((sub_020628D8(param0, (1 << 4)) == 1) && (sub_020628D8(param0, (1 << 5)) == 0)) {
        return 0;
    }

    return 1;
}

void sub_02065638 (UnkStruct_02061AB4 * param0, int param1)
{
    GF_ASSERT(param1 < 0x9a);

    sub_02062BB0(param0, param1);
    sub_02062BC0(param0, 0);
    sub_020628BC(param0, (1 << 4));
    sub_020628C4(param0, (1 << 5));
}

void sub_02065668 (UnkStruct_02061AB4 * param0, int param1)
{
    sub_02062BB0(param0, param1);
    sub_02062BC0(param0, 0);
    sub_020628C4(param0, (1 << 5));
}

int sub_02065684 (const UnkStruct_02061AB4 * param0)
{
    if (sub_020628D8(param0, (1 << 4)) == 0) {
        return 1;
    }

    if (sub_020628D8(param0, (1 << 5)) == 0) {
        return 0;
    }

    return 1;
}

int sub_020656AC (UnkStruct_02061AB4 * param0)
{
    if (sub_020628D8(param0, (1 << 4)) == 0) {
        return 1;
    }

    if (sub_020628D8(param0, (1 << 5)) == 0) {
        return 0;
    }

    sub_020628C4(param0, (1 << 4) | (1 << 5));

    return 1;
}

void sub_020656DC (UnkStruct_02061AB4 * param0)
{
    sub_020628C4(param0, (1 << 4));
    sub_020628BC(param0, (1 << 5));
    sub_02062BB0(param0, 0xff);
    sub_02062BC0(param0, 0);
}

UnkStruct_0201CD38 * sub_02065700 (UnkStruct_02061AB4 * param0, const UnkStruct_ov5_021F8E3C * param1)
{
    UnkStruct_0201CD38 * v0;
    UnkStruct_020EEE54 * v1;

    v1 = AllocFromHeapAtEnd(4, (sizeof(UnkStruct_020EEE54)));
    GF_ASSERT(v1 != NULL);

    memset(v1, 0, (sizeof(UnkStruct_020EEE54)));

    {
        int v2;

        v2 = sub_02062858(sub_02062A40(param0)) - 1;
        v0 = sub_0200D9E8(sub_02065788, v1, v2);
        GF_ASSERT(v0 != NULL);
    }

    v1->unk_0C = param0;
    v1->unk_10 = param1;

    return v0;
}

int sub_0206574C (UnkStruct_0201CD38 * param0)
{
    UnkStruct_020EEE54 * v0;

    v0 = sub_0201CED0(param0);
    return v0->unk_04;
}

void sub_02065758 (UnkStruct_0201CD38 * param0)
{
    UnkStruct_020EEE54 * v0;

    v0 = sub_0201CED0(param0);

    GF_ASSERT(sub_02065684(v0->unk_0C) == 1);

    sub_020656AC(v0->unk_0C);
    FreeToHeapExplicit(4, v0);
    sub_0200DA58(param0);
}

static void sub_02065788 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_020EEE54 * v0;

    v0 = param1;

    while (Unk_020EEE54[v0->unk_00](v0) == 1) {
        (void)0;
    }
}

static int sub_020657A4 (UnkStruct_020EEE54 * param0)
{
    param0->unk_08 = 0;
    param0->unk_00 = 1;

    return 1;
}

static int sub_020657B0 (UnkStruct_020EEE54 * param0)
{
    if (sub_020655F4(param0->unk_0C) == 0) {
        return 0;
    }

    param0->unk_00 = 2;
    return 1;
}

static int sub_020657CC (UnkStruct_020EEE54 * param0)
{
    const UnkStruct_ov5_021F8E3C * v0;

    v0 = param0->unk_10;
    sub_02065638(param0->unk_0C, v0->unk_00);

    param0->unk_00 = 3;

    return 0;
}

static int sub_020657E4 (UnkStruct_020EEE54 * param0)
{
    if (sub_02065684(param0->unk_0C) == 0) {
        return 0;
    }

    param0->unk_00 = 4;
    return 1;
}

static int sub_02065800 (UnkStruct_020EEE54 * param0)
{
    const UnkStruct_ov5_021F8E3C * v0;

    v0 = param0->unk_10;
    param0->unk_08++;

    if (param0->unk_08 < v0->unk_02) {
        param0->unk_00 = 1;
        return 1;
    }

    v0++;
    param0->unk_10 = v0;

    if (v0->unk_00 != 0xfe) {
        param0->unk_00 = 0;
        return 1;
    }

    param0->unk_04 = 1;
    param0->unk_00 = 5;

    return 0;
}

static int sub_02065834 (UnkStruct_020EEE54 * param0)
{
    return 0;
}

static int(*const Unk_020EEE54[])(UnkStruct_020EEE54 *) = {
    sub_020657A4,
    sub_020657B0,
    sub_020657CC,
    sub_020657E4,
    sub_02065800,
    sub_02065834
};

int sub_02065838 (int param0, int param1)
{
    int v0;
    const int * const * v1;
    const int * v2;

    GF_ASSERT(param0 < 4);

    v1 = Unk_020EE31C;

    while ((*v1) != NULL) {
        v0 = 0;
        v2 = *v1;

        do {
            if (v2[v0] == param1) {
                return v2[param0];
            }

            v0++;
        } while (v0 < 4);

        v1++;
    }

    GF_ASSERT(FALSE);

    return param1;
}

int sub_0206587C (int param0)
{
    int v0;
    const int * const * v1;
    const int * v2;

    v1 = Unk_020EE31C;

    while ((*v1) != NULL) {
        v0 = 0;
        v2 = *v1;

        do {
            if (v2[v0] == param0) {
                return v0;
            }

            v0++;
        } while (v0 < 4);

        v1++;
    }

    return(-1);
}

void sub_020658B4 (UnkStruct_02061AB4 * param0)
{
    int v0, v1;

    do {
        v0 = sub_02062BB8(param0);

        if (v0 == 0xff) {
            break;
        }

        v1 = sub_02062BD8(param0);
    } while (sub_02065910(param0, v0, v1));
}

int sub_020658DC (UnkStruct_02061AB4 * param0)
{
    sub_020658B4(param0);

    if (sub_020628D8(param0, (1 << 5)) == 0) {
        return 0;
    }

    sub_020628C4(param0, (1 << 5));
    sub_02062BB0(param0, 0xff);
    sub_02062BC0(param0, 0);

    return 1;
}

static int sub_02065910 (UnkStruct_02061AB4 * param0, int param1, int param2)
{
    return Unk_020EE4B8[param1][param2](param0);
}

static int sub_02065924 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 5));
    return 0;
}

static void sub_02065930 (UnkStruct_02061AB4 * param0, int param1)
{
    sub_02062974(param0, param1);
    sub_02062A0C(param0, 0x0);
    sub_02064208(param0);
    sub_02062BC8(param0);
}

static int sub_02065950 (UnkStruct_02061AB4 * param0)
{
    sub_02065930(param0, 0);
    return 1;
}

static int sub_0206595C (UnkStruct_02061AB4 * param0)
{
    sub_02065930(param0, 1);
    return 1;
}

static int sub_02065968 (UnkStruct_02061AB4 * param0)
{
    sub_02065930(param0, 2);
    return 1;
}

static int sub_02065974 (UnkStruct_02061AB4 * param0)
{
    sub_02065930(param0, 3);
    return 1;
}

static void sub_02065980 (UnkStruct_02061AB4 * param0, int param1, fx32 param2, s16 param3, u16 param4)
{
    UnkStruct_02065980 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02065980)));

    v0->unk_00 = param4;
    v0->unk_02 = param3;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    sub_020641B4(param0, param1);
    sub_020629A0(param0, param1);
    sub_02062A0C(param0, param4);
    sub_020628BC(param0, (1 << 2));
    sub_02062BC8(param0);
}

static int sub_020659C8 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02065980 * v0;

    v0 = sub_02062AC8(param0);

    sub_020642A4(param0, v0->unk_04, v0->unk_08);
    sub_020642F8(param0);

    v0->unk_02--;

    if (v0->unk_02 > 0) {
        return 0;
    }

    sub_020628BC(param0, (1 << 3) | (1 << 5));
    sub_02064208(param0);
    sub_02062B68(param0);
    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 1;
}

static int sub_02065A1C (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int sub_02065A30 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int sub_02065A44 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int sub_02065A58 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int sub_02065A6C (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int sub_02065A80 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int sub_02065A94 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int sub_02065AA8 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int sub_02065ABC (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int sub_02065AD4 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int sub_02065AE8 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int sub_02065AFC (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int sub_02065B10 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int sub_02065B24 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int sub_02065B38 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int sub_02065B4C (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int sub_02065B60 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int sub_02065B78 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int sub_02065B8C (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int sub_02065BA0 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int sub_02065BB8 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int sub_02065BCC (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int sub_02065BE0 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int sub_02065BF4 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int sub_02065C0C (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 4), 4, ((0x8 + 1)));
    return 1;
}

static int sub_02065C24 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 4), 4, ((0x8 + 1)));
    return 1;
}

static int sub_02065C38 (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 4), 4, ((0x8 + 1)));
    return 1;
}

static int sub_02065C4C (UnkStruct_02061AB4 * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 4), 4, ((0x8 + 1)));
    return 1;
}

static void sub_02065C64 (UnkStruct_02061AB4 * param0, int param1, s16 param2, u16 param3)
{
    UnkStruct_02065C64 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02065980)));

    v0->unk_00 = param3;
    v0->unk_02 = param2 + 1;

    sub_02062974(param0, param1);
    sub_02062A0C(param0, param3);
    sub_02064208(param0);
    sub_02062BC8(param0);
}

static int sub_02065C98 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02065C64 * v0;

    v0 = sub_02062AC8(param0);
    v0->unk_02--;

    if (v0->unk_02 > 0) {
        return 0;
    }

    sub_020628BC(param0, (1 << 5));
    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 1;
}

static int sub_02065CCC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 0, 32, 0x1);
    return 1;
}

static int sub_02065CDC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 1, 32, 0x1);
    return 1;
}

static int sub_02065CEC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 2, 32, 0x1);
    return 1;
}

static int sub_02065CFC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 3, 32, 0x1);
    return 1;
}

static int sub_02065D0C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 0, 16, 0x2);
    return 1;
}

static int sub_02065D1C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 1, 16, 0x2);
    return 1;
}

static int sub_02065D2C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 2, 16, 0x2);
    return 1;
}

static int sub_02065D3C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 3, 16, 0x2);
    return 1;
}

static int sub_02065D4C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 0, 8, 0x3);
    return 1;
}

static int sub_02065D5C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 1, 8, 0x3);
    return 1;
}

static int sub_02065D6C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 2, 8, 0x3);
    return 1;
}

static int sub_02065D7C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 3, 8, 0x3);
    return 1;
}

static int sub_02065D8C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 0, 4, 0x4);
    return 1;
}

static int sub_02065D9C (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 1, 4, 0x4);
    return 1;
}

static int sub_02065DAC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 2, 4, 0x4);
    return 1;
}

static int sub_02065DBC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 3, 4, 0x4);
    return 1;
}

static int sub_02065DCC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 0, 2, 0x5);
    return 1;
}

static int sub_02065DDC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 1, 2, 0x5);
    return 1;
}

static int sub_02065DEC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 2, 2, 0x5);
    return 1;
}

static int sub_02065DFC (UnkStruct_02061AB4 * param0)
{
    sub_02065C64(param0, 3, 2, 0x5);
    return 1;
}

static void sub_02065E0C (UnkStruct_02061AB4 * param0, int param1, fx32 param2, s16 param3, u16 param4, s16 param5, u16 param6, u32 param7)
{
    UnkStruct_02065E0C * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02065E0C)));

    v0->unk_0C = param1;
    v0->unk_00 = param2;
    v0->unk_0D = param3;
    v0->unk_0E = param4;
    v0->unk_0F = param5;
    v0->unk_08 = param6;

    if (param2 == 0) {
        sub_02064208(param0);
    } else {
        sub_020641B4(param0, param1);
    }

    sub_020628BC(param0, (1 << 2) | (1 << 16));
    sub_020629A0(param0, param1);
    sub_02062A0C(param0, param4);
    sub_02062BC8(param0);

    if (param7) {
        sub_02005748(param7);
    }
}

static void sub_02065E7C (UnkStruct_02061AB4 * param0, int param1, fx32 param2, s16 param3, u16 param4, s16 param5, u16 param6)
{
    sub_02065E0C(param0, param1, param2, param3, param4, param5, param6, 1547);
}

static int sub_02065EA0 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02065E0C * v0;

    v0 = sub_02062AC8(param0);

    if (v0->unk_00) {
        sub_020642A4(param0, v0->unk_0C, v0->unk_00);
        sub_020642F8(param0);

        if (v0->unk_04 >= (16 * FX32_ONE)) {
            v0->unk_04 = 0;
            sub_020641B4(param0, v0->unk_0C);
            sub_020628BC(param0, (1 << 2));
        }

        {
            fx32 v1 = v0->unk_00;

            if (v1 < 0) {
                v1 = -v1;
            }

            v0->unk_04 += v1;
        }
    }

    {
        v0->unk_0A += v0->unk_08;

        if (v0->unk_0A > ((0x100 * ((16 - 1))))) {
            v0->unk_0A = ((0x100 * ((16 - 1))));
        }

        {
            VecFx32 v2;
            u16 v3 = (v0->unk_0A) / 0x100;
            const fx32 * v4 = Unk_02100B84[v0->unk_0F];

            v2.x = 0;
            v2.y = v4[v3];
            v2.z = 0;

            sub_02063088(param0, &v2);
        }
    }

    v0->unk_0D--;

    if (v0->unk_0D > 0) {
        return 0;
    }

    {
        VecFx32 v5 = {0, 0, 0};
        sub_02063088(param0, &v5);
    }

    sub_020628BC(param0, (1 << 3) | (1 << 17) | (1 << 5));
    sub_02064208(param0);
    sub_02062B68(param0);
    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);
    sub_02005748(1607);

    return 1;
}

static int sub_02065F88 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 0, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02065FA8 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 1, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02065FC8 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 2, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02065FE8 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 3, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02066008 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 0, 0, 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066028 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 1, 0, 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066048 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 2, 0, 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066068 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 3, 0, 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066088 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 0, ((16 * FX32_ONE) / 8), 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_020660A8 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 1, ((16 * FX32_ONE) / 8), 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_020660CC (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 2, ((16 * FX32_ONE) / 8), 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_020660F0 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 3, ((16 * FX32_ONE) / 8), 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066110 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 0, ((16 * FX32_ONE) / 8), 8 * 2, 0x3, 0, (0x100 * 1));
    return 1;
}

static int sub_02066130 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 1, ((16 * FX32_ONE) / 8), 16, 0x3, 0, (0x100 * 1));
    return 1;
}

static int sub_02066150 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 2, ((16 * FX32_ONE) / 8), 16, 0x3, 0, (0x100 * 1));

    return 1;
}

static int sub_02066170 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 3, ((16 * FX32_ONE) / 8), 16, 0x3, 0, (0x100 * 1));
    return 1;
}

static int sub_02066194 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 2, ((16 * FX32_ONE) / 16), 16, ((0x8 + 1)), 0, (((0x100 * ((16 - 1)))) / 16));
    return 1;
}

static int sub_020661B4 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 3, ((16 * FX32_ONE) / 16), 16, ((0x8 + 1)), 0, (((0x100 * ((16 - 1)))) / 16));
    return 1;
}

static int sub_020661D8 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 2, ((16 * FX32_ONE) / 4), 12, ((0x8 + 1) + 1), 0, (((0x100 * ((16 - 1)))) / 12));
    return 1;
}

static int sub_020661F8 (UnkStruct_02061AB4 * param0)
{
    sub_02065E7C(param0, 3, ((16 * FX32_ONE) / 4), 12, ((0x8 + 1) + 1), 0, (((0x100 * ((16 - 1)))) / 12));
    return 1;
}

static int sub_0206621C (UnkStruct_02061AB4 * param0)
{
    sub_02065E0C(param0, 0, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, (((0x100 * ((16 - 1)))) / 24), 0);
    return 1;
}

static int sub_02066240 (UnkStruct_02061AB4 * param0)
{
    sub_02065E0C(param0, 1, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, (((0x100 * ((16 - 1)))) / 24), 0);
    return 1;
}

static int sub_02066264 (UnkStruct_02061AB4 * param0)
{
    sub_02065E0C(param0, 2, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, (((0x100 * ((16 - 1)))) / 24), 0);
    return 1;
}

static int sub_02066288 (UnkStruct_02061AB4 * param0)
{
    sub_02065E0C(param0, 3, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, (((0x100 * ((16 - 1)))) / 24), 0);
    return 1;
}

static void sub_020662AC (UnkStruct_02061AB4 * param0, int param1)
{
    UnkStruct_020662AC * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020662AC)));
    v0->unk_00 = param1;

    sub_02062BC8(param0);
}

static int sub_020662C4 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_020662AC * v0;

    v0 = sub_02062AC8(param0);

    if (v0->unk_00) {
        v0->unk_00--;
        return 0;
    }

    sub_02062BC8(param0);
    return 1;
}

static int sub_020662E4 (UnkStruct_02061AB4 * param0)
{
    sub_020662AC(param0, 1);
    return 1;
}

static int sub_020662F0 (UnkStruct_02061AB4 * param0)
{
    sub_020662AC(param0, 2);
    return 1;
}

static int sub_020662FC (UnkStruct_02061AB4 * param0)
{
    sub_020662AC(param0, 4);
    return 1;
}

static int sub_02066308 (UnkStruct_02061AB4 * param0)
{
    sub_020662AC(param0, 8);
    return 1;
}

static int sub_02066314 (UnkStruct_02061AB4 * param0)
{
    sub_020662AC(param0, 15);
    return 1;
}

static int sub_02066320 (UnkStruct_02061AB4 * param0)
{
    sub_020662AC(param0, 16);
    return 1;
}

static int sub_0206632C (UnkStruct_02061AB4 * param0)
{
    sub_020662AC(param0, 32);
    return 1;
}

static int sub_02066338 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02066338 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02066338)));
    v0->unk_04 = FX32_ONE * 16;

    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 1;
}

static int sub_0206635C (UnkStruct_02061AB4 * param0)
{
    int v0;
    UnkStruct_02066338 * v1;

    v1 = sub_02062AC8(param0);
    v1->unk_00 += v1->unk_04;

    {
        VecFx32 v2 = {0, 0, 0};

        v2.y = v1->unk_00;
        sub_02063088(param0, &v2);
    }

    v0 = v1->unk_00 / ((16 * FX32_ONE) >> 1);

    if (v0 < 40) {
        return 0;
    }

    sub_02062BC8(param0);
    return 1;
}

static int sub_020663A4 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02066338 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02066338)));

    v0->unk_00 = ((16 * FX32_ONE) >> 1) * 40;
    v0->unk_04 = -(FX32_ONE * 16);

    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 1;
}

static int sub_020663D0 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02066338 * v0;

    v0 = sub_02062AC8(param0);
    v0->unk_00 += v0->unk_04;

    if (v0->unk_00 < 0) {
        v0->unk_00 = 0;
    }

    {
        VecFx32 v1 = {0, 0, 0};

        v1.y = v0->unk_00;
        sub_02063088(param0, &v1);
    }

    if (v0->unk_00 > 0) {
        return 0;
    }

    sub_02062BC8(param0);
    return 1;
}

static int sub_02066418 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 9));
    sub_02062BC8(param0);

    return 1;
}

static int sub_02066430 (UnkStruct_02061AB4 * param0)
{
    sub_020628C4(param0, (1 << 9));
    sub_02062BC8(param0);

    return 1;
}

static int sub_02066448 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 7));
    sub_02062BC8(param0);

    return 1;
}

static int sub_0206645C (UnkStruct_02061AB4 * param0)
{
    sub_020628C4(param0, (1 << 7));
    sub_02062BC8(param0);

    return 1;
}

static int sub_02066470 (UnkStruct_02061AB4 * param0)
{
    sub_020628BC(param0, (1 << 8));
    sub_02062BC8(param0);

    return 1;
}

static int sub_02066488 (UnkStruct_02061AB4 * param0)
{
    sub_020628C4(param0, (1 << 8));
    sub_02062BC8(param0);

    return 1;
}

static void sub_020664A0 (UnkStruct_02061AB4 * param0, int param1, int param2)
{
    UnkStruct_020664A0 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020664A0)));

    v0->unk_00 = param1;
    v0->unk_04 = ov5_021F5D8C(param0, param1, 1, param2);

    sub_02062BC8(param0);
}

static int sub_020664C8 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_020664A0 * v0;

    v0 = sub_02062AC8(param0);

    if (ov5_021F5C4C(v0->unk_04) == 1) {
        sub_0207136C(v0->unk_04);
        sub_02062BC8(param0);
        return 1;
    }

    return 0;
}

static int sub_020664F0 (UnkStruct_02061AB4 * param0)
{
    sub_020664A0(param0, 0, 0);
    return 0;
}

static int sub_02066500 (UnkStruct_02061AB4 * param0)
{
    sub_020664A0(param0, 1, 0);
    return 0;
}

static int sub_02066510 (UnkStruct_02061AB4 * param0)
{
    sub_020664A0(param0, 0, 1);
    return 0;
}

static void sub_02066520 (UnkStruct_02061AB4 * param0, int param1, s16 param2, u16 param3)
{
    UnkStruct_02066520 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02066520)));

    v0->unk_00 = param1;
    v0->unk_02 = param3;
    v0->unk_04 = param2;

    sub_020641B4(param0, param1);
    sub_020629A0(param0, param1);
    sub_02062A0C(param0, param3);
    sub_020628BC(param0, (1 << 2));
    sub_02062BC8(param0);
}

static int sub_02066560 (UnkStruct_02061AB4 * param0, const fx32 * param1)
{
    UnkStruct_02066520 * v0;

    v0 = sub_02062AC8(param0);

    sub_020642A4(param0, v0->unk_00, param1[v0->unk_06]);
    sub_020642F8(param0);

    v0->unk_06++;

    if (v0->unk_06 < v0->unk_04) {
        return 0;
    }

    sub_020628BC(param0, (1 << 3) | (1 << 5));
    sub_02064208(param0);
    sub_02062B68(param0);
    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 1;
}

static int sub_020665C0 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 0, 6, 0x6);
    return 1;
}

static int sub_020665D0 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 1, 6, 0x6);
    return 1;
}

static int sub_020665E0 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 2, 6, 0x6);
    return 1;
}

static int sub_020665F0 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 3, 6, 0x6);
    return 1;
}

static int sub_02066600 (UnkStruct_02061AB4 * param0)
{
    if (sub_02066560(param0, Unk_020EEE6C) == 1) {
        return 1;
    }

    return 0;
}

static int sub_02066618 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 0, 3, 0x7);
    return 1;
}

static int sub_02066628 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 1, 3, 0x7);
    return 1;
}

static int sub_02066638 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 2, 3, 0x7);
    return 1;
}

static int sub_02066648 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 3, 3, 0x7);
    return 1;
}

static int sub_02066658 (UnkStruct_02061AB4 * param0)
{
    if (sub_02066560(param0, Unk_020EECEC) == 1) {
        return 1;
    }

    return 0;
}

static int sub_02066670 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 0, 7, 0x8);
    return 1;
}

static int sub_02066680 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 1, 7, 0x8);
    return 1;
}

static int sub_02066690 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 2, 7, 0x8);
    return 1;
}

static int sub_020666A0 (UnkStruct_02061AB4 * param0)
{
    sub_02066520(param0, 3, 7, 0x8);
    return 1;
}

static int sub_020666B0 (UnkStruct_02061AB4 * param0)
{
    if (sub_02066560(param0, Unk_020EEE84) == 1) {
        return 1;
    }

    return 0;
}

static int sub_020666C8 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_020666C8 * v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020666C8)));

    sub_02062A0C(param0, 0x9);
    sub_02062BC8(param0);

    return 0;
}

static int sub_020666E4 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_020666C8 * v0 = sub_02062AC8(param0);

    v0->unk_00++;

    if (v0->unk_00 >= 8) {
        sub_02062974(param0, 1);
        sub_02062A0C(param0, 0x0);
        sub_02062BC8(param0);
    }

    return 0;
}

static int sub_02066710 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02066710 * v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02066710)));

    {
        UnkStruct_ov101_021D5D90 * v1 = sub_0206A224(param0);

        if (v1 != NULL) {
            sub_0207136C(v1);
        }
    }

    {
        VecFx32 v2 = {0, 0, 0};
        sub_02063088(param0, &v2);
    }

    ov5_021F3F10(param0);

    sub_020628BC(param0, (1 << 2) | (1 << 16));
    sub_020628C4(param0, (1 << 20));
    sub_02062BC8(param0);

    return 0;
}

static int sub_02066764 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02066710 * v0 = sub_02062AC8(param0);
    const fx32 * v1 = Unk_02100B84[0];
    VecFx32 v2 = {0, 0, 0};

    v2.y = v1[v0->unk_00];
    sub_02063088(param0, &v2);

    v0->unk_00 += 2;

    if (v0->unk_00 < 16) {
        return 0;
    }

    v2.y = 0;

    sub_02063088(param0, &v2);
    sub_020628BC(param0, (1 << 3) | (1 << 17) | (1 << 5));
    sub_0206A230(param0);
    sub_02062BC8(param0);

    return 1;
}

static int sub_020667CC (UnkStruct_02061AB4 * param0)
{
    UnkStruct_020667CC * v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020667CC)));

    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 0;
}

static int sub_020667E8 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_020667CC * v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020667CC)));

    sub_02062A0C(param0, 0x1);
    sub_02062BC8(param0);

    return 0;
}

static int sub_02066804 (UnkStruct_02061AB4 * param0)
{
    UnkStruct_020667CC * v0 = sub_02062AC8(param0);

    v0->unk_00++;

    if (v0->unk_00 < 21) {
        return 0;
    }

    sub_02062BC8(param0);
    return 1;
}

static void sub_02066824 (UnkStruct_02061AB4 * param0, const VecFx32 * param1, int param2, int param3, int param4, u8 param5)
{
    UnkStruct_02066824 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02066824)));
    v0->unk_00 = param4;
    v0->unk_04 = *param1;

    sub_02062974(param0, param2);
    sub_02062994(param0, param3);
    sub_02062A0C(param0, param5);
    sub_02062D28(param0);

    sub_0206300C(param0, sub_02063020(param0));
    sub_02063014(param0, sub_02063030(param0));
    sub_0206301C(param0, sub_02063040(param0));

    if (param1->x < 0) {
        sub_02063028(param0, -1);
    } else if (param1->x > 0) {
        sub_02063028(param0, 1);
    }

    if (param1->y < 0) {
        sub_02063038(param0, -1 * 2);
    } else if (param1->y > 0) {
        sub_02063038(param0, 1 * 2);
    }

    if (param1->z < 0) {
        sub_02063048(param0, -1);
    } else if (param1->z > 0) {
        sub_02063048(param0, 1);
    }

    sub_02062BC8(param0);
}

static int sub_020668EC (UnkStruct_02061AB4 * param0)
{
    UnkStruct_02066824 * v0;

    v0 = sub_02062AC8(param0);
    sub_02064270(param0, &v0->unk_04);

    v0->unk_00--;

    if (v0->unk_00 > 0) {
        return 0;
    }

    sub_020628BC(
        param0, (1 << 3) | (1 << 5));

    sub_02064208(param0);
    sub_02062B68(param0);
    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 1;
}

static int sub_02066934 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, ((16 * FX32_ONE) / 8), 0};

    sub_02066824(param0, &v0, 2, 0, 8, 0x3);
    return 1;
}

static int sub_02066968 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, -((16 * FX32_ONE) / 8), 0};

    sub_02066824(param0, &v0, 3, 1, 8, 0x3);
    return 1;
}

static int sub_02066998 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 1, 2, 8, 0x3);
    return 1;
}

static int sub_020669CC (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 0, 3, 8, 0x3);
    return 1;
}

static int sub_020669FC (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, ((16 * FX32_ONE) / 8), 0};

    sub_02066824(param0, &v0, 3, 0, 8, 0x3);
    return 1;
}

static int sub_02066A2C (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, -((16 * FX32_ONE) / 8), 0};

    sub_02066824(param0, &v0, 2, 1, 8, 0x3);
    return 1;
}

static int sub_02066A60 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 0, 2, 8, 0x3);
    return 1;
}

static int sub_02066A94 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 1, 2, 8, 0x3);
    return 1;
}

static int sub_02066AC8 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 1, 0, 8, 0x3);
    return 1;
}

static int sub_02066AFC (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 0, 1, 8, 0x3);
    return 1;
}

static int sub_02066B30 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {-((16 * FX32_ONE) / 8), 0, 0};

    sub_02066824(param0, &v0, 3, 2, 8, 0x3);
    return 1;
}

static int sub_02066B60 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {((16 * FX32_ONE) / 8), 0, 0};

    sub_02066824(param0, &v0, 2, 3, 8, 0x3);
    return 1;
}

static int sub_02066B90 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 1, 0, 4, 0x4);
    return 1;
}

static int sub_02066BC0 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 0, 1, 4, 0x4);
    return 1;
}

static int sub_02066BF0 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {-((16 * FX32_ONE) / 4), 0, 0};

    sub_02066824(param0, &v0, 3, 2, 4, 0x4);
    return 1;
}

static int sub_02066C20 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {((16 * FX32_ONE) / 4), 0, 0};

    sub_02066824(param0, &v0, 2, 3, 4, 0x4);
    return 1;
}

static int sub_02066C50 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 2)};

    sub_02066824(param0, &v0, 1, 0, 2, 0x5);
    return 1;
}

static int sub_02066C84 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 2)};

    sub_02066824(param0, &v0, 0, 1, 2, 0x5);
    return 1;
}

static int sub_02066CB8 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {-((16 * FX32_ONE) / 2), 0, 0};

    sub_02066824(param0, &v0, 3, 2, 2, 0x5);
    return 1;
}

static int sub_02066CE8 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {((16 * FX32_ONE) / 2), 0, 0};

    sub_02066824(param0, &v0, 2, 3, 2, 0x5);
    return 1;
}

static int sub_02066D18 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, ((16 * FX32_ONE) / 4), 0};

    sub_02066824(param0, &v0, 2, 0, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066D4C (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, -((16 * FX32_ONE) / 4), 0};

    sub_02066824(param0, &v0, 3, 1, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066D80 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 1, 2, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066DB4 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 0, 3, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066DE8 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, ((16 * FX32_ONE) / 4), 0};

    sub_02066824(param0, &v0, 3, 0, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066E1C (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, -((16 * FX32_ONE) / 4), 0};

    sub_02066824(param0, &v0, 2, 1, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066E50 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 0, 2, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066E84 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 1, 2, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066EB8 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 1, 0, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066EEC (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 0, 1, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066F20 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {-((16 * FX32_ONE) / 4), 0, 0};

    sub_02066824(param0, &v0, 3, 2, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066F54 (UnkStruct_02061AB4 * param0)
{
    VecFx32 v0 = {((16 * FX32_ONE) / 4), 0, 0};

    sub_02066824(param0, &v0, 2, 3, 4, ((0x8 + 1)));
    return 1;
}

static void sub_02066F88 (UnkStruct_02061AB4 * param0, fx32 param1, int param2, int param3, u8 param4, u8 param5, u8 param6, u8 param7, u8 param8)
{
    int v0 = 1;
    UnkStruct_02066F88 * v1;

    v1 = sub_02062AA4(param0, (sizeof(UnkStruct_02066F88)));

    v1->unk_00 = param4;
    v1->unk_04 = param1;
    v1->unk_02 = param6;
    v1->unk_01 = param7;
    v1->unk_03 = param8;
    v1->unk_0E = (0x100 * 16) / v1->unk_00;

    sub_02062974(param0, param2);
    sub_02062994(param0, param3);
    sub_02062A0C(param0, param5);
    sub_02062D28(param0);

    sub_0206300C(param0, sub_02063020(param0));
    sub_02063014(param0, sub_02063030(param0));
    sub_0206301C(param0, sub_02063040(param0));

    GF_ASSERT(param6 <= 2);

    if (param1) {
        switch (param6) {
        case 0:
            if (param1 < 0) {
                v0 = -v0;
            }

            sub_02063028(param0, v0);
            break;
        case 1:
            if (param1 < 0) {
                v0 = -v0;
            }

            sub_02063038(param0, v0 * 2);
            break;
        case 2:
            if (param1 < 0) {
                v0 = -v0;
            }

            sub_02063048(param0, v0);
            break;
        }
    }

    sub_02062BC8(param0);
}

static int sub_02067068 (UnkStruct_02061AB4 * param0)
{
    fx32 v0;
    VecFx32 v1;
    UnkStruct_02066F88 * v2;

    v2 = sub_02062AC8(param0);
    sub_02063050(param0, &v1);

    switch (v2->unk_02) {
    case 0:
        v1.x += v2->unk_04;
        break;
    case 1:
        v1.y += v2->unk_04;
        break;
    case 2:
        v1.z += v2->unk_04;
        break;
    }

    sub_02063060(param0, &v1);

    v0 = v2->unk_04;

    if (v0 < 0) {
        v0 = -v0;
    }

    v2->unk_08 += v0;
    v2->unk_0C += v2->unk_0E;

    if (v2->unk_0C > ((0x100 * ((16 - 1))))) {
        v2->unk_0C = ((0x100 * ((16 - 1))));
    }

    {
        VecFx32 v3 = {0, 0, 0};
        const fx32 * v4 = Unk_02100B84[1];
        u16 v5 = (v2->unk_0C) / 0x100;

        v0 = v4[v5];

        if (v2->unk_03 == 1) {
            v0 = -v0;
        }

        switch (v2->unk_01) {
        case 0:
            v3.x = v0;
            break;
        case 1:
            v3.y = v0;
            break;
        case 2:
            v3.z = v0;
            break;
        }

        sub_02063088(param0, &v3);
    }

    v2->unk_00--;

    if ((v2->unk_08 >= (16 * FX32_ONE)) && v2->unk_00) {
        int v6 = 1;

        v2->unk_08 -= (16 * FX32_ONE);
        v0 = v2->unk_04;

        sub_0206300C(param0, sub_02063020(param0));
        sub_02063014(param0, sub_02063030(param0));
        sub_0206301C(param0, sub_02063040(param0));

        switch (v2->unk_02) {
        case 0:
            if (v0 < 0) {
                v6 = -v6;
            }

            sub_02063028(param0, v6);
            break;
        case 1:
            if (v0 < 0) {
                v6 = -v6;
            }

            sub_02063038(param0, v6 * 2);
            break;
        case 2:
            if (v0 < 0) {
                v6 = -v6;
            }

            sub_02063048(param0, v6);
            break;
        }
    }

    if (v2->unk_00 > 0) {
        return 0;
    }

    {
        VecFx32 v7 = {0, 0, 0};
        sub_02063088(param0, &v7);
    }

    sub_020628BC(param0, (1 << 3) | (1 << 17) | (1 << 5));
    sub_02064208(param0);
    sub_02062B68(param0);
    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);
    sub_02005748(1607);

    return 1;
}

static int sub_020671F0 (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 2, 0, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_02067214 (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 3, 1, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_0206723C (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 1, 2, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067260 (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 0, 3, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067288 (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 3, 0, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_020672AC (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 2, 1, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_020672D4 (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 0, 2, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_020672FC (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 1, 2, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067320 (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 1, 0, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067344 (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 0, 1, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_0206736C (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 3, 2, 8, 0x3, 0, 1, 0);
    return 1;
}

static int sub_02067394 (UnkStruct_02061AB4 * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 2, 3, 8, 0x3, 0, 1, 0);
    return 1;
}

int(*const Unk_020EEC78[])(UnkStruct_02061AB4 *) = {
    sub_02065950, sub_02065924,
};

int(*const Unk_020EEC48[])(UnkStruct_02061AB4 *) = {
    sub_0206595C, sub_02065924,
};

int(*const Unk_020EEC88[])(UnkStruct_02061AB4 *) = {
    sub_02065968, sub_02065924,
};

int(*const Unk_020EEC80[])(UnkStruct_02061AB4 *) = {
    sub_02065974, sub_02065924,
};

int(*const Unk_020EF59C[])(UnkStruct_02061AB4 *) = {
    sub_02065A1C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF590[])(UnkStruct_02061AB4 *) = {
    sub_02065A30, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF584[])(UnkStruct_02061AB4 *) = {
    sub_02065A44, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF578[])(UnkStruct_02061AB4 *) = {
    sub_02065A58, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF56C[])(UnkStruct_02061AB4 *) = {
    sub_02065A6C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF560[])(UnkStruct_02061AB4 *) = {
    sub_02065A80, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF554[])(UnkStruct_02061AB4 *) = {
    sub_02065A94, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF548[])(UnkStruct_02061AB4 *) = {
    sub_02065AA8, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF53C[])(UnkStruct_02061AB4 *) = {
    sub_02065ABC, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF530[])(UnkStruct_02061AB4 *) = {
    sub_02065AD4, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF524[])(UnkStruct_02061AB4 *) = {
    sub_02065AE8, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF518[])(UnkStruct_02061AB4 *) = {
    sub_02065AFC, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF50C[])(UnkStruct_02061AB4 *) = {
    sub_02065B10, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF500[])(UnkStruct_02061AB4 *) = {
    sub_02065B24, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4F4[])(UnkStruct_02061AB4 *) = {
    sub_02065B38, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4E8[])(UnkStruct_02061AB4 *) = {
    sub_02065B4C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4DC[])(UnkStruct_02061AB4 *) = {
    sub_02065B60, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4D0[])(UnkStruct_02061AB4 *) = {
    sub_02065B78, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4C4[])(UnkStruct_02061AB4 *) = {
    sub_02065B8C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4B8[])(UnkStruct_02061AB4 *) = {
    sub_02065BA0, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4AC[])(UnkStruct_02061AB4 *) = {
    sub_02065BB8, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4A0[])(UnkStruct_02061AB4 *) = {
    sub_02065BCC, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF494[])(UnkStruct_02061AB4 *) = {
    sub_02065BE0, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF488[])(UnkStruct_02061AB4 *) = {
    sub_02065BF4, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF47C[])(UnkStruct_02061AB4 *) = {
    sub_02065CCC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF230[])(UnkStruct_02061AB4 *) = {
    sub_02065CDC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF458[])(UnkStruct_02061AB4 *) = {
    sub_02065CEC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF464[])(UnkStruct_02061AB4 *) = {
    sub_02065CFC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF5A8[])(UnkStruct_02061AB4 *) = {
    sub_02065D0C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF5B4[])(UnkStruct_02061AB4 *) = {
    sub_02065D1C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF434[])(UnkStruct_02061AB4 *) = {
    sub_02065D2C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF428[])(UnkStruct_02061AB4 *) = {
    sub_02065D3C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF41C[])(UnkStruct_02061AB4 *) = {
    sub_02065D4C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF410[])(UnkStruct_02061AB4 *) = {
    sub_02065D5C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF404[])(UnkStruct_02061AB4 *) = {
    sub_02065D6C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3F8[])(UnkStruct_02061AB4 *) = {
    sub_02065D7C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3EC[])(UnkStruct_02061AB4 *) = {
    sub_02065D8C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3E0[])(UnkStruct_02061AB4 *) = {
    sub_02065D9C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3D4[])(UnkStruct_02061AB4 *) = {
    sub_02065DAC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3C8[])(UnkStruct_02061AB4 *) = {
    sub_02065DBC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3BC[])(UnkStruct_02061AB4 *) = {
    sub_02065DCC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3B0[])(UnkStruct_02061AB4 *) = {
    sub_02065DDC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3A4[])(UnkStruct_02061AB4 *) = {
    sub_02065DEC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF398[])(UnkStruct_02061AB4 *) = {
    sub_02065DFC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF38C[])(UnkStruct_02061AB4 *) = {
    sub_02065F88, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF380[])(UnkStruct_02061AB4 *) = {
    sub_02065FA8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF374[])(UnkStruct_02061AB4 *) = {
    sub_02065FC8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF368[])(UnkStruct_02061AB4 *) = {
    sub_02065FE8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF35C[])(UnkStruct_02061AB4 *) = {
    sub_02066008, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF350[])(UnkStruct_02061AB4 *) = {
    sub_02066028, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF344[])(UnkStruct_02061AB4 *) = {
    sub_02066048, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF338[])(UnkStruct_02061AB4 *) = {
    sub_02066068, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF32C[])(UnkStruct_02061AB4 *) = {
    sub_02066088, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF320[])(UnkStruct_02061AB4 *) = {
    sub_020660A8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF314[])(UnkStruct_02061AB4 *) = {
    sub_020660CC, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF308[])(UnkStruct_02061AB4 *) = {
    sub_020660F0, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2FC[])(UnkStruct_02061AB4 *) = {
    sub_02066110, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2F0[])(UnkStruct_02061AB4 *) = {
    sub_02066130, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2E4[])(UnkStruct_02061AB4 *) = {
    sub_02066150, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2D8[])(UnkStruct_02061AB4 *) = {
    sub_02066170, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EEC98[])(UnkStruct_02061AB4 *) = {
    sub_02066194, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2C0[])(UnkStruct_02061AB4 *) = {
    sub_020661B4, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2B4[])(UnkStruct_02061AB4 *) = {
    sub_020661D8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2A8[])(UnkStruct_02061AB4 *) = {
    sub_020661F8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF29C[])(UnkStruct_02061AB4 *) = {
    sub_020662E4, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF290[])(UnkStruct_02061AB4 *) = {
    sub_020662F0, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF284[])(UnkStruct_02061AB4 *) = {
    sub_020662FC, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF278[])(UnkStruct_02061AB4 *) = {
    sub_02066308, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF26C[])(UnkStruct_02061AB4 *) = {
    sub_02066314, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF260[])(UnkStruct_02061AB4 *) = {
    sub_02066320, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF254[])(UnkStruct_02061AB4 *) = {
    sub_0206632C, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF248[])(UnkStruct_02061AB4 *) = {
    sub_02066338, sub_0206635C, sub_02065924,
};

int(*const Unk_020EF23C[])(UnkStruct_02061AB4 *) = {
    sub_020663A4, sub_020663D0, sub_02065924,
};

int(*const Unk_020EEC70[])(UnkStruct_02061AB4 *) = {
    sub_02066418, sub_02065924,
};

int(*const Unk_020EEC68[])(UnkStruct_02061AB4 *) = {
    sub_02066430, sub_02065924,
};

int(*const Unk_020EEC50[])(UnkStruct_02061AB4 *) = {
    sub_02066448, sub_02065924,
};

int(*const Unk_020EEC90[])(UnkStruct_02061AB4 *) = {
    sub_0206645C, sub_02065924,
};

int(*const Unk_020EEC58[])(UnkStruct_02061AB4 *) = {
    sub_02066470, sub_02065924,
};

int(*const Unk_020EEC60[])(UnkStruct_02061AB4 *) = {
    sub_02066488, sub_02065924,
};

int(*const Unk_020EF218[])(UnkStruct_02061AB4 *) = {
    sub_020664F0, sub_020664C8, sub_02065924,
};

int(*const Unk_020EF20C[])(UnkStruct_02061AB4 *) = {
    sub_02066500, sub_020664C8, sub_02065924,
};

int(*const Unk_020EF200[])(UnkStruct_02061AB4 *) = {
    sub_020665C0, sub_02066600, sub_02065924,
};

int(*const Unk_020EF1F4[])(UnkStruct_02061AB4 *) = {
    sub_020665D0, sub_02066600, sub_02065924,
};

int(*const Unk_020EF1E8[])(UnkStruct_02061AB4 *) = {
    sub_020665E0, sub_02066600, sub_02065924,
};

int(*const Unk_020EF1DC[])(UnkStruct_02061AB4 *) = {
    sub_020665F0, sub_02066600, sub_02065924,
};

int(*const Unk_020EF1D0[])(UnkStruct_02061AB4 *) = {
    sub_02066618, sub_02066658, sub_02065924,
};

int(*const Unk_020EF1C4[])(UnkStruct_02061AB4 *) = {
    sub_02066628, sub_02066658, sub_02065924,
};

int(*const Unk_020EF1B8[])(UnkStruct_02061AB4 *) = {
    sub_02066638, sub_02066658, sub_02065924,
};

int(*const Unk_020EF188[])(UnkStruct_02061AB4 *) = {
    sub_02066648, sub_02066658, sub_02065924,
};

int(*const Unk_020EF194[])(UnkStruct_02061AB4 *) = {
    sub_02065C0C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF224[])(UnkStruct_02061AB4 *) = {
    sub_02065C24, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF440[])(UnkStruct_02061AB4 *) = {
    sub_02065C38, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF470[])(UnkStruct_02061AB4 *) = {
    sub_02065C4C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF5C0[])(UnkStruct_02061AB4 *) = {
    sub_02066670, sub_020666B0, sub_02065924,
};

int(*const Unk_020EF164[])(UnkStruct_02061AB4 *) = {
    sub_02066680, sub_020666B0, sub_02065924,
};

int(*const Unk_020EF158[])(UnkStruct_02061AB4 *) = {
    sub_02066690, sub_020666B0, sub_02065924,
};

int(*const Unk_020EF14C[])(UnkStruct_02061AB4 *) = {
    sub_020666A0, sub_020666B0, sub_02065924,
};

int(*const Unk_020EF140[])(UnkStruct_02061AB4 *) = {
    sub_020666C8, sub_020666E4, sub_02065924,
};

int(*const Unk_020EF134[])(UnkStruct_02061AB4 *) = {
    sub_02066710, sub_02066764, sub_02065924,
};

int(*const Unk_020EF128[])(UnkStruct_02061AB4 *) = {
    sub_020667CC, sub_02066804, sub_02065924,
};

int(*const Unk_020EF11C[])(UnkStruct_02061AB4 *) = {
    sub_020667E8, sub_02066804, sub_02065924,
};

int(*const Unk_020EF110[])(UnkStruct_02061AB4 *) = {
    sub_02066934, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF104[])(UnkStruct_02061AB4 *) = {
    sub_02066968, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0F8[])(UnkStruct_02061AB4 *) = {
    sub_02066998, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0EC[])(UnkStruct_02061AB4 *) = {
    sub_020669CC, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0E0[])(UnkStruct_02061AB4 *) = {
    sub_020669FC, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0D4[])(UnkStruct_02061AB4 *) = {
    sub_02066A2C, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0C8[])(UnkStruct_02061AB4 *) = {
    sub_02066A60, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0BC[])(UnkStruct_02061AB4 *) = {
    sub_02066A94, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF2CC[])(UnkStruct_02061AB4 *) = {
    sub_02066AC8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0A4[])(UnkStruct_02061AB4 *) = {
    sub_02066AFC, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF098[])(UnkStruct_02061AB4 *) = {
    sub_02066B30, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF08C[])(UnkStruct_02061AB4 *) = {
    sub_02066B60, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF080[])(UnkStruct_02061AB4 *) = {
    sub_02066B90, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF074[])(UnkStruct_02061AB4 *) = {
    sub_02066BC0, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF068[])(UnkStruct_02061AB4 *) = {
    sub_02066BF0, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF05C[])(UnkStruct_02061AB4 *) = {
    sub_02066C20, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF050[])(UnkStruct_02061AB4 *) = {
    sub_02066C50, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF044[])(UnkStruct_02061AB4 *) = {
    sub_02066C84, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF038[])(UnkStruct_02061AB4 *) = {
    sub_02066CB8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF014[])(UnkStruct_02061AB4 *) = {
    sub_02066CE8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF020[])(UnkStruct_02061AB4 *) = {
    sub_0206621C, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF17C[])(UnkStruct_02061AB4 *) = {
    sub_02066240, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF1A0[])(UnkStruct_02061AB4 *) = {
    sub_02066264, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF44C[])(UnkStruct_02061AB4 *) = {
    sub_02066288, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF5CC[])(UnkStruct_02061AB4 *) = {
    sub_02066D18, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFF0[])(UnkStruct_02061AB4 *) = {
    sub_02066D4C, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFE4[])(UnkStruct_02061AB4 *) = {
    sub_02066D80, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFD8[])(UnkStruct_02061AB4 *) = {
    sub_02066DB4, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFCC[])(UnkStruct_02061AB4 *) = {
    sub_02066DE8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFC0[])(UnkStruct_02061AB4 *) = {
    sub_02066E1C, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFB4[])(UnkStruct_02061AB4 *) = {
    sub_02066E50, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFA8[])(UnkStruct_02061AB4 *) = {
    sub_02066E84, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0B0[])(UnkStruct_02061AB4 *) = {
    sub_02066EB8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEF90[])(UnkStruct_02061AB4 *) = {
    sub_02066EEC, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEF84[])(UnkStruct_02061AB4 *) = {
    sub_02066F20, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEF6C[])(UnkStruct_02061AB4 *) = {
    sub_02066F54, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEF78[])(UnkStruct_02061AB4 *) = {
    sub_020671F0, sub_02067068, sub_02065924,
};

int(*const Unk_020EF008[])(UnkStruct_02061AB4 *) = {
    sub_02067214, sub_02067068, sub_02065924,
};

int(*const Unk_020EF02C[])(UnkStruct_02061AB4 *) = {
    sub_0206723C, sub_02067068, sub_02065924,
};

int(*const Unk_020EF1AC[])(UnkStruct_02061AB4 *) = {
    sub_02067260, sub_02067068, sub_02065924,
};

int(*const Unk_020EF5D8[])(UnkStruct_02061AB4 *) = {
    sub_02067288, sub_02067068, sub_02065924,
};

int(*const Unk_020EECBC[])(UnkStruct_02061AB4 *) = {
    sub_020672AC, sub_02067068, sub_02065924,
};

int(*const Unk_020EECB0[])(UnkStruct_02061AB4 *) = {
    sub_020672D4, sub_02067068, sub_02065924,
};

int(*const Unk_020EECA4[])(UnkStruct_02061AB4 *) = {
    sub_020672FC, sub_02067068, sub_02065924,
};

int(*const Unk_020EEF9C[])(UnkStruct_02061AB4 *) = {
    sub_02067320, sub_02067068, sub_02065924,
};

int(*const Unk_020EEF60[])(UnkStruct_02061AB4 *) = {
    sub_02067344, sub_02067068, sub_02065924,
};

int(*const Unk_020EEFFC[])(UnkStruct_02061AB4 *) = {
    sub_0206736C, sub_02067068, sub_02065924,
};

int(*const Unk_020EF170[])(UnkStruct_02061AB4 *) = {
    sub_02067394, sub_02067068, sub_02065924,
};

int(*const Unk_020EF5E4[])(UnkStruct_02061AB4 *) = {
    sub_02066510, sub_020664C8, sub_02065924,
};

static const fx32 Unk_020EEEA0[16] = {
    4 * FX32_ONE,
    6 * FX32_ONE,
    8 * FX32_ONE,
    10 * FX32_ONE,
    11 * FX32_ONE,
    12 * FX32_ONE,
    12 * FX32_ONE,
    12 * FX32_ONE,
    11 * FX32_ONE,
    10 * FX32_ONE,
    9 * FX32_ONE,
    8 * FX32_ONE,
    6 * FX32_ONE,
    4 * FX32_ONE,
    0 * FX32_ONE,
    0 * FX32_ONE
};

static const fx32 Unk_020EEEE0[16] = {
    0 * FX32_ONE,
    2 * FX32_ONE,
    3 * FX32_ONE,
    4 * FX32_ONE,
    5 * FX32_ONE,
    6 * FX32_ONE,
    6 * FX32_ONE,
    6 * FX32_ONE,
    5 * FX32_ONE,
    5 * FX32_ONE,
    4 * FX32_ONE,
    3 * FX32_ONE,
    2 * FX32_ONE,
    0 * FX32_ONE,
    0 * FX32_ONE,
    0 * FX32_ONE
};

static const fx32 Unk_020EEF20[16] = {
    2 * FX32_ONE,
    4 * FX32_ONE,
    6 * FX32_ONE,
    8 * FX32_ONE,
    9 * FX32_ONE,
    10 * FX32_ONE,
    10 * FX32_ONE,
    10 * FX32_ONE,
    9 * FX32_ONE,
    8 * FX32_ONE,
    6 * FX32_ONE,
    5 * FX32_ONE,
    3 * FX32_ONE,
    2 * FX32_ONE,
    0 * FX32_ONE,
    0 * FX32_ONE
};

static const fx32 * Unk_02100B84[] = {
    Unk_020EEEA0,
    Unk_020EEEE0,
    Unk_020EEF20
};

static const fx32 Unk_020EEE84[7] = {
    (FX32_ONE * 2) + 0x500,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480,
    (FX32_ONE * 2) + 0x480
};

static const fx32 Unk_020EEE6C[6] = {
    FX32_ONE * 2,
    FX32_ONE * 3,
    FX32_ONE * 3,
    FX32_ONE * 2,
    FX32_ONE * 3,
    FX32_ONE * 3
};

static const fx32 Unk_020EECEC[3] = {
    FX32_ONE * 5,
    FX32_ONE * 6,
    FX32_ONE * 5
};
