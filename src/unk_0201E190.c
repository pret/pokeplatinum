#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "nitro/fx/fx_trig.h"
#include "unk_0201D15C.h"
#include "unk_0201E190.h"

#define F32_PI                  ((f32)3.14159265358979323846)
#define FX_F32_RAD_TO_IDX(f)	((u16)(FX_RAD_TO_IDX(FX32_CONST((f)))))

fx32 sub_0201E190 (fx32 param0, fx32 param1)
{
    if (param0 < param1) {
        return param0;
    } else {
        return param1;
    }
}

fx32 sub_0201E198 (fx32 param0, fx32 param1)
{
    if (param0 > param1) {
        return param0;
    } else {
        return param1;
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

void sub_0201E268 (MtxFx33 * param0, VecFx32 * param1)
{
    MtxFx33 v0;

    MTX_RotX33(param0, FX_SinIdx((u16)param1->x), FX_CosIdx((u16)param1->x));
    MTX_RotY33(&v0, FX_SinIdx((u16)param1->y), FX_CosIdx((u16)param1->y));
    MTX_Concat33(param0, &v0, param0);
    MTX_RotZ33(&v0, FX_SinIdx((u16)param1->z), FX_CosIdx((u16)param1->z));
    MTX_Concat33(param0, &v0, param0);
}

void sub_0201E2E0 (MtxFx33 * param0, u16 param1, u16 param2, u16 param3)
{
    MtxFx33 v0;

    MTX_RotX33(param0, sub_0201D15C(param1), sub_0201D1D4(param1));
    MTX_RotY33(&v0, sub_0201D15C(param2), sub_0201D1D4(param2));
    MTX_Concat33(param0, &v0, param0);
    MTX_RotZ33(&v0, sub_0201D15C(param3), sub_0201D1D4(param3));
    MTX_Concat33(param0, &v0, param0);
}

void sub_0201E34C (u16 param0, fx32 param1, fx32 param2, fx32 * param3, fx32 * param4)
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
