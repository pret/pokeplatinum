#include "math_util.h"

#include <nitro/math/crc.h>

#include "heap.h"

static u16 LCRNG_NextFrom(u32 *seed);

fx32 CalcSineDegrees(u16 degrees)
{
    if (degrees >= 360) {
        return 0;
    }

    fx16 sin = FX_SinIdx(CalcAngleRotationIdx(degrees));
    return FX32_CONST(FX_FX16_TO_F32(sin));
}

fx32 CalcCosineDegrees(u16 degrees)
{
    if (degrees >= 360) {
        return 0;
    }

    fx16 cos = FX_CosIdx(CalcAngleRotationIdx(degrees));
    return FX32_CONST(FX_FX16_TO_F32(cos));
}

fx32 CalcSineDegrees_Wraparound(u16 degrees)
{
    degrees %= 360;
    return CalcSineDegrees(degrees);
}

fx32 CalcCosineDegrees_Wraparound(u16 degrees)
{
    degrees %= 360;
    return CalcCosineDegrees(degrees);
}

u16 CalcAngleRotationIdx(u16 degrees)
{
    if (degrees >= 360) {
        return 0;
    }

    return FX_DEG_TO_IDX(degrees * FX32_ONE);
}

u16 CalcAngleRotationIdx_Wraparound(u16 degrees)
{
    degrees %= 360;
    return CalcAngleRotationIdx(degrees);
}

fx32 CalcSineDegrees_FX32(fx32 degrees)
{
    u16 degreesUnshifted = degrees >> FX32_SHIFT;
    return CalcSineDegrees_Wraparound(degreesUnshifted);
}

fx32 CalcCosineDegrees_FX32(fx32 degrees)
{
    u16 degreesUnshifted = degrees >> FX32_SHIFT;
    return CalcCosineDegrees_Wraparound(degreesUnshifted);
}

static u32 sLCRNGState;

u32 LCRNG_GetSeed()
{
    return sLCRNGState;
}

void LCRNG_SetSeed(u32 seed)
{
    sLCRNGState = seed;
}

u16 LCRNG_Next()
{
    sLCRNGState = sLCRNGState * LCRNG_MULTIPLIER + LCRNG_INCREMENT;
    return sLCRNGState >> 16;
}

// Matsumoto, M. & Nishimura, T. 1998. "Mersenne Twister: A 623-Dimensionally Equidistributed Uniform Pseudo-Random Number Generator."
#define MT19937_N 624 // degree of recurrence (number of total words)
#define MT19937_M 397 // middle word offset
#define MT19937_W 32 // word size (number of bits)
#define MT19937_R 31 // separation point of a single word; number of bits of the lower bitmask
#define MT19937_F 1812433253 // additional initialization constant
#define MT19937_A 0x9908B0DF // coefficient of the rational normal form twist matrix
#define MT19937_B 0x9D2C5680 // tempering bitmask
#define MT19937_C 0xEFC60000 // tempering bitmask
#define MT19937_S 7 // tempering bitshift (masked against B)
#define MT19937_T 15 // tempering bitshift (masked against C)
#define MT19937_U 11 // tempering bitshift (not masked)
#define MT19937_L 18 // tempering bitshift (not masked)

#define MT19937_UMASK        (0xFFFFFFFF << MT19937_R)
#define MT19937_LMASK        (0xFFFFFFFF >> (MT19937_W - MT19937_R))
#define MT19937_DEFAULT_SEED 5489

u32 ARNG_Next(u32 seed)
{
    return seed * MT19937_F + 1;
}

static u32 sMTRNGState[MT19937_N];
static int sMTRNGIndex = MT19937_N + 1;
static u32 sMTRNGXor[2] = { 0, MT19937_A };

void MTRNG_SetSeed(u32 seed)
{
    sMTRNGState[0] = seed;
    for (sMTRNGIndex = 1; sMTRNGIndex < MT19937_N; sMTRNGIndex++) {
        sMTRNGState[sMTRNGIndex] = MT19937_F * (sMTRNGState[sMTRNGIndex - 1] ^ (sMTRNGState[sMTRNGIndex - 1] >> (MT19937_W - 2))) + sMTRNGIndex;
    }
}

