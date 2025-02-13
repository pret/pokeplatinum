#include "overlay099/ov99_021D2E28.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0200D0F4.h"

#include "overlay099/ov99_021D4134.h"
#include "overlay099/struct_ov99_021D2CB0.h"
#include "overlay099/struct_ov99_021D2E28.h"
#include "overlay099/struct_ov99_021D2FD4.h"
#include "overlay099/struct_ov99_021D3A40.h"

#include "bg_window.h"
#include "brightness_controller.h"
#include "math.h"
#include "palette.h"
#include "unk_0200C6E4.h"

typedef struct {
    s32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    fx32 unk_24;
    fx32 unk_28;
    fx32 unk_2C;
    fx32 unk_30;
    fx32 unk_34;
    fx32 unk_38;
    fx32 unk_3C;
    fx32 unk_40;
    fx32 unk_44;
    fx32 unk_48;
    s32 unk_4C;
    u16 unk_50;
    u16 unk_52;
} UnkStruct_ov99_021D4BDC;

static void ov99_021D2ED8(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1);
static void ov99_021D2FA8(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1);
static void ov99_021D32D8(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1);
static void ov99_021D330C(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1);
static void ov99_021D2FD4(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1, CellActorData *param2, int param3);

static const UnkStruct_ov99_021D4BDC Unk_ov99_021D4BDC[] = {
    {
        90,
        160 * FX32_ONE,
        32 * FX32_ONE,
        0x2700,
        0 * FX32_ONE,
        70 * FX32_ONE,
        90 * FX32_ONE,
        0x200,
        0x1800,
        -24 * FX32_ONE,
        7 * FX32_ONE,
        0x1b00,
        0x7800,
        160 * FX32_ONE,
        60 * FX32_ONE,
        0x3000,
        (128 - 54) * FX32_ONE,
        (96 + 16) * FX32_ONE,
        0x80,
        80,
        30,
    },
    {
        100,
        -160 * FX32_ONE,
        -48 * FX32_ONE,
        0x2400,
        0 * FX32_ONE,
        80 * FX32_ONE,
        90 * FX32_ONE,
        0x40,
        0x1800,
        24 * FX32_ONE,
        6 * FX32_ONE,
        0x1d00,
        0x7000,
        -160 * FX32_ONE,
        -52 * FX32_ONE,
        0x2800,
        (128 + 62) * FX32_ONE,
        (96 + 10) * FX32_ONE,
        0x80,
        70,
        35,
    },
};

BOOL ov99_021D2E28(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D3A40 *param1)
{
    UnkStruct_ov99_021D2E28 *v0 = &param1->unk_08_val2;

    switch (param1->unk_00) {
    case 0:
        ov99_021D2ED8(param0, v0);
        BrightnessController_StartTransition(24, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
        param1->unk_00++;
        break;
    case 1:
        if (param0->unk_10FC >= 6000) {
            BrightnessController_StartTransition(24, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), BRIGHTNESS_BOTH_SCREENS);
            param1->unk_00++;
        }
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_BOTH_SCREENS) == 1) {
            return 1;
        }
        break;
    }

    ov99_021D44CC(param0, param0->unk_10E0[0]);
    ov99_021D2FA8(param0, v0);
    ov99_021D425C(param0, -1);
    ov99_021D32D8(param0, v0);
    ov99_021D330C(param0, v0);

    return 0;
}

static void ov99_021D2ED8(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1)
{
    int v0, v1 = 0;

    GF_ASSERT(NELEMS(Unk_ov99_021D4BDC) == 3 - 2 + 1);

    for (v0 = 2; v0 <= 3; v0++, v1++) {
        param1->unk_94[v1].unk_00 = Unk_ov99_021D4BDC[v1].unk_40 - Unk_ov99_021D4BDC[v1].unk_04;
        param1->unk_94[v1].unk_04 = Unk_ov99_021D4BDC[v1].unk_44;
        param1->unk_94[v1].unk_10 = Unk_ov99_021D4BDC[v1].unk_10;
        param1->unk_94[v1].unk_1C = Unk_ov99_021D4BDC[v1].unk_0C;
        param1->unk_94[v1].unk_28 = FX_Mul(CalcSineDegrees_FX32(Unk_ov99_021D4BDC[v1].unk_10), Unk_ov99_021D4BDC[v1].unk_04);
        param1->unk_94[v1].unk_2C = FX_Mul(CalcCosineDegrees_FX32(Unk_ov99_021D4BDC[v1].unk_10), Unk_ov99_021D4BDC[v1].unk_08);
        param1->unk_94[v1].unk_34 = Unk_ov99_021D4BDC[v1].unk_00;

        sub_0200D650(param0->unk_10E0[v0], param1->unk_94[v1].unk_00 + param1->unk_94[v1].unk_28, param1->unk_94[v1].unk_04 + param1->unk_94[v1].unk_2C, ((192 + 80) << FX32_SHIFT));
        sub_0200D6A4(param0->unk_10E0[v0], 2);
    }
}

static void ov99_021D2FA8(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1)
{
    int v0, v1 = 0;

    for (v0 = 2; v0 <= 3; v0++, v1++) {
        ov99_021D2FD4(param0, param1, param0->unk_10E0[v0], v1);
    }
}

