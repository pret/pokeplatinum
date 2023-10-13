#include <nitro.h>
#include <string.h>

#include "struct_decls/sys_task.h"

#include "struct_defs/struct_020032D0.h"
#include "struct_defs/struct_0200330C.h"

#include "unk_02002F38.h"
#include "unk_02006E3C.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_020241F0.h"

typedef struct UnkStruct_02002F38_t {
    UnkStruct_020032D0 unk_00[14];
    u16 unk_118_0 : 2;
    u16 unk_118_2 : 14;
    u16 unk_11A_0 : 14;
    u16 unk_11A_14 : 1;
    u16 unk_11A_15 : 1;
    u8 unk_11C;
    u8 unk_11D[3];
} UnkStruct_02002F38;

typedef struct {
    u16 unk_00_0 : 5;
    u16 unk_00_5 : 5;
    u16 unk_00_10 : 5;
    u16 unk_00_15 : 1;
} UnkStruct_0200393C;

static u8 sub_0200327C(u16 param0, u16 param1);
static void sub_02003290(UnkStruct_02002F38 * param0, u16 param1);
static void sub_020032D0(int param0, UnkStruct_020032D0 * param1, u16 * param2);
static void sub_0200330C(UnkStruct_0200330C * param0, u16 param1, s8 param2, u8 param3, u8 param4, u16 param5);
static void sub_020033CC(SysTask * param0, void * param1);
static void sub_02003468(UnkStruct_02002F38 * param0);
static void sub_02003488(UnkStruct_02002F38 * param0);
static void sub_020034A8(UnkStruct_02002F38 * param0, u16 param1, u16 param2);
static void sub_02003504(UnkStruct_02002F38 * param0, u16 param1, u16 param2);
static void sub_02003560(u16 * param0, u16 * param1, UnkStruct_0200330C * param2, u32 param3);
static void sub_020035EC(UnkStruct_02002F38 * param0, u8 param1, UnkStruct_0200330C * param2);

UnkStruct_02002F38 * sub_02002F38 (int param0)
{
    UnkStruct_02002F38 * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_02002F38));
    MI_CpuClear8(v0, sizeof(UnkStruct_02002F38));

    return v0;
}

void sub_02002F54 (UnkStruct_02002F38 * param0)
{
    Heap_FreeToHeap(param0);
}

void sub_02002F5C (UnkStruct_02002F38 * param0, int param1, void * param2, void * param3, u32 param4)
{
    param0->unk_00[param1].unk_00 = (u16 *)param2;
    param0->unk_00[param1].unk_04 = (u16 *)param3;
    param0->unk_00[param1].unk_08 = param4;
}

void sub_02002F70 (UnkStruct_02002F38 * param0, int param1, u32 param2, u32 param3)
{
    void * v0;
    void * v1;

    v0 = Heap_AllocFromHeap(param3, param2);
    v1 = Heap_AllocFromHeap(param3, param2);

    sub_02002F5C(param0, param1, v0, v1, param2);
}

void sub_02002FA0 (UnkStruct_02002F38 * param0, int param1)
{
    Heap_FreeToHeap(param0->unk_00[param1].unk_00);
    Heap_FreeToHeap(param0->unk_00[param1].unk_04);
}

void sub_02002FBC (UnkStruct_02002F38 * param0, const void * param1, int param2, u16 param3, u16 param4)
{
    MI_CpuCopy16(param1, (void *)&param0->unk_00[param2].unk_00[param3], (u32)param4);
    MI_CpuCopy16(param1, (void *)&param0->unk_00[param2].unk_04[param3], (u32)param4);
}

void sub_02002FEC (UnkStruct_02002F38 * param0, u32 param1, u32 param2, u32 param3, int param4, u32 param5, u16 param6, u16 param7)
{
    NNSG2dPaletteData * v0;
    void * v1;

    v1 = sub_02006F88(param1, param2, &v0, param3);
    GF_ASSERT(v1 != NULL);

    if (param5 == 0) {
        param5 = v0->szByte;
    }

    GF_ASSERT(param6 * sizeof(param6) + param5 <= param0->unk_00[param4].unk_08);

    sub_02002FBC(param0, &(((u16 *)(v0->pRawData))[param7]), param4, param6, param5);
    Heap_FreeToHeap(v1);
}

void sub_02003050 (UnkStruct_02002F38 * param0, u32 param1, u32 param2, u32 param3, int param4, u32 param5, u16 param6)
{
    sub_02002FEC(param0, param1, param2, param3, param4, param5, param6, 0);
}

