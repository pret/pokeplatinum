#include "overlay071/trainer_card_display_text.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"

#include "overlay071/struct_ov71_0223B620.h"

#include "bg_window.h"
#include "font.h"
#include "message.h"
#include "play_time.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_card.h"

#include "res/text/bank/trainer_card.h"

#define TRAINER_CARD_WINDOW_PARTIAL_WIDTH 17
#define TRAINER_CARD_WINDOW_FULL_WIDTH    28
#define TRAINER_CARD_WINDOW_HEIGHT        2

static void TrainerCard_DrawNumber(Window *window, const u32 windowWidth, const u32 endXOffset, const u32 yOffset, Strbuf *strbuf, const u32 num, const u8 maxDigits, enum PaddingMode paddingMode);
static void TrainerCard_DrawString(Window *window, const u32 windowWidth, const u32 endXOffset, const u32 yOffset, const Strbuf *strbuf);

static const WindowTemplate sTrainerCardWindowTemplates[] = {
    [TRAINER_CARD_WINDOW_ID] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 4,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0x6F,
    },
    [TRAINER_CARD_WINDOW_NAME] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 6,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0x91,
    },
    [TRAINER_CARD_WINDOW_MONEY] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 9,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0xB3,
    },
    [TRAINER_CARD_WINDOW_POKEDEX] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 12,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0xD5,
    },
    [TRAINER_CARD_WINDOW_SCORE] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0xF7,
    },
    [TRAINER_CARD_WINDOW_TIME] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 18,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0x119,
    },
    [TRAINER_CARD_WINDOW_ADVENTURE_STARTED] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 20,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0x151,
    },
    [TRAINER_CARD_WINDOW_HOF_DEBUT] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT * 2,
        .palette = 15,
        .baseTile = 0xC1,
    },
    [TRAINER_CARD_WINDOW_TIMES_LINKED] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 7,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0x131,
    },
    [TRAINER_CARD_WINDOW_LINK_BATTLES] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 9,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0x169,
    },
    [TRAINER_CARD_WINDOW_LINK_TRADES] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 11,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = 0x1A1,
    }
};

void TrainerCard_AddWindows(BgConfig *bgConfig, Window *windows) {
    u8 i;
    const WindowTemplate *templates = sTrainerCardWindowTemplates;

    for (i = 0; i < TRAINER_CARD_WINDOW_COUNT; i++) {
        Window_AddFromTemplate(bgConfig, &windows[i], &templates[i]);
    }

    Bg_FillTilesRange(bgConfig, BG_LAYER_SUB_3, 0, 1, 0);
}

void TrainerCard_RemoveWindows(Window *windows) {
    u16 i;

    for (i = 0; i < TRAINER_CARD_WINDOW_COUNT; i++) {
        Window_Remove(&windows[i]);
    }
}

static const int sTrainerCardTextFields[] = {
    TrainerCard_Text_IDNo,
    TrainerCard_Text_Name,
    TrainerCard_Text_Money,
    TrainerCard_Text_Pokedex,
    TrainerCard_Text_Score,
    TrainerCard_Text_Time,
    TrainerCard_Text_AdventureStarted,
    TrainerCard_Text_HallOfFameDebut,
    TrainerCard_Text_TimesLinked,
    TrainerCard_Text_LinkBattles,
    TrainerCard_Text_LinkTrades
};

