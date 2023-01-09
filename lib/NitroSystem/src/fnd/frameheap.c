
#include <nitro.h>
#include <nnsys/misc.h>
#include <nnsys/fnd/frameheap.h>
#include <nnsys/fnd/config.h>

#include "include/heapcommoni.h"

#define MIN_ALIGNMENT 4

static NNS_FND_INLINE BOOL IsValidFrmHeapHandle (NNSFndHeapHandle handle) {
    if (handle == NNS_FND_HEAP_INVALID_HANDLE) {
        return FALSE;
    }

    {
        NNSiFndHeapHead * pHeapHd = handle;
        return pHeapHd->signature == NNSI_FRMHEAP_SIGNATURE;
    }
}

static NNS_FND_INLINE NNSiFndFrmHeapHead * GetFrmHeapHeadPtrFromHeapHead (NNSiFndHeapHead * pHHead) {
    return AddU32ToPtr(pHHead, sizeof(NNSiFndHeapHead));
}

static NNS_FND_INLINE NNSiFndHeapHead * GetHeapHeadPtrFromFrmHeapHead (NNSiFndFrmHeapHead * pFrmHeapHd) {
    return SubU32ToPtr(pFrmHeapHd, sizeof(NNSiFndHeapHead));
}

static NNSiFndHeapHead * InitFrameHeap (void * startAddress, void * endAddress, u16 optFlag) {
    NNSiFndHeapHead * pHeapHd = startAddress;
    NNSiFndFrmHeapHead * pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(pHeapHd);

    NNSi_FndInitHeapHead(
        pHeapHd,
        NNSI_FRMHEAP_SIGNATURE,
        AddU32ToPtr(pFrmHeapHd, sizeof(NNSiFndFrmHeapHead)),
        endAddress,
        optFlag
    );

    pFrmHeapHd->headAllocator = pHeapHd->heapStart;
    pFrmHeapHd->tailAllocator = pHeapHd->heapEnd;

    pFrmHeapHd->pState = NULL;

    return pHeapHd;
}

static void * AllocFromHead (NNSiFndFrmHeapHead * pFrmHeapHd, u32 size, int alignment) {
    void * newBlock = NNSi_FndRoundUpPtr(pFrmHeapHd->headAllocator, alignment);
    void * endAddress = AddU32ToPtr(newBlock, size);

    if (NNSiGetUIntPtr(endAddress) > NNSiGetUIntPtr(pFrmHeapHd->tailAllocator)) {
        return NULL;
    }

    FillAllocMemory(
        GetHeapHeadPtrFromFrmHeapHead(pFrmHeapHd),
        pFrmHeapHd->headAllocator,
        GetOffsetFromPtr(pFrmHeapHd->headAllocator, endAddress)
    );

    pFrmHeapHd->headAllocator = endAddress;

    return newBlock;
}

static void * AllocFromTail (NNSiFndFrmHeapHead * pFrmHeapHd, u32 size, int alignment) {
    void * newBlock = NNSi_FndRoundDownPtr(SubU32ToPtr(pFrmHeapHd->tailAllocator, size), alignment);

    if (NNSiGetUIntPtr(newBlock) < NNSiGetUIntPtr(pFrmHeapHd->headAllocator)) {
        return NULL;
    }

    FillAllocMemory(
        GetHeapHeadPtrFromFrmHeapHead(pFrmHeapHd),
        newBlock,
        GetOffsetFromPtr(newBlock, pFrmHeapHd->tailAllocator)
    );

    pFrmHeapHd->tailAllocator = newBlock;

    return newBlock;
}

static void FreeHead (NNSiFndHeapHead * pHeapHd) {
    NNSiFndFrmHeapHead * pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(pHeapHd);

    FillFreeMemory(
        pHeapHd,
        pHeapHd->heapStart,
        GetOffsetFromPtr(pHeapHd->heapStart, pFrmHeapHd->headAllocator)
    );

    pFrmHeapHd->headAllocator = pHeapHd->heapStart;
    pFrmHeapHd->pState = NULL;
}

static void FreeTail (NNSiFndHeapHead * pHeapHd) {
    NNSiFndFrmHeapHead * pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(pHeapHd);

    FillFreeMemory(
        pHeapHd,
        pFrmHeapHd->tailAllocator,
        GetOffsetFromPtr(pFrmHeapHd->tailAllocator, pHeapHd->heapEnd)
    );

    {
        NNSiFndFrmHeapState * pState;
        for (pState = pFrmHeapHd->pState; pState; pState = pState->pPrevState) {
            pState->tailAllocator = pHeapHd->heapEnd;
        }
    }

    pFrmHeapHd->tailAllocator = pHeapHd->heapEnd;
}

#if !defined(NNS_FINALROM)

