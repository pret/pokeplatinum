#include "font_manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "charcode.h"
#include "heap.h"
#include "narc.h"
#include "render_text.h"
#include "text.h"

static void FontManager_Init(FontManager *fontManager, u32 narcID, u32 arcFileIdx, BOOL isMonospace, u32 heapID);
static void FontManager_FreeWidthsAndNARC(FontManager *fontManager);
static void FontManager_LoadGlyphs(FontManager *fontManager, enum GlyphAccessMode glyphAccessMode, u32 heapID);
static void FontManager_LoadGlyphImmediate(FontManager *fontManager, u32 heapID);
static void FontManager_LoadGlyphLazy(FontManager *fontManager, u32 heapID);
static void FontManager_FreeGlyphs(FontManager *fontManager);
static void FontManager_FreeGlyphImmediate(FontManager *fontManager);
static void FontManager_FreeGlyphLazy(FontManager *fontManager);
static void DecompressGlyph_FromRAM(const FontManager *fontManager, charcode_t c, TextGlyph *outGlyph);
static void DecompressGlyph_FromNARC(const FontManager *fontManager, charcode_t c, TextGlyph *outGlyph);
static u8 GlyphWidthFunc_VariableWidth(const FontManager *fontManager, u32 glyphIdx);
static u8 GlyphWidthFunc_FixedWidth(const FontManager *fontManager, u32 glyphIdx);

static const u8 sGlyphShapes[][2] = {
    {
        GLYPH_SHAPE_8x8,
        GLYPH_SHAPE_8x16,
    },
    {
        GLYPH_SHAPE_16x8,
        GLYPH_SHAPE_16x16,
    },
};

static void (*const sLoadGlyphFuncs[])(FontManager *fontManager, u32 heapID) = {
    [GLYPH_ACCESS_MODE_IMMEDIATE] = FontManager_LoadGlyphImmediate,
    [GLYPH_ACCESS_MODE_LAZY] = FontManager_LoadGlyphLazy,
};

static void (*const sFreeGlyphFuncs[])(FontManager *fontManager) = {
    [GLYPH_ACCESS_MODE_IMMEDIATE] = FontManager_FreeGlyphImmediate,
    [GLYPH_ACCESS_MODE_LAZY] = FontManager_FreeGlyphLazy
};

FontManager *FontManager_New(u32 narcID, u32 arcFileIdx, enum GlyphAccessMode glyphAccessMode, BOOL isMonospace, u32 heapID)
{
    FontManager *fontManager = Heap_AllocFromHeap(heapID, sizeof(FontManager));

    if (fontManager) {
        FontManager_Init(fontManager, narcID, arcFileIdx, isMonospace, heapID);
        FontManager_LoadGlyphs(fontManager, glyphAccessMode, heapID);
    }

    return fontManager;
}

void FontManager_Delete(FontManager *fontManager)
{
    FontManager_FreeGlyphs(fontManager);
    FontManager_FreeWidthsAndNARC(fontManager);
    Heap_FreeToHeap(fontManager);
}

void FontManager_SwitchGlyphAccessMode(FontManager *fontManager, enum GlyphAccessMode glyphAccessMode, u32 heapID)
{
    if (fontManager->glyphAccessMode != glyphAccessMode) {
        FontManager_FreeGlyphs(fontManager);
        FontManager_LoadGlyphs(fontManager, glyphAccessMode, heapID);
    }
}

static void FontManager_Init(FontManager *fontManager, u32 narcID, u32 arcFileIdx, BOOL isMonospace, u32 heapID)
{
    fontManager->narc = NARC_ctor(narcID, heapID);

    if (!fontManager->narc) {
        return;
    }

    NARC_ReadFromMember(fontManager->narc, arcFileIdx, 0, sizeof(FontHeader), &(fontManager->header));

    fontManager->isMonospace = isMonospace;

    if (isMonospace) {
        fontManager->glyphWidths = NULL;
        fontManager->glyphWidthFunc = GlyphWidthFunc_FixedWidth;
    } else {
        GF_ASSERT(fontManager->header.widthTableOffset);

        fontManager->glyphWidths = Heap_AllocFromHeap(heapID, fontManager->header.numGlyphs);
        fontManager->glyphWidthFunc = GlyphWidthFunc_VariableWidth;

        NARC_ReadFromMember(fontManager->narc, arcFileIdx, fontManager->header.widthTableOffset, fontManager->header.numGlyphs, fontManager->glyphWidths);
    }

    GF_ASSERT(fontManager->header.glyphWidth <= 2 && fontManager->header.glyphHeight <= 2);

    fontManager->glyphShape = sGlyphShapes[fontManager->header.glyphWidth - 1][fontManager->header.glyphHeight - 1];
    fontManager->glyphSize = 16 * fontManager->header.glyphWidth * fontManager->header.glyphHeight;

    fontManager->arcFileIdx = arcFileIdx;
}

