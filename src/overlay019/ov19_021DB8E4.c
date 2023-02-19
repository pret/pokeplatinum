#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02073C74_sub1_decl.h"
#include "struct_decls/struct_020797DC_decl.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include "functypes/funcptr_0201CE28.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "overlay019/struct_ov19_021DA864.h"
#include "overlay019/struct_ov19_021DBA9C.h"
#include "overlay061/struct_ov61_0222C884.h"

#include "unk_02002B7C.h"
#include "unk_02006E3C.h"
#include "unk_0200AC5C.h"
#include "unk_0200C440.h"
#include "unk_0200D9E8.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D670.h"
#include "unk_020218BC.h"
#include "plstring.h"
#include "unk_02073C2C.h"
#include "unk_020797C8.h"
#include "item.h"
#include "overlay019/ov19_021D0D80.h"
#include "overlay019/ov19_021D61B0.h"
#include "overlay019/ov19_021DB8E4.h"

typedef struct {
    UnkStruct_ov19_021DBA9C * unk_00;
    u8 unk_04;
    u8 unk_05;
    BOOL unk_08;
} UnkStruct_ov19_021DC034;

typedef struct {
    UnkStruct_ov19_021DBA9C * unk_00;
    UnkStruct_02018340 * unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    u16 unk_14;
    u16 unk_16;
} UnkStruct_ov19_021DC29C;

