#ifndef NITRO_GX_BGCNT_H_
#define NITRO_GX_BGCNT_H_

#include <nitro/gx/gxcommon.h>
#include <nitro/hw/ARM9/ioreg_GX.h>
#include <nitro/hw/ARM9/ioreg_G2.h>
#include <nitro/hw/ARM9/ioreg_GXS.h>
#include <nitro/hw/ARM9/ioreg_G2S.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef union {
    u16 raw;
    struct {
        u16 priority : 2;
        u16 charBase : 4;
        u16 mosaic : 1;
        u16 colorMode : 1;
        u16 screenBase : 5;
        u16 bgExtPltt : 1;
        u16 screenSize : 2;
    };
} GXBg01Control;

typedef union {
    u16 raw;
    struct {
        u16 priority : 2;
        u16 charBase : 4;
        u16 mosaic : 1;
        u16 colorMode : 1;
        u16 screenBase : 5;
        u16 _reserve : 1;
        u16 screenSize : 2;
    };
} GXBg23ControlText;

typedef union {
    u16 raw;
    struct {
        u16 priority : 2;
        u16 charBase : 4;
        u16 mosaic : 1;
        u16 _reserve : 1;
        u16 screenBase : 5;
        u16 areaOver : 1;
        u16 screenSize : 2;
    };
} GXBg23ControlAffine;

typedef union {
    u16 raw;
    struct {
        u16 priority : 2;
        u16 _reserve1 : 1;
        u16 charBase : 3;
        u16 mosaic : 1;
        u16 _reserve2 : 1;
        u16 screenBase : 5;
        u16 areaOver : 1;
        u16 screenSize : 2;
    };
} GXBg23Control256x16Pltt;

typedef union {
    u16 raw;
    struct {
        u16 priority : 2;
        u16 charBase : 4;
        u16 mosaic : 1;
        u16 _reserve : 1;
        u16 screenBase : 5;
        u16 areaOver : 1;
        u16 screenSize : 2;
    };
} GXBg23Control256x16Affine;

typedef union {
    u16 raw;
    struct {
        u16 priority : 2;
        u16 _reserve1 : 4;
        u16 mosaic : 1;
        u16 _reserve2 : 1;
        u16 screenBase : 5;
        u16 areaOver : 1;
        u16 screenSize : 2;
    };
} GXBg23Control256Bmp, GXBg23ControlDCBmp;

typedef union {
    u16 raw;
    struct {
        u16 priority : 2;
        u16 _reserve1 : 4;
        u16 mosaic : 1;
        u16 _reserve2 : 6;
        u16 areaOver : 1;
        u16 screenSize : 2;
    };
} GXBg2ControlLargeBmp;

typedef enum {
    GX_BG_SCRSIZE_TEXT_256x256 = 0,
    GX_BG_SCRSIZE_TEXT_512x256 = 1,
    GX_BG_SCRSIZE_TEXT_256x512 = 2,
    GX_BG_SCRSIZE_TEXT_512x512 = 3
} GXBGScrSizeText;

#define GX_BG_SCRSIZE_TEXT_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_SCRSIZE_TEXT_256x256, GX_BG_SCRSIZE_TEXT_512x512)

typedef enum {
    GX_BG_SCRSIZE_AFFINE_128x128 = 0,
    GX_BG_SCRSIZE_AFFINE_256x256 = 1,
    GX_BG_SCRSIZE_AFFINE_512x512 = 2,
    GX_BG_SCRSIZE_AFFINE_1024x1024 = 3
} GXBGScrSizeAffine;

#define GX_BG_SCRSIZE_AFFINE_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_SCRSIZE_AFFINE_128x128, GX_BG_SCRSIZE_AFFINE_1024x1024)

typedef enum {
    GX_BG_SCRSIZE_256x16PLTT_128x128 = 0,
    GX_BG_SCRSIZE_256x16PLTT_256x256 = 1,
    GX_BG_SCRSIZE_256x16PLTT_512x512 = 2,
    GX_BG_SCRSIZE_256x16PLTT_1024x1024 = 3
} GXBGScrSize256x16Pltt;

#define GX_BG_SCRSIZE_256x16PLTT_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_SCRSIZE_256x16PLTT_128x128, GX_BG_SCRSIZE_256x16PLTT_1024x1024)

typedef enum {
    GX_BG_SCRSIZE_256BMP_128x128 = 0,
    GX_BG_SCRSIZE_256BMP_256x256 = 1,
    GX_BG_SCRSIZE_256BMP_512x256 = 2,
    GX_BG_SCRSIZE_256BMP_512x512 = 3
} GXBGScrSize256Bmp;

#define GX_BG_SCRSIZE_256BMP_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_SCRSIZE_256BMP_128x128, GX_BG_SCRSIZE_256BMP_512x512)

typedef enum {
    GX_BG_SCRSIZE_DCBMP_128x128 = 0,
    GX_BG_SCRSIZE_DCBMP_256x256 = 1,
    GX_BG_SCRSIZE_DCBMP_512x256 = 2,
    GX_BG_SCRSIZE_DCBMP_512x512 = 3
} GXBGScrSizeDcBmp;

#define GX_BG_SCRSIZE_DCBMP_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_SCRSIZE_DCBMP_128x128, GX_BG_SCRSIZE_DCBMP_512x512)

typedef enum {
    GX_BG_SCRSIZE_LARGEBMP_512x1024 = 0,
    GX_BG_SCRSIZE_LARGEBMP_1024x512 = 1
} GXBGScrSizeLargeBmp;

#define GX_BG_SCRSIZE_LARGEBMP_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_SCRSIZE_LARGEBMP_512x1024, GX_BG_SCRSIZE_LARGEBMP_1024x512)

typedef enum {
    GX_BG_COLORMODE_16 = 0,
    GX_BG_COLORMODE_256 = 1
} GXBGColorMode;

#define GX_BG_COLORMODE_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_COLORMODE_16, GX_BG_COLORMODE_256)

typedef enum {
    GX_BG_AREAOVER_XLU = 0,
    GX_BG_AREAOVER_REPEAT = 1
} GXBGAreaOver;

#define GX_BG_AREAOVER_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_AREAOVER_XLU, GX_BG_AREAOVER_REPEAT)

typedef enum {
    GX_BG_CHARBASE_0x00000 = 0,
    GX_BG_CHARBASE_0x04000 = 1,
    GX_BG_CHARBASE_0x08000 = 2,
    GX_BG_CHARBASE_0x0c000 = 3,
    GX_BG_CHARBASE_0x10000 = 4,
    GX_BG_CHARBASE_0x14000 = 5,
    GX_BG_CHARBASE_0x18000 = 6,
    GX_BG_CHARBASE_0x1c000 = 7,
    GX_BG_CHARBASE_0x20000 = 8,
    GX_BG_CHARBASE_0x24000 = 9,
    GX_BG_CHARBASE_0x28000 = 10,
    GX_BG_CHARBASE_0x2c000 = 11,
    GX_BG_CHARBASE_0x30000 = 12,
    GX_BG_CHARBASE_0x34000 = 13,
    GX_BG_CHARBASE_0x38000 = 14,
    GX_BG_CHARBASE_0x3c000 = 15
} GXBGCharBase;

#define GX_BG_CHARBASE_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_CHARBASE_0x00000, GX_BG_CHARBASE_0x3c000)

