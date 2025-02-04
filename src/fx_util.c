#include "fx_util.h"

#include "nitro/fx/fx_trig.h"
#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "math.h"

#define F32_PI               ((f32)3.14159265358979323846)
#define FX_F32_RAD_TO_IDX(f) ((u16)(FX_RAD_TO_IDX(FX32_CONST(f))))

fx32 FX_Min(fx32 a, fx32 b)
{
    if (a < b) {
        return a;
    } else {
        return b;
    }
}

fx32 FX_Max(fx32 a, fx32 b)
{
    if (a > b) {
        return a;
    } else {
        return b;
    }
}

fx32 VEC_AngleBetween(const VecFx32 *a, const VecFx32 *b)
{
    VecFx32 aNorm, bNorm;
    fx32 sin, cos;
    fx32 angle;

    VEC_Normalize(a, &aNorm);
    VEC_Normalize(b, &bNorm);

    cos = FX_Mul(aNorm.z, bNorm.z) + FX_Mul(aNorm.x, bNorm.x);
    sin = FX_Mul(aNorm.z, bNorm.x) - FX_Mul(aNorm.x, bNorm.z);

    if (cos == 0) {
        angle = sin > 0 ? FX_F32_RAD_TO_IDX(F32_PI / 2) : FX_F32_RAD_TO_IDX(-F32_PI / 2);
    } else {
        angle = FX_Atan2Idx(sin, cos);
    }

    return angle;
}

void MTX_Rot33Vec(MtxFx33 *outRot, VecFx32 *angles)
{
    MtxFx33 tmp;

    MTX_RotX33(outRot, FX_SinIdx((u16)angles->x), FX_CosIdx((u16)angles->x));
    MTX_RotY33(&tmp, FX_SinIdx((u16)angles->y), FX_CosIdx((u16)angles->y));
    MTX_Concat33(outRot, &tmp, outRot);
    MTX_RotZ33(&tmp, FX_SinIdx((u16)angles->z), FX_CosIdx((u16)angles->z));
    MTX_Concat33(outRot, &tmp, outRot);
}

void MTX_Rot33Angles(MtxFx33 *outRot, u16 alpha, u16 beta, u16 gamma)
{
    MtxFx33 tmp;

    MTX_RotX33(outRot, CalcSineDegrees(alpha), CalcCosineDegrees(alpha));
    MTX_RotY33(&tmp, CalcSineDegrees(beta), CalcCosineDegrees(beta));
    MTX_Concat33(outRot, &tmp, outRot);
    MTX_RotZ33(&tmp, CalcSineDegrees(gamma), CalcCosineDegrees(gamma));
    MTX_Concat33(outRot, &tmp, outRot);
}

void CalcLinearFov(u16 angularFov, fx32 distance, fx32 aspectRatio, fx32 *outWidth, fx32 *outHeight)
{
    fx32 sin = FX_SinIdx(angularFov);
    fx32 cos = FX_CosIdx(angularFov);
    fx32 tan = FX_Div(sin, cos);

    *outHeight = FX_Mul(distance, tan);
    *outHeight = FX_Mul(*outHeight, 2 * FX32_ONE);
    *outWidth = FX_Mul(*outHeight, aspectRatio);
}
