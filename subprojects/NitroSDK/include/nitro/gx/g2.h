#ifndef NITRO_G2_H_
#define NITRO_G2_H_

#include <nitro/gx/gxcommon.h>
#include <nitro/hw/ARM9/ioreg_G2.h>
#include <nitro/hw/ARM9/ioreg_G2S.h>
#include <nitro/hw/ARM9/ioreg_GX.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u8 planeMask : 5;
    u8 effect : 1;
    u8 _reserve : 2;
} GXWndPlane;

typedef enum {
    GX_WND_PLANEMASK_NONE = 0x0000,
    GX_WND_PLANEMASK_BG0 = 0x0001,
    GX_WND_PLANEMASK_BG1 = 0x0002,
    GX_WND_PLANEMASK_BG2 = 0x0004,
    GX_WND_PLANEMASK_BG3 = 0x0008,
    GX_WND_PLANEMASK_OBJ = 0x0010
} GXWndPlaneMask;

#define GX_WND_PLANEMASK_ASSERT(x)                                   \
    SDK_MINMAX_ASSERT(x,                                             \
                      GX_WND_PLANEMASK_NONE,                         \
                      (GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | \
                       GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | \
                       GX_WND_PLANEMASK_OBJ))

typedef enum {
    GX_BLEND_PLANEMASK_NONE = 0x0000,
    GX_BLEND_PLANEMASK_BG0 = 0x0001,
    GX_BLEND_PLANEMASK_BG1 = 0x0002,
    GX_BLEND_PLANEMASK_BG2 = 0x0004,
    GX_BLEND_PLANEMASK_BG3 = 0x0008,
    GX_BLEND_PLANEMASK_OBJ = 0x0010,
    GX_BLEND_PLANEMASK_BD = 0x0020
} GXBlendPlaneMask;

#define GX_BLEND_PLANEMASK_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BLEND_PLANEMASK_NONE, 0x3f)

#define GX_MOSAICSIZE_ASSERT(x) SDK_MINMAX_ASSERT(x, 0, 15)

#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))

static void G2_SetBG0Offset(int hOffset, int vOffset);
static void G2_SetBG1Offset(int hOffset, int vOffset);
static void G2_SetBG2Offset(int hOffset, int vOffset);
static void G2_SetBG3Offset(int hOffset, int vOffset);

static void G2_SetBG2Affine(const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1);
static void G2_SetBG3Affine(const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1);

static void G2_SetWnd0InsidePlane(int wnd, BOOL effect);
static void G2_SetWnd1InsidePlane(int wnd, BOOL effect);
static void G2_SetWndOutsidePlane(int wnd, BOOL effect);
static void G2_SetWndOBJInsidePlane(int wnd, BOOL effect);
static void G2_SetWnd0Position(int x1, int y1, int x2, int y2);
static void G2_SetWnd1Position(int x1, int y1, int x2, int y2);

static void G2_SetBGMosaicSize(int hSize, int vSize);
static void G2_SetOBJMosaicSize(int hSize, int vSize);

static void G2_BlendNone(void);
static void G2_SetBlendAlpha(int plane1,
                             int plane2,
                             int ev1, int ev2);

static void G2_SetBlendBrightness(int plane,
                                  int brightness);
static void G2_SetBlendBrightnessExt(int plane1,
                                     int plane2,
                                     int ev1, int ev2, int brightness);

static void G2_ChangeBlendAlpha(int ev1, int ev2);
static void G2_ChangeBlendBrightness(int brightness);

static void G2S_SetBG0Offset(int hOffset, int vOffset);
static void G2S_SetBG1Offset(int hOffset, int vOffset);
static void G2S_SetBG2Offset(int hOffset, int vOffset);
static void G2S_SetBG3Offset(int hOffset, int vOffset);

static void G2S_SetBG2Affine(const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1);
static void G2S_SetBG3Affine(const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1);

static void G2S_SetWnd0InsidePlane(int wnd, BOOL effect);
static void G2S_SetWnd1InsidePlane(int wnd, BOOL effect);
static void G2S_SetWndOutsidePlane(int wnd, BOOL effect);
static void G2S_SetWndOBJInsidePlane(int wnd, BOOL effect);
static void G2S_SetWnd0Position(int x1, int y1, int x2, int y2);
static void G2S_SetWnd1Position(int x1, int y1, int x2, int y2);

static void G2S_SetBGMosaicSize(int hSize, int vSize);
static void G2S_SetOBJMosaicSize(int hSize, int vSize);

