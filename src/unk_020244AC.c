#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_0202783C_decl.h"

#include "constdata/const_020E5830.h"
#include "constdata/const_020E5894.h"
#include "constdata/const_020E5834.h"
#include "constdata/const_020E582C.h"

#include "struct_defs/struct_020251A4.h"
#include "struct_defs/struct_02025340.h"

#include "unk_02017728.h"
#include "heap.h"
#include "unk_0201D15C.h"
#include "unk_020244AC.h"
#include "unk_020277A4.h"
#include "unk_0209A74C.h"
#include "unk_0209AA74.h"

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u8 unk_10;
    u16 unk_12;
} UnkStruct_02024920;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_02025258;

typedef struct {
    int unk_00;
    u32 unk_04;
    u32 unk_08;
    u16 unk_0C;
    u16 unk_0E;
} UnkStruct_020251DC;

typedef struct {
    u8 unk_00[131072];
} UnkStruct_020252EC;

typedef struct {
    BOOL unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    s32 unk_10;
    int unk_14;
    u32 unk_18;
    u32 unk_1C[2];
    volatile BOOL unk_24;
} UnkStruct_020250DC;

typedef struct SaveData {
    BOOL unk_00;
    BOOL unk_04;
    BOOL unk_08;
    BOOL unk_0C;
    u32 unk_10;
    UnkStruct_020252EC unk_14;
    u32 unk_20014;
    u32 unk_20018[2];
    u8 unk_20020[2];
    UnkStruct_020251DC unk_20024[38];
    UnkStruct_02025258 unk_20284[2];
    UnkStruct_020250DC unk_2029C;
    int unk_202C4;
    u32 unk_202C8;
} SaveData;

typedef struct {
    BOOL unk_00;
    u32 unk_04;
    u32 unk_08;
} UnkStruct_02024860;

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u16 unk_0C;
    u16 unk_0E;
} UnkStruct_020253B4;

static void sub_020252EC(UnkStruct_020252EC * param0, const UnkStruct_020251DC * param1);
static void sub_020251DC(UnkStruct_020251DC * param0);
static void sub_02025258(UnkStruct_02025258 * param0, const UnkStruct_020251DC * param1);
static BOOL sub_0202513C(SaveData * param0);
static BOOL sub_02024DBC(SaveData * param0);
static int sub_02024ABC(SaveData * param0);
static void sub_02024CD4(SaveData * param0, int * param1, int * param2);
static void sub_02024EC8(SaveData * param0, UnkStruct_020250DC * param1, int param2);
static int sub_02024F44(SaveData * param0, UnkStruct_020250DC * param1);
static void sub_0202506C(SaveData * param0, UnkStruct_020250DC * param1, int param2);
static void sub_020250DC(SaveData * param0, UnkStruct_020250DC * param1);
static BOOL sub_0202516C(const SaveData * param0, int param1, int param2);
static s32 sub_02025B3C(u32 param0, void * param1, u32 param2);
static BOOL sub_02025BB8(s32 param0, BOOL param1, BOOL * param2);
static void sub_02025C1C(s32 param0, int param1);
static void sub_020259F8(SaveData * param0, int param1, u32 * param2, u32 * param3, u8 * param4);
static void sub_02025A18(SaveData * param0, int param1, u32 param2, u32 param3, u8 param4);

static SaveData * Unk_021C0794 = NULL;

SaveData * sub_020244AC (void)
{
    SaveData * v0;
    int v1;

    v0 = Heap_AllocFromHeap(1, sizeof(SaveData));
    MI_CpuClearFast(v0, sizeof(SaveData));

    Unk_021C0794 = v0;

    v0->unk_00 = sub_02025A3C();
    v0->unk_04 = 0;
    v0->unk_08 = 1;
    v0->unk_0C = 1;

    sub_020251DC(v0->unk_20024);
    sub_02025258(v0->unk_20284, v0->unk_20024);

    MI_CpuClearFast(v0->unk_20018, sizeof(v0->unk_20018));

    v1 = sub_02024ABC(v0);
    v0->unk_10 = 0;

    switch (v1) {
    case 1:
        v0->unk_0C = 0;
    case 2:
        sub_02024DBC(v0);

        v0->unk_04 = 1;
        v0->unk_08 = 0;

        if (v1 == 2) {
            v0->unk_10 |= (1 << 0);
        }

        {
            int v2, v3;

            sub_02024CD4(v0, &v2, &v3);

            if (v2 == 3) {
                v0->unk_10 |= (1 << 3);
            } else if (v2 == 2) {
                v0->unk_10 |= (1 << 2);
            }

            if (v3 == 3) {
                v0->unk_10 |= (1 << 5);
            } else if (v3 == 2) {
                v0->unk_10 |= (1 << 4);
            }
        }
        break;
    case 3:
        v0->unk_10 |= (1 << 1);
    case 0:
        sub_0202479C(v0);
        break;
    }

    return v0;
}

SaveData * sub_020245A4 (void)
{
    GF_ASSERT(Unk_021C0794 != NULL);
    return Unk_021C0794;
}

void * sub_020245BC (SaveData * param0, int param1)
{
    GF_ASSERT(param1 < 38);
    return &(param0->unk_14.unk_00[param0->unk_20024[param1].unk_08]);
}

const void * sub_020245E0 (const SaveData * param0, int param1)
{
    return sub_020245BC((SaveData *)param0, param1);
}

