#include "applications/pokemon_summary_screen/window.h"

#include <nitro.h>
#include <string.h>

#include "consts/gender.h"
#include "consts/items.h"

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

static void PrintStrbufToWindow(PokemonSummaryScreen *summaryScreen, Window *window, TextColor color, enum PSSTextAlignment alignment);
static void PrintTextToStaticWindow(PokemonSummaryScreen *summaryScreen, enum PSSStaticWindow windowIndex, u32 entryID, TextColor color, enum PSSTextAlignment alignment);
static void PrintStaticWindows(PokemonSummaryScreen *summaryScreen);
static void PrintMoveNameAndPP(PokemonSummaryScreen *summaryScreen, u32 moveIndex);
static void DrawInfoPageWindows(PokemonSummaryScreen *summaryScreen);
static void sub_020908CC(PokemonSummaryScreen *param0);
static void sub_0209093C(PokemonSummaryScreen *param0);
static void sub_02090BDC(PokemonSummaryScreen *param0);
static void sub_02090CD4(PokemonSummaryScreen *param0);
static void sub_02090D90(PokemonSummaryScreen *param0);
static void sub_02090E4C(PokemonSummaryScreen *param0);
static void sub_02090EC8(PokemonSummaryScreen *param0);

static const WindowTemplate sStaticWindowTemplates[] = {
    [PSS_WINDOW_LABEL_INFO] = { 0x1, 0x1, 0x0, 0xD, 0x2, 0xF, 0x1 },
    [PSS_WINDOW_LABEL_MEMO] = { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x1B },
    [PSS_WINDOW_LABEL_SKILLS] = { 0x1, 0x1, 0x0, 0xE, 0x2, 0xF, 0x31 },
    [PSS_WINDOW_LABEL_CONDITION] = { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x4D },
    [PSS_WINDOW_LABEL_BATTLE_MOVES] = { 0x1, 0x1, 0x0, 0x9, 0x2, 0xF, 0x63 },
    [PSS_WINDOW_LABEL_CONTEST_MOVES] = { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x75 },
    [PSS_WINDOW_LABEL_ITEM] = { 0x1, 0x1, 0x14, 0x6, 0x2, 0xF, 0x8B },
    [PSS_WINDOW_LABEL_DEX_NUM] = { 0x1, 0xE, 0x5, 0x9, 0x2, 0xF, 0x97 },
    [PSS_WINDOW_LABEL_SPECIES_NAME] = { 0x1, 0xE, 0x7, 0x5, 0x2, 0xF, 0xA9 },
    [PSS_WINDOW_LABEL_TYPE] = { 0x1, 0xE, 0x9, 0x5, 0x2, 0xF, 0xB3 },
    [PSS_WINDOW_LABEL_OT_NAME] = { 0x1, 0xE, 0xB, 0x5, 0x2, 0xF, 0xBD },
    [PSS_WINDOW_LABEL_OT_ID] = { 0x1, 0xE, 0xD, 0x5, 0x2, 0xF, 0xC7 },
    [PSS_WINDOW_LABEL_EXP_POINTS] = { 0x1, 0xE, 0xF, 0xF, 0x2, 0xF, 0xD1 },
    [PSS_WINDOW_LABEL_TO_NEXT_LV] = { 0x1, 0xE, 0x13, 0xC, 0x2, 0xF, 0xEF },
    [PSS_WINDOW_DUMMY_14] = { 0x1, 0x13, 0x15, 0x3, 0x2, 0xF, 0x107 },
    [PSS_WINDOW_LABEL_HP] = { 0x1, 0x12, 0x4, 0x2, 0x2, 0xF, 0x10D },
    [PSS_WINDOW_LABEL_ATTACK] = { 0x1, 0x10, 0x7, 0x6, 0x2, 0xF, 0x111 },
    [PSS_WINDOW_LABEL_DEFENSE] = { 0x1, 0x10, 0x9, 0x6, 0x2, 0xF, 0x11D },
    [PSS_WINDOW_LABEL_SP_ATK] = { 0x1, 0x10, 0xB, 0x6, 0x2, 0xF, 0x129 },
    [PSS_WINDOW_LABEL_SP_DEF] = { 0x1, 0x10, 0xD, 0x6, 0x2, 0xF, 0x135 },
    [PSS_WINDOW_LABEL_SPEED] = { 0x1, 0x10, 0xF, 0x6, 0x2, 0xF, 0x141 },
    [PSS_WINDOW_LABEL_ABILITY] = { 0x1, 0xE, 0x12, 0x6, 0x2, 0xF, 0x14D },
    [PSS_WINDOW_LABEL_SHEEN] = { 0x1, 0xE, 0x14, 0x5, 0x2, 0xF, 0x159 },
    [PSS_WINDOW_DUMMY_23] = { 0x1, 0x1, 0x16, 0x6, 0x2, 0xF, 0x163 },
    [PSS_WINDOW_LABEL_MOVE_CANCEL] = { 0x1, 0x15, 0x14, 0x5, 0x2, 0xF, 0x16F },
    [PSS_WINDOW_LABEL_MOVE_CATEGORY] = { 0x1, 0x1, 0x8, 0x6, 0x2, 0xF, 0x179 },
    [PSS_WINDOW_LABEL_MOVE_POWER] = { 0x1, 0x1, 0xA, 0x6, 0x2, 0xF, 0x185 },
    [PSS_WINDOW_LABEL_MOVE_ACCURACY] = { 0x1, 0x1, 0xC, 0x8, 0x2, 0xF, 0x191 },
    [PSS_WINDOW_LABEL_CLOSE_WINDOW] = { 0x1, 0x12, 0xB, 0x9, 0x2, 0xF, 0x1A1 },
    [PSS_WINDOW_LABEL_APPEAL_POINTS] = { 0x1, 0x2, 0xD, 0xC, 0x2, 0xF, 0x1B3 },
    [PSS_WINDOW_LABEL_NUM_OF_RIBBONS] = { 0x1, 0xE, 0x15, 0xC, 0x2, 0xF, 0x1CB },
    [PSS_WINDOW_LABEL_RIBBONS] = { 0x1, 0x1, 0x0, 0xB, 0x2, 0xF, 0x1E3 },
    [PSS_WINDOW_ITEM_NAME] = { 0x1, 0x1, 0x16, 0xC, 0x2, 0xF, 0x1F9 },
    [PSS_WINDOW_MON_LEVEL] = { 0x1, 0x1, 0x5, 0x6, 0x2, 0xF, 0x211 },
    [PSS_WINDOW_MON_NICKNAME_GENDER] = { 0x1, 0x3, 0x3, 0x9, 0x2, 0xF, 0x21D },
    [PSS_WINDOW_LABEL_BUTTON_PROMPT] = { 0x1, 0x1A, 0x0, 0x6, 0x2, 0xF, 0x22F }
};

