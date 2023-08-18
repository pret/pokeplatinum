#ifndef NITRO_FX_MTX44_H_
#define NITRO_FX_MTX44_H_

#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/mi/memory.h>

#ifdef __cplusplus
extern "C" {
#endif

SDK_DECL_INLINE void MTX_Identity44(MtxFx44 * pDst);
SDK_DECL_INLINE void MTX_Copy44To33(const MtxFx44 * pSrc, MtxFx33 * pDst);
SDK_DECL_INLINE void MTX_Copy44To43(const MtxFx44 * pSrc, MtxFx43 * pDst);
SDK_DECL_INLINE void MTX_Transpose44(const MtxFx44 * pSrc, MtxFx44 * pDst);
void MTX_TransApply44(const MtxFx44 * pSrc, MtxFx44 * pDst, fx32 x, fx32 y, fx32 z);
SDK_DECL_INLINE void MTX_Scale44(MtxFx44 * pDst, fx32 x, fx32 y, fx32 z);
void MTX_ScaleApply44(const MtxFx44 * pSrc, MtxFx44 * pDst, fx32 x, fx32 y, fx32 z);
SDK_DECL_INLINE void MTX_RotX44(MtxFx44 * pDst, fx32 sinVal, fx32 cosVal);
SDK_DECL_INLINE void MTX_RotY44(MtxFx44 * pDst, fx32 sinVal, fx32 cosVal);
SDK_DECL_INLINE void MTX_RotZ44(MtxFx44 * pDst, fx32 sinVal, fx32 cosVal);
void MTX_RotAxis44(MtxFx44 * pDst, const VecFx32 * vec, fx32 sinVal, fx32 cosVal);
void MTX_Concat44(const MtxFx44 * a, const MtxFx44 * b, MtxFx44 * ab);
void MTX_FrustumW(fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, MtxFx44 * mtx);
void MTX_PerspectiveW(fx32 fovySin, fx32 fovyCos, fx32 aspect, fx32 n, fx32 f, fx32 scaleW, MtxFx44 * mtx);
void MTX_OrthoW(fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, fx32 scaleW, MtxFx44 * mtx);

void MTX_Identity44_(register MtxFx44 * pDst);
void MTX_Copy44To33_(register const MtxFx44 * pSrc, register MtxFx33 * pDst);
void MTX_Copy44To43_(register const MtxFx44 * pSrc, register MtxFx43 * pDst);
void MTX_Transpose44_(register const MtxFx44 * pSrc, register MtxFx44 * pDst);
void MTX_Scale44_(register MtxFx44 * pDst, register fx32 x, register fx32 y, register fx32 z);
void MTX_RotX44_(register MtxFx44 * pDst, register fx32 sinVal, register fx32 cosVal);
void MTX_RotY44_(register MtxFx44 * pDst, register fx32 sinVal, register fx32 cosVal);
void MTX_RotZ44_(register MtxFx44 * pDst, register fx32 sinVal, register fx32 cosVal);

SDK_INLINE void MTX_Identity44 (MtxFx44 * pDst)
{
    SDK_NULL_ASSERT(pDst);
    MTX_Identity44_(pDst);
}

SDK_INLINE void MTX_Copy44 (const MtxFx44 * pSrc, MtxFx44 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);

    MI_Copy64B(pSrc, pDst);
}

SDK_INLINE void MTX_Copy44To33 (const MtxFx44 * pSrc, MtxFx33 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);

    MTX_Copy44To33_(pSrc, pDst);
}

SDK_INLINE void MTX_Copy44To43 (const MtxFx44 * pSrc, MtxFx43 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);

    MTX_Copy44To43_(pSrc, pDst);
}

SDK_INLINE void MTX_Transpose44 (const MtxFx44 * pSrc, MtxFx44 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);

    MTX_Transpose44_(pSrc, pDst);
}

SDK_INLINE void MTX_Scale44 (MtxFx44 * pDst, fx32 x, fx32 y, fx32 z)
{
    SDK_NULL_ASSERT(pDst);
    MTX_Scale44_(pDst, x, y, z);
}

SDK_INLINE void MTX_RotX44 (MtxFx44 * pDst, fx32 sinVal, fx32 cosVal)
{
    SDK_NULL_ASSERT(pDst);
    MTX_RotX44_(pDst, sinVal, cosVal);
}

SDK_INLINE void MTX_RotY44 (MtxFx44 * pDst, fx32 sinVal, fx32 cosVal)
{
    SDK_NULL_ASSERT(pDst);
    MTX_RotY44_(pDst, sinVal, cosVal);
}

SDK_INLINE void MTX_RotZ44 (MtxFx44 * pDst, fx32 sinVal, fx32 cosVal)
{
    SDK_NULL_ASSERT(pDst);
    MTX_RotZ44_(pDst, sinVal, cosVal);
}

SDK_INLINE void MTX_Frustum (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, MtxFx44 * mtx)
{
    MTX_FrustumW(t, b, l, r, n, f, FX32_ONE, mtx);
}

SDK_INLINE
void MTX_Perspective (fx32 fovySin, fx32 fovyCos, fx32 aspect, fx32 n, fx32 f, MtxFx44 * mtx)
{
    MTX_PerspectiveW(fovySin, fovyCos, aspect, n, f, FX32_ONE, mtx);
}

SDK_INLINE void MTX_Ortho (fx32 t, fx32 b, fx32 l, fx32 r, fx32 n, fx32 f, MtxFx44 * mtx)
{
    MTX_OrthoW(t, b, l, r, n, f, FX32_ONE, mtx);
}

#ifdef __cplusplus
}
#endif

#endif
