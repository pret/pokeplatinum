#include "enums.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200B144_decl.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021DB6F0.h"
#include "overlay019/struct_ov19_021DF964.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_02001AF4.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200B358.h"
#include "unk_0200DA60.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "plstring.h"
#include "overlay019/ov19_021DB2FC.h"

static void ov19_021DB4B4(UnkStruct_02018340 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5);
static void ov19_021DB638(UnkStruct_ov19_021DB6F0 * param0, UnkStruct_0205AA50 * param1, u8 param2, u32 param3);
static void ov19_021DB684(UnkStruct_ov19_021DB6F0 * param0, u32 param1);
static void ov19_021DB7BC(UnkStruct_02018340 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5);
static void ov19_021DB84C(UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1);
static void ov19_021DB898(UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1);

BOOL ov19_021DB2FC (UnkStruct_ov19_021DB6F0 * param0, UnkStruct_ov19_021D61B0 * param1, const UnkStruct_ov19_021D4DF0 * param2, UnkStruct_02018340 * param3, UnkStruct_020218BC * param4, UnkStruct_0200B144 * param5, const UnkStruct_0200B358 * param6, int param7, NARC * param8)
{
    param0->unk_0C = param1;
    param0->unk_00 = param3;
    param0->unk_08 = param2;
    param0->unk_2C = param6;
    param0->unk_20 = param7;
    param0->unk_10 = param5;
    param0->unk_14 = sub_0200B144(0, 26, 18, 10);
    param0->unk_30 = PLString_AllocFromHeap(64, 10);
    param0->unk_34 = PLString_AllocFromHeap(64, 10);
    param0->unk_1C = 0;
    param0->unk_1E = 0;
    param0->unk_18 = NULL;
    param0->unk_24 = sub_020071B4(param8, 25, 1, &(param0->unk_28), 10);

    if ((param0->unk_24 == NULL) || (param0->unk_30 == NULL) || (param0->unk_34 == NULL)) {
        return 0;
    }

    return 1;
}

void ov19_021DB370 (UnkStruct_ov19_021DB6F0 * param0)
{
    if (param0->unk_18) {
        int v0;

        for (v0 = 0; v0 < 2; v0++) {
            sub_0201A8FC(&(param0->unk_18[v0]));
        }

        if (param0->unk_24) {
            Heap_FreeToHeap(param0->unk_24);
        }

        if (param0->unk_14) {
            sub_0200B190(param0->unk_14);
        }

        if (param0->unk_30) {
            PLString_FreeToHeap(param0->unk_30);
        }

        if (param0->unk_34) {
            PLString_FreeToHeap(param0->unk_34);
        }

        Heap_FreeToHeap(param0->unk_18);
        param0->unk_18 = NULL;
    }
}

void ov19_021DB3C4 (UnkStruct_ov19_021DB6F0 * param0)
{
    static const UnkStruct_ov61_0222C884 v0[] = {
        {1, 2, 21, 27, 2, 4, 539},
        {1, 19, 3, 12, 16, 4, 593}
    };

    param0->unk_18 = sub_0201A778(10, 2);

    if (param0->unk_18) {
        int v1;

        for (v1 = 0; v1 < 2; v1++) {
            sub_0201A8D4(param0->unk_00, &param0->unk_18[v1], &v0[v1]);
        }
    }

    sub_02006E3C(38, 0, param0->unk_00, 1, 512, 0, 0, 10);
    sub_02006E84(38, 24, 0, 7 * 0x20, 0x20, 10);
    sub_0200DD0C(param0->unk_00, 1, 521, 8, param0->unk_20, 10);
}

void ov19_021DB448 (UnkStruct_ov19_021DB6F0 * param0, u32 param1)
{
    sub_0201A9F4(&param0->unk_18[0]);
    ov19_021DB4B4(param0->unk_00, param0->unk_18[0].unk_04, param0->unk_18[0].unk_05, param0->unk_18[0].unk_06, param0->unk_18[0].unk_07, param0->unk_18[0].unk_08);
    sub_0201ADA4(&param0->unk_18[0], 15);
    sub_0200B1B8(param0->unk_10, param1, param0->unk_30);
    sub_0200C388(param0->unk_2C, param0->unk_34, param0->unk_30);
    sub_0201D738(&(param0->unk_18[0]), 1, param0->unk_34, 0, 0, 0xff, NULL);
    sub_0201ACCC(&(param0->unk_18[0]));
    sub_02019448(param0->unk_00, 1);

    param0->unk_1C = 1;
}