typedef enum {
    GX_BG_SCRBASE_0x0000 = 0,
    GX_BG_SCRBASE_0x0800 = 1,
    GX_BG_SCRBASE_0x1000 = 2,
    GX_BG_SCRBASE_0x1800 = 3,
    GX_BG_SCRBASE_0x2000 = 4,
    GX_BG_SCRBASE_0x2800 = 5,
    GX_BG_SCRBASE_0x3000 = 6,
    GX_BG_SCRBASE_0x3800 = 7,
    GX_BG_SCRBASE_0x4000 = 8,
    GX_BG_SCRBASE_0x4800 = 9,
    GX_BG_SCRBASE_0x5000 = 10,
    GX_BG_SCRBASE_0x5800 = 11,
    GX_BG_SCRBASE_0x6000 = 12,
    GX_BG_SCRBASE_0x6800 = 13,
    GX_BG_SCRBASE_0x7000 = 14,
    GX_BG_SCRBASE_0x7800 = 15,
    GX_BG_SCRBASE_0x8000 = 16,
    GX_BG_SCRBASE_0x8800 = 17,
    GX_BG_SCRBASE_0x9000 = 18,
    GX_BG_SCRBASE_0x9800 = 19,
    GX_BG_SCRBASE_0xa000 = 20,
    GX_BG_SCRBASE_0xa800 = 21,
    GX_BG_SCRBASE_0xb000 = 22,
    GX_BG_SCRBASE_0xb800 = 23,
    GX_BG_SCRBASE_0xc000 = 24,
    GX_BG_SCRBASE_0xc800 = 25,
    GX_BG_SCRBASE_0xd000 = 26,
    GX_BG_SCRBASE_0xd800 = 27,
    GX_BG_SCRBASE_0xe000 = 28,
    GX_BG_SCRBASE_0xe800 = 29,
    GX_BG_SCRBASE_0xf000 = 30,
    GX_BG_SCRBASE_0xf800 = 31
} GXBGScrBase;

#define GX_BG_SCRBASE_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_SCRBASE_0x0000, GX_BG_SCRBASE_0xf800)

typedef enum {
    GX_BG_BMPSCRBASE_0x00000 = 0,
    GX_BG_BMPSCRBASE_0x04000 = 1,
    GX_BG_BMPSCRBASE_0x08000 = 2,
    GX_BG_BMPSCRBASE_0x0c000 = 3,
    GX_BG_BMPSCRBASE_0x10000 = 4,
    GX_BG_BMPSCRBASE_0x14000 = 5,
    GX_BG_BMPSCRBASE_0x18000 = 6,
    GX_BG_BMPSCRBASE_0x1c000 = 7,
    GX_BG_BMPSCRBASE_0x20000 = 8,
    GX_BG_BMPSCRBASE_0x24000 = 9,
    GX_BG_BMPSCRBASE_0x28000 = 10,
    GX_BG_BMPSCRBASE_0x2c000 = 11,
    GX_BG_BMPSCRBASE_0x30000 = 12,
    GX_BG_BMPSCRBASE_0x34000 = 13,
    GX_BG_BMPSCRBASE_0x38000 = 14,
    GX_BG_BMPSCRBASE_0x3c000 = 15,
    GX_BG_BMPSCRBASE_0x40000 = 16,
    GX_BG_BMPSCRBASE_0x44000 = 17,
    GX_BG_BMPSCRBASE_0x48000 = 18,
    GX_BG_BMPSCRBASE_0x4c000 = 19,
    GX_BG_BMPSCRBASE_0x50000 = 20,
    GX_BG_BMPSCRBASE_0x54000 = 21,
    GX_BG_BMPSCRBASE_0x58000 = 22,
    GX_BG_BMPSCRBASE_0x5c000 = 23,
    GX_BG_BMPSCRBASE_0x60000 = 24,
    GX_BG_BMPSCRBASE_0x64000 = 25,
    GX_BG_BMPSCRBASE_0x68000 = 26,
    GX_BG_BMPSCRBASE_0x6c000 = 27,
    GX_BG_BMPSCRBASE_0x70000 = 28,
    GX_BG_BMPSCRBASE_0x74000 = 29,
    GX_BG_BMPSCRBASE_0x78000 = 30,
    GX_BG_BMPSCRBASE_0x7c000 = 31
} GXBGBmpScrBase;

#define GX_BG_BMPSCRBASE_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_BMPSCRBASE_0x00000, GX_BG_BMPSCRBASE_0x7c000)

typedef enum {
    GX_BG_EXTPLTT_01 = 0,
    GX_BG_EXTPLTT_23 = 1
} GXBGExtPltt;

#define GX_BG_EXTPLTT_ASSERT(x) \
    SDK_MINMAX_ASSERT(x, GX_BG_EXTPLTT_01, GX_BG_EXTPLTT_23)

#define GX_BG_PRIORITY_ASSERT(x) SDK_MINMAX_ASSERT(x, 0, 3)

typedef enum {
    GX_BG_EXTMODE_256x16PLTT =
        (0 << REG_G2_BG2CNT_CHARBASE_SHIFT) | (0 << REG_G2_BG2CNT_COLORMODE_SHIFT),
    GX_BG_EXTMODE_256BITMAP =
        (0 << REG_G2_BG2CNT_CHARBASE_SHIFT) | (1 << REG_G2_BG2CNT_COLORMODE_SHIFT),
    GX_BG_EXTMODE_DCBITMAP =
        (1 << REG_G2_BG2CNT_CHARBASE_SHIFT) | (1 << REG_G2_BG2CNT_COLORMODE_SHIFT)
} GXBGExtMode;

#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))

static void G2_SetBG0Control(GXBGScrSizeText screenSize,
                             GXBGColorMode colorMode,
                             GXBGScrBase screenBase, GXBGCharBase charBase, GXBGExtPltt bgExtPltt);

static void G2_SetBG1Control(GXBGScrSizeText screenSize,
                             GXBGColorMode colorMode,
                             GXBGScrBase screenBase, GXBGCharBase charBase, GXBGExtPltt bgExtPltt);

static void G2_SetBG2ControlText(GXBGScrSizeText screenSize,
                                 GXBGColorMode colorMode,
                                 GXBGScrBase screenBase, GXBGCharBase charBase);

static void G2_SetBG2ControlAffine(GXBGScrSizeAffine screenSize,
                                   GXBGAreaOver areaOver,
                                   GXBGScrBase screenBase, GXBGCharBase charBase);

#define G2_SetBG2Control256x16Pltt G2_SetBG2Control256x16Affine
static void G2_SetBG2Control256x16Affine(GXBGScrSize256x16Pltt screenSize,
                                         GXBGAreaOver areaOver,
                                         GXBGScrBase screenBase, GXBGCharBase charBase);

static void G2_SetBG2Control256Bmp(GXBGScrSize256Bmp screenSize,
                                   GXBGAreaOver areaOver, GXBGBmpScrBase screenBase);

static void G2_SetBG2ControlDCBmp(GXBGScrSizeDcBmp screenSize,
                                  GXBGAreaOver areaOver, GXBGBmpScrBase screenBase);

static void G2_SetBG2ControlLargeBmp(GXBGScrSizeLargeBmp screenSize, GXBGAreaOver areaOver);

static void G2_SetBG3ControlText(GXBGScrSizeText screenSize,
                                 GXBGColorMode colorMode,
                                 GXBGScrBase screenBase, GXBGCharBase charBase);

static void G2_SetBG3ControlAffine(GXBGScrSizeAffine screenSize,
                                   GXBGAreaOver areaOver,
                                   GXBGScrBase screenBase, GXBGCharBase charBase);

#define G2_SetBG3Control256x16Pltt G2_SetBG3Control256x16Affine
static void G2_SetBG3Control256x16Affine(GXBGScrSize256x16Pltt screenSize,
                                         GXBGAreaOver areaOver,
                                         GXBGScrBase screenBase, GXBGCharBase charBase);

static void G2_SetBG3Control256Bmp(GXBGScrSize256Bmp screenSize,
                                   GXBGAreaOver areaOver, GXBGBmpScrBase screenBase);

static void G2_SetBG3ControlDCBmp(GXBGScrSizeDcBmp screenSize,
                                  GXBGAreaOver areaOver, GXBGBmpScrBase screenBase);

