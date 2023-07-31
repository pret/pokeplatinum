#ifndef NNS_FND_EXPHEAP_H_
#define NNS_FND_EXPHEAP_H_

#include <nnsys/fnd/heapcommon.h>

#ifdef __cplusplus
extern "C" {
#endif

enum {
    NNS_FND_EXPHEAP_ALLOC_DIR_FRONT,
    NNS_FND_EXPHEAP_ALLOC_DIR_REAR
};

enum {
    NNS_FND_EXPHEAP_ALLOC_MODE_FIRST,

    NNS_FND_EXPHEAP_ALLOC_MODE_NEAR
};

typedef struct NNSiFndExpHeapMBlockHead NNSiFndExpHeapMBlockHead;

struct NNSiFndExpHeapMBlockHead {
    u16 signature;
    u16 attribute;

    u32 blockSize;

    NNSiFndExpHeapMBlockHead * pMBHeadPrev;
    NNSiFndExpHeapMBlockHead * pMBHeadNext;
};

typedef struct NNSiFndExpMBlockList NNSiFndExpMBlockList;

struct NNSiFndExpMBlockList {
    NNSiFndExpHeapMBlockHead * head;
    NNSiFndExpHeapMBlockHead * tail;
};

typedef struct NNSiFndExpHeapHead NNSiFndExpHeapHead;

struct NNSiFndExpHeapHead {
    NNSiFndExpMBlockList mbFreeList;
    NNSiFndExpMBlockList mbUsedList;

    u16 groupID;
    u16 feature;
};

typedef void (* NNSFndHeapVisitor)(
    void * memBlock,
    NNSFndHeapHandle heap,
    u32 userParam);

#define NNS_FndCreateExpHeap(startAddress, size) \
    NNS_FndCreateExpHeapEx(startAddress, size, 0)

#define NNS_FndAllocFromExpHeap(heap, size) \
    NNS_FndAllocFromExpHeapEx(heap, size, NNS_FND_HEAP_DEFAULT_ALIGNMENT)

#define NNS_FndGetAllocatableSizeForExpHeap(heap) \
    NNS_FndGetAllocatableSizeForExpHeapEx(heap, NNS_FND_HEAP_DEFAULT_ALIGNMENT)

#if !defined(NNS_FINALROM)

void NNSi_FndDumpExpHeap(
    NNSFndHeapHandle heap);

#endif

NNSFndHeapHandle NNS_FndCreateExpHeapEx(
    void * startAddress,
    u32 size,
    u16 optFlag);

void NNS_FndDestroyExpHeap(
    NNSFndHeapHandle heap);

void * NNS_FndAllocFromExpHeapEx(
    NNSFndHeapHandle heap,
    u32 size,
    int alignment);

u32 NNS_FndResizeForMBlockExpHeap(
    NNSFndHeapHandle heap,
    void * memBlock,
    u32 size);

void NNS_FndFreeToExpHeap(
    NNSFndHeapHandle heap,
    void * memBlock);

u32 NNS_FndGetTotalFreeSizeForExpHeap(
    NNSFndHeapHandle heap);

u32 NNS_FndGetAllocatableSizeForExpHeapEx(
    NNSFndHeapHandle heap,
    int alignment);

u16 NNS_FndSetAllocModeForExpHeap(
    NNSFndHeapHandle heap,
    u16 mode);

u16 NNS_FndGetAllocModeForExpHeap(
    NNSFndHeapHandle heap);

u16 NNS_FndSetGroupIDForExpHeap(
    NNSFndHeapHandle heap,
    u16 groupID);

u16 NNS_FndGetGroupIDForExpHeap(
    NNSFndHeapHandle heap);

void NNS_FndVisitAllocatedForExpHeap(
    NNSFndHeapHandle heap,
    NNSFndHeapVisitor visitor,
    u32 userParam);

u32 NNS_FndGetSizeForMBlockExpHeap(
    const void * memBlock);

u16 NNS_FndGetGroupIDForMBlockExpHeap(
    const void * memBlock);

u16 NNS_FndGetAllocDirForMBlockExpHeap(
    const void * memBlock);

#if defined(NNS_FINALROM)

    #define             NNS_FndCheckExpHeap(heap, optFlag) (TRUE)

    #define             NNS_FndCheckForMBlockExpHeap(memBlock, heap, optFlag) (TRUE)

#else

BOOL NNS_FndCheckExpHeap(
    NNSFndHeapHandle heap,
    u32 optFlag);

BOOL NNS_FndCheckForMBlockExpHeap(
    const void * memBlock,
    NNSFndHeapHandle heap,
    u32 optFlag);

#endif

#ifdef __cplusplus
}
#endif

#endif
