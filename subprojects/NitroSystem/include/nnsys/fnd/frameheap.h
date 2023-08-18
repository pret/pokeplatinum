#ifndef NNS_FND_FRAMEHEAP_H_
#define NNS_FND_FRAMEHEAP_H_

#include <nnsys/fnd/heapcommon.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_FND_FRMHEAP_FREE_HEAD (1 << 0)
#define NNS_FND_FRMHEAP_FREE_TAIL (1 << 1)
#define NNS_FND_FRMHEAP_FREE_ALL (NNS_FND_FRMHEAP_FREE_HEAD | NNS_FND_FRMHEAP_FREE_TAIL)

typedef struct NNSiFndFrmHeapState NNSiFndFrmHeapState;

struct NNSiFndFrmHeapState {
    u32 tagName;
    void * headAllocator;
    void * tailAllocator;
    NNSiFndFrmHeapState * pPrevState;
};

typedef struct NNSiFndFrmHeapHead NNSiFndFrmHeapHead;

struct NNSiFndFrmHeapHead {
    void * headAllocator;
    void * tailAllocator;

    NNSiFndFrmHeapState * pState;
};

#define NNS_FndCreateFrmHeap(startAddress, size) \
    NNS_FndCreateFrmHeapEx(startAddress, size, 0)

#define NNS_FndAllocFromFrmHeap(heap, size) \
    NNS_FndAllocFromFrmHeapEx(heap, size, NNS_FND_HEAP_DEFAULT_ALIGNMENT)

#define NNS_FndGetAllocatableSizeForFrmHeap(heap) \
    NNS_FndGetAllocatableSizeForFrmHeapEx(heap, NNS_FND_HEAP_DEFAULT_ALIGNMENT)

void * NNSi_FndGetFreeStartForFrmHeap(
    NNSFndHeapHandle heap);

void * NNSi_FndGetFreeEndForFrmHeap(
    NNSFndHeapHandle heap);

#if !defined(NNS_FINALROM)

void NNSi_FndDumpFrmHeap(
    NNSFndHeapHandle heap);

#endif

NNSFndHeapHandle NNS_FndCreateFrmHeapEx(
    void * startAddress,
    u32 size,
    u16 optFlag);

void NNS_FndDestroyFrmHeap(
    NNSFndHeapHandle heap);

void * NNS_FndAllocFromFrmHeapEx(
    NNSFndHeapHandle heap,
    u32 size,
    int alignment);

void NNS_FndFreeToFrmHeap(
    NNSFndHeapHandle heap,
    int mode);

u32 NNS_FndGetAllocatableSizeForFrmHeapEx(
    NNSFndHeapHandle heap,
    int alignment);

BOOL NNS_FndRecordStateForFrmHeap(
    NNSFndHeapHandle heap,
    u32 tagName);

BOOL NNS_FndFreeByStateToFrmHeap(
    NNSFndHeapHandle heap,
    u32 tagName);

u32 NNS_FndAdjustFrmHeap(
    NNSFndHeapHandle heap);

u32 NNS_FndResizeForMBlockFrmHeap(
    NNSFndHeapHandle heap,
    void * memBlock,
    u32 newSize);

#ifdef __cplusplus
}
#endif

#endif
