#ifndef NITRO_GX_GX_H_
#define NITRO_GX_GX_H_

#include <nitro/gx/gxcommon.h>
#include <nitro/hw/ARM9/ioreg_GX.h>
#include <nitro/hw/ARM9/ioreg_GXS.h>

#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))
#include <nitro/mi.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define GX_LCD_SIZE_X 256
#define GX_LCD_SIZE_Y 192

typedef union {
    u32 raw;
    struct {
        u32 bgMode : 3;
        u32 bg0_2d3d : 1;
        u32 objMapChar : 1;
        u32 objMapBmp : 2;
        u32 blankScr : 1;
        u32 visiblePlane : 5;
        u32 visibleWnd : 3;
        u32 dispMode : 4;
        u32 extObjMapChar : 2;
        u32 extObjMapBmp : 1;
        u32 hBlankObjProc : 1;
        u32 bgCharOffset : 3;
        u32 bgScrOffset : 3;
        u32 bgExtPltt : 1;
        u32 objExtPltt : 1;
    };
} GXDispCnt;

typedef union {
    u32 raw;
    struct {
        u32 bgMode : 3;
        u32 _reserve1 : 1;
        u32 objMapChar : 1;
        u32 objMapBmp : 2;
        u32 blankScr : 1;
        u32 visiblePlane : 5;
        u32 visibleWnd : 3;
        u32 dispMode : 1;
        u32 _reserve2 : 3;
        u32 extObjMapChar : 2;
        u32 _reserve3 : 1;
        u32 hBlankObjProc : 1;
        u32 _reserve4 : 6;
        u32 bgExtPltt : 1;
        u32 objExtPltt : 1;
    };
} GXSDispCnt;

typedef enum {
    GX_BGMODE_0 = 0,
    GX_BGMODE_1 = 1,
    GX_BGMODE_2 = 2,
    GX_BGMODE_3 = 3,
    GX_BGMODE_4 = 4,
    GX_BGMODE_5 = 5,
    GX_BGMODE_6 = 6
} GXBGMode;

#define GX_BGMODE_ASSERT(x)           \
    SDK_MINMAX_ASSERT(x, GX_BGMODE_0, GX_BGMODE_6)

typedef enum {
    GX_BG0_AS_2D = 0,
    GX_BG0_AS_3D = 1
} GXBG0As;

#define GX_BG0_AS_ASSERT(x)            \
    SDK_MINMAX_ASSERT(x, GX_BG0_AS_2D, GX_BG0_AS_3D)

typedef enum {
    GX_DISPMODE_GRAPHICS = 0x01,
    GX_DISPMODE_VRAM_A = 0x02,
    GX_DISPMODE_VRAM_B = 0x06,
    GX_DISPMODE_VRAM_C = 0x0a,
    GX_DISPMODE_VRAM_D = 0x0e,
    GX_DISPMODE_MMEM = 0x03
} GXDispMode;

#define GX_DISPMODE_OFF ((GXDispMode)0x00)

#define GX_DISPMODE_ASSERT(x)                  \
    SDK_ASSERT((x) == GX_DISPMODE_OFF || \
               (x) == GX_DISPMODE_GRAPHICS || \
               (x) == GX_DISPMODE_VRAM_A || \
               (x) == GX_DISPMODE_VRAM_B || \
               (x) == GX_DISPMODE_VRAM_C || \
               (x) == GX_DISPMODE_VRAM_D || \
               (x) == GX_DISPMODE_MMEM)