void TrainerCard_DrawFrontText(Window *windows, const TrainerCard *trainerCard) {
    u8 i;

    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_ID], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_NAME], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_MONEY], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_POKEDEX], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_SCORE], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_TIME], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_ADVENTURE_STARTED], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRAINER_CARD, HEAP_ID_TRAINER_CARD_SCREEN);
    Strbuf *strbuf = Strbuf_Init(32, HEAP_ID_TRAINER_CARD_SCREEN);

    for (i = TRAINER_CARD_WINDOW_ID; i < TRAINER_CARD_WINDOW_HOF_DEBUT; i++) {
        if (i != TRAINER_CARD_WINDOW_POKEDEX || i == TRAINER_CARD_WINDOW_POKEDEX && trainerCard->pokedexObtained) {
            MessageLoader_GetStrbuf(messageLoader, sTrainerCardTextFields[i], strbuf);
            Text_AddPrinterWithParamsAndColor(&windows[i], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }
    }

    Strbuf *fmtString = Strbuf_Init(32, HEAP_ID_TRAINER_CARD_SCREEN);
    StringTemplate *template = StringTemplate_New(6, 32, HEAP_ID_TRAINER_CARD_SCREEN);

    TrainerCard_DrawNumber(&windows[TRAINER_CARD_WINDOW_ID], TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, 0, 0, strbuf, trainerCard->id, 5, PADDING_MODE_ZEROES);
    Strbuf_CopyChars(strbuf, trainerCard->name);
    TrainerCard_DrawString(&windows[TRAINER_CARD_WINDOW_NAME], TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, 0, 0, strbuf);

    StringTemplate_SetNumber(template, 5, trainerCard->money, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_Money, fmtString);
    StringTemplate_Format(template, strbuf, fmtString);

    u32 xOffset = TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_MONEY], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    if (trainerCard->pokedexObtained) {
        StringTemplate_SetNumber(template, 5, trainerCard->seenPokemon, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_Number_1, fmtString);
        StringTemplate_Format(template, strbuf, fmtString);

        xOffset = TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

        Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_POKEDEX], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    TrainerCard_DrawNumber(&windows[TRAINER_CARD_WINDOW_SCORE], TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, 0, 0, strbuf, trainerCard->score, 9, PADDING_MODE_SPACES);

    if (trainerCard->unk_04_1) {
        StringTemplate_SetNumber(template, 0, PlayTime_GetHours(trainerCard->playTime), 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 1, PlayTime_GetMinutes(trainerCard->playTime), 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_HHMMWithoutColon, fmtString);
    } else {
        StringTemplate_SetNumber(template, 0, trainerCard->playTimeHours, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 1, trainerCard->playTimeMinutes, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_HHMMWithColon, fmtString);
    }

    StringTemplate_Format(template, strbuf, fmtString);
    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_TIME], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    StringTemplate_SetNumber(template, 2, trainerCard->adventureStartedYear, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_SetMonthName(template, 3, trainerCard->adventureStartedMonth);
    StringTemplate_SetNumber(template, 4, trainerCard->adventureStartedDay, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_MMDD20YY, fmtString);
    StringTemplate_Format(template, strbuf, fmtString);

    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);

    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_ADVENTURE_STARTED], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    Strbuf_Free(fmtString);
    StringTemplate_Free(template);

    Strbuf_Free(strbuf);
    MessageLoader_Free(messageLoader);
}

void TrainerCard_DrawBackText(Window *windows, const TrainerCard *trainerCard) {
    u8 i;

    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_HOF_DEBUT], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, (TRAINER_CARD_WINDOW_HEIGHT * 2) * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_TIMES_LINKED], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_LINK_TRADES], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRAINER_CARD, HEAP_ID_TRAINER_CARD_SCREEN);
    Strbuf *strbuf = Strbuf_Init(32, HEAP_ID_TRAINER_CARD_SCREEN);

    for (i = TRAINER_CARD_WINDOW_HOF_DEBUT; i < TRAINER_CARD_WINDOW_COUNT; i++) {
        MessageLoader_GetStrbuf(messageLoader, sTrainerCardTextFields[i], strbuf);
        Text_AddPrinterWithParamsAndColor(&windows[i], FONT_SYSTEM, strbuf, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    Strbuf *fmtString = Strbuf_Init(32, HEAP_ID_TRAINER_CARD_SCREEN);
    StringTemplate *template = StringTemplate_New(6, 32, HEAP_ID_TRAINER_CARD_SCREEN);

    if (trainerCard->hofDebutMonth != 0) {
        StringTemplate_SetNumber(template, 2, trainerCard->hofDebutYear, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        StringTemplate_SetMonthName(template, 3, trainerCard->hofDebutMonth);
        StringTemplate_SetNumber(template, 4, trainerCard->hofDebutDay, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 0, trainerCard->hofDebutHour, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 1, trainerCard->hofDebutMinute, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_MMDD20YY, fmtString);
        StringTemplate_Format(template, strbuf, fmtString);
    } else {
        MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_TwoDashes, fmtString);
        StringTemplate_SetStrbuf(template, 0, fmtString, 0, FALSE, GAME_LANGUAGE);
        StringTemplate_SetStrbuf(template, 1, fmtString, 0, FALSE, GAME_LANGUAGE);
        MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_BlankDate, strbuf);
    }

    u32 xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(0, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_HOF_DEBUT], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_HHMMWithColon, fmtString);
    StringTemplate_Format(template, strbuf, fmtString);
    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(0, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_HOF_DEBUT], FONT_SYSTEM, strbuf, xOffset, 16, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    StringTemplate_SetNumber(template, 5, trainerCard->timesLinked, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_Number_2, fmtString);
    StringTemplate_Format(template, strbuf, fmtString);
    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(0, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_TIMES_LINKED], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_W, strbuf);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], FONT_SYSTEM, strbuf, 14 * TILE_WIDTH_PIXELS, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    TrainerCard_DrawNumber(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, 0, 0, strbuf, trainerCard->linkBattleLosses, 4, PADDING_MODE_SPACES);
    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_L, strbuf);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], FONT_SYSTEM, strbuf, 22 * TILE_WIDTH_PIXELS, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    TrainerCard_DrawNumber(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, 8 * TILE_WIDTH_PIXELS, 0, strbuf, trainerCard->linkBattleWins, 4, PADDING_MODE_SPACES);

    StringTemplate_SetNumber(template, 5, trainerCard->linkTrades, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_Number_2, fmtString);
    StringTemplate_Format(template, strbuf, fmtString);
    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(0, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_LINK_TRADES], FONT_SYSTEM, strbuf, xOffset, 0, 0, TEXT_COLOR(1, 2, 0), NULL);

    Strbuf_Free(fmtString);
    StringTemplate_Free(template);
    Strbuf_Free(strbuf);
    MessageLoader_Free(messageLoader);
}