BOOL sub_020245E8 (SaveData * param0)
{
    int v0, v1;
    u8 * v2 = Heap_AllocFromHeapAtEnd(3, 0x1000);

    sub_02017B7C(1);

    sub_0202516C(param0, 0, !param0->unk_20020[0]);
    sub_0202516C(param0, 1, !param0->unk_20020[1]);
    sub_0202516C(param0, 0, param0->unk_20020[0]);
    sub_0202516C(param0, 1, param0->unk_20020[1]);

    MI_CpuFillFast(v2, 0xffffffff, 0x1000);

    for (v0 = 0; v0 < 32 * 2; v0++) {
        sub_02025A9C(0x1000 * (v0 + 0), v2, 0x1000);
        sub_02025A9C(0x1000 * (v0 + 64), v2, 0x1000);
    }

    Heap_FreeToHeap(v2);
    sub_0202479C(param0);

    param0->unk_04 = 0;
    sub_02017B8C(1);

    return 1;
}

BOOL sub_020246A8 (SaveData * param0)
{
    BOOL v0;

    if (!param0->unk_00) {
        return 0;
    }

    v0 = sub_02024DBC(param0);

    if (v0) {
        param0->unk_04 = 1;
        param0->unk_08 = 0;

        {
            int v1, v2;

            sub_02024CD4(param0, &v1, &v2);
        }

        return 1;
    } else {
        return 0;
    }
}

int sub_020246E0 (SaveData * param0)
{
    int v0;

    if (!param0->unk_00) {
        return 3;
    }

    if (param0->unk_08) {
        sub_02017B7C(1);

        sub_0202516C(param0, 0, !param0->unk_20020[0]);
        sub_0202516C(param0, 1, !param0->unk_20020[1]);
        sub_0202516C(param0, 0, param0->unk_20020[0]);
        sub_0202516C(param0, 1, param0->unk_20020[1]);

        sub_02017B8C(1);
    }

    v0 = sub_0202513C(param0);

    if (v0 == 2) {
        param0->unk_04 = 1;
        param0->unk_08 = 0;
    }

    return v0;
}

int sub_02024760 (SaveData * param0, int param1)
{
    int v0;

    GF_ASSERT(param1 < 2);
    GF_ASSERT(param0->unk_08 == 0);
    GF_ASSERT(param0->unk_04 == 1);

    sub_02024814(param0, param1);

    do {
        v0 = sub_02024828(param0);
    } while (v0 == 0 || v0 == 1);

    return v0;
}

void sub_0202479C (SaveData * param0)
{
    param0->unk_08 = 1;
    param0->unk_0C = 1;

    sub_020252EC(&param0->unk_14, param0->unk_20024);
}

BOOL sub_020247B8 (const SaveData * param0)
{
    return param0->unk_00;
}

u32 sub_020247BC (const SaveData * param0)
{
    return param0->unk_10;
}

BOOL sub_020247C0 (const SaveData * param0)
{
    return param0->unk_04;
}

BOOL sub_020247C4 (const SaveData * param0)
{
    return param0->unk_08;
}

BOOL sub_020247C8 (SaveData * param0)
{
    UnkStruct_0202783C * v0;

    v0 = sub_0202783C(param0);
    return sub_020278CC(v0);
}

static void sub_020247D4 (SaveData * param0)
{
    UnkStruct_0202783C * v0;

    v0 = sub_0202783C(param0);
    sub_020278B8(v0);
}

