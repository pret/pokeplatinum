#include "text.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/narc.h"

#include "bg_window.h"
#include "font.h"
#include "graphics.h"
#include "heap.h"
#include "render_text.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#include "res/fonts/pl_font.naix"

static enum RenderResult TextPrinter_Render(TextPrinter *printer);
static u8 Text_CreatePrinterTask(SysTaskFunc taskFunc, TextPrinter *printer, u32 priority);
static void Text_DestroyPrinterTask(u8 printerID);
static void Text_ZeroPrinterIconGfx(TextPrinter *printer);
static void Text_FreePrinterIconGfx(TextPrinter *printer);
static u8 *Text_LoadScreenIndicatorGfx(void);

static void SysTask_RunTextPrinter(SysTask *task, void *data);

static const FontAttributes *sFontAttributesPtr = NULL;

static u8 sPausePrinter = FALSE;
static SysTask *sTextPrinterTasks[MAX_TEXT_PRINTERS] = { 0 };
static u16 sFontHalfRowLookupTable[4 * 4 * 4 * 4];
static u16 sBgColor, sFgColor, sShadowColor;

void Text_SetFontAttributesPtr(const FontAttributes *fontAttributes)
{
    sFontAttributesPtr = fontAttributes;
}

static u8 Text_CreatePrinterTask(SysTaskFunc taskFunc, TextPrinter *printer, u32 priority)
{
    int i;
    for (i = 0; i < MAX_TEXT_PRINTERS; i++) {
        if (sTextPrinterTasks[i] == NULL) {
            sTextPrinterTasks[i] = SysTask_CreateOnPrintQueue(taskFunc, printer, priority);

            if (sTextPrinterTasks[i] == NULL) {
                i = MAX_TEXT_PRINTERS;
            }

            break;
        }
    }

    return i;
}

static void Text_DestroyPrinterTask(u8 printerID)
{
    GF_ASSERT(printerID < MAX_TEXT_PRINTERS);
    GF_ASSERT(sTextPrinterTasks[printerID] != NULL);

    if (printerID < MAX_TEXT_PRINTERS && sTextPrinterTasks[printerID] != NULL) {
        TextPrinter *printer = SysTask_GetParam(sTextPrinterTasks[printerID]);

        if (printer) {
            Text_FreePrinterIconGfx(printer);
            Heap_Free(printer);
        }

        SysTask_Done(sTextPrinterTasks[printerID]);
        sTextPrinterTasks[printerID] = NULL;
    }
}

static BOOL Text_IsPrinterTaskActive(u8 printerID)
{
    return sTextPrinterTasks[printerID] != NULL;
}

void Text_ResetAllPrinters()
{
    for (int i = 0; i < MAX_TEXT_PRINTERS; i++) {
        sTextPrinterTasks[i] = NULL;
    }
}

u8 Text_IsPrinterActive(u8 printerID)
{
    return Text_IsPrinterTaskActive(printerID);
}

void Text_RemovePrinter(u8 printerID)
{
    Text_DestroyPrinterTask(printerID);
}

u8 Text_AddPrinterWithParams(Window *window, u32 fontID, const String *string, u32 xOffset, u32 yOffset, u32 renderDelay, TextPrinterCallback callback)
{
    TextPrinterTemplate template;

    template.toPrint.string = string;
    template.window = window;
    template.fontID = fontID;
    template.x = xOffset;
    template.y = yOffset;
    template.currX = xOffset;
    template.currY = yOffset;
    template.letterSpacing = sFontAttributesPtr[fontID].letterSpacing;
    template.lineSpacing = sFontAttributesPtr[fontID].lineSpacing;
    template.dummy14 = sFontAttributesPtr[fontID].dummy;
    template.fgColor = sFontAttributesPtr[fontID].fgColor;
    template.bgColor = sFontAttributesPtr[fontID].bgColor;
    template.shadowColor = sFontAttributesPtr[fontID].shadowColor;
    template.glyphTable = 0;
    template.dummy1A = 0;
    template.cacheColor = 0xFF;

    return Text_AddPrinter(&template, renderDelay, callback);
}