void sub_02003070 (UnkStruct_02002F38 * param0, int param1, u16 param2, u32 param3)
{
    u16 * v0;

    GF_ASSERT(param2 * sizeof(param2) + param3 <= param0->unk_00[param1].unk_08);

    switch (param1) {
    case 0:
        v0 = (u16 *)sub_020241F0();
        break;
    case 1:
        v0 = (u16 *)sub_02024200();
        break;
    case 2:
        v0 = (u16 *)sub_02024210();
        break;
    case 3:
        v0 = (u16 *)sub_02024218();
        break;
    default:
        GF_ASSERT(FALSE);
        return;
    }

    sub_02002FBC(param0, &v0[param2], param1, param2, param3);
}

void sub_020030E4 (u32 param0, u32 param1, u32 param2, u32 param3, u16 param4, void * param5)
{
    NNSG2dPaletteData * v0;
    void * v1;

    v1 = sub_02006F88(param0, param1, &v0, param2);
    GF_ASSERT(v1 != NULL);

    if (param3 == 0) {
        param3 = v0->szByte;
    }

    MI_CpuCopy16(&(((u16 *)(v0->pRawData))[param4]), param5, param3);
    Heap_FreeToHeap(v1);
}

void sub_02003120 (UnkStruct_02002F38 * param0, int param1, u16 param2, int param3, u16 param4, u16 param5)
{
    MI_CpuCopy16((void *)&param0->unk_00[param1].unk_00[param2], (void *)&param0->unk_00[param3].unk_00[param4], param5);
    MI_CpuCopy16((void *)&param0->unk_00[param1].unk_00[param2], (void *)&param0->unk_00[param3].unk_04[param4], param5);
}

u16 * sub_02003164 (UnkStruct_02002F38 * param0, int param1)
{
    return param0->unk_00[param1].unk_00;
}

u16 * sub_0200316C (UnkStruct_02002F38 * param0, int param1)
{
    return param0->unk_00[param1].unk_04;
}

u8 sub_02003178 (UnkStruct_02002F38 * param0, u16 param1, u16 param2, s8 param3, u8 param4, u8 param5, u16 param6)
{
    u16 v0;
    u8 v1;
    u8 v2;

    v0 = param2;
    v1 = 0;

    for (v2 = 0; v2 < (4 + 10); v2++) {
        if ((sub_0200327C(param1, v2) == 1) && (sub_0200327C(param0->unk_118_2, v2) == 0)) {
            sub_020032D0(v2, &param0->unk_00[v2], &param2);
            sub_0200330C(&param0->unk_00[v2].unk_0C, param2, param3, param4, param5, param6);
            sub_02003290(param0, v2);

            if (v2 >= 4) {
                sub_02003504(param0, v2, 256);
            } else {
                sub_02003504(param0, v2, 16);
            }

            param2 = v0;
            v1 = 1;
        }
    }

    if (v1 == 1) {
        param0->unk_118_2 |= param1;

        if (param0->unk_11A_14 == 0) {
            param0->unk_11A_14 = 1;
            param0->unk_118_0 = 1;
            param0->unk_11C = 0;

            SysTask_Start(sub_020033CC, param0, (0xffffffff - 1));
        }
    }

    return v1;
}

static u8 sub_0200327C (u16 param0, u16 param1)
{
    if ((param0 & (1 << param1)) != 0) {
        return 1;
    }

    return 0;
}

static void sub_02003290 (UnkStruct_02002F38 * param0, u16 param1)
{
    if (sub_0200327C(param0->unk_11A_0, param1) == 1) {
        return;
    }

    param0->unk_11A_0 |= (1 << param1);
}

static void sub_020032D0 (int param0, UnkStruct_020032D0 * param1, u16 * param2)
{
    u16 v0;
    u8 v1, v2;

    if (param0 < 4) {
        v2 = param1->unk_08 / 32;
    } else {
        v2 = param1->unk_08 / 512;
    }

    v0 = 0;

    for (v1 = 0; v1 < v2; v1++) {
        v0 += (1 << v1);
    }

    *param2 &= v0;
}

static void sub_0200330C (UnkStruct_0200330C * param0, u16 param1, s8 param2, u8 param3, u8 param4, u16 param5)
{
    if (param2 < 0) {
        param0->unk_06_0 = 2 + abs(param2);
        param0->unk_02_0 = 0;
    } else {
        param0->unk_06_0 = 2;
        param0->unk_02_0 = param2;
    }

    param0->unk_00 = param1;
    param0->unk_02_6 = param3;
    param0->unk_02_11 = param4;
    param0->unk_04_0 = param5;
    param0->unk_06_4 = param0->unk_02_0;

    if (param3 < param4) {
        param0->unk_04_15 = 0;
    } else {
        param0->unk_04_15 = 1;
    }
}

