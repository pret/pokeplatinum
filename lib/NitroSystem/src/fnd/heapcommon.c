#include <nitro.h>
#include <nnsys/misc.h>
#include <nnsys/fnd/heapcommon.h>
#include <nnsys/fnd/expheap.h>
#include <nnsys/fnd/frameheap.h>
#include <nnsys/fnd/unitheap.h>
#include <nnsys/fnd/config.h>

#include "include/heapcommoni.h"

static NNSFndList sRootList;
static BOOL sRootListInitialized = FALSE;

#if !defined(NNS_FINALROM)

static u32 sFillVals[NNS_FND_HEAP_FILL_MAX] = {
    0xC3C3C3C3,
    0xF3F3F3F3,
    0xD3D3D3D3,
};

#endif

static NNSiFndHeapHead * FindContainHeap (NNSFndList * pList, const void * memBlock) {
    NNSiFndHeapHead * pHeapHd = NULL;
    while (NULL != (pHeapHd = NNS_FndGetNextListObject(pList, pHeapHd))) {
        if (NNSiGetUIntPtr(pHeapHd->heapStart) <= NNSiGetUIntPtr(memBlock)
            && NNSiGetUIntPtr(memBlock) < NNSiGetUIntPtr(pHeapHd->heapEnd)
        ) {
            NNSiFndHeapHead * pChildHeapHd = FindContainHeap(&pHeapHd->childList, memBlock);
            if (pChildHeapHd) {
                return pChildHeapHd;
            }

            return pHeapHd;
        }
    }

    return NULL;
}

static NNSFndList * FindListContainHeap (NNSiFndHeapHead * pHeapHd) {
    NNSFndList * pList = &sRootList;

    NNSiFndHeapHead * pContainHeap = FindContainHeap(&sRootList, pHeapHd);

    if (pContainHeap) {
        pList = &pContainHeap->childList;
    }

    return pList;
}

static NNS_FND_INLINE void DumpHeapList (void) {
    return;
}

void NNSi_FndInitHeapHead (NNSiFndHeapHead * pHeapHd, u32 signature, void * heapStart, void * heapEnd, u16 optFlag) {
    pHeapHd->signature = signature;

    pHeapHd->heapStart = heapStart;
    pHeapHd->heapEnd = heapEnd;

    pHeapHd->attribute = 0;
    SetOptForHeap(pHeapHd, optFlag);

    FillNoUseMemory(
        pHeapHd,
        heapStart,
        GetOffsetFromPtr(heapStart, heapEnd)
    );

    NNS_FND_INIT_LIST(&pHeapHd->childList, NNSiFndHeapHead, link);

    if (!sRootListInitialized) {
        NNS_FND_INIT_LIST(&sRootList, NNSiFndHeapHead, link);
        sRootListInitialized = TRUE;
    }

    NNS_FndAppendListObject(FindListContainHeap(pHeapHd), pHeapHd);
    DumpHeapList();
}

void NNSi_FndFinalizeHeap (NNSiFndHeapHead * pHeapHd) {
    NNS_FndRemoveListObject(FindListContainHeap(pHeapHd), pHeapHd);
    DumpHeapList();
}

void NNSi_FndDumpHeapHead (NNSiFndHeapHead * pHeapHd) {
    OS_Printf("[NNS Foundation ");

    switch (pHeapHd->signature) {
    case NNSI_EXPHEAP_SIGNATURE: OS_Printf("Exp");   break;
    case NNSI_FRMHEAP_SIGNATURE: OS_Printf("Frame"); break;
    case NNSI_UNTHEAP_SIGNATURE: OS_Printf("Unit");  break;
    default:
        NNS_ASSERT(FALSE);
    }

    OS_Printf(" Heap]\n");

    OS_Printf("    whole [%p - %p)\n", pHeapHd, pHeapHd->heapEnd);
}

NNSFndHeapHandle NNS_FndFindContainHeap (const void * memBlock) {
    return FindContainHeap(&sRootList, memBlock);
}

#if !defined(NNS_FINALROM)

void NNS_FndDumpHeap (NNSFndHeapHandle heap) {
    NNSiFndHeapHead * pHeapHd = heap;
    switch (pHeapHd->signature) {
    case NNSI_EXPHEAP_SIGNATURE: NNSi_FndDumpExpHeap(heap);  break;
    case NNSI_FRMHEAP_SIGNATURE: NNSi_FndDumpFrmHeap(heap);  break;
    case NNSI_UNTHEAP_SIGNATURE: NNSi_FndDumpUnitHeap(heap); break;
    default:
        OS_Printf("[NNS Foundation] dump heap : unknown heap. - %p\n", heap);
    }
}

#endif

#if !defined(NNS_FINALROM)

u32 NNS_FndSetFillValForHeap (int type, u32 val) {
    NNS_ASSERT(type < NNS_FND_HEAP_FILL_MAX);

    {
        u32 oldVal = sFillVals[type];
        sFillVals[type] = val;
        return oldVal;
    }
}

#endif

#if !defined(NNS_FINALROM)

u32 NNS_FndGetFillValForHeap (int type) {
    NNS_ASSERT(type < NNS_FND_HEAP_FILL_MAX);

    return sFillVals[type];
}

#endif
