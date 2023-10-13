#include <nitro.h>
#include <string.h>

#include "overlay062/ov62_const_funcptr_tables.h"

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_decls/struct_020507E4_decl.h"

#include "struct_defs/struct_0200D0F4.h"
#include "struct_defs/struct_0208C06C.h"
#include "overlay062/struct_ov62_022312B0.h"
#include "overlay104/struct_ov104_0223F9E0.h"

#include "unk_02002F38.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200C6E4.h"
#include "unk_02012744.h"
#include "heap.h"
#include "unk_02018340.h"
#include "unk_0201D15C.h"
#include "gx_layers.h"
#include "unk_02022594.h"
#include "unk_0202D05C.h"
#include "unk_02030A80.h"
#include "unk_020507CC.h"
#include "unk_0206AFE0.h"
#include "unk_0208B284.h"
#include "overlay062/ov62_0222F2C0.h"
#include "overlay062/ov62_022300D8.h"
#include "overlay062/ov62_02231690.h"

typedef struct {
    int unk_00;
    f32 unk_04[5];
    int unk_18[5];
    int unk_2C[5];
    CellActorData * unk_40[5];
    CellActorData * unk_54[5];
    CellActorData * unk_68[5];
    CellActorData * unk_7C[5];
    int unk_90;
    CellActorData * unk_94[2];
    UnkStruct_ov62_022312B0 unk_9C[2];
    int unk_D4;
    int unk_D8;
} UnkStruct_ov62_02236CBC;

static void ov62_02236CBC(UnkStruct_0208C06C * param0, int param1);
static void ov62_02236CF8(UnkStruct_0208C06C * param0, int param1);
static void ov62_02236D48(UnkStruct_0208C06C * param0);
static void ov62_02236DE8(UnkStruct_0208C06C * param0);
static void ov62_02236E14(UnkStruct_0208C06C * param0);
static void ov62_022370D4(u16 * param0, u16 param1, u16 param2);
static void ov62_022371CC(UnkStruct_0208C06C * param0);
static void ov62_022374A8(UnkStruct_0208C06C * param0);
static BOOL ov62_022375A4(UnkStruct_0208C06C * param0);
static BOOL ov62_022376C4(UnkStruct_0208C06C * param0);
static void ov62_02237814(UnkStruct_0208C06C * param0);
static BOOL ov62_02237884(UnkStruct_0208C06C * param0);
static BOOL ov62_02237AC0(UnkStruct_0208C06C * param0);
static BOOL ov62_02237B00(UnkStruct_0208C06C * param0);

BOOL(*const Unk_ov62_02248C50[])(UnkStruct_0208C06C *) = {
    ov62_02237884,
    ov62_02237AC0,
    ov62_02237B00,
};

static void ov62_02236CBC (UnkStruct_0208C06C * param0, int param1)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;

    if (param1 == 0) {
        sub_0200D4C4(v0->unk_9C[1].unk_08, 128, 232);
    } else {
        sub_0200D4C4(v0->unk_9C[1].unk_08, 80, 232);
    }

    sub_020128C4(v0->unk_9C[1].unk_0C, 36, -8);
}

static void ov62_02236CF8 (UnkStruct_0208C06C * param0, int param1)
{
    NARC * v0 = param0->unk_14.unk_00;
    UnkStruct_02018340 * v1 = param0->unk_14.unk_10;
    UnkStruct_0200C6E4 * v2 = param0->unk_14.unk_04;
    UnkStruct_0200C704 * v3 = param0->unk_14.unk_08;
    UnkStruct_02002F38 * v4 = param0->unk_14.unk_14;

    sub_0200CC3C(v2, v3, v0, 50, 0, param1, 11924);
    sub_0200CE24(v2, v3, v0, 28, 0, 11924);
    sub_0200CE54(v2, v3, v0, 29, 0, 11924);
}

