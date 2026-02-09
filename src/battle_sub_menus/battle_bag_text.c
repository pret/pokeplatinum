#include "battle_sub_menus/battle_bag_text.h"

#include "constants/graphics.h"

#include "battle/battle_system.h"
#include "battle_sub_menus/battle_bag.h"

#include "bg_window.h"
#include "font.h"
#include "item.h"
#include "message.h"
#include "render_text.h"
#include "render_window.h"
#include "string_gf.h"
#include "string_template.h"
#include "text.h"

#include "res/text/bank/battle_bag.h"

#define BATTLE_BAG_MENU_WINDOW_NUM               5
#define BATTLE_BAG_MENU_POCKET_SCREEN_WINDOW_NUM 26
#define BATTLE_BAG_USE_ITEM_SCREEN_WINDOW_NUM    4

#define ITEM_AMOUNT_DIGITS        3
#define POCKET_PAGE_NUMBER_DIGITS 2

static void RenderMenuScreen(BattleBag *battleBag);
static void RenderPocketMenuScreen(BattleBag *battleBag);
static void RenderUseItemScreen(BattleBag *battleBag);

static const WindowTemplate sMessageBoxWindowTemplate = {
    .bgLayer = BG_LAYER_SUB_0,
    .tilemapLeft = 2,
    .tilemapTop = 19,
    .width = 27,
    .height = 4,
    .palette = 15,
    .baseTile = 886
};

static const WindowTemplate sMenuScreenWindowTemplates[] = {
    [BATTLE_BAG_MENU_WINDOW_HP_PP_RESTORE] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 2,
        .tilemapTop = 4,
        .width = 12,
        .height = 5,
        .palette = 0,
        .baseTile = 718,
    },
    [BATTLE_BAG_MENU_WINDOW_STATUS_HEALERS] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 2,
        .tilemapTop = 13,
        .width = 12,
        .height = 5,
        .palette = 0,
        .baseTile = 778,
    },
    [BATTLE_BAG_MENU_WINDOW_POKE_BALLS] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 18,
        .tilemapTop = 5,
        .width = 12,
        .height = 3,
        .palette = 0,
        .baseTile = 646,
    },
    [BATTLE_BAG_MENU_WINDOW_BATTLE_ITEMS] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 18,
        .tilemapTop = 14,
        .width = 12,
        .height = 3,
        .palette = 0,
        .baseTile = 682,
    },
    [BATTLE_BAG_MENU_WINDOW_LAST_USED_ITEM] = {
        .bgLayer = BG_LAYER_SUB_0,
        .tilemapLeft = 5,
        .tilemapTop = 20,
        .width = 20,
        .height = 3,
        .palette = 0,
        .baseTile = 586,
    }
};

static const WindowTemplate sPocketMenuScreenWindowTemplates[] = {
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_1_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 1,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 1,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_1_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 8,
        .tilemapTop = 4,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 43,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_2_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 1,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 55,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_2_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 97,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_3_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 7,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 109,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_3_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 8,
        .tilemapTop = 10,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 151,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_4_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 7,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 163,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_4_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 10,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 205,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_5_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 13,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 217,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_5_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 8,
        .tilemapTop = 16,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 259,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_6_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 13,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 271,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_6_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 16,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 313,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_1_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 1,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 325,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_1_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 8,
        .tilemapTop = 4,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 367,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_2_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 1,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 379,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_2_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 4,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 421,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_3_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 7,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 433,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_3_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 8,
        .tilemapTop = 10,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 475,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_4_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 7,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 487,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_4_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 10,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 529,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_5_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 1,
        .tilemapTop = 13,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 541,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_5_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 8,
        .tilemapTop = 16,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 583,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_6_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 17,
        .tilemapTop = 13,
        .width = 14,
        .height = 3,
        .palette = 0,
        .baseTile = 595,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_6_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 24,
        .tilemapTop = 16,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 637,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_POCKET_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 11,
        .tilemapTop = 19,
        .width = 10,
        .height = 5,
        .palette = 4,
        .baseTile = 649,
    },
    [BATTLE_BAG_POCKET_MENU_WINDOW_PAGE_NUMS] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 22,
        .tilemapTop = 20,
        .width = 4,
        .height = 3,
        .palette = 4,
        .baseTile = 699,
    }
};

