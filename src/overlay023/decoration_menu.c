#include "overlay023/decoration_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"

#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay023/underground_item_list_menu.h"
#include "overlay023/underground_manager.h"
#include "overlay023/underground_text_printer.h"

#include "bg_window.h"
#include "heap.h"
#include "list_menu.h"
#include "message.h"
#include "render_window.h"
#include "scroll_prompts.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"
#include "unk_0202854C.h"

#include "res/text/bank/underground_base_decoration.h"
#include "res/text/bank/underground_goods.h"

#define UNDERGROUND_GOOD_DESCRIPTIONS_START UndergroundGoods_Text_CloseDescription

enum DecorationMenuState {
    DECORATION_MENU_STATE_INIT = 0,
    DECORATION_MENU_STATE_MAIN,
    DECORATION_MENU_STATE_OPTION_SELECTED,
};

enum DecorationGoodsMenuState {
    DECORATION_GOODS_MENU_STATE_INIT = 0,
    DECORATION_GOODS_MENU_STATE_MAIN,
    DECORATION_GOODS_MENU_STATE_OPTION_SELECTED,
};

static void DecorationMenu_InitMenu(DecorationMenu *menu);
static void DecorationMenu_HandleInput(DecorationMenu *menu);
static void DecorationMenu_Clear(DecorationMenu *menu);
static void DecorationGoodsMenu_InitMenu(DecorationGoodsMenu *menu);
static void DecorationGoodsMenu_HandleInput(DecorationGoodsMenu *menu);
static void DecorationGoodsMenu_Clear(DecorationGoodsMenu *menu);
static void DecorationGoodsMenu_UpdateScrollPrompts(ScrollPrompts *scrollPrompts, u16 listPos, u16 count, u16 maxDisplay);
static void DecorationMenu_UpdateCursorPos(DecorationMenu *menu);

static const ListMenuTemplate sListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = NULL,
    .printCallback = NULL,
    .window = NULL,
    .count = 4,
    .maxDisplay = 4,
    .headerXOffset = 0,
    .textXOffset = 8,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 15,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 16,
    .pagerMode = PAGER_MODE_LEFT_RIGHT_PAD,
    .fontID = FONT_SYSTEM,
    .cursorType = 0,
    .parent = NULL,
};

DecorationMenu *DecorationMenu_New(void)
{
    DecorationMenu *menu = Heap_Alloc(HEAP_ID_FIELD1, sizeof(DecorationMenu));
    return menu;
}

void DecorationMenu_Init(DecorationMenu *menu, FieldSystem *fieldSystem, u16 *startListPos, u16 *startCursorPos)
{
    menu->fieldSystem = fieldSystem;
    menu->state = DECORATION_MENU_STATE_INIT;
    menu->startListPos = startListPos;
    menu->startCursorPos = startCursorPos;
    menu->cursorPos = 0;

    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, 11, STANDARD_WINDOW_UNDERGROUND, HEAP_ID_FIELD1);
}

void DecorationMenu_Free(DecorationMenu *menu)
{
    Heap_Free(menu);
}

const u32 DecorationMenu_GetLastInput(DecorationMenu *menu)
{
    return menu->lastInput;
}

BOOL DecorationMenu_Main(DecorationMenu *menu)
{
    switch (menu->state) {
    case DECORATION_MENU_STATE_INIT:
        DecorationMenu_InitMenu(menu);
        break;
    case DECORATION_MENU_STATE_MAIN:
        DecorationMenu_HandleInput(menu);
        break;
    case DECORATION_MENU_STATE_OPTION_SELECTED:
        menu->state = DECORATION_MENU_STATE_INIT;
        DecorationMenu_Clear(menu);
        return TRUE;
    }

    return FALSE;
}

static void DecorationMenu_PrintOptionDescription(ListMenu *unused, u32 index, u8 unused2)
{
    const int descriptionBankEntries[4] = {
        UndergroundBaseDecoration_Text_DecorateDescription,
        UndergroundBaseDecoration_Text_PutAwayDescription,
        UndergroundBaseDecoration_Text_MoveGoodsDescription,
        UndergroundBaseDecoration_Text_CancelDescription,
    };

    UndergroundTextPrinter_PrintTextInstant(UndergroundMan_GetBaseDecorationTextPrinter(), descriptionBankEntries[index], FALSE, NULL);
}