static void ov62_02236D48 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;

    ov62_02236CF8(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    v0->unk_9C[1].unk_08 = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    ov62_0223118C(&v0->unk_9C[1], &param0->unk_14, NNS_G2D_VRAM_TYPE_2DSUB);
    ov62_0223124C(&v0->unk_9C[1], &param0->unk_14, 3);

    sub_0200D4C4(v0->unk_9C[1].unk_08, 128, 232);
    sub_020128C4(v0->unk_9C[1].unk_0C, 36, -8);
    sub_020129D0(v0->unk_9C[1].unk_0C, 1);

    v0->unk_94[1] = ov62_022313E0(param0, NNS_G2D_VRAM_TYPE_2DSUB);

    sub_0200D4C4(v0->unk_94[1], 220, 160 + 64);
    sub_0200D364(v0->unk_94[1], 2);
    sub_0200D3F4(v0->unk_94[1], 0);

    ov62_02236CBC(param0, 1);
}

static void ov62_02236DE8 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;

    ov62_022312B0(&v0->unk_9C[1]);
    sub_0200D0F4(v0->unk_9C[1].unk_08);
    sub_0200D0F4(v0->unk_94[1]);
    ov62_022313BC(param0);
}

static void ov62_02236E14 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;
    NARC * v1 = param0->unk_14.unk_00;
    UnkStruct_02018340 * v2 = param0->unk_14.unk_10;
    UnkStruct_0200C6E4 * v3 = param0->unk_14.unk_04;
    UnkStruct_0200C704 * v4 = param0->unk_14.unk_08;
    UnkStruct_02002F38 * v5 = param0->unk_14.unk_14;

    sub_020070E8(param0->unk_14.unk_00, 62, param0->unk_14.unk_10, 6, 0, 0, 0, 102);
    sub_0200710C(v1, 68, v2, 6, 0, 0, 0, 102);
    sub_0200CDC4(v5, 3, v3, v4, v1, ov62_02231710(param0, 0), 0, 1, NNS_G2D_VRAM_TYPE_2DSUB, 29292);
    sub_0200CC3C(v3, v4, v1, 66, 0, NNS_G2D_VRAM_TYPE_2DSUB, 29292);
    sub_0200CE24(v3, v4, v1, 71, 0, 29292);
    sub_0200CE54(v3, v4, v1, 72, 0, 29292);
    sub_0200CDC4(v5, 2, v3, v4, v1, ov62_02231710(param0, 1), 0, 6, NNS_G2D_VRAM_TYPE_2DMAIN, 28282);
    sub_0200CC3C(v3, v4, v1, 64, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 28282);
    sub_0200CE24(v3, v4, v1, 38, 0, 28282);
    sub_0200CE54(v3, v4, v1, 39, 0, 28282);

    {
        int v6;
        int v7[5] = {125, 291, 297, 295, 293};
        int v8[5] = {126, 292, 298, 296, 294};
        int v9 = 9;
        int v10 = 10;

        for (v6 = 0; v6 < 5; v6++) {
            if (v6 == 3) {
                sub_0200CDC4(v5, 2, v3, v4, v1, 92, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 18181 + v6);
                sub_0200CC3C(v3, v4, v1, 91, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 18181 + v6);
            } else {
                sub_0200CD7C(v5, 2, v3, v4, 146, v7[v6], 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 18181 + v6);
                sub_0200D888(v3, v4, 146, v8[v6], 0, NNS_G2D_VRAM_TYPE_2DMAIN, 18181 + v6);
            }
        }

        sub_0200CE0C(v3, v4, 146, v9, 0, 18181);
        sub_0200CE3C(v3, v4, 146, v10, 0, 18181);
        sub_0200CE24(v3, v4, v1, 89, 0, 18181 + 1);
        sub_0200CE54(v3, v4, v1, 90, 0, 18181 + 1);
    }

    {
        int v11 = 13;
        int v12 = 14;
        int v13 = 9;
        int v14 = 10;
        int v15 = sub_02030BAC(param0->unk_88C[0]);

        v3 = param0->unk_14.unk_04;
        v4 = param0->unk_14.unk_08;
        v5 = param0->unk_14.unk_14;

        if (v15 != 0) {
            v11 = 15;
            v12 = 16;
        }

        sub_0200CD7C(v5, 2, v3, v4, 146, v11, 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 165535);
        sub_0200CE0C(v3, v4, 146, v13, 0, 165535);
        sub_0200CE3C(v3, v4, 146, v14, 0, 165535);
        sub_0200D888(v3, v4, 146, v12, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 165535);
    }
}

