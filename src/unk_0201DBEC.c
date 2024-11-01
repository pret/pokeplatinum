#include "unk_0201DBEC.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "heap.h"

typedef struct {
    u32 unk_00;
    u32 unk_04;
    NNSGfdVramTransferTask *unk_08;
} UnkStruct_021C0700;

static BOOL sub_0201DCF8(NNS_GFD_DST_TYPE param0, u32 param1, void *param2, u32 param3);

static UnkStruct_021C0700 *Unk_021C0700;

void VRAMTransferManager_New(u32 param0, int param1)
{
    GF_ASSERT(Unk_021C0700 == NULL);
    Unk_021C0700 = Heap_AllocFromHeap(param1, sizeof(UnkStruct_021C0700));
    GF_ASSERT(Unk_021C0700);

    Unk_021C0700->unk_08 = (NNSGfdVramTransferTask *)Heap_AllocFromHeap(param1, sizeof(NNSGfdVramTransferTask) * param0);
    Unk_021C0700->unk_00 = param0;
    Unk_021C0700->unk_04 = 0;

    NNS_GfdInitVramTransferManager(Unk_021C0700->unk_08, Unk_021C0700->unk_00);
}

void VRAMTransferManager_Destroy(void)
{
    GF_ASSERT(Unk_021C0700 != NULL);

    Heap_FreeToHeap(Unk_021C0700->unk_08);
    Heap_FreeToHeap(Unk_021C0700);

    Unk_021C0700 = NULL;
}

BOOL sub_0201DC68(NNS_GFD_DST_TYPE param0, u32 param1, void *param2, u32 param3)
{
    GF_ASSERT(Unk_021C0700);
    Unk_021C0700->unk_04++;

    if (Unk_021C0700->unk_04 >= Unk_021C0700->unk_00) {
        GF_ASSERT(FALSE);
        return 0;
    }

    return NNS_GfdRegisterNewVramTransferTask(param0, param1, param2, param3);
}

void sub_0201DCAC(void)
{
    if (Unk_021C0700) {
        NNS_GfdDoVramTransfer();
        Unk_021C0700->unk_04 = 0;
    }
}

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
