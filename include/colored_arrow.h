#ifndef POKEPLATINUM_COLORED_ARROW_H
#define POKEPLATINUM_COLORED_ARROW_H

#include "struct_defs/struct_0205AA50.h"

#include "strbuf.h"
#include "text.h"

typedef struct ColoredArrow {
    TextColor color;
    Strbuf *strbuf;
} ColoredArrow;

ColoredArrow *ColoredArrow_New(u32 heapID);
void ColoredArrow_Free(ColoredArrow *arrow);
void ColoredArrow_SetColor(ColoredArrow *arrow, TextColor color);
void ColoredArrow_Print(const ColoredArrow *arrow, Window *window, u32 xOffset, u32 yOffset);

#endif // POKEPLATINUM_COLORED_ARROW_H