u8 Text_AddPrinterWithParamsAndColor(Window *window, u32 fontID, const String *string, u32 xOffset, u32 yOffset, u32 renderDelay, TextColor color, TextPrinterCallback callback)
{
    TextPrinterTemplate template;

    template.toPrint.string = string;
    template.window = window;
    template.fontID = fontID;
    template.x = xOffset;
    template.y = yOffset;
    template.currX = xOffset;
    template.currY = yOffset;
    template.letterSpacing = sFontAttributesPtr[fontID].letterSpacing;
    template.lineSpacing = sFontAttributesPtr[fontID].lineSpacing;
    template.dummy14 = sFontAttributesPtr[fontID].dummy;
    template.fgColor = GET_TEXT_FG_COLOR(color);
    template.shadowColor = GET_TEXT_SHADOW_COLOR(color);
    template.bgColor = GET_TEXT_BG_COLOR(color);
    template.glyphTable = 0;
    template.dummy1A = 0;
    template.cacheColor = 0xFF;

    return Text_AddPrinter(&template, renderDelay, callback);
}

u8 Text_AddPrinterWithParamsColorAndSpacing(Window *window, u32 fontID, const String *string, u32 xOffset, u32 yOffset, u32 renderDelay, TextColor color, u32 letterSpacing, u32 lineSpacing, TextPrinterCallback callback)
{
    TextPrinterTemplate template;

    template.toPrint.string = string;
    template.window = window;
    template.fontID = fontID;
    template.x = xOffset;
    template.y = yOffset;
    template.currX = xOffset;
    template.currY = yOffset;
    template.letterSpacing = letterSpacing;
    template.lineSpacing = lineSpacing;
    template.dummy14 = sFontAttributesPtr[fontID].dummy;
    template.fgColor = GET_TEXT_FG_COLOR(color);
    template.shadowColor = GET_TEXT_SHADOW_COLOR(color);
    template.bgColor = GET_TEXT_BG_COLOR(color);
    template.glyphTable = 0;
    template.dummy1A = 0;
    template.cacheColor = 0xFF;

    return Text_AddPrinter(&template, renderDelay, callback);
}

u8 Text_AddPrinter(const TextPrinterTemplate *template, u32 renderDelay, TextPrinterCallback callback)
{
    if (sFontAttributesPtr == NULL) {
        return 0xFF;
    }

    TextPrinter *printer = Heap_Alloc(HEAP_ID_SYSTEM, sizeof(TextPrinter));

    printer->active = TRUE;
    printer->state = 0;
    printer->textSpeedBottom = renderDelay;
    printer->delayCounter = 0;
    printer->scrollDistance = 0;
    printer->callbackResult = 0;

    for (int i = 0; i < 7; i++) {
        printer->substruct[i] = 0;
    }

    printer->template = *template;
    printer->template.toPrint.raw = String_GetData(printer->template.toPrint.string);
    printer->callback = callback;

    sPausePrinter = FALSE;
    Text_ZeroPrinterIconGfx(printer);

    if (renderDelay != TEXT_SPEED_NO_TRANSFER && renderDelay != TEXT_SPEED_INSTANT) {
        printer->textSpeedBottom--;
        printer->textSpeedTop = 1;
        printer->id = Text_CreatePrinterTask(SysTask_RunTextPrinter, printer, 1);
        return printer->id;
    }

    printer->textSpeedBottom = 0;
    printer->textSpeedTop = 0;

    u32 i = 0;
    Text_GenerateFontHalfRowLookupTable(template->fgColor, template->bgColor, template->shadowColor);

    while (i < 1024) {
        if (TextPrinter_Render(printer) == RENDER_FINISH) {
            break;
        }

        i++;
    }

    if (renderDelay != TEXT_SPEED_NO_TRANSFER) {
        Window_CopyToVRAM(printer->template.window);
    }

    Text_FreePrinterIconGfx(printer);
    Heap_Free(printer);

    return MAX_TEXT_PRINTERS;
}

static void SysTask_RunTextPrinter(SysTask *task, void *data)
{
    if (sPausePrinter) {
        return;
    }

    TextPrinter *printer = (TextPrinter *)data;

    if (printer->callbackResult == 0) {
        printer->callbackParam = 0;
        Text_GenerateFontHalfRowLookupTable(printer->template.fgColor, printer->template.bgColor, printer->template.shadowColor);

        switch (TextPrinter_Render(printer)) {
        case RENDER_PRINT:
            Window_CopyToVRAM(printer->template.window);
            // fall-through

        case RENDER_UPDATE:
            if (printer->callback != NULL) {
                printer->callbackResult = (printer->callback)(&printer->template, printer->callbackParam);
            }
            return;

        case RENDER_FINISH:
            Text_DestroyPrinterTask(printer->id);
            return;
        }
    } else {
        printer->callbackResult = (printer->callback)(&printer->template, printer->callbackParam);
    }
}

