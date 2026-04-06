#include "applications/trainer_case/card_text.h"

#include <nitro.h>

#include "constants/heap.h"

#include "applications/trainer_case/defs.h"

#include "bg_window.h"
#include "font.h"
#include "message.h"
#include "play_time.h"
#include "string_gf.h"
#include "string_template.h"
#include "text.h"
#include "trainer_case.h"

#include "res/text/bank/trainer_card.h"

#define TRAINER_CARD_WINDOW_PARTIAL_WIDTH 17
#define TRAINER_CARD_WINDOW_FULL_WIDTH    28
#define TRAINER_CARD_WINDOW_HEIGHT        2

#define BASE_TILE_ID                111
#define BASE_TILE_NAME              (BASE_TILE_ID + TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TRAINER_CARD_WINDOW_HEIGHT)
#define BASE_TILE_MONEY             (BASE_TILE_NAME + TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TRAINER_CARD_WINDOW_HEIGHT)
#define BASE_TILE_POKEDEX           (BASE_TILE_MONEY + TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TRAINER_CARD_WINDOW_HEIGHT)
#define BASE_TILE_SCORE             (BASE_TILE_POKEDEX + TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TRAINER_CARD_WINDOW_HEIGHT)
#define BASE_TILE_TIME              (BASE_TILE_SCORE + TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TRAINER_CARD_WINDOW_HEIGHT)
#define BASE_TILE_ADVENTURE_STARTED (BASE_TILE_TIME + TRAINER_CARD_WINDOW_FULL_WIDTH * TRAINER_CARD_WINDOW_HEIGHT)

#define BASE_TILE_HOF_DEBUT    (1 + SIGNATURE_WIDTH * SIGNATURE_HEIGHT)
#define BASE_TILE_TIMES_LINKED (BASE_TILE_HOF_DEBUT + TRAINER_CARD_WINDOW_FULL_WIDTH * TRAINER_CARD_WINDOW_HEIGHT * 2)
#define BASE_TILE_LINK_BATTLES (BASE_TILE_TIMES_LINKED + TRAINER_CARD_WINDOW_FULL_WIDTH * TRAINER_CARD_WINDOW_HEIGHT)
#define BASE_TILE_LINK_TRADES  (BASE_TILE_LINK_BATTLES + TRAINER_CARD_WINDOW_FULL_WIDTH * TRAINER_CARD_WINDOW_HEIGHT)

static void TrainerCard_DrawNumber(Window *window, u32 windowWidth, u32 endXOffset, u32 yOffset, String *string, u32 num, u8 maxDigits, enum PaddingMode paddingMode);
static void TrainerCard_DrawString(Window *window, u32 windowWidth, u32 endXOffset, u32 yOffset, const String *string);

static const WindowTemplate sTrainerCardWindowTemplates[] = {
    [TRAINER_CARD_WINDOW_ID] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 4,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_ID,
    },
    [TRAINER_CARD_WINDOW_NAME] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 6,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_NAME,
    },
    [TRAINER_CARD_WINDOW_MONEY] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 9,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_MONEY,
    },
    [TRAINER_CARD_WINDOW_POKEDEX] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 12,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_POKEDEX,
    },
    [TRAINER_CARD_WINDOW_SCORE] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 15,
        .width = TRAINER_CARD_WINDOW_PARTIAL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_SCORE,
    },
    [TRAINER_CARD_WINDOW_TIME] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 18,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_TIME,
    },
    [TRAINER_CARD_WINDOW_ADVENTURE_STARTED] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 20,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_ADVENTURE_STARTED,
    },
    [TRAINER_CARD_WINDOW_HOF_DEBUT] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT * 2,
        .palette = 15,
        .baseTile = BASE_TILE_HOF_DEBUT,
    },
    [TRAINER_CARD_WINDOW_TIMES_LINKED] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 7,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_TIMES_LINKED,
    },
    [TRAINER_CARD_WINDOW_LINK_BATTLES] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 9,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_LINK_BATTLES,
    },
    [TRAINER_CARD_WINDOW_LINK_TRADES] = {
        .bgLayer = BG_LAYER_SUB_3,
        .tilemapLeft = 2,
        .tilemapTop = 11,
        .width = TRAINER_CARD_WINDOW_FULL_WIDTH,
        .height = TRAINER_CARD_WINDOW_HEIGHT,
        .palette = 15,
        .baseTile = BASE_TILE_LINK_TRADES,
    }
};

void TrainerCard_AddWindows(BgConfig *bgConfig, Window windows[])
{
    for (u8 i = 0; i < TRAINER_CARD_WINDOW_COUNT; i++) {
        Window_AddFromTemplate(bgConfig, &windows[i], &sTrainerCardWindowTemplates[i]);
    }

    Bg_FillTilesRange(bgConfig, BG_LAYER_SUB_3, 0, 1, 0);
}