static const WindowTemplate sExtraWindowTemplates_Info[] = {
    { 0x1, 0x18, 0x5, 0x6, 0x2, 0xF, 0x23B },
    { 0x1, 0x17, 0x7, 0x8, 0x2, 0xF, 0x247 },
    { 0x1, 0x17, 0xB, 0x8, 0x2, 0xF, 0x257 },
    { 0x1, 0x19, 0xD, 0x4, 0x2, 0xF, 0x267 },
    { 0x1, 0x18, 0x11, 0x6, 0x2, 0xF, 0x271 },
    { 0x1, 0x18, 0x15, 0x6, 0x2, 0xF, 0x27F }
};

static const WindowTemplate sExtraWindowTemplates_Memo[] = {
    { 0x1, 0xE, 0x5, 0x11, 0x12, 0xF, 0x23B }
};

static const WindowTemplate sExtraWindowTemplates_Skills[] = {
    { 0x1, 0x17, 0x4, 0x7, 0x2, 0xF, 0x23B },
    { 0x1, 0x19, 0x7, 0x3, 0x2, 0xF, 0x249 },
    { 0x1, 0x19, 0x9, 0x3, 0x2, 0xF, 0x24F },
    { 0x1, 0x19, 0xB, 0x3, 0x2, 0xF, 0x255 },
    { 0x1, 0x19, 0xD, 0x3, 0x2, 0xF, 0x25B },
    { 0x1, 0x19, 0xF, 0x3, 0x2, 0xF, 0x261 },
    { 0x1, 0x15, 0x12, 0xB, 0x2, 0xF, 0x267 },
    { 0x1, 0xE, 0x14, 0x12, 0x4, 0xF, 0x27D }
};

