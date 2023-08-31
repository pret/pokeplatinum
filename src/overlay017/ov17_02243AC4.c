#include <nitro.h>
#include <string.h>

#include "overlay017/struct_ov17_022472F8.h"

#include "move_table.h"
#include "overlay017/ov17_02243AC4.h"

__attribute__((aligned(4))) static const s8 Unk_ov17_022539C8[][5] = {
    {0xA, 0x0, 0xFFFFFFFFFFFFFFF6, 0xFFFFFFFFFFFFFFF6, 0x0},
    {0x0, 0xA, 0x0, 0xFFFFFFFFFFFFFFF6, 0xFFFFFFFFFFFFFFF6},
    {0xFFFFFFFFFFFFFFF6, 0x0, 0xA, 0x0, 0xFFFFFFFFFFFFFFF6},
    {0xFFFFFFFFFFFFFFF6, 0xFFFFFFFFFFFFFFF6, 0x0, 0xA, 0x0},
    {0x0, 0xFFFFFFFFFFFFFFF6, 0xFFFFFFFFFFFFFFF6, 0x0, 0xA}
};

int ov17_02243AC4 (UnkStruct_ov17_022472F8 * param0, int param1)
{
    int v0, v1;

    v1 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_0E[v0] == param0->unk_0E[param1]) {
            v1++;
        }
    }

    v1--;
    return v1;
}

int ov17_02243AE4 (int param0)
{
    static const u8 v0[] = {
        3 * 10,
        2 * 10,
        1 * 10,
        0 * 10,
    };

    return v0[param0];
}

int ov17_02243AF0 (int param0, int param1, int param2, int param3)
{
    int v0;
    int v1;

    v0 = MoveTable_LoadAttribute(param1, MOVEATTRIBUTE_CONTEST_TYPE);
    v1 = Unk_ov17_022539C8[param0][v0];

    return v1;
}

__attribute__((aligned(4))) static const s16 Unk_ov17_022539B0[] = {
    0x7512,
    0x751C,
    0x7526,
    0x7530
};

__attribute__((aligned(4))) static const s16 Unk_ov17_022539C0[] = {
    0xFFFFFFFFFFFF8AD0,
    0xFFFFFFFFFFFF8ADA,
    0xFFFFFFFFFFFF8AE4,
    0xFFFFFFFFFFFF8AEE
};

__attribute__((aligned(4))) static const s16 Unk_ov17_022539B8[] = {
    0xFFFFFFFFFFFFD8F0,
    0xFFFFFFFFFFFFFE0C,
    0x1F4,
    0x2710
};

void ov17_02243B0C (UnkStruct_ov17_022472F8 * param0)
{
    int v0, v1, v2;
    s16 v3[4];
    u8 v4[4];
    u8 v5[4];

    for (v0 = 0; v0 < 4; v0++) {
        v3[v0] = param0->unk_1A[v0];
        v4[v0] = v0;

        for (v1 = 0; v1 < 4; v1++) {
            if (v0 == param0->unk_01[v1]) {
                v5[v0] = v1;
                break;
            }
        }
    }

    {
        for (v0 = 0; v0 < 4; v0++) {
            switch (param0->unk_30.unk_00[v0].unk_28_4) {
            case 0:
            default:
                break;
            case 1:
                v3[v0] = Unk_ov17_022539C0[param0->unk_30.unk_00[v0].unk_28_6];
                break;
            case 2:
                v3[v0] = Unk_ov17_022539B0[param0->unk_30.unk_00[v0].unk_28_6];
                break;
            case 3:
                v3[v0] = Unk_ov17_022539B8[param0->unk_30.unk_00[v0].unk_28_6];
                break;
            }
        }
    }

    for (v0 = 0; v0 < 4 - 1; v0++) {
        for (v1 = 4 - 1; v1 > v0; v1--) {
            if ((v3[v1 - 1] > v3[v1]) || ((v3[v1 - 1] == v3[v1]) && (v5[v1 - 1] < v5[v1]))) {
                v2 = v3[v1];
                v3[v1] = v3[v1 - 1];
                v3[v1 - 1] = v2;

                v2 = v4[v1];
                v4[v1] = v4[v1 - 1];
                v4[v1 - 1] = v2;

                v2 = v5[v1];
                v5[v1] = v5[v1 - 1];
                v5[v1 - 1] = v2;
            }
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_01[v0] = v4[v0];
    }
}