void TrainerCard_ClearWindows(Window *windows, const u8 start, const u8 end) {
    u8 i;

    for (i = start; i <= end; i++) {
        Window_ClearAndCopyToVRAM(&windows[i]);
    }
}

static void TrainerCard_DrawNumber(Window *window, const u32 windowWidth, const u32 endXOffset, const u32 yOffset, Strbuf *strbuf, const u32 num, const u8 maxDigits, enum PaddingMode paddingMode) {
    Strbuf_FormatInt(strbuf, num, maxDigits, paddingMode, CHARSET_MODE_EN);
    u32 width = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, windowWidth - (width + endXOffset), yOffset, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
}

static void TrainerCard_DrawString(Window *window, const u32 windowWidth, const u32 endXOffset, const u32 yOffset, const Strbuf *strbuf) {
    u32 width = Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, windowWidth - (width + endXOffset), yOffset, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
}

void TrainerCard_DrawUpdatedTime(Window *windows, const TrainerCard *trainerCard, Strbuf *unused) {
    GF_ASSERT(trainerCard->playTime != NULL);

    int hoursUnused = PlayTime_GetHours(trainerCard->playTime);

    if (hoursUnused > PLAYTIME_MAX_HOURS) {
        hoursUnused = PLAYTIME_MAX_HOURS;
    }

    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_TIME], 0, 184, 0, 5 * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);

    MessageLoader *messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRAINER_CARD, HEAP_ID_TRAINER_CARD_SCREEN);
    Strbuf *strbuf = Strbuf_Init(32, HEAP_ID_TRAINER_CARD_SCREEN);
    Strbuf *fmtString = Strbuf_Init(32, HEAP_ID_TRAINER_CARD_SCREEN);
    StringTemplate *template = StringTemplate_New(2, 32, HEAP_ID_TRAINER_CARD_SCREEN);

    StringTemplate_SetNumber(template, 0, PlayTime_GetHours(trainerCard->playTime), 3, 1, 1);
    StringTemplate_SetNumber(template, 1, PlayTime_GetMinutes(trainerCard->playTime), 2, 2, 1);
    MessageLoader_GetStrbuf(messageLoader, TrainerCard_Text_Format_HHMMWithoutColon, fmtString);
    StringTemplate_Format(template, strbuf, fmtString);
    u32 xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStrbufWidth(FONT_SYSTEM, strbuf, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_TIME], FONT_SYSTEM, strbuf, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_Free(messageLoader);
    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
    StringTemplate_Free(template);
}

void TrainerCard_BlinkPlaytimeColon(Window *window, const BOOL showColon, Strbuf *strbuf) {
    if (showColon) {
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, 205, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        Window_FillRectWithColor(window, 0, 205, 0, 5, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
        Window_CopyToVRAM(window);
    }
}
