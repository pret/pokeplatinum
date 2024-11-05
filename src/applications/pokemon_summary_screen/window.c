#include "applications/pokemon_summary_screen/window.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_02090800.h"

#include "applications/pokemon_summary_screen/main.h"
#include "applications/pokemon_summary_screen/sprite.h"
#include "text/gmm/message_bank_pokemon_summary_screen.h"
#include "text/pl_msg.naix"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "message.h"
#include "move_table.h"
#include "pokemon.h"
#include "render_window.h"
#include "ribbon.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_0200C440.h"
#include "unk_0207A274.h"
#include "unk_02092494.h"
#include "unk_02094EDC.h"

static void PrintTextToWindow(PokemonSummaryScreen *summaryScreen, Window *window, TextColor color, enum PSSTextAlignment alignment);
static void sub_02090158(PokemonSummaryScreen *param0, u32 param1, u32 param2, TextColor param3, u32 param4);
static void sub_020902B0(PokemonSummaryScreen *param0);
static void PrintMoveInfo(PokemonSummaryScreen *param0, u32 param1);
static void sub_02090578(PokemonSummaryScreen *param0);
static void sub_020908CC(PokemonSummaryScreen *param0);
static void sub_0209093C(PokemonSummaryScreen *param0);
static void sub_02090BDC(PokemonSummaryScreen *param0);
static void sub_02090CD4(PokemonSummaryScreen *param0);
static void sub_02090D90(PokemonSummaryScreen *param0);
static void sub_02090E4C(PokemonSummaryScreen *param0);
static void sub_02090EC8(PokemonSummaryScreen *param0);

static const WindowTemplate sPSSStaticWindowTemplates[] = {
    [PSS_STATIC_WINDOW_0] = { 0x1, 0x1, 0x0, 0xD, 0x2, 0xF, 0x1 },
    [PSS_STATIC_WINDOW_1] = { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x1B },
    [PSS_STATIC_WINDOW_2] = { 0x1, 0x1, 0x0, 0xE, 0x2, 0xF, 0x31 },
    [PSS_STATIC_WINDOW_3] = { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x4D },
    [PSS_STATIC_WINDOW_4] = { 0x1, 0x1, 0x0, 0x9, 0x2, 0xF, 0x63 },
    [PSS_STATIC_WINDOW_5] = { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x75 },
    [PSS_WINDOW_ITEM_LABEL] = { 0x1, 0x1, 0x14, 0x6, 0x2, 0xF, 0x8B },
    [PSS_STATIC_WINDOW_7] = { 0x1, 0xE, 0x5, 0x9, 0x2, 0xF, 0x97 },
    [PSS_STATIC_WINDOW_8] = { 0x1, 0xE, 0x7, 0x5, 0x2, 0xF, 0xA9 },
    [PSS_STATIC_WINDOW_9] = { 0x1, 0xE, 0x9, 0x5, 0x2, 0xF, 0xB3 },
    [PSS_STATIC_WINDOW_10] = { 0x1, 0xE, 0xB, 0x5, 0x2, 0xF, 0xBD },
    [PSS_STATIC_WINDOW_11] = { 0x1, 0xE, 0xD, 0x5, 0x2, 0xF, 0xC7 },
    [PSS_STATIC_WINDOW_12] = { 0x1, 0xE, 0xF, 0xF, 0x2, 0xF, 0xD1 },
    [PSS_STATIC_WINDOW_13] = { 0x1, 0xE, 0x13, 0xC, 0x2, 0xF, 0xEF },
    [PSS_STATIC_WINDOW_14] = { 0x1, 0x13, 0x15, 0x3, 0x2, 0xF, 0x107 },
    [PSS_STATIC_WINDOW_15] = { 0x1, 0x12, 0x4, 0x2, 0x2, 0xF, 0x10D },
    [PSS_STATIC_WINDOW_16] = { 0x1, 0x10, 0x7, 0x6, 0x2, 0xF, 0x111 },
    [PSS_STATIC_WINDOW_17] = { 0x1, 0x10, 0x9, 0x6, 0x2, 0xF, 0x11D },
    [PSS_STATIC_WINDOW_18] = { 0x1, 0x10, 0xB, 0x6, 0x2, 0xF, 0x129 },
    [PSS_STATIC_WINDOW_19] = { 0x1, 0x10, 0xD, 0x6, 0x2, 0xF, 0x135 },
    [PSS_STATIC_WINDOW_20] = { 0x1, 0x10, 0xF, 0x6, 0x2, 0xF, 0x141 },
    [PSS_STATIC_WINDOW_21] = { 0x1, 0xE, 0x12, 0x6, 0x2, 0xF, 0x14D },
    [PSS_STATIC_WINDOW_22] = { 0x1, 0xE, 0x14, 0x5, 0x2, 0xF, 0x159 },
    [PSS_STATIC_WINDOW_23] = { 0x1, 0x1, 0x16, 0x6, 0x2, 0xF, 0x163 },
    [PSS_STATIC_WINDOW_24] = { 0x1, 0x15, 0x14, 0x5, 0x2, 0xF, 0x16F },
    [PSS_STATIC_WINDOW_25] = { 0x1, 0x1, 0x8, 0x6, 0x2, 0xF, 0x179 },
    [PSS_WINDOW_MOVE_POWER] = { 0x1, 0x1, 0xA, 0x6, 0x2, 0xF, 0x185 },
    [PSS_WINDOW_MOVE_ACCURACY] = { 0x1, 0x1, 0xC, 0x8, 0x2, 0xF, 0x191 },
    [PSS_STATIC_WINDOW_28] = { 0x1, 0x12, 0xB, 0x9, 0x2, 0xF, 0x1A1 },
    [PSS_STATIC_WINDOW_29] = { 0x1, 0x2, 0xD, 0xC, 0x2, 0xF, 0x1B3 },
    [PSS_STATIC_WINDOW_30] = { 0x1, 0xE, 0x15, 0xC, 0x2, 0xF, 0x1CB },
    [PSS_STATIC_WINDOW_31] = { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x1E3 },
    [PSS_WINDOW_ITEM_NAME] = { 0x1, 0x1, 0x16, 0xC, 0x2, 0xF, 0x1F9 },
    [PSS_WINDOW_MON_LEVEL] = { 0x1, 0x1, 0x5, 0x6, 0x2, 0xF, 0x211 },
    [PSS_WINDOW_MON_NICKNAME] = { 0x1, 0x3, 0x3, 0x9, 0x2, 0xF, 0x21D },
    [PSS_WINDOW_BUTTON_PROMPT] = { 0x1, 0x1A, 0x0, 0x6, 0x2, 0xF, 0x22F }
};