static void FontManager_FreeWidthsAndNARC(FontManager *fontManager)
{
    if (fontManager->glyphWidths) {
        Heap_FreeToHeap(fontManager->glyphWidths);
    }

    if (fontManager->narc) {
        NARC_dtor(fontManager->narc);
    }
}

static void FontManager_LoadGlyphs(FontManager *fontManager, enum GlyphAccessMode glyphAccessMode, u32 heapID)
{
    fontManager->glyphAccessMode = glyphAccessMode;
    sLoadGlyphFuncs[glyphAccessMode](fontManager, heapID);
}

static void FontManager_LoadGlyphImmediate(FontManager *fontManager, u32 heapID)
{
    u32 size = fontManager->glyphSize * fontManager->header.numGlyphs;

    fontManager->narcBuf = Heap_AllocFromHeap(heapID, size);
    fontManager->glyphBitmapFunc = DecompressGlyph_FromRAM;

    NARC_ReadFromMember(fontManager->narc, fontManager->arcFileIdx, fontManager->header.size, size, fontManager->narcBuf);
}

static void FontManager_LoadGlyphLazy(FontManager *fontManager, u32 heapID)
{
    fontManager->glyphBitmapFunc = DecompressGlyph_FromNARC;
}

static void FontManager_FreeGlyphs(FontManager *fontManager)
{
    sFreeGlyphFuncs[fontManager->glyphAccessMode](fontManager);
}

static void FontManager_FreeGlyphImmediate(FontManager *fontManager)
{
    Heap_FreeToHeap(fontManager->narcBuf);
    fontManager->narcBuf = NULL;
}

static void FontManager_FreeGlyphLazy(FontManager *fontManager)
{
}

void FontManager_TryLoadGlyph(const FontManager *fontManager, charcode_t c, TextGlyph *outGlyph)
{
    if (c <= fontManager->header.numGlyphs) {
        c--;
    } else {
        c = CHAR_EN_QUESTION_MARK - 1;
    }

    fontManager->glyphBitmapFunc(fontManager, c, outGlyph);
}

static void DecompressGlyph_FromRAM(const FontManager *fontManager, charcode_t c, TextGlyph *outGlyph)
{
    u8 *tiles = fontManager->narcBuf + (c * fontManager->glyphSize);

    switch (fontManager->glyphShape) {
    case GLYPH_SHAPE_8x8:
        Text_DecompressGlyph(tiles + 0x00, outGlyph->gfx + 0x00);
        break;

    case GLYPH_SHAPE_8x16:
        Text_DecompressGlyph(tiles + 0x00, outGlyph->gfx + 0x00);
        Text_DecompressGlyph(tiles + 0x10, outGlyph->gfx + 0x40);
        break;

    case GLYPH_SHAPE_16x8:
        Text_DecompressGlyph(tiles + 0x00, outGlyph->gfx + 0x00);
        Text_DecompressGlyph(tiles + 0x10, outGlyph->gfx + 0x20);
        break;

    case GLYPH_SHAPE_16x16:
        Text_DecompressGlyph(tiles + 0x00, outGlyph->gfx + 0x00);
        Text_DecompressGlyph(tiles + 0x10, outGlyph->gfx + 0x20);
        Text_DecompressGlyph(tiles + 0x20, outGlyph->gfx + 0x40);
        Text_DecompressGlyph(tiles + 0x30, outGlyph->gfx + 0x60);
        break;
    }

    outGlyph->width = fontManager->glyphWidthFunc(fontManager, c);
    outGlyph->height = fontManager->header.maxHeight;
}