static void sub_020033CC (SysTask * param0, void * param1)
{
    UnkStruct_02002F38 * v0 = param1;

    if (v0->unk_11C == 1) {
        v0->unk_11C = 0;
        v0->unk_11A_0 = 0;
        v0->unk_118_2 = 0;
        v0->unk_11A_14 = 0;
        sub_0200DA58(param0);
        return;
    }

    if (v0->unk_118_0 != 1) {
        return;
    }

    v0->unk_11A_0 = v0->unk_118_2;

    sub_02003468(v0);
    sub_02003488(v0);

    if (v0->unk_118_2 == 0) {
        v0->unk_11A_14 = 0;
        sub_0200DA58(param0);
    }
}

static void sub_02003468 (UnkStruct_02002F38 * param0)
{
    u8 v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        sub_020034A8(param0, v0, 16);
    }
}

static void sub_02003488 (UnkStruct_02002F38 * param0)
{
    u8 v0, v1;

    for (v0 = 4; v0 < (4 + 10); v0++) {
        sub_020034A8(param0, v0, 256);
    }
}

static void sub_020034A8 (UnkStruct_02002F38 * param0, u16 param1, u16 param2)
{
    if (sub_0200327C(param0->unk_118_2, param1) == 0) {
        return;
    }

    if (param0->unk_00[param1].unk_0C.unk_06_4 < param0->unk_00[param1].unk_0C.unk_02_0) {
        param0->unk_00[param1].unk_0C.unk_06_4++;
        return;
    } else {
        param0->unk_00[param1].unk_0C.unk_06_4 = 0;
    }

    sub_02003504(param0, param1, param2);
}

static void sub_02003504 (UnkStruct_02002F38 * param0, u16 param1, u16 param2)
{
    u32 v0;

    for (v0 = 0; v0 < 16; v0++) {
        if (sub_0200327C(param0->unk_00[param1].unk_0C.unk_00, v0) == 0) {
            continue;
        }

        sub_02003560(&param0->unk_00[param1].unk_00[v0 * param2], &param0->unk_00[param1].unk_04[v0 * param2], &param0->unk_00[param1].unk_0C, param2);
    }

    sub_020035EC(param0, param1, &param0->unk_00[param1].unk_0C);
}

static void sub_02003560 (u16 * param0, u16 * param1, UnkStruct_0200330C * param2, u32 param3)
{
    u32 v0;
    u8 v1, v2, v3;

    for (v0 = 0; v0 < param3; v0++) {
        v1 = ((param0[v0] & 0x1f) + (((param2->unk_04_0 & 0x1f) - (param0[v0] & 0x1f)) * param2->unk_02_6 >> 4));
        v2 = (((param0[v0] >> 5) & 0x1f) + ((((param2->unk_04_0 >> 5) & 0x1f) - ((param0[v0] >> 5) & 0x1f)) * param2->unk_02_6 >> 4));
        v3 = (((param0[v0] >> 10) & 0x1f) + ((((param2->unk_04_0 >> 10) & 0x1f) - ((param0[v0] >> 10) & 0x1f)) * param2->unk_02_6 >> 4));

        param1[v0] = (v3 << 10) | (v2 << 5) | v1;
    }
}

static void sub_020035EC (UnkStruct_02002F38 * param0, u8 param1, UnkStruct_0200330C * param2)
{
    s16 v0;

    if (param2->unk_02_6 == param2->unk_02_11) {
        if ((param0->unk_118_2 & (1 << param1)) != 0) {
            param0->unk_118_2 ^= (1 << param1);
        }
    } else if (param2->unk_04_15 == 0) {
        v0 = param2->unk_02_6;
        v0 += param2->unk_06_0;

        if (v0 > param2->unk_02_11) {
            v0 = param2->unk_02_11;
        }

        param2->unk_02_6 = v0;
    } else {
        v0 = param2->unk_02_6;
        v0 -= param2->unk_06_0;

        if (v0 < param2->unk_02_11) {
            v0 = param2->unk_02_11;
        }

        param2->unk_02_6 = v0;
    }
}