static void G2S_BlendNone(void);
static void G2S_SetBlendAlpha(int plane1,
                              int plane2,
                              int ev1, int ev2);

static void G2S_SetBlendBrightness(int plane,
                                   int brightness);
static void G2S_SetBlendBrightnessExt(int plane1,
                                      int plane2,
                                      int ev1, int ev2, int brightness);

static void G2S_ChangeBlendAlpha(int ev1, int ev2);
static void G2S_ChangeBlendBrightness(int brightness);

void G2x_SetBGyAffine_(u32 addr, const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1);
void G2x_SetBlendAlpha_(u32 addr, int plane1, int plane2, int ev1, int ev2);
void G2x_SetBlendBrightness_(u32 addr, int plane, int brightness);
void G2x_SetBlendBrightnessExt_(u32 addr, int plane1, int plane2, int ev1, int ev2,
                                int brightness);
void G2x_ChangeBlendBrightness_(u32 addr, int brightness);

static inline void G2_SetBG0Offset (int hOffset, int vOffset)
{
    SDK_WARNING(0 == (reg_GX_DISPCNT & REG_GX_DISPCNT_BG02D3D_MASK),
                "BG0 is in 3D mode now. call \'G3X_SetHOffset\'\n");

    reg_G2_BG0OFS = (u32)(((hOffset << REG_G2_BG0OFS_HOFFSET_SHIFT) & REG_G2_BG0OFS_HOFFSET_MASK) |
                          ((vOffset << REG_G2_BG0OFS_VOFFSET_SHIFT) & REG_G2_BG0OFS_VOFFSET_MASK));
}

static inline void G2_SetBG1Offset (int hOffset, int vOffset)
{
    reg_G2_BG1OFS = (u32)(((hOffset << REG_G2_BG1OFS_HOFFSET_SHIFT) & REG_G2_BG1OFS_HOFFSET_MASK) |
                          ((vOffset << REG_G2_BG1OFS_VOFFSET_SHIFT) & REG_G2_BG1OFS_VOFFSET_MASK));
}

static inline void G2_SetBG2Offset (int hOffset, int vOffset)
{
#ifdef SDK_DEBUG
    {
        u32 tmp = (reg_GX_DISPCNT & REG_GX_DISPCNT_BGMODE_MASK) >> REG_GX_DISPCNT_BGMODE_SHIFT;
        SDK_WARNING((0 == tmp) || (1 == tmp) || (3 == tmp),
                    "G2_SetBG2Offset requires BG #2 to be text mode. Use G2_SetBG2Affine instead.");
    }
#endif
    reg_G2_BG2OFS = (u32)(((hOffset << REG_G2_BG2OFS_HOFFSET_SHIFT) & REG_G2_BG2OFS_HOFFSET_MASK) |
                          ((vOffset << REG_G2_BG2OFS_VOFFSET_SHIFT) & REG_G2_BG2OFS_VOFFSET_MASK));
}

static inline void G2_SetBG3Offset (int hOffset, int vOffset)
{
#ifdef SDK_DEBUG
    {
        u32 tmp = (reg_GX_DISPCNT & REG_GX_DISPCNT_BGMODE_MASK) >> REG_GX_DISPCNT_BGMODE_SHIFT;
        SDK_WARNING(0 == tmp,
                    "G2_SetBG3Offset requires BG #3 to be text mode. Use G2_SetBG3Affine instead.");
    }
#endif
    reg_G2_BG3OFS = (u32)(((hOffset << REG_G2_BG3OFS_HOFFSET_SHIFT) & REG_G2_BG3OFS_HOFFSET_MASK) |
                          ((vOffset << REG_G2_BG3OFS_VOFFSET_SHIFT) & REG_G2_BG3OFS_VOFFSET_MASK));
}

static inline void G2_SetWnd0InsidePlane (int wnd, BOOL effect)
{
    u32 tmp;
    GX_WND_PLANEMASK_ASSERT(wnd);

    tmp = ((reg_G2_WININ & ~REG_G2_WININ_WIN0IN_MASK) | ((u32)wnd << REG_G2_WININ_WIN0IN_SHIFT));

    if (effect) {
        tmp |= (0x20 << REG_G2_WININ_WIN0IN_SHIFT);
    }

    reg_G2_WININ = (u16)tmp;
}

