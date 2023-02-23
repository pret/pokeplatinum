#include <nitro.h>
#include <string.h>

#include "inlines.h"

#include "struct_decls/struct_02024440_decl.h"
#include "struct_decls/struct_0202CD88_decl.h"
#include "struct_decls/struct_020564B4_decl.h"
#include "struct_defs/pokemon.h"

#include "struct_defs/struct_0203CDB0.h"
#include "overlay006/struct_ov6_02240D5C.h"

#include "narc.h"
#include "unk_0201378C.h"
#include "heap.h"
#include "unk_0202440C.h"
#include "unk_0202CD50.h"
#include "unk_0202EEC0.h"
#include "unk_02051D8C.h"
#include "unk_02054D00.h"
#include "unk_020562F8.h"
#include "unk_0205DAC8.h"
#include "unk_02073C2C.h"

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_020564B4_sub1;

struct UnkStruct_020564B4_t {
    UnkStruct_020564B4_sub1 unk_00[6];
    u8 unk_30[6];
    int unk_38;
    int unk_3C;
    s64 unk_40;
    int unk_48;
};

static void sub_0205642C(UnkStruct_0203CDB0 * param0, UnkStruct_020564B4 * param1);
static void sub_02056624(UnkStruct_0203CDB0 * param0, UnkStruct_ov6_02240D5C * param1, UnkStruct_020564B4 * param2);
static BOOL sub_02056554(UnkStruct_0203CDB0 * param0, UnkStruct_020564B4 * param1, int param2, int param3);
static UnkStruct_ov6_02240D5C * sub_0205664C(UnkStruct_0203CDB0 * param0, UnkStruct_020564B4 * param1);
static sub_020564B4(UnkStruct_020564B4 * param0);
static void sub_020564D0(UnkStruct_020564B4 * param0);
static BOOL sub_020564F4(UnkStruct_020564B4 * param0);
static u32 sub_020566AC(UnkStruct_020564B4 * param0);
static u32 sub_02056698(UnkStruct_020564B4 * param0);
static u32 sub_0205671C(UnkStruct_020564B4 * param0);

static UnkStruct_020564B4 Unk_021C07FC;

void sub_020562F8 (UnkStruct_0203CDB0 * param0)
{
    int v0;
    UnkStruct_020564B4 * v1 = &Unk_021C07FC;

    MI_CpuClearFast(v1, sizeof(UnkStruct_020564B4));

    sub_0205642C(param0, v1);
    sub_020564D0(v1);

    v1->unk_40 = sub_020138EC();
}

void sub_02056328 (UnkStruct_0203CDB0 * param0)
{
    UnkStruct_020564B4 * v0 = &Unk_021C07FC;
    UnkStruct_0202CD88 * v1 = sub_0202CD88(param0->unk_0C);
    s64 v2 = sub_020138EC();
    s64 v3 = sub_0201398C(v0->unk_40, v2);

    if (v3 < 1000) {
        v0->unk_48 = ((1000 - v3) * 2);
    } else {
        v0->unk_48 = 0;
    }

    sub_0202CFEC(v1, 17);
}

BOOL sub_02056374 (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    if (sub_020564F4(&Unk_021C07FC) == 1) {
        return sub_02056554(param0, &Unk_021C07FC, param1, param2);
    } else {
        return 0;
    }
}

UnkStruct_ov6_02240D5C * sub_0205639C (UnkStruct_0203CDB0 * param0)
{
    return sub_0205664C(param0, &Unk_021C07FC);
}

void sub_020563AC (UnkStruct_0203CDB0 * param0, UnkStruct_ov6_02240D5C * param1)
{
    sub_02056624(param0, param1, &Unk_021C07FC);
}

int sub_020563BC (UnkStruct_0203CDB0 * param0)
{
    return 6 - sub_020564B4(&Unk_021C07FC);
}

int sub_020563D0 (UnkStruct_0203CDB0 * param0)
{
    return sub_02056698(&Unk_021C07FC);
}

int sub_020563E0 (UnkStruct_0203CDB0 * param0)
{
    return sub_0205671C(&Unk_021C07FC);
}

int sub_020563F0 (UnkStruct_0203CDB0 * param0)
{
    return sub_020566AC(&Unk_021C07FC);
}

static void sub_02056400 (u32 param0, u8 * param1)
{
    int v0;

    GF_ASSERT(0 < param0 && param0 <= 493);
    v0 = (param0 - 1) * 6;

    NARC_ReadFromMemberByIndexPair(param1, 131, 0, v0, sizeof(u8) * 6);
}