static const WindowTemplate Unk_020F4E20[] = {
    { 0x1, 0x18, 0x5, 0x6, 0x2, 0xF, 0x23B },
    { 0x1, 0x17, 0x7, 0x8, 0x2, 0xF, 0x247 },
    { 0x1, 0x17, 0xB, 0x8, 0x2, 0xF, 0x257 },
    { 0x1, 0x19, 0xD, 0x4, 0x2, 0xF, 0x267 },
    { 0x1, 0x18, 0x11, 0x6, 0x2, 0xF, 0x271 },
    { 0x1, 0x18, 0x15, 0x6, 0x2, 0xF, 0x27F }
};

static const WindowTemplate Unk_020F4DB0[] = {
    { 0x1, 0xE, 0x5, 0x11, 0x12, 0xF, 0x23B }
};

static const WindowTemplate Unk_020F4E50[] = {
    { 0x1, 0x17, 0x4, 0x7, 0x2, 0xF, 0x23B },
    { 0x1, 0x19, 0x7, 0x3, 0x2, 0xF, 0x249 },
    { 0x1, 0x19, 0x9, 0x3, 0x2, 0xF, 0x24F },
    { 0x1, 0x19, 0xB, 0x3, 0x2, 0xF, 0x255 },
    { 0x1, 0x19, 0xD, 0x3, 0x2, 0xF, 0x25B },
    { 0x1, 0x19, 0xF, 0x3, 0x2, 0xF, 0x261 },
    { 0x1, 0x15, 0x12, 0xB, 0x2, 0xF, 0x267 },
    { 0x1, 0xE, 0x14, 0x12, 0x4, 0xF, 0x27D }
};

static const WindowTemplate Unk_020F4E90[] = {
    { 0x1, 0x15, 0x4, 0xB, 0x4, 0xF, 0x23B },
    { 0x1, 0x15, 0x8, 0xB, 0x4, 0xF, 0x267 },
    { 0x1, 0x15, 0xC, 0xB, 0x4, 0xF, 0x293 },
    { 0x1, 0x15, 0x10, 0xB, 0x4, 0xF, 0x2BF },
    { 0x1, 0x15, 0x14, 0xB, 0x4, 0xF, 0x2EB },
    { 0x1, 0xC, 0xA, 0x3, 0x2, 0xF, 0x317 },
    { 0x1, 0xC, 0xC, 0x3, 0x2, 0xF, 0x31D },
    { 0x1, 0x1, 0xE, 0xF, 0xA, 0xF, 0x323 }
};

static const WindowTemplate Unk_020F4DF0[] = {
    { 0x1, 0x15, 0x4, 0xB, 0x4, 0xF, 0x23B },
    { 0x1, 0x15, 0x8, 0xB, 0x4, 0xF, 0x267 },
    { 0x1, 0x15, 0xC, 0xB, 0x4, 0xF, 0x293 },
    { 0x1, 0x15, 0x10, 0xB, 0x4, 0xF, 0x2BF },
    { 0x1, 0x15, 0x14, 0xB, 0x4, 0xF, 0x2EB },
    { 0x1, 0x1, 0x12, 0xF, 0x6, 0xF, 0x317 }
};

