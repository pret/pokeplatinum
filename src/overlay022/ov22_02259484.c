#include <nitro.h>
#include <string.h>

#include "overlay022/struct_ov22_02259484.h"
#include "overlay022/struct_ov22_02259560.h"

#include "unk_02017E74.h"
#include "overlay022/ov22_02259484.h"

void ov22_02259484 (UnkStruct_ov22_02259484 * param0, int param1, int param2)
{
    param0->unk_00 = sub_02018144(param2, sizeof(UnkStruct_ov22_02259560) * param1);
    GF_ASSERT(param0->unk_00);
    memset(param0->unk_00, 0, sizeof(UnkStruct_ov22_02259560) * param1);
    param0->unk_04 = param1;
}

void ov22_022594AC (UnkStruct_ov22_02259484 * param0)
{
    sub_020181C4(param0->unk_00);
    param0->unk_00 = NULL;
    param0->unk_04 = 0;
}

UnkStruct_ov22_02259560 * ov22_022594C0 (UnkStruct_ov22_02259484 * param0, void * param1, int param2)
{
    int v0;

    GF_ASSERT(param0->unk_00);
    GF_ASSERT(param0->unk_04);

    for (v0 = 0; v0 < param0->unk_04; v0++) {
        if (param0->unk_00[v0].unk_00 == NULL) {
            break;
        }
    }

    GF_ASSERT(param0->unk_04 > v0);

    param0->unk_00[v0].unk_00 = param1;
    param0->unk_00[v0].unk_04 = param2;

    return param0->unk_00 + v0;
}

void ov22_02259510 (UnkStruct_ov22_02259560 * param0)
{
    memset(param0, 0, sizeof(UnkStruct_ov22_02259560));
}

void ov22_02259520 (UnkStruct_ov22_02259560 * param0, UnkStruct_ov22_02259560 * param1)
{
    param0->unk_08 = param1->unk_08;
    param1->unk_08->unk_0C = param0;
    param0->unk_0C = param1;
    param1->unk_08 = param0;
}

void ov22_02259530 (UnkStruct_ov22_02259560 * param0)
{
    param0->unk_0C->unk_08 = param0->unk_08;
    param0->unk_08->unk_0C = param0->unk_0C;
}

void ov22_02259540 (UnkStruct_ov22_02259560 * param0)
{
    UnkStruct_ov22_02259560 * v0;
    UnkStruct_ov22_02259560 * v1;

    v0 = param0->unk_08;

    while (v0 != param0) {
        v1 = v0->unk_08;

        ov22_02259530(v0);
        ov22_02259510(v0);

        v0 = v1;
    }
}
