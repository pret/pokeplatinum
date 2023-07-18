#ifndef NITRO_FX_MTX33_H_
#define NITRO_FX_MTX33_H_

#include <nitro/fx/fx.h>
#include <nitro/fx/fx_vec.h>
#include <nitro/mi/memory.h>

#ifdef __cplusplus
extern "C" {
#endif

SDK_DECL_INLINE void MTX_Identity33(MtxFx33 * pDst);
SDK_DECL_INLINE void MTX_Copy33(const MtxFx33 * pSrc, MtxFx33 * pDst);
SDK_DECL_INLINE void MTX_Copy33To43(const MtxFx33 * pSrc, MtxFx43 * pDst);
SDK_DECL_INLINE void MTX_Copy33To44(const MtxFx33 * pSrc, MtxFx44 * pDst);
SDK_DECL_INLINE void MTX_Transpose33(const MtxFx33 * pSrc, MtxFx33 * pDst);
SDK_DECL_INLINE void MTX_Scale33(MtxFx33 * pDst, fx32 x, fx32 y, fx32 z);
void MTX_ScaleApply33(const MtxFx33 * pSrc, MtxFx33 * pDst, fx32 x, fx32 y, fx32 z);
SDK_DECL_INLINE void MTX_RotX33(MtxFx33 * pDst, fx32 sinVal, fx32 cosVal);
SDK_DECL_INLINE void MTX_RotY33(MtxFx33 * pDst, fx32 sinVal, fx32 cosVal);
SDK_DECL_INLINE void MTX_RotZ33(MtxFx33 * pDst, fx32 sinVal, fx32 cosVal);
void MTX_RotAxis33(MtxFx33 * pDst, const VecFx32 * vec, fx32 sinVal, fx32 cosVal);
int MTX_Inverse33(const MtxFx33 * pSrc, MtxFx33 * pDst);
void MTX_Concat33(const MtxFx33 * a, const MtxFx33 * b, MtxFx33 * ab);
void MTX_MultVec33(const VecFx32 * vec, const MtxFx33 * m, VecFx32 * dst);

void MTX_Identity33_(register MtxFx33 * pDst);
void MTX_Copy33To43_(const register MtxFx33 * pSrc, register MtxFx43 * pDst);
void MTX_Copy33To44_(const register MtxFx33 * pSrc, register MtxFx44 * pDst);
void MTX_Transpose33_(const register MtxFx33 * pSrc, register MtxFx33 * pDst);
void MTX_Scale33_(register MtxFx33 * pDst, register fx32 x, register fx32 y, register fx32 z);
void MTX_RotX33_(register MtxFx33 * pDst, register fx32 sinVal, register fx32 cosVal);
void MTX_RotY33_(register MtxFx33 * pDst, register fx32 sinVal, register fx32 cosVal);
void MTX_RotZ33_(register MtxFx33 * pDst, register fx32 sinVal, register fx32 cosVal);

SDK_INLINE void MTX_Identity33 (MtxFx33 * pDst)
{
    SDK_NULL_ASSERT(pDst);
    MTX_Identity33_(pDst);
}

SDK_INLINE void MTX_Copy33 (const MtxFx33 * pSrc, MtxFx33 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);
    MI_Copy36B(pSrc, pDst);
}

SDK_INLINE void MTX_Copy33To43 (const MtxFx33 * pSrc, MtxFx43 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);
    MTX_Copy33To43_(pSrc, pDst);
}

SDK_INLINE void MTX_Copy33To44 (const MtxFx33 * pSrc, MtxFx44 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);
    MTX_Copy33To44_(pSrc, pDst);
}

SDK_INLINE void MTX_Transpose33 (const MtxFx33 * pSrc, MtxFx33 * pDst)
{
    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);
    MTX_Transpose33_(pSrc, pDst);
}

SDK_INLINE void MTX_Scale33 (MtxFx33 * pDst, fx32 x, fx32 y, fx32 z)
{
    SDK_NULL_ASSERT(pDst);
    MTX_Scale33_(pDst, x, y, z);
}

SDK_INLINE void MTX_RotX33 (MtxFx33 * pDst, fx32 sinVal, fx32 cosVal)
{
    SDK_NULL_ASSERT(pDst);
    MTX_RotX33_(pDst, sinVal, cosVal);
}

SDK_INLINE void MTX_RotY33 (MtxFx33 * pDst, fx32 sinVal, fx32 cosVal)
{
    SDK_NULL_ASSERT(pDst);
    MTX_RotY33_(pDst, sinVal, cosVal);
}

SDK_INLINE void MTX_RotZ33 (MtxFx33 * pDst, fx32 sinVal, fx32 cosVal)
{
    SDK_NULL_ASSERT(pDst);
    MTX_RotZ33_(pDst, sinVal, cosVal);
}

#ifdef __cplusplus
}
#endif

#endif