BOOL sub_020247E0 (const SaveData * param0)
{
    if (sub_020247C4(param0) && sub_020247C0(param0)) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_02024800 (const SaveData * param0)
{
    return param0->unk_0C;
}

void sub_02024804 (void)
{
    Unk_021C0794->unk_0C = 1;
}

void sub_02024814 (SaveData * param0, int param1)
{
    sub_02024EC8(param0, &param0->unk_2029C, param1);
}

int sub_02024828 (SaveData * param0)
{
    int v0;

    v0 = sub_02024F44(param0, &param0->unk_2029C);

    if ((v0 != 0) && (v0 != 1)) {
        sub_0202506C(param0, &param0->unk_2029C, v0);
    }

    return v0;
}

void sub_02024850 (SaveData * param0)
{
    sub_020250DC(param0, &param0->unk_2029C);
}

static void sub_02024860 (UnkStruct_02024860 * param0)
{
    param0->unk_00 = 0;
    param0->unk_04 = 0;
    param0->unk_08 = 0;
}

u16 sub_0202486C (const SaveData * param0, const void * param1, u32 param2)
{
    return sub_0201D628(param1, param2);
}

static u16 sub_02024878 (const SaveData * param0, void * param1, u32 param2)
{
    return sub_0201D628(param1, param2 - sizeof(UnkStruct_02024920));
}

static u32 sub_02024888 (int param0, const UnkStruct_02025258 * param1)
{
    u32 v0;

    if (param0 == 0) {
        v0 = 0 * 0x1000;
    } else {
        v0 = 64 * 0x1000;
    }

    v0 += param1->unk_04;
    return v0;
}

static UnkStruct_02024920 * sub_0202489C (SaveData * param0, u32 param1, int param2)
{
    u32 v0;
    const UnkStruct_02025258 * v1 = &param0->unk_20284[param2];

    v0 = param1 + v1->unk_04;
    GF_ASSERT(v1->unk_08);

    v0 += v1->unk_08;
    v0 -= sizeof(UnkStruct_02024920);

    return (UnkStruct_02024920 *)v0;
}

static BOOL sub_020248C4 (SaveData * param0, u32 param1, int param2)
{
    const UnkStruct_02025258 * v0 = &param0->unk_20284[param2];
    UnkStruct_02024920 * v1 = sub_0202489C(param0, param1, param2);
    u32 v2 = param1 + v0->unk_04;

    if (v1->unk_08 != v0->unk_08) {
        return 0;
    }

    if (v1->unk_0C != 0x20060623) {
        return 0;
    }

    if (v1->unk_10 != param2) {
        return 0;
    }

    if (v1->unk_12 != sub_02024878(param0, (void *)v2, v0->unk_08)) {
        return 0;
    }

    return 1;
}

static void sub_02024920 (UnkStruct_02024860 * param0, SaveData * param1, u32 param2, int param3)
{
    UnkStruct_02024920 * v0 = sub_0202489C(param1, param2, param3);

    param0->unk_00 = sub_020248C4(param1, param2, param3);
    param0->unk_04 = v0->unk_00;
    param0->unk_08 = v0->unk_04;
}

static void sub_0202494C (SaveData * param0, u32 param1, int param2)
{
    const UnkStruct_02025258 * v0 = &param0->unk_20284[param2];
    UnkStruct_02024920 * v1 = sub_0202489C(param0, param1, param2);
    u32 v2 = param1 + v0->unk_04;

    v1->unk_00 = param0->unk_20014;
    v1->unk_04 = param0->unk_20018[param2];
    v1->unk_08 = v0->unk_08;
    v1->unk_0C = 0x20060623;
    v1->unk_10 = param2;
    v1->unk_12 = sub_02024878(param0, (void *)v2, v0->unk_08);
}

static int sub_0202499C (u32 param0, u32 param1)
{
    if ((param0 == 0xffffffff) && (param1 == 0)) {
        return -1;
    } else if ((param0 == 0) && (param1 == 0xffffffff)) {
        return 1;
    } else if (param0 > param1) {
        return 1;
    } else if (param0 < param1) {
        return -1;
    }

    return 0;
}

static int sub_020249D4 (const UnkStruct_02024860 * param0, const UnkStruct_02024860 * param1, int * param2, int * param3)
{
    int v0, v1;

    v0 = sub_0202499C(param0->unk_04, param1->unk_04);
    v1 = sub_0202499C(param0->unk_08, param1->unk_08);

    if (param0->unk_00 && param1->unk_00) {
        if (v0 > 0) {
            GF_ASSERT(v1 > 0);
            *param2 = 0;
            *param3 = 1;
        } else if (v0 < 0) {
            GF_ASSERT(v1 < 0);
            *param2 = 1;
            *param3 = 0;
        } else if (v1 > 0) {
            *param2 = 0;
            *param3 = 1;
        } else if (v1 < 0) {
            *param2 = 1;
            *param3 = 0;
        } else {
            *param2 = 0;
            *param3 = 1;
        }

        return 2;
    } else if (param0->unk_00 && !param1->unk_00) {
        *param2 = 0;
        *param3 = 2;
        return 1;
    } else if (!param0->unk_00 && param1->unk_00) {
        *param2 = 1;
        *param3 = 2;
        return 1;
    } else {
        *param2 = 2;
        *param3 = 2;
        return 0;
    }
}

static void inline_02024ABC (SaveData * param0, const UnkStruct_02024860 * param1, const UnkStruct_02024860 * param2, int param3, int param4)
{
    param0->unk_20014 = param1[param3].unk_04;
    param0->unk_20018[0] = param1[param3].unk_08;
    param0->unk_20018[1] = param2[param4].unk_08;
    param0->unk_20020[0] = param3;
    param0->unk_20020[1] = param4;
}

static int sub_02024ABC (SaveData * param0)
{
    UnkStruct_02024860 v0[2];
    UnkStruct_02024860 v1[2];
    u8 * v2;
    u8 * v3;
    int v4, v5;
    int v6, v7, v8, v9;

    v2 = Heap_AllocFromHeapAtEnd(3, 0x1000 * 32);
    v3 = Heap_AllocFromHeapAtEnd(3, 0x1000 * 32);

    if (sub_02025AC0(0 * 0x1000, v2, 0x1000 * 32)) {
        sub_02024920(&v0[0], param0, (u32)v2, 0);
        sub_02024920(&v1[0], param0, (u32)v2, 1);
    } else {
        sub_02024860(&v0[0]);
        sub_02024860(&v1[0]);
    }

    if (sub_02025AC0(64 * 0x1000, v3, 0x1000 * 32)) {
        sub_02024920(&v0[1], param0, (u32)v3, 0);
        sub_02024920(&v1[1], param0, (u32)v3, 1);
    } else {
        sub_02024860(&v0[1]);
        sub_02024860(&v1[1]);
    }

    Heap_FreeToHeap(v2);
    Heap_FreeToHeap(v3);

    v4 = sub_020249D4(&v0[0], &v0[1], &v6, &v8);
    v5 = sub_020249D4(&v1[0], &v1[1], &v7, &v9);

    {
    }

    if ((v4 == 0) && (v5 == 0)) {
        return 0;
    }

    if ((v4 == 0) || (v5 == 0)) {
        return 3;
    }

    if ((v4 == 2) && (v5 == 2)) {
        if (v0[v6].unk_04 == v1[v7].unk_04) {
            inline_02024ABC(param0, v0, v1, v6, v7);
            return 1;
        } else {
            inline_02024ABC(param0, v0, v1, v8, v7);
            return 2;
        }
    }

    if ((v4 == 1) && (v5 == 2)) {
        if (v0[v6].unk_04 == v1[v7].unk_04) {
            inline_02024ABC(param0, v0, v1, v6, v7);
            return 2;
        } else if (v0[v6].unk_04 == v1[v9].unk_04) {
            inline_02024ABC(param0, v0, v1, v6, v9);
            return 2;
        }

        return 3;
    }

    if ((v4 == 2) && (v5 == 1)) {
        if (v0[v6].unk_04 == v1[v7].unk_04) {
            inline_02024ABC(param0, v0, v1, v6, v7);
            return 1;
        } else {
            inline_02024ABC(param0, v0, v1, v8, v7);
            return 2;
        }
    }

    if ((v4 == 1) && (v5 == 1) && (v6 == v7)) {
        GF_ASSERT(v0[v6].unk_04 == v1[v7].unk_04);
        inline_02024ABC(param0, v0, v1, v6, v7);
        return 1;
    } else {
        GF_ASSERT(v0[v6].unk_04 == v1[v7].unk_04);
        inline_02024ABC(param0, v0, v1, v6, v7);
        return 2;
    }
}

static void sub_02024CD4 (SaveData * param0, int * param1, int * param2)
{
    void * v0;
    int v1;
    BOOL v2;
    int v3;
    UnkStruct_0202783C * v4 = sub_0202783C(param0);
    u32 v5, v6;
    u8 v7;

    *param1 = 1;
    *param2 = 1;

    if (sub_020247C8(param0) == 0) {
        return;
    }

    sub_020279A8(v4, 1, &v5, &v6, &v7);

    if ((v5 != 0xffffffff) || (v6 != 0xffffffff)) {
        v0 = sub_020257E8(
            param0, 3, 1, &v1, &v2);
        Heap_FreeToHeap(v0);

        if (v1 == 2) {
            *param1 = 3;
        } else if ((v1 == 1) && (v2 == 1)) {
            *param1 = 2;
        }
    }

    for (v3 = 2; v3 <= 5; v3++) {
        sub_020279A8(v4, v3, &v5, &v6, &v7);

        if ((v5 != 0xffffffff) || (v6 != 0xffffffff)) {
            v0 = sub_020257E8(param0, 3, v3, &v1, &v2);
            Heap_FreeToHeap(v0);

            if (v1 == 2) {
                *param2 = 3;
            } else if ((v1 == 1) && (v2 == 1)) {
                if ((*param2) != 3) {
                    *param2 = 2;
                }
            }
        }
    }
}

static BOOL sub_02024DA4 (int param0, const UnkStruct_02025258 * param1, u8 * param2)
{
    u32 v0;

    v0 = sub_02024888(param0, param1);
    param2 += param1->unk_04;

    return sub_02025AC0(v0, param2, param1->unk_08);
}

static BOOL sub_02024DBC (SaveData * param0)
{
    int v0;
    u32 v1;
    const UnkStruct_02025258 * v2 = param0->unk_20284;

    for (v0 = 0; v0 < 2; v0++) {
        if (sub_02024DA4(param0->unk_20020[v0], &param0->unk_20284[v0], param0->unk_14.unk_00) == 0) {
            return 0;
        }

        if (sub_020248C4(param0, (u32)param0->unk_14.unk_00, v0) == 0) {
            return 0;
        }
    }

    for (v0 = 0; v0 < 38; v0++) {
        param0->unk_20024[v0].unk_0C = sub_0201D628(sub_020245BC(param0, v0), param0->unk_20024[v0].unk_04);
    }

    return 1;
}

static s32 sub_02024E30 (SaveData * param0, int param1, u8 param2)
{
    u32 v0;
    BOOL v1;
    u8 * v2;
    const UnkStruct_02025258 * v3 = &param0->unk_20284[param1];

    sub_0202494C(param0, (u32)param0->unk_14.unk_00, param1);

    v0 = sub_02024888(param2, v3);
    v2 = param0->unk_14.unk_00 + v3->unk_04;

    return sub_02025B3C(v0, v2, v3->unk_08 - sizeof(UnkStruct_02024920));
}

static s32 sub_02024E68 (SaveData * param0, int param1, u8 param2)
{
    u32 v0;
    BOOL v1;
    u8 * v2;
    const UnkStruct_02025258 * v3 = &param0->unk_20284[param1];

    v0 = sub_02024888(param2, v3) + v3->unk_08 - sizeof(UnkStruct_02024920);
    v2 = param0->unk_14.unk_00 + v3->unk_04 + v3->unk_08 - sizeof(UnkStruct_02024920);

    return sub_02025B3C(v0, v2, sizeof(UnkStruct_02024920));
}

static s32 sub_02024E98 (SaveData * param0, int param1, u8 param2)
{
    u32 v0;
    BOOL v1;
    u8 * v2;
    const UnkStruct_02025258 * v3 = &param0->unk_20284[param1];

    v0 = sub_02024888(param2, v3) + v3->unk_08 - sizeof(UnkStruct_02024920) + 8;
    v2 = param0->unk_14.unk_00 + v3->unk_04 + v3->unk_08 - sizeof(UnkStruct_02024920) + 8;

    return sub_02025B3C(v0, v2, 8);
}

static void sub_02024EC8 (SaveData * param0, UnkStruct_020250DC * param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        param1->unk_1C[v0] = param0->unk_20018[v0];
        param0->unk_20018[v0]++;
    }

    param1->unk_14 = 0;
    param1->unk_00 = 0;
    param1->unk_24 = 0;

    if (param2 == 2) {
        if (param0->unk_0C) {
            param1->unk_00 = 1;
            param1->unk_18 = param0->unk_20014;
            param0->unk_20014++;

            param1->unk_04 = 0;
            param1->unk_08 = 0;
            param1->unk_0C = 2;
        } else {
            param1->unk_04 = 0;
            param1->unk_08 = 0;
            param1->unk_0C = 0 + 1;
        }
    } else {
        param1->unk_04 = param2;
        param1->unk_08 = param2;
        param1->unk_0C = param2 + 1;
    }

    sub_02017B7C(1);
}

