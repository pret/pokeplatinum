#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02027860.h"

#include "unk_02027F50.h"

void sub_02027F50 (UnkStruct_02027860 * param0)
{
    MI_CpuClear8(param0, sizeof(UnkStruct_02027860));
}

void * sub_02027F5C (UnkStruct_02027860 * param0, int param1)
{
    sub_02027F50(param0);
    param0->unk_00 = param1;

    return param0->unk_04;
}

void * sub_02027F6C (UnkStruct_02027860 * param0, int param1)
{
    GF_ASSERT(param0->unk_00 == param1);
    return param0->unk_04;
}

int sub_02027F80 (const UnkStruct_02027860 * param0)
{
    return param0->unk_00;
}
