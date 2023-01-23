#include <nitro.h>
#include <string.h>

#include "overlay017/struct_ov17_022444BC.h"
#include "overlay017/struct_ov17_022463C4.h"
#include "overlay017/struct_ov17_02246540.h"
#include "overlay017/struct_ov17_02246F24.h"

#include "move_table.h"
#include "unk_020933F8.h"
#include "unk_02094EDC.h"
#include "overlay017/ov17_022413D8.h"
#include "overlay017/ov17_02243AC4.h"
#include "overlay017/ov17_02245F14.h"

typedef int (* UnkFuncPtr_ov17_02253AF8)(UnkStruct_ov17_02246F24 *, UnkStruct_ov17_02246540 *, int, int, int);

typedef struct {
    UnkFuncPtr_ov17_02253AF8 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06[2];
} UnkStruct_ov17_02253AF8;

static void ov17_02246540(UnkStruct_ov17_02246540 * param0);
static int ov17_02246578(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246668(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246774(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_022467CC(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246830(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246834(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_0224687C(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_022468D4(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246918(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246960(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_022469DC(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_022469FC(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246A50(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246AB0(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246B74(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246BC0(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246C10(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246C4C(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246C88(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246CDC(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246DA4(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246E08(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);
static int ov17_02246E68(UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4);

__attribute__((aligned(4))) static const u8 Unk_ov17_02253AEC[] = {
	0xA,
	0x14,
	0x1E,
	0x28
};

static const UnkStruct_ov17_02253AF8 Unk_ov17_02253AF8[] = {
    {ov17_02246830, 0x3, 0xFF},
    {ov17_02246578, 0x3, 0xFF},
    {ov17_02246668, 0x3, 0xFF},
    {ov17_02246774, 0x5, 0xFF},
    {ov17_022467CC, 0x3, 0xFF},
    {ov17_02246830, 0x3, 0xFF},
    {ov17_02246834, 0x5, 0x0},
    {ov17_0224687C, 0x3, 0xFF},
    {ov17_022468D4, 0x3, 0xFF},
    {ov17_02246918, 0x5, 0x0},
    {ov17_02246960, 0x3, 0xFF},
    {ov17_022469DC, 0x3, 0xFF},
    {ov17_02246A50, 0x3, 0xFF},
    {ov17_022469FC, 0x3, 0xFF},
    {ov17_02246AB0, 0x3, 0xFF},
    {ov17_02246B74, 0x3, 0xFF},
    {ov17_02246BC0, 0x3, 0xFF},
    {ov17_02246C10, 0x3, 0xFF},
    {ov17_02246C4C, 0x3, 0xFF},
    {ov17_02246C88, 0x3, 0xFF},
    {ov17_02246CDC, 0x3, 0xFF},
    {ov17_02246DA4, 0x3, 0xFF},
    {ov17_02246E08, 0x3, 0xFF},
    {ov17_02246E68, 0x6, 0xFF}
};

static void ov17_02245F14 (UnkStruct_ov17_022444BC * param0, int param1, int param2, int param3, int param4, int param5, int param6)
{
    param0->unk_12 = param1;
    param0->unk_13 = param2;

    if (param3 != 30000) {
        param0->unk_0C.unk_00 = param3;
    }

    if (param4 != 30000) {
        param0->unk_0C.unk_01 = param4;
    }

    if (param5 != 30000) {
        param0->unk_0C.unk_02 = param5;
    }

    if (param6 != 30000) {
        param0->unk_0C.unk_04 = param6;
    }
}

void ov17_02245F44 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1)
{
    int v0;

    *param1 = param0->unk_220.unk_30;

    ov17_02246540(param1);
    MI_CpuClear8(param1->unk_00, sizeof(UnkStruct_ov17_022444BC) * 4);

    for (v0 = 0; v0 < 4; v0++) {
        ov17_02243120(param0, &param1->unk_00[v0].unk_0C, v0);

        param1->unk_00[v0].unk_03 = param0->unk_220.unk_0E[v0];
        param1->unk_00[v0].unk_00 = param0->unk_220.unk_06[v0];
        param1->unk_00[v0].unk_02 = GetMoveAttribute(param1->unk_00[v0].unk_00, 10);
        param1->unk_00[v0].unk_09 = ov17_02243AC4(&param0->unk_220, v0);
    }
}

void ov17_02245FB4 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param1->unk_00[v0].unk_28_8 = param1->unk_00[v0].unk_28_4;
        param1->unk_00[v0].unk_28_10 = param1->unk_00[v0].unk_28_6;
    }

    for (v0 = 0; v0 < (1 + 2); v0++) {
        param1->unk_B0[v0] = param0->unk_220.unk_22[v0];
        param1->unk_B3[v0] = param0->unk_220.unk_22[v0];
    }
}

void ov17_02246018 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2)
{
    int v0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        param0->unk_220.unk_22[v0] = param1->unk_B3[v0];

        if (param0->unk_220.unk_22[v0] >= (10 * 5)) {
            param0->unk_220.unk_22[v0] = 0;
        }
    }
}

void ov17_02246044 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_220.unk_12[v0] += param1->unk_00[v0].unk_18;
        param0->unk_220.unk_1A[v0] = param1->unk_00[v0].unk_18;
    }

    param0->unk_220.unk_30 = *param1;
}

static void ov17_02246090 (UnkStruct_ov17_02246540 * param0, int param1)
{
    int v0;

    param0->unk_00[param1].unk_1A = param0->unk_00[param1].unk_18;
    param0->unk_00[param1].unk_1E = 0;
    param0->unk_00[param1].unk_20 = 0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        param0->unk_B0[v0] = param0->unk_B3[v0];
    }

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_00[v0].unk_14 = 0;
        param0->unk_00[v0].unk_12 = 0;
    }
}

void ov17_022460C8 (UnkStruct_ov17_02246540 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_00[v0].unk_1C = param0->unk_00[v0].unk_18;
    }
}

void ov17_022460DC (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2)
{
    u32 v0, v1;

    ov17_02246090(param1, param2);

    if (Unk_ov17_02253AF8[param1->unk_00[param2].unk_02].unk_05 == 0) {
        sub_02095790(param1->unk_00[param2].unk_02, 4, &v0, &v1);

        if (v0 != 0xffff) {
            ov17_02245F14(&param1->unk_00[param2], param1->unk_00[param2].unk_02, 4, param2, 30000, 30000, 30000);
        }
    }
}

void ov17_02246138 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2)
{
    ov17_02246090(param1, param2);

    param1->unk_00[param2].unk_04 = sub_02095734(param1->unk_00[param2].unk_02);
    param1->unk_00[param2].unk_18 = param1->unk_00[param2].unk_04;
}

void ov17_02246160 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3)
{
    int v0;

    ov17_02246090(param1, param2);

    if (Unk_ov17_02253AF8[param1->unk_00[param2].unk_02].unk_04 == 3) {
        Unk_ov17_02253AF8[param1->unk_00[param2].unk_02].unk_00(param0, param1, param2, param2, param3);
        param1->unk_00[param2].unk_14 = 1;
        param1->unk_00[param2].unk_18 += param1->unk_00[param2].unk_1E + param1->unk_00[param2].unk_20;
    }

    for (v0 = 0; v0 <= param3; v0++) {
        int v1 = param0->unk_220.unk_01[v0];

        if (Unk_ov17_02253AF8[param1->unk_00[v1].unk_02].unk_04 == 2) {
            ov17_02246090(param1, v1);
            Unk_ov17_02253AF8[param1->unk_00[v1].unk_02].unk_00(param0, param1, param2, v1, param3);
            param1->unk_00[v1].unk_14 = 1;
            param1->unk_00[v1].unk_18 += param1->unk_00[v1].unk_1E;
        }
    }
}

void ov17_02246228 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3)
{
    int v0;

    ov17_02246090(param1, param2);

    if (param1->unk_A0[param2].unk_00_16 != 0) {
        v0 = param1->unk_00[param2].unk_18;
        param1->unk_00[param2].unk_1E += v0;
        ov17_02245F14(&param1->unk_00[param2], param1->unk_A0[param2].unk_00_16, 0, param2, 30000, 30000, v0 / 10);
    }

    param1->unk_00[param2].unk_18 += param1->unk_00[param2].unk_1E + param1->unk_00[param2].unk_20;
}

BOOL ov17_022462A4 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3)
{
    int v0;

    ov17_02246090(param1, param2);

    if (Unk_ov17_02253AF8[param1->unk_00[param2].unk_02].unk_04 == 4) {
        Unk_ov17_02253AF8[param1->unk_00[param2].unk_02].unk_00(param0, param1, param2, param2, param3);
        param1->unk_00[param2].unk_14 = 1;
        param1->unk_00[param2].unk_18 += param1->unk_00[param2].unk_1E;
        return 1;
    }

    return 0;
}

BOOL ov17_02246304 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3)
{
    int v0;

    ov17_02246090(param1, param2);

    if (Unk_ov17_02253AF8[param1->unk_00[param2].unk_02].unk_04 == 5) {
        Unk_ov17_02253AF8[param1->unk_00[param2].unk_02].unk_00(param0, param1, param2, param2, param3);
        param1->unk_00[param2].unk_14 = 1;
        param1->unk_00[param2].unk_18 += param1->unk_00[param2].unk_1E;
        return 1;
    }

    return 0;
}

BOOL ov17_02246364 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3)
{
    int v0;

    ov17_02246090(param1, param2);

    if (Unk_ov17_02253AF8[param1->unk_00[param2].unk_02].unk_04 == 6) {
        Unk_ov17_02253AF8[param1->unk_00[param2].unk_02].unk_00(param0, param1, param2, param2, param3);
        param1->unk_00[param2].unk_14 = 1;
        param1->unk_00[param2].unk_18 += param1->unk_00[param2].unk_1E;
        return 1;
    }

    return 0;
}

void ov17_022463C4 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, UnkStruct_ov17_022463C4 * param3)
{
    int v0, v1, v2;

    ov17_02246090(param1, param2);

    param3->unk_0C = 0;
    param3->unk_0D = 0;

    v1 = param0->unk_220.unk_0E[param2];
    v2 = ov17_02243AF0(param0->unk_00->unk_00.unk_10F, param1->unk_00[param2].unk_00, v1, param0->unk_00->unk_00.unk_10E);

    if ((v2 > 0) && (param1->unk_00[param2].unk_28_1 == 0)) {
        param1->unk_B3[v1] += v2;

        if (param1->unk_B3[v1] >= (10 * 5)) {
            param1->unk_B3[v1] = (10 * 5);
        }
    } else if ((v2 < 0) && (param1->unk_00[param2].unk_28_2 == 0) && (param1->unk_B3[v1] > 0)) {
        param1->unk_B3[v1] += v2;

        if (param1->unk_B3[v1] <= 0) {
            param1->unk_B3[v1] = 0;
        }
    } else {
        v2 = 0;
    }

    if (param1->unk_B3[v1] >= (10 * 5)) {
        if (v1 == param0->unk_00->unk_00.unk_10E) {
            param1->unk_00[param2].unk_08 = (10 * 8);
        } else {
            param1->unk_00[param2].unk_08 = (10 * 5);
        }
    }

    param3->unk_06.unk_04 = param1->unk_00[param2].unk_08 / 10;

    if (v2 > 0) {
        param3->unk_0C = ov17_02243970(
            GetMoveAttribute(param1->unk_00[param2].unk_00, 11));

        switch (param1->unk_B3[v1] / 10) {
        case 2:
            break;
        case 3:
            break;
        case 4:
            param3->unk_0D = 25;
            break;
        case 5:
            param3->unk_0D = 26;
            break;
        }
    } else if (v2 < 0) {
        param3->unk_0C = ov17_0224399C(GetMoveAttribute(param1->unk_00[param2].unk_00, 11));

        switch (param1->unk_B3[v1] / 10) {
        case 3:
            break;
        case 2:
            break;
        case 1:
            break;
        case 0:
            if (param1->unk_B0[v1] != 0) {
                (void)0;
            }
            break;
        }
    }

    param1->unk_00[param2].unk_18 += param1->unk_00[param2].unk_08;
}

void ov17_02246518 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, UnkStruct_ov17_022463C4 * param3)
{
    int v0;

    ov17_02246090(param1, param2);

    v0 = ov17_02243AE4(param1->unk_00[param2].unk_09);
    param1->unk_00[param2].unk_18 += v0;
}

static void ov17_02246540 (UnkStruct_ov17_02246540 * param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_A0[v0].unk_00_0 = 0;
        param0->unk_A0[v0].unk_00_16 = param0->unk_00[v0].unk_28_12;
    }
}

static int ov17_02246578 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    u8 v0[4];
    int v1, v2, v3;

    v3 = 4;

    for (v1 = 0; v1 < 4; v1++) {
        if (param1->unk_00[v1].unk_28_4 == 0) {
            v0[v1] = 0xff;
        } else {
            if ((param1->unk_00[v1].unk_28_4 == 1) && (param1->unk_00[v1].unk_28_6 == 0)) {
                v3 = v1;
            }

            v0[v1] = param1->unk_00[v1].unk_28_6;
        }
    }

    v0[param3] = 0xff;

    for (v1 = 0; v1 < 4; v1++) {
        for (v2 = 0; v2 < 4; v2++) {
            if (v0[v2] != 0xff) {
                if ((v1 == v0[v2]) && (v0[v2] == param1->unk_00[v2].unk_28_6)) {
                    v0[v2]++;
                    break;
                }
            }
        }

        if (v2 == 4) {
            break;
        }
    }

    for (v1 = 0; v1 < 4; v1++) {
        if (v0[v1] != 0xff) {
            param1->unk_00[v1].unk_28_6 = v0[v1];
        }
    }

    param1->unk_00[param3].unk_28_4 = 1;
    param1->unk_00[param3].unk_28_6 = 0;

    if (v3 != 4) {
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 1, param3, v3, 30000, 30000);
    } else {
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, 30000, 30000, 30000);
    }

    return 1;
}

