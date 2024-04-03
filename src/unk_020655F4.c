#include <nitro.h>
#include <string.h>

#include "constdata/const_020EE4B8.h"

#include "struct_decls/sys_task.h"
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
    LocalMapObject * unk_0C;
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

static void sub_02065788(SysTask * param0, void * param1);
static int sub_02065910(LocalMapObject * param0, int param1, int param2);
static int sub_02065924(LocalMapObject * param0);
static void sub_02065930(LocalMapObject * param0, int param1);
static void sub_02065980(LocalMapObject * param0, int param1, fx32 param2, s16 param3, u16 param4);
static int sub_020659C8(LocalMapObject * param0);
static void sub_02065C64(LocalMapObject * param0, int param1, s16 param2, u16 param3);
static int sub_02065C98(LocalMapObject * param0);
static void sub_020664A0(LocalMapObject * param0, int param1, int param2);
static int sub_020664C8(LocalMapObject * param0);

int(*const Unk_020EEE54[])(UnkStruct_020EEE54 *);
const fx32 * Unk_02100B84[];
static const fx32 Unk_020EEE84[7];
static const fx32 Unk_020EEE6C[6];
static const fx32 Unk_020EECEC[3];

int sub_020655F4 (const LocalMapObject * param0)
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

void sub_02065638 (LocalMapObject * param0, int param1)
{
    GF_ASSERT(param1 < 0x9a);

    sub_02062BB0(param0, param1);
    sub_02062BC0(param0, 0);
    sub_020628BC(param0, (1 << 4));
    sub_020628C4(param0, (1 << 5));
}

void sub_02065668 (LocalMapObject * param0, int param1)
{
    sub_02062BB0(param0, param1);
    sub_02062BC0(param0, 0);
    sub_020628C4(param0, (1 << 5));
}

int sub_02065684 (const LocalMapObject * param0)
{
    if (sub_020628D8(param0, (1 << 4)) == 0) {
        return 1;
    }

    if (sub_020628D8(param0, (1 << 5)) == 0) {
        return 0;
    }

    return 1;
}

int sub_020656AC (LocalMapObject * param0)
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

void sub_020656DC (LocalMapObject * param0)
{
    sub_020628C4(param0, (1 << 4));
    sub_020628BC(param0, (1 << 5));
    sub_02062BB0(param0, 0xff);
    sub_02062BC0(param0, 0);
}

SysTask * sub_02065700 (LocalMapObject * param0, const UnkStruct_ov5_021F8E3C * param1)
{
    SysTask * v0;
    UnkStruct_020EEE54 * v1;

    v1 = Heap_AllocFromHeapAtEnd(4, (sizeof(UnkStruct_020EEE54)));
    GF_ASSERT(v1 != NULL);

    memset(v1, 0, (sizeof(UnkStruct_020EEE54)));

    {
        int v2;

        v2 = sub_02062858(sub_02062A40(param0)) - 1;
        v0 = SysTask_Start(sub_02065788, v1, v2);
        GF_ASSERT(v0 != NULL);
    }

    v1->unk_0C = param0;
    v1->unk_10 = param1;

    return v0;
}

int sub_0206574C (SysTask * param0)
{
    UnkStruct_020EEE54 * v0;

    v0 = sub_0201CED0(param0);
    return v0->unk_04;
}

void sub_02065758 (SysTask * param0)
{
    UnkStruct_020EEE54 * v0;

    v0 = sub_0201CED0(param0);

    GF_ASSERT(sub_02065684(v0->unk_0C) == 1);

    sub_020656AC(v0->unk_0C);
    Heap_FreeToHeapExplicit(4, v0);
    SysTask_Done(param0);
}

static void sub_02065788 (SysTask * param0, void * param1)
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

void sub_020658B4 (LocalMapObject * param0)
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

int sub_020658DC (LocalMapObject * param0)
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

static int sub_02065910 (LocalMapObject * param0, int param1, int param2)
{
    return Unk_020EE4B8[param1][param2](param0);
}

static int sub_02065924 (LocalMapObject * param0)
{
    sub_020628BC(param0, (1 << 5));
    return 0;
}

static void sub_02065930 (LocalMapObject * param0, int param1)
{
    sub_02062974(param0, param1);
    sub_02062A0C(param0, 0x0);
    sub_02064208(param0);
    sub_02062BC8(param0);
}

static int sub_02065950 (LocalMapObject * param0)
{
    sub_02065930(param0, 0);
    return 1;
}

static int sub_0206595C (LocalMapObject * param0)
{
    sub_02065930(param0, 1);
    return 1;
}

static int sub_02065968 (LocalMapObject * param0)
{
    sub_02065930(param0, 2);
    return 1;
}

static int sub_02065974 (LocalMapObject * param0)
{
    sub_02065930(param0, 3);
    return 1;
}

static void sub_02065980 (LocalMapObject * param0, int param1, fx32 param2, s16 param3, u16 param4)
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

static int sub_020659C8 (LocalMapObject * param0)
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

