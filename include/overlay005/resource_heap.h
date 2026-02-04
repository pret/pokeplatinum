#ifndef POKEPLATINUM_RESOURCE_HEAP_H
#define POKEPLATINUM_RESOURCE_HEAP_H

#include "constants/heap.h"

#include "narc.h"

typedef struct ResourceHeapItemHeader {
    void *data;
    u32 id;
} ResourceHeapItemHeader;

typedef struct ResourceHeap {
    enum HeapID parentHeapID;
    enum HeapID heapID;
    u32 itemCount;
    u32 heapSize;
    u32 itemHeadersSize;
    ResourceHeapItemHeader *items;
} ResourceHeap;

ResourceHeap *ResourceHeap_New(enum HeapID parentHeapID, enum HeapID heapID, u32 itemPoolSize, u32 itemCount);
void ResourceHeap_Free(ResourceHeap *resHeap);
void *ResourceHeap_AllocItem(ResourceHeap *resHeap, u32 id, u32 dataSize, BOOL allocAtEnd);
void ResourceHeap_FreeItem(ResourceHeap *resHeap, u32 id);
void *ResourceHeap_GetItemData(ResourceHeap *resHeap, u32 id);
BOOL ResourceHeap_HasItem(ResourceHeap *resHeap, u32 id);
void *ResourceHeap_LoadMemberFromNARC(ResourceHeap *resHeap, u32 id, NARC *narc, u32 memberIndex, BOOL allocAtEnd);

#endif // POKEPLATINUM_RESOURCE_HEAP_H