static void PrintSize (u32 size, u32 wholeSize) {
    OS_Printf("%9d (%6.2f%%)", size, 100.0 * size / wholeSize);
}

#endif

void * NNSi_FndGetFreeStartForFrmHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidFrmHeapHandle(heap));
    return GetFrmHeapHeadPtrFromHeapHead(heap)->headAllocator;
}

void * NNSi_FndGetFreeEndForFrmHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidFrmHeapHandle(heap));
    return GetFrmHeapHeadPtrFromHeapHead(heap)->tailAllocator;
}

#if !defined(NNS_FINALROM)

void NNSi_FndDumpFrmHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidFrmHeapHandle(heap));

    {
        NNSiFndHeapHead * const pHeapHd = heap;
        NNSiFndFrmHeapHead * const pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(pHeapHd);
        const u32 heapSize = GetOffsetFromPtr(pHeapHd->heapStart, pHeapHd->heapEnd);

        NNSi_FndDumpHeapHead(pHeapHd);

        OS_Printf("     head [%p - %p) ", pHeapHd->heapStart, pFrmHeapHd->headAllocator);
        PrintSize(GetOffsetFromPtr(pHeapHd->heapStart, pFrmHeapHd->headAllocator), heapSize);
        OS_Printf("\n     free                           ");
        PrintSize(GetOffsetFromPtr(pFrmHeapHd->headAllocator, pFrmHeapHd->tailAllocator), heapSize);
        OS_Printf("\n     tail [%p - %p) ", pFrmHeapHd->tailAllocator, pHeapHd->heapEnd);
        PrintSize(GetOffsetFromPtr(pFrmHeapHd->tailAllocator, pHeapHd->heapEnd), heapSize);
        OS_Printf("\n");

        if (pFrmHeapHd->pState) {
            NNSiFndFrmHeapState * pState;

            OS_Printf("    state : [tag]   [head]      [tail]\n");

            for (pState = pFrmHeapHd->pState; pState; pState = pState->pPrevState) {
                OS_Printf(
                    "            '%c%c%c%c' : %p %p\n", pState->tagName >> 24, (pState->tagName >> 16) & 0xFF, (pState->tagName >> 8) & 0xFF, pState->tagName & 0xFF,
                    pState->headAllocator, pState->tailAllocator
                );
            }
        }

        OS_Printf("\n");
    }
}

#endif

NNSFndHeapHandle NNS_FndCreateFrmHeapEx (void * startAddress, u32 size, u16 optFlag) {
    void * endAddress;

    SDK_NULL_ASSERT(startAddress);

    endAddress = NNSi_FndRoundDownPtr(AddU32ToPtr(startAddress, size), MIN_ALIGNMENT);
    startAddress = NNSi_FndRoundUpPtr(startAddress, MIN_ALIGNMENT);

    if (NNSiGetUIntPtr(startAddress) > NNSiGetUIntPtr(endAddress)
        || GetOffsetFromPtr(startAddress, endAddress) < sizeof(NNSiFndHeapHead) + sizeof(NNSiFndFrmHeapHead)
    ) {
        return NNS_FND_HEAP_INVALID_HANDLE;
    }

    {
        NNSiFndHeapHead * pHHead = InitFrameHeap(startAddress, endAddress, optFlag);
        return pHHead;
    }
}

void NNS_FndDestroyFrmHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidFrmHeapHandle(heap));
    NNSi_FndFinalizeHeap(heap);
}

void * NNS_FndAllocFromFrmHeapEx (NNSFndHeapHandle heap, u32 size, int alignment) {
    void * memory = NULL;
    NNSiFndFrmHeapHead * pFrmHeapHd;

    NNS_ASSERT(IsValidFrmHeapHandle(heap));

    NNS_ASSERT(alignment % MIN_ALIGNMENT == 0);
    NNS_ASSERT(MIN_ALIGNMENT <= abs(alignment) && abs(alignment) <= 32);

    pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(heap);

    if (size == 0) {
        size = 1;
    }

    size = NNSi_FndRoundUp(size, MIN_ALIGNMENT);

    if (alignment >= 0) {
        memory = AllocFromHead(pFrmHeapHd, size, alignment);
    } else {
        memory = AllocFromTail(pFrmHeapHd, size, -alignment);
    }

    return memory;
}

void NNS_FndFreeToFrmHeap (NNSFndHeapHandle heap, int mode) {
    NNS_ASSERT(IsValidFrmHeapHandle(heap));

    if (mode & NNS_FND_FRMHEAP_FREE_HEAD) {
        FreeHead(heap);
    }

    if (mode & NNS_FND_FRMHEAP_FREE_TAIL) {
        FreeTail(heap);
    }
}

