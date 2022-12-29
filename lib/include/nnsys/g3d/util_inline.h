#ifndef NNSG3D_UTIL_INLINE_H_
#define NNSG3D_UTIL_INLINE_H_

#ifdef __cplusplus
extern "C" {
#endif

NNS_G3D_INLINE BOOL NNSi_G3dBitVecCheck (const u32 * vec, u32 idx)
{
    NNS_G3D_NULL_ASSERT(vec);
    return (BOOL)(vec[idx >> 5] & (1 << (idx & 31)));
}

NNS_G3D_INLINE void NNSi_G3dBitVecSet (u32 * vec, u32 idx)
{
    NNS_G3D_NULL_ASSERT(vec);
    vec[idx >> 5] |= 1 << (idx & 31);
}

NNS_G3D_INLINE void NNSi_G3dBitVecReset (u32 * vec, u32 idx)
{
    NNS_G3D_NULL_ASSERT(vec);
    vec[idx >> 5] &= ~(1 << (idx & 31));
}

#ifdef __cplusplus
}
#endif

#endif