static void ov62_022370D4 (u16 * param0, u16 param1, u16 param2)
{
    int v0, v1, v2, v3;
    u32 v4;

    for (v0 = 0; v0 < param1; v0++) {
        param0++;
    }

    for ( ; v0 < param1 + param2; v0++) {
        v1 = ((*param0) & 0x1f);
        v2 = (((*param0) >> 5) & 0x1f);
        v3 = (((*param0) >> 10) & 0x1f);

        v4 = (((v1) * 76 + (v2) * 151 + (v3) * 29) >> 8);

        *param0 = (u16)((v4 << 10) | (v4 << 5) | v4);
        param0++;
    }
}

static void ov62_0223712C (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;
    UnkStruct_02018340 * v1 = param0->unk_14.unk_10;
    UnkStruct_0200C6E4 * v2 = param0->unk_14.unk_04;
    UnkStruct_0200C704 * v3 = param0->unk_14.unk_08;
    UnkStruct_02002F38 * v4 = param0->unk_14.unk_14;
    int v5;
    int v6[5];

    {
        UnkStruct_020507E4 * v7 = sub_020507E4(param0->unk_830);

        v6[0] = sub_0206B5C8(v7);
        v6[1] = sub_0206B588(v7);
        v6[2] = sub_0206B5B8(v7);
        v6[3] = sub_0206B5A8(v7);
        v6[4] = sub_0206B598(v7);
    }

    for (v5 = 0; v5 < 5; v5++) {
        if (v6[v5] != 0) {
            int v8[] = {0, 1, 4, 3, 2};

            if (v6[v5] == 2) {
                UnkStruct_02002F38 * v9 = param0->unk_14.unk_14;
                u16 * v10;

                v10 = sub_0200316C(v9, 2);
                ov62_022370D4(v10, (4 + v8[v5]) * 16, 16);
            }
        }
    }

    sub_02003858(v4, 1);
}