static const WindowTemplate Unk_020F4DD0[] = {
    { 0x1, 0x1A, 0x15, 0x5, 0x2, 0xF, 0x23B },
    { 0x1, 0x18, 0xF, 0x7, 0x2, 0xF, 0x245 },
    { 0x1, 0x1, 0x12, 0x15, 0x2, 0xF, 0x253 },
    { 0x1, 0x1, 0x14, 0x1E, 0x4, 0xF, 0x27D }
};

static const WindowTemplate Unk_020F4DB8[] = {
    { 0x1, 0x1A, 0x0, 0x5, 0x2, 0xF, 0x23B },
    { 0x1, 0x1, 0x14, 0xC, 0x4, 0xF, 0x24D },
    { 0x1, 0x2, 0x15, 0x1B, 0x2, 0xE, 0x27D }
};

void sub_0208FCF8(PokemonSummaryScreen *param0)
{
    u16 v0;

    for (v0 = 0; v0 < 36; v0++) {
        Window_AddFromTemplate(param0->bgConfig, &param0->staticWindows[v0], &sPSSStaticWindowTemplates[v0]);
        Window_FillTilemap(&param0->staticWindows[v0], 0);
    }

    sub_020902B0(param0);
    sub_0208FEA4(param0);
    sub_0208FF3C(param0);
    sub_0208FFE0(param0);
}

void sub_0208FD40(PokemonSummaryScreen *param0)
{
    const WindowTemplate *v0;
    u32 v1;

    switch (param0->page) {
    case 0:
        v0 = Unk_020F4E20;
        param0->numExtraWindows = 6;
        break;
    case 1:
        v0 = Unk_020F4DB0;
        param0->numExtraWindows = 1;
        break;
    case 2:
        v0 = Unk_020F4E50;
        param0->numExtraWindows = 8;
        break;
    case 3:
        v0 = Unk_020F4E90;
        param0->numExtraWindows = 8;
        break;
    case 5:
        v0 = Unk_020F4DF0;
        param0->numExtraWindows = 6;
        break;
    case 6:
        v0 = Unk_020F4DD0;
        param0->numExtraWindows = 4;
        break;
    case 4:
    case 7:
        if ((param0->data->mode != 3) && (param0->data->mode != 4)) {
            return;
        }

        v0 = Unk_020F4DB8;
        param0->numExtraWindows = 3;
        break;
    default:
        return;
    }

    param0->extraWindows = Window_New(19, param0->numExtraWindows);

    for (v1 = 0; v1 < param0->numExtraWindows; v1++) {
        Window_AddFromTemplate(param0->bgConfig, &param0->extraWindows[v1], &v0[v1]);
    }
}

void PokemonSummaryScreen_RemoveExtraWindows(PokemonSummaryScreen *summaryScreen)
{
    switch (summaryScreen->page) {
    case PSS_PAGE_INFO:
    case PSS_PAGE_MEMO:
    case PSS_PAGE_SKILLS:
    case PSS_PAGE_BATTLE_MOVES:
    case PSS_PAGE_CONTEST_MOVES:
    case PSS_PAGE_RIBBONS:
        break;
    case PSS_PAGE_CONDITION:
    case PSS_PAGE_EXIT:
        if (summaryScreen->data->mode != PSS_MODE_POFFIN && summaryScreen->data->mode != PSS_MODE_CONDITION) {
            return;
        }
        break;
    default:
        return;
    }

    Windows_Delete(summaryScreen->extraWindows, summaryScreen->numExtraWindows);
}

void PokemonSummaryScreen_RemoveWindows(PokemonSummaryScreen *summaryScreen)
{
    PokemonSummaryScreen_RemoveExtraWindows(summaryScreen);

    for (u32 i = 0; i < PSS_STATIC_WINDOW_MAX; i++) {
        Window_Remove(&summaryScreen->staticWindows[i]);
    }
}

void sub_0208FEA4(PokemonSummaryScreen *param0)
{
    Window *v0;
    u32 v1;

    v0 = &param0->staticWindows[34];

    Window_FillTilemap(v0, 0);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->monData.nickname, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    if (param0->monData.showGender == 0) {
        if (param0->monData.gender == 0) {
            MessageLoader_GetStrbuf(param0->msgLoader, 1, param0->strbuf);
            PrintTextToWindow(param0, v0, TEXT_COLOR(3, 4, 0), PSS_ALIGNMENT_RIGHT);
        } else if (param0->monData.gender == 1) {
            MessageLoader_GetStrbuf(param0->msgLoader, 2, param0->strbuf);
            PrintTextToWindow(param0, v0, TEXT_COLOR(5, 6, 0), PSS_ALIGNMENT_RIGHT);
        }
    }

    Window_ScheduleCopyToVRAM(v0);
}

void sub_0208FF3C(PokemonSummaryScreen *param0)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->staticWindows[33];

    Window_FillTilemap(v0, 0);

    if (param0->monData.isEgg == 0) {
        sub_0200C578(param0->unk_684, 1, v0, 0, 5);

        v1 = MessageLoader_GetNewStrbuf(param0->msgLoader, 3);

        StringTemplate_SetNumber(param0->strFormatter, 0, param0->monData.level, 3, 0, 1);
        StringTemplate_Format(param0->strFormatter, param0->strbuf, v1);
        Strbuf_Free(v1);
        Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strbuf, 16, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    Window_ScheduleCopyToVRAM(v0);
}

