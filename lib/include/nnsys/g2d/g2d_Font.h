#ifndef G2D_FONT_H_
#define G2D_FONT_H_

#include <nnsys/g2d/g2d_config.h>
#include <nnsys/g2d/g2di_AssertUtil.h>
#include <nnsys/g2d/fmt/g2d_Font_data.h>
#include <nnsys/g2d/g2di_SplitChar.h>
#include <nnsys/g2d/g2di_Char.h>

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_FONT_ASSERT(pFont)                                            \
    NNS_G2D_ASSERTMSG(                                                          \
        ((pFont) != NULL)                                                       \
        && (*(((u32 *)((pFont)->pRes)) - 2) == NNS_G2D_BINBLK_SIG_FINFDATA)  \
        && ((pFont)->pRes->pGlyph != NULL)                                  \
        && NNS_G2D_IS_VALID_POINTER((pFont)->cbCharSpliter)                 \
        , "invalid NNSG2dFont data")

#define NNS_G2D_GLYPH_ASSERT(pGlyph)                                          \
    NNS_G2D_ASSERTMSG(                                                          \
        ((pGlyph) != NULL)                                                      \
        && ((pGlyph)->image != NULL)                                        \
        , "invalid NNSG2dGlyph data")                                           \

#define NNS_G2D_FONT_MAX_GLYPH_INDEX(pFont)                                   \
    ((*((u32 *)(pFont)->pRes->pGlyph - 1) - sizeof(*((pFont)->pRes->pGlyph)))    \
     / (pFont)->pRes->pGlyph->cellSize)                                      \

#define NNS_G2D_GLYPH_INDEX_NOT_FOUND 0xFFFF

typedef struct NNSG2dFont {
    NNSG2dFontInformation * pRes;
    NNSiG2dSplitCharCallback cbCharSpliter;
} NNSG2dFont;

typedef struct NNSG2dGlyph {
    const NNSG2dCharWidths * pWidths;
    const u8 * image;
} NNSG2dGlyph;

typedef struct NNSG2dTextRect {
    int width;
    int height;
} NNSG2dTextRect;

void NNS_G2dFontInitAuto(NNSG2dFont * pFont, void * pNftrFile);
void NNS_G2dFontInitUTF8(NNSG2dFont * pFont, void * pNftrFile);
void NNS_G2dFontInitUTF16(NNSG2dFont * pFont, void * pNftrFile);
void NNS_G2dFontInitShiftJIS(NNSG2dFont * pFont, void * pNftrFile);
void NNS_G2dFontInitCP1252(NNSG2dFont * pFont, void * pNftrFile);

u16 NNS_G2dFontFindGlyphIndex(const NNSG2dFont * pFont, u16 c);

const NNSG2dCharWidths * NNS_G2dFontGetCharWidthsFromIndex(
    const NNSG2dFont * pFont, u16 idx);

NNS_G2D_INLINE NNSG2dFontType NNS_G2dFontGetType (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return (NNSG2dFontType)pFont->pRes->fontType;
}

NNS_G2D_INLINE s8 NNS_G2dFontGetLineFeed (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->linefeed;
}

NNS_G2D_INLINE u16 NNS_G2dFontGetAlternateGlyphIndex (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->alterCharIndex;
}

NNS_G2D_INLINE NNSG2dCharWidths * NNS_G2dFontGetDefaultCharWidths (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return &pFont->pRes->defaultWidth;
}

NNS_G2D_INLINE u8 NNS_G2dFontGetHeight (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->pGlyph->cellHeight;
}

NNS_G2D_INLINE u8 NNS_G2dFontGetCellHeight (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->pGlyph->cellHeight;
}

NNS_G2D_INLINE u8 NNS_G2dFontGetCellWidth (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->pGlyph->cellWidth;
}

NNS_G2D_INLINE int NNS_G2dFontGetBaselinePos (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->pGlyph->baselinePos;
}

NNS_G2D_INLINE int NNSi_G2dFontGetGlyphDataSize (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->pGlyph->cellSize;
}

NNS_G2D_INLINE u8 NNS_G2dFontGetMaxCharWidth (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->pGlyph->maxCharWidth;
}

NNS_G2D_INLINE u8 NNS_G2dFontGetBpp (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->pGlyph->bpp;
}

NNS_G2D_INLINE NNSG2dFontEncoding NNSi_G2dFontGetEncoding (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return (NNSG2dFontEncoding)pFont->pRes->encoding;
}

NNS_G2D_INLINE NNSiG2dSplitCharCallback NNSi_G2dFontGetSpliter (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->cbCharSpliter;
}

NNS_G2D_INLINE const u8 * NNS_G2dFontGetGlyphImageFromIndex (
    const NNSG2dFont * pFont, u16 idx)
{
    NNS_G2D_FONT_ASSERT(pFont);
    NNS_G2D_ASSERT(idx < NNS_G2D_FONT_MAX_GLYPH_INDEX(pFont));
    return pFont->pRes->pGlyph->glyphTable + idx * NNSi_G2dFontGetGlyphDataSize(pFont);
}

NNS_G2D_INLINE u8 NNS_G2dFontGetFlags (const NNSG2dFont * pFont)
{
    NNS_G2D_FONT_ASSERT(pFont);
    return pFont->pRes->pGlyph->flags;
}

NNS_G2D_INLINE void NNS_G2dFontSetLineFeed (NNSG2dFont * pFont, s8 linefeed)
{
    NNS_G2D_FONT_ASSERT(pFont);
    pFont->pRes->linefeed = linefeed;
}

NNS_G2D_INLINE void NNS_G2dFontSetDefaultCharWidths (
    NNSG2dFont * pFont, NNSG2dCharWidths cw)
{
    NNS_G2D_FONT_ASSERT(pFont);
    pFont->pRes->defaultWidth = cw;
}