static int sub_02065A1C (LocalMapObject * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int sub_02065A30 (LocalMapObject * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int sub_02065A44 (LocalMapObject * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int sub_02065A58 (LocalMapObject * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 32), 32, 0x1);
    return 1;
}

static int sub_02065A6C (LocalMapObject * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int sub_02065A80 (LocalMapObject * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int sub_02065A94 (LocalMapObject * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int sub_02065AA8 (LocalMapObject * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 16), 16, 0x2);
    return 1;
}

static int sub_02065ABC (LocalMapObject * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int sub_02065AD4 (LocalMapObject * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int sub_02065AE8 (LocalMapObject * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int sub_02065AFC (LocalMapObject * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 8), 8, 0x3);
    return 1;
}

static int sub_02065B10 (LocalMapObject * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int sub_02065B24 (LocalMapObject * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int sub_02065B38 (LocalMapObject * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int sub_02065B4C (LocalMapObject * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 4), 4, 0x4);
    return 1;
}

static int sub_02065B60 (LocalMapObject * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int sub_02065B78 (LocalMapObject * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int sub_02065B8C (LocalMapObject * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int sub_02065BA0 (LocalMapObject * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 2), 2, 0x5);
    return 1;
}

static int sub_02065BB8 (LocalMapObject * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int sub_02065BCC (LocalMapObject * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int sub_02065BE0 (LocalMapObject * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int sub_02065BF4 (LocalMapObject * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 1), 1, 0x0);
    return 1;
}

static int sub_02065C0C (LocalMapObject * param0)
{
    sub_02065980(param0, 0, ((16 * FX32_ONE) / 4), 4, ((0x8 + 1)));
    return 1;
}

static int sub_02065C24 (LocalMapObject * param0)
{
    sub_02065980(param0, 1, ((16 * FX32_ONE) / 4), 4, ((0x8 + 1)));
    return 1;
}

static int sub_02065C38 (LocalMapObject * param0)
{
    sub_02065980(param0, 2, ((16 * FX32_ONE) / 4), 4, ((0x8 + 1)));
    return 1;
}

static int sub_02065C4C (LocalMapObject * param0)
{
    sub_02065980(param0, 3, ((16 * FX32_ONE) / 4), 4, ((0x8 + 1)));
    return 1;
}

static void sub_02065C64 (LocalMapObject * param0, int param1, s16 param2, u16 param3)
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

static int sub_02065C98 (LocalMapObject * param0)
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

static int sub_02065CCC (LocalMapObject * param0)
{
    sub_02065C64(param0, 0, 32, 0x1);
    return 1;
}

static int sub_02065CDC (LocalMapObject * param0)
{
    sub_02065C64(param0, 1, 32, 0x1);
    return 1;
}

static int sub_02065CEC (LocalMapObject * param0)
{
    sub_02065C64(param0, 2, 32, 0x1);
    return 1;
}

static int sub_02065CFC (LocalMapObject * param0)
{
    sub_02065C64(param0, 3, 32, 0x1);
    return 1;
}

static int sub_02065D0C (LocalMapObject * param0)
{
    sub_02065C64(param0, 0, 16, 0x2);
    return 1;
}

static int sub_02065D1C (LocalMapObject * param0)
{
    sub_02065C64(param0, 1, 16, 0x2);
    return 1;
}

static int sub_02065D2C (LocalMapObject * param0)
{
    sub_02065C64(param0, 2, 16, 0x2);
    return 1;
}

static int sub_02065D3C (LocalMapObject * param0)
{
    sub_02065C64(param0, 3, 16, 0x2);
    return 1;
}

static int sub_02065D4C (LocalMapObject * param0)
{
    sub_02065C64(param0, 0, 8, 0x3);
    return 1;
}

static int sub_02065D5C (LocalMapObject * param0)
{
    sub_02065C64(param0, 1, 8, 0x3);
    return 1;
}

static int sub_02065D6C (LocalMapObject * param0)
{
    sub_02065C64(param0, 2, 8, 0x3);
    return 1;
}

static int sub_02065D7C (LocalMapObject * param0)
{
    sub_02065C64(param0, 3, 8, 0x3);
    return 1;
}

static int sub_02065D8C (LocalMapObject * param0)
{
    sub_02065C64(param0, 0, 4, 0x4);
    return 1;
}

static int sub_02065D9C (LocalMapObject * param0)
{
    sub_02065C64(param0, 1, 4, 0x4);
    return 1;
}

static int sub_02065DAC (LocalMapObject * param0)
{
    sub_02065C64(param0, 2, 4, 0x4);
    return 1;
}

static int sub_02065DBC (LocalMapObject * param0)
{
    sub_02065C64(param0, 3, 4, 0x4);
    return 1;
}

static int sub_02065DCC (LocalMapObject * param0)
{
    sub_02065C64(param0, 0, 2, 0x5);
    return 1;
}

static int sub_02065DDC (LocalMapObject * param0)
{
    sub_02065C64(param0, 1, 2, 0x5);
    return 1;
}

static int sub_02065DEC (LocalMapObject * param0)
{
    sub_02065C64(param0, 2, 2, 0x5);
    return 1;
}

static int sub_02065DFC (LocalMapObject * param0)
{
    sub_02065C64(param0, 3, 2, 0x5);
    return 1;
}

static void sub_02065E0C (LocalMapObject * param0, int param1, fx32 param2, s16 param3, u16 param4, s16 param5, u16 param6, u32 param7)
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
        Sound_PlayEffect(param7);
    }
}

static void sub_02065E7C (LocalMapObject * param0, int param1, fx32 param2, s16 param3, u16 param4, s16 param5, u16 param6)
{
    sub_02065E0C(param0, param1, param2, param3, param4, param5, param6, 1547);
}

static int sub_02065EA0 (LocalMapObject * param0)
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
    Sound_PlayEffect(1607);

    return 1;
}

static int sub_02065F88 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 0, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02065FA8 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 1, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02065FC8 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 2, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02065FE8 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 3, 0, 16, 0x2, 0, (0x100 * 1));
    return 1;
}

static int sub_02066008 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 0, 0, 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066028 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 1, 0, 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066048 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 2, 0, 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066068 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 3, 0, 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066088 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 0, ((16 * FX32_ONE) / 8), 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_020660A8 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 1, ((16 * FX32_ONE) / 8), 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_020660CC (LocalMapObject * param0)
{
    sub_02065E7C(param0, 2, ((16 * FX32_ONE) / 8), 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_020660F0 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 3, ((16 * FX32_ONE) / 8), 8, 0x3, 0, ((0x100 * 2)));
    return 1;
}

static int sub_02066110 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 0, ((16 * FX32_ONE) / 8), 8 * 2, 0x3, 0, (0x100 * 1));
    return 1;
}