void sub_0208FFE0(PokemonSummaryScreen *param0)
{
    Strbuf *v0;

    Window_FillTilemap(&param0->staticWindows[32], 0);

    if (param0->monData.heldItem != 0) {
        StringTemplate_SetItemName(param0->strFormatter, 0, param0->monData.heldItem);
        v0 = MessageLoader_GetNewStrbuf(param0->msgLoader, 5);
        StringTemplate_Format(param0->strFormatter, param0->strbuf, v0);
        Strbuf_Free(v0);
    } else {
        MessageLoader_GetStrbuf(param0->msgLoader, 6, param0->strbuf);
    }

    PrintTextToWindow(param0, &param0->staticWindows[32], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[6]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[32]);
}

void PokemonSummaryScreen_ClearAndPrintButtonPrompt(PokemonSummaryScreen *summaryScreen, u32 entryID)
{
    Window_FillTilemap(&summaryScreen->staticWindows[PSS_WINDOW_BUTTON_PROMPT], 0);
    sub_02090158(summaryScreen, 35, entryID, TEXT_COLOR(15, 14, 0), 0);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_BUTTON_PROMPT]);
}

static BOOL sub_02090098(PokemonSummaryScreen *param0)
{
    if ((param0->monData.OTID == param0->data->OTID) && (param0->monData.OTGender == param0->data->OTGender) && (Strbuf_Compare(param0->monData.OTName, param0->playerName) == 0)) {
        return 1;
    }

    return 0;
}

static void PrintTextToWindow(PokemonSummaryScreen *summaryScreen, Window *window, TextColor color, enum PSSTextAlignment alignment)
{
    u8 strWidth, windowWidth, xOffset;

    switch (alignment) {
    case PSS_ALIGNMENT_LEFT:
        xOffset = 0;
        break;
    case PSS_ALIGNMENT_RIGHT:
        strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
        windowWidth = Window_GetWidth(window) * 8;
        xOffset = windowWidth - strWidth;
        break;
    case PSS_ALIGNMENT_CENTER:
        strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
        windowWidth = Window_GetWidth(window) * 8;
        xOffset = (windowWidth - strWidth) / 2;
        break;
    }

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
}

static void sub_02090158(PokemonSummaryScreen *param0, u32 param1, u32 entryID, TextColor param3, u32 param4)
{
    u8 v0;
    u8 v1;
    u8 v2;

    MessageLoader_GetStrbuf(param0->msgLoader, entryID, param0->strbuf);
    PrintTextToWindow(param0, &param0->staticWindows[param1], param3, param4);
}

static void SetAndFormatNumberBuf(PokemonSummaryScreen *summaryScreen, u32 entryID, u32 number, u8 digits, u8 paddingMode)
{
    Strbuf *buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, entryID);
    StringTemplate_SetNumber(summaryScreen->strFormatter, 0, number, digits, paddingMode, CHARSET_MODE_EN);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
    Strbuf_Free(buf);
}

static void PrintMovePPInfo(PokemonSummaryScreen *summaryScreen, u32 moveIndex, u32 slashEntryID, u32 curPPEntryID, u32 maxPPEntryID, u16 curPP, u16 maxPP, u8 digits, u8 xOffset, u8 yOffset)
{
    Window *window = &summaryScreen->extraWindows[moveIndex];

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, slashEntryID, summaryScreen->strbuf);
    u32 strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
    u16 curPPXOffset = xOffset - strWidth / 2;
    u16 maxPPXOffset = curPPXOffset + strWidth;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, curPPXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    SetAndFormatNumberBuf(summaryScreen, curPPEntryID, curPP, digits, PADDING_MODE_NONE);

    strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, curPPXOffset - strWidth, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    SetAndFormatNumberBuf(summaryScreen, maxPPEntryID, maxPP, digits, PADDING_MODE_NONE);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, maxPPXOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
}

