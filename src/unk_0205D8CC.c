#include "unk_0205D8CC.h"

#include <nitro.h>
#include <string.h>

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

    Font_LoadTextPalette(palLocation, 13 * 32, HEAP_ID_FIELD);
    Font_LoadScreenIndicatorsPalette(palLocation, 12 * 32, HEAP_ID_FIELD);
}

void FieldMessage_AddWindow(BgConfig *bgConfig, Window *window, u32 param2)
{
    if (param2 == 3) {
        Window_Add(bgConfig, window, 3, 2, 19, 27, 4, 12, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)));
    } else {
        Window_Add(bgConfig, window, 7, 2, 19, 27, 4, 12, (512 - (27 * 4)));
    }
}

void FieldMessage_DrawWindow(Window *window, const Options *options)
{
    LoadMessageBoxGraphics(window->bgConfig, Window_GetBgLayer(window), 1024 - (18 + 12), 10, Options_Frame(options), 4);
    FieldMessaage_FillWindowTilemap(window);
    Window_DrawMessageBoxWithScrollCursor(window, 0, 1024 - (18 + 12), 10);
}

void FieldMessaage_FillWindowTilemap(Window *window)
{
    Window_FillTilemap(window, 15);
}

u8 FieldMessage_Print(Window *window, Strbuf *strBuf, const Options *options, u8 canSkipDelay)
{
    u8 v0;

    RenderControlFlags_SetCanABSpeedUpPrint(canSkipDelay);
    RenderControlFlags_SetAutoScrollFlags(0);
    RenderControlFlags_SetSpeedUpOnTouch(0);

    v0 = Text_AddPrinterWithParams(window, FONT_MESSAGE, strBuf, 0, 0, Options_TextFrameDelay(options), NULL);
    return v0;
}

// used only in one instance
u8 FieldMessage_PrintWithParams(Window *window, Strbuf *strBuf, int fontID, int renderDelay, u8 canSkipDelay, BOOL autoScroll)
{
    RenderControlFlags_SetCanABSpeedUpPrint(canSkipDelay);
    RenderControlFlags_SetAutoScrollFlags(autoScroll);
    RenderControlFlags_SetSpeedUpOnTouch(0);

    return Text_AddPrinterWithParams(window, fontID, strBuf, 0, 0, renderDelay, NULL);
}

u8 FieldMessage_FinishedPrinting(u8 printerID)
{
    if (Text_IsPrinterActive(printerID) == 0) {
        return 1;
    }

    return 0;
}

void sub_0205DA1C(BgConfig *bgConfig, Window *param1, u16 param2, u16 param3)
{
    u16 v0, v1;

    if ((param2 == 0) || (param2 == 1)) {
        v0 = 9;
        v1 = 20;
    } else {
        v0 = 2;
        v1 = 27;
    }

    if (param3 == 3) {
        Window_Add(bgConfig, param1, 3, v0, 19, v1, 4, 9, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)));
    } else {
        Window_Add(bgConfig, param1, 7, v0, 19, v1, 4, 9, (512 - (27 * 4)));
    }
}

void sub_0205DA80(Window *window, u16 param1, u16 param2)
{
    LoadSignpostContentGraphics(window->bgConfig, Window_GetBgLayer(window), ((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)), 9, param1, param2, 4);
    Window_FillTilemap(window, 15);
    Window_DrawSignpost(window, 0, ((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)), 9, param1);
}