static void ov99_021D2FD4(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1, CellActorData *param2, int param3)
{
    UnkStruct_ov99_021D2FD4 *v0 = &param1->unk_94[param3];
    const UnkStruct_ov99_021D4BDC *v1 = &Unk_ov99_021D4BDC[param3];
    fx32 v2 = 0, v3 = 0;

    if (v0->unk_34 > 0) {
        v0->unk_34--;
        return;
    }

    switch (v0->unk_39) {
    case 0:
        v0->unk_39++;
    case 1:
        if (v0->unk_10 > v1->unk_14) {
            v0->unk_1C -= v1->unk_1C;

            if (v0->unk_1C < v1->unk_20) {
                v0->unk_1C = v1->unk_20;
            }
        }

        v0->unk_10 += v0->unk_1C;

        if (v0->unk_10 >= v1->unk_18) {
            v0->unk_10 = v1->unk_18;
            v0->unk_39++;
        }

        v0->unk_28 = FX_Mul(CalcSineDegrees_FX32(v0->unk_10), v1->unk_04);
        v0->unk_2C = FX_Mul(CalcCosineDegrees_FX32(v0->unk_10), v1->unk_08);
        break;
    case 2:
        v0->unk_00 += v0->unk_28;
        v0->unk_04 += v0->unk_2C;
        v0->unk_28 = 0;
        v0->unk_2C = 0;
        v0->unk_20 = v1->unk_2C;
        v0->unk_24 = v1->unk_30;
        v0->unk_39++;
    case 3:
        v0->unk_14 += v0->unk_20;
        v0->unk_18 += v0->unk_24;

        if (v0->unk_14 >= (360 << FX32_SHIFT)) {
            v0->unk_14 -= 360 << FX32_SHIFT;
        }

        if (v0->unk_18 >= (360 << FX32_SHIFT)) {
            v0->unk_18 -= 360 << FX32_SHIFT;
        }

        v0->unk_28 = FX_Mul(CalcSineDegrees_FX32(v0->unk_14), v1->unk_24);
        v0->unk_2C = FX_Mul(CalcSineDegrees_FX32(v0->unk_18), v1->unk_28);

        if (param0->unk_10FC >= 5970) {
            v0->unk_20 -= v1->unk_2C / 20;
            v0->unk_24 -= v1->unk_30 / 20;

            if (v0->unk_20 <= v1->unk_2C / 20) {
                v0->unk_39++;
            }
        }
        break;
    case 4:
        v0->unk_00 = (v0->unk_00 + v0->unk_28) - v1->unk_34;
        v0->unk_04 = v0->unk_04 + v0->unk_2C;
        v0->unk_10 = 0;
        v0->unk_1C = v1->unk_3C;
        v0->unk_28 = FX_Mul(CalcSineDegrees_FX32(0), v1->unk_34);
        v0->unk_2C = FX_Mul(CalcCosineDegrees_FX32(0), v1->unk_38);
        v0->unk_39++;
    case 5:
        v0->unk_10 += v0->unk_1C;
        v0->unk_28 = FX_Mul(CalcCosineDegrees_FX32(v0->unk_10), v1->unk_34);
        v0->unk_2C = FX_Mul(CalcSineDegrees_FX32(v0->unk_10), v1->unk_38);

        if (v0->unk_10 >= (180 << FX32_SHIFT)) {
            v0->unk_39++;
        }
        break;
    default:
        break;
    }

    if (v0->unk_38 == 0) {
        sub_0200D7C0(param2, v1->unk_4C);
    } else {
        sub_0200D7C0(param2, -v1->unk_4C);
    }

    v0->unk_36++;

    if (v0->unk_36 >= v1->unk_50) {
        v0->unk_36 = 0;
        v0->unk_38 ^= 1;
    }

    v0->unk_04 -= v1->unk_48;
    sub_0200D650(param2, v0->unk_00 + v0->unk_28, v0->unk_04 + v0->unk_2C, ((192 + 80) << FX32_SHIFT));
}

static void ov99_021D32D8(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1)
{
    param1->unk_04 += 0x60;

    Bg_SetOffset(param0->unk_08, 2, 3, param1->unk_04 / FX32_ONE);
    Bg_SetOffset(param0->unk_08, 7, 3, param1->unk_04 / FX32_ONE);
}

static void ov99_021D330C(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2E28 *param1)
{
    int v0, v1;
    int v2, v3, v4;
    u16 *v5;

    v2 = param1->unk_88;
    param1->unk_8C += 0x200;

    if (param1->unk_8C >= (16 << 8)) {
        v3 = 16;
        param1->unk_8C = 0;

        if (param1->unk_90 == 0) {
            param1->unk_88++;

            if (param1->unk_88 >= 4) {
                param1->unk_88 = 4 - 2;
                param1->unk_90 ^= 1;
            }
        } else {
            param1->unk_88--;

            if (param1->unk_88 < 0) {
                param1->unk_88 = 1;
                param1->unk_90 ^= 1;
            }
        }
    } else {
        v3 = param1->unk_8C >> 8;
    }

    if (param1->unk_90 == 0) {
        v4 = v2 + 1;

        if (v4 >= 4) {
            v4 = v2 - 1;
        }
    } else {
        v4 = v2 - 1;

        if (v4 < 0) {
            v4 = 1;
        }
    }

    v5 = PaletteData_GetFadedBuffer(param0->unk_0C, 1);

    for (v1 = 0; v1 < 16; v1++) {
        BlendPalette(&param1->unk_08[v2][v1], &v5[(2 * 16) + v1], 1, v3, param1->unk_08[v4][v1]);
    }
}