static const WindowTemplate sExtraWindowTemplates_BattleMoves[] = {
    { 0x1, 0x15, 0x4, 0xB, 0x4, 0xF, 0x23B },
    { 0x1, 0x15, 0x8, 0xB, 0x4, 0xF, 0x267 },
    { 0x1, 0x15, 0xC, 0xB, 0x4, 0xF, 0x293 },
    { 0x1, 0x15, 0x10, 0xB, 0x4, 0xF, 0x2BF },
    { 0x1, 0x15, 0x14, 0xB, 0x4, 0xF, 0x2EB },
    { 0x1, 0xC, 0xA, 0x3, 0x2, 0xF, 0x317 },
    { 0x1, 0xC, 0xC, 0x3, 0x2, 0xF, 0x31D },
    { 0x1, 0x1, 0xE, 0xF, 0xA, 0xF, 0x323 }
};

static const WindowTemplate sExtraWindowTemplates_ContestMoves[] = {
    { 0x1, 0x15, 0x4, 0xB, 0x4, 0xF, 0x23B },
    { 0x1, 0x15, 0x8, 0xB, 0x4, 0xF, 0x267 },
    { 0x1, 0x15, 0xC, 0xB, 0x4, 0xF, 0x293 },
    { 0x1, 0x15, 0x10, 0xB, 0x4, 0xF, 0x2BF },
    { 0x1, 0x15, 0x14, 0xB, 0x4, 0xF, 0x2EB },
    { 0x1, 0x1, 0x12, 0xF, 0x6, 0xF, 0x317 }
};

static const WindowTemplate sExtraWindowTemplates_Ribbons[] = {
    { 0x1, 0x1A, 0x15, 0x5, 0x2, 0xF, 0x23B },
    { 0x1, 0x18, 0xF, 0x7, 0x2, 0xF, 0x245 },
    { 0x1, 0x1, 0x12, 0x15, 0x2, 0xF, 0x253 },
    { 0x1, 0x1, 0x14, 0x1E, 0x4, 0xF, 0x27D }
};

static const WindowTemplate sExtraWindowTemplates_Exit[] = {
    { 0x1, 0x1A, 0x0, 0x5, 0x2, 0xF, 0x23B },
    { 0x1, 0x1, 0x14, 0xC, 0x4, 0xF, 0x24D },
    { 0x1, 0x2, 0x15, 0x1B, 0x2, 0xE, 0x27D }
};

void PokemonSummaryScreen_DrawStaticWindows(PokemonSummaryScreen *summaryScreen)
{
    for (u16 window = 0; window < PSS_STATIC_WINDOW_MAX; window++) {
        Window_AddFromTemplate(summaryScreen->bgConfig, &summaryScreen->staticWindows[window], &sStaticWindowTemplates[window]);
        Window_FillTilemap(&summaryScreen->staticWindows[window], 0);
    }

    PrintStaticWindows(summaryScreen);
    PokemonSummaryScreen_PrintGenderSymbol(summaryScreen);
    PokemonSummaryScreen_PrintLevel(summaryScreen);
    PokemonSummaryScreen_PrintItemName(summaryScreen);
}

