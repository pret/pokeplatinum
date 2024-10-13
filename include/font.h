#ifndef POKEPLATINUM_FONT_H
#define POKEPLATINUM_FONT_H

#include "constants/font.h"

#include "render_text.h"
#include "strbuf.h"

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
void Font_InitManager(int param0, u32 param1);
void Font_UseImmediateGlyphAccess(int param0, u32 param1);
void Font_UseLazyGlyphAccess(int param0);
void Font_Free(int param0);
const TextGlyph *Font_TryLoadGlyph(int param0, u16 param1);
enum RenderResult Font_RenderText(int param0, TextPrinter *param1);
u32 Font_CalcStringWidth(int param0, const u16 *param1, u32 param2);
u32 Font_CalcStrbufWidth(int param0, const Strbuf *param1, u32 param2);
u32 Font_AreAllCharsValid(int param0, Strbuf *param1, Strbuf *param2);
u8 Font_GetAttribute(u8 param0, u8 param1);
void Font_LoadTextPalette(u32 param0, u32 param1, u32 param2);
void Font_LoadScreenIndicatorsPalette(u32 param0, u32 param1, u32 param2);
u32 Font_CalcMaxLineWidth(int param0, const Strbuf *param1, u32 param2);
u32 Font_CalcCenterAlignment(int param0, const Strbuf *param1, u32 param2, u32 param3);
u32 Font_CalcStringWidthWithCursorControl(int param0, const Strbuf *param1);

#endif // POKEPLATINUM_FONT_H