static void sub_020902B0(PokemonSummaryScreen *param0)
{
    sub_02090158(param0, 0, 7, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 1, 23, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 2, 109, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 3, 126, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 4, 128, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 5, 157, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 6, 4, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 7, 8, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 8, 10, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 9, 12, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 10, 13, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 11, 15, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 12, 17, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 13, 19, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 15, 110, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 16, 111, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 17, 112, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 18, 113, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 19, 114, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 20, 115, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 21, 116, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 22, 127, TEXT_COLOR(15, 14, 0), 0);

    {
        MessageLoader_GetStrbuf(param0->msgLoader, 146, param0->strbuf);
        Text_AddPrinterWithParamsAndColor(&param0->staticWindows[24], FONT_SYSTEM, param0->strbuf, 0, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    }

    sub_02090158(param0, 25, 149, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 26, 147, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 27, 148, TEXT_COLOR(15, 14, 0), 0);
    sub_02090158(param0, 28, 162, TEXT_COLOR(15, 14, 0), 2);
    sub_02090158(param0, 29, 160, TEXT_COLOR(1, 2, 0), 2);
    sub_02090158(param0, 30, 182, TEXT_COLOR(1, 2, 0), 0);
    sub_02090158(param0, 31, 179, TEXT_COLOR(15, 14, 0), 0);
}

void sub_020904C4(PokemonSummaryScreen *param0)
{
    Bg_FillTilemapRect(param0->bgConfig, 1, 0, 0, 0, 32, 2, 16);
    Bg_FillTilemapRect(param0->bgConfig, 1, 0, 14, 2, 18, 22, 16);

    switch (param0->page) {
    case 0:
        sub_02090578(param0);
        break;
    case 1:
        sub_020908CC(param0);
        break;
    case 2:
        sub_0209093C(param0);
        break;
    case 4:
        sub_02090BDC(param0);
        break;
    case 3:
        sub_02090CD4(param0);
        break;
    case 5:
        sub_02090D90(param0);
        break;
    case 6:
        sub_02090E4C(param0);
        break;
    case 7:
        sub_02090EC8(param0);
        break;
    }
}

static void sub_02090578(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[0]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[7]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[8]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[9]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[10]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[11]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[12]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[13]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[14]);

    Window_FillTilemap(&param0->extraWindows[0], 0);
    Window_FillTilemap(&param0->extraWindows[1], 0);
    Window_FillTilemap(&param0->extraWindows[2], 0);
    Window_FillTilemap(&param0->extraWindows[3], 0);
    Window_FillTilemap(&param0->extraWindows[4], 0);
    Window_FillTilemap(&param0->extraWindows[5], 0);

    {
        u32 v0 = sub_0207A294(param0->data->dexMode, param0->monData.species);

        if (v0 != 0) {
            SetAndFormatNumberBuf(param0, 9, v0, 3, PADDING_MODE_ZEROES);
        } else {
            MessageLoader_GetStrbuf(param0->msgLoader, 22, param0->strbuf);
        }
    }

    if (param0->monData.isShiny == 0) {
        PrintTextToWindow(param0, &param0->extraWindows[0], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);
    } else {
        PrintTextToWindow(param0, &param0->extraWindows[0], TEXT_COLOR(5, 6, 0), PSS_ALIGNMENT_CENTER);
    }

    {
        u32 v1 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->monData.speciesName, 0);
        u32 v2 = (param0->extraWindows[1].width * 8 - v1) / 2;

        Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, param0->monData.speciesName, v2, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    {
        u32 v3 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->monData.OTName, 0);
        u32 v4 = (param0->extraWindows[2].width * 8 - v3) / 2;

        if (param0->monData.OTGender == 0) {
            Text_AddPrinterWithParamsAndColor(
                &param0->extraWindows[2], FONT_SYSTEM, param0->monData.OTName, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
        } else {
            Text_AddPrinterWithParamsAndColor(
                &param0->extraWindows[2], FONT_SYSTEM, param0->monData.OTName, v4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(5, 6, 0), NULL);
        }
    }

    SetAndFormatNumberBuf(param0, 16, (param0->monData.OTID & 0xffff), 5, PADDING_MODE_ZEROES);
    PrintTextToWindow(param0, &param0->extraWindows[3], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);
    SetAndFormatNumberBuf(param0, 18, param0->monData.curExp, 7, PADDING_MODE_SPACES);
    PrintTextToWindow(param0, &param0->extraWindows[4], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);

    if (param0->monData.level < 100) {
        SetAndFormatNumberBuf(param0, 21, param0->monData.nextLevelExp - param0->monData.curExp, 7, PADDING_MODE_SPACES);
    } else {
        SetAndFormatNumberBuf(param0, 21, 0, 7, PADDING_MODE_SPACES);
    }

    PrintTextToWindow(param0, &param0->extraWindows[5], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[1]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[2]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[3]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[4]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[5]);
}

