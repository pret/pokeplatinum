#include "overlay099/ov99_021D2C08.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0200D0F4.h"

#include "overlay099/ov99_021D4134.h"
#include "overlay099/struct_ov99_021D2C08.h"
#include "overlay099/struct_ov99_021D2CB0.h"
#include "overlay099/struct_ov99_021D2D18.h"
#include "overlay099/struct_ov99_021D3A40.h"

#include "bg_window.h"
#include "unk_0200A9DC.h"
#include "unk_0200C6E4.h"
#include "unk_0201D15C.h"

typedef struct {
    s32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
    fx32 unk_18;
    f32 unk_1C;
    u16 unk_20;
    u16 unk_22;
} UnkStruct_ov99_021D4B70;

static void ov99_021D2CB0(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2C08 *param1);
static void ov99_021D2CEC(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2C08 *param1);
static void ov99_021D2DF4(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2C08 *param1);
static void ov99_021D2D18(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2C08 *param1, CellActorData *param2, int param3);

static const UnkStruct_ov99_021D4B70 Unk_ov99_021D4B70[] = {
    {
        900,
        -64 * FX32_ONE,
        80 * FX32_ONE,
        0x600,
        -0x80,
        0xe00,
        0x8000,
        0.0030,
        60,
    },
    {
        1350,
        -64 * FX32_ONE,
        190 * FX32_ONE,
        0x780,
        -0xa0,
        0x1000,
        0xc000,
        -0.0040,
        50,
    },
    {
        1590,
        -64 * FX32_ONE,
        120 * FX32_ONE,
        0x640,
        -0x90,
        0xc00,
        0x8000,
        -0.0045,
        60,
    },
};

BOOL ov99_021D2C08(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D3A40 *param1)
{
    UnkStruct_ov99_021D2C08 *v0 = &param1->unk_08_val1;

    switch (param1->unk_00) {
    case 0:
        ov99_021D2CB0(param0, v0);
        sub_0200AAE0(24, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);
        param1->unk_00++;
        break;
    case 1:
        if (param0->unk_10FC >= 1830) {
            sub_0200AAE0(24, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);
            param1->unk_00++;
        }
        break;
    case 2:
        if (sub_0200AC1C(3) == 1) {
            return 1;
        }
        break;
    }

    ov99_021D44CC(param0, param0->unk_10E0[0]);
    ov99_021D2CEC(param0, v0);
    ov99_021D425C(param0, -1);
    ov99_021D2DF4(param0, v0);

    return 0;
}

static void ov99_021D2CB0(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2C08 *param1)
{
    int v0, v1 = 0;

    GF_ASSERT(NELEMS(Unk_ov99_021D4B70) == 4 - 2 + 1);

    for (v0 = 2; v0 <= 4; v0++, v1++) {
        sub_0200D650(param0->unk_10E0[v0], Unk_ov99_021D4B70[v1].unk_04, Unk_ov99_021D4B70[v1].unk_08, ((192 + 80) << FX32_SHIFT));
        param1->unk_08[v1].unk_00 = Unk_ov99_021D4B70[v1].unk_04;
        param1->unk_08[v1].unk_04 = Unk_ov99_021D4B70[v1].unk_08;
    }
}

static void ov99_021D2CEC(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2C08 *param1)
{
    int v0, v1 = 0;

    for (v0 = 2; v0 <= 4; v0++, v1++) {
        ov99_021D2D18(param0, param1, param0->unk_10E0[v0], v1);
    }
}

static void ov99_021D2D18(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2C08 *param1, CellActorData *param2, int param3)
{
    UnkStruct_ov99_021D2D18 *v0 = &param1->unk_08[param3];
    const UnkStruct_ov99_021D4B70 *v1 = &Unk_ov99_021D4B70[param3];
    fx32 v2;

    if (v0->unk_0C < v1->unk_00) {
        v0->unk_0C++;
        return;
    }

    v0->unk_08 += v1->unk_14;

    if (v0->unk_08 >= (360 << FX32_SHIFT)) {
        v0->unk_08 -= 360 << FX32_SHIFT;
    }

    v2 = FX_Mul(sub_0201D2B8(v0->unk_08), v1->unk_18);

    v0->unk_00 += v1->unk_0C;
    v0->unk_04 += v1->unk_10;

    sub_0200D650(param2, v0->unk_00, v0->unk_04 + v2, ((192 + 80) << FX32_SHIFT));

    if (v0->unk_12 == 0) {
        sub_0200D74C(param2, v1->unk_1C, v1->unk_1C);
    } else {
        sub_0200D74C(param2, -v1->unk_1C, -v1->unk_1C);
    }

    v0->unk_10++;

    if (v0->unk_10 >= v1->unk_20) {
        v0->unk_10 = 0;
        v0->unk_12 ^= 1;
    }
}

static void ov99_021D2DF4(UnkStruct_ov99_021D2CB0 *param0, UnkStruct_ov99_021D2C08 *param1)
{
    param1->unk_00 += -0x40;

    sub_02019184(param0->unk_08, 2, 0, param1->unk_00 / FX32_ONE);
    sub_02019184(param0->unk_08, 7, 0, param1->unk_00 / FX32_ONE);
}