static const WindowTemplate useItemScreenWindowTemplates[] = {
    [BATTLE_BAG_USE_ITEM_MENU_WINDOW_ITEM_NAME] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 7,
        .tilemapTop = 4,
        .width = 12,
        .height = 2,
        .palette = 4,
        .baseTile = 711,
    },
    [BATTLE_BAG_USE_ITEM_MENU_WINDOW_ITEM_AMOUNT] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 20,
        .tilemapTop = 4,
        .width = 4,
        .height = 2,
        .palette = 4,
        .baseTile = 735,
    },
    [BATTLE_BAG_USE_ITEM_MENU_WINDOW_ITEM_DESC] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 2,
        .tilemapTop = 9,
        .width = 28,
        .height = 6,
        .palette = 4,
        .baseTile = 743,
    },
    [BATTLE_BAG_USE_ITEM_MENU_WINDOW_ITEM_USE] = {
        .bgLayer = BG_LAYER_SUB_1,
        .tilemapLeft = 10,
        .tilemapTop = 20,
        .width = 6,
        .height = 3,
        .palette = 0,
        .baseTile = 911,
    }
};

static const struct {
    u32 name;
    u32 amount;
} sPocketSlotTextIDs[] = {
    { .name = BattleBag_Text_PocketSlot1ItemName, .amount = BattleBag_Text_PocketSlot1ItemAmount },
    { .name = BattleBag_Text_PocketSlot2ItemName, .amount = BattleBag_Text_PocketSlot2ItemAmount },
    { .name = BattleBag_Text_PocketSlot3ItemName, .amount = BattleBag_Text_PocketSlot3ItemAmount },
    { .name = BattleBag_Text_PocketSlot4ItemName, .amount = BattleBag_Text_PocketSlot4ItemAmount },
    { .name = BattleBag_Text_PocketSlot5ItemName, .amount = BattleBag_Text_PocketSlot5ItemAmount },
    { .name = BattleBag_Text_PocketSlot6ItemName, .amount = BattleBag_Text_PocketSlot6ItemAmount }
};

void BattleBagText_InitializeWindows(BattleBag *battleBag)
{
    Window_AddFromTemplate(battleBag->background, &battleBag->messageBoxWindow, &sMessageBoxWindowTemplate);
    BattleBagText_InitializeScreenWindows(battleBag, battleBag->currentScreen);
}

void BattleBagText_InitializeScreenWindows(BattleBag *battleBag, enum BattleBagScreen screen)
{
    const WindowTemplate *windowTemplates;

    switch (screen) {
    case BATTLE_BAG_SCREEN_MENU:
        windowTemplates = sMenuScreenWindowTemplates;
        battleBag->numWindows = BATTLE_BAG_MENU_WINDOW_NUM;
        break;
    case BATTLE_BAG_SCREEN_POCKET_MENU:
        windowTemplates = sPocketMenuScreenWindowTemplates;
        battleBag->numWindows = BATTLE_BAG_MENU_POCKET_SCREEN_WINDOW_NUM;
        break;
    case BATTLE_BAG_SCREEN_USE_ITEM:
        windowTemplates = useItemScreenWindowTemplates;
        battleBag->numWindows = BATTLE_BAG_USE_ITEM_SCREEN_WINDOW_NUM;
        break;
    }

    battleBag->windows = Window_New(battleBag->context->heapID, battleBag->numWindows);

    for (u8 i = 0; i < battleBag->numWindows; i++) {
        Window_AddFromTemplate(battleBag->background, &battleBag->windows[i], &windowTemplates[i]);
    }
}

void BattleBagText_ClearScreenWindows(BattleBag *battleBag)
{
    Windows_Delete(battleBag->windows, battleBag->numWindows);
}

void BattleBagText_ClearWindows(BattleBag *battleBag)
{
    Windows_Delete(battleBag->windows, battleBag->numWindows);
    Window_Remove(&battleBag->messageBoxWindow);
}

void BattleBagText_ChangeScreen(BattleBag *battleBag, enum BattleBagScreen screen)
{
    switch (screen) {
    case BATTLE_BAG_SCREEN_MENU:
        RenderMenuScreen(battleBag);
        break;
    case BATTLE_BAG_SCREEN_POCKET_MENU:
        RenderPocketMenuScreen(battleBag);
        break;
    case BATTLE_BAG_SCREEN_USE_ITEM:
        RenderUseItemScreen(battleBag);
        break;
    }
}