static void G2_SetBG0Priority(int priority);
static void G2_SetBG1Priority(int priority);
static void G2_SetBG2Priority(int priority);
static void G2_SetBG3Priority(int priority);

static void G2_BG0Mosaic(BOOL enable);
static void G2_BG1Mosaic(BOOL enable);
static void G2_BG2Mosaic(BOOL enable);
static void G2_BG3Mosaic(BOOL enable);

void * G2_GetBG0ScrPtr(void);
void * G2_GetBG1ScrPtr(void);
void * G2_GetBG2ScrPtr(void);
void * G2_GetBG3ScrPtr(void);
void * G2_GetBG0CharPtr(void);
void * G2_GetBG1CharPtr(void);
void * G2_GetBG2CharPtr(void);
void * G2_GetBG3CharPtr(void);
static void * G2_GetOBJCharPtr(void);

static void G2S_SetBG0Control(GXBGScrSizeText screenSize,
                              GXBGColorMode colorMode,
                              GXBGScrBase screenBase, GXBGCharBase charBase, GXBGExtPltt bgExtPltt);

static void G2S_SetBG1Control(GXBGScrSizeText screenSize,
                              GXBGColorMode colorMode,
                              GXBGScrBase screenBase, GXBGCharBase charBase, GXBGExtPltt bgExtPltt);

static void G2S_SetBG2ControlText(GXBGScrSizeText screenSize,
                                  GXBGColorMode colorMode,
                                  GXBGScrBase screenBase, GXBGCharBase charBase);

static void G2S_SetBG2ControlAffine(GXBGScrSizeAffine screenSize,
                                    GXBGAreaOver areaOver,
                                    GXBGScrBase screenBase, GXBGCharBase charBase);

#define G2S_SetBG2Control256x16Pltt G2S_SetBG2Control256x16Affine
static void G2S_SetBG2Control256x16Affine(GXBGScrSize256x16Pltt screenSize,
                                          GXBGAreaOver areaOver,
                                          GXBGScrBase screenBase, GXBGCharBase charBase);

static void G2S_SetBG2Control256Bmp(GXBGScrSize256Bmp screenSize,
                                    GXBGAreaOver areaOver, GXBGBmpScrBase screenBase);

static void G2S_SetBG2ControlDCBmp(GXBGScrSizeDcBmp screenSize,
                                   GXBGAreaOver areaOver, GXBGBmpScrBase screenBase);

static void G2S_SetBG3ControlText(GXBGScrSizeText screenSize,
                                  GXBGColorMode colorMode,
                                  GXBGScrBase screenBase, GXBGCharBase charBase);

static void G2S_SetBG3ControlAffine(GXBGScrSizeAffine screenSize,
                                    GXBGAreaOver areaOver,
                                    GXBGScrBase screenBase, GXBGCharBase charBase);

#define G2S_SetBG3Control256x16Pltt G2S_SetBG3Control256x16Affine
static void G2S_SetBG3Control256x16Affine(GXBGScrSize256x16Pltt screenSize,
                                          GXBGAreaOver areaOver,
                                          GXBGScrBase screenBase, GXBGCharBase charBase);

static void G2S_SetBG3Control256Bmp(GXBGScrSize256Bmp screenSize,
                                    GXBGAreaOver areaOver, GXBGBmpScrBase screenBase);

static void G2S_SetBG3ControlDCBmp(GXBGScrSizeDcBmp screenSize,
                                   GXBGAreaOver areaOver, GXBGBmpScrBase screenBase);

static void G2S_SetBG0Priority(int priority);
static void G2S_SetBG1Priority(int priority);
static void G2S_SetBG2Priority(int priority);
static void G2S_SetBG3Priority(int priority);

static void G2S_BG0Mosaic(BOOL enable);
static void G2S_BG1Mosaic(BOOL enable);
static void G2S_BG2Mosaic(BOOL enable);
static void G2S_BG3Mosaic(BOOL enable);

void * G2S_GetBG0ScrPtr(void);
void * G2S_GetBG1ScrPtr(void);
void * G2S_GetBG2ScrPtr(void);
void * G2S_GetBG3ScrPtr(void);
void * G2S_GetBG0CharPtr(void);
void * G2S_GetBG1CharPtr(void);
void * G2S_GetBG2CharPtr(void);
void * G2S_GetBG3CharPtr(void);
static void * G2S_GetOBJCharPtr(void);

#define GX_BG0_2D_CHECK_WARNING                                  \
    SDK_WARNING(!(reg_GX_DISPCNT & REG_GX_DISPCNT_BG02D3D_MASK), \
                "G2_SetBG0Control: BG #0 assigned to 3D now.")