void TrainerCard_RemoveWindows(Window windows[])
{
    for (u16 i = 0; i < TRAINER_CARD_WINDOW_COUNT; i++) {
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

void TrainerCard_DrawFrontText(Window windows[], const TrainerCase *trainerCase)
{
    u8 i;

    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_ID], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_NAME], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_MONEY], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_POKEDEX], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_SCORE], 0, 0, 0, TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_TIME], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_ADVENTURE_STARTED], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);

    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRAINER_CARD, HEAP_ID_TRAINER_CASE);
    String *string = String_Init(32, HEAP_ID_TRAINER_CASE);

    for (i = TRAINER_CARD_WINDOW_ID; i < TRAINER_CARD_WINDOW_HOF_DEBUT; i++) {
        if (i != TRAINER_CARD_WINDOW_POKEDEX || i == TRAINER_CARD_WINDOW_POKEDEX && trainerCase->pokedexObtained) {
            MessageLoader_GetString(messageLoader, sTrainerCardTextFields[i], string);
            Text_AddPrinterWithParamsAndColor(&windows[i], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }
    }

    String *fmtString = String_Init(32, HEAP_ID_TRAINER_CASE);
    StringTemplate *template = StringTemplate_New(6, 32, HEAP_ID_TRAINER_CASE);

    TrainerCard_DrawNumber(&windows[TRAINER_CARD_WINDOW_ID], TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, 0, 0, string, trainerCase->trainerId, 5, PADDING_MODE_ZEROES);
    String_CopyChars(string, trainerCase->name);
    TrainerCard_DrawString(&windows[TRAINER_CARD_WINDOW_NAME], TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, 0, 0, string);

    StringTemplate_SetNumber(template, 5, trainerCase->money, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
    MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_Money, fmtString);
    StringTemplate_Format(template, string, fmtString);

    u32 xOffset = TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0);

    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_MONEY], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    if (trainerCase->pokedexObtained) {
        StringTemplate_SetNumber(template, 5, trainerCase->seenPokemon, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
        MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_Number_1, fmtString);
        StringTemplate_Format(template, string, fmtString);

        xOffset = TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0);

        Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_POKEDEX], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    TrainerCard_DrawNumber(&windows[TRAINER_CARD_WINDOW_SCORE], TRAINER_CARD_WINDOW_PARTIAL_WIDTH * TILE_WIDTH_PIXELS, 0, 0, string, trainerCase->score, 9, PADDING_MODE_SPACES);

    if (trainerCase->liveTimeDisplay) {
        StringTemplate_SetNumber(template, 0, PlayTime_GetHours(trainerCase->playTime), 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 1, PlayTime_GetMinutes(trainerCase->playTime), 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_HHMMWithoutColon, fmtString);
    } else {
        StringTemplate_SetNumber(template, 0, trainerCase->playTimeHours, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 1, trainerCase->playTimeMinutes, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_HHMMWithColon, fmtString);
    }

    StringTemplate_Format(template, string, fmtString);
    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_TIME], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    StringTemplate_SetNumber(template, 2, trainerCase->adventureStartedYear, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_SetMonthName(template, 3, trainerCase->adventureStartedMonth);
    StringTemplate_SetNumber(template, 4, trainerCase->adventureStartedDay, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_MMDD20YY, fmtString);
    StringTemplate_Format(template, string, fmtString);

    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0);

    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_ADVENTURE_STARTED], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    String_Free(fmtString);
    StringTemplate_Free(template);

    String_Free(string);
    MessageLoader_Free(messageLoader);
}

