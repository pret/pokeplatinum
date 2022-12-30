#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "unk_0201D15C.h"
#include "unk_0201E190.h"

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

fx32 sub_0201E1A0 (const VecFx32 * param0, const VecFx32 * param1)
{
    VecFx32 v0, v1;
    fx32 v2, v3;
    fx32 v4;

    VEC_Normalize(param0, &v0);
    VEC_Normalize(param1, &v1);

    v3 = FX_Mul(v0.z, v1.z) + FX_Mul(v0.x, v1.x);
    v2 = FX_Mul(v0.z, v1.x) - FX_Mul(v0.x, v1.z);

    if (v3 == 0) {
        if (v2 > 0) {
            v4 = 0x4000;
        } else {
            v4 = 0xc000;
        }
    } else {
        v4 = FX_Atan2Idx(v2, v3);
    }

    return v4;
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
