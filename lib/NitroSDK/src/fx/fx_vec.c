#include <nitro/fx/fx_vec.h>
#include <nitro/fx/fx_cp.h>
#include <nitro/fx/fx_const.h>
#include <nitro/cp/divider.h>
#include <nitro/cp/sqrt.h>

void VEC_Add (const VecFx32 * a, const VecFx32 * b, VecFx32 * ab) {
    SDK_NULL_ASSERT(a);
    SDK_NULL_ASSERT(b);
    SDK_NULL_ASSERT(ab);

    ab->x = a->x + b->x;
    ab->y = a->y + b->y;
    ab->z = a->z + b->z;
}

void VEC_Subtract (const VecFx32 * a, const VecFx32 * b, VecFx32 * ab) {
    SDK_NULL_ASSERT(a);
    SDK_NULL_ASSERT(b);
    SDK_NULL_ASSERT(ab);

    ab->x = a->x - b->x;
    ab->y = a->y - b->y;
    ab->z = a->z - b->z;
}

void VEC_Fx16Add (const VecFx16 * a, const VecFx16 * b, VecFx16 * ab) {
    SDK_NULL_ASSERT(a);
    SDK_NULL_ASSERT(b);
    SDK_NULL_ASSERT(ab);

    ab->x = (fx16)(a->x + b->x);
    ab->y = (fx16)(a->y + b->y);
    ab->z = (fx16)(a->z + b->z);
}

void VEC_Fx16Subtract (const VecFx16 * a, const VecFx16 * b, VecFx16 * ab) {
    SDK_NULL_ASSERT(a);
    SDK_NULL_ASSERT(b);
    SDK_NULL_ASSERT(ab);

    ab->x = (fx16)(a->x - b->x);
    ab->y = (fx16)(a->y - b->y);
    ab->z = (fx16)(a->z - b->z);
}

#include <nitro/code32.h>

fx32 VEC_DotProduct (const VecFx32 * a, const VecFx32 * b) {
    SDK_NULL_ASSERT(a);
    SDK_NULL_ASSERT(b);
    return (fx32)(((fx64)a->x * b->x +
                   (fx64)a->y * b->y + (fx64)a->z * b->z + (1 << (FX64_SHIFT - 1))) >> FX64_SHIFT);
}

fx32 VEC_Fx16DotProduct (const VecFx16 * a, const VecFx16 * b) {
    fx32 tmp1, tmp2;
    SDK_NULL_ASSERT(a);
    SDK_NULL_ASSERT(b);

    tmp1 = (a->x * b->x) + (a->y * b->y);
    tmp2 = (a->z * b->z) + (1 << (FX64_SHIFT - 1));
    return (fx32)(((fx64)tmp1 + tmp2) >> FX64_SHIFT);
}

void VEC_CrossProduct (const VecFx32 * a, const VecFx32 * b, VecFx32 * axb) {
    fx32 x, y, z;
    SDK_NULL_ASSERT(a);
    SDK_NULL_ASSERT(b);
    SDK_NULL_ASSERT(axb);

    x = (fx32)(((fx64)a->y * b->z - (fx64)a->z * b->y + (1 << (FX64_SHIFT - 1))) >> FX64_SHIFT);

    y = (fx32)(((fx64)a->z * b->x - (fx64)a->x * b->z + (1 << (FX64_SHIFT - 1))) >> FX64_SHIFT);

    z = (fx32)(((fx64)a->x * b->y - (fx64)a->y * b->x + (1 << (FX64_SHIFT - 1))) >> FX32_SHIFT);

    axb->x = x;
    axb->y = y;
    axb->z = z;
}

void VEC_Fx16CrossProduct (const VecFx16 * a, const VecFx16 * b, VecFx16 * axb) {
    fx32 x, y, z;
    SDK_NULL_ASSERT(a);
    SDK_NULL_ASSERT(b);
    SDK_NULL_ASSERT(axb);

    x = ((a->y * b->z - a->z * b->y + (FX16_ONE >> 1)) >> FX16_SHIFT);
    y = ((a->z * b->x - a->x * b->z + (FX16_ONE >> 1)) >> FX16_SHIFT);
    z = ((a->x * b->y - a->y * b->x + (FX16_ONE >> 1)) >> FX16_SHIFT);

    SDK_WARNING(
        x <= FX16_MAX && x >= FX16_MIN &&
        y <= FX16_MAX && y >= FX16_MIN &&
        z <= FX16_MAX && z >= FX16_MIN,
        "VEC_Fx16CrossProduct: Overflow (0x%x, 0x%x, 0x%x) x (0x%x, 0x%x, 0x%x).",
        a->x, a->y, a->z, b->x, b->y, b->z
    );

    axb->x = (fx16)x;
    axb->y = (fx16)y;
    axb->z = (fx16)z;
}

fx32 VEC_Mag (const VecFx32 * pSrc) {
    fx64 t;
    fx32 rval;

    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(!CP_IsSqrtBusy());

    t = (fx64)pSrc->x * pSrc->x;
    t += (fx64)pSrc->y * pSrc->y;
    t += (fx64)pSrc->z * pSrc->z;

    t <<= 2;

    CP_SetSqrt64((u64)t);
    rval = ((fx32)CP_GetSqrtResult32() + 1) >> 1;
    return rval;
}

fx32 VEC_Fx16Mag (const VecFx16 * pSrc) {
    fx64 t;
    fx32 rval;

    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(!CP_IsSqrtBusy());

    t = pSrc->x * pSrc->x;
    t += pSrc->y * pSrc->y;
    t += pSrc->z * pSrc->z;

    t <<= 2;

    CP_SetSqrt64((u64)t);
    rval = ((fx32)CP_GetSqrtResult32() + 1) >> 1;
    return rval;
}

