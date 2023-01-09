#include <nitro/fx/fx_trig.h>
#include <nitro/fx/fx_const.h>

#define SDK_FOUR_PI ((fx64c)0x0000000145f306ddLL)

#define SDK_SINCOEFF_1 ((u64)3373259426LL)
#define SDK_SINCOEFF_2 ((u64)346799334LL)
#define SDK_SINCOEFF_3 ((u64)132467588LL)
#define SDK_SINCOEFF_4 ((u64)63079804LL)
#define SDK_SINCOEFF_5 ((u64)36796552LL)

#define SDK_COSCOEFF_1 ((u64)1324675879LL)
#define SDK_COSCOEFF_2 ((u64)220779313LL)
#define SDK_COSCOEFF_3 ((u64)88311725LL)
#define SDK_COSCOEFF_4 ((u64)47309853LL)

static u64 FX_SinFx64c_internal(u64 y);
static u64 FX_CosFx64c_internal(u64 y);

#include <nitro/code32.h>

static u64 FX_SinFx64c_internal (u64 y) {
    u64 tmp;
    u64 yy;
    if (y == 0x100000000LL) {
        return (u64)FX64C_SQRT1_2;
    }
    yy = y * y >> 32;

    tmp = FX64C_ONE - (SDK_SINCOEFF_5 * yy >> 32);
    tmp = FX64C_ONE - ((SDK_SINCOEFF_4 * yy >> 32) * tmp >> 32);
    tmp = FX64C_ONE - ((SDK_SINCOEFF_3 * yy >> 32) * tmp >> 32);
    tmp = SDK_SINCOEFF_1 - ((SDK_SINCOEFF_2 * yy >> 32) * tmp >> 32);

    return tmp * y >> 32;
}

static u64 FX_CosFx64c_internal (u64 y) {
    u64 tmp;
    u64 yy;
    if (y == 0x100000000LL) {
        return (u64)FX64C_SQRT1_2;
    }
    yy = y * y >> 32;

    tmp = FX64C_ONE - (SDK_COSCOEFF_4 * yy >> 32);
    tmp = FX64C_ONE - ((SDK_COSCOEFF_3 * yy >> 32) * tmp >> 32);
    tmp = FX64C_ONE - ((SDK_COSCOEFF_2 * yy >> 32) * tmp >> 32);
    tmp = FX64C_ONE - ((SDK_COSCOEFF_1 * yy >> 32) * tmp >> 32);

    return tmp;
}

#include <nitro/codereset.h>

fx64c FX_SinFx64c (fx32 rad) {
    fx64c y;
    fx64c rval;
    int n;

    if (rad < 0) {
        return -FX_SinFx64c(-rad);
    }
    y = (fx64c)((SDK_FOUR_PI * rad) >> 12);
    n = (int)(y >> 32);
    y = y & 0xffffffff;

    if (n & 1) {
        y = 0x100000000LL - y;
    }
    if ((n + 1) & 2) {
        rval = (fx64c)FX_CosFx64c_internal((u64)y);
    } else {
        rval = (fx64c)FX_SinFx64c_internal((u64)y);
    }
    if ((n & 7) > 3) {
        rval = -rval;
    }
    return rval;
}

fx64c FX_CosFx64c (fx32 rad) {
    fx64c y;
    fx64c rval;
    int n;

    if (rad < 0) {
        return FX_CosFx64c(-rad);
    }
    y = (fx64c)((SDK_FOUR_PI * rad) >> 12);
    n = (int)(y >> 32);
    y = y & 0xffffffff;

    if (n & 1) {
        y = 0x100000000LL - y;
    }
    if ((n + 1) & 2) {
        rval = (fx64c)FX_SinFx64c_internal((u64)y);
    } else {
        rval = (fx64c)FX_CosFx64c_internal((u64)y);
    }
    if (((n + 2) & 7) > 3) {
        rval = -rval;
    }
    return rval;
}
