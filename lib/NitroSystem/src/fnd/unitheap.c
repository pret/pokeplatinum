#include <nitro.h>
#include <nnsys/misc.h>
#include <nnsys/fnd/unitheap.h>
#include <nnsys/fnd/config.h>

#include "include/heapcommoni.h"

#define MIN_ALIGNMENT 4

static NNSiFndUntHeapMBlockHead * PopMBlock (NNSiFndUntMBlockList * list) {
    NNSiFndUntHeapMBlockHead * block = list->head;
    if (block) {
        list->head = block->pMBlkHdNext;
    }

    return block;
}

static NNS_FND_INLINE void PushMBlock (NNSiFndUntMBlockList * list, NNSiFndUntHeapMBlockHead * block) {
    block->pMBlkHdNext = list->head;
    list->head = block;
}

static NNS_FND_INLINE NNSiFndUntHeapHead * GetUnitHeapHeadPtrFromHeapHead (NNSiFndHeapHead * pHeapHd) {
    return AddU32ToPtr(pHeapHd, sizeof(NNSiFndHeapHead));
}

static NNS_FND_INLINE BOOL IsValidUnitHeapHandle (NNSFndHeapHandle handle) {
    if (handle == NNS_FND_HEAP_INVALID_HANDLE) {
        return FALSE;
    }

    {
        NNSiFndHeapHead * pHeapHd = handle;
        return pHeapHd->signature == NNSI_UNTHEAP_SIGNATURE;
    }
}

#if !defined(NNS_FINALROM)

void NNSi_FndDumpUnitHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidUnitHeapHandle(heap));

    {
        NNSiFndHeapHead * const pHeapHd = heap;
        NNSiFndUntHeapHead * const pUnitHeapHd = GetUnitHeapHeadPtrFromHeapHead(pHeapHd);
        const u32 heapSize = GetOffsetFromPtr(pHeapHd->heapStart, pHeapHd->heapEnd);

        const u32 freeSize = NNS_FndCountFreeBlockForUnitHeap(heap) * pUnitHeapHd->mBlkSize;
        const u32 usedSize = heapSize - freeSize;

        NNSi_FndDumpHeapHead(pHeapHd);

        OS_Printf(
            "    %d / %d bytes (%6.2f%%) used\n",
            usedSize, heapSize, 100.0f * usedSize / heapSize
        );
    }
}

#endif

NNSFndHeapHandle NNS_FndCreateUnitHeapEx (void * startAddress, u32 heapSize, u32 memBlockSize, int alignment, u16 optFlag) {
    NNSiFndHeapHead * pHeapHd;
    void * heapEnd;

    SDK_NULL_ASSERT(startAddress);

    NNS_ASSERT(alignment % MIN_ALIGNMENT == 0);
    NNS_ASSERT(MIN_ALIGNMENT <= alignment && alignment <= 32);

    pHeapHd = NNSi_FndRoundUpPtr(startAddress, MIN_ALIGNMENT);
    heapEnd = NNSi_FndRoundDownPtr(AddU32ToPtr(startAddress, heapSize), MIN_ALIGNMENT);

    if (ComparePtr(pHeapHd, heapEnd) > 0) {
        return NNS_FND_HEAP_INVALID_HANDLE;
    }

    memBlockSize = NNSi_FndRoundUp(memBlockSize, alignment);

    {
        NNSiFndUntHeapHead * pUntHeapHd = GetUnitHeapHeadPtrFromHeapHead(pHeapHd);
        void * heapStart = NNSi_FndRoundUpPtr(AddU32ToPtr(pUntHeapHd, sizeof(NNSiFndUntHeapHead)), alignment);
        u32 elementNum;

        if (ComparePtr(heapStart, heapEnd) > 0) {
            return NNS_FND_HEAP_INVALID_HANDLE;
        }

        elementNum = GetOffsetFromPtr(heapStart, heapEnd) / memBlockSize;
        if (elementNum == 0) {
            return NNS_FND_HEAP_INVALID_HANDLE;
        }

        heapEnd = AddU32ToPtr(heapStart, elementNum * memBlockSize);

        NNSi_FndInitHeapHead(
            pHeapHd,
            NNSI_UNTHEAP_SIGNATURE,
            heapStart,
            heapEnd,
            optFlag
        );

        pUntHeapHd->mbFreeList.head = heapStart;
        pUntHeapHd->mBlkSize = memBlockSize;

        {
            NNSiFndUntHeapMBlockHead * pMBlkHd = pUntHeapHd->mbFreeList.head;
            int i;

            for (i = 0; i < elementNum - 1; ++i, pMBlkHd = pMBlkHd->pMBlkHdNext) {
                pMBlkHd->pMBlkHdNext = AddU32ToPtr(pMBlkHd, memBlockSize);
            }

            pMBlkHd->pMBlkHdNext = NULL;
        }

        return pHeapHd;
    }
}

void NNS_FndDestroyUnitHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidUnitHeapHandle(heap));
    NNSi_FndFinalizeHeap(heap);
}

void * NNS_FndAllocFromUnitHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidUnitHeapHandle(heap));

    {
        NNSiFndUntHeapHead * pUntHeapHd = GetUnitHeapHeadPtrFromHeapHead(heap);
        NNSiFndUntHeapMBlockHead * pMBlkHd = PopMBlock(&pUntHeapHd->mbFreeList);

        if (pMBlkHd) {
            FillAllocMemory(heap, pMBlkHd, pUntHeapHd->mBlkSize);
        }

        return pMBlkHd;
    }
}

void NNS_FndFreeToUnitHeap (NNSFndHeapHandle heap, void * memBlock) {
    NNS_ASSERT(IsValidUnitHeapHandle(heap));

    {
        NNSiFndUntHeapHead * pUntHeapHd = GetUnitHeapHeadPtrFromHeapHead(heap);

        FillFreeMemory(heap, memBlock, pUntHeapHd->mBlkSize);
        PushMBlock(&pUntHeapHd->mbFreeList, memBlock);
    }
}

u32 NNS_FndCountFreeBlockForUnitHeap (NNSFndHeapHandle heap) {
    NNS_ASSERT(IsValidUnitHeapHandle(heap));

    {
        NNSiFndUntHeapHead * pUntHeapHd = GetUnitHeapHeadPtrFromHeapHead(heap);
        NNSiFndUntHeapMBlockHead * pMBlkHd = pUntHeapHd->mbFreeList.head;
        u32 cnt = 0;

        for (; pMBlkHd; pMBlkHd = pMBlkHd->pMBlkHdNext) {
            ++cnt;
        }

        return cnt;
    }
}

u32 NNS_FndCalcHeapSizeForUnitHeap (u32 memBlockSize, u32 memBlockNum, int alignment) {
    return sizeof(NNSiFndHeapHead) + sizeof(NNSiFndUntHeapHead) + (alignment - 4) + memBlockNum * NNSi_FndRoundUp(memBlockSize, alignment);
}
