#include "render_text.h"

#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"
#include "consts/sdat.h"

#include "charcode.h"
#include "core_sys.h"
#include "font.h"
#include "render_text.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_02018340.h"

#define SPEED_UP_ON_TOUCH_PRESS (gCoreSys.touchPressed && sRenderControlFlags.speedUpOnTouch)
#define SPEED_UP_ON_TOUCH_HOLD  (gCoreSys.touchHeld && sRenderControlFlags.speedUpOnTouch)

typedef struct RenderControlFlags {
    u8 canABSpeedUpPrint : 1;
    u8 : 1;
    u8 autoScroll : 1;
    u8 : 1;
    u8 speedUpOnTouch : 1;
    u8 speedUpAutoScroll : 1;
    u8 speedUpBattle : 1;
    u8 waitBattle : 1;
} RenderControlFlags;

static RenderControlFlags sRenderControlFlags;

enum RenderState {
    RENDER_STATE_HANDLE_CHAR = 0,
    RENDER_STATE_WAIT,
    RENDER_STATE_CLEAR,
    RENDER_STATE_START_SCROLL,
    RENDER_STATE_SCROLL,
    RENDER_STATE_DUMMY,
    RENDER_STATE_PAUSE,
};

enum RenderResult RenderText(TextPrinter *printer)
{
    TextPrinterSubstruct *substruct = (TextPrinterSubstruct *)printer->substruct;
    charcode_t currChar;

