#include "unk_0209C370.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_0209C370.h"

#include "heap.h"

UnkStruct_0209C370 *sub_0209C370(int param0)
{
    UnkStruct_0209C370 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0209C370));
    MI_CpuClear8(v0, sizeof(UnkStruct_0209C370));
    return v0;
}

void sub_0209C388(UnkStruct_0209C370 *param0)
{
    Heap_FreeToHeap(param0);
}
