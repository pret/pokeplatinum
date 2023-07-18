#ifndef NITRO_STRUCT_2D_H_
#define NITRO_STRUCT_2D_H_

#include <nitro/gx/gxcommon.h>

typedef u16 GXScrFmtText;
#define GX_SCRFMT_TEXT_CHARNAME_SHIFT (0)
#define GX_SCRFMT_TEXT_CHARNAME_MASK (0x03ff)
#define GX_SCRFMT_TEXT_HF_SHIFT (10)
#define GX_SCRFMT_TEXT_HF_MASK (0x0400)
#define GX_SCRFMT_TEXT_VF_SHIFT (11)
#define GX_SCRFMT_TEXT_VF_MASK (0x0800)
#define GX_SCRFMT_TEXT_COLORPLTT_SHIFT (12)
#define GX_SCRFMT_TEXT_COLORPLTT_MASK (0xf000)
#define GX_SCRFMT_TEXT(pltt, vf, hf, name)              \
    ((u16)(((name) << GX_SCRFMT_TEXT_CHARNAME_SHIFT) |  \
           ((hf) << GX_SCRFMT_TEXT_HF_SHIFT) |  \
           ((vf) << GX_SCRFMT_TEXT_VF_SHIFT) |  \
           ((pltt) << GX_SCRFMT_TEXT_COLORPLTT_SHIFT)))

typedef u8 GXScrFmtAffine;
#define GX_SCRFMT_AFFINE_CHARNAME_SHIFT (0)
#define GX_SCRFMT_AFFINE_CHARNAME_MASK (0xff)

typedef u8 GXScrFmt256Bmp;
#define GX_SCRFMT_256BMP_COLORNO_SHIFT (0)
#define GX_SCRFMT_256BMP_COLORNO_MASK (0xff)

typedef union {
    u32 data32[8];
    u16 data16[16];
    u8 data8[32];
} GXCharFmt16;

typedef union {
    u32 data32[16];
    u16 data16[32];
    u8 data8[64];
} GXCharFmt256;

typedef union {
    u16 data16[16];
    u32 data32[8];
    GXRgb rgb[16];
} GXBGPltt16;

typedef GXBGPltt16 GXOBJPltt16;

typedef union {
    u16 data16[256];
    u32 data32[128];
    GXRgb rgb[256];
} GXBGPltt256;

typedef GXBGPltt256 GXOBJPltt256;

typedef union {
    u16 data16[32 * 32];
    u32 data32[32 * 32 / 2];
    GXScrFmtText scr[32][32];
} GXScrText32x32;

typedef union {
    u16 data16[64 * 32];
    u32 data32[64 * 32 / 2];
    GXScrFmtText scr[64][32];
} GXScrText64x32;

typedef union {
    u16 data16[32 * 64];
    u32 data32[32 * 64 / 2];
    GXScrFmtText scr[32][64];
} GXScrText32x64;

typedef union {
    u16 data16[64 * 64];
    u32 data32[64 * 64 / 2];
    GXScrFmtText scr[64][64];
} GXScrText64x64;

typedef union {
    u8 data8[16 * 16];
    u32 data32[16 * 16 / 4];
    GXScrFmtAffine scr[16][16];
} GXScrAffine16x16;

typedef union {
    u8 data8[32 * 32];
    u32 data32[32 * 32 / 4];
    GXScrFmtAffine scr[32][32];
} GXScrAffine32x32;

typedef union {
    u8 data8[64 * 64];
    u32 data32[64 * 64 / 4];
    GXScrFmtAffine scr[64][64];
} GXScrAffine64x64;

typedef union {
    u8 data8[128 * 128];
    u32 data32[128 * 128 / 4];
    GXScrFmtAffine scr[128][128];
} GXScrAffine128x128;

typedef union {
    u8 data8[128 * 128];
    u32 data32[128 * 128 / 4];
    GXScrFmt256Bmp scr[128][128];
} GXScr256Bmp128x128;

typedef union {
    u8 data8[256 * 256];
    u32 data32[256 * 256 / 4];
    GXScrFmt256Bmp scr[256][256];
} GXScr256Bmp256x256;

typedef union {
    u8 data8[512 * 256];
    u32 data32[512 * 256 / 4];
    GXScrFmt256Bmp scr[512][256];
} GXScr256Bmp512x256;

typedef union {
    u8 data8[512 * 512];
    u32 data32[512 * 512 / 4];
    GXScrFmt256Bmp scr[512][512];
} GXScr256Bmp512x512;

typedef union {
    u16 data16[128 * 128];
    u32 data32[128 * 128 / 2];
    GXRgba scr[128][128];
} GXScrDCBmp128x128;

typedef union {
    u16 data16[256 * 256];
    u32 data32[256 * 256 / 2];
    GXRgba scr[256][256];
} GXScrDCBmp256x256;

typedef union {
    u16 data16[512 * 256];
    u32 data32[512 * 256 / 2];
    GXRgba scr[512][256];
} GXScrDCBmp512x256;

typedef union {
    u16 data16[512 * 512];
    u32 data32[512 * 512 / 2];
    GXRgba scr[512][512];
} GXScrDCBmp512x512;

typedef struct {
    GXCharFmt16 ch[1024];
} GXCharBGText16;

typedef struct {
    GXCharFmt256 ch[1024];
} GXCharBGText256;

typedef struct {
    GXCharFmt256 ch[256];
} GXCharBGAffine256;

typedef union {
    GXBGPltt256 pltt256;
    GXBGPltt16 pltt16[16];
} GXBGStdPlttData;

typedef union {
    GXOBJPltt256 pltt256;
    GXOBJPltt16 pltt16[16];
} GXOBJStdPlttData;

typedef struct {
    GXBGStdPlttData bgPltt;
    GXOBJStdPlttData objPltt;
} GXStdPlttData;

typedef struct {
    GXBGPltt256 pltt256[16];
} GXBGExtPlttData;

typedef struct {
    GXOBJPltt256 pltt256[16];
} GXOBJExtPlttData;

#endif
