#ifndef G2D_CHARCANVAS_H_
#define G2D_CHARCANVAS_H_

#include <nnsys/g2d/g2d_Font.h>
#include <nnsys/g2d/g2di_AssertUtil.h>
#include <nnsys/g2d/fmt/g2d_Cell_data.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_CHARCANVAS_ASSERT(pCC)                                \
    NNS_G2D_ASSERTMSG(                                                  \
        NNS_G2D_IS_VALID_POINTER(pCC)                                   \
        && (0 < (pCC)->areaWidth)                                       \
        && (0 < (pCC)->areaHeight)                                      \
        && (((pCC)->dstBpp == 4) || ((pCC)->dstBpp == 8))             \
        && NNS_G2D_IS_VALID_POINTER((pCC)->charBase)                  \
        && NNS_G2D_IS_ALIGNED((pCC)->charBase, 4)                       \
        && NNS_G2D_IS_VALID_POINTER((pCC)->vtable)                    \
        && NNS_G2D_IS_VALID_POINTER((pCC)->vtable->pDrawGlyph)        \
        && NNS_G2D_IS_VALID_POINTER((pCC)->vtable->pClear)            \
        && NNS_G2D_IS_VALID_POINTER((pCC)->vtable->pClearArea)        \
        , "Illegal NNSG2dCharCanvas.")

#define NNS_G2D_COLORMODE_ASSERT(cmode)                               \
    NNS_G2D_ASSERTMSG(                                                  \
        (cmode) == NNS_G2D_CHARA_COLORMODE_16                           \
        || (cmode) == NNS_G2D_CHARA_COLORMODE_256                       \
        , "Illegal Color Mode(=%d)", (cmode))

#define NNS_G2D_OBJVRAMMODE_ASSERT(vmode)                             \
    NNS_G2D_ASSERTMSG(                                                  \
        (vmode) == NNS_G2D_OBJVRAMMODE_32K                              \
        || (vmode) == NNS_G2D_OBJVRAMMODE_64K                           \
        || (vmode) == NNS_G2D_OBJVRAMMODE_128K                          \
        || (vmode) == NNS_G2D_OBJVRAMMODE_256K                          \
        , "Illegal VRAM Mode(=%d)", (vmode))

#define NNS_G2D_TEXT_BG_WIDTH_ASSERT(width)                           \
    NNS_G2D_ASSERTMSG(                                                  \
        (width) == NNS_G2D_TEXT_BG_WIDTH_256                            \
        || (width) == NNS_G2D_TEXT_BG_WIDTH_512                         \
        , "Illegal Text BG Width(=%d).", (width))

#define NNS_G2D_AFFINE_BG_WIDTH_ASSERT(width)                         \
    NNS_G2D_ASSERTMSG(                                                  \
        (width) == NNS_G2D_AFFINE_BG_WIDTH_128                          \
        || (width) == NNS_G2D_AFFINE_BG_WIDTH_256                       \
        || (width) == NNS_G2D_AFFINE_BG_WIDTH_512                       \
        || (width) == NNS_G2D_AFFINE_BG_WIDTH_1024                      \
        , "Illegal Affine BG Width(=%d).", (width))

#define NNS_G2D_256x16PLTT_BG_WIDTH_ASSERT(width)                     \
    NNS_G2D_ASSERTMSG(                                                  \
        (width) == NNS_G2D_256x16PLTT_BG_WIDTH_128                      \
        || (width) == NNS_G2D_256x16PLTT_BG_WIDTH_256                   \
        || (width) == NNS_G2D_256x16PLTT_BG_WIDTH_512                   \
        || (width) == NNS_G2D_256x16PLTT_BG_WIDTH_1024                  \
        , "Illegal 256x16Pltt BG Width(=%d).", (width))

typedef enum NNSG2dTextBGWidth {
    NNS_G2D_TEXT_BG_WIDTH_256   = 32,
    NNS_G2D_TEXT_BG_WIDTH_512   = 64
} NNSG2dTextBGWidth;