void TrainerCard_DrawBackText(Window windows[], const TrainerCase *trainerCase)
{
    u8 i;

    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_HOF_DEBUT], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, (TRAINER_CARD_WINDOW_HEIGHT * 2) * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_TIMES_LINKED], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_LINK_TRADES], 0, 0, 0, TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);

    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRAINER_CARD, HEAP_ID_TRAINER_CASE);
    String *string = String_Init(32, HEAP_ID_TRAINER_CASE);

    for (i = TRAINER_CARD_WINDOW_HOF_DEBUT; i < TRAINER_CARD_WINDOW_COUNT; i++) {
        MessageLoader_GetString(messageLoader, sTrainerCardTextFields[i], string);
        Text_AddPrinterWithParamsAndColor(&windows[i], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    }

    String *fmtString = String_Init(32, HEAP_ID_TRAINER_CASE);
    StringTemplate *template = StringTemplate_New(6, 32, HEAP_ID_TRAINER_CASE);

    if (trainerCase->hofDebutMonth != 0) {
        StringTemplate_SetNumber(template, 2, trainerCase->hofDebutYear, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        StringTemplate_SetMonthName(template, 3, trainerCase->hofDebutMonth);
        StringTemplate_SetNumber(template, 4, trainerCase->hofDebutDay, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 0, trainerCase->hofDebutHour, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_SetNumber(template, 1, trainerCase->hofDebutMinute, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
        MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_MMDD20YY, fmtString);
        StringTemplate_Format(template, string, fmtString);
    } else {
        MessageLoader_GetString(messageLoader, TrainerCard_Text_TwoDashes, fmtString);
        StringTemplate_SetString(template, 0, fmtString, 0, FALSE, GAME_LANGUAGE);
        StringTemplate_SetString(template, 1, fmtString, 0, FALSE, GAME_LANGUAGE);
        MessageLoader_GetString(messageLoader, TrainerCard_Text_BlankDate, string);
    }

    u32 xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_HOF_DEBUT], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_HHMMWithColon, fmtString);
    StringTemplate_Format(template, string, fmtString);
    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_HOF_DEBUT], FONT_SYSTEM, string, xOffset, 16, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    StringTemplate_SetNumber(template, 5, trainerCase->timesLinked, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
    MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_Number_2, fmtString);
    StringTemplate_Format(template, string, fmtString);
    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_TIMES_LINKED], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_GetString(messageLoader, TrainerCard_Text_W, string);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], FONT_SYSTEM, string, 14 * TILE_WIDTH_PIXELS, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    TrainerCard_DrawNumber(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, 0, 0, string, trainerCase->linkBattleLosses, 4, PADDING_MODE_SPACES);
    MessageLoader_GetString(messageLoader, TrainerCard_Text_L, string);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], FONT_SYSTEM, string, 22 * TILE_WIDTH_PIXELS, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    TrainerCard_DrawNumber(&windows[TRAINER_CARD_WINDOW_LINK_BATTLES], TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS, 8 * TILE_WIDTH_PIXELS, 0, string, trainerCase->linkBattleWins, 4, PADDING_MODE_SPACES);

    StringTemplate_SetNumber(template, 5, trainerCase->linkTrades, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);
    MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_Number_2, fmtString);
    StringTemplate_Format(template, string, fmtString);
    xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_LINK_TRADES], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    String_Free(fmtString);
    StringTemplate_Free(template);
    String_Free(string);
    MessageLoader_Free(messageLoader);
}

void TrainerCard_ClearWindows(Window windows[], u8 start, u8 end)
{
    for (u8 i = start; i <= end; i++) {
        Window_ClearAndCopyToVRAM(&windows[i]);
    }
}

static void TrainerCard_DrawNumber(Window *window, u32 windowWidth, u32 endXOffset, u32 yOffset, String *string, u32 num, u8 maxDigits, enum PaddingMode paddingMode)
{
    String_FormatInt(string, num, maxDigits, paddingMode, CHARSET_MODE_EN);
    u32 width = Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, windowWidth - (width + endXOffset), yOffset, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
}

static void TrainerCard_DrawString(Window *window, u32 windowWidth, u32 endXOffset, u32 yOffset, const String *string)
{
    u32 width = Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, windowWidth - (width + endXOffset), yOffset, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
}

void TrainerCard_DrawUpdatedTime(Window windows[], const TrainerCase *trainerCase, String *unused)
{
    GF_ASSERT(trainerCase->playTime != NULL);

    int hoursUnused = PlayTime_GetHours(trainerCase->playTime);

    if (hoursUnused > PLAYTIME_MAX_HOURS) {
        hoursUnused = PLAYTIME_MAX_HOURS;
    }

    Window_FillRectWithColor(&windows[TRAINER_CARD_WINDOW_TIME], 0, 184, 0, 5 * TILE_WIDTH_PIXELS, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);

    MessageLoader *messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_TRAINER_CARD, HEAP_ID_TRAINER_CASE);
    String *string = String_Init(32, HEAP_ID_TRAINER_CASE);
    String *fmtString = String_Init(32, HEAP_ID_TRAINER_CASE);
    StringTemplate *template = StringTemplate_New(2, 32, HEAP_ID_TRAINER_CASE);

    StringTemplate_SetNumber(template, 0, PlayTime_GetHours(trainerCase->playTime), 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_SetNumber(template, 1, PlayTime_GetMinutes(trainerCase->playTime), 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    MessageLoader_GetString(messageLoader, TrainerCard_Text_Format_HHMMWithoutColon, fmtString);
    StringTemplate_Format(template, string, fmtString);
    u32 xOffset = TRAINER_CARD_WINDOW_FULL_WIDTH * TILE_WIDTH_PIXELS - Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&windows[TRAINER_CARD_WINDOW_TIME], FONT_SYSTEM, string, xOffset, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);

    MessageLoader_Free(messageLoader);
    String_Free(string);
    String_Free(fmtString);
    StringTemplate_Free(template);
}

void TrainerCard_BlinkPlaytimeColon(Window *window, BOOL showColon, String *string)
{
    if (showColon) {
        Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 205, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
    } else {
        Window_FillRectWithColor(window, 0, 205, 0, 5, TRAINER_CARD_WINDOW_HEIGHT * TILE_HEIGHT_PIXELS);
        Window_CopyToVRAM(window);
    }
}
