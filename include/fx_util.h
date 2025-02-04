#ifndef POKEPLATINUM_FX_UTIL_H
#define POKEPLATINUM_FX_UTIL_H

#include <nitro/fx/fx.h>

fx32 FX_Min(fx32 a, fx32 b);
fx32 FX_Max(fx32 a, fx32 b);
fx32 VEC_AngleBetween(const VecFx32 *param0, const VecFx32 *param1);
void MTX_Rot33Vec(MtxFx33 *outRot, VecFx32 *angles);
void MTX_Rot33Angles(MtxFx33 *outRot, u16 alpha, u16 beta, u16 gamma);
void CalcLinearFov(u16 angularFov, fx32 distance, fx32 aspectRatio, fx32 *outWidth, fx32 *outHeight);

#endif // POKEPLATINUM_FX_UTIL_H