    switch (printer->state) {
    case RENDER_STATE_HANDLE_CHAR:
        if ((JOY_HELD(PAD_BUTTON_A | PAD_BUTTON_B) && substruct->speedUp) || SPEED_UP_ON_TOUCH_HOLD) {
            printer->delayCounter = 0;

            if (printer->textSpeedBottom != 0) {
                sRenderControlFlags.speedUpBattle = TRUE;
            }
        }

        if (printer->delayCounter && printer->textSpeedBottom) {
            printer->delayCounter--;

            if (sRenderControlFlags.canABSpeedUpPrint
                && (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || SPEED_UP_ON_TOUCH_PRESS)) {
                substruct->speedUp = TRUE;
                printer->delayCounter = 0;
            }

            return RENDER_UPDATE;
        }

        printer->delayCounter = printer->textSpeedBottom;
        currChar = *printer->template.toPrint.raw;
        printer->template.toPrint.raw++;

        GF_ASSERT(currChar != CHAR_COMPRESSED_MARK);

        switch (currChar) {
        case CHAR_EOS:
            return RENDER_FINISH;

        case CHAR_CR:
            printer->template.currX = printer->template.x;
            printer->template.currY += Font_GetAttribute(printer->template.fontID, 1) + printer->template.lineSpacing;
            return RENDER_REPEAT;

        case CHAR_PLACEHOLDER_BEGIN:
            printer->template.toPrint.raw++;
            return RENDER_REPEAT;

        case CHAR_FORMAT_ARG:
            printer->template.toPrint.raw--;
            currChar = CharCode_FormatArgType(printer->template.toPrint.raw);

            switch (currChar) {
            case CHAR_CONTROL_SET_COLOR: {
                u16 color = CharCode_FormatArgParam(printer->template.toPrint.raw, 0);

                if (color == CHAR_CONTROL_SET_COLOR_FROM_CACHE) {
                    u8 cacheColor = printer->template.cacheColor;

                    printer->template.cacheColor = (printer->template.fgColor - 1) / 2 + COLOR_CACHE_OFFSET;

                    if (!COLOR_CACHE_IS_VALID(cacheColor)) {
                        break;
                    }

                    color = cacheColor - COLOR_CACHE_OFFSET;
                } else if (color >= COLOR_CACHE_OFFSET) {
                    printer->template.cacheColor = color;
                    break;
                }

                printer->template.fgColor = color * 2 + 1;
                printer->template.shadowColor = color * 2 + 2;

                Text_GenerateFontHalfRowLookupTable(printer->template.fgColor, printer->template.bgColor, printer->template.shadowColor);
            } break;

            case CHAR_CONTROL_SCREEN_INDICATOR: {
                // 0 -> touch the bottom screen
                // 1 -> look at the bottom screen
                // 2 -> respond to the top screen
                // 3 -> look at the top screen
                u16 screen = CharCode_FormatArgParam(printer->template.toPrint.raw, 0);
                Text_RenderScreenIndicator(printer, printer->template.currX, printer->template.currY, screen);

                if (printer->textSpeedTop != 0) {
                    sub_0201A954(printer->template.window);
                }
            } break;

            case CHAR_CONTROL_PAUSE: {
                printer->delayCounter = CharCode_FormatArgParam(printer->template.toPrint.raw, 0);
                printer->template.toPrint.raw = CharCode_SkipFormatArg(printer->template.toPrint.raw);
                printer->state = RENDER_STATE_PAUSE;
                return RENDER_UPDATE;
            } break;

            case CHAR_CONTROL_CALLBACK:
                printer->callbackParam = CharCode_FormatArgParam(printer->template.toPrint.raw, 0);
                printer->template.toPrint.raw = CharCode_SkipFormatArg(printer->template.toPrint.raw);
                return RENDER_UPDATE;

            case CHAR_CONTROL_CURSOR_X:
                printer->template.currX = CharCode_FormatArgParam(printer->template.toPrint.raw, 0);
                break;

            case CHAR_CONTROL_CURSOR_Y:
                printer->template.currY = CharCode_FormatArgParam(printer->template.toPrint.raw, 0);
                break;

            case CHAR_CONTROL_SET_SIZE: {
                u16 percentScale = CharCode_FormatArgParam(printer->template.toPrint.raw, 0);

                switch (percentScale) {
                case 100:
                    printer->template.glyphTable = 0;
                    printer->template.dummy1A = 0;
                    break;
                case 200:
                    printer->template.glyphTable = 0xfffc;
                    printer->template.dummy1A = 0;
                    break;
                }
            } break;

            case CHAR_CONTROL_MOVE: {
                u16 param = CharCode_FormatArgParam(printer->template.toPrint.raw, 0);

                switch (param) {
                case 0xFE01: // wait to scroll
                    printer->state = RENDER_STATE_CLEAR;
                    TextPrinter_InitScrollArrowAnim(printer);
                    printer->template.toPrint.raw = CharCode_SkipFormatArg(printer->template.toPrint.raw);
                    return RENDER_UPDATE;
                case 0xFE00: // scroll
                    printer->state = RENDER_STATE_START_SCROLL;
                    TextPrinter_InitScrollArrowAnim(printer);
                    printer->template.toPrint.raw = CharCode_SkipFormatArg(printer->template.toPrint.raw);
                    return RENDER_UPDATE;
                }
            } break;
            }

            printer->template.toPrint.raw = CharCode_SkipFormatArg(printer->template.toPrint.raw);
            return RENDER_REPEAT;

        case CHAR_CONTROL_CLEAR:
            printer->state = RENDER_STATE_CLEAR;
            TextPrinter_InitScrollArrowAnim(printer);
            return RENDER_UPDATE;

        case CHAR_CONTROL_SCROLL:
            printer->state = RENDER_STATE_START_SCROLL;
            TextPrinter_InitScrollArrowAnim(printer);
            return RENDER_UPDATE;
        }

        const TextGlyph *glyph = Font_TryLoadGlyph(substruct->fontID, currChar);
        sub_0201AED0(printer->template.window,
            glyph->gfx,
            glyph->width,
            glyph->height,
            printer->template.currX,
            printer->template.currY,
            printer->template.glyphTable);

        printer->template.currX += glyph->width + printer->template.letterSpacing;
        return RENDER_PRINT;

    case RENDER_STATE_WAIT:
        if (TextPrinter_Wait(printer)) {
            TextPrinter_ClearScrollArrow(printer);
            printer->state = RENDER_STATE_HANDLE_CHAR;
        }

        return RENDER_UPDATE;

    case RENDER_STATE_CLEAR:
        if (TextPrinter_WaitWithScrollArrow(printer)) {
            TextPrinter_ClearScrollArrow(printer);
            BGL_FillWindow(printer->template.window, printer->template.bgColor);

            printer->template.currX = printer->template.x;
            printer->template.currY = printer->template.y;
            printer->state = RENDER_STATE_HANDLE_CHAR;
        }

        return RENDER_UPDATE;

    case RENDER_STATE_START_SCROLL:
        if (TextPrinter_WaitWithScrollArrow(printer)) {
            TextPrinter_ClearScrollArrow(printer);

            printer->scrollDistance = (Font_GetAttribute(printer->template.fontID, 1) + printer->template.lineSpacing);
            printer->template.currX = printer->template.x;
            printer->state = RENDER_STATE_SCROLL;
        }

        return RENDER_UPDATE;

    case RENDER_STATE_SCROLL:
        if (printer->scrollDistance) {
            // This cast here is ugly, but is necessary to match without declaring a separate variable just for 4.
            if ((int)printer->scrollDistance < 4) {
                sub_0201C04C(printer->template.window, 0, printer->scrollDistance, (printer->template.bgColor << 4) | printer->template.bgColor);
                printer->scrollDistance = 0;
            } else {
                sub_0201C04C(printer->template.window, 0, 4, (printer->template.bgColor << 4) | printer->template.bgColor);
                printer->scrollDistance -= 4;
            }

            sub_0201A954(printer->template.window);
        } else {
            printer->state = RENDER_STATE_HANDLE_CHAR;
        }

        return RENDER_UPDATE;

    case RENDER_STATE_DUMMY:
        printer->state = RENDER_STATE_HANDLE_CHAR;
        return RENDER_UPDATE;

    case RENDER_STATE_PAUSE:
        if (printer->delayCounter) {
            printer->delayCounter--;
        } else {
            printer->state = RENDER_STATE_HANDLE_CHAR;
        }

        return RENDER_UPDATE;
    }

