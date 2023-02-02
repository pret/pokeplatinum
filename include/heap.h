#ifndef POKEPLATINUM_UNK_02017E74_H
#define POKEPLATINUM_UNK_02017E74_H

#include "struct_defs/struct_02017E74.h"

#include <nnsys.h>

BOOL Heap_Create(u32 parent, u32 child, u32 size);
BOOL Heap_CreateAtEnd(u32 parent, u32 child, u32 size);
void Heap_Destroy(u32 heapID);
void * Heap_AllocFromHeap(u32 heapID, u32 size);
void * Heap_AllocFromHeapAtEnd(u32 heapID, u32 size);
void Heap_FreeToHeap(void * ptr);
void Heap_FreeToHeapExplicit(u32 heapID, void * ptr);
u32 Heap_FndGetTotalFreeSizeForExpHeap(u32 heapID);
void Heap_FndInitAllocatorForExpHeap(NNSFndAllocator * pAllocator, u32 heapID, int alignment);
void Heap_ReallocFromHeap(void * ptr, u32 newSize);
BOOL GF_heap_c_dummy_return_true(u32 heapID);

#endif // POKEPLATINUM_UNK_02017E74_H