static int ov17_02246668 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    s8 v0, v1;
    u8 v2[4];
    int v3;

    v3 = 4;

    for (v0 = 0; v0 < 4; v0++) {
        if (param1->unk_00[v0].unk_28_4 == 0) {
            v2[v0] = 0xff;
        } else {
            if ((param1->unk_00[v0].unk_28_4 == 2) && (param1->unk_00[v0].unk_28_6 == 4 - 1)) {
                v3 = v0;
            }

            v2[v0] = param1->unk_00[v0].unk_28_6;
        }
    }

    v2[param3] = 0xff;

    for (v0 = 4 - 1; v0 > -1; v0--) {
        for (v1 = 0; v1 < 4; v1++) {
            if (v2[v1] != 0xff) {
                if ((v0 == v2[v1]) && (v2[v1] == param1->unk_00[v1].unk_28_6)) {
                    v2[v1]--;
                    break;
                }
            }
        }

        if (v1 == 4) {
            break;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v2[v0] != 0xff) {
            param1->unk_00[v0].unk_28_6 = v2[v0];
        }
    }

    param1->unk_00[param3].unk_28_4 = 2;
    param1->unk_00[param3].unk_28_6 = 4 - 1;

    if (v3 == 4) {
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, 30000, 30000, 30000);
    } else {
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 1, param3, v3, 30000, 30000);
    }

    return 1;
}