    return RENDER_FINISH;
}

static u16 sScrollArrowBaseTile = 0;

void TextPrinter_SetScrollArrowBaseTile(u16 tile)
{
    sScrollArrowBaseTile = tile;
}

void TextPrinter_InitScrollArrowAnim(TextPrinter *printer)
{
    TextPrinterSubstruct *substruct = (TextPrinterSubstruct *)printer->substruct;

    if (sRenderControlFlags.autoScroll) {
        substruct->autoScrollDelay = 0;
    } else {
        substruct->scrollArrowYPosIdx = 0;
        substruct->scrollArrowDelay = 0;
    }
}

static const u8 sScrollArrowTileOffsets[] = { 0, 1, 2, 1 };

void TextPrinter_DrawScrollArrow(TextPrinter *printer)
{
    TextPrinterSubstruct *substruct = (TextPrinterSubstruct *)printer->substruct;

    if (sRenderControlFlags.autoScroll) {
        return;
    }

    if (substruct->scrollArrowDelay) {
        substruct->scrollArrowDelay--;
        return;
    }

    u8 bgID = sub_0201C290(printer->template.window);
    u8 x = sub_0201C29C(printer->template.window);
    u8 y = sub_0201C2A0(printer->template.window);
    u8 width = sub_0201C294(printer->template.window);
    u16 baseTile = sScrollArrowBaseTile;

    sub_02019CB8(printer->template.window->unk_00,
        bgID,
        baseTile + 18 + (sScrollArrowTileOffsets[substruct->scrollArrowYPosIdx] * 4),
        x + width + 1,
        y + 2,
        1,
        1,
        16);
    sub_02019CB8(printer->template.window->unk_00,
        bgID,
        baseTile + 19 + (sScrollArrowTileOffsets[substruct->scrollArrowYPosIdx] * 4),
        x + width + 2,
        y + 2,
        1,
        1,
        16);
    sub_02019CB8(printer->template.window->unk_00,
        bgID,
        baseTile + 20 + (sScrollArrowTileOffsets[substruct->scrollArrowYPosIdx] * 4),
        x + width + 1,
        y + 3,
        1,
        1,
        16);
    sub_02019CB8(printer->template.window->unk_00,
        bgID,
        baseTile + 21 + (sScrollArrowTileOffsets[substruct->scrollArrowYPosIdx] * 4),
        x + width + 2,
        y + 3,
        1,
        1,
        16);

    sub_02019448(printer->template.window->unk_00, bgID);
    substruct->scrollArrowDelay = 8;
    substruct->scrollArrowYPosIdx++;
}