static void ov19_021DB4B4 (UnkStruct_02018340 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    u16 * v0;
    u32 v1, v2;

    v0 = sub_02019FE4(param0, param1);
    v0 += (((param3 - 1) * 32) + (param2 - 2));

    v0[0] = (8 << 12) | 521;
    v0[1] = (8 << 12) | (521 + 1);

    for (v1 = 0; v1 < param4; v1++) {
        v0[2 + v1] = (8 << 12) | (521 + 2);
    }

    v0[2 + param4] = (8 << 12) | (521 + 3);
    v0[3 + param4] = (8 << 12) | (521 + 4);
    v0[4 + param4] = (8 << 12) | (521 + 5);

    v0 += 32;

    for (v1 = 0; v1 < param5; v1++) {
        v0[0] = (8 << 12) | (521 + 6);
        v0[1] = (8 << 12) | (521 + 7);
        v0[2 + param4] = (8 << 12) | (521 + 9);
        v0[3 + param4] = (8 << 12) | (521 + 10);
        v0[4 + param4] = (8 << 12) | (521 + 11);
        v0 += 32;
    }

    v0[0] = (8 << 12) | (521 + 12);
    v0[1] = (8 << 12) | (521 + 13);

    for (v1 = 0; v1 < param4; v1++) {
        v0[2 + v1] = (8 << 12) | (521 + 14);
    }

    v0[2 + param4] = (8 << 12) | (521 + 15);
    v0[3 + param4] = (8 << 12) | (521 + 16);
    v0[4 + param4] = (8 << 12) | (521 + 17);
}

void ov19_021DB57C (UnkStruct_ov19_021DB6F0 * param0, const UnkStruct_ov19_021DF964 * param1)
{
    UnkStruct_0205AA50 * v0;
    u32 v1, v2;

    if (param0->unk_1E) {
        ov19_021DB84C(param0->unk_00, &param0->unk_18[1]);
    }

    v0 = &(param0->unk_18[1]);
    sub_0201ADA4(v0, 15);
    v1 = (8 - param1->unk_21) * 16;

    for (v2 = 0; v2 < param1->unk_21; v2++) {
        if ((param1->unk_00[v2] >= UnkEnum_021DFB94_56) && (param1->unk_00[v2] <= UnkEnum_021DFB94_61)) {
            ov19_021DB638(param0, v0, param1->unk_22, param1->unk_00[v2] - UnkEnum_021DFB94_56);
        } else {
            sub_0200B1B8(param0->unk_14, 24 + param1->unk_00[v2], param0->unk_30);
            sub_0201D78C(v0, 0, param0->unk_30, 10, v1, 0xff, (u32)(((11 & 0xff) << 16) | ((12 & 0xff) << 8) | ((15 & 0xff) << 0)), NULL);
        }

        v1 += 16;
    }

    ov19_021DB748(param0, param1);
    ov19_021DB684(param0, param1->unk_21);

    sub_0201ACCC(v0);
    sub_02019448(param0->unk_00, 1);

    param0->unk_1E = 1;
}

static void ov19_021DB638 (UnkStruct_ov19_021DB6F0 * param0, UnkStruct_0205AA50 * param1, u8 param2, u32 param3)
{
    sub_0201AE08(param1, param0->unk_28->pRawData, param3 * 8, ((param2 & (1 << param3)) ? 0 : 8), 48, 16, 44, param3 * 16 + 4, 8, 8, 0xff);
}

static void ov19_021DB684 (UnkStruct_ov19_021DB6F0 * param0, u32 param1)
{
    u16 * v0;
    u32 v1, v2, v3, v4;

    v0 = sub_02019FE4(param0->unk_00, 1);
    v0 += (3 * 32 + 19);
    v3 = 593;
    v4 = 8 - param1;
    v0 += (v4 * 2 * 32);
    v3 += (v4 * 2 * 12);

    for (v2 = 0; v2 < (param1 * 2); v2++) {
        for (v1 = 0; v1 < 12; v1++) {
            v0[v1] = (4 << 12) | v3;
            v3++;
        }

        v0 += 32;
    }

    ov19_021DB7BC(param0->unk_00, 1, 19, 3 + v4 * 2, 12, param1 * 2);
}