#ifdef SDK_DEBUG
#define GX_BGMODE_WARNING1(name, mode1)                                                            \
    do {                                                                                               \
        u32 tmp = (reg_GX_DISPCNT & REG_GX_DISPCNT_BGMODE_MASK) >> REG_GX_DISPCNT_BGMODE_SHIFT;        \
        SDK_WARNING(tmp == mode1,                                                                     \
                    #name ## ": BG mode should be %d", mode1);                                         \
        (void)0;                                                                                       \
    } while (0)

#define GX_BGMODE_WARNING2(name, mode1, mode2)                                                     \
    do {                                                                                               \
        u32 tmp = (reg_GX_DISPCNT & REG_GX_DISPCNT_BGMODE_MASK) >> REG_GX_DISPCNT_BGMODE_SHIFT;        \
        SDK_WARNING(tmp == mode1 || tmp == mode2,                                                     \
                    #name ## ": BG mode should be %d or %d", mode1, mode2);                            \
        (void)0;                                                                                       \
    } while (0)

#define GX_BGMODE_WARNING3(name, mode1, mode2, mode3)                                              \
    do {                                                                                               \
        u32 tmp = (reg_GX_DISPCNT & REG_GX_DISPCNT_BGMODE_MASK) >> REG_GX_DISPCNT_BGMODE_SHIFT;        \
        SDK_WARNING(tmp == mode1 || tmp == mode2 || tmp == mode3,                                      \
                    #name ## ": BG mode should be %d, %d, or %d", mode1, mode2, mode3);                \
        (void)0;                                                                                       \
    } while (0)

#define GXS_BGMODE_WARNING1(name, mode1)                                                           \
    do {                                                                                               \
        u32 tmp = (reg_GXS_DB_DISPCNT & REG_GXS_DB_DISPCNT_BGMODE_MASK) >> REG_GXS_DB_DISPCNT_BGMODE_SHIFT;        \
        SDK_WARNING(tmp == mode1,                                                                     \
                    #name ## ": BG mode should be %d", mode1);                                         \
        (void)0;                                                                                       \
    } while (0)

#define GXS_BGMODE_WARNING2(name, mode1, mode2)                                                    \
    do {                                                                                               \
        u32 tmp = (reg_GXS_DB_DISPCNT & REG_GXS_DB_DISPCNT_BGMODE_MASK) >> REG_GXS_DB_DISPCNT_BGMODE_SHIFT;        \
        SDK_WARNING(tmp == mode1 || tmp == mode2,                                                     \
                    #name ## ": BG mode should be %d or %d", mode1, mode2);                            \
        (void)0;                                                                                       \
    } while (0)

#define GXS_BGMODE_WARNING3(name, mode1, mode2, mode3)                                             \
    do {                                                                                               \
        u32 tmp = (reg_GXS_DB_DISPCNT & REG_GXS_DB_DISPCNT_BGMODE_MASK) >> REG_GXS_DB_DISPCNT_BGMODE_SHIFT;        \
        SDK_WARNING(tmp == mode1 || tmp == mode2 || tmp == mode3,                                      \
                    #name ## ": BG mode should be %d, %d, or %d", mode1, mode2, mode3);                \
        (void)0;                                                                                       \
    } while (0)

#else
#define GX_BGMODE_WARNING1(name, mode1) ((void)0)
#define GX_BGMODE_WARNING2(name, mode1, mode2) ((void)0)
#define GX_BGMODE_WARNING3(name, mode1, mode2, mode3) ((void)0)
#define GXS_BGMODE_WARNING1(name, mode1) ((void)0)
#define GXS_BGMODE_WARNING2(name, mode1, mode2) ((void)0)
#define GXS_BGMODE_WARNING3(name, mode1, mode2, mode3) ((void)0)
#endif

static inline void G2_SetBG0Control (GXBGScrSizeText screenSize,
                                     GXBGColorMode colorMode,
                                     GXBGScrBase screenBase,
                                     GXBGCharBase charBase, GXBGExtPltt bgExtPltt)
{
    GX_BG_SCRSIZE_TEXT_ASSERT(screenSize);
    GX_BG_COLORMODE_ASSERT(colorMode);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BG_EXTPLTT_ASSERT(bgExtPltt);
    GX_BG0_2D_CHECK_WARNING;

    reg_G2_BG0CNT =
        (u16)((reg_G2_BG0CNT & (REG_G2_BG0CNT_PRIORITY_MASK | REG_G2_BG0CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG0CNT_SCREENSIZE_SHIFT) | (colorMode <<
                                                                REG_G2_BG0CNT_COLORMODE_SHIFT) |
              (screenBase << REG_G2_BG0CNT_SCREENBASE_SHIFT) | (charBase <<
                                                                REG_G2_BG0CNT_CHARBASE_SHIFT) |
              (bgExtPltt << REG_G2_BG0CNT_BGPLTTSLOT_SHIFT));
}

static inline GXBg01Control G2_GetBG0Control (void)
{
    GX_BG0_2D_CHECK_WARNING;

    return *(volatile GXBg01Control *)REG_BG0CNT_ADDR;
}

static inline void G2S_SetBG0Control (GXBGScrSizeText screenSize,
                                      GXBGColorMode colorMode,
                                      GXBGScrBase screenBase,
                                      GXBGCharBase charBase, GXBGExtPltt bgExtPltt)
{
    GX_BG_SCRSIZE_TEXT_ASSERT(screenSize);
    GX_BG_COLORMODE_ASSERT(colorMode);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BG_EXTPLTT_ASSERT(bgExtPltt);

    reg_G2S_DB_BG0CNT =
        (u16)((reg_G2S_DB_BG0CNT &
               (REG_G2S_DB_BG0CNT_PRIORITY_MASK | REG_G2S_DB_BG0CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG0CNT_SCREENSIZE_SHIFT)
              | (colorMode << REG_G2S_DB_BG0CNT_COLORMODE_SHIFT) | (screenBase <<
                                                                    REG_G2S_DB_BG0CNT_SCREENBASE_SHIFT)
              | (charBase << REG_G2S_DB_BG0CNT_CHARBASE_SHIFT) | (bgExtPltt <<
                                                                  REG_G2S_DB_BG0CNT_BGPLTTSLOT_SHIFT));
}

static inline GXBg01Control G2S_GetBG0Control (void)
{
    return *(volatile GXBg01Control *)REG_DB_BG0CNT_ADDR;
}

static inline void G2_SetBG1Control (GXBGScrSizeText screenSize,
                                     GXBGColorMode colorMode,
                                     GXBGScrBase screenBase,
                                     GXBGCharBase charBase, GXBGExtPltt bgExtPltt)
{
    GX_BG_SCRSIZE_TEXT_ASSERT(screenSize);
    GX_BG_COLORMODE_ASSERT(colorMode);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BG_EXTPLTT_ASSERT(bgExtPltt);

    reg_G2_BG1CNT =
        (u16)((reg_G2_BG1CNT & (REG_G2_BG1CNT_PRIORITY_MASK | REG_G2_BG1CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG1CNT_SCREENSIZE_SHIFT) | (colorMode <<
                                                                REG_G2_BG1CNT_COLORMODE_SHIFT) |
              (screenBase << REG_G2_BG1CNT_SCREENBASE_SHIFT) | (charBase <<
                                                                REG_G2_BG1CNT_CHARBASE_SHIFT) |
              (bgExtPltt << REG_G2_BG1CNT_BGPLTTSLOT_SHIFT));
}

static inline GXBg01Control G2_GetBG1Control (void)
{
    return *(volatile GXBg01Control *)REG_BG1CNT_ADDR;
}

static inline void G2S_SetBG1Control (GXBGScrSizeText screenSize,
                                      GXBGColorMode colorMode,
                                      GXBGScrBase screenBase,
                                      GXBGCharBase charBase, GXBGExtPltt bgExtPltt)
{
    GX_BG_SCRSIZE_TEXT_ASSERT(screenSize);
    GX_BG_COLORMODE_ASSERT(colorMode);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BG_EXTPLTT_ASSERT(bgExtPltt);

    reg_G2S_DB_BG1CNT =
        (u16)((reg_G2S_DB_BG1CNT &
               (REG_G2S_DB_BG1CNT_PRIORITY_MASK | REG_G2S_DB_BG1CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG1CNT_SCREENSIZE_SHIFT)
              | (colorMode << REG_G2S_DB_BG1CNT_COLORMODE_SHIFT) | (screenBase <<
                                                                    REG_G2S_DB_BG1CNT_SCREENBASE_SHIFT)
              | (charBase << REG_G2S_DB_BG1CNT_CHARBASE_SHIFT) | (bgExtPltt <<
                                                                  REG_G2S_DB_BG1CNT_BGPLTTSLOT_SHIFT));
}

static inline GXBg01Control G2S_GetBG1Control (void)
{
    return *(volatile GXBg01Control *)REG_DB_BG1CNT_ADDR;
}

static inline GXBGExtMode G2_GetBG2ExtMode (void)
{
    GX_BGMODE_WARNING1(G2_GetBG2ExtMode, 5);

    return (GXBGExtMode)(reg_G2_BG2CNT &
                         (((reg_G2_BG2CNT & REG_G2_BG2CNT_COLORMODE_MASK) >> 5) |
                          REG_G2_BG2CNT_COLORMODE_MASK));
}

static inline GXBGExtMode G2S_GetBG2ExtMode (void)
{
    GXS_BGMODE_WARNING1(G2S_GetBG2ExtMode, 5);

    return (GXBGExtMode)(reg_G2S_DB_BG2CNT &
                         (((reg_G2S_DB_BG2CNT & REG_G2S_DB_BG2CNT_COLORMODE_MASK) >> 5) |
                          REG_G2S_DB_BG2CNT_COLORMODE_MASK));
}

static inline void G2_SetBG2ControlText (GXBGScrSizeText screenSize,
                                         GXBGColorMode colorMode,
                                         GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_TEXT_ASSERT(screenSize);
    GX_BG_COLORMODE_ASSERT(colorMode);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BGMODE_WARNING3(G2_SetBG2ControlText, 0, 1, 3);

    reg_G2_BG2CNT =
        (u16)((reg_G2_BG2CNT & (REG_G2_BG2CNT_PRIORITY_MASK | REG_G2_BG2CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG2CNT_SCREENSIZE_SHIFT) | (colorMode <<
                                                                REG_G2_BG2CNT_COLORMODE_SHIFT) |
              (screenBase << REG_G2_BG2CNT_SCREENBASE_SHIFT) | (charBase <<
                                                                REG_G2_BG2CNT_CHARBASE_SHIFT));
}

static inline GXBg23ControlText G2_GetBG2ControlText (void)
{
    GX_BGMODE_WARNING3(G2_GetBG2ControlText, 0, 1, 3);

    return *(volatile GXBg23ControlText *)REG_BG2CNT_ADDR;
}

static inline void G2S_SetBG2ControlText (GXBGScrSizeText screenSize,
                                          GXBGColorMode colorMode,
                                          GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_TEXT_ASSERT(screenSize);
    GX_BG_COLORMODE_ASSERT(colorMode);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GXS_BGMODE_WARNING3(G2S_SetBG2ControlText, 0, 1, 3);

    reg_G2S_DB_BG2CNT =
        (u16)((reg_G2S_DB_BG2CNT &
               (REG_G2S_DB_BG2CNT_PRIORITY_MASK | REG_G2S_DB_BG2CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG2CNT_SCREENSIZE_SHIFT)
              | (colorMode << REG_G2S_DB_BG2CNT_COLORMODE_SHIFT) | (screenBase <<
                                                                    REG_G2S_DB_BG2CNT_SCREENBASE_SHIFT)
              | (charBase << REG_G2S_DB_BG2CNT_CHARBASE_SHIFT));
}

static inline GXBg23ControlText G2S_GetBG2ControlText (void)
{
    GXS_BGMODE_WARNING3(G2S_GetBG2ControlText, 0, 1, 3);

    return *(volatile GXBg23ControlText *)REG_DB_BG2CNT_ADDR;
}

static inline void G2_SetBG2ControlAffine (GXBGScrSizeAffine screenSize,
                                           GXBGAreaOver areaOver,
                                           GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_AFFINE_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BGMODE_WARNING2(G2_SetBG2ControlAffine, 2, 4);

    reg_G2_BG2CNT =
        (u16)((reg_G2_BG2CNT & (REG_G2_BG2CNT_PRIORITY_MASK | REG_G2_BG2CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG2CNT_SCREENSIZE_SHIFT) | (screenBase <<
                                                                REG_G2_BG2CNT_SCREENBASE_SHIFT) |
              (charBase << REG_G2_BG2CNT_CHARBASE_SHIFT) | (areaOver <<
                                                            REG_G2_BG2CNT_AREAOVER_SHIFT));
}

static inline GXBg23ControlAffine G2_GetBG2ControlAffine (void)
{
    GX_BGMODE_WARNING2(G2_GetBG2ControlAffine, 2, 4);

    return *(volatile GXBg23ControlAffine *)REG_BG2CNT_ADDR;
}

static inline void G2S_SetBG2ControlAffine (GXBGScrSizeAffine screenSize,
                                            GXBGAreaOver areaOver,
                                            GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_AFFINE_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GXS_BGMODE_WARNING2(G2S_SetBG2ControlAffine, 2, 4);

    reg_G2S_DB_BG2CNT =
        (u16)((reg_G2S_DB_BG2CNT &
               (REG_G2S_DB_BG2CNT_PRIORITY_MASK | REG_G2S_DB_BG2CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG2CNT_SCREENSIZE_SHIFT)
              | (screenBase << REG_G2S_DB_BG2CNT_SCREENBASE_SHIFT) | (charBase <<
                                                                      REG_G2S_DB_BG2CNT_CHARBASE_SHIFT)
              | (areaOver << REG_G2S_DB_BG2CNT_AREAOVER_SHIFT));
}

static inline GXBg23ControlAffine G2S_GetBG2ControlAffine (void)
{
    GXS_BGMODE_WARNING2(G2S_GetBG2ControlAffine, 2, 4);

    return *(volatile GXBg23ControlAffine *)REG_DB_BG2CNT_ADDR;
}

static inline void G2_SetBG2Control256x16Affine (GXBGScrSize256x16Pltt screenSize,
                                                 GXBGAreaOver areaOver,
                                                 GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_256x16PLTT_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BGMODE_WARNING1(G2_SetBG2Control256x16Affine, 5);

    reg_G2_BG2CNT =
        (u16)((reg_G2_BG2CNT & (REG_G2_BG2CNT_PRIORITY_MASK | REG_G2_BG2CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG2CNT_SCREENSIZE_SHIFT) | (charBase <<
                                                                REG_G2_BG2CNT_CHARBASE_SHIFT) |
              GX_BG_EXTMODE_256x16PLTT | (screenBase << REG_G2_BG2CNT_SCREENBASE_SHIFT) | (areaOver
                                                                                           <<
                                                                                           REG_G2_BG2CNT_AREAOVER_SHIFT));
}

static inline GXBg23Control256x16Pltt G2_GetBG2Control256x16Pltt (void)
{
    GX_BGMODE_WARNING1(G2_GetBG2Control256x16Pltt, 5);

    return *(volatile GXBg23Control256x16Pltt *)REG_BG2CNT_ADDR;
}

static inline GXBg23Control256x16Affine G2_GetBG2Control256x16Affine (void)
{
    GX_BGMODE_WARNING1(G2_GetBG2Control256x16Affine, 5);

    return *(volatile GXBg23Control256x16Affine *)REG_BG2CNT_ADDR;
}

static inline void G2S_SetBG2Control256x16Affine (GXBGScrSize256x16Pltt screenSize,
                                                  GXBGAreaOver areaOver,
                                                  GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_256x16PLTT_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GXS_BGMODE_WARNING1(G2S_SetBG2Control256x16Affine, 5);

    reg_G2S_DB_BG2CNT =
        (u16)((reg_G2S_DB_BG2CNT &
               (REG_G2S_DB_BG2CNT_PRIORITY_MASK | REG_G2S_DB_BG2CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG2CNT_SCREENSIZE_SHIFT)
              | (charBase << REG_G2S_DB_BG2CNT_CHARBASE_SHIFT) | GX_BG_EXTMODE_256x16PLTT |
              (screenBase << REG_G2S_DB_BG2CNT_SCREENBASE_SHIFT) | (areaOver <<
                                                                    REG_G2S_DB_BG2CNT_AREAOVER_SHIFT));
}

static inline GXBg23Control256x16Pltt G2S_GetBG2Control256x16Pltt (void)
{
    GXS_BGMODE_WARNING1(G2S_GetBG2Control256x16Pltt, 5);

    return *(volatile GXBg23Control256x16Pltt *)REG_DB_BG2CNT_ADDR;
}

static inline GXBg23Control256x16Affine G2S_GetBG2Control256x16Affine (void)
{
    GXS_BGMODE_WARNING1(G2S_GetBG2Control256x16Affine, 5);

    return *(volatile GXBg23Control256x16Affine *)REG_DB_BG2CNT_ADDR;
}

static inline void G2_SetBG2Control256Bmp (GXBGScrSize256Bmp screenSize,
                                           GXBGAreaOver areaOver, GXBGBmpScrBase screenBase)
{
    GX_BG_SCRSIZE_256BMP_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_BMPSCRBASE_ASSERT(screenBase);
    GX_BGMODE_WARNING1(G2_SetBG2Control256Bmp, 5);

    reg_G2_BG2CNT =
        (u16)((reg_G2_BG2CNT & (REG_G2_BG2CNT_PRIORITY_MASK | REG_G2_BG2CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG2CNT_SCREENSIZE_SHIFT) | GX_BG_EXTMODE_256BITMAP | (screenBase
                                                                                          <<
                                                                                          REG_G2_BG2CNT_SCREENBASE_SHIFT)
              | (areaOver << REG_G2_BG2CNT_AREAOVER_SHIFT));
}

static inline GXBg23Control256Bmp G2_GetBG2Control256Bmp (void)
{
    GX_BGMODE_WARNING1(G2_GetBG2Control256Bmp, 5);

    return *(volatile GXBg23Control256Bmp *)REG_BG2CNT_ADDR;
}

static inline void G2S_SetBG2Control256Bmp (GXBGScrSize256Bmp screenSize,
                                            GXBGAreaOver areaOver, GXBGBmpScrBase screenBase)
{
    GX_BG_SCRSIZE_256BMP_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_BMPSCRBASE_ASSERT(screenBase);
    SDK_ASSERTMSG(screenSize != GX_BG_SCRSIZE_256BMP_512x512,
                  "SUB 2D engine does not support GX_BG_SCRSIZE_256BMP_512x512");
    GXS_BGMODE_WARNING1(G2S_SetBG2Control256Bmp, 5);

    reg_G2S_DB_BG2CNT =
        (u16)((reg_G2S_DB_BG2CNT &
               (REG_G2S_DB_BG2CNT_PRIORITY_MASK | REG_G2S_DB_BG2CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG2CNT_SCREENSIZE_SHIFT)
              | GX_BG_EXTMODE_256BITMAP | (screenBase << REG_G2S_DB_BG2CNT_SCREENBASE_SHIFT) |
              (areaOver << REG_G2S_DB_BG2CNT_AREAOVER_SHIFT));
}

static inline GXBg23Control256Bmp G2S_GetBG2Control256Bmp (void)
{
    GXS_BGMODE_WARNING1(G2S_GetBG2Control256Bmp, 5);

    return *(volatile GXBg23Control256Bmp *)REG_DB_BG2CNT_ADDR;
}

static inline void G2_SetBG2ControlDCBmp (GXBGScrSizeDcBmp screenSize,
                                          GXBGAreaOver areaOver, GXBGBmpScrBase screenBase)
{
    GX_BG_SCRSIZE_DCBMP_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_BMPSCRBASE_ASSERT(screenBase);
    GX_BGMODE_WARNING1(G2_SetBG2ControlDCBmp, 5);

    reg_G2_BG2CNT =
        (u16)((reg_G2_BG2CNT & (REG_G2_BG2CNT_PRIORITY_MASK | REG_G2_BG2CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG2CNT_SCREENSIZE_SHIFT) | GX_BG_EXTMODE_DCBITMAP | (screenBase
                                                                                         <<
                                                                                         REG_G2_BG2CNT_SCREENBASE_SHIFT)
              | (areaOver << REG_G2_BG2CNT_AREAOVER_SHIFT));
}

static inline GXBg23ControlDCBmp G2_GetBG2ControlDCBmp (void)
{
    GX_BGMODE_WARNING1(G2_SetBG2ControlDCBmp, 5);

    return *(volatile GXBg23ControlDCBmp *)REG_BG2CNT_ADDR;
}

static inline void G2S_SetBG2ControlDCBmp (GXBGScrSizeDcBmp screenSize,
                                           GXBGAreaOver areaOver, GXBGBmpScrBase screenBase)
{
    GX_BG_SCRSIZE_DCBMP_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_BMPSCRBASE_ASSERT(screenBase);
    SDK_ASSERTMSG(screenSize != GX_BG_SCRSIZE_DCBMP_512x256,
                  "SUB 2D engine does not support GX_BG_SCRSIZE_DCBMP_512x256");
    SDK_ASSERTMSG(screenSize != GX_BG_SCRSIZE_DCBMP_512x512,
                  "SUB 2D engine does not support GX_BG_SCRSIZE_DCBMP_512x512");
    GXS_BGMODE_WARNING1(G2S_SetBG2ControlDCBmp, 5);

    reg_G2S_DB_BG2CNT =
        (u16)((reg_G2S_DB_BG2CNT &
               (REG_G2S_DB_BG2CNT_PRIORITY_MASK | REG_G2S_DB_BG2CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG2CNT_SCREENSIZE_SHIFT)
              | GX_BG_EXTMODE_DCBITMAP | (screenBase << REG_G2S_DB_BG2CNT_SCREENBASE_SHIFT) |
              (areaOver << REG_G2S_DB_BG2CNT_AREAOVER_SHIFT));
}

static inline GXBg23ControlDCBmp G2S_GetBG2ControlDCBmp (void)
{
    GXS_BGMODE_WARNING1(G2S_GetBG2ControlDCBmp, 5);

    return *(volatile GXBg23ControlDCBmp *)REG_DB_BG2CNT_ADDR;
}

static inline void G2_SetBG2ControlLargeBmp (GXBGScrSizeLargeBmp screenSize, GXBGAreaOver areaOver)
{
    GX_BG_SCRSIZE_LARGEBMP_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BGMODE_WARNING1(G2_SetBG2ControlLargeBmp, 6);

    reg_G2_BG2CNT =
        (u16)((reg_G2_BG2CNT & (REG_G2_BG2CNT_PRIORITY_MASK | REG_G2_BG2CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG2CNT_SCREENSIZE_SHIFT) | (areaOver <<
                                                                REG_G2_BG2CNT_AREAOVER_SHIFT));
}

static inline GXBg2ControlLargeBmp G2_GetBG2ControlLargeBmp (void)
{
    GX_BGMODE_WARNING1(G2_GetBG2ControlLargeBmp, 6);

    return *(volatile GXBg2ControlLargeBmp *)REG_BG2CNT_ADDR;
}

static inline GXBGExtMode G2_GetBG3ExtMode (void)
{
    GX_BGMODE_WARNING3(G2_GetBG3ExtMode, 3, 4, 5);

    return (GXBGExtMode)(reg_G2_BG3CNT &
                         (((reg_G2_BG3CNT & REG_G2_BG3CNT_COLORMODE_MASK) >> 5) |
                          REG_G2_BG3CNT_COLORMODE_MASK));
}

static inline GXBGExtMode G2S_GetBG3ExtMode (void)
{
    GXS_BGMODE_WARNING3(G2S_GetBG3ExtMode, 3, 4, 5);

    return (GXBGExtMode)(reg_G2S_DB_BG3CNT &
                         (((reg_G2S_DB_BG3CNT & REG_G2S_DB_BG3CNT_COLORMODE_MASK) >> 5) |
                          REG_G2S_DB_BG3CNT_COLORMODE_MASK));
}

static inline void G2_SetBG3ControlText (GXBGScrSizeText screenSize,
                                         GXBGColorMode colorMode,
                                         GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_TEXT_ASSERT(screenSize);
    GX_BG_COLORMODE_ASSERT(colorMode);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BGMODE_WARNING1(G2_SetBG3ControlText, 0);

    reg_G2_BG3CNT =
        (u16)((reg_G2_BG3CNT & (REG_G2_BG3CNT_PRIORITY_MASK | REG_G2_BG3CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG3CNT_SCREENSIZE_SHIFT) | (colorMode <<
                                                                REG_G2_BG3CNT_COLORMODE_SHIFT) |
              (screenBase << REG_G2_BG3CNT_SCREENBASE_SHIFT) | (charBase <<
                                                                REG_G2_BG3CNT_CHARBASE_SHIFT));
}

static inline GXBg23ControlText G2_GetBG3ControlText (void)
{
    return *(volatile GXBg23ControlText *)REG_BG3CNT_ADDR;
}

static inline void G2S_SetBG3ControlText (GXBGScrSizeText screenSize,
                                          GXBGColorMode colorMode,
                                          GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_TEXT_ASSERT(screenSize);
    GX_BG_COLORMODE_ASSERT(colorMode);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GXS_BGMODE_WARNING1(G2S_SetBG3ControlText, 0);

    reg_G2S_DB_BG3CNT =
        (u16)((reg_G2S_DB_BG3CNT &
               (REG_G2S_DB_BG3CNT_PRIORITY_MASK | REG_G2S_DB_BG3CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG3CNT_SCREENSIZE_SHIFT)
              | (colorMode << REG_G2S_DB_BG3CNT_COLORMODE_SHIFT) | (screenBase <<
                                                                    REG_G2S_DB_BG3CNT_SCREENBASE_SHIFT)
              | (charBase << REG_G2S_DB_BG3CNT_CHARBASE_SHIFT));
}

static inline GXBg23ControlText G2S_GetBG3ControlText (void)
{
    return *(volatile GXBg23ControlText *)REG_DB_BG3CNT_ADDR;
}

static inline void G2_SetBG3ControlAffine (GXBGScrSizeAffine screenSize,
                                           GXBGAreaOver areaOver,
                                           GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_AFFINE_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BGMODE_WARNING2(G2_SetBG3ControlAffine, 1, 2);

    reg_G2_BG3CNT =
        (u16)((reg_G2_BG3CNT & (REG_G2_BG3CNT_PRIORITY_MASK | REG_G2_BG3CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG3CNT_SCREENSIZE_SHIFT) | (screenBase <<
                                                                REG_G2_BG3CNT_SCREENBASE_SHIFT) |
              (charBase << REG_G2_BG3CNT_CHARBASE_SHIFT) | (areaOver <<
                                                            REG_G2_BG3CNT_AREAOVER_SHIFT));
}

static inline GXBg23ControlAffine G2_GetBG3ControlAffine (void)
{
    return *(volatile GXBg23ControlAffine *)REG_BG3CNT_ADDR;
}

static inline void G2S_SetBG3ControlAffine (GXBGScrSizeAffine screenSize,
                                            GXBGAreaOver areaOver,
                                            GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_AFFINE_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GXS_BGMODE_WARNING2(G2S_SetBG3ControlAffine, 1, 2);

    reg_G2S_DB_BG3CNT =
        (u16)((reg_G2S_DB_BG3CNT &
               (REG_G2S_DB_BG3CNT_PRIORITY_MASK | REG_G2S_DB_BG3CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG3CNT_SCREENSIZE_SHIFT)
              | (screenBase << REG_G2S_DB_BG3CNT_SCREENBASE_SHIFT) | (charBase <<
                                                                      REG_G2S_DB_BG3CNT_CHARBASE_SHIFT)
              | (areaOver << REG_G2S_DB_BG3CNT_AREAOVER_SHIFT));
}

static inline GXBg23ControlAffine G2S_GetBG3ControlAffine (void)
{
    return *(volatile GXBg23ControlAffine *)REG_DB_BG3CNT_ADDR;
}

static inline void G2_SetBG3Control256x16Affine (GXBGScrSize256x16Pltt screenSize,
                                                 GXBGAreaOver areaOver,
                                                 GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_256x16PLTT_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GX_BGMODE_WARNING3(G2_SetBG3Control256x16Affine, 3, 4, 5);

    reg_G2_BG3CNT =
        (u16)((reg_G2_BG3CNT & (REG_G2_BG3CNT_PRIORITY_MASK | REG_G2_BG3CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG3CNT_SCREENSIZE_SHIFT) | (charBase <<
                                                                REG_G2_BG3CNT_CHARBASE_SHIFT) |
              GX_BG_EXTMODE_256x16PLTT | (screenBase << REG_G2_BG3CNT_SCREENBASE_SHIFT) | (areaOver
                                                                                           <<
                                                                                           REG_G2_BG3CNT_AREAOVER_SHIFT));
}

static inline GXBg23Control256x16Pltt G2_GetBG3Control256x16Pltt (void)
{
    return *(volatile GXBg23Control256x16Pltt *)REG_BG3CNT_ADDR;
}

static inline GXBg23Control256x16Affine G2_GetBG3Control256x16Affine (void)
{
    return *(volatile GXBg23Control256x16Affine *)REG_BG3CNT_ADDR;
}

static inline void G2S_SetBG3Control256x16Affine (GXBGScrSize256x16Pltt screenSize,
                                                  GXBGAreaOver areaOver,
                                                  GXBGScrBase screenBase, GXBGCharBase charBase)
{
    GX_BG_SCRSIZE_256x16PLTT_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_SCRBASE_ASSERT(screenBase);
    GX_BG_CHARBASE_ASSERT(charBase);
    GXS_BGMODE_WARNING3(G2S_SetBG3Control256x16Affine, 3, 4, 5);

    reg_G2S_DB_BG3CNT =
        (u16)((reg_G2S_DB_BG3CNT &
               (REG_G2S_DB_BG3CNT_PRIORITY_MASK | REG_G2S_DB_BG3CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG3CNT_SCREENSIZE_SHIFT)
              | (charBase << REG_G2S_DB_BG3CNT_CHARBASE_SHIFT) | GX_BG_EXTMODE_256x16PLTT |
              (screenBase << REG_G2S_DB_BG3CNT_SCREENBASE_SHIFT) | (areaOver <<
                                                                    REG_G2S_DB_BG3CNT_AREAOVER_SHIFT));
}

static inline GXBg23Control256x16Pltt G2S_GetBG3Control256x16Pltt (void)
{
    return *(volatile GXBg23Control256x16Pltt *)REG_DB_BG3CNT_ADDR;
}

static inline GXBg23Control256x16Affine G2S_GetBG3Control256x16Affine (void)
{
    return *(volatile GXBg23Control256x16Affine *)REG_DB_BG3CNT_ADDR;
}

static inline void G2_SetBG3Control256Bmp (GXBGScrSize256Bmp screenSize,
                                           GXBGAreaOver areaOver, GXBGBmpScrBase screenBase)
{
    GX_BG_SCRSIZE_256BMP_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_BMPSCRBASE_ASSERT(screenBase);
    GX_BGMODE_WARNING3(G2_SetBG3Control256Bmp, 3, 4, 5);

    reg_G2_BG3CNT =
        (u16)((reg_G2_BG3CNT & (REG_G2_BG3CNT_PRIORITY_MASK | REG_G2_BG3CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG3CNT_SCREENSIZE_SHIFT) | GX_BG_EXTMODE_256BITMAP | (screenBase
                                                                                          <<
                                                                                          REG_G2_BG3CNT_SCREENBASE_SHIFT)
              | (areaOver << REG_G2_BG3CNT_AREAOVER_SHIFT));
}

static inline GXBg23Control256Bmp G2_GetBG3Control256Bmp (void)
{
    return *(volatile GXBg23Control256Bmp *)REG_BG3CNT_ADDR;
}

static inline void G2S_SetBG3Control256Bmp (GXBGScrSize256Bmp screenSize,
                                            GXBGAreaOver areaOver, GXBGBmpScrBase screenBase)
{
    GX_BG_SCRSIZE_256BMP_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_BMPSCRBASE_ASSERT(screenBase);
    SDK_ASSERTMSG(screenSize != GX_BG_SCRSIZE_256BMP_512x512,
                  "SUB 2D engine does not support GX_BG_SCRSIZE_256BMP_512x512");
    GXS_BGMODE_WARNING3(G2S_SetBG3Control256Bmp, 3, 4, 5);

    reg_G2S_DB_BG3CNT =
        (u16)((reg_G2S_DB_BG3CNT &
               (REG_G2S_DB_BG3CNT_PRIORITY_MASK | REG_G2S_DB_BG3CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG3CNT_SCREENSIZE_SHIFT)
              | GX_BG_EXTMODE_256BITMAP | (screenBase << REG_G2S_DB_BG3CNT_SCREENBASE_SHIFT) |
              (areaOver << REG_G2S_DB_BG3CNT_AREAOVER_SHIFT));
}

static inline GXBg23Control256Bmp G2S_GetBG3Control256Bmp (void)
{
    return *(volatile GXBg23Control256Bmp *)REG_DB_BG3CNT_ADDR;
}

static inline void G2_SetBG3ControlDCBmp (GXBGScrSizeDcBmp screenSize,
                                          GXBGAreaOver areaOver, GXBGBmpScrBase screenBase)
{
    GX_BG_SCRSIZE_DCBMP_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_BMPSCRBASE_ASSERT(screenBase);
    GX_BGMODE_WARNING3(G2_SetBG3ControlDCBmp, 3, 4, 5);

    reg_G2_BG3CNT =
        (u16)((reg_G2_BG3CNT & (REG_G2_BG3CNT_PRIORITY_MASK | REG_G2_BG3CNT_MOSAIC_MASK)) |
              (screenSize << REG_G2_BG3CNT_SCREENSIZE_SHIFT) | GX_BG_EXTMODE_DCBITMAP | (screenBase
                                                                                         <<
                                                                                         REG_G2_BG3CNT_SCREENBASE_SHIFT)
              | (areaOver << REG_G2_BG3CNT_AREAOVER_SHIFT));
}

static inline GXBg23ControlDCBmp G2_GetBG3ControlDCBmp (void)
{
    return *(volatile GXBg23ControlDCBmp *)REG_BG3CNT_ADDR;
}

static inline void G2S_SetBG3ControlDCBmp (GXBGScrSizeDcBmp screenSize,
                                           GXBGAreaOver areaOver, GXBGBmpScrBase screenBase)
{
    GX_BG_SCRSIZE_DCBMP_ASSERT(screenSize);
    GX_BG_AREAOVER_ASSERT(areaOver);
    GX_BG_BMPSCRBASE_ASSERT(screenBase);
    GXS_BGMODE_WARNING3(G2S_SetBG3ControlDCBmp, 3, 4, 5);

    reg_G2S_DB_BG3CNT =
        (u16)((reg_G2S_DB_BG3CNT &
               (REG_G2S_DB_BG3CNT_PRIORITY_MASK | REG_G2S_DB_BG3CNT_MOSAIC_MASK)) | (screenSize <<
                                                                                     REG_G2S_DB_BG3CNT_SCREENSIZE_SHIFT)
              | GX_BG_EXTMODE_DCBITMAP | (screenBase << REG_G2S_DB_BG3CNT_SCREENBASE_SHIFT) |
              (areaOver << REG_G2S_DB_BG3CNT_AREAOVER_SHIFT));
}

static inline GXBg23ControlDCBmp G2S_GetBG3ControlDCBmp (void)
{
    return *(volatile GXBg23ControlDCBmp *)REG_DB_BG3CNT_ADDR;
}

static inline void G2_BG0Mosaic (BOOL enable)
{
    if (enable) {
        reg_G2_BG0CNT |= REG_G2_BG0CNT_MOSAIC_MASK;
    } else {
        reg_G2_BG0CNT &= ~REG_G2_BG0CNT_MOSAIC_MASK;
    }
}

static inline void G2S_BG0Mosaic (BOOL enable)
{
    if (enable) {
        reg_G2S_DB_BG0CNT |= REG_G2S_DB_BG0CNT_MOSAIC_MASK;
    } else {
        reg_G2S_DB_BG0CNT &= ~REG_G2S_DB_BG0CNT_MOSAIC_MASK;
    }
}

static inline void G2_BG1Mosaic (BOOL enable)
{
    if (enable) {
        reg_G2_BG1CNT |= REG_G2_BG1CNT_MOSAIC_MASK;
    } else {
        reg_G2_BG1CNT &= ~REG_G2_BG1CNT_MOSAIC_MASK;
    }
}

static inline void G2S_BG1Mosaic (BOOL enable)
{
    if (enable) {
        reg_G2S_DB_BG1CNT |= REG_G2S_DB_BG1CNT_MOSAIC_MASK;
    } else {
        reg_G2S_DB_BG1CNT &= ~REG_G2S_DB_BG1CNT_MOSAIC_MASK;
    }
}

static inline void G2_BG2Mosaic (BOOL enable)
{
    if (enable) {
        reg_G2_BG2CNT |= REG_G2_BG2CNT_MOSAIC_MASK;
    } else {
        reg_G2_BG2CNT &= ~REG_G2_BG2CNT_MOSAIC_MASK;
    }
}

static inline void G2S_BG2Mosaic (BOOL enable)
{
    if (enable) {
        reg_G2S_DB_BG2CNT |= REG_G2S_DB_BG2CNT_MOSAIC_MASK;
    } else {
        reg_G2S_DB_BG2CNT &= ~REG_G2S_DB_BG2CNT_MOSAIC_MASK;
    }
}

static inline void G2_BG3Mosaic (BOOL enable)
{
    if (enable) {
        reg_G2_BG3CNT |= REG_G2_BG3CNT_MOSAIC_MASK;
    } else {
        reg_G2_BG3CNT &= ~REG_G2_BG3CNT_MOSAIC_MASK;
    }
}

static inline void G2S_BG3Mosaic (BOOL enable)
{
    if (enable) {
        reg_G2S_DB_BG3CNT |= REG_G2S_DB_BG3CNT_MOSAIC_MASK;
    } else {
        reg_G2S_DB_BG3CNT &= ~REG_G2S_DB_BG3CNT_MOSAIC_MASK;
    }
}

static inline void G2_SetBG0Priority (int priority)
{
    GX_BG_PRIORITY_ASSERT(priority);

    reg_G2_BG0CNT = (u16)((reg_G2_BG0CNT & ~REG_G2_BG0CNT_PRIORITY_MASK) |
                          (priority << REG_G2_BG0CNT_PRIORITY_SHIFT));
}

static inline void G2S_SetBG0Priority (int priority)
{
    GX_BG_PRIORITY_ASSERT(priority);

    reg_G2S_DB_BG0CNT = (u16)((reg_G2S_DB_BG0CNT & ~REG_G2S_DB_BG0CNT_PRIORITY_MASK) |
                              (priority << REG_G2S_DB_BG0CNT_PRIORITY_SHIFT));
}

static inline void G2_SetBG1Priority (int priority)
{
    GX_BG_PRIORITY_ASSERT(priority);

    reg_G2_BG1CNT = (u16)((reg_G2_BG1CNT & ~REG_G2_BG1CNT_PRIORITY_MASK) |
                          (priority << REG_G2_BG1CNT_PRIORITY_SHIFT));
}

static inline void G2S_SetBG1Priority (int priority)
{
    GX_BG_PRIORITY_ASSERT(priority);

    reg_G2S_DB_BG1CNT = (u16)((reg_G2S_DB_BG1CNT & ~REG_G2S_DB_BG1CNT_PRIORITY_MASK) |
                              (priority << REG_G2S_DB_BG1CNT_PRIORITY_SHIFT));
}

static inline void G2_SetBG2Priority (int priority)
{
    GX_BG_PRIORITY_ASSERT(priority);

    reg_G2_BG2CNT = (u16)((reg_G2_BG2CNT & ~REG_G2_BG2CNT_PRIORITY_MASK) |
                          (priority << REG_G2_BG2CNT_PRIORITY_SHIFT));
}

static inline void G2S_SetBG2Priority (int priority)
{
    GX_BG_PRIORITY_ASSERT(priority);

    reg_G2S_DB_BG2CNT = (u16)((reg_G2S_DB_BG2CNT & ~REG_G2S_DB_BG2CNT_PRIORITY_MASK) |
                              (priority << REG_G2S_DB_BG2CNT_PRIORITY_SHIFT));
}

static inline void G2_SetBG3Priority (int priority)
{
    GX_BG_PRIORITY_ASSERT(priority);

    reg_G2_BG3CNT = (u16)((reg_G2_BG3CNT & ~REG_G2_BG3CNT_PRIORITY_MASK) |
                          (priority << REG_G2_BG3CNT_PRIORITY_SHIFT));
}

static inline void G2S_SetBG3Priority (int priority)
{
    GX_BG_PRIORITY_ASSERT(priority);

    reg_G2S_DB_BG3CNT = (u16)((reg_G2S_DB_BG3CNT & ~REG_G2S_DB_BG3CNT_PRIORITY_MASK) |
                              (priority << REG_G2S_DB_BG3CNT_PRIORITY_SHIFT));
}

static inline void * G2_GetOBJCharPtr ()
{
    return (void *)HW_OBJ_VRAM;
}

static inline void * G2S_GetOBJCharPtr ()
{
    return (void *)HW_DB_OBJ_VRAM;
}

#endif

#ifdef __cplusplus
}
#endif

#endif
