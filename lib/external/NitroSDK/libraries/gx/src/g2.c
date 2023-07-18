#include <nitro/gx/g2.h>
#include <nitro/fx/fx_const.h>
#include <nitro/code32.h>

void G2x_SetBGyAffine_ (u32 addr, const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1) {
    s32 dx, dy;
    fx32 x2, y2;

    SDK_NULL_ASSERT(mtx);
    SDK_MINMAX_ASSERT(mtx->_00, -128 * FX32_ONE, 128 * FX32_ONE - 1);
    SDK_MINMAX_ASSERT(mtx->_01, -128 * FX32_ONE, 128 * FX32_ONE - 1);
    SDK_MINMAX_ASSERT(mtx->_10, -128 * FX32_ONE, 128 * FX32_ONE - 1);
    SDK_MINMAX_ASSERT(mtx->_11, -128 * FX32_ONE, 128 * FX32_ONE - 1);

    *((vu32 *)addr + 0) = (u32)((u16)(s16)(mtx->_00 >> 4) | (u16)(s16)(mtx->_01 >> 4) << 16);

    *((vu32 *)addr + 1) = (u32)((u16)(s16)(mtx->_10 >> 4) | (u16)(s16)(mtx->_11 >> 4) << 16);

    dx = x1 - centerX;
    dy = y1 - centerY;

    x2 = mtx->_00 * dx + mtx->_01 * dy + (centerX << FX32_SHIFT);
    y2 = mtx->_10 * dx + mtx->_11 * dy + (centerY << FX32_SHIFT);

    *((vu32 *)addr + 2) = (u32)(x2 >> 4);
    *((vu32 *)addr + 3) = (u32)(y2 >> 4);
}

#include <nitro/codereset.h>

typedef enum {
    G2_BLENDTYPE_NONE = 0x0000,
    G2_BLENDTYPE_ALPHA = 0x0040,
    G2_BLENDTYPE_FADEIN = 0x0080,
    G2_BLENDTYPE_FADEOUT = 0x00c0
} G2_BLENDTYPE;

void G2x_SetBlendAlpha_ (u32 addr, int plane1, int plane2, int ev1, int ev2) {
    SDK_MINMAX_ASSERT(plane1, 0, 0x20 - 1);
    SDK_MINMAX_ASSERT(plane2, 0, 0x40 - 1);
    SDK_MINMAX_ASSERT(ev1, 0, 31);
    SDK_MINMAX_ASSERT(ev2, 0, 31);

    *((vu32 *)addr + 0) =
        (u32)((G2_BLENDTYPE_ALPHA | plane1 | plane2 << 8) | ((ev1 | ev2 << 8) << 16));
}

void G2x_SetBlendBrightness_ (u32 addr, int plane, int brightness) {
    SDK_MINMAX_ASSERT(brightness, -31, 31);
    SDK_MINMAX_ASSERT(plane, 0, 0x40 - 1);

    if (brightness < 0) {
        *((vu16 *)addr + 0) = (u16)(G2_BLENDTYPE_FADEOUT | plane);

        *((vu16 *)addr + 2) = (u16) - brightness;
    } else {
        *((vu16 *)addr + 0) = (u16)(G2_BLENDTYPE_FADEIN | plane);

        *((vu16 *)addr + 2) = (u16)brightness;
    }
}

void G2x_SetBlendBrightnessExt_ (u32 addr, int plane1, int plane2, int ev1, int ev2, int brightness) {
    SDK_MINMAX_ASSERT(brightness, -31, 31);
    SDK_MINMAX_ASSERT(plane1, 0, 0x40 - 1);
    SDK_MINMAX_ASSERT(plane2, 0, 0x40 - 1);
    SDK_MINMAX_ASSERT(ev1, 0, 31);
    SDK_MINMAX_ASSERT(ev2, 0, 31);

    *((vu16 *)addr + 1) = (u16)(ev1 | (ev2 << 8));

    if (brightness < 0) {
        *((vu16 *)addr + 0) = (u16)(G2_BLENDTYPE_FADEOUT | plane1 | (plane2 << 8));

        *((vu16 *)addr + 2) = (u16) - brightness;
    } else {
        *((vu16 *)addr + 0) = (u16)(G2_BLENDTYPE_FADEIN | plane1 | (plane2 << 8));

        *((vu16 *)addr + 2) = (u16)brightness;
    }
}

void G2x_ChangeBlendBrightness_ (u32 addr, int brightness) {
    u16 tmp;
    SDK_MINMAX_ASSERT(brightness, -31, 31);

    tmp = *((vu16 *)addr + 0);

    if (brightness < 0) {
        if (G2_BLENDTYPE_FADEIN == (tmp & REG_G2_BLDCNT_EFFECT_MASK)) {
            *((vu16 *)addr + 0) = (u16)((tmp & ~REG_G2_BLDCNT_EFFECT_MASK) | G2_BLENDTYPE_FADEOUT);
        }

        *((vu16 *)addr + 2) = (u16) - brightness;
    } else {
        if (G2_BLENDTYPE_FADEOUT == (tmp & REG_G2_BLDCNT_EFFECT_MASK)) {
            *((vu16 *)addr + 0) = (u16)((tmp & ~REG_G2_BLDCNT_EFFECT_MASK) | G2_BLENDTYPE_FADEIN);
        }

        *((vu16 *)addr + 2) = (u16)brightness;
    }
}