typedef enum NNSG2dAffineBGWidth {
    NNS_G2D_AFFINE_BG_WIDTH_128     = 16,
    NNS_G2D_AFFINE_BG_WIDTH_256     = 32,
    NNS_G2D_AFFINE_BG_WIDTH_512     = 64,
    NNS_G2D_AFFINE_BG_WIDTH_1024    = 128
} NNSG2dAffineBGWidth;

typedef enum NNSG2d256x16PlttBGWidth {
    NNS_G2D_256x16PLTT_BG_WIDTH_128     = 16,
    NNS_G2D_256x16PLTT_BG_WIDTH_256     = 32,
    NNS_G2D_256x16PLTT_BG_WIDTH_512     = 64,
    NNS_G2D_256x16PLTT_BG_WIDTH_1024    = 128
} NNSG2d256x16PlttBGWidth;

typedef enum NNSG2dCharaColorMode {
    NNS_G2D_CHARA_COLORMODE_16 = 4,
    NNS_G2D_CHARA_COLORMODE_256 = 8
} NNSG2dCharaColorMode;

typedef enum NNSG2dOBJVramMode {
    NNS_G2D_OBJVRAMMODE_32K     = 0,
    NNS_G2D_OBJVRAMMODE_64K     = 1,
    NNS_G2D_OBJVRAMMODE_128K    = 2,
    NNS_G2D_OBJVRAMMODE_256K    = 3
} NNSG2dOBJVramMode;

struct NNSG2dCharCanvas;

typedef void (* NNSiG2dDrawGlyphFunc)(
    const struct NNSG2dCharCanvas * pCC,
    const NNSG2dFont * pFont,
    int x,
    int y,
    int cl,
    const NNSG2dGlyph * pGlyph
);

typedef void (* NNSiG2dClearFunc)(
    const struct NNSG2dCharCanvas * pCC,
    int cl
);

typedef void (* NNSiG2dClearAreaFunc)(
    const struct NNSG2dCharCanvas * pCC,
    int cl,
    int x,
    int y,
    int w,
    int h
);

typedef struct NNSiG2dCharCanvasVTable {
    NNSiG2dDrawGlyphFunc pDrawGlyph;
    NNSiG2dClearFunc pClear;
    NNSiG2dClearAreaFunc pClearArea;
} NNSiG2dCharCanvasVTable;

typedef struct NNSG2dCharCanvas {
    u8 * charBase;
    int areaWidth;
    int areaHeight;
    u8 dstBpp;
    u8 reserved[3];
    u32 param;
    const NNSiG2dCharCanvasVTable * vtable;
} NNSG2dCharCanvas;

void NNS_G2dMapScrToCharText(
    void * scnBase,
    int areaWidth,
    int areaHeight,
    int areaLeft,
    int areaTop,
    NNSG2dTextBGWidth scnWidth,
    int charNo,
    int cplt
);

void NNS_G2dMapScrToCharAffine(
    void * areaBase,
    int areaWidth,
    int areaHeight,
    NNSG2dAffineBGWidth scnWidth,
    int charNo
);

void NNS_G2dMapScrToChar256x16Pltt(
    void * areaBase,
    int areaWidth,
    int areaHeight,
    NNSG2d256x16PlttBGWidth scnWidth,
    int charNo,
    int cplt
);

int NNSi_G2dCalcRequiredOBJ(
    int areaWidth,
    int areaHeight
);

NNS_G2D_INLINE int NNS_G2dCalcRequiredOBJ1D (
    int areaWidth,
    int areaHeight
)
{
    return NNSi_G2dCalcRequiredOBJ(areaWidth, areaHeight);
}

NNS_G2D_INLINE int NNS_G2dCalcRequiredOBJ2DRect (
    int areaWidth,
    int areaHeight
)
{
    return NNSi_G2dCalcRequiredOBJ(areaWidth, areaHeight);
}

int NNS_G2dArrangeOBJ1D(
    GXOamAttr * oam,
    int areaWidth,
    int areaHeight,
    int x,
    int y,
    GXOamColorMode color,
    int charName,
    NNSG2dOBJVramMode vramMode
);

