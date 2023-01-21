#ifndef POKEPLATINUM_UNK_02017E74_H
#define POKEPLATINUM_UNK_02017E74_H

#include "struct_defs/struct_02017E74.h"

#include <nnsys.h>

BOOL CreateHeap(u32 parent, u32 child, u32 size);
BOOL CreateHeapAtEnd(u32 parent, u32 child, u32 size);
void DestroyHeap(u32 heapID);
void * AllocFromHeap(u32 heapID, u32 size);
void * AllocFromHeapAtEnd(u32 heapID, u32 size);
void FreeToHeap(void * ptr);
void FreeToHeapExplicit(u32 heapID, void * ptr);
u32 GF_ExpHeap_FndGetTotalFreeSize(u32 heapID);
void GF_ExpHeap_FndInitAllocator(NNSFndAllocator * pAllocator, u32 heapID, int alignment);
void ReallocFromHeap(void * ptr, u32 newSize);
BOOL GF_heap_c_dummy_return_true(u32 heapID);

#endif // POKEPLATINUM_UNK_02017E74_H