void PokemonSummaryScreen_AddExtraWindows(PokemonSummaryScreen *summaryScreen)
{
    const WindowTemplate *extraWindows;

    switch (summaryScreen->page) {
    case PSS_PAGE_INFO:
        extraWindows = sExtraWindowTemplates_Info;
        summaryScreen->numExtraWindows = PSS_INFO_WINDOW_MAX;
        break;
    case PSS_PAGE_MEMO:
        extraWindows = sExtraWindowTemplates_Memo;
        summaryScreen->numExtraWindows = PSS_MEMO_WINDOW_MAX;
        break;
    case PSS_PAGE_SKILLS:
        extraWindows = sExtraWindowTemplates_Skills;
        summaryScreen->numExtraWindows = PSS_SKILLS_WINDOW_MAX;
        break;
    case PSS_PAGE_BATTLE_MOVES:
        extraWindows = sExtraWindowTemplates_BattleMoves;
        summaryScreen->numExtraWindows = PSS_BATTLE_MOVES_WINDOW_MAX;
        break;
    case PSS_PAGE_CONTEST_MOVES:
        extraWindows = sExtraWindowTemplates_ContestMoves;
        summaryScreen->numExtraWindows = PSS_CONTEST_MOVES_WINDOW_MAX;
        break;
    case PSS_PAGE_RIBBONS:
        extraWindows = sExtraWindowTemplates_Ribbons;
        summaryScreen->numExtraWindows = PSS_RIBBONS_WINDOW_MAX;
        break;
    case PSS_PAGE_CONDITION:
    case PSS_PAGE_EXIT:
        if (summaryScreen->data->mode != PSS_MODE_POFFIN && summaryScreen->data->mode != PSS_MODE_CONDITION) {
            return;
        }

        extraWindows = sExtraWindowTemplates_Exit;
        summaryScreen->numExtraWindows = PSS_CONDITION_EXIT_WINDOW_MAX;
        break;
    default:
        return;
    }

    summaryScreen->extraWindows = Window_New(HEAP_ID_POKEMON_SUMMARY_SCREEN, summaryScreen->numExtraWindows);

    for (u32 i = 0; i < summaryScreen->numExtraWindows; i++) {
        Window_AddFromTemplate(summaryScreen->bgConfig, &summaryScreen->extraWindows[i], &extraWindows[i]);
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

void PokemonSummaryScreen_PrintGenderSymbol(PokemonSummaryScreen *summaryScreen)
{
    Window *window = &summaryScreen->staticWindows[PSS_WINDOW_MON_NICKNAME_GENDER];

    Window_FillTilemap(window, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->monData.nickname, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    if (summaryScreen->monData.showGender == 0) {
        if (summaryScreen->monData.gender == GENDER_MALE) {
            MessageLoader_GetStrbuf(summaryScreen->msgLoader, pss_male_symbol, summaryScreen->strbuf);
            PrintStrbufToWindow(summaryScreen, window, TEXT_COLOR(3, 4, 0), PSS_ALIGNMENT_RIGHT);
        } else if (summaryScreen->monData.gender == GENDER_FEMALE) {
            MessageLoader_GetStrbuf(summaryScreen->msgLoader, pss_female_symbol, summaryScreen->strbuf);
            PrintStrbufToWindow(summaryScreen, window, TEXT_COLOR(5, 6, 0), PSS_ALIGNMENT_RIGHT);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

void PokemonSummaryScreen_PrintLevel(PokemonSummaryScreen *summaryScreen)
{
    Window *window = &summaryScreen->staticWindows[PSS_WINDOW_MON_LEVEL];
    Window_FillTilemap(window, 0);

    Strbuf *buf;
    if (summaryScreen->monData.isEgg == FALSE) {
        sub_0200C578(summaryScreen->unk_684, 1, window, 0, 5);

        buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, pss_template_mon_level);

        StringTemplate_SetNumber(summaryScreen->strFormatter, 0, summaryScreen->monData.level, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
        Strbuf_Free(buf);
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, summaryScreen->strbuf, 16, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    }

    Window_ScheduleCopyToVRAM(window);
}

void PokemonSummaryScreen_PrintItemName(PokemonSummaryScreen *summaryScreen)
{
    Strbuf *buf;

    Window_FillTilemap(&summaryScreen->staticWindows[PSS_WINDOW_ITEM_NAME], 0);

    if (summaryScreen->monData.heldItem != ITEM_NONE) {
        StringTemplate_SetItemName(summaryScreen->strFormatter, 0, summaryScreen->monData.heldItem);
        buf = MessageLoader_GetNewStrbuf(summaryScreen->msgLoader, pss_template_item_name);
        StringTemplate_Format(summaryScreen->strFormatter, summaryScreen->strbuf, buf);
        Strbuf_Free(buf);
    } else {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, pss_none, summaryScreen->strbuf);
    }

    PrintStrbufToWindow(summaryScreen, &summaryScreen->staticWindows[PSS_WINDOW_ITEM_NAME], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_ITEM]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_ITEM_NAME]);
}

void PokemonSummaryScreen_ClearAndPrintButtonPrompt(PokemonSummaryScreen *summaryScreen, u32 entryID)
{
    Window_FillTilemap(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_BUTTON_PROMPT], 0);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_BUTTON_PROMPT, entryID, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_BUTTON_PROMPT]);
}