void ov19_021DB6F0 (UnkStruct_ov19_021DB6F0 * param0)
{
    if (param0->unk_1C) {
        ov19_021DB898(param0->unk_00, &param0->unk_18[0]);
        param0->unk_1C = 0;
    }

    if (param0->unk_1E) {
        ov19_021DB84C(param0->unk_00, &param0->unk_18[1]);
        param0->unk_1E = 0;
    }

    sub_02019448(param0->unk_00, 1);
}

void ov19_021DB724 (UnkStruct_ov19_021DB6F0 * param0)
{
    if (param0->unk_1E) {
        ov19_021DB84C(param0->unk_00, &param0->unk_18[1]);
        param0->unk_1E = 0;
    }

    sub_02019448(param0->unk_00, 1);
}

void ov19_021DB748 (UnkStruct_ov19_021DB6F0 * param0, const UnkStruct_ov19_021DF964 * param1)
{
    UnkStruct_0205AA50 * v0;
    u32 v1;

    v0 = &(param0->unk_18[1]);
    v1 = (8 - param1->unk_21) * 16;

    sub_0201AE78(v0, 15, 0, v1, 10, param1->unk_21 * 16);
    sub_02002180(v0, 0, v1 + (param1->unk_20 * 16));
    sub_0201ACCC(v0);
}

void ov19_021DB790 (UnkStruct_ov19_021DB6F0 * param0, const UnkStruct_ov19_021DF964 * param1)
{
    UnkStruct_0205AA50 * v0;
    int v1;

    v0 = &(param0->unk_18[1]);

    for (v1 = 0; v1 < 6; v1++) {
        ov19_021DB638(param0, v0, param1->unk_22, v1);
    }

    sub_0201ACCC(v0);
}

static void ov19_021DB7BC (UnkStruct_02018340 * param0, u32 param1, u32 param2, u32 param3, u32 param4, u32 param5)
{
    u16 * v0;
    u32 v1;

    v0 = sub_02019FE4(param0, param1);
    v0 += (((param3 - 1) * 32) + (param2 - 1));
    *v0 = (7 << 12) | 512;

    for (v1 = 0; v1 < param4; v1++) {
        v0[v1 + 1] = (7 << 12) | (512 + 1);
    }

    v0[param4 + 1] = (7 << 12) | (512 + 2);
    v0 += 32;

    for (v1 = 0; v1 < param5; v1++) {
        *v0 = (7 << 12) | (512 + 3);
        v0[param4 + 1] = (7 << 12) | (512 + 5);
        v0 += 32;
    }

    *v0 = (7 << 12) | (512 + 6);

    for (v1 = 0; v1 < param4; v1++) {
        v0[v1 + 1] = (7 << 12) | (512 + 7);
    }

    v0[param4 + 1] = (7 << 12) | (512 + 8);
}

static void ov19_021DB84C (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1)
{
    u16 * v0;
    u32 v1, v2, v3, v4;

    v0 = sub_02019FE4(param0, param1->unk_04);
    v0 += (((param1->unk_06 - 1) * 32) + (param1->unk_05 - 1));

    for (v2 = 0; v2 < (param1->unk_08 + 2); v2++) {
        for (v1 = 0; v1 < (param1->unk_07 + 2); v1++) {
            v0[v1] = 0x0;
        }

        v0 += 32;
    }
}

static void ov19_021DB898 (UnkStruct_02018340 * param0, UnkStruct_0205AA50 * param1)
{
    u16 * v0;
    u32 v1, v2, v3, v4;

    v0 = sub_02019FE4(param0, param1->unk_04);
    v0 += (((param1->unk_06 - 1) * 32) + (param1->unk_05 - 2));

    for (v2 = 0; v2 < (param1->unk_08 + 2); v2++) {
        for (v1 = 0; v1 < (param1->unk_07 + 5); v1++) {
            v0[v1] = 0x0;
        }

        v0 += 32;
    }
}
