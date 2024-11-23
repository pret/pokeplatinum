#ifndef POKEPLATINUM_MATH_H
#define POKEPLATINUM_MATH_H

#include <nitro/fx/fx.h>

#include "constants/heap.h"

enum AffineTransformationMatrixMode {
    AFFINE_MODE_NORMAL = 0,
    AFFINE_MODE_MAX_256,
    AFFINE_MODE_MAX_360,
};

fx32 CalcSineDegrees(u16 degrees);
fx32 CalcCosineDegrees(u16 degrees);
fx32 CalcSineDegrees_Wraparound(u16 degrees);
fx32 CalcCosineDegrees_Wraparound(u16 degrees);
u16 CalcAngleRotationIdx(u16 degrees);
u16 CalcAngleRotationIdx_Wraparound(u16 degrees);
fx32 CalcSineDegrees_FX32(fx32 degrees);
fx32 CalcCosineDegrees_FX32(fx32 degrees);

u32 LCRNG_GetSeed(void);
void LCRNG_SetSeed(u32 seed);
u16 LCRNG_Next(void);
u32 ARNG_Next(u32 seed);
void MTRNG_SetSeed(u32 seed);
u32 MTRNG_Next(void);

void CreateAffineTransformationMatrix(MtxFx22 *matrix, u16 degrees, fx32 xScale, fx32 yScale, u8 mode);

s32 CalcDotProduct2D(s32 x0, s32 y0, s32 x1, s32 y1, u32 unused);
s32 CalcRadialAngle(u16 radius, s32 distance);

u32 SumBytes(const void *data, u32 size);
void EncodeData(void *data, u32 size, u32 seed);
void DecodeData(void *data, u32 size, u32 seed);
u16 CalcCRC16Checksum(const void *data, u32 dataLen);
void InitCRC16Table(enum HeapId heapID);

#endif // POKEPLATINUM_MATH_H