static void ov62_022371CC (UnkStruct_0208C06C * param0)
{
    int v0;
    int v1 = 0;
    int v2[4 + 1];
    int v3[5];
    UnkStruct_ov62_02236CBC * v4 = param0->unk_860;
    UnkStruct_02018340 * v5 = param0->unk_14.unk_10;
    UnkStruct_0200C6E4 * v6 = param0->unk_14.unk_04;
    UnkStruct_0200C704 * v7 = param0->unk_14.unk_08;
    UnkStruct_02002F38 * v8 = param0->unk_14.unk_14;
    UnkStruct_ov104_0223F9E0 v9;

    v9.unk_00 = 0;
    v9.unk_02 = 256;
    v9.unk_04 = 0;
    v9.unk_06 = 0;
    v9.unk_08 = 10;
    v9.unk_0C = 0;
    v9.unk_10 = 1;
    v9.unk_2C = 0;
    v9.unk_30 = 0;
    v9.unk_14[4] = 0xffffffff;
    v9.unk_14[5] = 0xffffffff;
    v9.unk_14[0] = 165535;
    v9.unk_14[1] = 165535;
    v9.unk_14[2] = 165535;
    v9.unk_14[3] = 165535;

    for (v0 = 0; v0 < 5; v0++) {
        v4->unk_40[v0] = sub_0200CE6C(param0->unk_14.unk_04, param0->unk_14.unk_08, &v9);
        sub_0200D364(v4->unk_40[v0], 1);
        sub_0200D330(v4->unk_40[v0]);
        sub_0200D6E8(v4->unk_40[v0], v4->unk_04[v0], v4->unk_04[v0]);
    }

    for (v0 = 0; v0 < 5; v0++) {
        v9.unk_14[0] = 18181 + v0;
        v9.unk_14[1] = 18181 + v0;

        if (v0 == 3) {
            v9.unk_14[2] = 18181 + 1;
            v9.unk_14[3] = 18181 + 1;
        } else {
            v9.unk_14[2] = 18181;
            v9.unk_14[3] = 18181;
        }

        v4->unk_54[v0] = sub_0200CE6C(param0->unk_14.unk_04, param0->unk_14.unk_08, &v9);

        if (v0 == 3) {
            sub_0200D364(v4->unk_54[v0], 0);
        } else {
            sub_0200D364(v4->unk_54[v0], 1);
        }

        sub_0200D330(v4->unk_54[v0]);
        sub_0200D6E8(v4->unk_54[v0], v4->unk_04[v0], v4->unk_04[v0]);
        sub_0200D41C(v4->unk_54[v0], 10 + v0);
    }

    v9.unk_14[0] = 28282;
    v9.unk_14[1] = 28282;
    v9.unk_14[2] = 28282;
    v9.unk_14[3] = 28282;
    v9.unk_14[4] = 0xffffffff;
    v9.unk_14[5] = 0xffffffff;
    v9.unk_08 = 20;

    {
        UnkStruct_020507E4 * v10 = sub_020507E4(param0->unk_830);

        v3[0] = sub_0206B5C8(v10);
        v3[1] = sub_0206B588(v10);
        v3[2] = sub_0206B5B8(v10);
        v3[3] = sub_0206B5A8(v10);
        v3[4] = sub_0206B598(v10);
    }

    for (v0 = 0; v0 < 5; v0++) {
        v4->unk_68[v0] = sub_0200CE6C(param0->unk_14.unk_04, param0->unk_14.unk_08, &v9);

        if (v3[v0] == 0) {
            sub_0200D364(v4->unk_68[v0], 5);
            sub_0200D41C(v4->unk_68[v0], 4 + 5);
            sub_0200D3F4(v4->unk_54[v0], 0);
            sub_0200D3F4(v4->unk_40[v0], 0);
        } else {
            int v11[] = {0, 1, 4, 3, 2};

            sub_0200D364(v4->unk_68[v0], v11[v0]);
            sub_0200D41C(v4->unk_68[v0], 4 + v11[v0]);
        }

        sub_0200D330(v4->unk_68[v0]);
        sub_0200D6E8(v4->unk_68[v0], v4->unk_04[v0], v4->unk_04[v0]);
    }

    v9.unk_14[0] = 29292;
    v9.unk_14[1] = 29292;
    v9.unk_14[2] = 29292;
    v9.unk_14[3] = 29292;
    v9.unk_14[4] = 0xffffffff;
    v9.unk_14[5] = 0xffffffff;
    v9.unk_10 = 2;
    v9.unk_08 = 0;

    {
        int v12 = 1000;
        int v13 = v4->unk_90;
        BOOL v14 = 0;

        for (v0 = 0; v0 < 4; v0++) {
            v2[v0] = v13 / v12;
            v13 %= v12;
            v12 /= 10;

            if ((v2[v0] == 0) && (v14 == 0)) {
                v1++;
            } else {
                v14 = 1;
            }
        }

        v2[4] = 10;
    }

    for (v0 = 0; v0 < 4 + 1; v0++) {
        v4->unk_7C[v0] = sub_0200CE6C(param0->unk_14.unk_04, param0->unk_14.unk_08, &v9);

        if (v2[v0] == 0) {
            if (v0 < v1) {
                sub_0200D3F4(v4->unk_7C[v0], 0);
            }
        }

        sub_0200D364(v4->unk_7C[v0], v2[v0]);
        ov62_02230E68(v4->unk_7C[v0], 88 + (16 * v0), 72);
        sub_0200D330(v4->unk_7C[v0]);
    }

    sub_0200D3F4(v4->unk_7C[4 - 1], 1);
    sub_0200D3F4(v4->unk_7C[4 - 0], 1);

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200D6A4(v4->unk_40[v0], 2);
        sub_0200D6A4(v4->unk_54[v0], 2);
        sub_0200D6A4(v4->unk_68[v0], 2);
    }
}

