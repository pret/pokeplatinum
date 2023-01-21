#include <nitro.h>
#include <string.h>

#include "heap.h"
#include "unk_0209ACBC.h"

typedef struct UnkStruct_0209ACBC_t {
    u32 unk_00;
    u32 unk_04;
} UnkStruct_0209ACBC;

UnkStruct_0209ACBC * sub_0209ACBC (u32 param0)
{
    UnkStruct_0209ACBC * v0;

    v0 = AllocFromHeap(param0, sizeof(UnkStruct_0209ACBC));
    memset(v0, 0, sizeof(UnkStruct_0209ACBC));
    v0->unk_04 = 2;
    return v0;
}

void sub_0209ACDC (UnkStruct_0209ACBC * param0)
{
    FreeToHeap(param0);
}

u32 sub_0209ACE4 (const UnkStruct_0209ACBC * param0)
{
    return param0->unk_00;
}

void sub_0209ACE8 (UnkStruct_0209ACBC * param0, u32 param1)
{
    param0->unk_00 = param1;
}

u32 sub_0209ACEC (const UnkStruct_0209ACBC * param0)
{
    return param0->unk_04;
}

void sub_0209ACF0 (UnkStruct_0209ACBC * param0, u32 param1)
{
    param0->unk_04 = param1;
}
