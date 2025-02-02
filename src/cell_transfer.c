#include "cell_transfer.h"

#include <nnsys.h>

#include "constants/heap.h"

#include "heap.h"
#include "vram_transfer.h"

static BOOL RegisterTransferTaskCB(NNS_GFD_DST_TYPE type, u32 destAddr, void *buf, u32 size);

NNSG2dCellTransferState *CellTransfer_New(int capacity, enum HeapId heapID)
{
    NNSG2dCellTransferState *transferStates = Heap_AllocFromHeap(heapID, sizeof(NNSG2dCellTransferState) * capacity);
    NNS_G2dInitCellTransferStateManager(transferStates, capacity, RegisterTransferTaskCB);
    return transferStates;
}

void CellTransfer_Update(void)
{
    NNS_G2dUpdateCellTransferStateManager();
}

void CellTransfer_Free(NNSG2dCellTransferState *transferStates)
{
    Heap_FreeToHeap(transferStates);
}

static BOOL RegisterTransferTaskCB(NNS_GFD_DST_TYPE type, u32 destAddr, void *buf, u32 size)
{
    return VramTransfer_Request(type, destAddr, buf, size);
}