static int ov17_02246774 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0;

    param1->unk_00[param3].unk_1E += param1->unk_00[param3].unk_09 * (10 * 2);

    switch (param1->unk_00[param3].unk_09) {
    case 0:
        v0 = 0;
        break;
    case 1:
        v0 = 1;
        break;
    case 2:
        v0 = 2;
        break;
    default:
        v0 = 3;
        break;
    }

    ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, v0, param3, 30000, 30000, 30000);
    return 1;
}

static int ov17_022467CC (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0;
    int v1;

    v0 = param1->unk_00[param3].unk_03;
    v1 = ov17_02243AF0(param0->unk_00->unk_00.unk_10F, param1->unk_00[param3].unk_00, v0, param0->unk_00->unk_00.unk_10E);

    if ((v1 > 0) && (param1->unk_00[param3].unk_28_1 == 0)) {
        param1->unk_00[param3].unk_1E += (10 * 2);
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, 30000, param1->unk_00[param3].unk_00, 30000);
        return 1;
    }

    return 0;
}

static int ov17_02246830 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    return 1;
}

static int ov17_02246834 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    if (param1->unk_00[param3].unk_09 == 0) {
        param1->unk_00[param3].unk_1E += (10 * 3);
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, 30000, 30000, 30000);
    } else {
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 1, param3, 30000, 30000, 30000);
    }

    return 1;
}