static void sub_02090800(Window *param0, Pokemon *param1, BOOL param2)
{
    PokemonInfoDisplayStruct *v0 = sub_02092494(param1, param2, 19);

    if (v0->unk_14.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_14.unk_04, 0, 0 + (v0->unk_14.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    if (v0->unk_1C.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_1C.unk_04, 0, 0 + (v0->unk_1C.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    if (v0->unk_24.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_24.unk_04, 0, 0 + (v0->unk_24.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    if (v0->unk_2C.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_2C.unk_04, 0, 0 + (v0->unk_2C.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    if (v0->unk_34.unk_04 != NULL) {
        Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0->unk_34.unk_04, 0, 0 + (v0->unk_34.unk_00 - 1) * 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    sub_0209282C(v0);
}

static void sub_020908CC(PokemonSummaryScreen *param0)
{
    Strbuf *v0;

    Window_ScheduleCopyToVRAM(&param0->staticWindows[1]);
    Window_FillTilemap(&param0->extraWindows[0], 0);

    {
        void *v1 = PokemonSummaryScreen_MonData(param0);
        BOOL v2 = sub_02090098(param0);

        if (param0->data->dataType == 2) {
            {
                Pokemon *v3 = Pokemon_New(19);

                Pokemon_FromBoxPokemon(v1, v3);
                sub_02090800(&param0->extraWindows[0], v3, v2);
                Heap_FreeToHeap(v3);
            }
        } else {
            sub_02090800(&param0->extraWindows[0], v1, v2);
        }
    }

    Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
}

static void sub_0209093C(PokemonSummaryScreen *param0)
{
    u32 v0;

    Window_ScheduleCopyToVRAM(&param0->staticWindows[2]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[15]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[16]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[17]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[18]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[19]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[20]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[21]);

    Window_FillTilemap(&param0->extraWindows[0], 0);
    Window_FillTilemap(&param0->extraWindows[1], 0);
    Window_FillTilemap(&param0->extraWindows[2], 0);
    Window_FillTilemap(&param0->extraWindows[3], 0);
    Window_FillTilemap(&param0->extraWindows[4], 0);
    Window_FillTilemap(&param0->extraWindows[5], 0);
    Window_FillTilemap(&param0->extraWindows[6], 0);
    Window_FillTilemap(&param0->extraWindows[7], 0);

    v0 = Window_GetWidth(&param0->extraWindows[0]) * 8;

    PrintMovePPInfo(param0, 0, 117, 119, 118, param0->monData.curHP, param0->monData.maxHP, 3, v0 / 2, 0);
    SetAndFormatNumberBuf(param0, 120, param0->monData.attack, 3, PADDING_MODE_NONE);
    PrintTextToWindow(param0, &param0->extraWindows[1], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);
    SetAndFormatNumberBuf(param0, 121, param0->monData.defense, 3, PADDING_MODE_NONE);
    PrintTextToWindow(param0, &param0->extraWindows[2], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);
    SetAndFormatNumberBuf(param0, 122, param0->monData.spAttack, 3, PADDING_MODE_NONE);
    PrintTextToWindow(param0, &param0->extraWindows[3], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);
    SetAndFormatNumberBuf(param0, 123, param0->monData.spDefense, 3, PADDING_MODE_NONE);
    PrintTextToWindow(param0, &param0->extraWindows[4], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);
    SetAndFormatNumberBuf(param0, 124, param0->monData.speed, 3, PADDING_MODE_NONE);
    PrintTextToWindow(param0, &param0->extraWindows[5], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);

    {
        MessageLoader *v1;
        Strbuf *v2;

        StringTemplate_SetAbilityName(param0->strFormatter, 0, param0->monData.ability);

        v2 = MessageLoader_GetNewStrbuf(param0->msgLoader, 125);
        StringTemplate_Format(param0->strFormatter, param0->strbuf, v2);
        Strbuf_Free(v2);
        PrintTextToWindow(param0, &param0->extraWindows[6], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);

        v1 = MessageLoader_Init(1, 26, 612, 19);
        MessageLoader_GetStrbuf(v1, param0->monData.ability, param0->strbuf);
        MessageLoader_Free(v1);
        PrintTextToWindow(param0, &param0->extraWindows[7], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
    }

    Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[1]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[2]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[3]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[4]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[5]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[6]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[7]);
}

static void sub_02090BDC(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[3]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[22]);

    if ((param0->data->mode != 3) && (param0->data->mode != 4)) {
        return;
    }

    Window_FillTilemap(&param0->extraWindows[1], 0);
    MessageLoader_GetStrbuf(param0->msgLoader, 165, param0->strbuf);
    PrintTextToWindow(param0, &param0->extraWindows[1], TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    MessageLoader_GetStrbuf(param0->msgLoader, 166 + param0->monData.preferredFlavor, param0->strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, param0->strbuf, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[1]);

    if (param0->data->mode == 3) {
        Window_FillTilemap(&param0->extraWindows[0], 0);
        MessageLoader_GetStrbuf(param0->msgLoader, 163, param0->strbuf);
        PrintTextToWindow(param0, &param0->extraWindows[0], TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
        Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
        PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->extraWindows[0]);
    }
}

static void sub_02090CD4(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[4]);

    if (param0->data->mode == 2) {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 155);
    } else {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 129);
    }

    PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->staticWindows[PSS_WINDOW_BUTTON_PROMPT]);

    Window_FillTilemap(&param0->extraWindows[0], 0);
    Window_FillTilemap(&param0->extraWindows[1], 0);
    Window_FillTilemap(&param0->extraWindows[2], 0);
    Window_FillTilemap(&param0->extraWindows[3], 0);

    PrintMoveInfo(param0, 0);
    PrintMoveInfo(param0, 1);
    PrintMoveInfo(param0, 2);
    PrintMoveInfo(param0, 3);

    Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[1]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[2]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[3]);
}

static void sub_02090D90(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[5]);

    if (param0->data->mode == 2) {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 159);
    } else {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 158);
    }

    PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->staticWindows[PSS_WINDOW_BUTTON_PROMPT]);

    Window_FillTilemap(&param0->extraWindows[0], 0);
    Window_FillTilemap(&param0->extraWindows[1], 0);
    Window_FillTilemap(&param0->extraWindows[2], 0);
    Window_FillTilemap(&param0->extraWindows[3], 0);

    PrintMoveInfo(param0, 0);
    PrintMoveInfo(param0, 1);
    PrintMoveInfo(param0, 2);
    PrintMoveInfo(param0, 3);

    Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[1]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[2]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[3]);
}

