#include "overlay005/resource_heap.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "heap.h"
#include "narc.h"

#define RESOURCE_HEAP_ITEM_HEADER_INVALID_ID 0

static void *ResourceHeap_AllocItemData(ResourceHeap *resHeap, u32 size, BOOL allocAtEnd);
static void FreeHeapItemData(void *itemData);
static ResourceHeapItemHeader *ResourceHeap_FindItem(ResourceHeap *resHeap, u32 id);
static ResourceHeapItemHeader *ResourceHeap_FindFreeItem(ResourceHeap *resHeap);
static void ResourceHeapItemHeader_Init(ResourceHeapItemHeader *item, u32 id, void *data);
static void ResourceHeapItemHeader_Reset(ResourceHeapItemHeader *item);

ResourceHeap *ResourceHeap_New(enum HeapID parentHeapID, enum HeapID heapID, u32 itemPoolSize, u32 itemCount)
{
    u32 itemHeadersSize = sizeof(ResourceHeapItemHeader) * itemCount;
    u32 heapSize = itemPoolSize + itemHeadersSize + sizeof(ResourceHeap);

    BOOL heapCreated = Heap_Create(parentHeapID, heapID, heapSize);
    GF_ASSERT(heapCreated == TRUE);

    itemPoolSize = heapSize - itemPoolSize;
    ResourceHeap *resHeap = Heap_Alloc(heapID, itemPoolSize);

    GF_ASSERT(resHeap != NULL);
    memset(resHeap, 0, itemPoolSize);

    resHeap->parentHeapID = parentHeapID;
    resHeap->heapID = heapID;
    resHeap->itemCount = itemCount;
    resHeap->heapSize = heapSize;
    resHeap->itemHeadersSize = itemHeadersSize;
    resHeap->items = (void *)((u32)resHeap + sizeof(ResourceHeap));

    return resHeap;
}

void ResourceHeap_Free(ResourceHeap *resHeap)
{
    u32 i = resHeap->itemCount;
    ResourceHeapItemHeader *iter = resHeap->items;

    while (i) {
        if (iter->data != NULL) {
            ResourceHeap_FreeItem(resHeap, iter->id);
        }

        i--;
        iter++;
    }

    enum HeapID heapID = resHeap->heapID;

    Heap_Free(resHeap);
    Heap_Destroy(heapID);
}

void *ResourceHeap_AllocItem(ResourceHeap *resHeap, u32 id, u32 dataSize, BOOL allocAtEnd)
{
    ResourceHeapItemHeader *item = ResourceHeap_FindFreeItem(resHeap);
    GF_ASSERT(item != NULL);

    void *data = ResourceHeap_AllocItemData(resHeap, dataSize, allocAtEnd);

    ResourceHeapItemHeader_Init(item, id, data);
    return data;
}

void ResourceHeap_FreeItem(ResourceHeap *resHeap, u32 id)
{
    ResourceHeapItemHeader *item = ResourceHeap_FindItem(resHeap, id);
    GF_ASSERT(item != NULL);

    FreeHeapItemData(item->data);
    ResourceHeapItemHeader_Reset(item);
}

void *ResourceHeap_GetItemData(ResourceHeap *resHeap, u32 id)
{
    ResourceHeapItemHeader *item = ResourceHeap_FindItem(resHeap, id);

    GF_ASSERT(item != NULL);
    return item->data;
}

BOOL ResourceHeap_HasItem(ResourceHeap *resHeap, u32 id)
{
    ResourceHeapItemHeader *item = ResourceHeap_FindItem(resHeap, id);
    return item != NULL;
}

void *ResourceHeap_LoadMemberFromNARC(ResourceHeap *resHeap, u32 id, NARC *narc, u32 memberIndex, BOOL allocAtEnd)
{
    u32 memberSize = NARC_GetMemberSize(narc, memberIndex);
    void *buffer = ResourceHeap_AllocItem(resHeap, id, memberSize, allocAtEnd);

    NARC_ReadWholeMember(narc, memberIndex, buffer);
    return buffer;
}

static void *ResourceHeap_AllocItemData(ResourceHeap *resHeap, u32 size, BOOL allocAtEnd)
{
    void *data;

    if (allocAtEnd == FALSE) {
        data = Heap_Alloc(resHeap->heapID, size);
    } else {
        data = Heap_AllocAtEnd(resHeap->heapID, size);
    }

    GF_ASSERT(data != NULL);
    return data;
}

static void FreeHeapItemData(void *itemData)
{
    Heap_Free(itemData);
}

static ResourceHeapItemHeader *ResourceHeap_FindItem(ResourceHeap *resHeap, u32 id)
{
    u32 i = resHeap->itemCount;
    ResourceHeapItemHeader *iter = resHeap->items;

    while (i) {
        if (iter->data != NULL && iter->id == id) {
            return iter;
        }

        iter++;
        i--;
    }

    return NULL;
}

static ResourceHeapItemHeader *ResourceHeap_FindFreeItem(ResourceHeap *resHeap)
{
    u32 i = resHeap->itemCount;
    ResourceHeapItemHeader *iter = resHeap->items;

    while (i) {
        if (iter->data == NULL) {
            return iter;
        }

        iter++;
        i--;
    }

    return NULL;
}

static void ResourceHeapItemHeader_Init(ResourceHeapItemHeader *item, u32 id, void *data)
{
    item->data = data;
    item->id = id;
}

static void ResourceHeapItemHeader_Reset(ResourceHeapItemHeader *item)
{
    item->data = NULL;
    item->id = RESOURCE_HEAP_ITEM_HEADER_INVALID_ID;
}
