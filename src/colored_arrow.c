#include "colored_arrow.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "bg_window.h"
#include "charcode.h"
#include "heap.h"
#include "string_gf.h"
#include "text.h"

ColoredArrow *ColoredArrow_New(u32 heapID)
{
    static const charcode_t chars[] = {
        CHAR_ARROW_MENU,
        CHAR_EOS,
    };
    ColoredArrow *arrow = Heap_Alloc(heapID, sizeof(ColoredArrow));

    if (arrow) {
        arrow->color = TEXT_COLOR(1, 2, 15);
        arrow->string = String_Init(4, heapID);
        String_CopyChars(arrow->string, chars);
    }

    return arrow;
}

void ColoredArrow_Free(ColoredArrow *arrow)
{
    GF_ASSERT(arrow != NULL);

    if (arrow) {
        if (arrow->string) {
            String_Free(arrow->string);
        }

        Heap_Free(arrow);
    }
}

void ColoredArrow_SetColor(ColoredArrow *arrow, TextColor color)
{
    GF_ASSERT(arrow != NULL);

    if (arrow) {
        arrow->color = color;
    }
}

void ColoredArrow_Print(const ColoredArrow *arrow, Window *window, u32 xOffset, u32 yOffset)
{
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, arrow->string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, arrow->color, NULL);
    Window_LoadTiles(window);
}