static BOOL DoesMonOTMatchPlayer(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->monData.OTID == summaryScreen->data->OTID
        && summaryScreen->monData.OTGender == summaryScreen->data->OTGender
        && Strbuf_Compare(summaryScreen->monData.OTName, summaryScreen->playerName) == 0) {
        return TRUE;
    }

    return FALSE;
}

static void PrintStrbufToWindow(PokemonSummaryScreen *summaryScreen, Window *window, TextColor color, enum PSSTextAlignment alignment)
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

static void PrintTextToStaticWindow(PokemonSummaryScreen *summaryScreen, enum PSSStaticWindow windowIndex, u32 entryID, TextColor color, enum PSSTextAlignment alignment)
{
    MessageLoader_GetStrbuf(summaryScreen->msgLoader, entryID, summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->staticWindows[windowIndex], color, alignment);
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

static void PrintStaticWindows(PokemonSummaryScreen *summaryScreen)
{
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_INFO, 7, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_MEMO, 23, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_SKILLS, 109, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_CONDITION, 126, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_BATTLE_MOVES, 128, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_CONTEST_MOVES, 157, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_ITEM, 4, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_DEX_NUM, 8, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_SPECIES_NAME, 10, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_TYPE, 12, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_OT_NAME, 13, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_OT_ID, 15, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_EXP_POINTS, 17, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_TO_NEXT_LV, 19, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_HP, 110, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_ATTACK, 111, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_DEFENSE, 112, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_SP_ATK, 113, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_SP_DEF, 114, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_SPEED, 115, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_ABILITY, 116, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_SHEEN, 127, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);

    MessageLoader_GetStrbuf(summaryScreen->msgLoader, 146, summaryScreen->strbuf);
    Text_AddPrinterWithParamsAndColor(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_MOVE_CANCEL], FONT_SYSTEM, summaryScreen->strbuf, 0, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_MOVE_CATEGORY, 149, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_MOVE_POWER, 147, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_MOVE_ACCURACY, 148, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_CLOSE_WINDOW, 162, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_CENTER);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_APPEAL_POINTS, 160, TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_NUM_OF_RIBBONS, 182, TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
    PrintTextToStaticWindow(summaryScreen, PSS_WINDOW_LABEL_RIBBONS, 179, TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
}
// ravetodo PokemonSummaryScreen_DrawExtraWindows?
void sub_020904C4(PokemonSummaryScreen *summaryScreen)
{
    Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_1, 0, 0, 0, 32, 2, 16);
    Bg_FillTilemapRect(summaryScreen->bgConfig, BG_LAYER_MAIN_1, 0, 14, 2, 18, 22, 16);

    switch (summaryScreen->page) {
    case PSS_PAGE_INFO:
        DrawInfoPageWindows(summaryScreen);
        break;
    case PSS_PAGE_MEMO:
        sub_020908CC(summaryScreen);
        break;
    case PSS_PAGE_SKILLS:
        sub_0209093C(summaryScreen);
        break;
    case PSS_PAGE_CONDITION:
        sub_02090BDC(summaryScreen);
        break;
    case PSS_PAGE_BATTLE_MOVES:
        sub_02090CD4(summaryScreen);
        break;
    case PSS_PAGE_CONTEST_MOVES:
        sub_02090D90(summaryScreen);
        break;
    case PSS_PAGE_RIBBONS:
        sub_02090E4C(summaryScreen);
        break;
    case PSS_PAGE_EXIT:
        sub_02090EC8(summaryScreen);
        break;
    }
}
// ravetodo finish
static void DrawInfoPageWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_INFO]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_DEX_NUM]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_SPECIES_NAME]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_TYPE]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_OT_NAME]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_OT_ID]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_EXP_POINTS]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_TO_NEXT_LV]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_DUMMY_14]);

    Window_FillTilemap(&summaryScreen->extraWindows[0], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[1], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[2], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[3], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[4], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[5], 0);

    u32 dexNum = sub_0207A294(summaryScreen->data->dexMode, summaryScreen->monData.species);

    if (dexNum != 0) {
        SetAndFormatNumberBuf(summaryScreen, pss_dex_number_template, dexNum, 3, PADDING_MODE_ZEROES);
    } else {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, pss_three_question_marks, summaryScreen->strbuf);
    }

    if (summaryScreen->monData.isShiny == FALSE) {
        PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[0], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);
    } else {
        PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[0], TEXT_COLOR(5, 6, 0), PSS_ALIGNMENT_CENTER);
    }

    u32 speciesWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->monData.speciesName, 0);
    u32 speciesX = (summaryScreen->extraWindows[1].width * 8 - speciesWidth) / 2;

    Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[1], FONT_SYSTEM, summaryScreen->monData.speciesName, speciesX, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    u32 OTNameWidth = Font_CalcStrbufWidth(FONT_SYSTEM, summaryScreen->monData.OTName, 0);
    u32 OTNameX = (summaryScreen->extraWindows[2].width * 8 - OTNameWidth) / 2;

    if (summaryScreen->monData.OTGender == GENDER_MALE) {
        Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[2], FONT_SYSTEM, summaryScreen->monData.OTName, OTNameX, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 4, 0), NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&summaryScreen->extraWindows[2], FONT_SYSTEM, summaryScreen->monData.OTName, OTNameX, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(5, 6, 0), NULL);
    }

    SetAndFormatNumberBuf(summaryScreen, 16, (summaryScreen->monData.OTID & 0xffff), 5, PADDING_MODE_ZEROES);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[3], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);
    SetAndFormatNumberBuf(summaryScreen, 18, summaryScreen->monData.curExp, 7, PADDING_MODE_SPACES);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[4], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);

    if (summaryScreen->monData.level < MAX_POKEMON_LEVEL) {
        SetAndFormatNumberBuf(summaryScreen, 21, summaryScreen->monData.nextLevelExp - summaryScreen->monData.curExp, 7, PADDING_MODE_SPACES);
    } else {
        SetAndFormatNumberBuf(summaryScreen, 21, 0, 7, PADDING_MODE_SPACES);
    }

    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[5], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[0]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[1]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[2]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[3]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[4]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[5]);
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

    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_MEMO]);
    Window_FillTilemap(&param0->extraWindows[0], 0);

    {
        void *v1 = PokemonSummaryScreen_MonData(param0);
        BOOL v2 = DoesMonOTMatchPlayer(param0);

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

    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_SKILLS]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_HP]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_ATTACK]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_DEFENSE]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_SP_ATK]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_SP_DEF]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_SPEED]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_ABILITY]);

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
    PrintStrbufToWindow(param0, &param0->extraWindows[1], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);
    SetAndFormatNumberBuf(param0, 121, param0->monData.defense, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(param0, &param0->extraWindows[2], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);
    SetAndFormatNumberBuf(param0, 122, param0->monData.spAttack, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(param0, &param0->extraWindows[3], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);
    SetAndFormatNumberBuf(param0, 123, param0->monData.spDefense, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(param0, &param0->extraWindows[4], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);
    SetAndFormatNumberBuf(param0, 124, param0->monData.speed, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(param0, &param0->extraWindows[5], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_RIGHT);

    {
        MessageLoader *v1;
        Strbuf *v2;

        StringTemplate_SetAbilityName(param0->strFormatter, 0, param0->monData.ability);

        v2 = MessageLoader_GetNewStrbuf(param0->msgLoader, 125);
        StringTemplate_Format(param0->strFormatter, param0->strbuf, v2);
        Strbuf_Free(v2);
        PrintStrbufToWindow(param0, &param0->extraWindows[6], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);

        v1 = MessageLoader_Init(1, 26, 612, 19);
        MessageLoader_GetStrbuf(v1, param0->monData.ability, param0->strbuf);
        MessageLoader_Free(v1);
        PrintStrbufToWindow(param0, &param0->extraWindows[7], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
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
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_CONDITION]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_SHEEN]);

    if ((param0->data->mode != 3) && (param0->data->mode != 4)) {
        return;
    }

    Window_FillTilemap(&param0->extraWindows[1], 0);
    MessageLoader_GetStrbuf(param0->msgLoader, 165, param0->strbuf);
    PrintStrbufToWindow(param0, &param0->extraWindows[1], TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
    MessageLoader_GetStrbuf(param0->msgLoader, 166 + param0->monData.preferredFlavor, param0->strbuf);
    Text_AddPrinterWithParamsAndColor(&param0->extraWindows[1], FONT_SYSTEM, param0->strbuf, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[1]);

    if (param0->data->mode == 3) {
        Window_FillTilemap(&param0->extraWindows[0], 0);
        MessageLoader_GetStrbuf(param0->msgLoader, 163, param0->strbuf);
        PrintStrbufToWindow(param0, &param0->extraWindows[0], TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);
        Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
        PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->extraWindows[0]);
    }
}

static void sub_02090CD4(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_BATTLE_MOVES]);

    if (param0->data->mode == 2) {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 155);
    } else {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 129);
    }

    PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->staticWindows[PSS_WINDOW_LABEL_BUTTON_PROMPT]);

    Window_FillTilemap(&param0->extraWindows[0], 0);
    Window_FillTilemap(&param0->extraWindows[1], 0);
    Window_FillTilemap(&param0->extraWindows[2], 0);
    Window_FillTilemap(&param0->extraWindows[3], 0);

    PrintMoveNameAndPP(param0, 0);
    PrintMoveNameAndPP(param0, 1);
    PrintMoveNameAndPP(param0, 2);
    PrintMoveNameAndPP(param0, 3);

    Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[1]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[2]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[3]);
}