static void sub_0205642C (UnkStruct_0203CDB0 * param0, UnkStruct_020564B4 * param1)
{
    int v0;
    u8 v1[8];
    u16 v2;
    Pokemon * v3;
    UnkStruct_02024440 * v4;

    v4 = sub_02024440(param0->unk_0C);
    v3 = AllocMonZeroed(4);

    for (v0 = 0; v0 < 6; v0++) {
        param1->unk_30[v0] = 0;
        sub_0202F000(v4, v0, v3);

        v2 = GetMonData(v3, 5, NULL);

        param1->unk_00[v0].unk_00 = v2;
        sub_02056400(v2, v1);

        if (v1[0] != 0) {
            param1->unk_00[v0].unk_02 = v1[0];
        } else {
            param1->unk_00[v0].unk_02 = 5 - 1 + v1[1];
        }

        param1->unk_00[v0].unk_03 = v1[3];
        param1->unk_00[v0].unk_04 = v1[2];
        param1->unk_00[v0].unk_06 = GetMonData(v3, 177, NULL);
        param1->unk_00[v0].unk_07 = GetMonData(v3, 178, NULL);
    }

    Heap_FreeToHeap(v3);
}

static int sub_020564B4 (UnkStruct_020564B4 * param0)
{
    int v0;
    int v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        if (param0->unk_30[v0] != 0) {
            v1++;
        }
    }

    return v1;
}

static void sub_020564D0 (UnkStruct_020564B4 * param0)
{
    param0->unk_38 = inline_020564D0(10) + 5;
}

static BOOL sub_020564F4 (UnkStruct_020564B4 * param0)
{
    param0->unk_38--;

    if (param0->unk_38 == 0) {
        sub_020564D0(param0);
        return 1;
    }

    return 0;
}

static int sub_0205650C (UnkStruct_0203CDB0 * param0, int param1, int param2)
{
    u16 v0 = sub_02054F94(param0, param1, param2);
    int v1;

    v1 = (param1 < 32) ? 0 : 1;
    v1 += (param2 < 32) ? 0 : 2;

    if (sub_0205DAC8(v0)) {
        return 1 + v1;
    } else if (sub_0205DB58(v0)) {
        return 5 + v1;
    }

    return 0;
}

static BOOL sub_02056554 (UnkStruct_0203CDB0 * param0, UnkStruct_020564B4 * param1, int param2, int param3)
{
    int v0;
    int v1, v2 = 0;
    int v3 = sub_0205650C(param0, param2, param3);

    if (v3 == 0) {
        return 0;
    }

    for (v0 = 0; v0 < 6; v0++) {
        if ((param1->unk_30[v0] == 0) && (param1->unk_00[v0].unk_02 == v3)) {
            v2 += param1->unk_00[v0].unk_03;
        }
    }

    if (v2 == 0) {
        return 0;
    }

    v1 = inline_020564D0(v2 + 20);

    if (v1 < 20) {
        return 0;
    }

    v1 -= 20;

    for (v0 = 0; v0 < 6; v0++) {
        if ((param1->unk_30[v0] == 0) && (param1->unk_00[v0].unk_02 == v3)) {
            if (v1 < param1->unk_00[v0].unk_03) {
                param1->unk_3C = v0;
                return 1;
            } else {
                v1 -= param1->unk_00[v0].unk_03;
            }
        }
    }

    GF_ASSERT(0);
    return 0;
}

static void sub_02056624 (UnkStruct_0203CDB0 * param0, UnkStruct_ov6_02240D5C * param1, UnkStruct_020564B4 * param2)
{
    switch (param1->unk_14) {
    case 0x4:
        param2->unk_30[param2->unk_3C] = sub_020564B4(param2) + 1;
        break;
    case 0x5:
        break;
    default:
        GF_ASSERT(0);
    }
}

static UnkStruct_ov6_02240D5C * sub_0205664C (UnkStruct_0203CDB0 * param0, UnkStruct_020564B4 * param1)
{
    UnkStruct_ov6_02240D5C * v0;
    Pokemon * v1 = AllocMonZeroed(32);
    UnkStruct_02024440 * v2 = sub_02024440(param0->unk_0C);
    int v3 = sub_020563BC(param0);

    v0 = sub_02051F38(11, v3);

    sub_02052314(v0, param0);
    sub_0202F000(v2, param1->unk_3C, v1);
    sub_0205213C(v0, v1, 1);
    Heap_FreeToHeap(v1);

    return v0;
}

static u32 sub_02056698 (UnkStruct_020564B4 * param0)
{
    int v0;
    u32 v1 = 0;

    for (v0 = 0; v0 < 6; v0++) {
        v1 += param0->unk_00[v0].unk_04;
    }

    return v1;
}

static u32 sub_020566AC (UnkStruct_020564B4 * param0)
{
    int v0, v1;
    int v2, v3, v4, v5;
    u32 v6 = 0;
    u32 v7 = 0;

    for (v0 = 1; v0 < 6 + 1; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (param0->unk_30[v1] == v0) {
                v4 = param0->unk_00[v1].unk_06;
                v5 = param0->unk_00[v1].unk_07;

                if ((v0 != 1) && (v2 != v4) && (v2 != v5) && (v3 != v4) && (v3 != v5)) {
                    v7 += 200;
                }

                v2 = v4;
                v3 = v5;
                v6 |= (1 << v2);
                v6 |= (1 << v3);

                break;
            }
        }
    }

    for (; v6 != 0; v6 >>= 1) {
        if (v6 & 1) {
            v7 += 50;
        }
    }

    return v7;
}

static u32 sub_0205671C (UnkStruct_020564B4 * param0)
{
    return param0->unk_48;
}