typedef enum {
    GX_OBJVRAMMODE_CHAR_2D = (0 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (0 << REG_GX_DISPCNT_EXOBJ_SHIFT),
    GX_OBJVRAMMODE_CHAR_1D_32K =
        (1 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (0 << REG_GX_DISPCNT_EXOBJ_SHIFT),
    GX_OBJVRAMMODE_CHAR_1D_64K =
        (1 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (1 << REG_GX_DISPCNT_EXOBJ_SHIFT),
    GX_OBJVRAMMODE_CHAR_1D_128K =
        (1 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (2 << REG_GX_DISPCNT_EXOBJ_SHIFT),
    GX_OBJVRAMMODE_CHAR_1D_256K =
        (1 << REG_GX_DISPCNT_OBJMAP_SHIFT) | (3 << REG_GX_DISPCNT_EXOBJ_SHIFT)
} GXOBJVRamModeChar;

#define GX_OBJVRAMMODE_CHAR_ASSERT(x)              \
    SDK_ASSERT(x == GX_OBJVRAMMODE_CHAR_2D || \
               x == GX_OBJVRAMMODE_CHAR_1D_32K || \
               x == GX_OBJVRAMMODE_CHAR_1D_64K || \
               x == GX_OBJVRAMMODE_CHAR_1D_128K || \
               x == GX_OBJVRAMMODE_CHAR_1D_256K)

#define GXS_OBJVRAMMODE_CHAR_ASSERT(x)             \
    SDK_ASSERT(x == GX_OBJVRAMMODE_CHAR_2D || \
               x == GX_OBJVRAMMODE_CHAR_1D_32K || \
               x == GX_OBJVRAMMODE_CHAR_1D_64K || \
               x == GX_OBJVRAMMODE_CHAR_1D_128K)

typedef enum {
    GX_OBJVRAMMODE_BMP_2D_W128 =
        (0 << (REG_GX_DISPCNT_OBJMAP_SHIFT + 1)) | (0 << (REG_GX_DISPCNT_EXOBJ_SHIFT + 2)),
    GX_OBJVRAMMODE_BMP_2D_W256 =
        (1 << (REG_GX_DISPCNT_OBJMAP_SHIFT + 1)) | (0 << (REG_GX_DISPCNT_EXOBJ_SHIFT + 2)),
    GX_OBJVRAMMODE_BMP_1D_128K =
        (2 << (REG_GX_DISPCNT_OBJMAP_SHIFT + 1)) | (0 << (REG_GX_DISPCNT_EXOBJ_SHIFT + 2)),
    GX_OBJVRAMMODE_BMP_1D_256K =
        (2 << (REG_GX_DISPCNT_OBJMAP_SHIFT + 1)) | (1 << (REG_GX_DISPCNT_EXOBJ_SHIFT + 2))
} GXOBJVRamModeBmp;

#define GX_OBJVRAMMODE_BMP_2D_W128_32K GX_OBJVRAMMODE_BMP_2D_W128
#define GX_OBJVRAMMODE_BMP_2D_W256_32K GX_OBJVRAMMODE_BMP_2D_W256

#define GX_OBJVRAMMODE_BMP_ASSERT(x)                  \
    SDK_ASSERT(x == GX_OBJVRAMMODE_BMP_2D_W128_32K || \
               x == GX_OBJVRAMMODE_BMP_2D_W256_32K || \
               x == GX_OBJVRAMMODE_BMP_1D_128K || \
               x == GX_OBJVRAMMODE_BMP_1D_256K)

#define GXS_OBJVRAMMODE_BMP_ASSERT(x)             \
    SDK_ASSERT(x == GX_OBJVRAMMODE_BMP_2D_W128 || \
               x == GX_OBJVRAMMODE_BMP_2D_W256 || \
               x == GX_OBJVRAMMODE_BMP_1D_128K)

typedef enum {
    GX_PLANEMASK_NONE = 0x00,
    GX_PLANEMASK_BG0 = 0x01,
    GX_PLANEMASK_BG1 = 0x02,
    GX_PLANEMASK_BG2 = 0x04,
    GX_PLANEMASK_BG3 = 0x08,
    GX_PLANEMASK_OBJ = 0x10
} GXPlaneMask;

#define GX_PLANEMASK_ASSERT(x) SDK_MINMAX_ASSERT(x, GX_PLANEMASK_NONE, 0x1f)

typedef enum {
    GX_WNDMASK_NONE = 0x00,
    GX_WNDMASK_W0 = 0x01,
    GX_WNDMASK_W1 = 0x02,
    GX_WNDMASK_OW = 0x04
} GXWndMask;

#define GX_WNDMASK_ASSERT(x) SDK_MINMAX_ASSERT(x, GX_WNDMASK_NONE, 0x7)

typedef enum {
    GX_BGCHAROFFSET_0x00000 = 0x00,
    GX_BGCHAROFFSET_0x10000 = 0x01,
    GX_BGCHAROFFSET_0x20000 = 0x02,
    GX_BGCHAROFFSET_0x30000 = 0x03,
    GX_BGCHAROFFSET_0x40000 = 0x04,
    GX_BGCHAROFFSET_0x50000 = 0x05,
    GX_BGCHAROFFSET_0x60000 = 0x06,
    GX_BGCHAROFFSET_0x70000 = 0x07
} GXBGCharOffset;

#define GX_BGCHAROFFSET_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BGCHAROFFSET_0x00000, GX_BGCHAROFFSET_0x70000)

typedef enum {
    GX_BGSCROFFSET_0x00000 = 0x00,
    GX_BGSCROFFSET_0x10000 = 0x01,
    GX_BGSCROFFSET_0x20000 = 0x02,
    GX_BGSCROFFSET_0x30000 = 0x03,
    GX_BGSCROFFSET_0x40000 = 0x04,
    GX_BGSCROFFSET_0x50000 = 0x05,
    GX_BGSCROFFSET_0x60000 = 0x06,
    GX_BGSCROFFSET_0x70000 = 0x07
} GXBGScrOffset;

#define GX_BGSCROFFSET_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BGSCROFFSET_0x00000, GX_BGSCROFFSET_0x70000)

typedef enum {
    GX_POWER_OFF = 0,

    GX_POWER_2D_MAIN = 1 << REG_GX_POWCNT_E2DG_SHIFT,
    GX_POWER_2D_SUB = 1 << REG_GX_POWCNT_E2DGB_SHIFT,

    GX_POWER_RE = 1 << REG_GX_POWCNT_RE_SHIFT,
    GX_POWER_GE = 1 << REG_GX_POWCNT_GE_SHIFT,

    GX_POWER_2D = GX_POWER_2D_MAIN | GX_POWER_2D_SUB,
    GX_POWER_3D = GX_POWER_RE | GX_POWER_GE,

    GX_POWER_ALL = GX_POWER_2D | GX_POWER_3D
} GXPower;

#define GX_POWER_ASSERT(x) SDK_ASSERTMSG((((x) & ~GX_POWER_ALL) == 0), \
                                         "GX_POWER_LCD is obsolete. please use PM_SetLCDPower()\n")

typedef enum {
    GX_DISP_SELECT_SUB_MAIN = 0,
    GX_DISP_SELECT_MAIN_SUB = 1
} GXDispSelect;

#define GX_DISP_SELECT_ASSERT(x) SDK_MINMAX_ASSERT(x, 0, 1)

#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))

static void GX_SetPower(int gxbit_power);
static GXPower GX_GetPower(void);

static void GX_Power2DMain(BOOL enable);
static void GX_Power2DSub(BOOL enable);

static void GX_PowerRender(BOOL enable);
static void GX_PowerGeometry(BOOL enable);

static void GXi_PowerLCD(BOOL enable);
static void GX_Power2D(BOOL enable);
static void GX_Power3D(BOOL enable);

static void GX_SetDispSelect(GXDispSelect sel);
static GXDispSelect GX_GetDispSelect(void);

static s32 GX_IsHBlank(void);
s32 GX_HBlankIntr(BOOL enable);
static s32 GX_IsVBlank(void);
s32 GX_VBlankIntr(BOOL enable);
static s32 GX_IsVCountEq(void);
static void GX_VCountEqIntr(BOOL enable);
void GX_SetVCountEqVal(s32 val);
static s32 GX_GetVCountEqVal(void);

#define GX_IsVCounterEq GX_IsVCountEq
#define GX_VCounterEqIntr GX_VCountEqIntr
#define GX_SetVCounterEqVal GX_SetVCountEqVal
#define GX_GetVCounterEqVal GX_GetVCountEqVal

static s32 GX_GetVCount(void);
static void GX_SetVCount(s32 count);

void GX_Init(void);
static void GX_InitEx(u32 dma_no);
u32 GX_SetDefaultDMA(u32 dma_no);
static u32 GX_GetDefaultDMA(void);

void GX_SetGraphicsMode(GXDispMode dispMode, GXBGMode bgMode, GXBG0As bg0_2d3d);
void GX_DispOff(void);
void GX_DispOn(void);
BOOL GX_IsDispOn(void);

static void GX_SetVisiblePlane(int plane);
static void GX_SetVisibleWnd(int window);
static void GX_BlankScr(BOOL blank);

static GXBGScrOffset GX_GetBGScrOffset();
static void GX_SetBGScrOffset(GXBGScrOffset offset);

static GXBGCharOffset GX_GetBGCharOffset();
static void GX_SetBGCharOffset(GXBGCharOffset offset);

static void GX_SetOBJVRamModeChar(GXOBJVRamModeChar mode);
static void GX_SetOBJVRamModeBmp(GXOBJVRamModeBmp mode);

static void GX_HBlankOBJProc(BOOL proc);

static void GX_SetMasterBrightness(int brightness);

void GXS_SetGraphicsMode(GXBGMode bgMode);
static void GXS_DispOff(void);
static void GXS_DispOn(void);

static void GXS_SetVisiblePlane(int plane);
static void GXS_SetVisibleWnd(int window);

static void GXS_SetOBJVRamModeChar(GXOBJVRamModeChar mode);
static void GXS_SetOBJVRamModeBmp(GXOBJVRamModeBmp mode);

static void GXS_HBlankOBJProc(BOOL proc);

static void GXS_SetMasterBrightness(int brightness);

void GXx_SetMasterBrightness_(vu16 * reg, int brightness);
int GXx_GetMasterBrightness_(vu16 * reg);

static inline GXDispCnt GX_GetDispCnt (void)
{
    return *(volatile GXDispCnt *)REG_DISPCNT_ADDR;
}

static inline GXSDispCnt GXS_GetDispCnt (void)
{
    return *(volatile GXSDispCnt *)REG_DB_DISPCNT_ADDR;
}

static inline GXBGScrOffset GX_GetBGScrOffset ()
{
    return (GXBGScrOffset)((reg_GX_DISPCNT & REG_GX_DISPCNT_BGSCREENOFFSET_MASK) >>
                           REG_GX_DISPCNT_BGSCREENOFFSET_SHIFT);
}

static inline void GX_SetBGScrOffset (GXBGScrOffset offset)
{
    GX_BGSCROFFSET_ASSERT(offset);
    reg_GX_DISPCNT = (u32)((reg_GX_DISPCNT & ~REG_GX_DISPCNT_BGSCREENOFFSET_MASK) |
                           (offset << REG_GX_DISPCNT_BGSCREENOFFSET_SHIFT));
}

static inline GXBGCharOffset GX_GetBGCharOffset ()
{
    return (GXBGCharOffset)((reg_GX_DISPCNT & REG_GX_DISPCNT_BGCHAROFFSET_MASK)
                            >> REG_GX_DISPCNT_BGCHAROFFSET_SHIFT);
}

static inline void GX_SetBGCharOffset (GXBGCharOffset offset)
{
    GX_BGCHAROFFSET_ASSERT(offset);
    reg_GX_DISPCNT = (u32)((reg_GX_DISPCNT & ~REG_GX_DISPCNT_BGCHAROFFSET_MASK) |
                           (offset << REG_GX_DISPCNT_BGCHAROFFSET_SHIFT));
}

static inline void GX_SetVisiblePlane (int plane)
{
    GX_PLANEMASK_ASSERT(plane);

    reg_GX_DISPCNT = (u32)((reg_GX_DISPCNT & ~REG_GX_DISPCNT_DISPLAY_MASK) |
                           (plane << REG_GX_DISPCNT_DISPLAY_SHIFT));
}

static inline int GX_GetVisiblePlane (void)
{
    return (int)((reg_GX_DISPCNT & REG_GX_DISPCNT_DISPLAY_MASK) >> REG_GX_DISPCNT_DISPLAY_SHIFT);
}

static inline void GXS_SetVisiblePlane (int plane)
{
    GX_PLANEMASK_ASSERT(plane);

    reg_GXS_DB_DISPCNT = (u32)((reg_GXS_DB_DISPCNT & ~REG_GXS_DB_DISPCNT_DISPLAY_MASK) |
                               (plane << REG_GXS_DB_DISPCNT_DISPLAY_SHIFT));
}

static inline int GXS_GetVisiblePlane (void)
{
    return (int)((reg_GXS_DB_DISPCNT & REG_GXS_DB_DISPCNT_DISPLAY_MASK)
                 >> REG_GXS_DB_DISPCNT_DISPLAY_SHIFT);
}

static inline void GX_SetVisibleWnd (int window)
{
    GX_WNDMASK_ASSERT(window);

    reg_GX_DISPCNT = (u32)((reg_GX_DISPCNT &
                            ~(REG_GX_DISPCNT_W0_MASK |
                              REG_GX_DISPCNT_W1_MASK |
                              REG_GX_DISPCNT_OW_MASK)) | (window << REG_GX_DISPCNT_W0_SHIFT));
}

static inline int GX_GetVisibleWnd (void)
{
    return (int)((reg_GX_DISPCNT & (REG_GX_DISPCNT_W0_MASK |
                                    REG_GX_DISPCNT_W1_MASK |
                                    REG_GX_DISPCNT_OW_MASK)) >> REG_GX_DISPCNT_W0_SHIFT);
}

static inline void GXS_SetVisibleWnd (int window)
{
    GX_WNDMASK_ASSERT(window);

    reg_GXS_DB_DISPCNT = (u32)((reg_GXS_DB_DISPCNT &
                                ~(REG_GXS_DB_DISPCNT_W0_MASK |
                                  REG_GXS_DB_DISPCNT_W1_MASK |
                                  REG_GXS_DB_DISPCNT_OW_MASK)) |
                               (window << REG_GXS_DB_DISPCNT_W0_SHIFT));
}

static inline int GXS_GetVisibleWnd (void)
{
    return (int)((reg_GXS_DB_DISPCNT & (REG_GXS_DB_DISPCNT_W0_MASK |
                                        REG_GXS_DB_DISPCNT_W1_MASK |
                                        REG_GXS_DB_DISPCNT_OW_MASK))
                 >> REG_GXS_DB_DISPCNT_W0_SHIFT);
}

static inline void GX_SetOBJVRamModeChar (GXOBJVRamModeChar mode)
{
    GX_OBJVRAMMODE_CHAR_ASSERT(mode);

    reg_GX_DISPCNT = (u32)(reg_GX_DISPCNT &
                           ~(REG_GX_DISPCNT_EXOBJ_CH_MASK | REG_GX_DISPCNT_OBJMAP_CH_MASK) | mode);
}

static inline GXOBJVRamModeChar GX_GetOBJVRamModeChar (void)
{
    return (GXOBJVRamModeChar)(reg_GX_DISPCNT &
                               (REG_GX_DISPCNT_EXOBJ_CH_MASK | REG_GX_DISPCNT_OBJMAP_CH_MASK));
}

static inline void GXS_SetOBJVRamModeChar (GXOBJVRamModeChar mode)
{
    GXS_OBJVRAMMODE_CHAR_ASSERT(mode);

    reg_GXS_DB_DISPCNT = (u32)(reg_GXS_DB_DISPCNT &
                               ~(REG_GXS_DB_DISPCNT_EXOBJ_CH_MASK |
                                 REG_GXS_DB_DISPCNT_OBJMAP_CH_MASK) | mode);
}

static inline GXOBJVRamModeChar GXS_GetOBJVRamModeChar (void)
{
    return (GXOBJVRamModeChar)(reg_GXS_DB_DISPCNT &
                               (REG_GXS_DB_DISPCNT_EXOBJ_CH_MASK |
                                REG_GXS_DB_DISPCNT_OBJMAP_CH_MASK));
}

static inline void GX_SetOBJVRamModeBmp (GXOBJVRamModeBmp mode)
{
    GX_OBJVRAMMODE_BMP_ASSERT(mode);

    reg_GX_DISPCNT = (u32)(reg_GX_DISPCNT &
                           ~(REG_GX_DISPCNT_EXOBJ_BM_MASK | REG_GX_DISPCNT_OBJMAP_BM_MASK) | mode);
}

static inline GXOBJVRamModeBmp GX_GetOBJVRamModeBmp (void)
{
    return (GXOBJVRamModeBmp)(reg_GX_DISPCNT &
                              (REG_GX_DISPCNT_EXOBJ_BM_MASK | REG_GX_DISPCNT_OBJMAP_BM_MASK));
}

static inline void GXS_SetOBJVRamModeBmp (GXOBJVRamModeBmp mode)
{
    GXS_OBJVRAMMODE_BMP_ASSERT(mode);

    reg_GXS_DB_DISPCNT = (u32)(reg_GXS_DB_DISPCNT & ~(REG_GXS_DB_DISPCNT_OBJMAP_BM_MASK) | mode);
}

static inline GXOBJVRamModeBmp GXS_GetOBJVRamModeBmp (void)
{
    return (GXOBJVRamModeBmp)(reg_GXS_DB_DISPCNT & REG_GXS_DB_DISPCNT_OBJMAP_BM_MASK);
}

static inline void GX_BlankScr (BOOL blank)
{
    SDK_WARNING((1 == 0), "GX_BlankScr is obsolete, please use GX_DispOn/GX_DispOff instead.");
    if (blank) {
        reg_GX_DISPCNT |= REG_GX_DISPCNT_BLANK_MASK;
    } else {
        reg_GX_DISPCNT &= ~REG_GX_DISPCNT_BLANK_MASK;
    }
}

static inline void GXS_DispOff (void)
{
    reg_GXS_DB_DISPCNT &= ~REG_GXS_DB_DISPCNT_MODE_MASK;
}

static inline void GXS_DispOn (void)
{
    reg_GXS_DB_DISPCNT |= REG_GXS_DB_DISPCNT_MODE_MASK;
}

static inline void GX_HBlankOBJProc (BOOL proc)
{
    if (proc) {
        reg_GX_DISPCNT |= REG_GX_DISPCNT_OH_MASK;
    } else {
        reg_GX_DISPCNT &= ~REG_GX_DISPCNT_OH_MASK;
    }
}

static inline void GXS_HBlankOBJProc (BOOL proc)
{
    if (proc) {
        reg_GXS_DB_DISPCNT |= REG_GXS_DB_DISPCNT_OH_MASK;
    } else {
        reg_GXS_DB_DISPCNT &= ~REG_GXS_DB_DISPCNT_OH_MASK;
    }
}

static inline void GX_SetMasterBrightness (int brightness)
{
    GXx_SetMasterBrightness_(&reg_GX_MASTER_BRIGHT, brightness);
}

static inline int GX_GetMasterBrightness (void)
{
    return GXx_GetMasterBrightness_(&reg_GX_MASTER_BRIGHT);
}

static inline void GXS_SetMasterBrightness (int brightness)
{
    GXx_SetMasterBrightness_(&reg_GXS_DB_MASTER_BRIGHT, brightness);
}

static inline int GXS_GetMasterBrightness (void)
{
    return GXx_GetMasterBrightness_(&reg_GXS_DB_MASTER_BRIGHT);
}

static inline s32 GX_IsHBlank (void)
{
    return (reg_GX_DISPSTAT & REG_GX_DISPSTAT_HBLK_MASK);
}

static inline s32 GX_IsVBlank (void)
{
    return (reg_GX_DISPSTAT & REG_GX_DISPSTAT_VBLK_MASK);
}

static inline s32 GX_IsVCountEq (void)
{
    return (reg_GX_DISPSTAT & REG_GX_DISPSTAT_LYC_MASK);
}

static inline void GX_VCountEqIntr (BOOL enable)
{
    if (enable) {
        reg_GX_DISPSTAT |= REG_GX_DISPSTAT_VQI_MASK;
    } else {
        reg_GX_DISPSTAT &= ~REG_GX_DISPSTAT_VQI_MASK;
    }
}

static inline s32 GX_GetVCount ()
{
    return reg_GX_VCOUNT;
}

static inline void GX_SetVCount (s32 count)
{
    static vu32 vblank_count;

    if (count < 202 || count > 211) {
        SDK_TFATAL_ERROR("V Counter out of range(%d). it must be 202 to 211.", count);
    } else if (vblank_count == *(vu32 *)HW_VBLANK_COUNT_BUF) {
        SDK_TFATAL_ERROR("Set V Count once a frame.");
    } else {
        OSIntrMode intr_mode;
        s32 current_count;

        intr_mode = OS_DisableInterrupts();
        current_count = reg_GX_VCOUNT;

        if (current_count < 202 || current_count > 211) {
            SDK_TFATAL_ERROR("Current V Counter out of range(%d). it must be 202 to 211.", current_count);
        } else if (count > current_count) {
            SDK_TFATAL_ERROR("Cannot advance the V Counter");
        } else {
            reg_GX_VCOUNT = (u16)count;
            vblank_count = *(vu32 *)HW_VBLANK_COUNT_BUF;
        }

        (void)OS_RestoreInterrupts(intr_mode);
    }
}

static inline s32 GX_GetVCountEqVal (void)
{
    u16 val = reg_GX_DISPSTAT;
    return ((val >> 8) & 0x00ff) | ((val << 1) & 0x0100);
}

static inline void GX_SetPower (int gxbit_power)
{
    GX_POWER_ASSERT(gxbit_power);

    reg_GX_POWCNT = (u16)((reg_GX_POWCNT & ~GX_POWER_ALL) | gxbit_power);
}

static inline GXPower GX_GetPower ()
{
    return (GXPower)(reg_GX_POWCNT & GX_POWER_ALL);
}

static inline void GXi_PowerLCD (BOOL enable)
{
    if (enable) {
        reg_GX_POWCNT |= REG_GX_POWCNT_LCD_MASK;
    } else {
        reg_GX_POWCNT &= ~REG_GX_POWCNT_LCD_MASK;
    }
}

#define GX_PowerLCD(x) SDK_ERR("GX_PowerLCD() is discontinued. please use PM_SetLCDPower()\n")
#define GX_PowerLCDTop(x) SDK_ERR("GX_PowerLCDTop() is discontinued. please use PM_SetLCDPower()\n")
#define GX_PowerLCDBot(x) SDK_ERR("GX_PowerLCDBot() is discontinued. please use PM_SetLCDPower()\n")
#define GX_POWER_LCD_TOP SDK_ERR("GX_POWER_LCD_TOP is discontinued. please use PM_SetLCDPower()\n")
#define GX_POWER_LCD_BOT SDK_ERR("GX_POWER_LCD_BOT is discontinued. please use PM_SetLCDPower()\n")
#define GX_POWER_LCD SDK_ERR("GX_POWER_LCD is discontinued. please use PM_SetLCDPower()\n")

static inline void GX_Power2D (BOOL enable)
{
    if (enable) {
        reg_GX_POWCNT |= (REG_GX_POWCNT_E2DG_MASK | REG_GX_POWCNT_E2DGB_MASK);
    } else {
        reg_GX_POWCNT &= ~(REG_GX_POWCNT_E2DG_MASK | REG_GX_POWCNT_E2DGB_MASK);
    }
}

static inline void GX_Power2DMain (BOOL enable)
{
    if (enable) {
        reg_GX_POWCNT |= REG_GX_POWCNT_E2DG_MASK;
    } else {
        reg_GX_POWCNT &= ~REG_GX_POWCNT_E2DG_MASK;
    }
}

static inline void GX_Power2DSub (BOOL enable)
{
    if (enable) {
        reg_GX_POWCNT |= REG_GX_POWCNT_E2DGB_MASK;
    } else {
        reg_GX_POWCNT &= ~REG_GX_POWCNT_E2DGB_MASK;
    }
}

static inline void GX_PowerRender (BOOL enable)
{
    if (enable) {
        reg_GX_POWCNT |= REG_GX_POWCNT_RE_MASK;
    } else {
        reg_GX_POWCNT &= ~REG_GX_POWCNT_RE_MASK;
    }
}

static inline void GX_PowerGeometry (BOOL enable)
{
    if (enable) {
        reg_GX_POWCNT |= REG_GX_POWCNT_GE_MASK;
    } else {
        reg_GX_POWCNT &= ~REG_GX_POWCNT_GE_MASK;
    }
}

static inline void GX_Power3D (BOOL enable)
{
    if (enable) {
        reg_GX_POWCNT |= (REG_GX_POWCNT_GE_MASK | REG_GX_POWCNT_RE_MASK);
    } else {
        reg_GX_POWCNT &= ~(REG_GX_POWCNT_GE_MASK | REG_GX_POWCNT_RE_MASK);
    }
}

static inline void GX_SetDispSelect (GXDispSelect sel)
{
    GX_DISP_SELECT_ASSERT(sel);

    reg_GX_POWCNT = (u16)((reg_GX_POWCNT & ~REG_GX_POWCNT_DSEL_MASK) |
                          (sel << REG_GX_POWCNT_DSEL_SHIFT));
}

static inline GXDispSelect GX_GetDispSelect (void)
{
    return (GXDispSelect)((reg_GX_POWCNT & REG_GX_POWCNT_DSEL_MASK) >> REG_GX_POWCNT_DSEL_SHIFT);
}

static inline void GX_InitEx (u32 dma_no)
{
    SDK_ASSERT(dma_no <= MI_DMA_MAX_NUM || dma_no == GX_DMA_NOT_USE);

    GXi_DmaId = dma_no;
    GX_Init();
}

static inline u32 GX_GetDefaultDMA (void)
{
    return GXi_DmaId;
}

#endif

#ifdef __cplusplus
}
#endif

#endif
