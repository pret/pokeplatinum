#ifndef NITRO_G3X_H_
#define NITRO_G3X_H_

#include <nitro/gx/gxcommon.h>
#include <nitro/hw/ARM9/ioreg_G3X.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    GX_SHADING_TOON = 0,
    GX_SHADING_HIGHLIGHT = 1
} GXShading;

#define GX_SHADING_ASSERT(x)              \
    SDK_MINMAX_ASSERT(x, GX_SHADING_TOON, GX_SHADING_HIGHLIGHT)

typedef enum {
    GX_FOGBLEND_COLOR_ALPHA = 0,
    GX_FOGBLEND_ALPHA = 1
} GXFogBlend;

#define GX_FOGBLEND_ASSERT(x)                          \
    SDK_MINMAX_ASSERT(x, GX_FOGBLEND_COLOR_ALPHA, GX_FOGBLEND_ALPHA)

typedef enum {
    GX_FOGSLOPE_0x8000 = 0,
    GX_FOGSLOPE_0x4000 = 1,
    GX_FOGSLOPE_0x2000 = 2,
    GX_FOGSLOPE_0x1000 = 3,
    GX_FOGSLOPE_0x0800 = 4,
    GX_FOGSLOPE_0x0400 = 5,
    GX_FOGSLOPE_0x0200 = 6,
    GX_FOGSLOPE_0x0100 = 7,
    GX_FOGSLOPE_0x0080 = 8,
    GX_FOGSLOPE_0x0040 = 9,
    GX_FOGSLOPE_0x0020 = 10
} GXFogSlope;

#define GX_FOGSLOPE_ASSERT(x)                \
    SDK_MINMAX_ASSERT(x, GX_FOGSLOPE_0x8000, GX_FOGSLOPE_0x0020)

typedef enum {
    GX_FIFOINTR_COND_DISABLE = 0,
    GX_FIFOINTR_COND_UNDERHALF = 1,
    GX_FIFOINTR_COND_EMPTY = 2
} GXFifoIntrCond;

#define GX_FIFOINTR_COND_ASSERT(x)                        \
    SDK_MINMAX_ASSERT(x, GX_FIFOINTR_COND_DISABLE, GX_FIFOINTR_COND_EMPTY)

typedef enum {
    GX_FIFOSTAT_EMPTY = 6,
    GX_FIFOSTAT_UNDERHALF = 2,
    GX_FIFOSTAT_OVERHALF = 0,
    GX_FIFOSTAT_FULL = 1
} GXFifoStat;

#define GX_RDLINES_COUNT_MAX 46
#define GX_LISTRAM_COUNT_MAX 2048
#define GX_VTXRAM_COUNT_MAX 6144

#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))

void G3X_Init(void);
void G3X_InitMtxStack(void);
void G3X_ResetMtxStack(void);
void G3X_InitTable(void);
void G3X_Reset(void);

static void G3X_SetShading(GXShading shading);
static void G3X_AlphaTest(BOOL enable, int ref);
static void G3X_AlphaBlend(BOOL enable);
static void G3X_AntiAlias(BOOL enable);
static void G3X_EdgeMarking(BOOL enable);
void G3X_SetFog(BOOL enable, GXFogBlend fogMode, GXFogSlope fogSlope, int fogOffset);

int G3X_GetMtxStackLevelPV(s32 * level);
int G3X_GetMtxStackLevelPJ(s32 * level);
static void G3X_SetFifoIntrCond(GXFifoIntrCond cond);

void G3X_SetDisp1DotDepth(fx32 w);

int G3X_GetBoxTestResult(s32 * in);
int G3X_GetPositionTestResult(VecFx32 * vec, fx32 * w);
int G3X_GetVectorTestResult(fx16 * vec);

int G3X_GetClipMtx(MtxFx44 * m);
int G3X_GetVectorMtx(MtxFx33 * m);

void G3X_SetHOffset(int hOffset);