u32 MTRNG_Next()
{
    u32 result;
    if (sMTRNGIndex >= MT19937_N) {
        if (sMTRNGIndex == MT19937_N + 1) {
            MTRNG_SetSeed(MT19937_DEFAULT_SEED);
        }

        int i;
        for (i = 0; i < MT19937_N - MT19937_M; i++) {
            result = (sMTRNGState[i] & MT19937_UMASK) | (sMTRNGState[i + 1] & MT19937_LMASK);
            sMTRNGState[i] = sMTRNGState[i + MT19937_M] ^ (result >> 1) ^ sMTRNGXor[result & 1];
        }
        for (; i < MT19937_N - 1; i++) {
            result = (sMTRNGState[i] & MT19937_UMASK) | (sMTRNGState[i + 1] & MT19937_LMASK);
            sMTRNGState[i] = sMTRNGState[i + (MT19937_M - MT19937_N)] ^ (result >> 1) ^ sMTRNGXor[result & 1];
        }

        result = (sMTRNGState[MT19937_N - 1] & MT19937_UMASK) | (sMTRNGState[0] & MT19937_LMASK);
        sMTRNGState[MT19937_N - 1] = sMTRNGState[MT19937_M - 1] ^ (result >> 1) ^ sMTRNGXor[result & 1];
        sMTRNGIndex = 0;
    }

    result = sMTRNGState[sMTRNGIndex++];
    result ^= (result >> MT19937_U);
    result ^= (result << MT19937_S) & MT19937_B;
    result ^= (result << MT19937_T) & MT19937_C;
    result ^= (result >> MT19937_L);

    return result;
}

void CreateAffineTransformationMatrix(MtxFx22 *matrix, u16 degrees, fx32 xScale, fx32 yScale, u8 mode)
{
    if (mode == AFFINE_MODE_MAX_256) {
        degrees = (u32)(0xFFFF * degrees) >> 8;
    } else if (mode == AFFINE_MODE_MAX_360) {
        degrees = (u32)(0xFFFF * degrees) / 360;
    }

    MTX_Rot22(matrix, FX_SinIdx(degrees), FX_CosIdx(degrees));
    MTX_ScaleApply22(matrix, matrix, xScale, yScale);
}

static inline void CalcCrossProduct(const VecFx32 *a, const VecFx32 *b, VecFx32 *outResult)
{
    outResult->x = 0;
    outResult->y = 0;
    outResult->z = FX_Mul(a->x, b->y) - FX_Mul(b->x, a->y);
}

s32 CalcDotProduct2D(s32 x0, s32 y0, s32 x1, s32 y1, u32 unused)
{
    VecFx32 vec0, vec1, vecResult, cross;
    fx32 crossMagnitude;
    fx32 dotProduct;
    s32 result;

    VEC_Set(&vec0, x0 << FX32_SHIFT, y0 << FX32_SHIFT, 0);
    VEC_Set(&vec1, x1 << FX32_SHIFT, y1 << FX32_SHIFT, 0);
    CalcCrossProduct(&vec0, &vec1, &cross);
    crossMagnitude = cross.x + cross.y + cross.z;

    VEC_Set(&vec0, y0 << FX32_SHIFT, x0 << FX32_SHIFT, 0);
    VEC_Normalize(&vec0, &vecResult);
    VEC_Set(&vec0, x0 << FX32_SHIFT, y0 << FX32_SHIFT, 0);
    VEC_Set(&vec1, x1 << FX32_SHIFT, y1 << FX32_SHIFT, 0);
    VEC_Subtract(&vec1, &vec0, &cross);

    dotProduct = VEC_DotProduct(&vecResult, &cross);
    result = dotProduct >> FX32_SHIFT;
    result = MATH_IAbs(result);

    if (crossMagnitude <= 0) {
        result *= -1;
    }

    return result;
}

s32 CalcRadialAngle(u16 radius, s32 distance)
{
    s32 circumference = FX_Mul((2 * radius) << FX32_SHIFT, FX32_CONST(3.140f)) >> FX32_SHIFT;
    return (distance * 0xFFFF) / circumference;
}

u32 SumBytes(const void *data, u32 size)
{
    u32 sum = 0;
    for (int i = 0; i < size; i++) {
        sum += ((const u8 *)data)[i];
    }

    return sum;
}

void EncodeData(void *data, u32 size, u32 seed)
{
    u16 *halfWords = (u16 *)data;
    for (int i = 0; i < size / 2; i++) {
        halfWords[i] ^= LCRNG_NextFrom(&seed);
    }
}

void DecodeData(void *data, u32 size, u32 seed)
{
    EncodeData(data, size, seed);
}

static u16 LCRNG_NextFrom(u32 *seed)
{
    *seed = *seed * LCRNG_MULTIPLIER + LCRNG_INCREMENT;
    return *seed >> 16;
}

static MATHCRC16Table *sCRC16Table = NULL;

u16 CalcCRC16Checksum(const void *data, u32 dataLen)
{
    return MATH_CalcCRC16CCITT(sCRC16Table, data, dataLen);
}

void InitCRC16Table(enum HeapId heapID)
{
    GF_ASSERT(sCRC16Table == NULL);
    sCRC16Table = Heap_Alloc(heapID, sizeof(MATHCRC16Table));
    MATH_CRC16CCITTInitTable(sCRC16Table);
}