static int sub_02066130 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 1, ((16 * FX32_ONE) / 8), 16, 0x3, 0, (0x100 * 1));
    return 1;
}

static int sub_02066150 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 2, ((16 * FX32_ONE) / 8), 16, 0x3, 0, (0x100 * 1));

    return 1;
}

static int sub_02066170 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 3, ((16 * FX32_ONE) / 8), 16, 0x3, 0, (0x100 * 1));
    return 1;
}

static int sub_02066194 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 2, ((16 * FX32_ONE) / 16), 16, ((0x8 + 1)), 0, (((0x100 * ((16 - 1)))) / 16));
    return 1;
}

static int sub_020661B4 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 3, ((16 * FX32_ONE) / 16), 16, ((0x8 + 1)), 0, (((0x100 * ((16 - 1)))) / 16));
    return 1;
}

static int sub_020661D8 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 2, ((16 * FX32_ONE) / 4), 12, ((0x8 + 1) + 1), 0, (((0x100 * ((16 - 1)))) / 12));
    return 1;
}

static int sub_020661F8 (LocalMapObject * param0)
{
    sub_02065E7C(param0, 3, ((16 * FX32_ONE) / 4), 12, ((0x8 + 1) + 1), 0, (((0x100 * ((16 - 1)))) / 12));
    return 1;
}

static int sub_0206621C (LocalMapObject * param0)
{
    sub_02065E0C(param0, 0, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, (((0x100 * ((16 - 1)))) / 24), 0);
    return 1;
}

static int sub_02066240 (LocalMapObject * param0)
{
    sub_02065E0C(param0, 1, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, (((0x100 * ((16 - 1)))) / 24), 0);
    return 1;
}

static int sub_02066264 (LocalMapObject * param0)
{
    sub_02065E0C(param0, 2, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, (((0x100 * ((16 - 1)))) / 24), 0);
    return 1;
}

static int sub_02066288 (LocalMapObject * param0)
{
    sub_02065E0C(param0, 3, ((16 * FX32_ONE) / 8), 8 * 3, 0x3, 0, (((0x100 * ((16 - 1)))) / 24), 0);
    return 1;
}

static void sub_020662AC (LocalMapObject * param0, int param1)
{
    UnkStruct_020662AC * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020662AC)));
    v0->unk_00 = param1;

    sub_02062BC8(param0);
}

static int sub_020662C4 (LocalMapObject * param0)
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

static int sub_020662E4 (LocalMapObject * param0)
{
    sub_020662AC(param0, 1);
    return 1;
}

static int sub_020662F0 (LocalMapObject * param0)
{
    sub_020662AC(param0, 2);
    return 1;
}

static int sub_020662FC (LocalMapObject * param0)
{
    sub_020662AC(param0, 4);
    return 1;
}

static int sub_02066308 (LocalMapObject * param0)
{
    sub_020662AC(param0, 8);
    return 1;
}

static int sub_02066314 (LocalMapObject * param0)
{
    sub_020662AC(param0, 15);
    return 1;
}

static int sub_02066320 (LocalMapObject * param0)
{
    sub_020662AC(param0, 16);
    return 1;
}

static int sub_0206632C (LocalMapObject * param0)
{
    sub_020662AC(param0, 32);
    return 1;
}

static int sub_02066338 (LocalMapObject * param0)
{
    UnkStruct_02066338 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02066338)));
    v0->unk_04 = FX32_ONE * 16;

    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 1;
}

static int sub_0206635C (LocalMapObject * param0)
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