void G3X_SetEdgeColorTable(const GXRgb * rgb_8);
void G3X_SetFogTable(const u32 * fogTable);
void G3X_SetToonTable(const GXRgb * rgb_32);
void G3X_SetClearColor(GXRgb rgb, int alpha, int depth, int polygonID, BOOL fog);
static void G3X_SetClearImageOffset(int xOffset, int yOffset);
static void G3X_SetFogColor(GXRgb rgb, int alpha);

static s32 G3X_IsMtxStackOverflow(s32 * overflow);
static s32 G3X_IsLineBufferUnderflow(void);
static s32 G3X_IsListRamOverflow(void);
static s32 G3X_IsGeometryBusy(void);

static void G3X_ResetMtxStackOverflow(void);
static void G3X_ResetLineBufferUnderflow(void);
static void G3X_ResetListRamOverflow(void);
void G3X_ClearFifo(void);

static s32 G3X_GetPolygonListRamCount(void);
static s32 G3X_GetVtxListRamCount(void);
static s32 G3X_GetRenderedLineCount(void);
static s32 G3X_GetCommandFifoCount(void);
static GXFifoStat G3X_GetCommandFifoStatus(void);

static inline void G3X_SetShading (GXShading shading)
{
    reg_G3X_DISP3DCNT = (u16)((reg_G3X_DISP3DCNT & ~(REG_G3X_DISP3DCNT_THS_MASK |
                                                     REG_G3X_DISP3DCNT_RO_MASK |
                                                     REG_G3X_DISP3DCNT_GO_MASK)) |
                              (shading << REG_G3X_DISP3DCNT_THS_SHIFT));
}

static inline void G3X_AlphaTest (BOOL enable, int ref)
{
    if (enable) {
        GX_ALPHA_ASSERT(ref);
        reg_G3X_DISP3DCNT = (u16)(reg_G3X_DISP3DCNT &
                                  ~(REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK) |
                                  REG_G3X_DISP3DCNT_ATE_MASK);
        reg_G3X_ALPHA_TEST_REF = (u16)ref;
    } else {
        reg_G3X_DISP3DCNT &= (u16) ~(REG_G3X_DISP3DCNT_ATE_MASK |
                                     REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK);
    }
}

static inline void G3X_AlphaBlend (BOOL enable)
{
    if (enable) {
        reg_G3X_DISP3DCNT = (u16)(reg_G3X_DISP3DCNT &
                                  ~(REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK) |
                                  REG_G3X_DISP3DCNT_ABE_MASK);
    } else {
        reg_G3X_DISP3DCNT &= (u16) ~(REG_G3X_DISP3DCNT_ABE_MASK |
                                     REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK);
    }
}

static inline void G3X_AntiAlias (BOOL enable)
{
    if (enable) {
        reg_G3X_DISP3DCNT = (u16)(reg_G3X_DISP3DCNT &
                                  ~(REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK) |
                                  REG_G3X_DISP3DCNT_AAE_MASK);
    } else {
        reg_G3X_DISP3DCNT &= (u16) ~(REG_G3X_DISP3DCNT_AAE_MASK |
                                     REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK);
    }
}

static inline void G3X_EdgeMarking (BOOL enable)
{
    if (enable) {
        reg_G3X_DISP3DCNT = (u16)(reg_G3X_DISP3DCNT &
                                  ~(REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK) |
                                  REG_G3X_DISP3DCNT_EME_MASK);
    } else {
        reg_G3X_DISP3DCNT &= (u16) ~(REG_G3X_DISP3DCNT_EME_MASK |
                                     REG_G3X_DISP3DCNT_RO_MASK | REG_G3X_DISP3DCNT_GO_MASK);
    }
}

static inline void G3X_SetFifoIntrCond (GXFifoIntrCond cond)
{
    GX_FIFOINTR_COND_ASSERT(cond);

    reg_G3X_GXSTAT = ((reg_G3X_GXSTAT & ~REG_G3X_GXSTAT_FI_MASK) |
                      (cond << REG_G3X_GXSTAT_FI_SHIFT));
}

