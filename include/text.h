#ifndef POKEPLATINUM_TEXT_H
#define POKEPLATINUM_TEXT_H

#include "struct_defs/struct_0205AA50.h"

#include "font.h"
#include "render_text.h"
#include "strbuf.h"

void Text_SetFontAttributesPtr(const FontAttributes *fontAttributes);
void Text_ResetAllPrinters(void);
u8 Text_IsPrinterActive(u8 printerID);
void Text_RemovePrinter(u8 printerID);
u8 Text_AddPrinterWithParams(Window *window, u32 fontID, const Strbuf *strbuf, u32 xOffset, u32 yOffset, u32 renderDelay, TextPrinterCallback callback);
u8 Text_AddPrinterWithParamsAndColor(Window *window, u32 fontID, const Strbuf *strbuf, u32 xOffset, u32 yOffset, u32 renderDelay, u32 color, TextPrinterCallback callback);
u8 Text_AddPrinterWithParamsColorAndSpacing(Window *window, u32 fontID, const Strbuf *strbuf, u32 xOffset, u32 yOffset, u32 renderDelay, u32 color, u32 letterSpacing, u32 lineSpacing, TextPrinterCallback callback);
u8 Text_AddPrinter(const TextPrinterTemplate *template, u32 renderDelay, TextPrinterCallback callback);
void Text_GenerateFontHalfRowLookupTable(u8 fgColor, u8 bgColor, u8 shadowColor);
void Text_DecompressGlyph(u8 *src, u8 *dst);
void Text_RenderScreenIndicator(TextPrinter *printer, u16 unusedX, u16 unusedY, u16 indicator);

#endif // POKEPLATINUM_TEXT_H