static void DecorationMenu_InitMenu(DecorationMenu *menu)
{
    ListMenuTemplate template;
    int optionCountMinusOne = 3;
    int maxDisplay = 4;

    menu->menuOptions = StringList_New(optionCountMinusOne + 1, HEAP_ID_FIELD1);

    int primaryWindowTileSize = 12 * maxDisplay * 2;
    int secondaryWindowTileSize = 14;

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 19, 3, 12, maxDisplay * 2, 13, BASE_TILE_MESSAGE_WINDOW - primaryWindowTileSize);
    Window_Add(menu->fieldSystem->bgConfig, &menu->secondaryWindow, BG_LAYER_MAIN_3, 1, 1, 7, 2, 13, BASE_TILE_MESSAGE_WINDOW - (primaryWindowTileSize + secondaryWindowTileSize));

    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
    Window_DrawStandardFrame(&menu->secondaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    const int optionBankEntries[4] = {
        UndergroundBaseDecoration_Text_Decorate,
        UndergroundBaseDecoration_Text_PutAway,
        UndergroundBaseDecoration_Text_MoveGoods,
        UndergroundBaseDecoration_Text_Cancel,
    };

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_BASE_DECORATION, HEAP_ID_FIELD1);

    Window_FillTilemap(&menu->secondaryWindow, 15);
    String *string = MessageLoader_GetNewString(loader, UndergroundBaseDecoration_Text_Decor);
    Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(string);

    for (int i = 0; i < optionCountMinusOne + 1; i++) {
        StringList_AddFromMessageBank(menu->menuOptions, loader, optionBankEntries[i], i);
    }

    MessageLoader_Free(loader);

    template = sListMenuTemplate;
    template.count = optionCountMinusOne + 1;
    template.maxDisplay = maxDisplay;
    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;
    template.cursorCallback = DecorationMenu_PrintOptionDescription;

    menu->listMenu = ListMenu_New(&template, *menu->startListPos, *menu->startCursorPos, HEAP_ID_FIELD1);
    Window_CopyToVRAM(&menu->primaryWindow);
    Window_CopyToVRAM(&menu->secondaryWindow);
    menu->state = DECORATION_MENU_STATE_MAIN;
}

static void DecorationMenu_HandleInput(DecorationMenu *menu)
{
    u32 input = ListMenu_ProcessInput(menu->listMenu);

    DecorationMenu_UpdateCursorPos(menu);

    if (input == DECORATION_OPTION_CANCEL) {
        input = LIST_CANCEL;
    }

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return;
    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->lastInput = input;
        menu->state = DECORATION_MENU_STATE_OPTION_SELECTED;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    default:
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        menu->lastInput = input;
        menu->state = DECORATION_MENU_STATE_OPTION_SELECTED;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    }
}

static void DecorationMenu_Clear(DecorationMenu *menu)
{
    UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetBaseDecorationTextPrinter());

    Window_EraseStandardFrame(&menu->secondaryWindow, TRUE);
    ListMenu_Free(menu->listMenu, menu->startListPos, menu->startCursorPos);
    Window_EraseStandardFrame(&menu->primaryWindow, TRUE);
    Bg_ScheduleTilemapTransfer(menu->primaryWindow.bgConfig, menu->primaryWindow.bgLayer);
    Window_Remove(&menu->primaryWindow);
    Window_Remove(&menu->secondaryWindow);
    StringList_Free(menu->menuOptions);
}

static void DecorationGoodsMenu_ColorPlacedGoods(ListMenu *listMenu, u32 value, u8 unused)
{
    u8 isGoodNotPlaced = value & 0x1;

    if (isGoodNotPlaced) {
        ListMenu_SetAltTextColors(listMenu, 1, 15, 2);
    } else {
        ListMenu_SetAltTextColors(listMenu, 2, 15, 2);
    }
}

DecorationGoodsMenu *DecorationGoodsMenu_New(void)
{
    DecorationGoodsMenu *menu = Heap_Alloc(HEAP_ID_FIELD1, sizeof(DecorationGoodsMenu));
    return menu;
}

void DecorationGoodsMenu_Init(DecorationGoodsMenu *menu, FieldSystem *fieldSystem, u16 *startListPos, u16 *startCursorPos)
{
    menu->fieldSystem = fieldSystem;
    menu->state = DECORATION_GOODS_MENU_STATE_INIT;
    menu->scrollPrompts = NULL;
    menu->startListPos = startListPos;
    menu->startCursorPos = startCursorPos;

    LoadStandardWindowGraphics(fieldSystem->bgConfig, BG_LAYER_MAIN_3, BASE_TILE_STANDARD_WINDOW_FRAME, 11, STANDARD_WINDOW_UNDERGROUND, HEAP_ID_FIELD1);
}

void DecorationGoodsMenu_SetPlacedGoodData(DecorationGoodsMenu *menu, u8 currentPlacedGoods, u8 maxPlacedGoods)
{
    menu->currentPlacedGoods = currentPlacedGoods;
    menu->maxPlacedGoods = maxPlacedGoods;
}

