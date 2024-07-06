#include "overlay021/ov21_021D57B4.h"

#include <nitro.h>
#include <string.h>

#include "overlay021/struct_ov21_021D5844.h"
#include "overlay021/struct_ov21_021D5868.h"
#include "overlay021/struct_ov21_021D5890.h"

#include "cell_actor.h"
#include "heap.h"
#include "unk_02006E3C.h"

void ov21_021D57B4(UnkStruct_ov21_021D5844 *param0, int param1, int param2, int param3)
{
    int v0;
    u32 v1;

    switch (param2) {
    case 0:
        v0 = 4;
        break;
    case 1:
        v0 = 499;
        break;
    case 2:
        v0 = 994;
        break;
    case 3:
        v0 = 1489;
        break;
    case 4:
        v0 = 1984;
        break;
    case 5:
        v0 = 2479;
        break;
    case 6:
        v0 = 2974;
        break;
    case 7:
        v0 = 3469;
        break;
    case 8:
        v0 = 3964;
        break;
    case 9:
        v0 = 4459;
        break;
    }

    param0->unk_00 = (int *)sub_02007068(188, v0 + param1, 0, param3, 0, &v1);
    param0->unk_04 = v1 / sizeof(int);
}

void ov21_021D5844(UnkStruct_ov21_021D5844 *param0)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_00);

    Heap_FreeToHeap(param0->unk_00);

    param0->unk_00 = NULL;
    param0->unk_04 = 0;
}

UnkStruct_ov21_021D5868 *ov21_021D5868(int param0, int *param1)
{
    UnkStruct_ov21_021D5868 *v0;
    u32 v1;

    v0 = (UnkStruct_ov21_021D5868 *)sub_02007068(188, 0, 0, param0, 0, &v1);

    if (param1) {
        *param1 = v1 / sizeof(UnkStruct_ov21_021D5868);
    }

    return v0;
}

UnkStruct_ov21_021D5890 *ov21_021D5890(int param0, int *param1)
{
    UnkStruct_ov21_021D5890 *v0;
    u32 v1;

    v0 = (UnkStruct_ov21_021D5890 *)sub_02007068(188, 2, 0, param0, 0, &v1);

    if (param1) {
        *param1 = v1 / sizeof(UnkStruct_ov21_021D5890);
    }

    return v0;
}

void ov21_021D58C0(u8 *param0, u8 param1, u8 param2, const UnkStruct_ov21_021D5890 *param3)
{
    int v0, v1;

    GF_ASSERT((param3->unk_01 + param3->unk_03) < param2);
    GF_ASSERT((param3->unk_00 + param3->unk_02) < param1);

    for (v0 = param3->unk_01; v0 < param3->unk_01 + param3->unk_03; v0++) {
        for (v1 = param3->unk_00; v1 < param3->unk_00 + param3->unk_02; v1++) {
            param0[(v0 * param1) + v1] |= param3->unk_04[((v0 - param3->unk_01) * param3->unk_02) + (v1 - param3->unk_00)];
        }
    }
}

u32 ov21_021D5948(u8 *param0, int param1, int param2, const UnkStruct_ov21_021D5890 *param3, const UnkStruct_ov21_021D5844 *param4, const u8 *param5, u32 param6)
{
    int v0;
    int v1;
    u32 v2 = 0;

    for (v0 = 0; v0 < param4->unk_04 - 1; v0++) {
        GF_ASSERT(param4->unk_00[v0]);

        for (v1 = 0; v1 < param6; v1++) {
            if (param4->unk_00[v0] == param5[v1]) {
                break;
            }
        }

        if (v1 >= param6) {
            ov21_021D58C0(param0, param1, param2, &param3[param4->unk_00[v0]]);
            v2++;
        }
    }

    return v2;
}

void ov21_021D59D8(CellActor *param0, int param1, int param2, int param3, int param4, const UnkStruct_ov21_021D5868 *param5, int param6, int param7)
{
    VecFx32 v0;

    v0.x = (param5->unk_00 * param3) + param1;
    v0.y = (param5->unk_01 * param4) + param2;
    v0.x <<= FX32_SHIFT;
    v0.y <<= FX32_SHIFT;

    CellActor_SetPosition(param0, &v0);

    if (param5->unk_02) {
        CellActor_SetAnim(param0, param7);
    } else {
        CellActor_SetAnim(param0, param6);
    }
}

int ov21_021D5A20(CellActor **param0, int param1, int param2, int param3, int param4, int param5, int param6, const UnkStruct_ov21_021D5868 *param7, const UnkStruct_ov21_021D5844 *param8, int param9, int param10, const u8 *param11, u32 param12, u32 *param13)
{
    int v0, v1;
    int v2 = param1;
    int v3 = 0;

    for (v0 = 0; v0 < param8->unk_04 - 1; v0++) {
        GF_ASSERT(param8->unk_00[v0]);
        GF_ASSERT(v2 < param2);

        for (v1 = 0; v1 < param12; v1++) {
            if (param8->unk_00[v0] == param11[v1]) {
                break;
            }
        }

        if (v1 >= param12) {
            ov21_021D59D8(param0[v2], param3, param4, param5, param6, &param7[param8->unk_00[v0]], param9, param10);
            v2++;
            v3++;
        }
    }

    *param13 = v3;

    return v2;
}
