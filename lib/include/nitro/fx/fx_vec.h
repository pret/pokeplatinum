#ifndef NITRO_FX_VEC_H_
#define NITRO_FX_VEC_H_

#include <nitro/fx/fx.h>

#ifdef __cplusplus
extern "C" {
#endif

void VEC_Add(const VecFx32 * a, const VecFx32 * b, VecFx32 * ab);
void VEC_Subtract(const VecFx32 * a, const VecFx32 * b, VecFx32 * ab);
fx32 VEC_DotProduct(const VecFx32 * a, const VecFx32 * b);
void VEC_CrossProduct(const VecFx32 * a, const VecFx32 * b, VecFx32 * axb);
fx32 VEC_Mag(const VecFx32 * v);
fx32 VEC_Distance(const VecFx32 * v1, const VecFx32 * v2);
void VEC_Normalize(const VecFx32 * pSrc, VecFx32 * pDst);
void VEC_MultAdd(fx32 a, const VecFx32 * v1, const VecFx32 * v2, VecFx32 * pDest);
void VEC_MultSubtract(fx32 a, const VecFx32 * v1, const VecFx32 * v2, VecFx32 * pDest);

void VEC_Fx16Add(const VecFx16 * a, const VecFx16 * b, VecFx16 * ab);
void VEC_Fx16Subtract(const VecFx16 * a, const VecFx16 * b, VecFx16 * ab);
fx32 VEC_Fx16DotProduct(const VecFx16 * a, const VecFx16 * b);
void VEC_Fx16CrossProduct(const VecFx16 * a, const VecFx16 * b, VecFx16 * axb);
fx32 VEC_Fx16Mag(const VecFx16 * v);
fx32 VEC_Fx16Distance(const VecFx16 * v1, const VecFx16 * v2);
void VEC_Fx16Normalize(const VecFx16 * pSrc, VecFx16 * pDst);

SDK_INLINE void VEC_Set (VecFx32 * a, fx32 x, fx32 y, fx32 z)
{
    SDK_NULL_ASSERT(a);

    a->x = x;
    a->y = y;
    a->z = z;
}

SDK_INLINE void VEC_Fx16Set (VecFx16 * a, fx16 x, fx16 y, fx16 z)
{
    SDK_NULL_ASSERT(a);

    a->x = x;
    a->y = y;
    a->z = z;
}

#ifdef __cplusplus
}
#endif

#endif