static int sub_020663A4 (LocalMapObject * param0)
{
    UnkStruct_02066338 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_02066338)));

    v0->unk_00 = ((16 * FX32_ONE) >> 1) * 40;
    v0->unk_04 = -(FX32_ONE * 16);

    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 1;
}

static int sub_020663D0 (LocalMapObject * param0)
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

static int sub_02066418 (LocalMapObject * param0)
{
    sub_020628BC(param0, (1 << 9));
    sub_02062BC8(param0);

    return 1;
}

static int sub_02066430 (LocalMapObject * param0)
{
    sub_020628C4(param0, (1 << 9));
    sub_02062BC8(param0);

    return 1;
}

static int sub_02066448 (LocalMapObject * param0)
{
    sub_020628BC(param0, (1 << 7));
    sub_02062BC8(param0);

    return 1;
}

static int sub_0206645C (LocalMapObject * param0)
{
    sub_020628C4(param0, (1 << 7));
    sub_02062BC8(param0);

    return 1;
}

static int sub_02066470 (LocalMapObject * param0)
{
    sub_020628BC(param0, (1 << 8));
    sub_02062BC8(param0);

    return 1;
}

static int sub_02066488 (LocalMapObject * param0)
{
    sub_020628C4(param0, (1 << 8));
    sub_02062BC8(param0);

    return 1;
}

static void sub_020664A0 (LocalMapObject * param0, int param1, int param2)
{
    UnkStruct_020664A0 * v0;

    v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020664A0)));

    v0->unk_00 = param1;
    v0->unk_04 = ov5_021F5D8C(param0, param1, 1, param2);

    sub_02062BC8(param0);
}

static int sub_020664C8 (LocalMapObject * param0)
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

static int sub_020664F0 (LocalMapObject * param0)
{
    sub_020664A0(param0, 0, 0);
    return 0;
}

static int sub_02066500 (LocalMapObject * param0)
{
    sub_020664A0(param0, 1, 0);
    return 0;
}

static int sub_02066510 (LocalMapObject * param0)
{
    sub_020664A0(param0, 0, 1);
    return 0;
}

static void sub_02066520 (LocalMapObject * param0, int param1, s16 param2, u16 param3)
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

static int sub_02066560 (LocalMapObject * param0, const fx32 * param1)
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

static int sub_020665C0 (LocalMapObject * param0)
{
    sub_02066520(param0, 0, 6, 0x6);
    return 1;
}

static int sub_020665D0 (LocalMapObject * param0)
{
    sub_02066520(param0, 1, 6, 0x6);
    return 1;
}

static int sub_020665E0 (LocalMapObject * param0)
{
    sub_02066520(param0, 2, 6, 0x6);
    return 1;
}

static int sub_020665F0 (LocalMapObject * param0)
{
    sub_02066520(param0, 3, 6, 0x6);
    return 1;
}

static int sub_02066600 (LocalMapObject * param0)
{
    if (sub_02066560(param0, Unk_020EEE6C) == 1) {
        return 1;
    }

    return 0;
}

static int sub_02066618 (LocalMapObject * param0)
{
    sub_02066520(param0, 0, 3, 0x7);
    return 1;
}

static int sub_02066628 (LocalMapObject * param0)
{
    sub_02066520(param0, 1, 3, 0x7);
    return 1;
}

static int sub_02066638 (LocalMapObject * param0)
{
    sub_02066520(param0, 2, 3, 0x7);
    return 1;
}

static int sub_02066648 (LocalMapObject * param0)
{
    sub_02066520(param0, 3, 3, 0x7);
    return 1;
}

static int sub_02066658 (LocalMapObject * param0)
{
    if (sub_02066560(param0, Unk_020EECEC) == 1) {
        return 1;
    }

    return 0;
}

static int sub_02066670 (LocalMapObject * param0)
{
    sub_02066520(param0, 0, 7, 0x8);
    return 1;
}

static int sub_02066680 (LocalMapObject * param0)
{
    sub_02066520(param0, 1, 7, 0x8);
    return 1;
}

static int sub_02066690 (LocalMapObject * param0)
{
    sub_02066520(param0, 2, 7, 0x8);
    return 1;
}

static int sub_020666A0 (LocalMapObject * param0)
{
    sub_02066520(param0, 3, 7, 0x8);
    return 1;
}

static int sub_020666B0 (LocalMapObject * param0)
{
    if (sub_02066560(param0, Unk_020EEE84) == 1) {
        return 1;
    }

    return 0;
}

static int sub_020666C8 (LocalMapObject * param0)
{
    UnkStruct_020666C8 * v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020666C8)));

    sub_02062A0C(param0, 0x9);
    sub_02062BC8(param0);

    return 0;
}

static int sub_020666E4 (LocalMapObject * param0)
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

static int sub_02066710 (LocalMapObject * param0)
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

static int sub_02066764 (LocalMapObject * param0)
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

static int sub_020667CC (LocalMapObject * param0)
{
    UnkStruct_020667CC * v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020667CC)));

    sub_02062A0C(param0, 0x0);
    sub_02062BC8(param0);

    return 0;
}

static int sub_020667E8 (LocalMapObject * param0)
{
    UnkStruct_020667CC * v0 = sub_02062AA4(param0, (sizeof(UnkStruct_020667CC)));

    sub_02062A0C(param0, 0x1);
    sub_02062BC8(param0);

    return 0;
}

