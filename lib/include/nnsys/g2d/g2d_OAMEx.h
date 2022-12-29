#ifndef NNS_G2D_OAMEX_H_
#define NNS_G2D_OAMEX_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_config.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2dEntryNewOamEx NNS_G2dEntryOamManExOam
#define NNS_G2dEntryNewOamWithAffineIdxEx NNS_G2dEntryOamManExOamWithAffineIdx
#define NNS_G2dEntryNewAffineParamsEx NNS_G2dEntryOamManExAffine
#define NNS_G2dApplyToBaseModuleEx NNS_G2dApplyOamManExToBaseModule

#define NNS_G2dResetOamInstanceEx NNS_G2dResetOamManExBuffer
#define NNS_G2dGetNewOamInstanceEx NNS_G2dGetOamManExInstance

#define NNS_G2dSetOamEntryFunctionsEx NNS_G2dSetOamManExEntryFunctions

#define NNS_G2D_OAMEX_HW_ID_NOT_INIT 0xFFFF

typedef enum NNSG2dOamExDrawOrder {
    NNSG2D_OAMEX_DRAWORDER_BACKWARD = 0x0,
    NNSG2D_OAMEX_DRAWORDER_FORWARD  = 0x1
} NNSG2dOamExDrawOrder;

typedef u16 (* NNSG2dGetOamCpacityFuncPtr)();
typedef u16 (* NNSG2dGetOamAffineCpacityFuncPtr)();
typedef BOOL (* NNSG2dEntryNewOamFuncPtr)(const GXOamAttr * pOam, u16 index);
typedef u16 (* NNSG2dEntryNewOamAffineFuncPtr)(const MtxFx22 * mtx, u16 index);

typedef struct NNSG2dOamExEntryFunctions {
    NNSG2dGetOamCpacityFuncPtr getOamCapacity;
    NNSG2dGetOamCpacityFuncPtr getAffineCapacity;
    NNSG2dEntryNewOamFuncPtr entryNewOam;
    NNSG2dEntryNewOamAffineFuncPtr entryNewAffine;
} NNSG2dOamExEntryFunctions;

typedef struct NNSG2dOamChunk {
    GXOamAttr oam;
    u16 affineProxyIdx;
    u16 pad16_;
    struct NNSG2dOamChunk * pNext;
} NNSG2dOamChunk;

typedef struct NNSG2dOamChunkList {
    u16 numChunks;
    u16 numLastFrameDrawn;

    u16 numDrawn;
    u16 bDrawn;

    NNSG2dOamChunk * pChunks;
    NNSG2dOamChunk * pAffinedChunks;

    NNSG2dOamChunk * pLastChunk;
    NNSG2dOamChunk * pLastAffinedChunk;
} NNSG2dOamChunkList;

typedef struct NNSG2dAffineParamProxy {
    MtxFx22 mtxAffine;
    u16 affineHWIndex;
    u16 pad16_;
} NNSG2dAffineParamProxy;

typedef struct NNSG2dOamManagerInstanceEx {
    NNSG2dOamChunkList * pOamOrderingTbl;

    u16 numPooledOam;
    u16 numUsedOam;
    NNSG2dOamChunk * pPoolOamChunks;

    u16 lengthOfOrderingTbl;
    u16 lengthAffineBuffer;
    u16 numAffineBufferUsed;
    u16 lastFrameAffineIdx;
    NNSG2dAffineParamProxy * pAffineBuffer;

    NNSG2dOamExEntryFunctions oamEntryFuncs;

    u16 lastRenderedOrderingTblIdx;
    u16 lastRenderedChunkIdx;
    NNSG2dOamExDrawOrder drawOrderType;
} NNSG2dOamManagerInstanceEx;

void NNS_G2dResetOamManExBuffer(NNSG2dOamManagerInstanceEx * pOam);

BOOL NNS_G2dGetOamManExInstance(
    NNSG2dOamManagerInstanceEx * pOam,
    NNSG2dOamChunkList * pOamOrderingTbl,
    u8 lengthOfOrderingTbl,
    u16 numPooledOam,
    NNSG2dOamChunk * pPooledOam,
    u16 lengthAffineBuffer,
    NNSG2dAffineParamProxy * pAffineBuffer);

BOOL NNS_G2dEntryOamManExOam
(
    NNSG2dOamManagerInstanceEx * pMan,
    const GXOamAttr * pOam,
    u8 priority
);

BOOL NNS_G2dEntryOamManExOamWithAffineIdx
(
    NNSG2dOamManagerInstanceEx * pMan,
    const GXOamAttr * pOam,
    u8 priority,
    u16 affineIdx
);

u16 NNS_G2dEntryOamManExAffine
(
    NNSG2dOamManagerInstanceEx * pMan,
    const MtxFx22 * mtx
);

void NNS_G2dApplyOamManExToBaseModule
(
    NNSG2dOamManagerInstanceEx * pMan
);

void NNSG2d_SetOamManExDrawOrderType
(
    NNSG2dOamManagerInstanceEx * pOam,
    NNSG2dOamExDrawOrder drawOrderType
);

void NNS_G2dSetOamManExEntryFunctions
(
    NNSG2dOamManagerInstanceEx * pMan,
    const NNSG2dOamExEntryFunctions * pSrc
);

#ifdef __cplusplus
}
#endif

#endif