static int sub_02024F44 (SaveData * param0, UnkStruct_020250DC * param1)
{
    BOOL v0;

    switch (param1->unk_14) {
    case 0:
        param1->unk_10 = sub_02024E30(param0, param1->unk_08, !param0->unk_20020[param1->unk_08]);
        param1->unk_24 = 1;
        param1->unk_14++;
    case 1:
        if (sub_02025BB8(param1->unk_10, param1->unk_24, &v0) == 0) {
            break;
        }

        param1->unk_24 = 0;

        if (!v0) {
            return 3;
        }

        param1->unk_14++;
    case 2:
        param1->unk_10 = sub_02024E98(param0, param1->unk_08, !param0->unk_20020[param1->unk_08]);
        param1->unk_24 = 1;
        param1->unk_14++;
    case 3:
        if (sub_02025BB8(param1->unk_10, param1->unk_24, &v0) == 0) {
            break;
        }

        param1->unk_24 = 0;

        if (!v0) {
            return 3;
        }

        param1->unk_14++;

        if (param1->unk_08 + 1 == param1->unk_0C) {
            return 1;
        }
    case 4:
        param1->unk_10 = sub_02024E68(param0, param1->unk_08, !param0->unk_20020[param1->unk_08]);
        param1->unk_24 = 1;
        param1->unk_14++;
    case 5:
        if (sub_02025BB8(param1->unk_10, param1->unk_24, &v0) == 0) {
            break;
        }

        param1->unk_24 = 0;

        if (!v0) {
            return 3;
        }

        param1->unk_08++;

        if (param1->unk_08 == param1->unk_0C) {
            return 2;
        }

        param1->unk_14 = 0;
        break;
    }

    return 0;
}

