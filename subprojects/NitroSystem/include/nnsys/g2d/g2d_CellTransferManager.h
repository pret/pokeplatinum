#ifndef NNS_G2D_CELL_TRANSFER_MANAGER_H_
#define NNS_G2D_CELL_TRANSFER_MANAGER_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2d_Image.h>

#ifdef __cplusplus
extern "C" {
#endif

#include <nnsys/gfd/VramTransferMan/gfd_VramTransferManager.h>

#define NNS_G2D_INVALID_CELL_TRANSFER_STATE_HANDLE (u32)0xFFFFFFFF

typedef BOOL (* VramTransferTaskRegisterFuncPtr)(NNS_GFD_DST_TYPE type,
                                                 u32 dstAddr,
                                                 void * pSrc,
                                                 u32 szByte);

typedef struct NNSG2dCellTransferState {
    NNSG2dVRamLocation dstVramLocation;
    u32 szDst;

    const void * pSrcNCGR;
    const void * pSrcNCBR;
    u32 szSrcData;
    BOOL bActive;

    u32 bDrawn;

    u32 bTransferRequested;

    u32 srcOffset;
    u32 szByte;
} NNSG2dCellTransferState;

void
NNS_G2dInitCellTransferStateManager
(
    NNSG2dCellTransferState * pCellStateArray,
    u32 numCellState,
    VramTransferTaskRegisterFuncPtr pTaskRegisterFunc
);

u32
NNS_G2dGetNewCellTransferStateHandle();
void
NNS_G2dFreeCellTransferStateHandle(u32 handle);

void NNS_G2dUpdateCellTransferStateManager();

void NNS_G2dSetCellTransferStateRequested
(
    u32 handle,
    u32 srcOffset,
    u32 szByte
);

NNSG2dCellTransferState *
NNSi_G2dGetCellTransferState
(
    u32 handle
);

void NNSi_G2dInitCellTransferState
(
    u32 handle,

    u32 dstAddr3D,
    u32 dstAddr2DMain,
    u32 dstAddr2DSub,
    u32 szDst,

    const void * pSrcNCGR,
    const void * pSrcNCBR,
    u32 szSrcData
);

NNS_G2D_INLINE void NNSi_G2dSetCellTransferStateRequestFlag (NNSG2dCellTransferState * pState, NNS_G2D_VRAM_TYPE type, BOOL flag)
{
    pState->bTransferRequested = (pState->bTransferRequested & ~(0x1 << type)) | (flag << type);
}

NNS_G2D_INLINE void NNSi_G2dSetVramTransferRequestFlag (u32 handle, NNS_G2D_VRAM_TYPE type, BOOL flag)
{
    NNSG2dCellTransferState * pState = NNSi_G2dGetCellTransferState(handle);

    NNSi_G2dSetCellTransferStateRequestFlag(pState, type, flag);
}

NNS_G2D_INLINE BOOL NNSi_G2dGetCellTransferStateRequestFlag (const NNSG2dCellTransferState * pState, NNS_G2D_VRAM_TYPE type)
{
    return (BOOL)(pState->bTransferRequested & (0x1 << type));
}

NNS_G2D_INLINE BOOL NNSi_G2dGetVramTransferRequestFlag (u32 handle, NNS_G2D_VRAM_TYPE type)
{
    const NNSG2dCellTransferState * pState = NNSi_G2dGetCellTransferState(handle);
    return NNSi_G2dGetCellTransferStateRequestFlag(pState, type);
}

NNS_G2D_INLINE void NNSi_G2dSetCellTransferStateCellDrawnFlag (NNSG2dCellTransferState * pState, NNS_G2D_VRAM_TYPE type, BOOL flag)
{
    pState->bDrawn = (pState->bDrawn & ~(0x1 << type)) | (flag << type);
}

NNS_G2D_INLINE void NNSi_G2dSetVramTransferCellDrawnFlag (u32 handle, NNS_G2D_VRAM_TYPE type, BOOL flag)
{
    NNSG2dCellTransferState * pState = NNSi_G2dGetCellTransferState(handle);
    NNSi_G2dSetCellTransferStateCellDrawnFlag(pState, type, flag);
}

NNS_G2D_INLINE BOOL NNSi_G2dGetCellTransferStateCellDrawnFlag (const NNSG2dCellTransferState * pState, NNS_G2D_VRAM_TYPE type)
{
    return (BOOL)(pState->bDrawn & (0x1 << type));
}

NNS_G2D_INLINE BOOL NNSi_G2dGetVramTransferCellDrawnFlag (u32 handle, NNS_G2D_VRAM_TYPE type)
{
    const NNSG2dCellTransferState * pState = NNSi_G2dGetCellTransferState(handle);
    return NNSi_G2dGetCellTransferStateCellDrawnFlag(pState, type);
}

#ifdef __cplusplus
}
#endif

#endif