static int sub_02066804 (LocalMapObject * param0)
{
    UnkStruct_020667CC * v0 = sub_02062AC8(param0);

    v0->unk_00++;

    if (v0->unk_00 < 21) {
        return 0;
    }

    sub_02062BC8(param0);
    return 1;
}

static void sub_02066824 (LocalMapObject * param0, const VecFx32 * param1, int param2, int param3, int param4, u8 param5)
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

static int sub_020668EC (LocalMapObject * param0)
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

static int sub_02066934 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, ((16 * FX32_ONE) / 8), 0};

    sub_02066824(param0, &v0, 2, 0, 8, 0x3);
    return 1;
}

static int sub_02066968 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, -((16 * FX32_ONE) / 8), 0};

    sub_02066824(param0, &v0, 3, 1, 8, 0x3);
    return 1;
}

static int sub_02066998 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 1, 2, 8, 0x3);
    return 1;
}

static int sub_020669CC (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 0, 3, 8, 0x3);
    return 1;
}

static int sub_020669FC (LocalMapObject * param0)
{
    VecFx32 v0 = {0, ((16 * FX32_ONE) / 8), 0};

    sub_02066824(param0, &v0, 3, 0, 8, 0x3);
    return 1;
}

static int sub_02066A2C (LocalMapObject * param0)
{
    VecFx32 v0 = {0, -((16 * FX32_ONE) / 8), 0};

    sub_02066824(param0, &v0, 2, 1, 8, 0x3);
    return 1;
}

static int sub_02066A60 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 0, 2, 8, 0x3);
    return 1;
}

static int sub_02066A94 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 1, 2, 8, 0x3);
    return 1;
}

static int sub_02066AC8 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 1, 0, 8, 0x3);
    return 1;
}

static int sub_02066AFC (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 8)};

    sub_02066824(param0, &v0, 0, 1, 8, 0x3);
    return 1;
}

static int sub_02066B30 (LocalMapObject * param0)
{
    VecFx32 v0 = {-((16 * FX32_ONE) / 8), 0, 0};

    sub_02066824(param0, &v0, 3, 2, 8, 0x3);
    return 1;
}

static int sub_02066B60 (LocalMapObject * param0)
{
    VecFx32 v0 = {((16 * FX32_ONE) / 8), 0, 0};

    sub_02066824(param0, &v0, 2, 3, 8, 0x3);
    return 1;
}

static int sub_02066B90 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 1, 0, 4, 0x4);
    return 1;
}

static int sub_02066BC0 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 0, 1, 4, 0x4);
    return 1;
}

static int sub_02066BF0 (LocalMapObject * param0)
{
    VecFx32 v0 = {-((16 * FX32_ONE) / 4), 0, 0};

    sub_02066824(param0, &v0, 3, 2, 4, 0x4);
    return 1;
}

static int sub_02066C20 (LocalMapObject * param0)
{
    VecFx32 v0 = {((16 * FX32_ONE) / 4), 0, 0};

    sub_02066824(param0, &v0, 2, 3, 4, 0x4);
    return 1;
}

static int sub_02066C50 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 2)};

    sub_02066824(param0, &v0, 1, 0, 2, 0x5);
    return 1;
}

static int sub_02066C84 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 2)};

    sub_02066824(param0, &v0, 0, 1, 2, 0x5);
    return 1;
}

static int sub_02066CB8 (LocalMapObject * param0)
{
    VecFx32 v0 = {-((16 * FX32_ONE) / 2), 0, 0};

    sub_02066824(param0, &v0, 3, 2, 2, 0x5);
    return 1;
}

static int sub_02066CE8 (LocalMapObject * param0)
{
    VecFx32 v0 = {((16 * FX32_ONE) / 2), 0, 0};

    sub_02066824(param0, &v0, 2, 3, 2, 0x5);
    return 1;
}

