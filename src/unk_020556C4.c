#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020556C4.h"

#include "unk_020556C4.h"

void sub_020556C4 (UnkStruct_020556C4 * param0)
{
    u8 v0;

    for (v0 = 0; v0 < 6; v0++) {
        param0->unk_06[v0].unk_00 = 0;
        param0->unk_06[v0].unk_01 = 0;
        param0->unk_06[v0].unk_02 = 0;
        param0->unk_06[v0].unk_03 = 0;
    }

    param0->unk_00 = 0;
    param0->unk_04 = 0;
    param0->unk_05 = 0;
}

void sub_020556E8 (UnkStruct_020556C4 * param0, int param1, int param2)
{
    u8 v0, v1;

    v0 = param1 / 32;
    v1 = param2 / 32;

    if ((v0 != param0->unk_04) || (v1 != param0->unk_05)) {
        param0->unk_06[param0->unk_00].unk_00 = v0;
        param0->unk_06[param0->unk_00].unk_01 = v1;
        param0->unk_06[param0->unk_00].unk_02 = -1;
        param0->unk_06[param0->unk_00].unk_03 = 1;
        param0->unk_00 = (param0->unk_00 + 1) % 6;
    }
}

void sub_02055740 (UnkStruct_020556C4 * param0, int param1, int param2, int param3)
{
    u8 v0, v1;

    v0 = param1;
    v1 = param2;

    if ((v0 != param0->unk_04) || (v1 != param0->unk_05)) {
        param0->unk_06[param0->unk_00].unk_00 = v0;
        param0->unk_06[param0->unk_00].unk_01 = v1;
        param0->unk_06[param0->unk_00].unk_02 = param3;
        param0->unk_06[param0->unk_00].unk_03 = 1;

        param0->unk_04 = v0;
        param0->unk_05 = v1;
        param0->unk_00 = (param0->unk_00 + 1) % 6;
    }
}