static void ov62_022374A8 (UnkStruct_0208C06C * param0)
{
    int v0;
    UnkStruct_ov62_02236CBC * v1 = param0->unk_860;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200D070(param0->unk_14.unk_08, 18181 + v0);
        sub_0200D080(param0->unk_14.unk_08, 18181 + v0);
        sub_0200D0F4(v1->unk_54[v0]);
    }

    sub_0200D090(param0->unk_14.unk_08, 18181);
    sub_0200D0A0(param0->unk_14.unk_08, 18181);
    sub_0200D090(param0->unk_14.unk_08, 18181 + 1);
    sub_0200D0A0(param0->unk_14.unk_08, 18181 + 1);

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200D0F4(v1->unk_40[v0]);
    }

    sub_0200D070(param0->unk_14.unk_08, 165535);
    sub_0200D080(param0->unk_14.unk_08, 165535);
    sub_0200D090(param0->unk_14.unk_08, 165535);
    sub_0200D0A0(param0->unk_14.unk_08, 165535);

    for (v0 = 0; v0 < 5; v0++) {
        sub_0200D0F4(v1->unk_68[v0]);
    }

    sub_0200D070(param0->unk_14.unk_08, 28282);
    sub_0200D080(param0->unk_14.unk_08, 28282);
    sub_0200D090(param0->unk_14.unk_08, 28282);
    sub_0200D0A0(param0->unk_14.unk_08, 28282);

    for (v0 = 0; v0 < 4 + 1; v0++) {
        sub_0200D0F4(v1->unk_7C[v0]);
    }

    sub_0200D070(param0->unk_14.unk_08, 29292);
    sub_0200D080(param0->unk_14.unk_08, 29292);
    sub_0200D090(param0->unk_14.unk_08, 29292);
    sub_0200D0A0(param0->unk_14.unk_08, 29292);
}

static BOOL ov62_022375A4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;
    int v1;
    s16 v2, v3;
    fx32 v4, v5;

    for (v1 = 0; v1 < 5; v1++) {
        v0->unk_2C[v1] += 20;
        v0->unk_2C[v1] %= 360;
    }

    ov62_022315E0(&v0->unk_D4, &v0->unk_D8, 0, 0);

    for (v1 = 0; v1 < 5; v1++) {
        if (v0->unk_2C[0] != 0) {
            v0->unk_04[v1] += 0.05f;
        } else {
            sub_0200D6A4(v0->unk_40[v1], 0);
            sub_0200D6A4(v0->unk_54[v1], 0);
            sub_0200D6A4(v0->unk_68[v1], 0);
            v0->unk_04[v1] = 1.0f;
        }

        v4 = (128 << FX32_SHIFT) + sub_0201D250(v0->unk_2C[v1]) * v0->unk_18[v1];
        v5 = (106 << FX32_SHIFT) - sub_0201D264(v0->unk_2C[v1]) * v0->unk_18[v1];

        sub_0200D614(v0->unk_68[v1], v4, v5);
        sub_0200D550(v0->unk_68[v1], &v2, &v3);
        sub_0200D4C4(v0->unk_40[v1], v2 - 32, v3 - 2);
        sub_0200D4C4(v0->unk_54[v1], v2 + 16, v3 - 2);
        sub_0200D6E8(v0->unk_68[v1], v0->unk_04[v1], v0->unk_04[v1]);
        sub_0200D6E8(v0->unk_40[v1], v0->unk_04[v1], v0->unk_04[v1]);
        sub_0200D6E8(v0->unk_54[v1], v0->unk_04[v1], v0->unk_04[v1]);
    }

    if (v0->unk_2C[0] == 0) {
        return 0;
    }

    return 1;
}