static inline void G3X_SetClearImageOffset (int xOffset, int yOffset)
{
    reg_G3X_CLRIMAGE_OFFSET = (u16)(((xOffset << REG_G3X_CLRIMAGE_OFFSET_OFFSETX_SHIFT) &
                                     REG_G3X_CLRIMAGE_OFFSET_OFFSETX_MASK) | ((yOffset <<
                                                                               REG_G3X_CLRIMAGE_OFFSET_OFFSETY_SHIFT)
                                                                              &
                                                                              REG_G3X_CLRIMAGE_OFFSET_OFFSETY_MASK));
}

static inline void G3X_SetFogColor (GXRgb rgb, int alpha)
{
    GXRGB_ASSERT(rgb);
    GX_ALPHA_ASSERT(alpha);

    reg_G3X_FOG_COLOR = (u32)((rgb << REG_G3X_FOG_COLOR_FOG_RED_SHIFT) |
                              (alpha << REG_G3X_FOG_COLOR_FOG_ALPHA_SHIFT));
}

static inline s32 G3X_IsMtxStackOverflow (s32 * overflow)
{
    SDK_NULL_ASSERT(overflow);
    if (reg_G3X_GXSTAT & REG_G3X_GXSTAT_SB_MASK) {
        return -1;
    }

    *overflow = (s32)(reg_G3X_GXSTAT & REG_G3X_GXSTAT_SE_MASK);
    return 0;
}

#define G3X_IsLineBufferOverflow G3X_IsLineBufferUnderflow

static inline s32 G3X_IsLineBufferUnderflow (void)
{
    return (reg_G3X_DISP3DCNT & REG_G3X_DISP3DCNT_RO_MASK);
}

static inline s32 G3X_IsListRamOverflow (void)
{
    return (reg_G3X_DISP3DCNT & REG_G3X_DISP3DCNT_GO_MASK);
}

static inline s32 G3X_IsGeometryBusy (void)
{
    return (s32)(reg_G3X_GXSTAT & REG_G3X_GXSTAT_B_MASK);
}

static inline void G3X_ResetMtxStackOverflow (void)
{
    reg_G3X_GXSTAT |= REG_G3X_GXSTAT_SE_MASK;
}

#define G3X_ResetLineBufferOverflow G3X_ResetLineBufferUnderflow

static inline void G3X_ResetLineBufferUnderflow (void)
{
    reg_G3X_DISP3DCNT |= REG_G3X_DISP3DCNT_RO_MASK;
}

static inline void G3X_ResetListRamOverflow (void)
{
    reg_G3X_DISP3DCNT |= REG_G3X_DISP3DCNT_GO_MASK;
}

static inline s32 G3X_GetPolygonListRamCount (void)
{
    return reg_G3X_LISTRAM_COUNT;
}

static inline s32 G3X_GetVtxListRamCount (void)
{
    return reg_G3X_VTXRAM_COUNT;
}

static inline s32 G3X_GetRenderedLineCount (void)
{
    return reg_G3X_RDLINES_COUNT;
}

static inline s32 G3X_GetCommandFifoCount (void)
{
    return (s32)((reg_G3X_GXSTAT & REG_G3X_GXSTAT_FIFOCNT_MASK) >> REG_G3X_GXSTAT_FIFOCNT_SHIFT);
}

static inline GXFifoStat G3X_GetCommandFifoStatus (void)
{
    return (GXFifoStat)((reg_G3X_GXSTAT & (REG_G3X_GXSTAT_F_MASK |
                                           REG_G3X_GXSTAT_H_MASK |
                                           REG_G3X_GXSTAT_E_MASK)) >> REG_G3X_GXSTAT_F_SHIFT);
}

#endif

#ifdef __cplusplus
}
#endif

#endif