int NNS_G2dArrangeOBJ2DRect(
    GXOamAttr * oam,
    int areaWidth,
    int areaHeight,
    int x,
    int y,
    GXOamColorMode color,
    int charName
);

int NNS_G2dCharCanvasDrawChar(
    const NNSG2dCharCanvas * pCC,
    const NNSG2dFont * pFont,
    int x,
    int y,
    int cl,
    u16 ccode
);

NNS_G2D_INLINE void NNS_G2dCharCanvasDrawGlyph (
    const NNSG2dCharCanvas * pCC,
    const NNSG2dFont * pFont,
    int x,
    int y,
    int cl,
    const NNSG2dGlyph * pGlyph
)
{
    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    pCC->vtable->pDrawGlyph(pCC, pFont, x, y, cl, pGlyph);
}

NNS_G2D_INLINE void NNS_G2dCharCanvasClear (
    const NNSG2dCharCanvas * pCC,
    int cl
)
{
    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    pCC->vtable->pClear(pCC, cl);
}

NNS_G2D_INLINE void NNS_G2dCharCanvasClearArea (
    const NNSG2dCharCanvas * pCC,
    int cl,
    int x,
    int y,
    int w,
    int h
)
{
    NNS_G2D_CHARCANVAS_ASSERT(pCC);
    pCC->vtable->pClearArea(pCC, cl, x, y, w, h);
}

void NNS_G2dCharCanvasInitForBG(
    NNSG2dCharCanvas * pCC,
    void * charBase,
    int areaWidth,
    int areaHeight,
    NNSG2dCharaColorMode colorMode
);

void NNS_G2dCharCanvasInitForOBJ1D(
    NNSG2dCharCanvas * pCC,
    void * charBase,
    int areaWidth,
    int areaHeight,
    NNSG2dCharaColorMode colorMode
);

void NNS_G2dCharCanvasInitForOBJ2DRect(
    NNSG2dCharCanvas * pCC,
    void * charBase,
    int areaWidth,
    int areaHeight,
    NNSG2dCharaColorMode colorMode
);

void NNS_G2dCharCanvasMakeCell1D(
    NNSG2dCellData * pCell,
    const NNSG2dCharCanvas * pCC,
    int x,
    int y,
    int priority,
    GXOamMode mode,
    BOOL mosaic,
    GXOamEffect effect,
    GXOamColorMode color,
    int charName,
    int cParam,
    NNSG2dOBJVramMode vramMode,
    BOOL makeBR
);

void NNS_G2dCharCanvasMakeCell2DRect(
    NNSG2dCellData * pCell,
    const NNSG2dCharCanvas * pCC,
    int x,
    int y,
    int priority,
    GXOamMode mode,
    BOOL mosaic,
    GXOamEffect effect,
    GXOamColorMode color,
    int charName,
    int cParam,
    BOOL makeBR
);

NNS_G2D_INLINE size_t NNSi_G2dCharCanvasCalcCellDataSize (
    const NNSG2dCharCanvas * pCC,
    BOOL makeBR
)
{
    const int numObj = NNSi_G2dCalcRequiredOBJ(pCC->areaWidth, pCC->areaHeight);
    const size_t oamSize = sizeof(NNSG2dCellOAMAttrData) * numObj;
    const size_t brSize = makeBR ? sizeof(NNSG2dCellBoundingRectS16) : 0;

    return sizeof(NNSG2dCellData) + brSize + oamSize;
}

NNS_G2D_INLINE size_t NNS_G2dCharCanvasCalcCellDataSize1D (
    const NNSG2dCharCanvas * pCC,
    BOOL makeBR
)
{
    return NNSi_G2dCharCanvasCalcCellDataSize(pCC, makeBR);
}

NNS_G2D_INLINE size_t NNS_G2dCharCanvasCalcCellDataSize2DRect (
    const NNSG2dCharCanvas * pCC,
    BOOL makeBR
)
{
    return NNSi_G2dCharCanvasCalcCellDataSize(pCC, makeBR);
}

#ifdef __cplusplus
}
#endif

#endif