static BOOL ov62_022376C4 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;
    int v1;
    s16 v2, v3;
    fx32 v4, v5;

    for (v1 = 0; v1 < 5; v1++) {
        v0->unk_2C[v1] += 20;
        v0->unk_2C[v1] %= 360;
    }

    if (v0->unk_2C[0] == 20) {
        for (v1 = 0; v1 < 5; v1++) {
            sub_0200D6A4(v0->unk_40[v1], 2);
            sub_0200D6A4(v0->unk_54[v1], 2);
            sub_0200D6A4(v0->unk_68[v1], 2);
        }
    }

    ov62_022315E0(&v0->unk_D4, &v0->unk_D8, 1, 0);

    for (v1 = 0; v1 < 5; v1++) {
        if (v0->unk_2C[0] != 0) {
            v0->unk_04[v1] -= 0.05f;
        } else {
            sub_0200D3F4(v0->unk_68[v1], 0);
            sub_0200D3F4(v0->unk_40[v1], 0);
            sub_0200D3F4(v0->unk_54[v1], 0);
        }

        v4 = (128 << FX32_SHIFT) - sub_0201D250(v0->unk_2C[v1]) * v0->unk_18[v1];
        v5 = (106 << FX32_SHIFT) - sub_0201D264(v0->unk_2C[v1]) * v0->unk_18[v1];

        sub_0200D614(v0->unk_68[v1], v4, v5);
        sub_0200D550(v0->unk_68[v1], &v2, &v3);
        sub_0200D4C4(v0->unk_40[v1], v2 - 32, v3 - 2);
        sub_0200D4C4(v0->unk_54[v1], v2 + 16, v3 - 2);
        sub_0200D6E8(v0->unk_68[v1], v0->unk_04[v1], v0->unk_04[v1]);
        sub_0200D6E8(v0->unk_40[v1], v0->unk_04[v1], v0->unk_04[v1]);
        sub_0200D6E8(v0->unk_54[v1], v0->unk_04[v1], v0->unk_04[v1]);
    }

    if (v0->unk_2C[0] == 0) {
        return 0;
    }

    return 1;
}

static void ov62_02237814 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;
    int v1;
    int v2 = 0;
    s16 v3, v4;
    fx32 v5, v6;
    static s16 v7[][2] = {
        {128, 32 + 10},
        {189, 77 + 10},
        {172, 124 + 10},
        {83, 124 + 10},
        {66, 77 + 10},
    };

    for (v1 = 0; v1 < 5; v1++) {
        v5 = v7[v1][0] << FX32_SHIFT;
        v6 = v7[v1][1] << FX32_SHIFT;

        sub_0200D614(v0->unk_68[v1], v5, v6);
        sub_0200D550(v0->unk_68[v1], &v3, &v4);
        sub_0200D4C4(v0->unk_40[v1], v3 - 32, v4 - 2);
        sub_0200D4C4(v0->unk_54[v1], v3 + 16, v4 - 2);
    }
}

static BOOL ov62_02237884 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0;

    if (param0->unk_08 == 0) {
        v0 = Heap_AllocFromHeap(102, sizeof(UnkStruct_ov62_02236CBC));
        MI_CpuFill8(v0, 0, sizeof(UnkStruct_ov62_02236CBC));
        param0->unk_860 = v0;
        v0->unk_00 = 0;

        {
            int v1;

            for (v1 = 0; v1 < 5; v1++) {
                if ((v1 == 2) || (v1 == 3)) {
                    v0->unk_18[v1] = 52;
                } else {
                    v0->unk_18[v1] = 64;
                }

                v0->unk_2C[v1] = v1 * (360 / 5);
                v0->unk_04[v1] = 0.2f;
            }
        }
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        ov62_022315C8(&v0->unk_D4, &v0->unk_D8, 0);
        ov62_02231560(&v0->unk_D4, &v0->unk_D8, 0, 0, GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1, 0);
        sub_02005748(1377);
        param0->unk_08++;
    } else {
        v0 = param0->unk_860;
    }

    switch (param0->unk_08) {
    case 1:
        if (ov62_02231664(&v0->unk_00, 1)) {
            UnkStruct_0202D750 * v2 = sub_0202D750(param0->unk_830);

            v0->unk_90 = sub_0202D230(v2, 0, 0);
            param0->unk_08++;
        }

        sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_00, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_00, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_00, param0->unk_14.unk_44);
        break;

    case 2:
        ov62_02234540(param0, 1);
        ov62_02231454(param0);
        ov62_02234540(param0, 0);
        ov62_0223376C(param0, 0);
        sub_0208B9E0(param0->unk_6F0, 0);
        ov62_02234314();
        sub_02019060(6, 2);
        ov62_02236E14(param0);
        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC | 0x10, v0->unk_00, param0->unk_14.unk_44);
        param0->unk_08++;
        break;
    case 3:
        if (ov62_02233790(param0) == 0) {
            break;
        }

        ov62_02234540(param0, 1);
        ov62_02236D48(param0);
        ov62_022371CC(param0);
        ov62_0223712C(param0);
        ov62_02234540(param0, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 1);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 1);
        param0->unk_08++;
        break;
    case 4:
    {
        BOOL v3 = ov62_022375A4(param0);

        ov62_022315E0(&v0->unk_D4, &v0->unk_D8, 0, 0);
        ov62_02231664(&v0->unk_00, 0);

        if (v3 == 0) {
            param0->unk_08++;
            ov62_02237814(param0);
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC | 0x10, v0->unk_00, param0->unk_14.unk_44);
    }
    break;
    default:
        ov62_0222FB60(param0, 1);
        break;
    }

    return 0;
}

