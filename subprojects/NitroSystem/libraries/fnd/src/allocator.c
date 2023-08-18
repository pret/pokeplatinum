#include <nitro.h>
#include <nnsys/misc.h>
#include <nnsys/fnd/expheap.h>
#include <nnsys/fnd/frameheap.h>
#include <nnsys/fnd/unitheap.h>
#include <nnsys/fnd/allocator.h>


static void *AllocatorAllocForExpHeap (NNSFndAllocator * pAllocator, u32 size)
{
    NNSFndHeapHandle const heap = pAllocator->pHeap;
    int const alignment = (int)pAllocator->heapParam1;
    return NNS_FndAllocFromExpHeapEx(heap, size, alignment);
}

static void AllocatorFreeForExpHeap (NNSFndAllocator * pAllocator, void * memBlock)
{
    NNSFndHeapHandle const heap = pAllocator->pHeap;
    NNS_FndFreeToExpHeap(heap, memBlock);
}

static void *AllocatorAllocForFrmHeap (NNSFndAllocator * pAllocator, u32 size)
{
    NNSFndHeapHandle const heap = pAllocator->pHeap;
    int const alignment = (int)pAllocator->heapParam1;
    return NNS_FndAllocFromFrmHeapEx(heap, size, alignment);
}

static void AllocatorFreeForFrmHeap (NNSFndAllocator * pAllocator, void * memBlock)
{
    return;
}

static void *AllocatorAllocForUnitHeap (NNSFndAllocator * pAllocator, u32 size)
{
    NNSFndHeapHandle const heap = pAllocator->pHeap;

    if (size > NNS_FndGetMemBlockSizeForUnitHeap(heap)) {
        return NULL;
    }

    return NNS_FndAllocFromUnitHeap(heap);
}

static void AllocatorFreeForUnitHeap (NNSFndAllocator * pAllocator, void * memBlock)
{
    NNSFndHeapHandle const heap = pAllocator->pHeap;
    NNS_FndFreeToUnitHeap(heap, memBlock);
}

static void *AllocatorAllocForSDKHeap (NNSFndAllocator * pAllocator, u32 size)
{
    OSHeapHandle const heap = (int)pAllocator->pHeap;
    OSArenaId const id = (OSArenaId)pAllocator->heapParam1;
    return OS_AllocFromHeap(id, heap, size);
}

static void AllocatorFreeForSDKHeap (NNSFndAllocator * pAllocator, void * memBlock)
{
    OSHeapHandle const heap = (int)pAllocator->pHeap;
    OSArenaId const id = (OSArenaId)pAllocator->heapParam1;
    OS_FreeToHeap(id, heap, memBlock);
}

void *NNS_FndAllocFromAllocator (NNSFndAllocator * pAllocator, u32 size)
{
    NNS_ASSERT(pAllocator);
    return (*pAllocator->pFunc->pfAlloc)(pAllocator, size);
}

void NNS_FndFreeToAllocator (NNSFndAllocator * pAllocator, void * memBlock)
{
    NNS_ASSERT(pAllocator && memBlock);
    (*pAllocator->pFunc->pfFree)(pAllocator, memBlock);
}

void NNS_FndInitAllocatorForExpHeap (NNSFndAllocator * pAllocator, NNSFndHeapHandle heap, int alignment)
{
    static const NNSFndAllocatorFunc sAllocatorFunc = {
        AllocatorAllocForExpHeap,
        AllocatorFreeForExpHeap
    };

    pAllocator->pFunc = &sAllocatorFunc;
    pAllocator->pHeap = heap;
    pAllocator->heapParam1 = (u32)alignment;
    pAllocator->heapParam2 = 0;
}

void NNS_FndInitAllocatorForFrmHeap (NNSFndAllocator * pAllocator, NNSFndHeapHandle heap, int alignment)
{
    static const NNSFndAllocatorFunc sAllocatorFunc = {
        AllocatorAllocForFrmHeap,
        AllocatorFreeForFrmHeap
    };

    pAllocator->pFunc = &sAllocatorFunc;
    pAllocator->pHeap = heap;
    pAllocator->heapParam1 = (u32)alignment;
    pAllocator->heapParam2 = 0;
}

void NNS_FndInitAllocatorForUnitHeap (NNSFndAllocator * pAllocator, NNSFndHeapHandle heap)
{
    static const NNSFndAllocatorFunc sAllocatorFunc = {
        AllocatorAllocForUnitHeap,
        AllocatorFreeForUnitHeap
    };

    pAllocator->pFunc = &sAllocatorFunc;
    pAllocator->pHeap = heap;
    pAllocator->heapParam1 = 0;
    pAllocator->heapParam2 = 0;
}

void NNS_FndInitAllocatorForSDKHeap (NNSFndAllocator * pAllocator, OSArenaId id, OSHeapHandle heap)
{
    static const NNSFndAllocatorFunc sAllocatorFunc = {
        AllocatorAllocForSDKHeap,
        AllocatorFreeForSDKHeap
    };

    pAllocator->pFunc = &sAllocatorFunc;
    pAllocator->pHeap = (void *)heap;
    pAllocator->heapParam1 = id;
    pAllocator->heapParam2 = 0;
}
