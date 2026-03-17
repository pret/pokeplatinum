#ifndef POKEPLATINUM_BILLBOARD_VRAM_TRANSFER_H
#define POKEPLATINUM_BILLBOARD_VRAM_TRANSFER_H

#include <nnsys.h>

#include "constants/heap.h"

#include "billboard_gfx_sequence.h"

typedef struct BillboardVRAMTransfer {
    const BillboardGfxSequence *gfxSequence;
    const NNSG3dResTex *texture;
    NNSGfdTexKey texKey;
    NNSGfdPlttKey plttKey;
    u8 textureIdx;
    u8 plttIdx;
} BillboardVRAMTransfer;

typedef struct BillboardListVRAMTransfer {
    BillboardVRAMTransfer *billboardTransfers;
    int maxElements;
} BillboardListVRAMTransfer;

BillboardListVRAMTransfer *BillboardListVRAMTransfer_New(int maxElements, enum HeapID heapID);
void BillboardListVRAMTransfer_Free(BillboardListVRAMTransfer *listTransfer);
BillboardVRAMTransfer *BillboardListVRAMTransfer_NewBillboardTransfer(BillboardListVRAMTransfer *listTransfer, const BillboardGfxSequence *gfxSequence, const NNSG3dResTex *texture, NNSGfdTexKey texKey, NNSGfdPlttKey plttKey, const fx32 index);
void BillboardVRAMTransfer_Reset(BillboardVRAMTransfer *transfer);
void BillboardListVRAMTransfer_ResetAll(BillboardListVRAMTransfer *listTransfer);
void BillboardVRAMTransfer_Request(BillboardVRAMTransfer *param0, const fx32 param1);
void *GetTextureDataVRAMBuffer(NNSG3dResTex *texture, const u8 index);
void *GetPlttDataVRAMBuffer(NNSG3dResTex *texture, const u8 index);
void *GetTextureDataBufferFromResourceName(NNSG3dResTex *texture, const char *name);
int CalcTextureDataSizeFromResourceName(NNSG3dResTex *texture, const char *name);

#endif // POKEPLATINUM_BILLBOARD_VRAM_TRANSFER_H