static void sub_02090E4C(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[31]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[30]);

    Window_FillTilemap(&param0->extraWindows[0], 0);
    SetAndFormatNumberBuf(param0, 183, param0->ribbonMax, 3, PADDING_MODE_NONE);
    PrintTextToWindow(param0, &param0->extraWindows[0], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);

    if (param0->ribbonMax != 0) {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 180);
        PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->staticWindows[PSS_WINDOW_BUTTON_PROMPT]);
    }
}

static void sub_02090EC8(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[28]);
    PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 161);
    PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->staticWindows[PSS_WINDOW_BUTTON_PROMPT]);

    if ((param0->data->mode != 3) && (param0->data->mode != 4)) {
        return;
    }

    Window_FillTilemap(&param0->extraWindows[1], 0);

    MessageLoader_GetStrbuf(param0->msgLoader, 165, param0->strbuf);
    PrintTextToWindow(param0, &param0->extraWindows[1], TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);

    MessageLoader_GetStrbuf(param0->msgLoader, 166 + param0->monData.preferredFlavor, param0->strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, param0->strbuf, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    Window_ScheduleCopyToVRAM(&param0->extraWindows[1]);
}

void PokemonSummaryScreen_PrintRibbonIndexAndMax(PokemonSummaryScreen *summaryScreen)
{
    Window_FillTilemap(&summaryScreen->extraWindows[1], 0);

    Strbuf *buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, pss_ribbon_max_number);

    StringTemplate_SetNumber(summaryScreen->strFormatter, 0, summaryScreen->ribbonMax, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
    Strbuf_Free(buf);

    u8 strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
    u8 xOffset = 7 * 8 - strWidth;

    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[1], FONT_SYSTEM, summaryScreen->strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, pss_ribbon_number_slash);
    strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, buf, 0);
    xOffset -= strWidth;

    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[1], FONT_SYSTEM, buf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(buf);

    buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, pss_ribbon_index_number);

    StringTemplate_SetNumber(summaryScreen->strFormatter, 0, summaryScreen->ribbonCol + summaryScreen->ribbonRow * RIBBONS_PER_ROW + 1, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
    Strbuf_Free(buf);

    strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
    xOffset -= strWidth;

    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[1], FONT_SYSTEM, summaryScreen->strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[1]);
}

void PokemonSummaryScreen_PrintRibbonNameAndDesc(PokemonSummaryScreen *summaryScreen)
{
    Window_FillTilemap(&summaryScreen->extraWindows[2], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[3], 0);

    MessageLoader_GetStrbuf(summaryScreen->ribbonLoader, Ribbon_GetData(summaryScreen->ribbonNum, RIBBON_DATA_NAME_ID), summaryScreen->strbuf);
    PrintTextToWindow(summaryScreen, &summaryScreen->extraWindows[2], TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);

    MessageLoader_GetStrbuf(summaryScreen->ribbonLoader, PokemonSummaryScreen_GetRibbonDescriptionID(summaryScreen->data->ribbons, summaryScreen->ribbonNum), summaryScreen->strbuf);
    PrintTextToWindow(summaryScreen, &summaryScreen->extraWindows[3], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[2]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[3]);
}

static void PrintMoveInfo(PokemonSummaryScreen *summaryScreen, u32 moveIndex)
{
    u16 moveName;
    u8 curPP, maxPP;

    Window *window = &summaryScreen->extraWindows[moveIndex];

    if (moveIndex != LEARNED_MOVES_MAX) {
        moveName = summaryScreen->monData.moves[moveIndex];
        curPP = summaryScreen->monData.curPP[moveIndex];
        maxPP = summaryScreen->monData.maxPP[moveIndex];
    } else {
        moveName = summaryScreen->data->move;
        curPP = MoveTable_CalcMaxPP(moveName, 0);
        maxPP = curPP;
    }

    MessageLoader_GetStrbuf(summaryScreen->moveNameLoader, moveName, summaryScreen->strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, 1, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    if (moveName != MOVE_NONE) {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, 135, summaryScreen->strbuf);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, 16, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        PrintMovePPInfo(summaryScreen, moveIndex, 117, 136 + moveIndex, 141 + moveIndex, curPP, maxPP, 2, (40 + 20), 16);
    } else {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, 153, summaryScreen->strbuf);
        u32 strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->strbuf, 0);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, (40 + 20) - strWidth / 2, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }
}

