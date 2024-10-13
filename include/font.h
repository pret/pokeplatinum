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

void sub_02002B7C(void);
void sub_02002BB8(int param0, u32 param1);
void sub_02002BEC(int param0, u32 param1);
void sub_02002C28(int param0);
void sub_02002C60(int param0);
const TextGlyph *sub_02002CFC(int param0, u16 param1);
int sub_02002D18(int param0, TextPrinter *param1);
u32 sub_02002D48(int param0, const u16 *param1, u32 param2);
u32 sub_02002D7C(int param0, const Strbuf *param1, u32 param2);
u32 sub_02002DB4(int param0, Strbuf *param1, Strbuf *param2);
u8 Font_GetAttribute(u8 param0, u8 param1);
void sub_02002E7C(u32 param0, u32 param1, u32 param2);
void sub_02002E98(u32 param0, u32 param1, u32 param2);
u32 sub_02002EB4(int param0, const Strbuf *param1, u32 param2);
u32 sub_02002EEC(int param0, const Strbuf *param1, u32 param2, u32 param3);
u32 sub_02002F04(int param0, const Strbuf *param1);

#endif // POKEPLATINUM_FONT_H