u32 NNS_FndGetAllocatableSizeForFrmHeapEx (NNSFndHeapHandle heap, int alignment) {
    NNS_ASSERT(IsValidFrmHeapHandle(heap));

    NNS_ASSERT(alignment % MIN_ALIGNMENT == 0);
    NNS_ASSERT(MIN_ALIGNMENT <= abs(alignment) && abs(alignment) <= 32);

    alignment = abs(alignment);

    {
        const NNSiFndFrmHeapHead * pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(heap);
        const void * block = NNSi_FndRoundUpPtr(pFrmHeapHd->headAllocator, alignment);

        if (NNSiGetUIntPtr(block) > NNSiGetUIntPtr(pFrmHeapHd->tailAllocator)) {
            return 0;
        }

        return GetOffsetFromPtr(block, pFrmHeapHd->tailAllocator);
    }
}

BOOL NNS_FndRecordStateForFrmHeap (NNSFndHeapHandle heap, u32 tagName) {
    NNS_ASSERT(IsValidFrmHeapHandle(heap));

    {
        NNSiFndFrmHeapHead * pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(heap);
        void * oldHeadAllocator = pFrmHeapHd->headAllocator;

        NNSiFndFrmHeapState * pState = AllocFromHead(pFrmHeapHd, sizeof(NNSiFndFrmHeapState), MIN_ALIGNMENT);
        if (!pState) {
            return FALSE;
        }

        pState->tagName = tagName;
        pState->headAllocator = oldHeadAllocator;
        pState->tailAllocator = pFrmHeapHd->tailAllocator;
        pState->pPrevState = pFrmHeapHd->pState;

        pFrmHeapHd->pState = pState;

        return TRUE;
    }
}

BOOL NNS_FndFreeByStateToFrmHeap (NNSFndHeapHandle heap, u32 tagName) {
    NNS_ASSERT(IsValidFrmHeapHandle(heap));

    {
        NNSiFndFrmHeapHead * pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(heap);
        NNSiFndFrmHeapState * pState = pFrmHeapHd->pState;

        if (tagName != 0) {
            for (; pState; pState = pState->pPrevState) {
                if (pState->tagName == tagName) {
                    break;
                }
            }
        }

        if (!pState) {
            return FALSE;
        }

        pFrmHeapHd->headAllocator = pState->headAllocator;
        pFrmHeapHd->tailAllocator = pState->tailAllocator;

        pFrmHeapHd->pState = pState->pPrevState;

        return TRUE;
    }
}

u32 NNS_FndAdjustFrmHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidFrmHeapHandle(heap));

    {
        NNSiFndHeapHead * pHeapHd = heap;
        NNSiFndFrmHeapHead * pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(pHeapHd);

        if (0 < GetOffsetFromPtr(pFrmHeapHd->tailAllocator, pHeapHd->heapEnd)) {
            return 0;
        }

        pFrmHeapHd->tailAllocator = pHeapHd->heapEnd = pFrmHeapHd->headAllocator;

        return GetOffsetFromPtr(heap, pHeapHd->heapEnd);
    }
}

u32 NNS_FndResizeForMBlockFrmHeap (NNSFndHeapHandle heap, void * memBlock, u32 newSize) {
    NNSiFndHeapHead * pHeapHd = NULL;
    NNSiFndFrmHeapHead * pFrmHeapHd = NULL;

    NNS_ASSERT(IsValidFrmHeapHandle(heap));
    NNS_ASSERT(memBlock == NNSi_FndRoundDownPtr(memBlock, MIN_ALIGNMENT));

    pHeapHd = heap;
    pFrmHeapHd = GetFrmHeapHeadPtrFromHeapHead(pHeapHd);

    NNS_ASSERT(
        ComparePtr(pHeapHd->heapStart, memBlock) <= 0
        && ComparePtr(pFrmHeapHd->headAllocator, memBlock) > 0
    );
    NNS_ASSERT(
        pFrmHeapHd->pState == NULL
        || ComparePtr(pFrmHeapHd->pState, memBlock) < 0
    );

    if (newSize == 0) {
        newSize = 1;
    }
    newSize = NNSi_FndRoundUp(newSize, MIN_ALIGNMENT);

    {
        const u32 oldSize = GetOffsetFromPtr(memBlock, pFrmHeapHd->headAllocator);
        void * endAddress = AddU32ToPtr(memBlock, newSize);

        if (newSize == oldSize) {
            return newSize;
        }

        if (newSize > oldSize) {
            if (ComparePtr(endAddress, pFrmHeapHd->tailAllocator) > 0) {
                return 0;
            }

            FillAllocMemory(heap, pFrmHeapHd->headAllocator, newSize - oldSize);
        } else {
            FillFreeMemory(heap, endAddress, oldSize - newSize);
        }

        pFrmHeapHd->headAllocator = endAddress;

        return newSize;
    }
}