static inline GXWndPlane G2_GetWnd0InsidePlane (void)
{
    return *(volatile GXWndPlane *)(REG_WININ_ADDR);
}

static inline void G2_SetWnd1InsidePlane (int wnd, BOOL effect)
{
    u32 tmp;
    GX_WND_PLANEMASK_ASSERT(wnd);

    tmp = ((reg_G2_WININ & ~REG_G2_WININ_WIN1IN_MASK) | ((u32)wnd << REG_G2_WININ_WIN1IN_SHIFT));

    if (effect) {
        tmp |= (0x20 << REG_G2_WININ_WIN1IN_SHIFT);
    }

    reg_G2_WININ = (u16)tmp;
}

static inline GXWndPlane G2_GetWnd1InsidePlane (void)
{
    return *(volatile GXWndPlane *)(REG_WININ_ADDR + 1);
}

static inline void G2_SetWndOutsidePlane (int wnd, BOOL effect)
{
    u32 tmp;
    GX_WND_PLANEMASK_ASSERT(wnd);

    tmp = ((reg_G2_WINOUT & ~REG_G2_WINOUT_WINOUT_MASK) | ((u32)wnd << REG_G2_WINOUT_WINOUT_SHIFT));

    if (effect) {
        tmp |= (0x20 << REG_G2_WINOUT_WINOUT_SHIFT);
    }

    reg_G2_WINOUT = (u16)tmp;
}

static inline GXWndPlane G2_GetWndOutsidePlane (void)
{
    return *(volatile GXWndPlane *)(REG_WINOUT_ADDR);
}

static inline void G2_SetWndOBJInsidePlane (int wnd, BOOL effect)
{
    u32 tmp;
    GX_WND_PLANEMASK_ASSERT(wnd);

    tmp = ((reg_G2_WINOUT & ~REG_G2_WINOUT_OBJWININ_MASK) |
           ((u32)wnd << REG_G2_WINOUT_OBJWININ_SHIFT));

    if (effect) {
        tmp |= (0x20 << REG_G2_WINOUT_OBJWININ_SHIFT);
    }

    reg_G2_WINOUT = (u16)tmp;
}

static inline GXWndPlane G2_GetWndOBJInsidePlane (void)
{
    return *(volatile GXWndPlane *)(REG_WINOUT_ADDR + 1);
}

static inline void G2_SetWnd0Position (int x1, int y1, int x2, int y2)
{
    SDK_MINMAX_ASSERT(y1, 0, 192);
    SDK_MINMAX_ASSERT(y2, 0, 192);

    reg_G2_WIN0H = (u16)(((x1 << REG_G2_WIN0H_LEFTX_SHIFT) & REG_G2_WIN0H_LEFTX_MASK) |
                         ((x2 << REG_G2_WIN0H_RIGHTX_SHIFT) & REG_G2_WIN0H_RIGHTX_MASK));

    reg_G2_WIN0V = (u16)(((y1 << REG_G2_WIN0V_UPY_SHIFT) & REG_G2_WIN0V_UPY_MASK) |
                         ((y2 << REG_G2_WIN0V_DOWNY_SHIFT) & REG_G2_WIN0V_DOWNY_MASK));
}

static inline void G2_SetWnd1Position (int x1, int y1, int x2, int y2)
{
    SDK_MINMAX_ASSERT(y1, 0, 192);
    SDK_MINMAX_ASSERT(y2, 0, 192);

    reg_G2_WIN1H = (u16)(((x1 << REG_G2_WIN1H_LEFTX_SHIFT) & REG_G2_WIN1H_LEFTX_MASK) |
                         ((x2 << REG_G2_WIN1H_RIGHTX_SHIFT) & REG_G2_WIN1H_RIGHTX_MASK));

    reg_G2_WIN1V = (u16)(((y1 << REG_G2_WIN1V_UPY_SHIFT) & REG_G2_WIN1V_UPY_MASK) |
                         ((y2 << REG_G2_WIN1V_DOWNY_SHIFT) & REG_G2_WIN1V_DOWNY_MASK));
}

static inline void G2_SetBGMosaicSize (int hSize, int vSize)
{
    GX_MOSAICSIZE_ASSERT(hSize);
    GX_MOSAICSIZE_ASSERT(vSize);

    *((vu8 *)REG_MOSAIC_ADDR) = (u8)((hSize << REG_G2_MOSAIC_BGHSIZE_SHIFT) |
                                     (vSize << REG_G2_MOSAIC_BGVSIZE_SHIFT));
}