void sub_02003694 (UnkStruct_02002F38 * param0)
{
    if ((param0->unk_11A_15 == 0) && (param0->unk_118_0 != 1)) {
        return;
    }

    {
        int v0;

        for (v0 = 0; v0 < (4 + 10); v0++) {
            if (param0->unk_11A_15 == 0) {
                if ((param0->unk_00[v0].unk_04 == NULL) || (sub_0200327C(param0->unk_11A_0, v0) == 0)) {
                    continue;
                }
            }

            DC_FlushRange((void *)param0->unk_00[v0].unk_04, param0->unk_00[v0].unk_08);

            switch (v0) {
            case 0:
                GX_LoadBGPltt((const void *)param0->unk_00[v0].unk_04, 0, param0->unk_00[v0].unk_08);
                break;
            case 1:
                GXS_LoadBGPltt((const void *)param0->unk_00[v0].unk_04, 0, param0->unk_00[v0].unk_08);
                break;
            case 2:
                GX_LoadOBJPltt((const void *)param0->unk_00[v0].unk_04, 0, param0->unk_00[v0].unk_08);
                break;
            case 3:
                GXS_LoadOBJPltt((const void *)param0->unk_00[v0].unk_04, 0, param0->unk_00[v0].unk_08);
                break;
            case 4:
                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt((const void *)param0->unk_00[v0].unk_04, 0x0, param0->unk_00[v0].unk_08);
                GX_EndLoadBGExtPltt();
                break;
            case 5:
                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt((const void *)param0->unk_00[v0].unk_04, 0x2000, param0->unk_00[v0].unk_08);
                GX_EndLoadBGExtPltt();
                break;
            case 6:
                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt((const void *)param0->unk_00[v0].unk_04, 0x4000, param0->unk_00[v0].unk_08);
                GX_EndLoadBGExtPltt();
                break;
            case 7:
                GX_BeginLoadBGExtPltt();
                GX_LoadBGExtPltt((const void *)param0->unk_00[v0].unk_04, 0x6000, param0->unk_00[v0].unk_08);
                GX_EndLoadBGExtPltt();
                break;
            case 8:
                GXS_BeginLoadBGExtPltt();
                GXS_LoadBGExtPltt((const void *)param0->unk_00[v0].unk_04, 0x0, param0->unk_00[v0].unk_08);
                GXS_EndLoadBGExtPltt();
                break;
            case 9:
                GXS_BeginLoadBGExtPltt();
                GXS_LoadBGExtPltt((const void *)param0->unk_00[v0].unk_04, 0x2000, param0->unk_00[v0].unk_08);
                GXS_EndLoadBGExtPltt();
                break;
            case 10:
                GXS_BeginLoadBGExtPltt();
                GXS_LoadBGExtPltt((const void *)param0->unk_00[v0].unk_04, 0x4000, param0->unk_00[v0].unk_08);
                GXS_EndLoadBGExtPltt();
                break;
            case 11:
                GXS_BeginLoadBGExtPltt();
                GXS_LoadBGExtPltt((const void *)param0->unk_00[v0].unk_04, 0x6000, param0->unk_00[v0].unk_08);
                GXS_EndLoadBGExtPltt();
                break;
            case 12:
                GX_BeginLoadOBJExtPltt();
                GX_LoadOBJExtPltt((const void *)param0->unk_00[v0].unk_04, 0, param0->unk_00[v0].unk_08);
                GX_EndLoadOBJExtPltt();
                break;
            case 13:
                GXS_BeginLoadOBJExtPltt();
                GXS_LoadOBJExtPltt((const void *)param0->unk_00[v0].unk_04, 0, param0->unk_00[v0].unk_08);
                GXS_EndLoadOBJExtPltt();
            }
        }
    }

    param0->unk_11A_0 = param0->unk_118_2;

    if (param0->unk_11A_0 == 0) {
        param0->unk_118_0 = 0;
    }
}

u16 sub_0200384C (UnkStruct_02002F38 * param0)
{
    return param0->unk_118_2;
}

void sub_02003858 (UnkStruct_02002F38 * param0, int param1)
{
    param0->unk_11A_15 = param1;
}

void sub_0200387C (UnkStruct_02002F38 * param0, u8 param1)
{
    param0->unk_118_0 = param1 & 0x1;
    param0->unk_118_2 = 0xFFFFFFFF;
}