static void PrintTextToWindow(BattleBag *battleBag, u8 windowIndex, u32 textID, enum Font font, u32 yOffset, TextColor color)
{
    Window *window = &battleBag->windows[windowIndex];
    String *string = MessageLoader_GetNewString(battleBag->messageLoader, textID);
    u32 stringWidth = Font_CalcStringWidth(font, string, 0);
    u32 xOffset = (Window_GetWidth(window) * TILE_WIDTH_PIXELS - stringWidth) / 2;

    Text_AddPrinterWithParamsAndColor(window, font, string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void RenderMenuScreen(BattleBag *battleBag)
{
    for (u32 i = 0; i < BATTLE_POCKET_MAX; i++) {
        Window_FillTilemap(&battleBag->windows[i], 0);
    }

    PrintTextToWindow(battleBag, BATTLE_BAG_MENU_WINDOW_HP_PP_RESTORE, BattleBag_Text_MenuTitleHPPP, FONT_SUBSCREEN, 8, TEXT_COLOR(3, 2, 1));
    PrintTextToWindow(battleBag, BATTLE_BAG_MENU_WINDOW_HP_PP_RESTORE, BattleBag_Text_MenuTitleRestore, FONT_SUBSCREEN, 24, TEXT_COLOR(3, 2, 1));
    PrintTextToWindow(battleBag, BATTLE_BAG_MENU_WINDOW_STATUS_HEALERS, BattleBag_Text_MenuTitleStatus, FONT_SUBSCREEN, 8, TEXT_COLOR(3, 2, 1));
    PrintTextToWindow(battleBag, BATTLE_BAG_MENU_WINDOW_STATUS_HEALERS, BattleBag_Text_MenuTitleHealers, FONT_SUBSCREEN, 24, TEXT_COLOR(3, 2, 1));
    PrintTextToWindow(battleBag, BATTLE_BAG_MENU_WINDOW_POKE_BALLS, BattleBag_Text_MenuTitlePokeBalls, FONT_SUBSCREEN, 8, TEXT_COLOR(3, 2, 1));
    PrintTextToWindow(battleBag, BATTLE_BAG_MENU_WINDOW_BATTLE_ITEMS, BattleBag_Text_MenuTitleBattleItems, FONT_SUBSCREEN, 8, TEXT_COLOR(3, 2, 1));

    if (battleBag->context->lastUsedItem != ITEM_NONE) {
        String *string = MessageLoader_GetNewString(battleBag->messageLoader, BattleBag_Text_ItemUsedLast);

        Text_AddPrinterWithParamsAndColor(&battleBag->windows[BATTLE_BAG_MENU_WINDOW_LAST_USED_ITEM], FONT_SUBSCREEN, string, 0, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(3, 2, 1), NULL);
        String_Free(string);
        Window_ScheduleCopyToVRAM(&battleBag->windows[BATTLE_BAG_MENU_WINDOW_LAST_USED_ITEM]);
    }
}

static void PrintPocketItemNameToWindow(BattleBag *battleBag, u32 itemIndex, u32 slot, u32 windowIndex, enum Font font, TextColor color)
{
    Window *window = &battleBag->windows[windowIndex];

    Window_FillTilemap(window, 0);

    if (battleBag->items[battleBag->currentBattlePocket][itemIndex].item != ITEM_NONE) {
        String *string = MessageLoader_GetNewString(battleBag->messageLoader, sPocketSlotTextIDs[slot].name);
        u32 width;
        u32 xOffset;

        StringTemplate_SetItemName(battleBag->stringTemplate, 0, battleBag->items[battleBag->currentBattlePocket][itemIndex].item);
        StringTemplate_Format(battleBag->stringTemplate, battleBag->string, string);

        width = Font_CalcStringWidth(font, battleBag->string, 0);
        xOffset = (Window_GetWidth(window) * TILE_WIDTH_PIXELS - width) / 2;

        Text_AddPrinterWithParamsAndColor(window, font, battleBag->string, xOffset, 8, TEXT_SPEED_NO_TRANSFER, color, NULL);
        String_Free(string);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintPocketItemAmountToWindow(BattleBag *battleBag, u32 itemIndex, u32 slot, u32 windowIndex, enum Font font, u32 yOffset, TextColor color)
{
    Window *window = &battleBag->windows[windowIndex];

    Window_FillTilemap(window, 0);

    if (battleBag->items[battleBag->currentBattlePocket][itemIndex].quantity != ITEM_NONE) {
        String *string = MessageLoader_GetNewString(battleBag->messageLoader, sPocketSlotTextIDs[slot].amount);

        StringTemplate_SetNumber(battleBag->stringTemplate, 0, battleBag->items[battleBag->currentBattlePocket][itemIndex].quantity, ITEM_AMOUNT_DIGITS, 0, CHARSET_MODE_EN);
        StringTemplate_Format(battleBag->stringTemplate, battleBag->string, string);
        Text_AddPrinterWithParamsAndColor(window, font, battleBag->string, 0, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
        String_Free(string);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintPocketItemInfo(BattleBag *battleBag, u32 slot_index)
{
    u32 itemIndex = battleBag->context->pocketCurrentPages[battleBag->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + slot_index;
    u32 first_window_index;

    if (battleBag->useAltPocketMenuWindows == FALSE) {
        first_window_index = BATTLE_BAG_POCKET_MENU_WINDOW_ITEM_SLOT_1_NAME;
    } else {
        first_window_index = BATTLE_BAG_POCKET_MENU_WINDOW_ALT_ITEM_SLOT_1_NAME;
    }

    PrintPocketItemNameToWindow(battleBag, itemIndex, slot_index, first_window_index + slot_index * 2, FONT_SUBSCREEN, TEXT_COLOR(3, 2, 1));
    PrintPocketItemAmountToWindow(battleBag, itemIndex, slot_index, first_window_index + 1 + slot_index * 2, FONT_SYSTEM, 4, TEXT_COLOR(1, 2, 0));
}

void BattleBagText_PrintAllPocketItemInfo(BattleBag *battleBag)
{
    Bg_FillTilemapRect(battleBag->background, BG_LAYER_SUB_1, 0, 0, 0, 32, 19, 17);

    for (u16 i = 0; i < BATTLE_POCKET_ITEMS_PER_PAGE; i++) {
        PrintPocketItemInfo(battleBag, i);
    }

    battleBag->useAltPocketMenuWindows ^= TRUE;
}

void BattleBagText_PrintPocketPageNums(BattleBag *battleBag)
{
    Window_FillTilemap(&battleBag->windows[BATTLE_BAG_POCKET_MENU_WINDOW_PAGE_NUMS], 0);

    Window *window = &battleBag->windows[BATTLE_BAG_POCKET_MENU_WINDOW_PAGE_NUMS];
    String *string = MessageLoader_GetNewString(battleBag->messageLoader, BattleBag_Text_PocketPageDivider);
    u32 width = Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    u32 xOffset = (Window_GetWidth(window) * TILE_WIDTH_PIXELS - width) / 2;

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, xOffset, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleBag->messageLoader, BattleBag_Text_PocketCurrentPage);
    StringTemplate_SetNumber(battleBag->stringTemplate, 0, battleBag->numBattlePocketPages[battleBag->currentBattlePocket] + 1, POCKET_PAGE_NUMBER_DIGITS, 0, CHARSET_MODE_EN);
    StringTemplate_Format(battleBag->stringTemplate, battleBag->string, string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, battleBag->string, xOffset + width, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(battleBag->messageLoader, BattleBag_Text_PocketPageNum);
    StringTemplate_SetNumber(battleBag->stringTemplate, 0, battleBag->context->pocketCurrentPages[battleBag->currentBattlePocket] + 1, POCKET_PAGE_NUMBER_DIGITS, 0, CHARSET_MODE_EN);
    StringTemplate_Format(battleBag->stringTemplate, battleBag->string, string);

    width = Font_CalcStringWidth(FONT_SYSTEM, battleBag->string, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, battleBag->string, xOffset - width, 4, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintPocketName(BattleBag *battleBag)
{
    Window_FillTilemap(&battleBag->windows[BATTLE_BAG_POCKET_MENU_WINDOW_POCKET_NAME], 0);

    switch (battleBag->currentBattlePocket) {
    case ITEM_BATTLE_CATEGORY_RECOVER_HP:
        PrintTextToWindow(battleBag, BATTLE_BAG_POCKET_MENU_WINDOW_POCKET_NAME, BattleBag_Text_PocketNameHPPP, FONT_SYSTEM, 4, TEXT_COLOR(1, 2, 0));
        PrintTextToWindow(battleBag, BATTLE_BAG_POCKET_MENU_WINDOW_POCKET_NAME, BattleBag_Text_PocketNameRestore, FONT_SYSTEM, 20, TEXT_COLOR(1, 2, 0));
        break;
    case ITEM_BATTLE_CATEGORY_RECOVER_STATUS:
        PrintTextToWindow(battleBag, BATTLE_BAG_POCKET_MENU_WINDOW_POCKET_NAME, BattleBag_Text_PocketNameStatus, FONT_SYSTEM, 4, TEXT_COLOR(1, 2, 0));
        PrintTextToWindow(battleBag, BATTLE_BAG_POCKET_MENU_WINDOW_POCKET_NAME, BattleBag_Text_PocketNameHealers, FONT_SYSTEM, 20, TEXT_COLOR(1, 2, 0));
        break;
    case ITEM_BATTLE_CATEGORY_POKE_BALLS:
        PrintTextToWindow(battleBag, BATTLE_BAG_POCKET_MENU_WINDOW_POCKET_NAME, BattleBag_Text_PocketNamePokeBalls, FONT_SYSTEM, 12, TEXT_COLOR(1, 2, 0));
        break;
    case ITEM_BATTLE_CATEGORY_BATTLE_ITEMS:
        PrintTextToWindow(battleBag, BATTLE_BAG_POCKET_MENU_WINDOW_POCKET_NAME, BattleBag_Text_PocketNameBattleItems, FONT_SYSTEM, 12, TEXT_COLOR(1, 2, 0));
        break;
    }
}

static void RenderPocketMenuScreen(BattleBag *battleBag)
{
    BattleBagText_PrintAllPocketItemInfo(battleBag);
    PrintPocketName(battleBag);
    BattleBagText_PrintPocketPageNums(battleBag);
}

static void PrintUseItemName(BattleBag *battleBag, u32 slot)
{
    Window *window = &battleBag->windows[BATTLE_BAG_USE_ITEM_MENU_WINDOW_ITEM_NAME];
    String *string = MessageLoader_GetNewString(battleBag->messageLoader, sPocketSlotTextIDs[0].name);

    StringTemplate_SetItemName(battleBag->stringTemplate, 0, battleBag->items[battleBag->currentBattlePocket][slot].item);
    StringTemplate_Format(battleBag->stringTemplate, battleBag->string, string);
    Window_FillTilemap(window, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, battleBag->string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintUseItemDesc(BattleBag *battleBag, u32 slot)
{
    Window *window = &battleBag->windows[BATTLE_BAG_USE_ITEM_MENU_WINDOW_ITEM_DESC];
    String *string = String_Init(130, battleBag->context->heapID);

    Item_LoadDescription(string, battleBag->items[battleBag->currentBattlePocket][slot].item, battleBag->context->heapID);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 4, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
    Window_ScheduleCopyToVRAM(window);
}

static void RenderUseItemScreen(BattleBag *battleBag)
{
    u32 slot;

    for (u32 i = 0; i < BATTLE_BAG_USE_ITEM_SCREEN_WINDOW_NUM; i++) {
        Window_FillTilemap(&battleBag->windows[i], 0);
    }

    slot = battleBag->context->pocketCurrentPages[battleBag->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + battleBag->context->pocketCurrentPagePositions[battleBag->currentBattlePocket];

    PrintUseItemName(battleBag, slot);
    PrintPocketItemAmountToWindow(battleBag, slot, 0, BATTLE_BAG_USE_ITEM_MENU_WINDOW_ITEM_AMOUNT, FONT_SYSTEM, 0, TEXT_COLOR(1, 2, 0));
    PrintUseItemDesc(battleBag, slot);
    PrintTextToWindow(battleBag, BATTLE_BAG_USE_ITEM_MENU_WINDOW_ITEM_USE, BattleBag_Text_Use, FONT_SUBSCREEN, 6, TEXT_COLOR(3, 2, 1));
}

void BattleBagText_DisplayMessage(BattleBag *battleBag)
{
    Window_DrawMessageBoxWithScrollCursor(&battleBag->messageBoxWindow, TRUE, 994, 14);
    Window_FillTilemap(&battleBag->messageBoxWindow, 15);
    BattleBagText_PrintToMessageBox(battleBag);
}

void BattleBagText_PrintToMessageBox(BattleBag *battleBag)
{
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    battleBag->textPrinterID = Text_AddPrinterWithParams(&battleBag->messageBoxWindow, FONT_MESSAGE, battleBag->string, 0, 0, BattleSystem_GetTextSpeed(battleBag->context->battleSys), NULL);
}
