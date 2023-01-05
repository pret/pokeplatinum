#ifndef NITRO_MATH_MATH_H_
#define NITRO_MATH_MATH_H_

#include <nitro/misc.h>
#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

#define MATH_ABS(a) (((a) < 0) ? (-(a)) : (a))

SDK_INLINE int MATH_IAbs (int a)
{
    return (a < 0) ? -a : a;
}

#define MATH_CLAMP(x, low, high) (((x) > (high)) ? (high) : (((x) < (low)) ? (low) : (x)))

#define MATH_MIN(a, b) (((a) <= (b)) ? (a) : (b))

SDK_INLINE int MATH_IMin (int a, int b)
{
    return (a <= b) ? a : b;
}

#define MATH_MAX(a, b) (((a) >= (b)) ? (a) : (b))

SDK_INLINE int MATH_IMax (int a, int b)
{
    return (a >= b) ? a : b;
}

#define MATH_ROUNDUP(x, base) (((x) + ((base) - 1)) & ~((base) - 1))

#define MATH_ROUNDDOWN(x, base) ((x) & ~((base) - 1))

#define MATH_ROUNDUP32(x) MATH_ROUNDUP(x, 32)

#define MATH_ROUNDDOWN32(x) MATH_ROUNDDOWN(x, 32)

u32 MATH_CountLeadingZerosFunc(u32 x);

#if !defined(PLATFORM_INTRINSIC_FUNCTION_BIT_CLZ32)

#ifdef SDK_ARM9
#if defined(SDK_CW) || defined(__MWERKS__)
#pragma thumb off
SDK_INLINE u32 MATH_CountLeadingZerosInline (u32 x)
{
    asm
    {
        clz x, x
    }
    return x;
}

#pragma thumb reset
#elif defined(SDK_ADS)
TO BE DEFINED
#elif defined(SDK_GCC)
TO BE DEFINED
#endif
#endif
#endif

#ifndef MATH_CountLeadingZeros
#if defined(PLATFORM_INTRINSIC_FUNCTION_BIT_CLZ32)
#define MATH_CountLeadingZeros(x) PLATFORM_INTRINSIC_FUNCTION_BIT_CLZ32(x)
#elif defined(SDK_ARM9) && defined(SDK_CODE_ARM)
#define MATH_CountLeadingZeros(x) MATH_CountLeadingZerosInline(x)
#else
#define MATH_CountLeadingZeros(x) MATH_CountLeadingZerosFunc(x)
#endif
#endif

#define MATH_CLZ(x) MATH_CountLeadingZeros(x)

SDK_INLINE int MATH_ILog2 (u32 x)
{
    return (int)(31 - MATH_CountLeadingZeros(x));
}

u8 MATH_CountPopulation(u32 x);

SDK_INLINE u32 MATH_CountTrailingZeros (u32 x)
{
    return (u32)(32 - MATH_CountLeadingZeros((u32)(~x & (x - 1))));
}

#define MATH_CTZ(x) MATH_CountTrailingZeros(x)

SDK_INLINE u32 MATH_GetLeastSignificantBit (u32 x)
{
    return (u32)(x & -(s32)x);
}

#define MATH_LSB(x) MATH_GetLeastSignificantBit(x)

SDK_INLINE u32 MATH_GetMostSignificantBit (u32 x)
{
    return (u32)(x & ((s32)0x80000000 >> MATH_CountLeadingZeros(x)));
}

#define MATH_MSB(x) MATH_GetMostSignificantBit(x)

#ifdef __cplusplus
}
#endif

#endif
