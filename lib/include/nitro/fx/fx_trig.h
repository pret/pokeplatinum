#ifndef NITRO_FXTRIG_H_
#define NITRO_FXTRIG_H_

#include <nitro/fx/fx.h>

#ifdef __cplusplus
extern "C" {
#endif

#ifdef SDK_FX_DYNAMIC_TABLE
extern fx16 FX_SinCosTable_[];
#else
extern const fx16 FX_SinCosTable_[];
#endif

#define FX_DEG_TO_RAD(deg) ((fx32)((FX64C_TWOPI_360 * (deg) + 0x80000000LL) >> 32))
#define FX_DEG_TO_IDX(deg) ((u16)((FX64C_65536_360 * (deg) + 0x80000000000LL) >> 44))

#define FX_RAD_TO_DEG(rad) ((fx32)((FX64C_360_TWOPI * (rad) + 0x80000000LL) >> 32))
#define FX_RAD_TO_IDX(rad) ((u16)((FX64C_65536_TWOPI * (rad) + 0x80000000000LL) >> 44))

#define FX_IDX_TO_RAD(idx) ((fx32)((FX64C_TWOPI_65536 * (idx) + 0x80000LL) >> 20))
#define FX_IDX_TO_DEG(idx) ((fx32)((FX64C_360_65536 * (idx) + 0x80000LL) >> 20))

SDK_DECL_INLINE fx16 FX_SinIdx(int idx);
SDK_DECL_INLINE fx16 FX_CosIdx(int idx);

u16 FX_AtanIdx(fx32 x);
u16 FX_Atan2Idx(fx32 y, fx32 x);

fx16 FX_Atan(fx32 x);
fx16 FX_Atan2(fx32 y, fx32 x);

u16 FX_AsinIdx(fx32 x);
u16 FX_AcosIdx(fx32 x);

fx64c FX_SinFx64c(fx32 rad);
fx64c FX_CosFx64c(fx32 rad);

SDK_INLINE fx16 FX_SinIdx (int idx)
{
    SDK_MINMAX_ASSERT(idx, 0, 65535);

    return FX_SinCosTable_[((idx >> 4) << 1)];
}

SDK_INLINE fx16 FX_CosIdx (int idx)
{
    SDK_MINMAX_ASSERT(idx, 0, 65535);

    return FX_SinCosTable_[((idx >> 4) << 1) + 1];
}

#ifdef __cplusplus
}
#endif

#endif
