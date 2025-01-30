#include "unk_0201E190.h"

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

void sub_0201E34C(u16 param0, fx32 param1, fx32 param2, fx32 *param3, fx32 *param4)
{
    fx32 v0;
    fx32 v1;
    fx32 v2;

    v0 = FX_SinIdx(param0);
    v1 = FX_CosIdx(param0);
    v2 = FX_Div(v0, v1);

    *param4 = FX_Mul(param1, v2);
    *param4 = FX_Mul(*param4, 2 * FX32_ONE);
    *param3 = FX_Mul(*param4, param2);
}