void VEC_Normalize (const VecFx32 * pSrc, VecFx32 * pDst) {
    fx64 t;
    s32 sqrt;

    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);
    SDK_ASSERT(!CP_IsDivBusy() && !CP_IsSqrtBusy());

    t = (fx64)pSrc->x * pSrc->x;
    t += (fx64)pSrc->y * pSrc->y;
    t += (fx64)pSrc->z * pSrc->z;
    SDK_ASSERTMSG(t > 0, "*pSrc is (0, 0, 0)");

    SDK_WARNING(1LL << (FX32_SHIFT + FX32_SHIFT + FX64C_SHIFT) >= (u64)t, "*pSrc is too large!");

    CP_SetDiv64_64(1LL << (FX32_SHIFT + FX32_SHIFT + FX64C_SHIFT), (u64)t);
    CP_SetSqrt64((u64)(t << 2));

    sqrt = (s32)CP_GetSqrtResult32();
    t = CP_GetDivResult64();

    t = t * sqrt;
    pDst->x = (fx32)((t * pSrc->x + (1LL << (32 + FX32_SHIFT))) >> (32 + FX32_SHIFT + 1));
    pDst->y = (fx32)((t * pSrc->y + (1LL << (32 + FX32_SHIFT))) >> (32 + FX32_SHIFT + 1));
    pDst->z = (fx32)((t * pSrc->z + (1LL << (32 + FX32_SHIFT))) >> (32 + FX32_SHIFT + 1));
}

void VEC_Fx16Normalize (const VecFx16 * pSrc, VecFx16 * pDst) {
    fx64 t;
    s32 sqrt;

    SDK_NULL_ASSERT(pSrc);
    SDK_NULL_ASSERT(pDst);
    SDK_ASSERT(!CP_IsDivBusy() && !CP_IsSqrtBusy());

    t = pSrc->x * pSrc->x;
    t += pSrc->y * pSrc->y;
    t += pSrc->z * pSrc->z;
    SDK_ASSERTMSG(t > 0, "*pSrc is (0, 0, 0)");

    CP_SetDiv64_64(1LL << (FX32_SHIFT + FX32_SHIFT + FX64C_SHIFT), (u64)t);
    CP_SetSqrt64((u64)(t << 2));

    sqrt = (s32)CP_GetSqrtResult32();
    t = CP_GetDivResult64();

    t = t * sqrt;
    pDst->x = (fx16)((t * pSrc->x + (1LL << (32 + FX32_SHIFT))) >> (32 + FX32_SHIFT + 1));
    pDst->y = (fx16)((t * pSrc->y + (1LL << (32 + FX32_SHIFT))) >> (32 + FX32_SHIFT + 1));
    pDst->z = (fx16)((t * pSrc->z + (1LL << (32 + FX32_SHIFT))) >> (32 + FX32_SHIFT + 1));
}

void VEC_MultAdd (fx32 a, const VecFx32 * v1, const VecFx32 * v2, VecFx32 * pDest) {
    SDK_NULL_ASSERT(v1);
    SDK_NULL_ASSERT(v2);
    SDK_NULL_ASSERT(pDest);

    pDest->x = v2->x + (fx32)(((fx64)a * v1->x) >> FX32_SHIFT);
    pDest->y = v2->y + (fx32)(((fx64)a * v1->y) >> FX32_SHIFT);
    pDest->z = v2->z + (fx32)(((fx64)a * v1->z) >> FX32_SHIFT);
}

void VEC_MultSubtract (fx32 a, const VecFx32 * v1, const VecFx32 * v2, VecFx32 * pDest) {
    SDK_NULL_ASSERT(v1);
    SDK_NULL_ASSERT(v2);
    SDK_NULL_ASSERT(pDest);

    pDest->x = -v2->x + (fx32)(((fx64)a * v1->x) >> FX32_SHIFT);
    pDest->y = -v2->y + (fx32)(((fx64)a * v1->y) >> FX32_SHIFT);
    pDest->z = -v2->z + (fx32)(((fx64)a * v1->z) >> FX32_SHIFT);
}

fx32 VEC_Distance (const VecFx32 * v1, const VecFx32 * v2) {
    fx64 tmp;
    fx32 diff;

    SDK_NULL_ASSERT(v1);
    SDK_NULL_ASSERT(v2);

    diff = v1->x - v2->x;
    tmp = (fx64)diff * diff;

    diff = v1->y - v2->y;
    tmp += (fx64)diff * diff;

    diff = v1->z - v2->z;
    tmp += (fx64)diff * diff;

    tmp <<= 2;
    CP_SetSqrt64((u64)tmp);

    return ((fx32)CP_GetSqrtResult32() + 1) >> 1;
}

fx32 VEC_Fx16Distance (const VecFx16 * v1, const VecFx16 * v2) {
    fx64 tmp;
    fx32 diff;

    SDK_NULL_ASSERT(v1);
    SDK_NULL_ASSERT(v2);

    diff = v1->x - v2->x;
    tmp = diff * diff;

    diff = v1->y - v2->y;
    tmp += diff * diff;

    diff = v1->z - v2->z;
    tmp += diff * diff;

    tmp <<= 2;
    CP_SetSqrt64((u64)tmp);

    return ((fx32)CP_GetSqrtResult32() + 1) >> 1;
}

#include <nitro/codereset.h>