static int ov19_021DBD40(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DBD4C(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DBD68(UnkStruct_ov19_021DBA9C * param0, u32 param1);
static void ov19_021DBD9C(UnkStruct_ov19_021DBA9C * param0, u32 param1, u32 param2);
static void ov19_021DBDF4(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DBEF8(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DBF18(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DBF4C(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DBFB0(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DBFC4(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DC01C(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DC034(UnkStruct_ov19_021DBA9C * param0, int param1);
static void ov19_021DC074(UnkStruct_0201CD38 * param0, void * param1);
static BOOL ov19_021DC090(UnkStruct_ov19_021DBA9C * param0);
static void ov19_021DC0A0(UnkStruct_0201CD38 * param0, void * param1);
static void ov19_021DC1CC(UnkStruct_0201CD38 * param0, void * param1);
static void ov19_021DC37C(UnkStruct_0201CD38 * param0, void * param1);
static void ov19_021DC46C(UnkStruct_0201CD38 * param0, void * param1);
static void ov19_021DC4F8(UnkStruct_ov19_021DBA9C * param0, u32 param1);
static void ov19_021DC5B8(UnkStruct_ov19_021DBA9C * param0, fx32 param1);
static void ov19_021DC5E0(UnkStruct_ov19_021DBA9C * param0);

BOOL ov19_021DB8E4 (UnkStruct_ov19_021DBA9C * param0, UnkStruct_ov19_021D61B0 * param1, const UnkStruct_ov19_021D4DF0 * param2, UnkStruct_02018340 * param3, UnkStruct_020218BC * param4, NARC * param5)
{
    int v0;

    param0->unk_00 = param1;
    param0->unk_04 = param3;
    param0->unk_0C = param2;
    param0->unk_08 = param4;

    sub_020070E8(param5, 4, param3, 1, 0, 0, 1, 10);

    {
        NNSG2dPaletteData * v1;
        void * v2;

        v2 = sub_020071EC(param5, 27, &v1, 10);
        MI_CpuCopy16(v1->pRawData, &(param0->unk_E4[0][0]), 0x40);
        Heap_FreeToHeap(v2);

        v2 = sub_020071EC(param5, 20, &v1, 10);
        MI_CpuCopy16(v1->pRawData, &(param0->unk_E4[0][32]), 0x20);
        Heap_FreeToHeap(v2);

        {
            int v3;
            fx32 v4, v5;

            v4 = 16 << FX32_SHIFT;
            v5 = v4 / (8 - 1);

            for (v3 = 8 - 1; v3 >= 1; v3--) {
                ov19_021D78C8(param0->unk_E4[0], param0->unk_E4[v3], 48, 0x7fff, (v4 >> FX32_SHIFT));
                v4 -= v5;
            }

            DC_FlushRange(param0->unk_E4, 8 * 96);
        }

        GX_LoadOBJPltt(param0->unk_E4[8 - 1], 13 * 0x20, 96);
        GXS_LoadOBJPltt(param0->unk_E4[0], 13 * 0x20, 96);
    }

    param0->unk_14 = sub_020071B4(param5, 17, 1, &(param0->unk_18), 10);
    param0->unk_1C = sub_02007204(param5, 18, 1, &(param0->unk_20), 10);
    param0->unk_34 = sub_020071D0(param5, 2, 1, &(param0->unk_38), 10);
    param0->unk_2C = sub_020071D0(param5, 3, 1, &(param0->unk_30), 10);
    param0->unk_44 = sub_0200C440(2, 13, 4, 10);
    param0->unk_4BFC = PLString_Init(500, 10);
    param0->unk_10 = NULL;
    param0->unk_3C.unk_00 = param0->unk_18->pRawData;
    param0->unk_3C.unk_04 = 32;
    param0->unk_3C.unk_06 = 32;
    param0->unk_4BF8 = sub_0200B144(1, 26, 391, 10);

    for (v0 = 0; v0 < 18; v0++) {
        param0->unk_48[v0] = NULL;
    }

    if ((param0->unk_14 == NULL) || (param0->unk_1C == NULL) || (param0->unk_2C == NULL) || (param0->unk_34 == NULL) || (param0->unk_44 == NULL) || (param0->unk_4BFC == NULL)) {
        return 0;
    }

    return 1;
}

void ov19_021DBA9C (UnkStruct_ov19_021DBA9C * param0)
{
    static const UnkStruct_ov61_0222C884 v0[] = {
        {1, 10, 6, 12, 2, 2, 128},
        {1, 3, 13, 26, 1, 2, 152},
        {1, 5, 25, 27, 6, 2, 178}
    };

    param0->unk_10 = sub_0201A778(10, NELEMS(v0));

    if (param0->unk_10) {
        int v1;

        for (v1 = 0; v1 < NELEMS(v0); v1++) {
            sub_0201A8D4(param0->unk_04, &param0->unk_10[v1], &v0[v1]);
        }
    }
}

void ov19_021DBAD0 (UnkStruct_ov19_021DBA9C * param0)
{
    if (param0->unk_4BF8) {
        sub_0200B190(param0->unk_4BF8);
    }

    if (param0->unk_14) {
        Heap_FreeToHeap(param0->unk_14);
    }

    if (param0->unk_1C) {
        Heap_FreeToHeap(param0->unk_1C);
    }

    if (param0->unk_2C) {
        Heap_FreeToHeap(param0->unk_2C);
    }

    if (param0->unk_34) {
        Heap_FreeToHeap(param0->unk_34);
    }

    if (param0->unk_44) {
        sub_0200C560(param0->unk_44);
    }

    if (param0->unk_4BFC) {
        PLString_Free(param0->unk_4BFC);
    }

    if (param0->unk_10) {
        int v0;

        for (v0 = 0; v0 < 3; v0++) {
            sub_0201A8FC(&(param0->unk_10[v0]));
        }

        Heap_FreeToHeap(param0->unk_10);
    }
}

void ov19_021DBB48 (UnkStruct_ov19_021DBA9C * param0)
{
    param0->unk_E0 = ov19_021D5EA8(param0->unk_0C);
    ov19_021DBDF4(param0);
    ov19_021DC034(param0, 0);
}

BOOL ov19_021DBB68 (UnkStruct_ov19_021DBA9C * param0)
{
    return ov19_021DC090(param0);
}

void ov19_021DBB70 (UnkStruct_ov19_021DBA9C * param0)
{
    param0->unk_E0 = ov19_021D5EA8(param0->unk_0C);

    ov19_021DBF18(param0);
    ov19_021DBF4C(param0);
    ov19_021DBFC4(param0);
}

void ov19_021DBB94 (UnkStruct_ov19_021DBA9C * param0)
{
    ov19_021DC034(param0, 1);
}

BOOL ov19_021DBBA0 (UnkStruct_ov19_021DBA9C * param0)
{
    return ov19_021DC090(param0);
}

void ov19_021DBBA8 (UnkStruct_ov19_021DBA9C * param0, u32 param1, u32 param2, NNS_G2D_VRAM_TYPE param3, NNSG2dImageProxy * param4)
{
    const UnkStruct_020797DC * v0;
    UnkStruct_02073C74_sub1 * v1;
    u32 v2, v3, v4, v5;
    u8 v6, v7;
    int v8;

    v0 = ov19_021D5E90(param0->unk_0C);
    v8 = sub_02079AA8(v0, param1);

    if (v8 >= (16 + 8)) {
        v8 -= 8;
    }

    v6 = 13 * 0x10 + v8;
    sub_0201A6D0(&(param0->unk_3C), 9, 10, 14, 12, v6);

    for (v3 = 0, v4 = 0; v3 < 5; v3++) {
        for (v2 = 0; v2 < 6; v2++) {
            v1 = sub_02079C9C(v0, param1, v4++);
            v7 = sub_02073D20(v1);
            v5 = sub_02074570(v1, 5, NULL);

            if (v5) {
                if (sub_02074570(v1, 76, NULL) == 0) {
                    u16 v9 = sub_02074570(v1, 112, NULL);

                    v6 = sub_020759CC(v5, v9, 27);
                } else {
                    v6 = (v5 != 490) ? 8 : 1;
                }

                {
                    static const u8 v10[] = {
                        0xe, 0xf, 0x5, 0x4, 0xd, 0xc, 0x3, 0xb, 0xa, 0x9,
                    };

                    v6 = 14 * 0x10 + v10[v6];
                }

                sub_0201A6D0(&(param0->unk_3C), 10 + v2 * 2, 11 + v3 * 2, 2, 2, v6);
            }

            sub_02073D48(v1, v7);
        }
    }

    if (param4) {
        switch (param3) {
        case NNS_G2D_VRAM_TYPE_2DMAIN:
            param0->unk_18->mapingType = GX_GetOBJVRamModeChar();
            break;
        case NNS_G2D_VRAM_TYPE_2DSUB:
            param0->unk_18->mapingType = GXS_GetOBJVRamModeChar();
            break;
        }

        NNS_G2dLoadImage1DMapping(param0->unk_18, param2 * 0x20, param3, param4);
    } else {
        DC_FlushRange(param0->unk_18->pRawData, param0->unk_18->szByte);

        switch (param3) {
        case NNS_G2D_VRAM_TYPE_2DMAIN:
            GX_LoadOBJ(param0->unk_18->pRawData, param2 * 0x20, param0->unk_18->szByte);
            break;
        case NNS_G2D_VRAM_TYPE_2DSUB:
            GXS_LoadOBJ(param0->unk_18->pRawData, param2 * 0x20, param0->unk_18->szByte);
            break;
        }
    }
}

NNSG2dCellDataBank * ov19_021DBD3C (UnkStruct_ov19_021DBA9C * param0)
{
    return param0->unk_20;
}

static int ov19_021DBD40 (UnkStruct_ov19_021DBA9C * param0)
{
    int v0 = param0->unk_E0 - (7 / 2);

    if (v0 < 0) {
        v0 += 18;
    }

    return v0;
}

static void ov19_021DBD4C (UnkStruct_ov19_021DBA9C * param0)
{
    int v0;

    for (v0 = 0; v0 < 18; v0++) {
        param0->unk_4BE4[v0] = 0;
    }
}

static void ov19_021DBD68 (UnkStruct_ov19_021DBA9C * param0, u32 param1)
{
    MI_CpuCopy32(param0->unk_18->pRawData, param0->unk_3E4[param1], 1024);
    DC_FlushRange(param0->unk_3E4, 1024);
    param0->unk_4BE4[param1] = 1;
}

static void ov19_021DBD9C (UnkStruct_ov19_021DBA9C * param0, u32 param1, u32 param2)
{
    u32 v0 = 1584 + 32 * param1;

    if (param0->unk_4BE4[param2]) {
        GX_LoadOBJ(param0->unk_3E4[param2], v0 * 0x20, 1024);
    } else {
        NNSG2dImageProxy v1;

        NNS_G2dInitImageProxy(&v1);
        ov19_021DBBA8(param0, param2, v0, NNS_G2D_VRAM_TYPE_2DMAIN, &v1);
        ov19_021DBD68(param0, param2);
    }
}

static void ov19_021DBDF4 (UnkStruct_ov19_021DBA9C * param0)
{
    UnkStruct_ov19_021DA864 v0;
    UnkStruct_ov19_021DA384 * v1;
    NNSG2dImageProxy v2;
    VecFx32 v3;
    int v4, v5;

    ov19_021DBD4C(param0);
    v1 = ov19_021D77D8(param0->unk_00);
    ov19_021D783C(&v0, NULL, ov19_021D77D0(param0->unk_00), param0->unk_20, v1->unk_04, 0);
    v5 = ov19_021DBD40(param0);

    for (v4 = 0; v4 < 7; v4++) {
        NNS_G2dInitImageProxy(&v2);
        ov19_021DBBA8(param0, v5, 1584 + 32 * v4, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

        v0.unk_00 = &v2;
        param0->unk_48[v4] = ov19_021D785C(param0->unk_08, &v0, 512, 256, 11, NNS_G2D_VRAM_TYPE_2DMAIN);

        GF_ASSERT(param0->unk_48[v4] != NULL);

        sub_02021CAC(param0->unk_48[v4], 0);
        VEC_Set(&v3, FX32_CONST(32 + v4 * 32), FX32_CONST(88), 0);
        sub_02021C50(param0->unk_48[v4], &v3);
        ov19_021DBD68(param0, v5);

        if (++v5 >= 18) {
            v5 = 0;
        }
    }

    for (v4 = 0; v4 < 18; v4++) {
        param0->unk_94[v4] = sub_02079B54(ov19_021D5E90(param0->unk_0C), v4);
    }
}

static void ov19_021DBEF8 (UnkStruct_ov19_021DBA9C * param0)
{
    int v0;

    for (v0 = 0; v0 < 7; v0++) {
        if (param0->unk_48[v0] != NULL) {
            sub_02021BD4(param0->unk_48[v0]);
            param0->unk_48[v0] = NULL;
        }
    }
}

static void ov19_021DBF18 (UnkStruct_ov19_021DBA9C * param0)
{
    int v0, v1;

    v0 = ov19_021DBD40(param0);

    for (v1 = 0; v1 < 7; v1++) {
        ov19_021DBD9C(param0, v1, v0);
        sub_02021CAC(param0->unk_48[v1], 1);

        if (++v0 >= 18) {
            v0 = 0;
        }
    }
}

static void ov19_021DBF4C (UnkStruct_ov19_021DBA9C * param0)
{
    const UnkStruct_020797DC * v0;
    UnkStruct_0205AA50 * v1;
    u32 v2, v3;

    v0 = ov19_021D5E90(param0->unk_0C);
    v1 = &param0->unk_10[0];

    sub_02079AF4(v0, param0->unk_E0, param0->unk_4BFC);

    v2 = sub_02002D7C(0, param0->unk_4BFC, 0);
    v3 = 48 - (v2 / 2);

    sub_0201ADA4(v1, 7);
    sub_0201D78C(v1, 0, param0->unk_4BFC, v3, 0, 0xff, (u32)(((2 & 0xff) << 16) | ((8 & 0xff) << 8) | ((7 & 0xff) << 0)), NULL);
    sub_0201ACCC(v1);
}

static void ov19_021DBFB0 (UnkStruct_ov19_021DBA9C * param0)
{
    UnkStruct_0205AA50 * v0 = &param0->unk_10[0];

    sub_0201ADA4(v0, 7);
    sub_0201ACCC(v0);
}

static void ov19_021DBFC4 (UnkStruct_ov19_021DBA9C * param0)
{
    s32 v0, v1;
    UnkStruct_0205AA50 * v2;

    v2 = &param0->unk_10[1];
    sub_0201ADA4(v2, 4);
    v0 = ov19_021DBD40(param0);

    for (v1 = 0; v1 < 7; v1++) {
        sub_0200C5BC(param0->unk_44, param0->unk_94[v0], 2, 2, v2, 32 * v1, 0);

        if (++v0 >= 18) {
            v0 = 0;
        }
    }

    sub_0201ACCC(v2);
}

static void ov19_021DC01C (UnkStruct_ov19_021DBA9C * param0)
{
    UnkStruct_0205AA50 * v0 = &param0->unk_10[1];

    sub_0201ADA4(v0, 4);
    sub_0201ACCC(v0);
}

static void ov19_021DC034 (UnkStruct_ov19_021DBA9C * param0, int param1)
{
    static const UnkFuncPtr_0201CE28 v0[] = {
        ov19_021DC0A0, ov19_021DC1CC,
    };
    UnkStruct_ov19_021DC034 * v1 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DC034));

    if (v1) {
        v1->unk_00 = param0;
        v1->unk_04 = 0;
        v1->unk_05 = 0;

        param0->unk_DC = sub_0200D9E8(v0[param1], v1, 0);

        if (param0->unk_DC == NULL) {
            Heap_FreeToHeap(v1);
        }
    }
}

static void ov19_021DC074 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021DC034 * v0 = (UnkStruct_ov19_021DC034 *)param1;

    v0->unk_00->unk_DC = NULL;

    Heap_FreeToHeap(v0);
    sub_0200DA58(param0);
}

static BOOL ov19_021DC090 (UnkStruct_ov19_021DBA9C * param0)
{
    return param0->unk_DC == NULL;
}

static void ov19_021DC0A0 (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021DC034 * v0 = (UnkStruct_ov19_021DC034 *)param1;
    UnkStruct_ov19_021DBA9C * v1 = v0->unk_00;

    switch (v0->unk_04) {
    case 0:
        v0->unk_05 += 1;

        if ((v0->unk_05 * 2) < 10) {
            u32 v2 = 5 + (10 / 2);

            sub_020198C0(v1->unk_04, 1, v1->unk_30->rawData, 0, v2 - v0->unk_05, 32, v0->unk_05);
            sub_020198E8(v1->unk_04, 1, 0, v2, 32, v0->unk_05, v1->unk_30->rawData, 0, 10 - v0->unk_05, 32, 10);
        } else {
            sub_020198C0(v1->unk_04, 1, v1->unk_30->rawData, 0, 5, 32, 10);
            v0->unk_04++;
        }

        sub_02019448(v1->unk_04, 1);
        v0->unk_05 = 8 - 1;
        break;
    case 1:
        GX_LoadOBJPltt(v1->unk_E4[v0->unk_05], 13 * 0x20, 96);
        ov19_021DBF18(v1);
        v0->unk_04++;
        break;
    case 2:
        if (v0->unk_05) {
            v0->unk_05--;
        }

        GX_LoadOBJPltt(v1->unk_E4[v0->unk_05], 13 * 0x20, 96);

        if (v0->unk_05 == 0) {
            sub_0201A9F4(&v1->unk_10[0]);
            sub_0201A9F4(&v1->unk_10[1]);
            ov19_021DBF4C(v1);
            ov19_021DBFC4(v1);
            sub_02019448(v1->unk_04, 1);
            v0->unk_04++;
        }
        break;
    case 3:
        ov19_021DC074(param0, v0);
        break;
    }
}

static void ov19_021DC1CC (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021DC034 * v0 = (UnkStruct_ov19_021DC034 *)param1;
    UnkStruct_ov19_021DBA9C * v1 = v0->unk_00;

    switch (v0->unk_04) {
    case 0:
        ov19_021DBEF8(v1);
        ov19_021DBFB0(v1);
        ov19_021DC01C(v1);
        v0->unk_04++;
        break;
    case 1:
        sub_02019CB8(v1->unk_04, 1, 0x0, 0, 5, 32, 10, 17);
        v0->unk_05 += 1;

        if ((v0->unk_05 * 2) < 10) {
            u32 v2 = 5 + (10 / 2);

            sub_020198C0(v1->unk_04, 1, v1->unk_30->rawData, 0, 5 + v0->unk_05, 32, (10 / 2) - v0->unk_05);
            sub_020198E8(v1->unk_04, 1, 0, v2, 32, (10 / 2) - v0->unk_05, v1->unk_30->rawData, 0, 10 - v0->unk_05, 32, 10);
        } else {
            v0->unk_04++;
        }

        sub_02019448(v1->unk_04, 1);
        break;
    case 2:
        ov19_021DC074(param0, v0);
    }
}

void ov19_021DC29C (UnkStruct_ov19_021DBA9C * param0)
{
    UnkStruct_ov19_021DC29C * v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DC29C));

    if (v0) {
        u32 v1 = ov19_021D5F88(param0->unk_0C);

        sub_02019184(param0->unk_04, 1, 3, 0);
        sub_020198C0(param0->unk_04, 1, param0->unk_38->rawData, 0, 24, 32, 7);
        sub_0201ADA4(&param0->unk_10[2], 4);
        sub_0200B1B8(param0->unk_4BF8, v1, param0->unk_4BFC);
        sub_0201D78C(&param0->unk_10[2], 0, param0->unk_4BFC, 0, 0, 0xff, (u32)(((2 & 0xff) << 16) | ((1 & 0xff) << 8) | ((4 & 0xff) << 0)), NULL);
        sub_0201A954(&param0->unk_10[2]);

        ov19_021DC4F8(param0, v1);

        v0->unk_16 = 0;
        v0->unk_00 = param0;
        v0->unk_04 = param0->unk_04;
        v0->unk_08 = (0 << FX32_SHIFT);
        v0->unk_0C = 56 << FX32_SHIFT;
        v0->unk_10 = (v0->unk_0C - v0->unk_08) / 6;
        v0->unk_14 = 6;

        param0->unk_DC = ov19_021D77C8(ov19_021DC37C, v0, 0);
    }
}

BOOL ov19_021DC364 (UnkStruct_ov19_021DBA9C * param0)
{
    return param0->unk_DC == NULL;
}

static void ov19_021DC374 (void * param0)
{
    UnkStruct_ov19_021DBA9C * v0 = param0;
    v0->unk_DC = NULL;
}

static void ov19_021DC37C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021DC29C * v0 = param1;

    switch (v0->unk_16) {
    case 0:
        v0->unk_16++;
        break;
    case 1:
        if (v0->unk_14) {
            v0->unk_14--;
            v0->unk_08 += v0->unk_10;
            sub_02019184(v0->unk_04, 1, 3, (v0->unk_08 >> FX32_SHIFT));
            ov19_021DC5B8(v0->unk_00, (224 << FX32_SHIFT) - v0->unk_08);
        } else {
            sub_02019184(v0->unk_04, 1, 3, (v0->unk_0C >> FX32_SHIFT));
            ov19_021DC5B8(v0->unk_00, (224 << FX32_SHIFT) - v0->unk_0C);
            ov19_021D79B8(v0, ov19_021DC374, v0->unk_00);
            sub_0200DA58(param0);
        }
        break;
    }
}

void ov19_021DC3F4 (UnkStruct_ov19_021DBA9C * param0)
{
    UnkStruct_ov19_021DC29C * v0 = Heap_AllocFromHeap(10, sizeof(UnkStruct_ov19_021DC29C));

    if (v0) {
        v0->unk_16 = 0;
        v0->unk_00 = param0;
        v0->unk_04 = param0->unk_04;
        v0->unk_08 = 56 << FX32_SHIFT;
        v0->unk_0C = 0 << FX32_SHIFT;
        v0->unk_10 = (v0->unk_0C - v0->unk_08) / 6;
        v0->unk_14 = 6;
        param0->unk_DC = ov19_021D77C8(ov19_021DC46C, v0, 0);
    }
}

BOOL ov19_021DC43C (UnkStruct_ov19_021DBA9C * param0)
{
    if (param0->unk_DC == NULL) {
        sub_02019184(param0->unk_04, 1, 3, 0);
        ov19_021DC5E0(param0);
        return 1;
    }

    return 0;
}

static void ov19_021DC464 (void * param0)
{
    UnkStruct_ov19_021DBA9C * v0 = param0;
    v0->unk_DC = NULL;
}

static void ov19_021DC46C (UnkStruct_0201CD38 * param0, void * param1)
{
    UnkStruct_ov19_021DC29C * v0 = param1;

    if (v0->unk_14) {
        v0->unk_14--;
        v0->unk_08 += v0->unk_10;
        sub_02019184(v0->unk_04, 1, 3, (v0->unk_08 >> FX32_SHIFT));
        ov19_021DC5B8(v0->unk_00, (224 << FX32_SHIFT) - v0->unk_08);
    } else {
        sub_02019184(v0->unk_04, 1, 3, (v0->unk_0C >> FX32_SHIFT));
        ov19_021DC5B8(v0->unk_00, (224 << FX32_SHIFT) - v0->unk_0C);
        sub_02019CB8(v0->unk_04, 1, 0x0, 0, 0, 32, 32, 17);
        sub_02019448(v0->unk_04, 1);
        ov19_021D79B8(v0, ov19_021DC464, v0->unk_00);
        sub_0200DA58(param0);
    }
}

static void ov19_021DC4F8 (UnkStruct_ov19_021DBA9C * param0, u32 param1)
{
    if (param1 != 0) {
        UnkStruct_ov19_021DA864 v0;
        UnkStruct_ov19_021DA384 * v1;
        NNSG2dImageProxy v2;
        NNSG2dCharacterData * v3;
        void * v4;

        v1 = ov19_021D77D8(param0->unk_00);
        ov19_021D783C(&v0, &v2, ov19_021D77D0(param0->unk_00), v1->unk_1C, v1->unk_20, 0);
        NNS_G2dInitImageProxy(&v2);

        v4 = sub_02006F50(16, sub_0207CE78(param1, 1), 0, &v3, 10);
        v3->mapingType = GX_GetOBJVRamModeChar();
        NNS_G2dLoadImage1DMapping(v3, 1520 * 0x20, NNS_G2D_VRAM_TYPE_2DMAIN, &v2);

        sub_02006E84(16, sub_0207CE78(param1, 2), 1, 6 * 0x20, 0x20, 10);
        param0->unk_90 = ov19_021D785C(param0->unk_08, &v0, 18, 224, 0, NNS_G2D_VRAM_TYPE_2DMAIN);

        if (param0->unk_90) {
            sub_02021E90(param0->unk_90, 6);
        }

        Heap_FreeToHeap(v4);
    }
}

static void ov19_021DC5B8 (UnkStruct_ov19_021DBA9C * param0, fx32 param1)
{
    if (param0->unk_90) {
        VecFx32 v0;

        v0.x = 18 << FX32_SHIFT;
        v0.y = param1;
        v0.z = 0;

        sub_02021C50(param0->unk_90, &v0);
    }
}

static void ov19_021DC5E0 (UnkStruct_ov19_021DBA9C * param0)
{
    if (param0->unk_90) {
        sub_02021BD4(param0->unk_90);
    }
}
