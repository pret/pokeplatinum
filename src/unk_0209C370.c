#include "unk_0209C370.h"

#include "heap.h"

u8 *sub_0209C370(int param0)
{
    u8 *v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(void *));
    MI_CpuClear8(v0, sizeof(void *));
    return v0;
}

void sub_0209C388(u8 *param0)
{
    Heap_FreeToHeap(param0);
}