static void sub_0202506C (SaveData * param0, UnkStruct_020250DC * param1, int param2)
{
    int v0;

    if (param2 == 3) {
        if (param1->unk_00) {
            param0->unk_20014 = param1->unk_18;
        }

        for (v0 = 0; v0 < 2; v0++) {
            param0->unk_20018[v0] = param1->unk_1C[v0];
        }
    } else {
        for (v0 = param1->unk_04; v0 < param1->unk_0C; v0++) {
            param0->unk_20020[v0] = !param0->unk_20020[v0];
        }

        param0->unk_04 = 1;
        param0->unk_08 = 0;
        param0->unk_0C = 0;
    }

    sub_02017B8C(1);
}

static void sub_020250DC (SaveData * param0, UnkStruct_020250DC * param1)
{
    int v0;

    if (param1->unk_00) {
        param0->unk_20014 = param1->unk_18;
    }

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_20018[v0] = param1->unk_1C[v0];
    }

    if (!CARD_TryWaitBackupAsync()) {
        CARD_CancelBackupAsync();
    }

    if (param1->unk_24) {
        CARD_UnlockBackup(param1->unk_10);
        OS_ReleaseLockID(param1->unk_10);
        param1->unk_24 = 0;
    }

    sub_02017B8C(1);
}

BOOL sub_0202513C (SaveData * param0)
{
    int v0;
    UnkStruct_020250DC v1;

    sub_02024EC8(param0, &v1, 2);

    do {
        v0 = sub_02024F44(param0, &v1);
    } while (v0 == 0 || v0 == 1);

    sub_0202506C(param0, &v1, v0);
    return v0;
}

static BOOL sub_0202516C (const SaveData * param0, int param1, int param2)
{
    u32 v0;
    UnkStruct_02024920 v1;
    const UnkStruct_02025258 * v2 = &param0->unk_20284[param1];

    MI_CpuFill8(&v1, 0xff, sizeof(UnkStruct_02024920));
    v0 = sub_02024888(param2, v2) + v2->unk_08 - sizeof(UnkStruct_02024920);

    return sub_02025A9C(v0, &v1, sizeof(UnkStruct_02024920));
}

int sub_020251A4 (int param0)
{
    int v0;
    const UnkStruct_020251A4 * v1 = Unk_020E5894;

    GF_ASSERT(param0 < Unk_020E5830);
    v0 = v1[param0].unk_08();

    v0 += 4 - (v0 % 4);
    v0 += 4;

    return v0;
}

static void sub_020251DC (UnkStruct_020251DC * param0)
{
    const UnkStruct_020251A4 * v0 = Unk_020E5894;
    int v1;
    int v2 = 0;

    GF_ASSERT(Unk_020E5830 == 38);

    for (v1 = 0; v1 < Unk_020E5830; v1++) {
        GF_ASSERT(v0[v1].unk_00 == v1);

        param0[v1].unk_00 = v0[v1].unk_00;
        param0[v1].unk_04 = sub_020251A4(v1);
        param0[v1].unk_08 = v2;
        param0[v1].unk_0C = 0;
        param0[v1].unk_0E = v0[v1].unk_04;

        v2 += param0[v1].unk_04;

        if ((v1 == Unk_020E5830 - 1) || (v0[v1].unk_04 != v0[v1 + 1].unk_04)) {
            v2 += sizeof(UnkStruct_02024920);
        }
    }

    if (v1 % 4 != 0) {
    }

    GF_ASSERT(v2 <= 0x1000 * 32);
}