static void sub_02090D90(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_CONTEST_MOVES]);

    if (param0->data->mode == 2) {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 159);
    } else {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 158);
    }

    PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->staticWindows[PSS_WINDOW_LABEL_BUTTON_PROMPT]);

    Window_FillTilemap(&param0->extraWindows[0], 0);
    Window_FillTilemap(&param0->extraWindows[1], 0);
    Window_FillTilemap(&param0->extraWindows[2], 0);
    Window_FillTilemap(&param0->extraWindows[3], 0);

    PrintMoveNameAndPP(param0, 0);
    PrintMoveNameAndPP(param0, 1);
    PrintMoveNameAndPP(param0, 2);
    PrintMoveNameAndPP(param0, 3);

    Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[1]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[2]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[3]);
}

static void sub_02090E4C(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_RIBBONS]);
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_NUM_OF_RIBBONS]);

    Window_FillTilemap(&param0->extraWindows[0], 0);
    SetAndFormatNumberBuf(param0, 183, param0->ribbonMax, 3, PADDING_MODE_NONE);
    PrintStrbufToWindow(param0, &param0->extraWindows[0], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[0]);

    if (param0->ribbonMax != 0) {
        PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 180);
        PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->staticWindows[PSS_WINDOW_LABEL_BUTTON_PROMPT]);
    }
}