static enum RenderResult TextPrinter_Render(TextPrinter *printer)
{
    enum RenderResult result;

    do {
        result = Font_RenderText(printer->template.fontID, printer);
    } while (result == RENDER_REPEAT);

    return result;
}

void Text_GenerateFontHalfRowLookupTable(u8 fgColor, u8 bgColor, u8 shadowColor)
{
    u32 colors[4];

    colors[0] = 0;
    colors[1] = fgColor;
    colors[2] = shadowColor;
    colors[3] = bgColor;

    sBgColor = bgColor;
    sFgColor = fgColor;
    sShadowColor = shadowColor;

    u32 idx = 0;
    for (int i = 0; i < 4; i++) {
        for (int j = 0; j < 4; j++) {
            for (int k = 0; k < 4; k++) {
                for (int l = 0; l < 4; l++) {
                    sFontHalfRowLookupTable[idx++] = (colors[l] << 12) | (colors[k] << 8) | (colors[j] << 4) | (colors[i]);
                }
            }
        }
    }
}

void Text_DecompressGlyph(u8 *src, u8 *dst)
{
    u16 *src16 = (u16 *)src;
    u16 *dst16 = (u16 *)dst;

    dst16[0] = sFontHalfRowLookupTable[(u32)src16[0] >> 8];
    dst16[1] = sFontHalfRowLookupTable[(u32)src16[0] & 0xFF];
    dst16[2] = sFontHalfRowLookupTable[(u32)src16[1] >> 8];
    dst16[3] = sFontHalfRowLookupTable[(u32)src16[1] & 0xFF];
    dst16[4] = sFontHalfRowLookupTable[(u32)src16[2] >> 8];
    dst16[5] = sFontHalfRowLookupTable[(u32)src16[2] & 0xFF];
    dst16[6] = sFontHalfRowLookupTable[(u32)src16[3] >> 8];
    dst16[7] = sFontHalfRowLookupTable[(u32)src16[3] & 0xFF];
    dst16[8] = sFontHalfRowLookupTable[(u32)src16[4] >> 8];
    dst16[9] = sFontHalfRowLookupTable[(u32)src16[4] & 0xFF];
    dst16[10] = sFontHalfRowLookupTable[(u32)src16[5] >> 8];
    dst16[11] = sFontHalfRowLookupTable[(u32)src16[5] & 0xFF];
    dst16[12] = sFontHalfRowLookupTable[(u32)src16[6] >> 8];
    dst16[13] = sFontHalfRowLookupTable[(u32)src16[6] & 0xFF];
    dst16[14] = sFontHalfRowLookupTable[(u32)src16[7] >> 8];
    dst16[15] = sFontHalfRowLookupTable[(u32)src16[7] & 0xFF];
}

static void Text_ZeroPrinterIconGfx(TextPrinter *printer)
{
    printer->iconGfx = NULL;
}

static u8 *Text_LoadScreenIndicatorGfx(void)
{
    NNSG2dCharacterData *g2dCharData;

    u8 *gfx = Heap_Alloc(HEAP_ID_SYSTEM, 24 * 64); // These numbers are file dimensions. Curiously, this only loads the bottom-screen indicators.
    void *ncgr = Graphics_GetCharData(NARC_INDEX_GRAPHIC__PL_FONT, screen_indicators_NCGR, FALSE, &g2dCharData, HEAP_ID_SYSTEM);

    MI_CpuCopy32(g2dCharData->pRawData, gfx, 24 * 64);
    Heap_Free(ncgr);

    return gfx;
}

void Text_RenderScreenIndicator(TextPrinter *printer, u16 unusedX, u16 unusedY, u16 indicator)
{
    Window *window = printer->template.window;

    if (printer->iconGfx == NULL) {
        printer->iconGfx = Text_LoadScreenIndicatorGfx();
    }

    u8 *tiles = printer->iconGfx;
    tiles = &tiles[indicator * 24 * 16];
    unusedX = (Window_GetWidth(window) - 3) * 8;

    Window_BlitBitmapRect(window, tiles, 0, 0, 24, 32, unusedX, 0, 24, 32);
}

static void Text_FreePrinterIconGfx(TextPrinter *printer)
{
    if (printer->iconGfx) {
        Heap_Free(printer->iconGfx);
        printer->iconGfx = NULL;
    }
}
