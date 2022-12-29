#ifndef NITRO_FX_MTX22_H_
#define NITRO_FX_MTX22_H_

#include <nitro/fx/fx.h>
#include <nitro/mi/memory.h>

#ifdef __cplusplus
extern "C" {
#endif

SDK_DECL_INLINE void MTX_Identity22(MtxFx22 * pDst);
SDK_DECL_INLINE void MTX_Copy22(const MtxFx22 * pSrc, MtxFx22 * pDst);
SDK_DECL_INLINE void MTX_Transpose22(const MtxFx22 * pSrc, MtxFx22 * pDst);
SDK_DECL_INLINE void MTX_Rot22(MtxFx22 * pDst, fx32 sinVal, fx32 cosVal);
int MTX_Inverse22(const MtxFx22 * pSrc, MtxFx22 * pDst);
void MTX_Concat22(const MtxFx22 * a, const MtxFx22 * b, MtxFx22 * ab);
void MTX_ScaleApply22(const MtxFx22 * pSrc, MtxFx22 * pDst, fx32 x, fx32 y);

void MTX_Identity22_(register MtxFx22 * pDst);
void MTX_Transpose22_(const register MtxFx22 * pSrc, register MtxFx22 * pDst);
void MTX_Scale22_(register MtxFx22 * pDst, register fx32 x, register fx32 y);
void MTX_Rot22_(register MtxFx22 * pDst, register fx32 sinVal, register fx32 cosVal);

SDK_INLINE void MTX_Identity22 (MtxFx22 * pDst)
{
    SDK_NULL_ASSERT(pDst);
    MTX_Identity22_(pDst);
}

SDK_INLINE void MTX_Copy22 (const MtxFx22 * pSrc, MtxFx22 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);
    MI_Copy16B(pSrc, pDst);
}

SDK_INLINE void MTX_Transpose22 (const MtxFx22 * pSrc, MtxFx22 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);
    MTX_Transpose22_(pSrc, pDst);
}

SDK_INLINE void MTX_Scale22 (MtxFx22 * pDst, fx32 x, fx32 y)
{
    SDK_NULL_ASSERT(pDst);
    MTX_Scale22_(pDst, x, y);
}

SDK_INLINE void MTX_Rot22 (MtxFx22 * pDst, fx32 sinVal, fx32 cosVal)
{
    SDK_NULL_ASSERT(pDst);
    MTX_Rot22_(pDst, sinVal, cosVal);
}

#ifdef __cplusplus
}
#endif

#endif