static void sub_02025258 (UnkStruct_02025258 * param0, const UnkStruct_020251DC * param1)
{
    int v0 = 0;
    int v1, v2;
    int v3, v4;

    v1 = 0;
    v2 = 0;
    v4 = 0;

    for (v3 = 0; v3 < 2; v3++) {
        param0[v3].unk_00 = v3;
        param0[v3].unk_08 = 0;

        for (; param1[v4].unk_0E == v3 && v4 < Unk_020E5830; v4++) {
            param0[v3].unk_08 += param1[v4].unk_04;
        }

        param0[v3].unk_08 += sizeof(UnkStruct_02024920);
        param0[v3].unk_01 = v1;
        param0[v3].unk_04 = v2;
        param0[v3].unk_02 = (param0[v3].unk_08 + 0x1000 - 1) / 0x1000;

        v1 += param0[v3].unk_02;
        v2 += param0[v3].unk_08;
    }

    GF_ASSERT(v1 == param0[2 - 1].unk_01 + param0[2 - 1].unk_02);
    GF_ASSERT(v1 <= 32);
}

static void sub_020252EC (UnkStruct_020252EC * param0, const UnkStruct_020251DC * param1)
{
    const UnkStruct_020251A4 * v0 = Unk_020E5894;
    int v1;
    int v2;
    void * v3;
    u32 v4;

    MI_CpuClearFast(param0->unk_00, sizeof(param0->unk_00));

    for (v1 = 0; v1 < Unk_020E5830; v1++) {
        v4 = param1[v1].unk_08;
        v3 = &param0->unk_00[v4];
        v2 = param1[v1].unk_04;
        MI_CpuClearFast(v3, v2);
        v0[v1].unk_0C(v3);
    }
}

void sub_02025340 (SaveData * param0)
{
    const UnkStruct_02025340 * v0 = Unk_020E5834;
    int v1;
    int v2;
    void * v3;

    if (sub_020247C8(param0) == 1) {
        return;
    }

    for (v1 = 0; v1 < Unk_020E582C; v1++) {
        if (v0[v1].unk_00 == 0) {
            continue;
        }

        v3 = sub_02025680(param0, 3, v0[v1].unk_00, &v2);

        GF_ASSERT(v3 != NULL);
        MI_CpuClear8(v3, v0[v1].unk_08());

        v0[v1].unk_0C(v3);

        sub_02025428(param0, v0[v1].unk_00, v3);
        Heap_FreeToHeap(v3);
    }

    sub_020247D4(param0);
}

static void sub_020253B4 (const SaveData * param0, void * param1, int param2, u32 param3)
{
    UnkStruct_020253B4 * v0;

    v0 = (UnkStruct_020253B4 *)((u8 *)param1 + param3);

    v0->unk_00 = 0x20060623;
    v0->unk_04 = param0->unk_202C8 + 1;
    v0->unk_08 = param3;
    v0->unk_0C = param2;
    v0->unk_0E = sub_0201D628(param1, param3 + sizeof(UnkStruct_020253B4) - 2);
}

static BOOL sub_020253E0 (const SaveData * param0, void * param1, int param2, u32 param3)
{
    const UnkStruct_020253B4 * v0;

    v0 = (const UnkStruct_020253B4 *)((u8 *)param1 + param3);

    if (v0->unk_00 != 0x20060623) {
        return 0;
    }

    if (v0->unk_08 != param3) {
        return 0;
    }

    if (v0->unk_0C != param2) {
        return 0;
    }

    if (v0->unk_0E != sub_0201D628(param1, param3 + sizeof(UnkStruct_020253B4) - 2)) {
        return 0;
    }

    return 1;
}

static u32 sub_02025420 (void * param0, u32 param1)
{
    const UnkStruct_020253B4 * v0 = (const UnkStruct_020253B4 *)((u8 *)param0 + param1);
    return v0->unk_04;
}

int sub_02025428 (const SaveData * param0, int param1, void * param2)
{
    const UnkStruct_02025340 * v0;
    u32 v1;
    BOOL v2;

    sub_02017B7C(1);

    GF_ASSERT(param1 < Unk_020E582C);
    v0 = &Unk_020E5834[param1];

    GF_ASSERT(v0->unk_00 == param1);
    v1 = v0->unk_08() + sizeof(UnkStruct_020253B4);

    if (param0->unk_202C4 == 1) {
        sub_020253B4(param0, param2, param1, v0->unk_08());
        v2 = sub_02025A9C((0 + v0->unk_04) * 0x1000, param2, v1);

        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->unk_08()) == 1);
        sub_020253B4(param0, param2, param1, v0->unk_08());

        v2 |= sub_02025A9C((64 + v0->unk_04) * 0x1000, param2, v1);
        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->unk_08()) == 1);
    } else {
        sub_020253B4(param0, param2, param1, v0->unk_08());
        v2 = sub_02025A9C((64 + v0->unk_04) * 0x1000, param2, v1);

        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->unk_08()) == 1);
        sub_020253B4(param0, param2, param1, v0->unk_08());

        v2 |= sub_02025A9C((0 + v0->unk_04) * 0x1000, param2, v1);
        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->unk_08()) == 1);
    }

    if (v2 == 1) {
        sub_02017B8C(1);
        return 2;
    } else {
        sub_02017B8C(1);
        return 3;
    }
}