void sub_020038B0 (UnkStruct_02002F38 * param0, int param1, int param2, u16 param3, u16 param4, u16 param5)
{
    GF_ASSERT(param5 * sizeof(u16) <= param0->unk_00[param1].unk_08);

    if ((param2 == 1) || (param2 == 2)) {
        MI_CpuFill16(&param0->unk_00[param1].unk_00[param4], param3, (param5 - param4) * 2);
    }

    if ((param2 == 0) || (param2 == 2)) {
        MI_CpuFill16(&param0->unk_00[param1].unk_04[param4], param3, (param5 - param4) * 2);
    }
}

u16 sub_02003910 (UnkStruct_02002F38 * param0, int param1, int param2, u16 param3)
{
    if (param2 == 1) {
        return param0->unk_00[param1].unk_00[param3];
    }

    if (param2 == 0) {
        return param0->unk_00[param1].unk_04[param3];
    }

    GF_ASSERT(FALSE);
    return 0;
}

void sub_0200393C (const u16 * param0, u16 * param1, u16 param2, u8 param3, u16 param4)
{
    u16 v0;
    int v1, v2, v3;
    int v4, v5, v6;

    v4 = ((UnkStruct_0200393C *)&param4)->unk_00_0;
    v5 = ((UnkStruct_0200393C *)&param4)->unk_00_5;
    v6 = ((UnkStruct_0200393C *)&param4)->unk_00_10;

    for (v0 = 0; v0 < param2; v0++) {
        v1 = ((UnkStruct_0200393C *)&param0[v0])->unk_00_0;
        v2 = ((UnkStruct_0200393C *)&param0[v0])->unk_00_5;
        v3 = ((UnkStruct_0200393C *)&param0[v0])->unk_00_10;

        param1[v0] = (v1 + ((v4 - v1) * param3 >> 4)) | ((v2 + ((v5 - v2) * param3 >> 4)) << 5) | ((v3 + ((v6 - v3) * param3 >> 4)) << 10);
    }
}

void sub_020039B0 (UnkStruct_02002F38 * param0, int param1, u16 param2, u16 param3, u8 param4, u16 param5)
{
    GF_ASSERT(param0->unk_00[param1].unk_00 != NULL && param0->unk_00[param1].unk_04 != NULL);
    sub_0200393C(&param0->unk_00[param1].unk_00[param2], &param0->unk_00[param1].unk_04[param2], param3, param4, param5);
}

void sub_020039F8 (const u16 * param0, u16 * param1, u16 param2, u8 param3, u16 param4)
{
    int v0 = 0;

    while (param2) {
        if (param2 & 1) {
            sub_0200393C(&param0[v0], &param1[v0], 16, param3, param4);
        }

        param2 >>= 1;
        v0 += 16;
    }
}

void sub_02003A2C (UnkStruct_02002F38 * param0, int param1, u16 param2, u8 param3, u16 param4)
{
    int v0 = 0;

    GF_ASSERT(param0->unk_00[param1].unk_00 != NULL && param0->unk_00[param1].unk_04 != NULL);

    while (param2) {
        if (param2 & 1) {
            sub_020039B0(param0, param1, v0, 16, param3, param4);
        }

        param2 >>= 1;
        v0 += 16;
    }
}

void sub_02003A8C (u16 * param0, int param1, int param2, int param3, int param4)
{
    int v0, v1, v2, v3;
    u32 v4;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ((*param0) & 0x1f);
        v2 = (((*param0) >> 5) & 0x1f);
        v3 = (((*param0) >> 10) & 0x1f);

        v4 = (((v1) * 76 + (v2) * 151 + (v3) * 29) >> 8);

        v1 = ((u16)((param2) * (v4)) >> 8);
        v2 = ((u16)((param3) * (v4)) >> 8);
        v3 = ((u16)((param4) * (v4)) >> 8);

        if (v1 > 31) {
            v1 = 31;
        }

        if (v2 > 31) {
            v2 = 31;
        }

        if (v3 > 31) {
            v3 = 31;
        }

        *param0 = (u16)((v3 << 10) | (v2 << 5) | v1);
        param0++;
    }
}

void sub_02003B08 (UnkStruct_02002F38 * param0, u32 param1, u32 param2, u32 param3, int param4, u32 param5, u16 param6, int param7, int param8, int param9)
{
    NNSG2dPaletteData * v0;
    void * v1;

    v1 = sub_02006F88(param1, param2, &v0, param3);
    GF_ASSERT(v1 != NULL);

    if (param5 == 0) {
        param5 = v0->szByte;
    }

    sub_02003A8C(v0->pRawData, 16, param7, param8, param9);
    sub_02002FBC(param0, v0->pRawData, param4, param6, param5);
    Heap_FreeToHeap(v1);
}
