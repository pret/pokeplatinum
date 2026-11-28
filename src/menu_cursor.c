#include "menu_cursor.h"

#include <nitro.h>

#include "constants/charcode.h"

#include "bg_window.h"
#include "charcode.h"
#include "heap.h"
#include "string_gf.h"
#include "text.h"

MenuCursor *MenuCursor_New(u32 heapID)
{
    static const charcode_t chars[] = {
        CHAR_ARROW_MENU,
        CHAR_EOS,
    };
    MenuCursor *cursor = Heap_Alloc(heapID, sizeof(MenuCursor));

    if (cursor) {
        cursor->color = TEXT_COLOR(1, 2, 15);
        cursor->string = String_Init(4, heapID);
        String_CopyChars(cursor->string, chars);
    }

    return cursor;
}

void MenuCursor_Free(MenuCursor *cursor)
{
    GF_ASSERT(cursor != NULL);

    if (cursor) {
        if (cursor->string) {
            String_Free(cursor->string);
        }

        Heap_Free(cursor);
    }
}

void MenuCursor_SetColor(MenuCursor *cursor, TextColor color)
{
    GF_ASSERT(cursor != NULL);

    if (cursor) {
        cursor->color = color;
    }
}

void MenuCursor_Print(const MenuCursor *cursor, Window *window, u32 xOffset, u32 yOffset)
{
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, cursor->string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, cursor->color, NULL);
    Window_LoadTiles(window);
}