int sub_02025574 (SaveData * param0, int param1, void * param2)
{
    const UnkStruct_02025340 * v0;
    u32 v1;
    BOOL v2;
    u32 v3, v4, v5;
    u8 v6;

    sub_02017B7C(1);

    GF_ASSERT(param1 < Unk_020E582C);
    v0 = &Unk_020E5834[param1];

    GF_ASSERT(v0->unk_00 == param1);
    v1 = v0->unk_08() + sizeof(UnkStruct_020253B4);

    sub_020259F8(param0, param1, &v3, &v4, &v6);

    do {
        v5 = ARNG_Next(v3);
    } while (v5 == 0xffffffff);

    sub_02025A18(param0, param1, v5, v3, v6 ^ 1);

    *((u32 *)param2) = v5;

    if (v6 == 1) {
        sub_020253B4(param0, param2, param1, v0->unk_08());
        v2 = sub_02025A9C((0 + v0->unk_04) * 0x1000, param2, v1);
        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->unk_08()) == 1);
    } else {
        sub_020253B4(param0, param2, param1, v0->unk_08());
        v2 = sub_02025A9C((64 + v0->unk_04) * 0x1000, param2, v1);
        GF_ASSERT(sub_020253E0(param0, param2, param1, v0->unk_08()) == 1);
    }

    if (v2 == 1) {
        sub_02017B8C(1);
        return 2;
    } else {
        sub_02017B8C(1);
        return 3;
    }
}

void * sub_02025680 (SaveData * param0, int param1, int param2, int * param3)
{
    const UnkStruct_02025340 * v0;
    void * v1;
    u32 v2;
    BOOL v3, v4;
    u32 v5, v6;

    GF_ASSERT(param2 < Unk_020E582C);
    v0 = &Unk_020E5834[param2];

    GF_ASSERT(v0->unk_00 == param2);
    v2 = v0->unk_08() + sizeof(UnkStruct_020253B4);
    v1 = Heap_AllocFromHeap(param1, v2);

    sub_02025AC0((0 + v0->unk_04) * 0x1000, v1, v2);

    v3 = sub_020253E0(param0, v1, param2, v0->unk_08());
    v5 = sub_02025420(v1, v0->unk_08());

    sub_02025AC0((64 + v0->unk_04) * 0x1000, v1, v2);

    v4 = sub_020253E0(param0, v1, param2, v0->unk_08());
    v6 = sub_02025420(v1, v0->unk_08());

    *param3 = 1;

    if ((v3 == 1) && (v4 == 0)) {
        param0->unk_202C4 = 0;
        param0->unk_202C8 = v5;
        sub_02025AC0((0 + v0->unk_04) * 0x1000, v1, v2);
        return v1;
    }

    if ((v3 == 0) && (v4 == 1)) {
        param0->unk_202C4 = 1;
        param0->unk_202C8 = v6;
        sub_02025AC0((64 + v0->unk_04) * 0x1000, v1, v2);
        return v1;
    }

    if ((v3 == 1) && (v4 == 1)) {
        if (sub_0202499C(v5, v6) != -1) {
            param0->unk_202C4 = 0;
            param0->unk_202C8 = v5;
            sub_02025AC0((0 + v0->unk_04) * 0x1000, v1, v2);
            return v1;
        } else {
            param0->unk_202C4 = 1;
            param0->unk_202C8 = v6;
            sub_02025AC0((64 + v0->unk_04) * 0x1000, v1, v2);
            return v1;
        }
    }

    *param3 = 2;

    param0->unk_202C4 = 0;
    param0->unk_202C8 = 0;

    return v1;
}

void * sub_020257E8 (SaveData * param0, int param1, int param2, int * param3, BOOL * param4)
{
    const UnkStruct_02025340 * v0;
    void * v1;
    u32 v2;
    BOOL v3, v4;
    u32 v5, v6;
    u32 v7, v8;
    u8 v9;
    UnkStruct_0202783C * v10 = sub_0202783C(param0);

    GF_ASSERT(param2 < Unk_020E582C);
    GF_ASSERT(param2 != 0);

    v0 = &Unk_020E5834[param2];
    GF_ASSERT(v0->unk_00 == param2);

    v2 = v0->unk_08() + sizeof(UnkStruct_020253B4);
    v1 = Heap_AllocFromHeap(param1, v2);

    sub_020259F8(param0, param2, &v7, &v8, &v9);
    sub_02025AC0((0 + v0->unk_04) * 0x1000, v1, v2);

    v3 = sub_020253E0(param0, v1, param2, v0->unk_08());
    MI_CpuCopy8(v1, &v5, sizeof(u32));

    sub_02025AC0((64 + v0->unk_04) * 0x1000, v1, v2);
    v4 = sub_020253E0(param0, v1, param2, v0->unk_08());

    MI_CpuCopy8(v1, &v6, sizeof(u32));

    *param3 = 1;
    *param4 = 0;

    if ((v3 == 1) && (v4 == 0)) {
        if (v7 == v5) {
            if (v9 == 1) {
                sub_02025A18(param0, param2, v8, v8, 0);
                *param4 = 1;
            }

            sub_02025AC0((0 + v0->unk_04) * 0x1000, v1, v2);
            return v1;
        }
    }

    if ((v3 == 0) && (v4 == 1)) {
        if (v7 == v6) {
            if (v9 == 0) {
                sub_02025A18(param0, param2, v8, v8, 1);
                *param4 = 1;
            }

            sub_02025AC0((64 + v0->unk_04) * 0x1000, v1, v2);
            return v1;
        }
    }

    if ((v3 == 1) && (v4 == 1)) {
        if (v9 == 0) {
            if (v7 == v5) {
                sub_02025AC0((0 + v0->unk_04) * 0x1000, v1, v2);
                return v1;
            } else if (v8 == v6) {
                sub_02025A18(param0, param2, v8, v8, v9 ^ 1);
                *param4 = 1;
                sub_02025AC0((64 + v0->unk_04) * 0x1000, v1, v2);
                return v1;
            }
        } else {
            if (v7 == v6) {
                sub_02025AC0((64 + v0->unk_04) * 0x1000, v1, v2);
                return v1;
            } else if (v8 == v5) {
                sub_02025A18(param0, param2, v8, v8, v9 ^ 1);
                *param4 = 1;
                sub_02025AC0((0 + v0->unk_04) * 0x1000, v1, v2);
                return v1;
            }
        }
    }

    *param3 = 2;
    sub_020279D0(v10, v0->unk_00, 0xffffffff, 0xffffffff, 0);

    return v1;
}