static void sub_02090EC8(PokemonSummaryScreen *param0)
{
    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_CLOSE_WINDOW]);
    PokemonSummaryScreen_ClearAndPrintButtonPrompt(param0, 161);
    PokemonSummaryScreen_UpdateAButtonSprite(param0, &param0->staticWindows[PSS_WINDOW_LABEL_BUTTON_PROMPT]);

    if ((param0->data->mode != 3) && (param0->data->mode != 4)) {
        return;
    }

    Window_FillTilemap(&param0->extraWindows[1], 0);

    MessageLoader_GetStrbuf(param0->msgLoader, 165, param0->strbuf);
    PrintStrbufToWindow(param0, &param0->extraWindows[1], TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);

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
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[2], TEXT_COLOR(15, 14, 0), PSS_ALIGNMENT_LEFT);

    MessageLoader_GetStrbuf(summaryScreen->ribbonLoader, PokemonSummaryScreen_GetRibbonDescriptionID(summaryScreen->data->ribbons, summaryScreen->ribbonNum), summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[3], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[2]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[3]);
}

static void PrintMoveNameAndPP(PokemonSummaryScreen *summaryScreen, u32 moveIndex)
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
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_MOVE_CATEGORY]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_MOVE_POWER]);
    Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_MOVE_ACCURACY]);

    Window_FillTilemap(&summaryScreen->extraWindows[5], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[6], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[7], 0);

    u32 moveAttribute = MoveTable_LoadParam(move, MOVEATTRIBUTE_POWER);

    if (moveAttribute <= 1) {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, pss_three_dashes, summaryScreen->strbuf);
    } else {
        SetAndFormatNumberBuf(summaryScreen, pss_move_power_template, moveAttribute, 3, PADDING_MODE_SPACES);
    }

    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[5], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);

    moveAttribute = MoveTable_LoadParam(move, MOVEATTRIBUTE_ACCURACY);

    if (moveAttribute == 0) {
        MessageLoader_GetStrbuf(summaryScreen->msgLoader, pss_three_dashes, summaryScreen->strbuf);
    } else {
        SetAndFormatNumberBuf(summaryScreen, pss_move_accuracy_template, moveAttribute, 3, PADDING_MODE_SPACES);
    }

    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[6], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_CENTER);

    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, message_bank_move_descriptions, HEAP_ID_POKEMON_SUMMARY_SCREEN);

    MessageLoader_GetStrbuf(msgLoader, move, summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, &summaryScreen->extraWindows[7], TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
    MessageLoader_Free(msgLoader);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[5]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[6]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[7]);
}

