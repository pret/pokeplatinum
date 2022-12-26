#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02025E5C.h"

#include "unk_0202CBE4.h"

void sub_0202CBE4 (UnkStruct_02025E5C * param0)
{
    param0->unk_00 = 0;
    param0->unk_02 = 0;
    param0->unk_03 = 0;
}

void sub_0202CBF0 (UnkStruct_02025E5C * param0, u32 param1)
{
    u32 v0, v1, v2;

    if ((param0->unk_00 == 999) && (param0->unk_02 == 59) && (param0->unk_03 == 59)) {
        return;
    }

    v0 = param0->unk_00;
    v1 = param0->unk_02;
    v2 = param0->unk_03 + param1;

    if (v2 > 59) {
        v1 = param0->unk_02 + (v2 / (59 + 1));
        v2 %= (59 + 1);

        if (v1 > 59) {
            v0 = param0->unk_00 + (v1 / (59 + 1));
            v1 %= (59 + 1);

            if (v0 >= 999) {
                v0 = 999;
                v1 = 59;
                v2 = 59;
            }
        }
    }

    param0->unk_00 = v0;
    param0->unk_02 = v1;
    param0->unk_03 = v2;
}

u16 sub_0202CC58 (const UnkStruct_02025E5C * param0)
{
    return param0->unk_00;
}

u8 sub_0202CC5C (const UnkStruct_02025E5C * param0)
{
    return param0->unk_02;
}

u8 sub_0202CC60 (const UnkStruct_02025E5C * param0)
{
    return param0->unk_03;
}