static void DecompressGlyph_FromNARC(const FontManager *fontManager, charcode_t c, TextGlyph *outGlyph)
{
    NARC_ReadFromMember(fontManager->narc, fontManager->arcFileIdx, fontManager->header.size + c * fontManager->glyphSize, fontManager->glyphSize, fontManager->glyphBuf);

    switch (fontManager->glyphShape) {
    case GLYPH_SHAPE_8x8:
        Text_DecompressGlyph(fontManager->glyphBuf + 0x00, outGlyph->gfx + 0x00);
        break;

    case GLYPH_SHAPE_8x16:
        Text_DecompressGlyph(fontManager->glyphBuf + 0x00, outGlyph->gfx + 0x00);
        Text_DecompressGlyph(fontManager->glyphBuf + 0x10, outGlyph->gfx + 0x40);
        break;

    case GLYPH_SHAPE_16x8:
        Text_DecompressGlyph(fontManager->glyphBuf + 0x00, outGlyph->gfx + 0x00);
        Text_DecompressGlyph(fontManager->glyphBuf + 0x10, outGlyph->gfx + 0x20);
        break;

    case GLYPH_SHAPE_16x16:
        Text_DecompressGlyph(fontManager->glyphBuf + 0x00, outGlyph->gfx + 0x00);
        Text_DecompressGlyph(fontManager->glyphBuf + 0x10, outGlyph->gfx + 0x20);
        Text_DecompressGlyph(fontManager->glyphBuf + 0x20, outGlyph->gfx + 0x40);
        Text_DecompressGlyph(fontManager->glyphBuf + 0x30, outGlyph->gfx + 0x60);
        break;
    }

    outGlyph->width = fontManager->glyphWidthFunc(fontManager, c);
    outGlyph->height = fontManager->header.maxHeight;
}

u32 FontManager_CalcStringWidth(const FontManager *fontManager, const charcode_t *str, u32 letterSpacing)
{
    u32 len = 0;

    while (*str != CHAR_EOS) {
        if (*str == CHAR_FORMAT_ARG) {
            str = CharCode_SkipFormatArg(str);
            if (*str == CHAR_EOS) {
                break;
            }
        }

        len += fontManager->glyphWidthFunc(fontManager, *str - 1) + letterSpacing;
        str++;
    }

    return len - letterSpacing;
}

BOOL FontManager_AreAllCharsValid(const FontManager *fontManager, const charcode_t *str)
{
    while (*str != CHAR_EOS) {
        if (*str == CHAR_FORMAT_ARG) {
            str = CharCode_SkipFormatArg(str);
            if (*str == CHAR_EOS) {
                return TRUE;
            }
        }

        if (*str - 1 >= fontManager->header.numGlyphs) {
            return FALSE;
        }

        str++;
    }

    return TRUE;
}

static u8 GlyphWidthFunc_VariableWidth(const FontManager *fontManager, u32 glyphIdx)
{
    if (glyphIdx < fontManager->header.numGlyphs) {
        return fontManager->glyphWidths[glyphIdx];
    } else {
        return fontManager->glyphWidths[CHAR_EN_QUESTION_MARK - 1];
    }
}

static u8 GlyphWidthFunc_FixedWidth(const FontManager *fontManager, u32 glyphIdx)
{
    return fontManager->header.maxWidth;
}

u32 FontManager_CalcMaxLineWidth(const FontManager *fontManager, const charcode_t *str, u32 letterSpacing)
{
    u32 maxLen = 0, lineLen = 0;

    while (*str != CHAR_EOS) {
        if (*str == CHAR_FORMAT_ARG) {
            str = CharCode_SkipFormatArg(str);
        } else if (*str == CHAR_CR) {
            if (maxLen < lineLen - letterSpacing) {
                maxLen = lineLen - letterSpacing;
            }

            lineLen = 0;
            str++;
        } else {
            lineLen += fontManager->glyphWidthFunc(fontManager, *str - 1) + letterSpacing;
            str++;
        }
    }

    if (maxLen < lineLen - letterSpacing) {
        maxLen = lineLen - letterSpacing;
    }

    return maxLen;
}

u32 FontManager_CalcStringWidthWithCursorControl(const FontManager *fontManager, const charcode_t *str)
{
    u32 len = 0;

    while (*str != CHAR_EOS) {
        if (*str == CHAR_FORMAT_ARG) {
            if (CharCode_FormatArgType(str) == CHAR_CONTROL_CURSOR_X) {
                len = CharCode_FormatArgParam(str, 0) - 12;
            }

            str = CharCode_SkipFormatArg(str);
        } else {
            len += fontManager->glyphWidthFunc(fontManager, *str - 1);
            str++;
        }
    }

    return len;
}