static inline void G2_SetOBJMosaicSize (int hSize, int vSize)
{
    GX_MOSAICSIZE_ASSERT(hSize);
    GX_MOSAICSIZE_ASSERT(vSize);

    *((vu8 *)(REG_MOSAIC_ADDR + 1)) = (u8)((hSize << (REG_G2_MOSAIC_OBJHSIZE_SHIFT - 8)) |
                                           (vSize << (REG_G2_MOSAIC_OBJVSIZE_SHIFT - 8)));
}

static inline void G2_BlendNone ()
{
    reg_G2_BLDCNT = 0;
}

static inline void G2_ChangeBlendAlpha (int ev1, int ev2)
{
    GX_ALPHA_ASSERT(ev1);
    GX_ALPHA_ASSERT(ev2);

    reg_G2_BLDALPHA = (u16)((ev1 << REG_G2_BLDALPHA_EVA_SHIFT) |
                            (ev2 << REG_G2_BLDALPHA_EVB_SHIFT));
}

static inline void G2_SetBG2Affine (const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1)
{
    G2x_SetBGyAffine_((u32) & reg_G2_BG2PA, mtx, centerX, centerY, x1, y1);
}

static inline void G2_SetBG3Affine (const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1)
{
    G2x_SetBGyAffine_((u32) & reg_G2_BG3PA, mtx, centerX, centerY, x1, y1);
}

static inline void G2_SetBlendAlpha (int plane1, int plane2, int ev1, int ev2)
{
    G2x_SetBlendAlpha_((u32) & reg_G2_BLDCNT, plane1, plane2, ev1, ev2);
}

static inline void G2_SetBlendBrightness (int plane, int brightness)
{
    G2x_SetBlendBrightness_((u32) & reg_G2_BLDCNT, plane, brightness);
}

static inline void G2_SetBlendBrightnessExt (int plane1,
                                             int plane2, int ev1, int ev2, int brightness)
{
    G2x_SetBlendBrightnessExt_((u32) & reg_G2_BLDCNT, plane1, plane2, ev1, ev2, brightness);
}

static inline void G2_ChangeBlendBrightness (int brightness)
{
    G2x_ChangeBlendBrightness_((u32) & reg_G2_BLDCNT, brightness);
}

static inline void G2S_SetBG0Offset (int hOffset, int vOffset)
{
    reg_G2S_DB_BG0OFS =
        (u32)(((hOffset << REG_G2S_DB_BG0OFS_HOFFSET_SHIFT) & REG_G2S_DB_BG0OFS_HOFFSET_MASK) |
              ((vOffset << REG_G2S_DB_BG0OFS_VOFFSET_SHIFT) & REG_G2S_DB_BG0OFS_VOFFSET_MASK));
}

static inline void G2S_SetBG1Offset (int hOffset, int vOffset)
{
    reg_G2S_DB_BG1OFS =
        (u32)(((hOffset << REG_G2S_DB_BG1OFS_HOFFSET_SHIFT) & REG_G2S_DB_BG1OFS_HOFFSET_MASK) |
              ((vOffset << REG_G2S_DB_BG1OFS_VOFFSET_SHIFT) & REG_G2S_DB_BG1OFS_VOFFSET_MASK));
}

static inline void G2S_SetBG2Offset (int hOffset, int vOffset)
{
#ifdef SDK_DEBUG
    {
        u32 tmp =
            (reg_GXS_DB_DISPCNT & REG_GXS_DB_DISPCNT_BGMODE_MASK) >>
            REG_GXS_DB_DISPCNT_BGMODE_SHIFT;
        SDK_WARNING((0 == tmp) || (1 == tmp)
                    || (3 == tmp),
                    "G2S_SetBG2Offset requires BG #2 to be text mode. Use G2S_SetBG2Affine instead.");
    }
#endif

    reg_G2S_DB_BG2OFS =
        (u32)(((hOffset << REG_G2S_DB_BG2OFS_HOFFSET_SHIFT) & REG_G2S_DB_BG2OFS_HOFFSET_MASK) |
              ((vOffset << REG_G2S_DB_BG2OFS_VOFFSET_SHIFT) & REG_G2S_DB_BG2OFS_VOFFSET_MASK));
}

