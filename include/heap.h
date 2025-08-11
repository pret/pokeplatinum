#ifndef POKEPLATINUM_UNK_02017E74_H
#define POKEPLATINUM_UNK_02017E74_H

#include <nnsys.h>

#include "constants/heap.h"

typedef struct HeapParam {
    u32 size;
    OSArenaId arena;
} HeapParam;

void Heap_InitSystem(const HeapParam *templates, u32 nTemplates, u32 totalNumHeaps, u32 preSize);
BOOL Heap_Create(u32 parent, u32 child, u32 size);
BOOL Heap_CreateAtEnd(u32 parent, u32 child, u32 size);
void Heap_Destroy(u32 heapID);
void *Heap_AllocFromHeap(u32 heapID, u32 size);
void *Heap_AllocFromHeapAtEnd(u32 heapID, u32 size);
void Heap_Free(void *ptr);
void Heap_FreeExplicit(u32 heapID, void *ptr);
u32 Heap_FndGetTotalFreeSizeForExpHeap(u32 heapID);
void Heap_FndInitAllocatorForExpHeap(NNSFndAllocator *pAllocator, u32 heapID, int alignment);
void Heap_ReallocFromHeap(void *ptr, u32 newSize);
BOOL GF_heap_c_dummy_return_true(u32 heapID);

#endif // POKEPLATINUM_UNK_02017E74_H