static BOOL ov62_02237AC0 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;

    {
        u32 v1, v2;
        BOOL v3 = 0;

        v3 = sub_020227C0(&v1, &v2);

        if (v3) {
            if ((v1 > 10 * 8) && (v1 < 22 * 8) && (v2 > 19 * 8) && (v2 < 22 * 8)) {
                sub_02005748(1379);
                ov62_0222FB60(param0, 2);
            }
        }
    }

    return 0;
}

static BOOL ov62_02237B00 (UnkStruct_0208C06C * param0)
{
    UnkStruct_ov62_02236CBC * v0 = param0->unk_860;

    switch (param0->unk_08) {
    case 0:
        if (v0->unk_00 == 0) {
            sub_02005748(1378);
        }
        if (v0->unk_00 != 16) {
            v0->unk_00 += 2;
        }

        sub_02003A2C(param0->unk_14.unk_14, 3, 0xC | 0x10, v0->unk_00, param0->unk_14.unk_44);
        sub_02003A2C(param0->unk_14.unk_14, 1, 0x4018, v0->unk_00, param0->unk_14.unk_44);

        if (ov62_022376C4(param0) == 0) {
            v0->unk_00 = 0;
            param0->unk_08++;
        }
        break;
    case 1:
        param0->unk_08++;
    case 2:
        ov62_02234540(param0, 1);
        ov62_022374A8(param0);
        ov62_02236DE8(param0);
        ov62_02234540(param0, 0);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG2, 0);

        v0->unk_00 = 16;
        v0->unk_00 = 0;
        param0->unk_08++;
        break;
    case 3:
        ov62_0222F824(1);
        ov62_02234540(param0, 1);
        ov62_0223146C(param0);
        ov62_02234540(param0, 0);
        sub_02019EBC(param0->unk_14.unk_10, 2);
        sub_02019EBC(param0->unk_14.unk_10, 6);
        sub_02019EBC(param0->unk_14.unk_10, 3);
        sub_02019EBC(param0->unk_14.unk_10, 7);
        param0->unk_08++;
        break;
    case 4:
        if (v0->unk_00 != 0) {
            v0->unk_00 -= 2;
        } else {
            param0->unk_08++;
            ov62_02231688(&v0->unk_00);
            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, v0->unk_00, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC | 0x10, v0->unk_00, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_00, param0->unk_14.unk_44);
        }

        break;
    default:
        if (ov62_02231664(&v0->unk_00, 0)) {
            G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 8);
            G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_OBJ, 7, 8);
            Heap_FreeToHeap(v0);
            ov62_022318E8(param0);
            ov62_02231688(&v0->unk_00);
            sub_02003A2C(param0->unk_14.unk_14, 2, 0xC, 16, param0->unk_14.unk_44);
            ov62_0222FB44(param0, 1, 1, param0->unk_10);
            ov62_0222FB60(param0, 5);
        } else {
            sub_02003A2C(param0->unk_14.unk_14, 3, 0xC, v0->unk_00, param0->unk_14.unk_44);
            sub_02003A2C(param0->unk_14.unk_14, 1, 0x2, v0->unk_00, param0->unk_14.unk_44);
        }

        break;
    }

    return 0;
}