void TextPrinter_ClearScrollArrow(TextPrinter *printer)
{
    u8 bgID = sub_0201C290(printer->template.window);
    u8 x = sub_0201C29C(printer->template.window);
    u8 y = sub_0201C2A0(printer->template.window);
    u8 width = sub_0201C294(printer->template.window);
    u16 baseTile = sScrollArrowBaseTile;

    sub_02019CB8(printer->template.window->unk_00,
        bgID,
        baseTile + 10,
        x + width + 1,
        y + 2,
        1,
        2,
        16);
    sub_02019CB8(printer->template.window->unk_00,
        bgID,
        baseTile + 11,
        x + width + 2,
        y + 2,
        1,
        2,
        16);
    sub_02019448(printer->template.window->unk_00, bgID);
}

static BOOL TextPrinter_Continue(TextPrinter *printer)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)
        || (gCoreSys.touchPressed && sRenderControlFlags.speedUpOnTouch)) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        sRenderControlFlags.waitBattle = TRUE;
        return TRUE;
    }

    return FALSE;
}

BOOL TextPrinter_WaitAutoMode(TextPrinter *printer)
{
    TextPrinterSubstruct *substruct = (TextPrinterSubstruct *)printer->substruct;
    if (substruct->autoScrollDelay == 100) {
        return TRUE;
    }

    substruct->autoScrollDelay++;
    if (sRenderControlFlags.speedUpAutoScroll) {
        return TextPrinter_Continue(printer);
    }

    return FALSE;
}

BOOL TextPrinter_WaitWithScrollArrow(TextPrinter *printer)
{
    if (sRenderControlFlags.autoScroll) {
        return TextPrinter_WaitAutoMode(printer);
    }

    TextPrinter_DrawScrollArrow(printer);
    return TextPrinter_Continue(printer);
}

BOOL TextPrinter_Wait(TextPrinter *printer)
{
    // Ugly casts here are necessary to match. GF moment.
    if (sRenderControlFlags.autoScroll) {
        return (u8)TextPrinter_WaitAutoMode(printer);
    }

    return (u8)TextPrinter_Continue(printer);
}

void RenderControlFlags_SetCanABSpeedUpPrint(BOOL val)
{
    sRenderControlFlags.canABSpeedUpPrint = val;
}

void RenderControlFlags_SetAutoScrollFlags(int flags)
{
    sRenderControlFlags.autoScroll = flags & 1;
    sRenderControlFlags.speedUpAutoScroll = (flags >> 1) & 1;
}

void RenderControlFlags_SetSpeedUpOnTouch(BOOL val)
{
    sRenderControlFlags.speedUpOnTouch = val;
}

u8 RenderControlFlags_GetSpeedUpBattle()
{
    return sRenderControlFlags.speedUpBattle;
}

void RenderControlFlags_ZeroSpeedUpBattle()
{
    sRenderControlFlags.speedUpBattle = FALSE;
}

u8 RenderControlFlags_GetWaitBattle()
{
    return sRenderControlFlags.waitBattle;
}

void RenderControlFlags_ZeroWaitBattle()
{
    sRenderControlFlags.waitBattle = FALSE;
}
