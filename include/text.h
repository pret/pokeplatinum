#ifndef POKEPLATINUM_TEXT_H
#define POKEPLATINUM_TEXT_H

#include "struct_defs/struct_0205AA50.h"

#include "font.h"
#include "render_text.h"
#include "strbuf.h"

void Text_SetFontAttributesPtr(const FontAttributes *fontAttributes);
void Text_ResetAllPrinters(void);
u8 Text_IsPrinterActive(u8 param0);
void Text_RemovePrinter(u8 param0);
u8 Text_AddPrinterWithParams(Window *window, u32 fontID, const Strbuf *strbuf, u32 xOffset, u32 yOffset, u32 renderDelay, TextPrinterCallback callback);
u8 Text_AddPrinterWithParamsAndColor(Window *param0, u32 param1, const Strbuf *param2, u32 param3, u32 param4, u32 param5, u32 param6, TextPrinterCallback param7);
u8 Text_AddPrinterWithParamsColorAndSpacing(Window *param0, u32 param1, const Strbuf *param2, u32 param3, u32 param4, u32 param5, u32 param6, u32 param7, u32 param8, TextPrinterCallback param9);
u8 Text_AddPrinter(const TextPrinterTemplate *param0, u32 param1, TextPrinterCallback param2);
void Text_GenerateFontHalfRowLookupTable(u8 param0, u8 param1, u8 param2);
void Text_DecompressGlyph(u32 param0, u32 param1);
void Text_RenderScreenIndicator(TextPrinter *param0, u16 param1, u16 param2, u16 param3);

#endif // POKEPLATINUM_TEXT_H