void PokemonSummaryScreen_PrintBattleMoveInfo(PokemonSummaryScreen *summaryScreen, u32 move)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[25]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[26]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[27]);

    Window_FillTilemap(&summaryScreen->extraWindows[5], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[6], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[7], 0);

    u32 power = MoveTable_LoadParam(move, MOVEATTRIBUTE_POWER);

    if (power <= 1) {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, pss_three_dashes, summaryScreen->strbuf);
    } else {
        SetAndFormatNumberBuf(summaryScreen, 150, power, 3, PADDING_MODE_SPACES);
    }

    PrintTextToWindow(summaryScreen, &summaryScreen->extraWindows[5], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);

    power = MoveTable_LoadParam(move, MOVEATTRIBUTE_ACCURACY);

    if (power == 0) {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, pss_three_dashes, summaryScreen->strbuf);
    } else {
        SetAndFormatNumberBuf(summaryScreen, 151, power, 3, PADDING_MODE_SPACES);
    }

    PrintTextToWindow(summaryScreen, &summaryScreen->extraWindows[6], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);

    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, message_bank_move_descriptions, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    MessageLoader_GetStrbuf(msgLoader, move, summaryScreen->strbuf);
    PrintTextToWindow(summaryScreen, &summaryScreen->extraWindows[7], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
    MessageLoader_Free(msgLoader);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[5]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[6]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[7]);
}

void PokemonSummaryScreen_ClearBattleInfoWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[25]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[26]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[27]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[5]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[6]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[7]);
}

void ShowMoveInfoOrCancel(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->data->move != MOVE_NONE) {
        Window_FillTilemap(&summaryScreen->extraWindows[4], 0);
        PrintMoveInfo(summaryScreen, LEARNED_MOVES_MAX);
        Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[4]);
    } else {
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[24]);
    }
}

void HideMoveCancelText(PokemonSummaryScreen *summaryScreen)
{
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[24]);
    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_MAIN_1);
}

void sub_02091474(PokemonSummaryScreen *param0)
{
    Window_FillTilemap(&param0->extraWindows[0 + param0->cursor], 0);
    Window_FillTilemap(&param0->extraWindows[0 + param0->cursorTmp], 0);

    PrintMoveInfo(param0, param0->cursor);
    PrintMoveInfo(param0, param0->cursorTmp);

    Window_ScheduleCopyToVRAM(&param0->extraWindows[0 + param0->cursor]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[0 + param0->cursorTmp]);
}

void PokemonSummaryScreen_PrintHMMovesCantBeForgotten(PokemonSummaryScreen *summaryScreen)
{
    Window *window;

    if (summaryScreen->page == 3) {
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[5]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[6]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[7]);
        window = &summaryScreen->extraWindows[7];
    } else {
        window = &summaryScreen->extraWindows[5];
    }

    Window_FillTilemap(window, 0);
    MessageLoader_GetStrbuf(summaryScreen->msgLoader, 156, summaryScreen->strbuf);
    PrintTextToWindow(summaryScreen, window, TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
    Window_ScheduleCopyToVRAM(window);
}

void PokemonSummaryScreen_PrintContestMoveInfo(PokemonSummaryScreen *param0, u32 param1)
{
    MessageLoader *v0;
    u32 v1;
    u32 v2;

    Window_FillTilemap(&param0->extraWindows[5], 0);

    v1 = MoveTable_LoadParam(param1, MOVEATTRIBUTE_CONTEST_EFFECT);
    v2 = sub_0209577C(v1);
    v0 = MessageLoader_Init(0, 26, 210, 19);

    MessageLoader_GetStrbuf(v0, v2, param0->strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[5], FONT_SYSTEM, param0->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_Free(v0);

    Window_ScheduleCopyToVRAM(&param0->staticWindows[29]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[5]);
}

void PokemonSummaryScreen_ClearContestInfoWindows(PokemonSummaryScreen *param0)
{
    Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[29]);
    Window_ClearAndScheduleCopyToVRAM(&param0->extraWindows[5]);
}

void PokemonSummaryScreen_PrintPoffinFeedMsg(PokemonSummaryScreen *summaryScreen, enum PSSPoffinFeedMsg msg)
{
    u32 entryID;

    switch (msg) {
    case PSS_MSG_COOLNESS_ENHANCED:
        entryID = pss_coolness_enhanced;
        break;
    case PSS_MSG_BEAUTY_ENHANCED:
        entryID = pss_beauty_enhanced;
        break;
    case PSS_MSG_CUTENESS_ENHANCED:
        entryID = pss_cuteness_enhanced;
        break;
    case PSS_MSG_SMARTNESS_ENHANCED:
        entryID = pss_smartness_enhanced;
        break;
    case PSS_MSG_TOUGHNESS_ENHANCED:
        entryID = pss_toughness_enhanced;
        break;
    case PSS_MSG_NOTHING_CHANGED:
        entryID = pss_nothing_changed;
        break;
    default:
        entryID = pss_pokemon_wont_eat_more;
    }

    Window *window = &summaryScreen->extraWindows[2];

    Window_DrawMessageBoxWithScrollCursor(window, TRUE, (1024 - (18 + 12)), 13);
    Window_FillTilemap(window, 15);
    MessageLoader_GetStrbuf(summaryScreen->msgLoader, entryID, summaryScreen->strbuf);
    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, summaryScreen->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    Window_ScheduleCopyToVRAM(window);
}