static inline void G2S_SetBG3Offset (int hOffset, int vOffset)
{
#ifdef SDK_DEBUG
    {
        u32 tmp =
            (reg_GXS_DB_DISPCNT & REG_GXS_DB_DISPCNT_BGMODE_MASK) >>
            REG_GXS_DB_DISPCNT_BGMODE_SHIFT;
        SDK_WARNING(0 == tmp,
                    "G2S_SetBG3Offset requires BG #3 to be text mode. Use G2S_SetBG3Affine instead.");
    }
#endif

    reg_G2S_DB_BG3OFS =
        (u32)(((hOffset << REG_G2S_DB_BG3OFS_HOFFSET_SHIFT) & REG_G2S_DB_BG3OFS_HOFFSET_MASK) |
              ((vOffset << REG_G2S_DB_BG3OFS_VOFFSET_SHIFT) & REG_G2S_DB_BG3OFS_VOFFSET_MASK));
}

static inline void G2S_SetWnd0InsidePlane (int wnd, BOOL effect)
{
    u32 tmp;
    GX_WND_PLANEMASK_ASSERT(wnd);

    tmp = ((reg_G2S_DB_WININ & ~REG_G2S_DB_WININ_WIN0IN_MASK) |
           ((u32)wnd << REG_G2S_DB_WININ_WIN0IN_SHIFT));

    if (effect) {
        tmp |= (0x20 << REG_G2S_DB_WININ_WIN0IN_SHIFT);
    }

    reg_G2S_DB_WININ = (u16)tmp;
}

static inline GXWndPlane G2S_GetWnd0InsidePlane (void)
{
    return *(volatile GXWndPlane *)(REG_DB_WININ_ADDR);
}

static inline void G2S_SetWnd1InsidePlane (int wnd, BOOL effect)
{
    u32 tmp;
    GX_WND_PLANEMASK_ASSERT(wnd);

    tmp = ((reg_G2S_DB_WININ & ~REG_G2S_DB_WININ_WIN1IN_MASK) |
           ((u32)wnd << REG_G2S_DB_WININ_WIN1IN_SHIFT));

    if (effect) {
        tmp |= (0x20 << REG_G2S_DB_WININ_WIN1IN_SHIFT);
    }

    reg_G2S_DB_WININ = (u16)tmp;
}

static inline GXWndPlane G2S_GetWnd1InsidePlane (void)
{
    return *(volatile GXWndPlane *)(REG_DB_WININ_ADDR + 1);
}

static inline void G2S_SetWndOutsidePlane (int wnd, BOOL effect)
{
    u32 tmp;
    GX_WND_PLANEMASK_ASSERT(wnd);

    tmp = ((reg_G2S_DB_WINOUT & ~REG_G2S_DB_WINOUT_WINOUT_MASK) |
           ((u32)wnd << REG_G2S_DB_WINOUT_WINOUT_SHIFT));

    if (effect) {
        tmp |= (0x20 << REG_G2S_DB_WINOUT_WINOUT_SHIFT);
    }

    reg_G2S_DB_WINOUT = (u16)tmp;
}

static inline GXWndPlane G2S_GetWndOutsidePlane (void)
{
    return *(volatile GXWndPlane *)(REG_DB_WINOUT_ADDR);
}

static inline void G2S_SetWndOBJInsidePlane (int wnd, BOOL effect)
{
    u32 tmp;
    GX_WND_PLANEMASK_ASSERT(wnd);

    tmp = ((reg_G2S_DB_WINOUT & ~REG_G2S_DB_WINOUT_OBJWININ_MASK) |
           ((u32)wnd << REG_G2S_DB_WINOUT_OBJWININ_SHIFT));

    if (effect) {
        tmp |= (0x20 << REG_G2S_DB_WINOUT_OBJWININ_SHIFT);
    }

    reg_G2S_DB_WINOUT = (u16)tmp;
}

static inline GXWndPlane G2S_GetWndOBJInsidePlane (void)
{
    return *(volatile GXWndPlane *)(REG_DB_WINOUT_ADDR + 1);
}

static inline void G2S_SetWnd0Position (int x1, int y1, int x2, int y2)
{
    SDK_MINMAX_ASSERT(y1, 0, 192);
    SDK_MINMAX_ASSERT(y2, 0, 192);

    reg_G2S_DB_WIN0H = (u16)(((x1 << REG_G2S_DB_WIN0H_LEFTX_SHIFT) & REG_G2S_DB_WIN0H_LEFTX_MASK) |
                             ((x2 << REG_G2S_DB_WIN0H_RIGHTX_SHIFT) &
                              REG_G2S_DB_WIN0H_RIGHTX_MASK));

    reg_G2S_DB_WIN0V = (u16)(((y1 << REG_G2S_DB_WIN0V_UPY_SHIFT) & REG_G2S_DB_WIN0V_UPY_MASK) |
                             ((y2 << REG_G2S_DB_WIN0V_DOWNY_SHIFT) & REG_G2S_DB_WIN0V_DOWNY_MASK));
}

