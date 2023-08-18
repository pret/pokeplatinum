#include <nitro/fx/fx.h>
#include <nitro/fx/fx_const.h>
#include <nitro/fx/fx_trig.h>

#ifdef __MWERKS__
#  if !defined(_MSL_USE_INLINE) && __option(dont_inline)
#    define _MSL_USE_INLINE 0
#  endif
#endif

#include <nitro/math/math.h>

#define SDK_FX_INIT_2PI (4096 * 2)
#define SDK_FX_INIT_PI_2 (4096 * 2 / 4)
#define SDK_FX_INIT_PI (4096 * 2 / 2)

void FX_Init () {
    SDK_ASSERT(2 == sizeof(fx16));
    SDK_ASSERT(4 == sizeof(fx32));
    SDK_ASSERT(8 == sizeof(fx64));
    SDK_ASSERT(8 == sizeof(fx64c));
    SDK_ASSERT(6 == sizeof(VecFx16));
    SDK_ASSERT(12 == sizeof(VecFx32));

    SDK_ASSERT(64 == sizeof(MtxFx44));
    SDK_ASSERT(48 == sizeof(MtxFx43));
    SDK_ASSERT(36 == sizeof(MtxFx33));
    SDK_ASSERT(16 == sizeof(MtxFx22));

#ifdef SDK_FX_DYNAMIC_TABLE
#if 1

    fx64c idx, ss;
    fx32 rad;
    fx16 s;
    int i;

    for (idx = 0, i = 0; i <= 4096 / 4; idx += (FX64C_TWOPI_65536 * (65536 / 4096)), ++i) {
        rad = (fx32)((idx + 0x80000LL) >> 20);
        ss = FX_SinFx64c(rad);
        s = (fx16)((ss + 0x80000LL) >> 20);

        FX_SinCosTable_[i * 2] = s;
        if (i != 0) {
            FX_SinCosTable_[SDK_FX_INIT_2PI - i * 2] = (fx16) - s;
        }
        FX_SinCosTable_[SDK_FX_INIT_PI - i * 2] = s;
        FX_SinCosTable_[SDK_FX_INIT_PI + i * 2] = (fx16) - s;
    }

    FX_SinCosTable_[1] = FX16_ONE;

    for (i = 1; i <= SDK_FX_INIT_PI_2; ++i) {
        FX_SinCosTable_[i * 2 + 1] = FX_SinCosTable_[SDK_FX_INIT_PI_2 + i * 2];
        FX_SinCosTable_[SDK_FX_INIT_2PI - i * 2 + 1] = FX_SinCosTable_[i * 2 + 1];
    }
#else

    int i;
    f32 rad;
    fx16 s;
    for (i = 0; i <= 4096 / 4; ++i) {
        rad = (f32)((3.14159265358979323846 * 2 / 4096) * i);
        s = (fx16)FX_F32_TO_FX32(sinf(rad));
        FX_SinCosTable_[i * 2] = s;
        if (i != 0) {
            FX_SinCosTable_[SDK_FX_INIT_2PI - i * 2] = (fx16) - s;
        }
        FX_SinCosTable_[SDK_FX_INIT_PI - i * 2] = s;
        FX_SinCosTable_[SDK_FX_INIT_PI + i * 2] = (fx16) - s;
    }

    FX_SinCosTable_[1] = FX16_ONE;

    for (i = 1; i <= SDK_FX_INIT_PI_2; ++i) {
        FX_SinCosTable_[i * 2 + 1] = FX_SinCosTable_[SDK_FX_INIT_PI_2 + i * 2];
        FX_SinCosTable_[SDK_FX_INIT_2PI - i * 2 + 1] = FX_SinCosTable_[i * 2 + 1];
    }
#endif
#endif
}

#include <nitro/code32.h>

fx32 FX_MulFunc (fx32 v1, fx32 v2) {
    return FX32_CAST(((s64)(v1) * v2 + 0x800LL) >> FX32_SHIFT);
}

fx32 FX_Mul32x64cFunc (fx32 v32, fx64c v64c) {
    fx64c tmp = v64c * v32 + 0x80000000LL;
    return FX32_CAST(tmp >> FX64C_SHIFT);
}

#include <nitro/codereset.h>

fx32 FX_Modf (fx32 x, fx32 * iPtr) {
    if (x >= 0) {
        *iPtr = (x & FX32_INT_MASK);
        return (x & FX32_DEC_MASK);
    } else {
        *iPtr = -((-x) & FX32_INT_MASK);
        return -((-x) & FX32_DEC_MASK);
    }
}
