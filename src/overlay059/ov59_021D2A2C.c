#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0202B4A0.h"
#include "struct_defs/struct_0202B510.h"

#include "unk_0202B37C.h"
#include "overlay059/ov59_021D2A2C.h"

static void ov59_021D2A78(UnkStruct_0202B4A0 * param0, int param1);
static void ov59_021D2A34(UnkStruct_0202B4A0 * param0, const UnkStruct_0202B510 * param1);

u32 ov59_021D2A2C (UnkStruct_0202B4A0 * param0)
{
    return sizeof(UnkStruct_0202B510);
}

void * ov59_021D2A30 (UnkStruct_0202B4A0 * param0)
{
    return &param0->unk_00[1];
}

static void ov59_021D2A34 (UnkStruct_0202B4A0 * param0, const UnkStruct_0202B510 * param1)
{
    int v0;

    for (v0 = 5; v0 > 2; v0--) {
        param0->unk_00[v0] = param0->unk_00[v0 - 1];
    }

    param0->unk_00[2] = *param1;
}

static void ov59_021D2A78 (UnkStruct_0202B4A0 * param0, int param1)
{
    int v0;
    UnkStruct_0202B510 * v1;

    GF_ASSERT(2 <= param1 && param1 <= 5);

    for (v0 = param1 + 1; v0 <= 5; v0++) {
        param0->unk_00[v0 - 1] = param0->unk_00[v0];
    }

    v1 = &param0->unk_00[5];

    v1->unk_00[0] = 0xffff;
    v1->unk_10[0] = 0xffff;
}

void ov59_021D2AC4 (int param0, int param1, UnkStruct_0202B4A0 * param2, const void ** param3)
{
    int v0, v1;
    UnkStruct_0202B510 * v2;

    for (v0 = 0; v0 < param0; v0++) {
        v2 = (UnkStruct_0202B510 *)param3[v0];

        if (v0 == param1) {
            continue;
        }

        if (v2 == NULL) {
            continue;
        }

        if (sub_0202B510(v2) == 1) {
            continue;
        }

        if (sub_0202B530(v2, &param2->unk_00[0])) {
            continue;
        }

        for (v1 = 0; v1 < 4; v1++) {
            if (sub_0202B530(v2, &param2->unk_00[2 + v1])) {
                ov59_021D2A78(param2, 2 + v1);
            }
        }

        ov59_021D2A34(param2, v2);
    }
}
