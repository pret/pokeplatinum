#ifndef NNS_G2D_OAM_H_
#define NNS_G2D_OAM_H_

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2dInitializeOamManager         NNS_G2dInitOamManagerModule
#define NNS_G2dEntryNewOam                  NNS_G2dEntryOamManagerOam
#define NNS_G2dEntryNewOamWithAffineIdx     NNS_G2dEntryOamManagerOamWithAffineIdx
#define NNS_G2dEntryNewOamAffine            NNS_G2dEntryOamManagerAffine
#define NNS_G2dEntryOamAffine               NNS_G2dSetOamManagerAffine
#define NNS_G2dApplyToHW                    NNS_G2dApplyOamManagerToHW
#define NNS_G2dApplyToHWSoftEmu             NNS_G2dApplyOamManagerToHWSprite
#define NNS_G2dResetBuffer                  NNS_G2dResetOamManagerBuffer
#define NNS_G2dApplyToHWAndReset            NNS_G2dApplyAndResetOamManagerBuffer
#define NNS_G2dGetOamAttrCapacity           NNS_G2dGetOamManagerOamCapacity
#define NNS_G2dGetOamAffineCapacity         NNS_G2dGetOamManagerAffineCapacity

typedef enum NNSG2dOamType {
    NNS_G2D_OAMTYPE_MAIN = 0,
    NNS_G2D_OAMTYPE_SUB,
    NNS_G2D_OAMTYPE_SOFTWAREEMULATION,
    NNS_G2D_OAMTYPE_INVALID,
    NNS_G2D_OAMTYPE_MAX
}NNSG2dOamType;

#define ASSERT_OAMTYPE(x)                                      \
    NNS_G2D_ASSERT((x) == NNS_G2D_OAMTYPE_INVALID || \
                   (x) == NNS_G2D_OAMTYPE_MAIN || \
                   (x) == NNS_G2D_OAMTYPE_SUB || \
                   (x) == NNS_G2D_OAMTYPE_SOFTWAREEMULATION || \
                   (x) == NNS_G2D_OAMTYPE_MAX)

#define ASSERT_OAMTYPE_VALID(x)                  \
    NNS_G2D_ASSERT((x) == NNS_G2D_OAMTYPE_MAIN || \
                   (x) == NNS_G2D_OAMTYPE_SUB || \
                   (x) == NNS_G2D_OAMTYPE_SOFTWAREEMULATION)

typedef struct NNSG2dOAMManageArea {
    u16 fromIdx;
    u16 toIdx;
    u16 currentIdx;
} NNSG2dOAMManageArea;

typedef struct NNSG2dOamManagerInstance {
    NNSG2dOamType type;
    NNSG2dOAMManageArea managedAttrArea;
    NNSG2dOAMManageArea managedAffineArea;
    u16 GUID;
    u16 pad16_;
    BOOL bFastTransferEnable;
    fx32 spriteZoffsetStep;
} NNSG2dOamManagerInstance;

void * NNSi_G2dGetOamManagerInternalBufferForDebug(NNSG2dOamType type);
void NNS_G2dInitOamManagerModule();
BOOL NNS_G2dGetNewManagerInstance(NNSG2dOamManagerInstance * pMan, u16 from, u16 to, NNSG2dOamType type);
BOOL NNS_G2dInitManagerInstanceAffine(NNSG2dOamManagerInstance * pMan, u16 from, u16 to);
BOOL NNS_G2dGetNewOamManagerInstance(NNSG2dOamManagerInstance * pMan, u16 fromOBJ, u16 numOBJ, u16 fromAffine, u16 numAffine, NNSG2dOamType type);
BOOL NNS_G2dGetNewOamManagerInstanceAsFastTransferMode(NNSG2dOamManagerInstance * pMan, u16 fromOBJ, u16 numOBJ, NNSG2dOamType type);
BOOL NNS_G2dEntryOamManagerOam(NNSG2dOamManagerInstance * pMan, const GXOamAttr * pOam, u16 num);
BOOL NNS_G2dEntryOamManagerOamWithAffineIdx(NNSG2dOamManagerInstance * pMan, const GXOamAttr * pOam, u16 affineIdx);
void NNS_G2dSetOamManagerAffine(NNSG2dOamType type, const MtxFx22 * mtx, u16 idx);
u16  NNS_G2dEntryOamManagerAffine(NNSG2dOamManagerInstance * pMan, const MtxFx22 * mtx);
void NNS_G2dApplyOamManagerToHW(NNSG2dOamManagerInstance * pMan);
void NNS_G2dApplyOamManagerToHWSprite(NNSG2dOamManagerInstance * pMan, const NNSG2dImageAttr * pTexImageAttr, u32 texBaseAddr, u32 pltBaseAddr);
void NNS_G2dResetOamManagerBuffer(NNSG2dOamManagerInstance * pMan);
void NNS_G2dApplyAndResetOamManagerBuffer(NNSG2dOamManagerInstance * pMan);
u16  NNS_G2dGetOamManagerOamCapacity(NNSG2dOamManagerInstance * pMan);
u16  NNS_G2dGetOamManagerAffineCapacity(NNSG2dOamManagerInstance * pMan);
GXOamAttr * NNS_G2dGetOamBuffer(NNSG2dOamType type);

static inline void NNS_G2dSetOamManagerSpriteZoffsetStep (NNSG2dOamManagerInstance * pMan, fx32 zStep)
{
    pMan->spriteZoffsetStep = zStep;
}

#ifdef __cplusplus
}
#endif

#endif
