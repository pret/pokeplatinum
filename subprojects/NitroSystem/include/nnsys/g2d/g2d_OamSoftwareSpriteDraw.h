#ifndef NNS_G2D_OAMSOFTWARESPRITEEMU_H_
#define NNS_G2D_OAMSOFTWARESPRITEEMU_H_

#include <nitro.h>
#include <nnsys/g2d/g2d_Image.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (* NNS_G2dOamSoftEmuUVFlipCorrectFunc)(fx32 * pRetU0,
                                                    fx32 * pRetV0,
                                                    fx32 * pRetU1,
                                                    fx32 * pRetV1,
                                                    BOOL bFilpH,
                                                    BOOL bFilpV);

void NNS_G2dDrawOneOam3DDirectFast
(
    const GXOamAttr * pOam,
    const NNSG2dImageAttr * pTexImageAttr,
    u32 texBaseAddr,
    u32 pltBaseAddr
);

void NNS_G2dDrawOneOam3DDirectWithPosFast
(
    s16 posX,
    s16 posY,
    s16 posZ,
    const GXOamAttr * pOam,
    const NNSG2dImageAttr * pTexImageAttr,
    u32 texBaseAddr,
    u32 pltBaseAddr
);

void NNS_G2dDrawOneOam3DDirectWithPosAffineFast
(
    s16 posX,
    s16 posY,
    s16 posZ,
    const GXOamAttr * pOam,
    const NNSG2dImageAttr * pTexImageAttr,
    u32 texBaseAddr,
    u32 pltBaseAddr,
    const MtxFx22 * pMtx
);

void NNS_G2dSetOamSoftEmuSpriteParamCache
(
    const GXOamAttr * pOam,
    const NNSG2dImageAttr * pTexImageAttr,
    u32 texBaseAddr,
    u32 pltBaseAddr
);

void NNS_G2dDrawOneOam3DDirectUsingParamCacheFast
(
    s16 posX,
    s16 posY,
    s16 posZ,
    const GXOamAttr * pOam
);

void NNS_G2dSetOamSoftEmuUVFlipCorrectFunc(NNS_G2dOamSoftEmuUVFlipCorrectFunc pFunc);
void NNS_G2dResetOamSoftEmuUVFlipCorrectFunc();

void NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(BOOL flag);
fx32 NNSi_G2dGetOamSoftEmuAutoZOffset(void);
void NNSi_G2dResetOamSoftEmuAutoZOffset(void);
void NNSi_G2dSetOamSoftEmuAutoZOffsetStep(fx32 step);
fx32 NNSi_G2dGetOamSoftEmuAutoZOffsetStep(void);

NNS_G2D_INLINE void NNS_G2dDrawOneOam3DDirect
(
    const GXOamAttr * pOam,
    const NNSG2dImageAttr * pTexImageAttr,
    u32 texBaseAddr,
    u32 pltBaseAddr
)
{
    G3_PushMtx();
    NNS_G2dDrawOneOam3DDirectFast
    (
        pOam, pTexImageAttr,
        texBaseAddr, pltBaseAddr
    );
    G3_PopMtx(1);
}

NNS_G2D_INLINE void NNS_G2dDrawOneOam3DDirectWithPos
(
    s16 posX,
    s16 posY,
    s16 posZ,
    const GXOamAttr * pOam,
    const NNSG2dImageAttr * pTexImageAttr,
    u32 texBaseAddr,
    u32 pltBaseAddr
)
{
    G3_PushMtx();
    NNS_G2dDrawOneOam3DDirectWithPosFast
    (
        posX, posY, posZ,
        pOam, pTexImageAttr,
        texBaseAddr, pltBaseAddr
    );
    G3_PopMtx(1);
}

NNS_G2D_INLINE void NNS_G2dDrawOneOam3DDirectWithPosAffine
(
    s16 posX,
    s16 posY,
    s16 posZ,
    const GXOamAttr * pOam,
    const NNSG2dImageAttr * pTexImageAttr,
    u32 texBaseAddr,
    u32 pltBaseAddr,
    const MtxFx22 * pMtx
)
{
    G3_PushMtx();
    NNS_G2dDrawOneOam3DDirectWithPosAffineFast
    (
        posX, posY, posZ,
        pOam, pTexImageAttr,
        texBaseAddr, pltBaseAddr, pMtx
    );
    G3_PopMtx(1);
}

#ifdef __cplusplus
}
#endif

#endif
