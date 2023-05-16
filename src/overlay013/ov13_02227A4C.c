#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0207CDEC.h"
#include "overlay013/struct_ov13_02227244.h"

#include "item.h"
#include "bag.h"
#include "overlay013/ov13_02227A4C.h"

u8 ov13_02227A4C (UnkStruct_ov13_02227244 * param0)
{
    if (param0->unk_00->unk_20 == 0) {
        return 0;
    }

    if (sub_0207D688(param0->unk_00->unk_08, param0->unk_00->unk_20, 1, param0->unk_00->unk_0C) == 0) {
        param0->unk_00->unk_20 = 0;
        param0->unk_00->unk_1F = 0;
        return 0;
    }

    return 1;
}

void ov13_02227A7C (UnkStruct_ov13_02227244 * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 36; v0++) {
        if (param0->unk_00->unk_20 == param0->unk_3C[param0->unk_114D][v0].unk_00) {
            param0->unk_00->unk_27[param0->unk_114D] = v0 % 6;
            param0->unk_00->unk_2C[param0->unk_114D] = v0 / 6;
            break;
        }
    }
}

static const u8 Unk_ov13_02229BB0[] = {
    0x2,
    0x3,
    0x0,
    0x1,
    0x0
};

void ov13_02227AC8 (UnkStruct_ov13_02227244 * param0)
{
    ItemSlot * v0;
    u32 v1, v2, v3;
    s32 v4;

    for (v1 = 0; v1 < 8; v1++) {
        v2 = 0;

        while (TRUE) {
            v0 = sub_0207D910(param0->unk_00->unk_08, v1, v2);

            if (v0 == NULL) {
                break;
            }

            if (!((v0->unk_00 == 0) || (v0->unk_02 == 0))) {
                v4 = Item_GetAttribute(v0->unk_00, 13, param0->unk_00->unk_0C);

                for (v3 = 0; v3 < 5; v3++) {
                    if ((v4 & (1 << v3)) == 0) {
                        continue;
                    }

                    param0->unk_3C[Unk_ov13_02229BB0[v3]][param0->unk_114F[Unk_ov13_02229BB0[v3]]] = *v0;
                    param0->unk_114F[Unk_ov13_02229BB0[v3]]++;
                }
            }

            v2++;
        }
    }

    for (v1 = 0; v1 < 5; v1++) {
        if (param0->unk_114F[v1] == 0) {
            param0->unk_1154[v1] = 0;
        } else {
            param0->unk_1154[v1] = (param0->unk_114F[v1] - 1) / 6;
        }

        if (param0->unk_1154[v1] < param0->unk_00->unk_2C[v1]) {
            param0->unk_00->unk_2C[v1] = param0->unk_1154[v1];
        }
    }
}

u16 ov13_02227BA8 (UnkStruct_ov13_02227244 * param0, u32 param1)
{
    if ((param0->unk_3C[param0->unk_114D][param0->unk_00->unk_2C[param0->unk_114D] * 6 + param1].unk_00 != 0) && (param0->unk_3C[param0->unk_114D][param0->unk_00->unk_2C[param0->unk_114D] * 6 + param1].unk_02 != 0)) {
        return param0->unk_3C[param0->unk_114D][param0->unk_00->unk_2C[param0->unk_114D] * 6 + param1].unk_00;
    }

    return 0;
}