static int ov17_0224687C (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    if (param1->unk_00[param3].unk_00 != param0->unk_220.unk_26[param3]) {
        param1->unk_A0[param3].unk_00_0 = param1->unk_00[param3].unk_00;
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, 30000, 30000, 30000);
        return 1;
    }

    return 0;
}

static int ov17_022468D4 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0, v1;

    v0 = param1->unk_00[param3].unk_03;

    if (1) {
        v1 = param1->unk_B0[v0];
        param1->unk_00[param3].unk_1E += v1;
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, 30000, 30000, 30000, v1 / 10);

        return 1;
    }

    return 0;
}

static int ov17_02246918 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    if (param1->unk_00[param3].unk_09 == 4 - 1) {
        param1->unk_00[param3].unk_1E += (10 * 15);
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, 30000, 30000, 30000);
    } else {
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 1, param3, 30000, 30000, 30000);
    }

    return 1;
}

static int ov17_02246960 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0;

    if (param1->unk_00[param3].unk_28_2 == 1) {
        return 0;
    }

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param1->unk_B3[v0] != 0) {
            break;
        }
    }

    if (v0 == (1 + 2)) {
        return 0;
    }

    param1->unk_00[param3].unk_28_3 = 1;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        if (param1->unk_B3[v0] > 0) {
            param1->unk_B3[v0] += (-10 * 1);
        }
    }

    ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, 30000, 30000, 30000, 30000);
    return 1;
}

