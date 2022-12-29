#ifndef NNS_FND_UNITHEAP_H_
#define NNS_FND_UNITHEAP_H_

#include <nnsys/fnd/heapcommon.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct NNSiFndUntHeapMBlockHead NNSiFndUntHeapMBlockHead;

struct NNSiFndUntHeapMBlockHead {
    NNSiFndUntHeapMBlockHead * pMBlkHdNext;
};

typedef struct NNSiFndUntMBlockList NNSiFndUntMBlockList;

struct NNSiFndUntMBlockList {
    NNSiFndUntHeapMBlockHead * head;
};

typedef struct NNSiFndUntHeapHead NNSiFndUntHeapHead;

struct NNSiFndUntHeapHead {
    NNSiFndUntMBlockList mbFreeList;
    u32 mBlkSize;
};

#define NNS_FndCreateUnitHeap(startAddress, heapSize, memBlockSize) \
    NNS_FndCreateUnitHeapEx(startAddress, heapSize, memBlockSize, NNS_FND_HEAP_DEFAULT_ALIGNMENT, 0)

#define NNS_FndGetMemBlockSizeForUnitHeap(heap) \
    (((const NNSiFndUntHeapHead *)((const u8 *)((const void *)(heap)) + sizeof(NNSiFndHeapHead)))->mBlkSize)

#if !defined(NNS_FINALROM)

void NNSi_FndDumpUnitHeap(
    NNSFndHeapHandle heap);

#endif

NNSFndHeapHandle NNS_FndCreateUnitHeapEx(
    void * startAddress,
    u32 heapSize,
    u32 memBlockSize,
    int alignment,
    u16 optFlag);

void NNS_FndDestroyUnitHeap(
    NNSFndHeapHandle heap);

void * NNS_FndAllocFromUnitHeap(
    NNSFndHeapHandle heap);

void NNS_FndFreeToUnitHeap(
    NNSFndHeapHandle heap,
    void * memBlock);

u32 NNS_FndCountFreeBlockForUnitHeap(
    NNSFndHeapHandle heap);

u32 NNS_FndCalcHeapSizeForUnitHeap(
    u32 memBlockSize,
    u32 memBlockNum,
    int alignment);

#ifdef __cplusplus
}
#endif

#endif