static int sub_02066D18 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, ((16 * FX32_ONE) / 4), 0};

    sub_02066824(param0, &v0, 2, 0, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066D4C (LocalMapObject * param0)
{
    VecFx32 v0 = {0, -((16 * FX32_ONE) / 4), 0};

    sub_02066824(param0, &v0, 3, 1, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066D80 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 1, 2, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066DB4 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 0, 3, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066DE8 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, ((16 * FX32_ONE) / 4), 0};

    sub_02066824(param0, &v0, 3, 0, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066E1C (LocalMapObject * param0)
{
    VecFx32 v0 = {0, -((16 * FX32_ONE) / 4), 0};

    sub_02066824(param0, &v0, 2, 1, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066E50 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 0, 2, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066E84 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 1, 2, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066EB8 (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, ((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 1, 0, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066EEC (LocalMapObject * param0)
{
    VecFx32 v0 = {0, 0, -((16 * FX32_ONE) / 4)};

    sub_02066824(param0, &v0, 0, 1, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066F20 (LocalMapObject * param0)
{
    VecFx32 v0 = {-((16 * FX32_ONE) / 4), 0, 0};

    sub_02066824(param0, &v0, 3, 2, 4, ((0x8 + 1)));
    return 1;
}

static int sub_02066F54 (LocalMapObject * param0)
{
    VecFx32 v0 = {((16 * FX32_ONE) / 4), 0, 0};

    sub_02066824(param0, &v0, 2, 3, 4, ((0x8 + 1)));
    return 1;
}

static void sub_02066F88 (LocalMapObject * param0, fx32 param1, int param2, int param3, u8 param4, u8 param5, u8 param6, u8 param7, u8 param8)
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

static int sub_02067068 (LocalMapObject * param0)
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
    Sound_PlayEffect(1607);

    return 1;
}

static int sub_020671F0 (LocalMapObject * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 2, 0, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_02067214 (LocalMapObject * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 3, 1, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_0206723C (LocalMapObject * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 1, 2, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067260 (LocalMapObject * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 0, 3, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067288 (LocalMapObject * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 3, 0, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_020672AC (LocalMapObject * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 2, 1, 8, 0x3, 1, 1, 0);
    return 1;
}

static int sub_020672D4 (LocalMapObject * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 0, 2, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_020672FC (LocalMapObject * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 1, 2, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067320 (LocalMapObject * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 1, 0, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_02067344 (LocalMapObject * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 0, 1, 8, 0x3, 2, 1, 0);
    return 1;
}

static int sub_0206736C (LocalMapObject * param0)
{
    sub_02066F88(param0, -((16 * FX32_ONE) / 8), 3, 2, 8, 0x3, 0, 1, 0);
    return 1;
}

static int sub_02067394 (LocalMapObject * param0)
{
    sub_02066F88(param0, ((16 * FX32_ONE) / 8), 2, 3, 8, 0x3, 0, 1, 0);
    return 1;
}

int(*const Unk_020EEC78[])(LocalMapObject *) = {
    sub_02065950, sub_02065924,
};

int(*const Unk_020EEC48[])(LocalMapObject *) = {
    sub_0206595C, sub_02065924,
};

int(*const Unk_020EEC88[])(LocalMapObject *) = {
    sub_02065968, sub_02065924,
};

int(*const Unk_020EEC80[])(LocalMapObject *) = {
    sub_02065974, sub_02065924,
};

int(*const Unk_020EF59C[])(LocalMapObject *) = {
    sub_02065A1C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF590[])(LocalMapObject *) = {
    sub_02065A30, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF584[])(LocalMapObject *) = {
    sub_02065A44, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF578[])(LocalMapObject *) = {
    sub_02065A58, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF56C[])(LocalMapObject *) = {
    sub_02065A6C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF560[])(LocalMapObject *) = {
    sub_02065A80, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF554[])(LocalMapObject *) = {
    sub_02065A94, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF548[])(LocalMapObject *) = {
    sub_02065AA8, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF53C[])(LocalMapObject *) = {
    sub_02065ABC, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF530[])(LocalMapObject *) = {
    sub_02065AD4, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF524[])(LocalMapObject *) = {
    sub_02065AE8, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF518[])(LocalMapObject *) = {
    sub_02065AFC, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF50C[])(LocalMapObject *) = {
    sub_02065B10, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF500[])(LocalMapObject *) = {
    sub_02065B24, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4F4[])(LocalMapObject *) = {
    sub_02065B38, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4E8[])(LocalMapObject *) = {
    sub_02065B4C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4DC[])(LocalMapObject *) = {
    sub_02065B60, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4D0[])(LocalMapObject *) = {
    sub_02065B78, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4C4[])(LocalMapObject *) = {
    sub_02065B8C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4B8[])(LocalMapObject *) = {
    sub_02065BA0, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4AC[])(LocalMapObject *) = {
    sub_02065BB8, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF4A0[])(LocalMapObject *) = {
    sub_02065BCC, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF494[])(LocalMapObject *) = {
    sub_02065BE0, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF488[])(LocalMapObject *) = {
    sub_02065BF4, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF47C[])(LocalMapObject *) = {
    sub_02065CCC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF230[])(LocalMapObject *) = {
    sub_02065CDC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF458[])(LocalMapObject *) = {
    sub_02065CEC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF464[])(LocalMapObject *) = {
    sub_02065CFC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF5A8[])(LocalMapObject *) = {
    sub_02065D0C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF5B4[])(LocalMapObject *) = {
    sub_02065D1C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF434[])(LocalMapObject *) = {
    sub_02065D2C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF428[])(LocalMapObject *) = {
    sub_02065D3C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF41C[])(LocalMapObject *) = {
    sub_02065D4C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF410[])(LocalMapObject *) = {
    sub_02065D5C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF404[])(LocalMapObject *) = {
    sub_02065D6C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3F8[])(LocalMapObject *) = {
    sub_02065D7C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3EC[])(LocalMapObject *) = {
    sub_02065D8C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3E0[])(LocalMapObject *) = {
    sub_02065D9C, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3D4[])(LocalMapObject *) = {
    sub_02065DAC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3C8[])(LocalMapObject *) = {
    sub_02065DBC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3BC[])(LocalMapObject *) = {
    sub_02065DCC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3B0[])(LocalMapObject *) = {
    sub_02065DDC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF3A4[])(LocalMapObject *) = {
    sub_02065DEC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF398[])(LocalMapObject *) = {
    sub_02065DFC, sub_02065C98, sub_02065924,
};

int(*const Unk_020EF38C[])(LocalMapObject *) = {
    sub_02065F88, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF380[])(LocalMapObject *) = {
    sub_02065FA8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF374[])(LocalMapObject *) = {
    sub_02065FC8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF368[])(LocalMapObject *) = {
    sub_02065FE8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF35C[])(LocalMapObject *) = {
    sub_02066008, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF350[])(LocalMapObject *) = {
    sub_02066028, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF344[])(LocalMapObject *) = {
    sub_02066048, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF338[])(LocalMapObject *) = {
    sub_02066068, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF32C[])(LocalMapObject *) = {
    sub_02066088, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF320[])(LocalMapObject *) = {
    sub_020660A8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF314[])(LocalMapObject *) = {
    sub_020660CC, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF308[])(LocalMapObject *) = {
    sub_020660F0, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2FC[])(LocalMapObject *) = {
    sub_02066110, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2F0[])(LocalMapObject *) = {
    sub_02066130, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2E4[])(LocalMapObject *) = {
    sub_02066150, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2D8[])(LocalMapObject *) = {
    sub_02066170, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EEC98[])(LocalMapObject *) = {
    sub_02066194, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2C0[])(LocalMapObject *) = {
    sub_020661B4, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2B4[])(LocalMapObject *) = {
    sub_020661D8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF2A8[])(LocalMapObject *) = {
    sub_020661F8, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF29C[])(LocalMapObject *) = {
    sub_020662E4, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF290[])(LocalMapObject *) = {
    sub_020662F0, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF284[])(LocalMapObject *) = {
    sub_020662FC, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF278[])(LocalMapObject *) = {
    sub_02066308, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF26C[])(LocalMapObject *) = {
    sub_02066314, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF260[])(LocalMapObject *) = {
    sub_02066320, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF254[])(LocalMapObject *) = {
    sub_0206632C, sub_020662C4, sub_02065924,
};

int(*const Unk_020EF248[])(LocalMapObject *) = {
    sub_02066338, sub_0206635C, sub_02065924,
};

int(*const Unk_020EF23C[])(LocalMapObject *) = {
    sub_020663A4, sub_020663D0, sub_02065924,
};

int(*const Unk_020EEC70[])(LocalMapObject *) = {
    sub_02066418, sub_02065924,
};

int(*const Unk_020EEC68[])(LocalMapObject *) = {
    sub_02066430, sub_02065924,
};

int(*const Unk_020EEC50[])(LocalMapObject *) = {
    sub_02066448, sub_02065924,
};

int(*const Unk_020EEC90[])(LocalMapObject *) = {
    sub_0206645C, sub_02065924,
};

int(*const Unk_020EEC58[])(LocalMapObject *) = {
    sub_02066470, sub_02065924,
};

int(*const Unk_020EEC60[])(LocalMapObject *) = {
    sub_02066488, sub_02065924,
};

int(*const Unk_020EF218[])(LocalMapObject *) = {
    sub_020664F0, sub_020664C8, sub_02065924,
};

int(*const Unk_020EF20C[])(LocalMapObject *) = {
    sub_02066500, sub_020664C8, sub_02065924,
};

int(*const Unk_020EF200[])(LocalMapObject *) = {
    sub_020665C0, sub_02066600, sub_02065924,
};

int(*const Unk_020EF1F4[])(LocalMapObject *) = {
    sub_020665D0, sub_02066600, sub_02065924,
};

int(*const Unk_020EF1E8[])(LocalMapObject *) = {
    sub_020665E0, sub_02066600, sub_02065924,
};

int(*const Unk_020EF1DC[])(LocalMapObject *) = {
    sub_020665F0, sub_02066600, sub_02065924,
};

int(*const Unk_020EF1D0[])(LocalMapObject *) = {
    sub_02066618, sub_02066658, sub_02065924,
};

int(*const Unk_020EF1C4[])(LocalMapObject *) = {
    sub_02066628, sub_02066658, sub_02065924,
};

int(*const Unk_020EF1B8[])(LocalMapObject *) = {
    sub_02066638, sub_02066658, sub_02065924,
};

int(*const Unk_020EF188[])(LocalMapObject *) = {
    sub_02066648, sub_02066658, sub_02065924,
};

int(*const Unk_020EF194[])(LocalMapObject *) = {
    sub_02065C0C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF224[])(LocalMapObject *) = {
    sub_02065C24, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF440[])(LocalMapObject *) = {
    sub_02065C38, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF470[])(LocalMapObject *) = {
    sub_02065C4C, sub_020659C8, sub_02065924,
};

int(*const Unk_020EF5C0[])(LocalMapObject *) = {
    sub_02066670, sub_020666B0, sub_02065924,
};

int(*const Unk_020EF164[])(LocalMapObject *) = {
    sub_02066680, sub_020666B0, sub_02065924,
};

int(*const Unk_020EF158[])(LocalMapObject *) = {
    sub_02066690, sub_020666B0, sub_02065924,
};

int(*const Unk_020EF14C[])(LocalMapObject *) = {
    sub_020666A0, sub_020666B0, sub_02065924,
};

int(*const Unk_020EF140[])(LocalMapObject *) = {
    sub_020666C8, sub_020666E4, sub_02065924,
};

int(*const Unk_020EF134[])(LocalMapObject *) = {
    sub_02066710, sub_02066764, sub_02065924,
};

int(*const Unk_020EF128[])(LocalMapObject *) = {
    sub_020667CC, sub_02066804, sub_02065924,
};

int(*const Unk_020EF11C[])(LocalMapObject *) = {
    sub_020667E8, sub_02066804, sub_02065924,
};

int(*const Unk_020EF110[])(LocalMapObject *) = {
    sub_02066934, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF104[])(LocalMapObject *) = {
    sub_02066968, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0F8[])(LocalMapObject *) = {
    sub_02066998, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0EC[])(LocalMapObject *) = {
    sub_020669CC, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0E0[])(LocalMapObject *) = {
    sub_020669FC, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0D4[])(LocalMapObject *) = {
    sub_02066A2C, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0C8[])(LocalMapObject *) = {
    sub_02066A60, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0BC[])(LocalMapObject *) = {
    sub_02066A94, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF2CC[])(LocalMapObject *) = {
    sub_02066AC8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0A4[])(LocalMapObject *) = {
    sub_02066AFC, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF098[])(LocalMapObject *) = {
    sub_02066B30, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF08C[])(LocalMapObject *) = {
    sub_02066B60, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF080[])(LocalMapObject *) = {
    sub_02066B90, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF074[])(LocalMapObject *) = {
    sub_02066BC0, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF068[])(LocalMapObject *) = {
    sub_02066BF0, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF05C[])(LocalMapObject *) = {
    sub_02066C20, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF050[])(LocalMapObject *) = {
    sub_02066C50, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF044[])(LocalMapObject *) = {
    sub_02066C84, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF038[])(LocalMapObject *) = {
    sub_02066CB8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF014[])(LocalMapObject *) = {
    sub_02066CE8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF020[])(LocalMapObject *) = {
    sub_0206621C, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF17C[])(LocalMapObject *) = {
    sub_02066240, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF1A0[])(LocalMapObject *) = {
    sub_02066264, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF44C[])(LocalMapObject *) = {
    sub_02066288, sub_02065EA0, sub_02065924,
};

int(*const Unk_020EF5CC[])(LocalMapObject *) = {
    sub_02066D18, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFF0[])(LocalMapObject *) = {
    sub_02066D4C, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFE4[])(LocalMapObject *) = {
    sub_02066D80, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFD8[])(LocalMapObject *) = {
    sub_02066DB4, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFCC[])(LocalMapObject *) = {
    sub_02066DE8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFC0[])(LocalMapObject *) = {
    sub_02066E1C, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFB4[])(LocalMapObject *) = {
    sub_02066E50, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEFA8[])(LocalMapObject *) = {
    sub_02066E84, sub_020668EC, sub_02065924,
};

int(*const Unk_020EF0B0[])(LocalMapObject *) = {
    sub_02066EB8, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEF90[])(LocalMapObject *) = {
    sub_02066EEC, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEF84[])(LocalMapObject *) = {
    sub_02066F20, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEF6C[])(LocalMapObject *) = {
    sub_02066F54, sub_020668EC, sub_02065924,
};

int(*const Unk_020EEF78[])(LocalMapObject *) = {
    sub_020671F0, sub_02067068, sub_02065924,
};

int(*const Unk_020EF008[])(LocalMapObject *) = {
    sub_02067214, sub_02067068, sub_02065924,
};

int(*const Unk_020EF02C[])(LocalMapObject *) = {
    sub_0206723C, sub_02067068, sub_02065924,
};

int(*const Unk_020EF1AC[])(LocalMapObject *) = {
    sub_02067260, sub_02067068, sub_02065924,
};

int(*const Unk_020EF5D8[])(LocalMapObject *) = {
    sub_02067288, sub_02067068, sub_02065924,
};

int(*const Unk_020EECBC[])(LocalMapObject *) = {
    sub_020672AC, sub_02067068, sub_02065924,
};

int(*const Unk_020EECB0[])(LocalMapObject *) = {
    sub_020672D4, sub_02067068, sub_02065924,
};

int(*const Unk_020EECA4[])(LocalMapObject *) = {
    sub_020672FC, sub_02067068, sub_02065924,
};

int(*const Unk_020EEF9C[])(LocalMapObject *) = {
    sub_02067320, sub_02067068, sub_02065924,
};

int(*const Unk_020EEF60[])(LocalMapObject *) = {
    sub_02067344, sub_02067068, sub_02065924,
};

int(*const Unk_020EEFFC[])(LocalMapObject *) = {
    sub_0206736C, sub_02067068, sub_02065924,
};

int(*const Unk_020EF170[])(LocalMapObject *) = {
    sub_02067394, sub_02067068, sub_02065924,
};

int(*const Unk_020EF5E4[])(LocalMapObject *) = {
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