static int ov17_022469DC (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    param1->unk_00[param3].unk_28_12 = param1->unk_00[param3].unk_02;
    return 1;
}

static int ov17_022469FC (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0;

    for (v0 = param4; v0 < 4; v0++) {
        param1->unk_00[param0->unk_220.unk_01[v0]].unk_28_1 = 1;
    }

    ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, 30000, 30000, 30000, 30000);
    return 1;
}

static int ov17_02246A50 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0;

    if (param4 == 0) {
        return 0;
    }

    v0 = param0->unk_220.unk_01[param4 - 1];

    if (param1->unk_00[v0].unk_08 == 0) {
        return 0;
    }

    param1->unk_00[param3].unk_1E += param1->unk_00[v0].unk_08;
    ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, v0, 30000, 30000);
    return 1;
}

static int ov17_02246AB0 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    s8 v0, v1;
    u8 v2[4];
    u8 v3[4];
    u8 v4, v5;

    for (v0 = 0; v0 < 4; v0++) {
        v2[v0] = v0;
        v3[v0] = v0;
    }

    for (v0 = 0; v0 < 4; v0++) {
        v4 = sub_02094E98(param0->unk_00) % (4 - v0);
        v5 = v4;

        for (v1 = 0; v1 < 4; v1++) {
            if (v3[v1] != 0xff) {
                if (v5 == 0) {
                    v2[v1] = v0;
                    v3[v1] = 0xff;
                    break;
                } else {
                    v5--;
                }
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        param1->unk_00[v0].unk_28_4 = 3;
        param1->unk_00[v0].unk_28_6 = v2[v0];
    }

    ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, 30000, 30000, 30000, 30000);
    return 1;
}

