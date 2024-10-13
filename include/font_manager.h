#ifndef POKEPLATINUM_FONT_MANAGER_H
#define POKEPLATINUM_FONT_MANAGER_H

#include "charcode.h"
#include "narc.h"
#include "render_text.h"

enum GlyphShape {
    GLYPH_SHAPE_8x8 = 0,
    GLYPH_SHAPE_8x16,
    GLYPH_SHAPE_16x8,
    GLYPH_SHAPE_16x16,

    GLYPH_SHAPE_MAX,
};

typedef struct FontManager FontManager;

typedef void (*GlyphBitmapFunc)(const FontManager *fontManager, charcode_t c, TextGlyph *outGlyph);
typedef u8 (*GlyphWidthFunc)(const FontManager *fontManager, u32 glyph);

typedef struct FontHeader {
    u32 size;
    u32 widthTableOffset;
    u32 numGlyphs;
    u8 maxWidth;
    u8 maxHeight;
    u8 glyphWidth;
    u8 glyphHeight;
} FontHeader;

struct FontManager {
    int glyphAccessMode;
    GlyphBitmapFunc glyphBitmapFunc;
    enum GlyphShape glyphShape;
    u32 glyphSize;
    u8 *narcBuf;
    u8 glyphBuf[64];
    NARC *narc;
    u32 arcFileIdx;
    FontHeader header;
    BOOL isMonospace;
    GlyphWidthFunc glyphWidthFunc;
    u8 *glyphWidths;
};

FontManager *FontManager_New(u32 param0, u32 param1, int param2, BOOL param3, u32 param4);
void FontManager_Delete(FontManager *param0);
void FontManager_SwitchGlyphAccessMode(FontManager *param0, int param1, u32 param2);
void FontManager_TryLoadGlyph(const FontManager *param0, u16 param1, TextGlyph *param2);
u32 FontManager_CalcStringWidth(const FontManager *param0, const u16 *param1, u32 param2);
BOOL FontManager_AreAllCharsValid(const FontManager *param0, const u16 *param1);
u32 FontManager_CalcMaxLineWidth(const FontManager *param0, const u16 *param1, u32 param2);
u32 FontManager_CalcStringWidthWithCursorControl(const FontManager *param0, const u16 *param1);

#endif // POKEPLATINUM_FONT_MANAGER_H
