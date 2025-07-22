#include "vram_transfer.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "constants/heap.h"

#include "heap.h"

typedef struct VramTransferTaskManager {
    u32 max;
    u32 cur;
    NNSGfdVramTransferTask *tasks;
} VramTransferTaskManager;

static VramTransferTaskManager *sTransferTaskManager;

void VramTransfer_New(u32 capacity, enum HeapId heapID) {
    GF_ASSERT(sTransferTaskManager == NULL);
    sTransferTaskManager = Heap_AllocFromHeap(heapID, sizeof(VramTransferTaskManager));
    GF_ASSERT(sTransferTaskManager);

    sTransferTaskManager->tasks = Heap_AllocFromHeap(heapID, sizeof(NNSGfdVramTransferTask) * capacity);
    sTransferTaskManager->max = capacity;
    sTransferTaskManager->cur = 0;

    NNS_GfdInitVramTransferManager(sTransferTaskManager->tasks, sTransferTaskManager->max);
}

void VramTransfer_Free(void) {
    GF_ASSERT(sTransferTaskManager != NULL);

    Heap_Free(sTransferTaskManager->tasks);
    Heap_Free(sTransferTaskManager);

    sTransferTaskManager = NULL;
}

BOOL VramTransfer_Request(NNS_GFD_DST_TYPE type, u32 destAddr, void *buf, u32 size) {
    GF_ASSERT(sTransferTaskManager);
    sTransferTaskManager->cur++;

    if (sTransferTaskManager->cur >= sTransferTaskManager->max) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    return NNS_GfdRegisterNewVramTransferTask(type, destAddr, buf, size);
}

void VramTransfer_Process(void) {
    if (sTransferTaskManager) {
        NNS_GfdDoVramTransfer();
        sTransferTaskManager->cur = 0;
    }
}