static int ov17_02246B74 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    if (param4 == 4 - 1) {
        param1->unk_00[param3].unk_1E += param1->unk_00[param3].unk_18;
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, 30000, 30000, 30000, param1->unk_00[param3].unk_18 / 10);
        return 1;
    }

    return 0;
}

static int ov17_02246BC0 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0, v1;
    static const u8 v2[] = {
        10 * 4,
        10 * 3,
        10 * 2,
        10 * 1,
        10 * 0,
        10 * 0
    };

    v1 = param1->unk_00[param3].unk_03;
    v0 = param1->unk_B0[v1] / 10;
    param1->unk_00[param3].unk_1E += v2[v0];

    ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, 30000, 30000, 30000, v2[v0] / 10);
    return 1;
}

static int ov17_02246C10 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    if (param4 == 0) {
        param1->unk_00[param3].unk_1E += 10 * 2;
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, 30000, 30000, 30000, 30000);
        return 1;
    }

    return 0;
}

static int ov17_02246C4C (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    if (param4 == 4 - 1) {
        param1->unk_00[param3].unk_1E += 10 * 2;
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, 30000, 30000, 30000, 30000);
        return 1;
    }

    return 0;
}

static int ov17_02246C88 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0;

    for (v0 = param4; v0 < 4; v0++) {
        param1->unk_00[param0->unk_220.unk_01[v0]].unk_28_2 = 1;
    }

    ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, 30000, 30000, 30000, 30000);
    return 1;
}

static int ov17_02246CDC (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0, v1, v2;

    if (param4 == 0) {
        return 0;
    }

    v0 = param0->unk_220.unk_01[param4 - 1];

    if ((param1->unk_00[param3].unk_28_1 != 0) || (param1->unk_00[v0].unk_28_1 != 0)) {
        return 0;
    }

    v1 = ov17_02243AF0(param0->unk_00->unk_00.unk_10F, param1->unk_00[param3].unk_00, param1->unk_00[param3].unk_03, param0->unk_00->unk_00.unk_10E);
    v2 = ov17_02243AF0(param0->unk_00->unk_00.unk_10F, param1->unk_00[v0].unk_00, param1->unk_00[v0].unk_03, param0->unk_00->unk_00.unk_10E);

    if ((v2 > 0) && (v1 > 0)) {
        param1->unk_00[param3].unk_1E += (10 * 3);
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, v0, 30000, 30000);
        return 1;
    }

    return 0;
}

static int ov17_02246DA4 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0;

    param1->unk_00[param3].unk_1E += Unk_ov17_02253AEC[param4];

    switch (param4) {
    case 0:
        v0 = 0;
        break;
    case 1:
        v0 = 1;
        break;
    case 2:
        v0 = 2;
        break;
    case 3:
    default:
        v0 = 3;
        break;
    }

    ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, v0, param3, 30000, 30000, 30000);
    return 1;
}

static int ov17_02246E08 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0;

    if (param4 == 0) {
        return 0;
    }

    v0 = param0->unk_220.unk_01[param4 - 1];

    if ((param1->unk_00[v0].unk_08 >= (10 * 5)) || (param1->unk_00[v0].unk_08 >= (10 * 8))) {
        param1->unk_00[param3].unk_1E += (10 * 3);
        ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, 30000, 30000, 30000);
        return 1;
    }

    return 0;
}

static int ov17_02246E68 (UnkStruct_ov17_02246F24 * param0, UnkStruct_ov17_02246540 * param1, int param2, int param3, int param4)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (v0 == param3) {
            continue;
        }

        if (param1->unk_00[v0].unk_1A < param1->unk_00[param3].unk_1C) {
            break;
        }
    }

    if (v0 != 4) {
        return 0;
    }

    param1->unk_00[param3].unk_1E += (10 * 3);
    ov17_02245F14(&param1->unk_00[param3], param1->unk_00[param3].unk_02, 0, param3, 30000, 30000, 30000);

    return 1;
}
