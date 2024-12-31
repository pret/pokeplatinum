#include "field_message.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/window.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "render_text.h"
#include "render_window.h"
#include "strbuf.h"
#include "text.h"

void FieldMessage_LoadTextPalettes(u32 palLocation, u32 resetPrinters)
{
    if (resetPrinters == TRUE) {
        Text_ResetAllPrinters();
    }

    Font_LoadTextPalette(palLocation, PLTT_OFFSET(FIELD_MESSAGE_PALETTE_INDEX), HEAP_ID_FIELD);
    Font_LoadScreenIndicatorsPalette(palLocation, PLTT_OFFSET(12), HEAP_ID_FIELD);
}

void FieldMessage_AddWindow(BgConfig *bgConfig, Window *window, u32 bgLayer)
{
    if (bgLayer == BG_LAYER_MAIN_3) {
        Window_Add(bgConfig, window, BG_LAYER_MAIN_3, 2, 19, 27, 4, 12, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)));
    } else {
        Window_Add(bgConfig, window, BG_LAYER_SUB_3, 2, 19, 27, 4, 12, (512 - (27 * 4)));
    }
}

void FieldMessage_DrawWindow(Window *window, const Options *options)
{
    LoadMessageBoxGraphics(window->bgConfig, Window_GetBgLayer(window), 1024 - (18 + 12), 10, Options_Frame(options), 4);
    FieldMessaage_FillWindowTilemap(window);
    Window_DrawMessageBoxWithScrollCursor(window, FALSE, 1024 - (18 + 12), 10);
}

void FieldMessaage_FillWindowTilemap(Window *window)
{
    Window_FillTilemap(window, 15);
}

u8 FieldMessage_Print(Window *window, Strbuf *strBuf, const Options *options, u8 canSkipDelay)
{
    RenderControlFlags_SetCanABSpeedUpPrint(canSkipDelay);
    RenderControlFlags_SetAutoScrollFlags(FALSE);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);

    return Text_AddPrinterWithParams(window, FONT_MESSAGE, strBuf, 0, 0, Options_TextFrameDelay(options), NULL);
}

// used only in one instance
u8 FieldMessage_PrintWithParams(Window *window, Strbuf *strBuf, int fontID, int renderDelay, u8 canSkipDelay, BOOL autoScroll)
{
    RenderControlFlags_SetCanABSpeedUpPrint(canSkipDelay);
    RenderControlFlags_SetAutoScrollFlags(autoScroll);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);

    return Text_AddPrinterWithParams(window, fontID, strBuf, 0, 0, renderDelay, NULL);
}

u8 FieldMessage_FinishedPrinting(u8 printerID)
{
    if (Text_IsPrinterActive(printerID) == FALSE) {
        return TRUE;
    }

    return FALSE;
}

// used only in one instance
void FieldMessage_AddSignpostWindow(BgConfig *bgConfig, Window *window, u16 signpostType, u16 bgLayer)
{
    u16 tilemapLeft, width;

    if (signpostType == SIGNPOST_CITY_MAP || signpostType == SIGNPOST_ROUTE_MAP) {
        tilemapLeft = 9;
        width = 20;
    } else {
        tilemapLeft = 2;
        width = 27;
    }

    if (bgLayer == BG_LAYER_MAIN_3) {
        Window_Add(bgConfig, window, BG_LAYER_MAIN_3, tilemapLeft, 19, width, 4, 9, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)));
    } else {
        Window_Add(bgConfig, window, BG_LAYER_SUB_3, tilemapLeft, 19, width, 4, 9, (512 - (27 * 4)));
    }
}

// used only in one instance, together with FieldMessage_AddSignpostWindow
void FieldMessage_LoadAndDrawSignpost(Window *window, u16 signpostType, u16 signpostNARCMemberIdx)
{
    LoadSignpostContentGraphics(window->bgConfig, Window_GetBgLayer(window), ((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)), 9, signpostType, signpostNARCMemberIdx, HEAP_ID_FIELD);
    Window_FillTilemap(window, 15);
    Window_DrawSignpost(window, FALSE, ((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)), 9, signpostType);
}
