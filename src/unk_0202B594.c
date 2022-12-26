#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02025E50.h"

#include "unk_0202B594.h"

void sub_0202B594 (UnkStruct_02025E50 * param0)
{
    param0->unk_00 = 0;
}

void sub_0202B59C (UnkStruct_02025E50 * param0, u32 param1)
{
    GF_ASSERT(param1 <= 50000);
    param0->unk_00 = param1;
}

u32 sub_0202B5B4 (const UnkStruct_02025E50 * param0)
{
    return param0->unk_00;
}

BOOL sub_0202B5B8 (UnkStruct_02025E50 * param0, u32 param1)
{
    if (param0->unk_00 >= 50000) {
        return 0;
    }

    param0->unk_00 += param1;

    if (param0->unk_00 > 50000) {
        param0->unk_00 = 50000;
    }

    return 1;
}

BOOL sub_0202B5D8 (const UnkStruct_02025E50 * param0, u32 param1)
{
    if (param1 + (u32)param0->unk_00 <= 50000) {
        return 1;
    } else {
        return 0;
    }
}

BOOL sub_0202B5F0 (UnkStruct_02025E50 * param0, u32 param1)
{
    if (param0->unk_00 < param1) {
        return 0;
    }

    param0->unk_00 -= param1;
    return 1;
}