NNS_G2D_INLINE void NNS_G2dFontSetAlternateGlyphIndex (NNSG2dFont * pFont, u16 idx)
{
    NNS_G2D_FONT_ASSERT(pFont);
    NNS_G2D_ASSERT(idx < NNS_G2D_FONT_MAX_GLYPH_INDEX(pFont));
    pFont->pRes->alterCharIndex = idx;
}

NNS_G2D_INLINE u16 NNS_G2dFontGetGlyphIndex (const NNSG2dFont * pFont, u16 c)
{
    const u16 idx = NNS_G2dFontFindGlyphIndex(pFont, c);

    return (idx != NNS_G2D_GLYPH_INDEX_NOT_FOUND) ?
           idx :
           pFont->pRes->alterCharIndex;
}

NNS_G2D_INLINE void NNS_G2dFontGetGlyphFromIndex (
    NNSG2dGlyph * pGlyph, const NNSG2dFont * pFont, u16 idx)
{
    NNS_G2D_FONT_ASSERT(pFont);
    NNS_G2D_POINTER_ASSERT(pGlyph);
    pGlyph->pWidths = NNS_G2dFontGetCharWidthsFromIndex(pFont, idx);
    pGlyph->image = NNS_G2dFontGetGlyphImageFromIndex(pFont, idx);
}

NNS_G2D_INLINE const NNSG2dCharWidths * NNS_G2dFontGetCharWidths (
    const NNSG2dFont * pFont, u16 c)
{
    u16 iGlyph;

    NNS_G2D_FONT_ASSERT(pFont);

    iGlyph = NNS_G2dFontGetGlyphIndex(pFont, c);
    return NNS_G2dFontGetCharWidthsFromIndex(pFont, iGlyph);
}

NNS_G2D_INLINE int NNS_G2dFontGetCharWidth (const NNSG2dFont * pFont, u16 c)
{
    const NNSG2dCharWidths * pWidths;

    NNS_G2D_FONT_ASSERT(pFont);

    pWidths = NNS_G2dFontGetCharWidths(pFont, c);
    return pWidths->charWidth;
}

NNS_G2D_INLINE int NNS_G2dFontGetCharWidthFromIndex (const NNSG2dFont * pFont, u16 idx)
{
    const NNSG2dCharWidths * pWidths;

    NNS_G2D_FONT_ASSERT(pFont);

    pWidths = NNS_G2dFontGetCharWidthsFromIndex(pFont, idx);
    return pWidths->charWidth;
}

NNS_G2D_INLINE const u8 * NNS_G2dFontGetGlyphImage (const NNSG2dFont * pFont, u16 c)
{
    u16 iGlyph;

    NNS_G2D_FONT_ASSERT(pFont);

    iGlyph = NNS_G2dFontGetGlyphIndex(pFont, c);
    return NNS_G2dFontGetGlyphImageFromIndex(pFont, iGlyph);
}

NNS_G2D_INLINE void NNS_G2dFontGetGlyph (
    NNSG2dGlyph * pGlyph, const NNSG2dFont * pFont, u16 ccode)
{
    u16 iGlyph;

    NNS_G2D_FONT_ASSERT(pFont);
    NNS_G2D_POINTER_ASSERT(pGlyph);

    iGlyph = NNS_G2dFontGetGlyphIndex(pFont, ccode);
    NNS_G2dFontGetGlyphFromIndex(pGlyph, pFont, iGlyph);
}

NNS_G2D_INLINE BOOL NNS_G2dFontSetAlternateChar (NNSG2dFont * pFont, u16 c)
{
    u16 iGlyph;

    NNS_G2D_FONT_ASSERT(pFont);

    iGlyph = NNS_G2dFontFindGlyphIndex(pFont, c);

    if (iGlyph == NNS_G2D_GLYPH_INDEX_NOT_FOUND) {
        return FALSE;
    }

    pFont->pRes->alterCharIndex = iGlyph;
    return TRUE;
}

int NNSi_G2dFontGetStringWidth(
    const NNSG2dFont * pFont,
    int hSpace,
    const void * str,
    const void ** pPos
);

int NNSi_G2dFontGetTextHeight(
    const NNSG2dFont * pFont,
    int vSpace,
    const void * txt
);

int NNSi_G2dFontGetTextWidth(
    const NNSG2dFont * pFont,
    int hSpace,
    const void * txt
);

NNSG2dTextRect NNSi_G2dFontGetTextRect(
    const NNSG2dFont * pFont,
    int hSpace,
    int vSpace,
    const void * txt
);

NNS_G2D_INLINE int NNS_G2dFontGetStringWidth (const NNSG2dFont * pFont, int hSpace, const NNSG2dChar * str, const NNSG2dChar ** pPos)
{
    return NNSi_G2dFontGetStringWidth(pFont, hSpace, str, (const void **)pPos);
}
NNS_G2D_INLINE int NNS_G2dFontGetTextHeight (const NNSG2dFont * pFont, int vSpace, const NNSG2dChar * txt)
{
    return NNSi_G2dFontGetTextHeight(pFont, vSpace, txt);
}
NNS_G2D_INLINE int NNS_G2dFontGetTextWidth (const NNSG2dFont * pFont, int hSpace, const NNSG2dChar * txt)
{
    return NNSi_G2dFontGetTextWidth(pFont, hSpace, txt);
}
NNS_G2D_INLINE NNSG2dTextRect NNS_G2dFontGetTextRect (const NNSG2dFont * pFont, int hSpace, int vSpace, const NNSG2dChar * txt)
{
    return NNSi_G2dFontGetTextRect(pFont, hSpace, vSpace, txt);
}

#ifdef __cplusplus
}
#endif

#endif