static void sub_020259F8 (SaveData * param0, int param1, u32 * param2, u32 * param3, u8 * param4)
{
    sub_020279A8(sub_0202783C(param0), param1, param2, param3, param4);
}

static void sub_02025A18 (SaveData * param0, int param1, u32 param2, u32 param3, u8 param4)
{
    sub_020279D0(sub_0202783C(param0), param1, param2, param3, param4);
}

BOOL sub_02025A3C (void)
{
    s32 v0;
    BOOL v1;
    u32 v2;

    v0 = OS_GetLockID();
    GF_ASSERT(v0 != OS_LOCK_ID_ERROR);

    CARD_LockBackup(v0);

    if (CARD_IdentifyBackup(CARD_BACKUP_TYPE_FLASH_4MBITS)) {
        v1 = CARD_BACKUP_TYPE_FLASH_4MBITS;
    } else if (CARD_IdentifyBackup(CARD_BACKUP_TYPE_FLASH_2MBITS)) {
        v1 = CARD_BACKUP_TYPE_FLASH_2MBITS;
    } else {
        v1 = CARD_BACKUP_TYPE_NOT_USE;
    }

    CARD_UnlockBackup(v0);
    OS_ReleaseLockID(v0);

    if (v1 == CARD_BACKUP_TYPE_FLASH_4MBITS) {
        (void)0;
    } else if (v1 == CARD_BACKUP_TYPE_FLASH_2MBITS) {
        (void)0;
    } else {
        (void)0;
    }

    return v1 != CARD_BACKUP_TYPE_NOT_USE;
}

BOOL sub_02025A9C (u32 param0, void * param1, u32 param2)
{
    s32 v0;
    BOOL v1;

    v0 = sub_02025B3C(param0, param1, param2);

    while (sub_02025BB8(v0, 1, &v1) == 0) {
        (void)0;
    }

    return v1;
}

BOOL sub_02025AC0 (u32 param0, void * param1, u32 param2)
{
    s32 v0;
    BOOL v1;

    v0 = OS_GetLockID();
    GF_ASSERT(v0 != OS_LOCK_ID_ERROR);

    CARD_LockBackup(v0);
    CARD_ReadFlashAsync(param0, param1, param2, NULL, NULL);

    v1 = CARD_WaitBackupAsync();

    CARD_UnlockBackup(v0);
    OS_ReleaseLockID(v0);

    if (!v1) {
        Heap_FreeToHeap(Unk_021C0794);
        sub_0209A74C(1);
    }

    return v1;
}

static BOOL Unk_021C0798;

static void sub_02025B30 (void * param0)
{
    Unk_021C0798 = 1;
}

static s32 sub_02025B3C (u32 param0, void * param1, u32 param2)
{
    s32 v0;
    u32 v1;
    BOOL v2;

    v0 = OS_GetLockID();
    GF_ASSERT(v0 != OS_LOCK_ID_ERROR);

    CARD_LockBackup(v0);

    v2 = CARD_ReadFlash(0, &v1, sizeof(v1));

    if (!v2) {
        sub_02025C1C(v0, 1);
    }

    Unk_021C0798 = 0;
    CARD_WriteAndVerifyFlashAsync(param0, param1, param2, sub_02025B30, NULL);

    return v0;
}

static BOOL sub_02025BB8 (s32 param0, BOOL param1, BOOL * param2)
{
    if (Unk_021C0798 == 1) {
        if (param1 == 0) {
            return 1;
        }

        CARD_UnlockBackup(param0);
        OS_ReleaseLockID(param0);

        switch (CARD_GetResultCode()) {
        case CARD_RESULT_SUCCESS:
            *param2 = 1;
            break;
        default:
            GF_ASSERT(0);
        case CARD_RESULT_TIMEOUT:
            *param2 = 0;
            sub_02025C1C(param0, 0);
        case CARD_RESULT_NO_RESPONSE:
            *param2 = 0;
            sub_02025C1C(param0, 1);
            break;
        }

        return 1;
    }

    return 0;
}

static void sub_02025C1C (s32 param0, int param1)
{
    CARD_UnlockBackup(param0);
    OS_ReleaseLockID(param0);

    Heap_FreeToHeap(Unk_021C0794);
    sub_0209AA74(1, param1);
}

BOOL sub_02025C48 (int param0)
{
    SaveData * v0 = sub_020245A4();
    void * v1 = sub_020245BC(v0, param0);
    int v2 = sub_020251A4(param0) - 4;
    int v3 = v2 / 2;
    u16 * v4 = v1;
    u16 v5;
    u32 v6;

    v5 = sub_0201D628(v1, v2);

    if (v4[v3] == v5) {
        return 1;
    }

    v6 = (u32) & v4[v3];
    GF_ASSERT(0);

    return 0;
}

void sub_02025C84 (int param0)
{
    SaveData * v0 = sub_020245A4();
    void * v1 = sub_020245BC(v0, param0);
    u16 * v2 = v1;
    int v3, v4;
    u16 v5;
    u32 v6;

    v4 = sub_020251A4(param0) - 4;
    v3 = v4 / 2;
    v2 = v1;
    v5 = sub_0201D628(v1, v4);
    v2[v3] = v5;
    v6 = (u32) & v2[v3];
}