void DecorationGoodsMenu_Free(DecorationGoodsMenu *menu)
{
    Heap_Free(menu);
}

const u32 DecorationGoodsMenu_GetLastInput(DecorationGoodsMenu *menu)
{
    return menu->lastInput;
}

BOOL DecorationGoodsMenu_Main(DecorationGoodsMenu *menu)
{
    switch (menu->state) {
    case DECORATION_GOODS_MENU_STATE_INIT:
        DecorationGoodsMenu_InitMenu(menu);
        break;
    case DECORATION_GOODS_MENU_STATE_MAIN:
        DecorationGoodsMenu_HandleInput(menu);
        break;
    case DECORATION_GOODS_MENU_STATE_OPTION_SELECTED:
        menu->state = DECORATION_GOODS_MENU_STATE_INIT;
        DecorationGoodsMenu_Clear(menu);
        return TRUE;
    }

    if (menu->scrollPrompts) {
        ScrollPrompts_UpdateAnim(menu->scrollPrompts);
    }

    return FALSE;
}

static void DecorationGoodsMenu_HandleInput(DecorationGoodsMenu *menu)
{
    u32 input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);
    u32 trueInput = input >> 1;

    if (menu->goodsCount == trueInput) {
        trueInput = LIST_CANCEL;
    }

    u16 listPos, cursorPos;
    ListMenu_GetListAndCursorPos(menu->itemListMenu->listMenu, &listPos, &cursorPos);
    DecorationGoodsMenu_UpdateScrollPrompts(menu->scrollPrompts, listPos, ListMenu_GetAttribute(menu->itemListMenu->listMenu, LIST_MENU_COUNT), ListMenu_GetAttribute(menu->itemListMenu->listMenu, LIST_MENU_MAX_DISPLAY));

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        return;
    case LIST_CANCEL:
        menu->lastInput = LIST_CANCEL;
        menu->state = DECORATION_GOODS_MENU_STATE_OPTION_SELECTED;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    default:
        menu->lastInput = trueInput;
        menu->state = DECORATION_GOODS_MENU_STATE_OPTION_SELECTED;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        break;
    }
}