void PokemonSummaryScreen_ClearBattleInfoWindows(PokemonSummaryScreen *summaryScreen)
{
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_MOVE_CATEGORY]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_MOVE_POWER]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_MOVE_ACCURACY]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[5]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[6]);
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[7]);
}

void PokemonSummaryScreen_ShowMoveInfoOrCancel(PokemonSummaryScreen *summaryScreen)
{
    if (summaryScreen->data->move != MOVE_NONE) {
        Window_FillTilemap(&summaryScreen->extraWindows[4], 0);
        PrintMoveNameAndPP(summaryScreen, LEARNED_MOVES_MAX);
        Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[4]);
    } else {
        Window_ScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_MOVE_CANCEL]);
    }
}

void PokemonSummaryScreen_HideMoveCancelText(PokemonSummaryScreen *summaryScreen)
{
    Window_ClearAndScheduleCopyToVRAM(&summaryScreen->staticWindows[PSS_WINDOW_LABEL_MOVE_CANCEL]);
    Bg_ScheduleTilemapTransfer(summaryScreen->bgConfig, BG_LAYER_MAIN_1);
}

void PokemonSummaryScreen_SwapMoveNameAndPP(PokemonSummaryScreen *summaryScreen)
{
    Window_FillTilemap(&summaryScreen->extraWindows[summaryScreen->cursor], 0);
    Window_FillTilemap(&summaryScreen->extraWindows[summaryScreen->cursorTmp], 0);

    PrintMoveNameAndPP(summaryScreen, summaryScreen->cursor);
    PrintMoveNameAndPP(summaryScreen, summaryScreen->cursorTmp);

    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[summaryScreen->cursor]);
    Window_ScheduleCopyToVRAM(&summaryScreen->extraWindows[summaryScreen->cursorTmp]);
}

void PokemonSummaryScreen_PrintHMMovesCantBeForgotten(PokemonSummaryScreen *summaryScreen)
{
    Window *window;

    if (summaryScreen->page == PSS_PAGE_BATTLE_MOVES) {
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[5]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[6]);
        Window_ClearAndScheduleCopyToVRAM(&summaryScreen->extraWindows[7]);
        window = &summaryScreen->extraWindows[7];
    } else {
        window = &summaryScreen->extraWindows[5];
    }

    Window_FillTilemap(window, 0);
    MessageLoader_GetStrbuf(summaryScreen->msgLoader, 156, summaryScreen->strbuf);
    PrintStrbufToWindow(summaryScreen, window, TEXT_COLOR(1, 2, 0), PSS_ALIGNMENT_LEFT);
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

    Window_ScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_APPEAL_POINTS]);
    Window_ScheduleCopyToVRAM(&param0->extraWindows[5]);
}

void PokemonSummaryScreen_ClearContestInfoWindows(PokemonSummaryScreen *param0)
{
    Window_ClearAndScheduleCopyToVRAM(&param0->staticWindows[PSS_WINDOW_LABEL_APPEAL_POINTS]);
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
