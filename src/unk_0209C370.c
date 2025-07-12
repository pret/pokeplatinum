#include "unk_0209C370.h"

#include "heap.h"

u8 *sub_0209C370(int heapID)
{
    u8 *v0 = Heap_AllocFromHeap(heapID, sizeof(void *));
    MI_CpuClear8(v0, sizeof(void *));
    return v0;
}

void sub_0209C388(u8 *param0)
{
    Heap_Free(param0);
}