static inline void G2S_SetWnd1Position (int x1, int y1, int x2, int y2)
{
    SDK_MINMAX_ASSERT(y1, 0, 192);
    SDK_MINMAX_ASSERT(y2, 0, 192);

    reg_G2S_DB_WIN1H = (u16)(((x1 << REG_G2S_DB_WIN1H_LEFTX_SHIFT) & REG_G2S_DB_WIN1H_LEFTX_MASK) |
                             ((x2 << REG_G2S_DB_WIN1H_RIGHTX_SHIFT) &
                              REG_G2S_DB_WIN1H_RIGHTX_MASK));

    reg_G2S_DB_WIN1V = (u16)(((y1 << REG_G2S_DB_WIN1V_UPY_SHIFT) & REG_G2S_DB_WIN1V_UPY_MASK) |
                             ((y2 << REG_G2S_DB_WIN1V_DOWNY_SHIFT) & REG_G2S_DB_WIN1V_DOWNY_MASK));
}

static inline void G2S_SetBGMosaicSize (int hSize, int vSize)
{
    GX_MOSAICSIZE_ASSERT(hSize);
    GX_MOSAICSIZE_ASSERT(vSize);

    *((vu8 *)REG_DB_MOSAIC_ADDR) = (u8)((hSize << REG_G2S_DB_MOSAIC_BGHSIZE_SHIFT) |
                                        (vSize << REG_G2S_DB_MOSAIC_BGVSIZE_SHIFT));
}

static inline void G2S_SetOBJMosaicSize (int hSize, int vSize)
{
    GX_MOSAICSIZE_ASSERT(hSize);
    GX_MOSAICSIZE_ASSERT(vSize);

    *((vu8 *)(REG_DB_MOSAIC_ADDR + 1)) = (u8)((hSize << (REG_G2S_DB_MOSAIC_OBJHSIZE_SHIFT - 8)) |
                                              (vSize << (REG_G2S_DB_MOSAIC_OBJVSIZE_SHIFT - 8)));
}

static inline void G2S_BlendNone ()
{
    reg_G2S_DB_BLDCNT = 0;
}

static inline void G2S_ChangeBlendAlpha (int ev1, int ev2)
{
    GX_ALPHA_ASSERT(ev1);
    GX_ALPHA_ASSERT(ev2);

    reg_G2S_DB_BLDALPHA = (u16)((ev1 << REG_G2S_DB_BLDALPHA_EVA_SHIFT) |
                                (ev2 << REG_G2S_DB_BLDALPHA_EVB_SHIFT));
}

static inline void G2S_SetBG2Affine (const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1)
{
    G2x_SetBGyAffine_((u32) & reg_G2S_DB_BG2PA, mtx, centerX, centerY, x1, y1);
}

static inline void G2S_SetBG3Affine (const MtxFx22 * mtx, int centerX, int centerY, int x1, int y1)
{
    G2x_SetBGyAffine_((u32) & reg_G2S_DB_BG3PA, mtx, centerX, centerY, x1, y1);
}

static inline void G2S_SetBlendAlpha (int plane1, int plane2, int ev1, int ev2)
{
    G2x_SetBlendAlpha_((u32) & reg_G2S_DB_BLDCNT, plane1, plane2, ev1, ev2);
}

static inline void G2S_SetBlendBrightness (int plane, int brightness)
{
    G2x_SetBlendBrightness_((u32) & reg_G2S_DB_BLDCNT, plane, brightness);
}

static inline void G2S_SetBlendBrightnessExt (int plane1,
                                              int plane2, int ev1, int ev2, int brightness)
{
    G2x_SetBlendBrightnessExt_((u32) & reg_G2S_DB_BLDCNT, plane1, plane2, ev1, ev2, brightness);
}

static inline void G2S_ChangeBlendBrightness (int brightness)
{
    G2x_ChangeBlendBrightness_((u32) & reg_G2S_DB_BLDCNT, brightness);
}

#endif

#ifdef __cplusplus
}
#endif

#endif
