#ifndef POKEPLATINUM_FONT_H
#define POKEPLATINUM_FONT_H

#include "charcode.h"
#include "graphics.h"
#include "render_text.h"
#include "strbuf.h"

#define MAX_LETTER_HEIGHT       16
#define MAX_LETTER_HEIGHT_TILES ((MAX_LETTER_HEIGHT + 7) / 8)

#define TEXT_LINES(n)                             ((n) * MAX_LETTER_HEIGHT)
#define TEXT_LINES_TILES(n)                       ((n) * MAX_LETTER_HEIGHT_TILES)
#define TEXT_LINES_WITH_SPACING(n, spacing)       ((n) * MAX_LETTER_HEIGHT + ((n) - 1) * spacing)
#define TEXT_LINES_WITH_SPACING_TILES(n, spacing) ((n) * MAX_LETTER_HEIGHT_TILES + ((n) - 1) * spacing)

enum Font {
    FONT_SYSTEM = 0,
    FONT_MESSAGE,
    FONT_SUBSCREEN,
    FONT_UNOWN,

    FONT_MAX,
};

enum FontAttribute {
    FONTATTR_MAX_LETTER_WIDTH = 0,
    FONTATTR_MAX_LETTER_HEIGHT,
    FONTATTR_LETTER_SPACING,
    FONTATTR_LINE_SPACING,
    FONTATTR_DUMMY,
    FONTATTR_FG_COLOR,
    FONTATTR_BG_COLOR,
    FONTATTR_SHADOW_COLOR,
};

typedef struct FontAttributes {
    u8 maxLetterWidth;
    u8 maxLetterHeight;
    u8 letterSpacing;
    u8 lineSpacing;
    u8 dummy;
    u8 fgColor;
    u8 bgColor;
    u8 shadowColor;
} FontAttributes;

void Fonts_Init(void);
void Font_InitManager(enum Font font, u32 heapID);
void Font_UseImmediateGlyphAccess(enum Font font, u32 heapID);
void Font_UseLazyGlyphAccess(enum Font font);
void Font_Free(enum Font font);
const TextGlyph *Font_TryLoadGlyph(enum Font font, charcode_t c);
enum RenderResult Font_RenderText(enum Font font, TextPrinter *printer);
u32 Font_CalcStringWidth(enum Font font, const charcode_t *str, u32 letterSpacing);
u32 Font_CalcStrbufWidth(enum Font font, const Strbuf *strbuf, u32 letterSpacing);
u32 Font_AreAllCharsValid(enum Font font, Strbuf *strbuf, Strbuf *tmpbuf);
u8 Font_GetAttribute(u8 font, u8 attribute);
void Font_LoadTextPalette(enum PaletteLoadLocation palLocation, u32 palSlotOffset, u32 heapID);
void Font_LoadScreenIndicatorsPalette(enum PaletteLoadLocation palLocation, u32 palSlotOffset, u32 heapID);
u32 Font_CalcMaxLineWidth(enum Font font, const Strbuf *strbuf, u32 letterSpacing);
u32 Font_CalcCenterAlignment(enum Font font, const Strbuf *strbuf, u32 letterSpacing, u32 windowWidth);
u32 Font_CalcStringWidthWithCursorControl(enum Font font, const Strbuf *strbuf);

#endif // POKEPLATINUM_FONT_H