static void DecorationGoodsMenu_PrintGoodDescription(ListMenu *listMenu, u32 value, u8 unused)
{
    Underground *underground = (Underground *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
    u32 optionCount = ListMenu_GetAttribute(listMenu, LIST_MENU_COUNT);
    u32 index = value >> 1;

    int bankEntry;

    if (index == optionCount - 1) {
        bankEntry = UndergroundGoods_Text_ExitDescription;
    } else {
        bankEntry = UNDERGROUND_GOOD_DESCRIPTIONS_START + Underground_GetGoodAtSlotPC(underground, index) - 1;
    }

    UndergroundTextPrinter_PrintTextInstant(UndergroundMan_GetItemNameTextPrinter(), bankEntry, FALSE, NULL);
}

static void DecorationGoodsMenu_InitMenu(DecorationGoodsMenu *menu)
{
    Underground *underground = SaveData_GetUnderground(menu->fieldSystem->saveData);
    int goodsCount = Underground_GetGoodsCountPC(underground);
    menu->goodsCount = goodsCount;
    int maxDisplay = goodsCount + 1;

    if (maxDisplay > 7) {
        maxDisplay = 7;
    }

    menu->menuOptions = StringList_New(goodsCount + 1, HEAP_ID_FIELD1);

    int primaryWindowTileSize = 168;
    int secondaryWindowTileSize = 32;

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 19, 3, 12, maxDisplay * 2, 13, BASE_TILE_MESSAGE_WINDOW - primaryWindowTileSize);
    Window_Add(menu->fieldSystem->bgConfig, &menu->secondaryWindow, BG_LAYER_MAIN_3, 1, 1, 8, 4, 13, BASE_TILE_MESSAGE_WINDOW - (primaryWindowTileSize + secondaryWindowTileSize));
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
    Window_DrawStandardFrame(&menu->secondaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *goodsLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_GOODS, HEAP_ID_FIELD1);
    MessageLoader *baseDecorationLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_BASE_DECORATION, HEAP_ID_FIELD1);

    Window_FillTilemap(&menu->secondaryWindow, 15);

    String *goodsSetMessage = MessageLoader_GetNewString(baseDecorationLoader, UndergroundBaseDecoration_Text_GoodsSet);
    String *fmtString = MessageLoader_GetNewString(baseDecorationLoader, UndergroundBaseDecoration_Text_GoodsSetTemplate);
    String *goodsSetNumbers = String_Init(6, HEAP_ID_FIELD1);

    Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, goodsSetMessage, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    StringTemplate *strTemplate = StringTemplate_Default(HEAP_ID_FIELD1);

    StringTemplate_SetNumber(strTemplate, 0, menu->currentPlacedGoods, 2, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_SetNumber(strTemplate, 1, menu->maxPlacedGoods, 2, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(strTemplate, goodsSetNumbers, fmtString);
    Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, goodsSetNumbers, 0, 16, TEXT_SPEED_NO_TRANSFER, NULL);

    StringTemplate_Free(strTemplate);
    String_Free(goodsSetMessage);
    String_Free(fmtString);
    String_Free(goodsSetNumbers);

    MessageLoader_Free(baseDecorationLoader);

    int i;
    int option;
    for (i = 0; i < goodsCount; i++) {
        int goodID = Underground_GetGoodAtSlotPC(underground, i);
        BOOL isPlaced = Underground_IsGoodAtSlotPlacedInBase(underground, i);
        option = (i << 1) + (u8)(!isPlaced ? 1 : 0);

        StringList_AddFromMessageBank(menu->menuOptions, goodsLoader, goodID, option);
    }

    option = (i << 1) + 1;

    StringList_AddFromMessageBank(menu->menuOptions, goodsLoader, UndergroundGoods_Text_Exit, option);
    MessageLoader_Free(goodsLoader);

    UndergroundTextPrinter_ChangeMessageLoaderBank(UndergroundMan_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_GOODS, MSG_LOADER_PRELOAD_ENTIRE_BANK);

    ListMenuTemplate listTemplate = sListMenuTemplate;
    listTemplate.printCallback = DecorationGoodsMenu_ColorPlacedGoods;
    listTemplate.count = goodsCount + 1;
    listTemplate.maxDisplay = maxDisplay;
    listTemplate.choices = menu->menuOptions;
    listTemplate.window = &menu->primaryWindow;
    listTemplate.cursorCallback = DecorationGoodsMenu_PrintGoodDescription;
    listTemplate.parent = underground;

    menu->itemListMenu = UndergroundItemListMenu_New(&listTemplate, *menu->startListPos, *menu->startCursorPos, HEAP_ID_FIELD1, Underground_MoveGoodPC, underground, TRUE);

    Window_CopyToVRAM(&menu->primaryWindow);
    Window_CopyToVRAM(&menu->secondaryWindow);

    menu->scrollPrompts = ScrollPrompts_New(HEAP_ID_FIELD1);

    ScrollPrompts_SetPosition(menu->scrollPrompts, 200, 26, 134);
    ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_TOP_ARROW, FALSE);
    ScrollPrompts_SetDrawFlag(menu->scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);

    menu->state = DECORATION_GOODS_MENU_STATE_MAIN;
}

static void DecorationGoodsMenu_Clear(DecorationGoodsMenu *menu)
{
    UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetItemNameTextPrinter());
    Window_EraseStandardFrame(&menu->secondaryWindow, TRUE);
    UndergroundItemListMenu_Free(menu->itemListMenu, menu->startListPos, menu->startCursorPos);

    Window_EraseStandardFrame(&menu->primaryWindow, TRUE);
    Bg_ScheduleTilemapTransfer(menu->primaryWindow.bgConfig, menu->primaryWindow.bgLayer);
    Window_Remove(&menu->primaryWindow);
    Window_Remove(&menu->secondaryWindow);
    StringList_Free(menu->menuOptions);
    ScrollPrompts_Free(menu->scrollPrompts);
}

static void DecorationGoodsMenu_UpdateScrollPrompts(ScrollPrompts *scrollPrompts, u16 listPos, u16 count, u16 maxDisplay)
{
    if (count <= maxDisplay) {
        return;
    }

    if (listPos != 0) {
        ScrollPrompts_SetDrawFlag(scrollPrompts, SCROLL_PROMPT_TOP_ARROW, TRUE);
    } else {
        ScrollPrompts_SetDrawFlag(scrollPrompts, SCROLL_PROMPT_TOP_ARROW, FALSE);
    }

    if (count != listPos + maxDisplay) {
        ScrollPrompts_SetDrawFlag(scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, TRUE);
    } else {
        ScrollPrompts_SetDrawFlag(scrollPrompts, SCROLL_PROMPT_BOTTOM_ARROW, FALSE);
    }
}

static void DecorationMenu_UpdateCursorPos(DecorationMenu *menu)
{
    u16 prevPos = menu->cursorPos;
    ListMenu_CalcTrueCursorPos(menu->listMenu, &menu->cursorPos);

    if (prevPos != menu->cursorPos) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }
}
