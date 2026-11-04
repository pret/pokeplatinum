#ifndef POKEPLATINUM_MENU_CURSOR_H
#define POKEPLATINUM_MENU_CURSOR_H

#include "bg_window.h"
#include "heap.h"
#include "string_gf.h"
#include "text.h"

typedef struct MenuCursor {
    TextColor color;
    String *string;
} MenuCursor;

MenuCursor *MenuCursor_New(u32 heapID);
void MenuCursor_Free(MenuCursor *cursor);
void MenuCursor_SetColor(MenuCursor *cursor, TextColor color);
void MenuCursor_Print(const MenuCursor *cursor, Window *window, u32 xOffset, u32 yOffset);

#endif // POKEPLATINUM_MENU_CURSOR_H
