#include <nitro.h>
#include <string.h>

#include "overlay099/struct_ov99_021D2CB0.h"
#include "overlay099/struct_ov99_021D3A40.h"
#include "overlay099/struct_ov99_021D3C18.h"

#include "unk_0200A9DC.h"
#include "unk_02018340.h"
#include "overlay099/ov99_021D3C18.h"
#include "overlay099/ov99_021D4134.h"

static void ov99_021D3CF8(UnkStruct_ov99_021D3C18 * param0, u32 param1);
static BOOL ov99_021D3D50(UnkStruct_ov99_021D3C18 * param0);

BOOL ov99_021D3C18 (UnkStruct_ov99_021D2CB0 * param0, UnkStruct_ov99_021D3A40 * param1)
{
    UnkStruct_ov99_021D3C18 * v0 = &param1->unk_08_val5;

    switch (param1->unk_00) {
    case 0:
        sub_0200AAE0(24, 0, -16, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);
        param1->unk_00++;
        break;
    case 1:
        v0->unk_00++;

        if (v0->unk_00 > ((8280 - 7980 - (4 * 16) * (4 - 1)) / 4)) {
            v0->unk_00 = 0;
            param1->unk_00++;
        }
        break;
    case 2:
        if (v0->unk_04 >= 4 - 1) {
            sub_0200AAE0(32, -16, 0, (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), 3);
            param1->unk_00 = 4;
        } else {
            if (v0->unk_04 & 1) {
                ov99_021D439C(
                    param0, param0->unk_1105, 2, 1);
                ov99_021D3CF8(v0, (GX_BLEND_PLANEMASK_BG3));
            } else {
                ov99_021D439C(
                    param0, param0->unk_1105, 3, 1);
                ov99_021D3CF8(v0, (GX_BLEND_PLANEMASK_BG2));
            }

            param0->unk_1105++;
            v0->unk_04++;
            param1->unk_00 = 3;
        }
        break;
    case 3:
        if (ov99_021D3D50(v0) == 1) {
            param1->unk_00 = 1;
        }
        break;
    case 4:
        if (sub_0200AC1C(3) == 1) {
            return 1;
        }
        break;
    }

    return 0;
}

static void ov99_021D3CF8 (UnkStruct_ov99_021D3C18 * param0, u32 param1)
{
    param0->unk_08 = param1;
    param0->unk_05 = 16;
    param0->unk_06 = 0;

    if (param1 == (GX_BLEND_PLANEMASK_BG2)) {
        G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG2), (GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BD), param0->unk_05, param0->unk_06);
        sub_02019120(3, 1);
    } else {
        G2_SetBlendAlpha((GX_BLEND_PLANEMASK_BG3), (GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BD), param0->unk_05, param0->unk_06);
        sub_02019120(2, 1);
    }
}

static BOOL ov99_021D3D50 (UnkStruct_ov99_021D3C18 * param0)
{
    param0->unk_05 -= 1;

    if (param0->unk_05 < 16) {
        param0->unk_06 += 1;
    }

    if (param0->unk_05 < 0) {
        param0->unk_05 = 0;
    }

    if (param0->unk_06 > 16) {
        param0->unk_06 = 16;
    }

    G2_ChangeBlendAlpha(param0->unk_05, param0->unk_06);

    if ((param0->unk_05 == 0) && (param0->unk_06 == 16)) {
        if (param0->unk_08 == (GX_BLEND_PLANEMASK_BG2)) {
            sub_02019120(2, 0);
            BGL_SetPriority(2, 3);
            BGL_SetPriority(3, 2);
        } else {
            sub_02019120(3, 0);
            BGL_SetPriority(2, 2);
            BGL_SetPriority(3, 3);
        }

        return 1;
    }

    return 0;
}
