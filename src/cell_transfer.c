#include "cell_transfer.h"

#include <nnsys.h>

#include "heap.h"
#include "vram_transfer.h"

static BOOL sub_0201DCF8(NNS_GFD_DST_TYPE param0, u32 param1, void *param2, u32 param3);

NNSG2dCellTransferState *sub_0201DCC8(int param0, int param1)
{
    NNSG2dCellTransferState *v0;

    v0 = Heap_AllocFromHeap(param1, sizeof(NNSG2dCellTransferState) * param0);
    NNS_G2dInitCellTransferStateManager(v0, param0, sub_0201DCF8);

    return v0;
}

void sub_0201DCE8(void)
{
    NNS_G2dUpdateCellTransferStateManager();
}

void sub_0201DCF0(NNSG2dCellTransferState *param0)
{
    Heap_FreeToHeap(param0);
}

static BOOL sub_0201DCF8(NNS_GFD_DST_TYPE param0, u32 param1, void *param2, u32 param3)
{
    return sub_0201DC68(param0, param1, param2, param3);
}
