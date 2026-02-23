#include "applications/bag/windows.h"

#include <nitro.h>
#include <string.h>

#include "applications/bag/main.h"
#include "applications/bag/sprites.h"

#include "bag.h"
#include "bag_context.h"
#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "heap.h"
#include "item.h"
#include "menu.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "poffin.h"
#include "render_text.h"
#include "render_window.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"

#include "res/graphics/bag/bag_graphics.naix"
#include "res/text/bank/bag.h"

#define ITEM_LIST_WINDOW_WIDTH         17
#define ITEM_LIST_WINDOW_HEIGHT        TEXT_LINES_TILES(BAG_UI_NUM_VISIBLE_ITEMS)
#define ITEM_DESCRIPTION_WINDOW_WIDTH  (HW_LCD_WIDTH / TILE_WIDTH_PIXELS)
#define ITEM_DESCRIPTION_WINDOW_HEIGHT TEXT_LINES_TILES(3)
#define MSG_BOX_WINDOW_WIDTH           14
#define MSG_BOX_NARROW_WINDOW_WIDTH    13
#define MSG_BOX_WIDE_WINDOW_WIDTH      27
#define MSG_BOX_WINDOW_HEIGHT          TEXT_LINES_TILES(2)
#define POCKET_SELECTOR_WINDOW_WIDTH   12
#define POCKET_SELECTOR_WINDOW_HEIGHT  2
#define POCKET_NAMES_WINDOW_WIDTH      (12 * 3)
#define POCKET_NAMES_WINDOW_HEIGHT     3
#define YES_NO_WINDOW_WIDTH            7
#define YES_NO_WINDOW_HEIGHT           TEXT_LINES_TILES(2)
#define SELL_WINDOW_WIDTH              12
#define SELL_WINDOW_HEIGHT             TEXT_LINES_TILES(2)
#define MONEY_WINDOW_WIDTH             10
#define MONEY_WINDOW_HEIGHT            TEXT_LINES_TILES(2)
#define POFFIN_COUNT_WINDOW_WIDTH      11
#define POFFIN_COUNT_WINDOW_HEIGHT     TEXT_LINES_TILES(2)

#define BASE_TILE_ITEM_LIST         1
#define BASE_TILE_ITEM_DESCRIPTION  (BASE_TILE_ITEM_LIST + (ITEM_LIST_WINDOW_WIDTH * ITEM_LIST_WINDOW_HEIGHT))
#define BASE_TILE_POCKET_NAMES      (BASE_TILE_ITEM_DESCRIPTION + ITEM_DESCRIPTION_WINDOW_WIDTH * ITEM_DESCRIPTION_WINDOW_HEIGHT)
#define BASE_TILE_MSG_BOX           (BASE_TILE_POCKET_NAMES + POCKET_NAMES_WINDOW_WIDTH * POCKET_NAMES_WINDOW_HEIGHT)
#define BASE_TILE_MSG_BOX_NARROW    BASE_TILE_MSG_BOX
#define BASE_TILE_POCKET_SELECTOR   (BASE_TILE_MSG_BOX + MSG_BOX_WINDOW_WIDTH * MSG_BOX_WINDOW_HEIGHT)
#define BASE_TILE_MSG_BOX_WIDE      (BASE_TILE_POCKET_SELECTOR + POCKET_SELECTOR_WINDOW_WIDTH * POCKET_SELECTOR_WINDOW_HEIGHT)
#define BASE_TILE_YES_NO            (BASE_TILE_MSG_BOX_WIDE + MSG_BOX_WIDE_WINDOW_WIDTH * MSG_BOX_WINDOW_HEIGHT)
#define BASE_TILE_SELL_COUNT_VALUE  (BASE_TILE_YES_NO + YES_NO_WINDOW_WIDTH * YES_NO_WINDOW_HEIGHT)
#define BASE_TILE_ITEM_ACTIONS_MENU BASE_TILE_SELL_COUNT_VALUE
#define BASE_TILE_MONEY             (BASE_TILE_SELL_COUNT_VALUE + SELL_WINDOW_WIDTH * SELL_WINDOW_HEIGHT)
#define BASE_TILE_POFFIN_COUNT      903
#define BASE_TILE_THROW_AWAY_COUNT  903
#define BASE_TILE_BAG_WINDOW_FRAME  (1024 - STANDARD_WINDOW_TILE_COUNT)
#define BASE_TILE_MSG_BOX_FRAME     (BASE_TILE_BAG_WINDOW_FRAME - SCROLLING_MESSAGE_BOX_TILE_COUNT)

#define DIGIT_WIDTH                 6
#define ITEM_COUNT_X_OFFSET         7
#define ITEM_COUNT_NUMBER_START_POS (ITEM_LIST_WINDOW_WIDTH * TILE_WIDTH_PIXELS - 2)
#define ITEM_COUNT_START_POS        (ITEM_COUNT_NUMBER_START_POS - 3 * DIGIT_WIDTH - ITEM_COUNT_X_OFFSET)

static void DrawHMIcon(BagController *param0, u32 param1);
static BOOL BagUITextPrinterCallback(TextPrinterTemplate *param0, u16 param1);

static const WindowTemplate sYesNoMenuTemplate = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 23,
    .tilemapTop = 13,
    .width = YES_NO_WINDOW_WIDTH,
    .height = YES_NO_WINDOW_HEIGHT,
    .palette = PLTT_3,
    .baseTile = BASE_TILE_YES_NO
};

void BagUI_CreateWindows(BagController *controller)
{
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_ITEM_LIST], BG_LAYER_MAIN_2, 14, 0, ITEM_LIST_WINDOW_WIDTH, ITEM_LIST_WINDOW_HEIGHT, PLTT_3, BASE_TILE_ITEM_LIST);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION], BG_LAYER_MAIN_0, 0, 18, ITEM_DESCRIPTION_WINDOW_WIDTH, ITEM_DESCRIPTION_WINDOW_HEIGHT, PLTT_3, BASE_TILE_ITEM_DESCRIPTION);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_POCKET_NAMES], BG_LAYER_MAIN_2, 0, 13, POCKET_NAMES_WINDOW_WIDTH, POCKET_NAMES_WINDOW_HEIGHT, PLTT_3, BASE_TILE_POCKET_NAMES);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_MSG_BOX], BG_LAYER_MAIN_0, 6, 19, MSG_BOX_WINDOW_WIDTH, MSG_BOX_WINDOW_HEIGHT, PLTT_11, BASE_TILE_MSG_BOX);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_MSG_BOX_NARROW], BG_LAYER_MAIN_0, 6, 19, MSG_BOX_NARROW_WINDOW_WIDTH, MSG_BOX_WINDOW_HEIGHT, PLTT_11, BASE_TILE_MSG_BOX_NARROW);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_POCKET_INDICATOR], BG_LAYER_MAIN_0, 0, 11, POCKET_SELECTOR_WINDOW_WIDTH, POCKET_SELECTOR_WINDOW_HEIGHT, PLTT_13, BASE_TILE_POCKET_SELECTOR);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], BG_LAYER_MAIN_0, 2, 19, MSG_BOX_WIDE_WINDOW_WIDTH, MSG_BOX_WINDOW_HEIGHT, PLTT_11, BASE_TILE_MSG_BOX_WIDE);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_SELL_COUNT_VALUE], BG_LAYER_MAIN_0, 19, 13, SELL_WINDOW_WIDTH, SELL_WINDOW_HEIGHT, PLTT_3, BASE_TILE_SELL_COUNT_VALUE);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_MONEY], BG_LAYER_MAIN_0, 1, 1, MONEY_WINDOW_WIDTH, TEXT_LINES_TILES(2), PLTT_3, BASE_TILE_MONEY);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_THROW_AWAY_COUNT], BG_LAYER_MAIN_0, 24, 19, 7, 4, PLTT_3, BASE_TILE_THROW_AWAY_COUNT);
    Window_Add(controller->bgConfig, &controller->windows[BAG_UI_WINDOW_POFFIN_COUNT], BG_LAYER_MAIN_0, 1, 12, POFFIN_COUNT_WINDOW_WIDTH, TEXT_LINES_TILES(2), PLTT_3, BASE_TILE_POFFIN_COUNT);
}

void BagUI_DeleteWindows(Window windows[NUM_BAG_UI_WINDOWS])
{
    for (u16 i = 0; i < NUM_BAG_UI_WINDOWS; i++) {
        Window_Remove(&windows[i]);
    }
}

void BagUI_LoadPocketNames(BagController *controller)
{
    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG_POCKET_NAMES, HEAP_ID_BAG);

    for (u16 i = 0; i < POCKET_MAX; i++) {
        controller->pocketNames[i] = MessageLoader_GetNewString(msgLoader, i);
    }

    MessageLoader_Free(msgLoader);
}

void BagUI_FreePocketNames(BagController *controller)
{
    for (u16 i = 0; i < POCKET_MAX; i++) {
        String_Free(controller->pocketNames[i]);
    }
}

void BagUI_ClearPocketNameBox(BagController *controller)
{
    for (u16 i = 0; i < 12; i++) {
        Bg_FillTilemapRect(controller->bgConfig, BG_LAYER_MAIN_2, BASE_TILE_POCKET_NAMES + 12 + i, i, 13, 1, 1, PLTT_3);
        Bg_FillTilemapRect(controller->bgConfig, BG_LAYER_MAIN_2, BASE_TILE_POCKET_NAMES + POCKET_NAMES_WINDOW_WIDTH + 12 + i, i, 13 + 1, 1, 1, PLTT_3);
    }
}

static void PrintPocketNameCentered(BagController *controller, String *string, u16 centerY)
{
    u32 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&controller->windows[BAG_UI_WINDOW_POCKET_NAMES], FONT_SYSTEM, string, centerY - stringWidth / 2, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
}

void BagUI_PrintPocketNames(BagController *controller)
{
    Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_POCKET_NAMES], 0);

    BagPocketSelector *pocketSelector = &controller->pocketSelector;
    String *currentPocketName = controller->pocketNames[controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType];
    String *nextPocketName = controller->pocketNames[controller->bagCtx->accessiblePockets[pocketSelector->nextPocket].pocketType];

    u16 curPocketNamePos;
    if (pocketSelector->nextPocketDirection == 0) {
        curPocketNamePos = 96 + 50 + 12 * pocketSelector->animFrame;
        PrintPocketNameCentered(controller, nextPocketName, curPocketNamePos - 96);
    } else {
        curPocketNamePos = 96 + 50 - 12 * pocketSelector->animFrame;
        PrintPocketNameCentered(controller, nextPocketName, curPocketNamePos + 96);
    }

    PrintPocketNameCentered(controller, currentPocketName, curPocketNamePos);
    Window_LoadTiles(&controller->windows[BAG_UI_WINDOW_POCKET_NAMES]);
}

static void *LoadPocketSelectorIcons(BagController *interface, NNSG2dCharacterData **charData)
{
    void *file = NARC_AllocAndReadWholeMember(interface->bagGraphicsNARC, pocket_selector_icons_NCGR, HEAP_ID_BAG);
    NNS_G2dGetUnpackedBGCharacterData(file, charData);
    return file;
}

void BagUI_DrawPocketSelectorIcon(BagController *controller, u8 pocketIndex, u8 focused)
{
    NNSG2dCharacterData *icons;
    void *iconsFile = LoadPocketSelectorIcons(controller, &icons);

    u8 iconX;
    if (focused == TRUE) {
        iconX = controller->bagCtx->accessiblePockets[pocketIndex].pocketType * 32 + 16;
    } else {
        iconX = controller->bagCtx->accessiblePockets[pocketIndex].pocketType * 32;
    }

    Window_BlitBitmapRect(&controller->windows[BAG_UI_WINDOW_POCKET_INDICATOR], icons->pRawData, iconX, 0, 32 * POCKET_MAX, 16, controller->pocketSelectorIconsX + controller->pocketSelectorIconsSpacing * pocketIndex, 3, 10, 10);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_POCKET_INDICATOR]);
    Heap_FreeExplicit(HEAP_ID_BAG, iconsFile);
}

void BagUI_DrawPocketSelectorIcons(BagController *controller)
{
    NNSG2dCharacterData *icons;

    void *iconsFile = LoadPocketSelectorIcons(controller, &icons);
    Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_POCKET_INDICATOR], 0);

    for (u8 i = 0; i < controller->numPockets; i++) {
        u8 iconX;

        if (i == controller->bagCtx->currPocketIdx) {
            iconX = controller->bagCtx->accessiblePockets[i].pocketType * 32 + 16;
        } else {
            iconX = controller->bagCtx->accessiblePockets[i].pocketType * 32;
        }

        Window_BlitBitmapRect(&controller->windows[BAG_UI_WINDOW_POCKET_INDICATOR], icons->pRawData, iconX, 0, 32 * POCKET_MAX, 16, controller->pocketSelectorIconsX + controller->pocketSelectorIconsSpacing * i, 3, 10, 10);
    }

    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_POCKET_INDICATOR]);
    Heap_FreeExplicit(HEAP_ID_BAG, iconsFile);
}

static void BufferPocketSlotItemName(BagController *controller, u32 slotIdx, u32 templateParamIdx)
{
    StringTemplate_SetItemName(controller->strTemplate, templateParamIdx, BagInterface_GetItemSlotParam(controller, slotIdx, BAG_APP_ITEM_SLOT_PARAM_ITEM));
}

static void BufferPocketSlotItemNamePlural(BagController *controller, u32 slotIdx, u32 templateParamIdx)
{
    StringTemplate_SetItemNamePlural(controller->strTemplate, templateParamIdx, BagInterface_GetItemSlotParam(controller, slotIdx, BAG_APP_ITEM_SLOT_PARAM_ITEM));
}

void BagUI_PrintItemDescription(BagController *controller, u16 item)
{
    String *string;

    if (item != 0xffff) {
        string = String_Init(130, HEAP_ID_BAG);
        Item_LoadDescription(string, item, HEAP_ID_BAG);
    } else {
        string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_CloseBagDescription);
    }

    Text_AddPrinterWithParamsAndColor(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION], FONT_SYSTEM, string, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);
}

void BagUI_PrintTMHMMoveStats(BagController *controller, u16 item)
{
    Window *window = &controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION];
    u16 move = Item_MoveForTMHM(item);

    String *string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Type);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_PP);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Category);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 96, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Power);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 96, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Accuracy);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 96, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    String_Free(string);

    u16 moveStat = MoveTable_CalcMaxPP(move, 0);
    string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_MaxPPNum);
    StringTemplate_SetNumber(controller->strTemplate, 0, moveStat, 2, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
    String_Free(string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, controller->stringBuffer, 48, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    moveStat = MoveTable_LoadParam(move, MOVEATTRIBUTE_POWER);

    if (moveStat <= 1) {
        string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Not_Applicable);
    } else {
        string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_PowerAccuracyNum);
    }

    StringTemplate_SetNumber(controller->strTemplate, 0, moveStat, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
    String_Free(string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, controller->stringBuffer, 96 + 64, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    moveStat = MoveTable_LoadParam(move, MOVEATTRIBUTE_ACCURACY);

    if (moveStat == 0) {
        string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Not_Applicable);
    } else {
        string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_PowerAccuracyNum);
    }

    StringTemplate_SetNumber(controller->strTemplate, 0, moveStat, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
    String_Free(string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, controller->stringBuffer, 96 + 64, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
}

void BagUI_LoadItemCountStrings(BagController *controller)
{
    controller->itemCountX = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_ItemCountX);
    controller->itemCountNumberFmt = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_ItemCountNum);
}

void BagUI_FreeItemCountStrings(BagController *controller)
{
    String_Free(controller->itemCountX);
    String_Free(controller->itemCountNumberFmt);
}

void BagUI_PrintItemCount(BagController *controller, u16 count, u16 yOffset, u32 color)
{
    if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_TMHMS) {
        Text_AddPrinterWithParamsAndColor(&controller->windows[BAG_UI_WINDOW_ITEM_LIST], FONT_SYSTEM, controller->itemCountX, ITEM_COUNT_START_POS + DIGIT_WIDTH, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&controller->windows[BAG_UI_WINDOW_ITEM_LIST], FONT_SYSTEM, controller->itemCountX, ITEM_COUNT_START_POS, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    }

    String *string = String_Init(10, HEAP_ID_BAG);

    StringTemplate_SetNumber(controller->strTemplate, 0, count, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, string, controller->itemCountNumberFmt);

    u32 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);

    Text_AddPrinterWithParamsAndColor(&controller->windows[BAG_UI_WINDOW_ITEM_LIST], FONT_SYSTEM, string, ITEM_COUNT_NUMBER_START_POS - stringWidth, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(string);
}

void BagUI_PrintTMHMNumber(BagController *controller, BagItem *itemSlot, u32 yOffset)
{
    u16 item = itemSlot->item;

    if (item < ITEM_HM01) {
        item = item - ITEM_TM01 + 1;
        FontSpecialChars_DrawPartyScreenText(controller->specialChars, SPECIAL_CHAR_NUMBER, item, 2, PADDING_MODE_ZEROES, &controller->windows[BAG_UI_WINDOW_ITEM_LIST], 0, yOffset + 5);
        BagUI_PrintItemCount(controller, itemSlot->quantity, yOffset, TEXT_COLOR(1, 2, 0));
    } else {
        item = item - ITEM_HM01 + 1;
        FontSpecialChars_DrawPartyScreenHPText(controller->specialChars, item, 2, PADDING_MODE_SPACES, &controller->windows[BAG_UI_WINDOW_ITEM_LIST], 16, yOffset + 5);
        DrawHMIcon(controller, yOffset);
    }
}

void BagUI_PrintBerryNumber(BagController *controller, BagItem *itemSlot, u32 yOffset)
{
    FontSpecialChars_DrawPartyScreenText(controller->specialChars, SPECIAL_CHAR_NUMBER, Item_BerryNumber(itemSlot->item) + 1, 2, PADDING_MODE_ZEROES, &controller->windows[BAG_UI_WINDOW_ITEM_LIST], 0, yOffset + 5);
    BagUI_PrintItemCount(controller, itemSlot->quantity, yOffset, TEXT_COLOR(1, 2, 0));
}

static void *LoadBagUIItemEntrySprites(BagController *controller, NNSG2dCharacterData **charData)
{
    void *file = NARC_AllocAndReadWholeMember(controller->bagGraphicsNARC, item_entry_icons_NCGR, HEAP_ID_BAG);
    NNS_G2dGetUnpackedBGCharacterData(file, charData);
    return file;
}

static void DrawHMIcon(BagController *controller, u32 yOffset)
{
    NNSG2dCharacterData *imageData;

    void *file = LoadBagUIItemEntrySprites(controller, &imageData);
    Window_BlitBitmapRect(&controller->windows[BAG_UI_WINDOW_ITEM_LIST], imageData->pRawData, 40, 0, 64, 16, 0, yOffset, 24, 16);
    Heap_FreeExplicit(HEAP_ID_BAG, file);
}

void BagUI_PrintCloseBagEntry(BagController *controller, u32 yOffset)
{
    String *string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_CloseBag);

    Window_FillRectWithColor(&controller->windows[BAG_UI_WINDOW_ITEM_LIST], 0, 0, yOffset, ITEM_LIST_WINDOW_WIDTH * TILE_WIDTH_PIXELS, TEXT_LINES(1));
    Text_AddPrinterWithParamsAndColor(&controller->windows[BAG_UI_WINDOW_ITEM_LIST], FONT_SYSTEM, string, 0, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    String_Free(string);
}

void BagUI_DrawRegisteredIcon(BagController *controller, u32 yOffset)
{
    NNSG2dCharacterData *imageData;

    void *file = LoadBagUIItemEntrySprites(controller, &imageData);
    Window_BlitBitmapRect(&controller->windows[BAG_UI_WINDOW_ITEM_LIST], imageData->pRawData, 0, 0, 64, 16, 96, yOffset, 40, 16);
    Heap_FreeExplicit(HEAP_ID_BAG, file);
}

void BagUI_LoadItemActionStrings(BagController *controller)
{
    controller->itemActionStrings[0] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Use);
    controller->itemActionStrings[1] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Walk);
    controller->itemActionStrings[2] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Check);
    controller->itemActionStrings[3] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Plant);
    controller->itemActionStrings[4] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Open);
    controller->itemActionStrings[5] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Trash);
    controller->itemActionStrings[6] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Register);
    controller->itemActionStrings[7] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Deselect);
    controller->itemActionStrings[8] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Give);
    controller->itemActionStrings[9] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_CheckTag);
    controller->itemActionStrings[10] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Confirm);
    controller->itemActionStrings[11] = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_Cancel);
}

void BagUI_FreeItemActionStrings(BagController *param0)
{
    for (u16 i = 0; i < 12; i++) {
        String_Free(param0->itemActionStrings[i]);
    }
}

void BagUI_ShowItemActionsMenu(BagController *controller, u8 *actions, u8 numActions)
{
    u16 msgBoxWindowIdx;
    if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_BERRIES) {
        Window_Add(controller->bgConfig, &controller->itemActionsWindow, BG_LAYER_MAIN_0, 23, 23 - TEXT_LINES_TILES(numActions), 8, TEXT_LINES_TILES(numActions), PLTT_3, BASE_TILE_ITEM_ACTIONS_MENU);
        msgBoxWindowIdx = BAG_UI_WINDOW_MSG_BOX_NARROW;
    } else {
        Window_Add(controller->bgConfig, &controller->itemActionsWindow, BG_LAYER_MAIN_0, 23 + 1, 23 - TEXT_LINES_TILES(numActions), 8 - 1, TEXT_LINES_TILES(numActions), PLTT_3, BASE_TILE_ITEM_ACTIONS_MENU);
        msgBoxWindowIdx = BAG_UI_WINDOW_MSG_BOX;
    }

    controller->itemActionChoices = StringList_New(numActions, HEAP_ID_BAG);

    for (u16 i = 0; i < numActions; i++) {
        StringList_AddFromString(controller->itemActionChoices, controller->itemActionStrings[actions[i]], BagApplication_GetItemActionFunc(actions[i]));
    }

    MenuTemplate menuTemplate;
    menuTemplate.choices = controller->itemActionChoices;
    menuTemplate.window = &controller->itemActionsWindow;
    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = numActions;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;

    if (numActions >= 4) {
        menuTemplate.loopAround = TRUE;
    } else {
        menuTemplate.loopAround = FALSE;
    }

    controller->menu = Menu_New(&menuTemplate, 8, 0, 0, HEAP_ID_BAG, PAD_BUTTON_B);

    if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_TMHMS) {
        Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION], 0);
        BagUI_PrintTMHMMoveStats(controller, controller->bagCtx->selectedItem);
        Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
        BagUI_UpdateTypeAndCategoryIcons(controller, controller->bagCtx->selectedItem, TRUE);
    } else {
        Window_DrawMessageBoxWithScrollCursor(&controller->windows[msgBoxWindowIdx], TRUE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
        Window_FillTilemap(&controller->windows[msgBoxWindowIdx], 15);

        String *template = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_ItemIsSelected);
        String *formatted = String_Init(28 * 2, HEAP_ID_BAG);
        BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];

        BufferPocketSlotItemName(controller, pocket->cursorScroll + pocket->cursorPos - 1, 0);
        StringTemplate_Format(controller->strTemplate, formatted, template);
        Text_AddPrinterWithParams(&controller->windows[msgBoxWindowIdx], FONT_MESSAGE, formatted, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        String_Free(formatted);
        String_Free(template);
        Window_ScheduleCopyToVRAM(&controller->windows[msgBoxWindowIdx]);
    }

    Window_DrawStandardFrame(&controller->itemActionsWindow, TRUE, BASE_TILE_BAG_WINDOW_FRAME, PLTT_14);
    Window_ScheduleCopyToVRAM(&controller->itemActionsWindow);
}

void BagUI_CloseItemActionsMenu(BagController *controller)
{
    u32 msgBoxWindowIdx;
    if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType == POCKET_BERRIES) {
        msgBoxWindowIdx = BAG_UI_WINDOW_MSG_BOX_NARROW;
    } else {
        msgBoxWindowIdx = BAG_UI_WINDOW_MSG_BOX;
    }

    if (controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx].pocketType != POCKET_TMHMS) {
        Window_EraseMessageBox(&controller->windows[msgBoxWindowIdx], TRUE);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[msgBoxWindowIdx]);
    }

    Window_EraseStandardFrame(&controller->itemActionsWindow, TRUE);
    Window_ClearAndScheduleCopyToVRAM(&controller->itemActionsWindow);
    Menu_Free(controller->menu, NULL);
    StringList_Free(controller->itemActionChoices);
    Window_Remove(&controller->itemActionsWindow);
    Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION], 0);
    BagUI_PrintItemDescription(controller, controller->bagCtx->selectedItem);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
    BagUI_UpdateTypeAndCategoryIcons(controller, ITEM_NONE, FALSE);
}

void BagUI_PrintMovingItemMsg(BagController *controller)
{
    Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION], 0);

    String *template = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_MoveItemWhere);
    String *formatted = String_Init(130, HEAP_ID_BAG);

    BufferPocketSlotItemName(controller, controller->movedItemPos - 1, 0);

    StringTemplate_Format(controller->strTemplate, formatted, template);
    Text_AddPrinterWithParamsAndColor(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION], FONT_SYSTEM, formatted, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
    String_Free(formatted);
    String_Free(template);
}

void BagUI_ShowItemTrashWindows(BagController *controller)
{
    Window_DrawStandardFrame(&controller->windows[BAG_UI_WINDOW_THROW_AWAY_COUNT], 1, BASE_TILE_BAG_WINDOW_FRAME, PLTT_14);
    BagUI_PrintItemTrashCount(controller);
    Window_DrawMessageBoxWithScrollCursor(&controller->windows[BAG_UI_WINDOW_MSG_BOX], 1, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
    Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX], 15);

    String *template = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_ThrowAwayHowMany);
    String *formatted = String_Init(14 * 2 * 2, HEAP_ID_BAG);
    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];

    BufferPocketSlotItemName(controller, pocket->cursorScroll + pocket->cursorPos - 1, 0);

    StringTemplate_Format(controller->strTemplate, formatted, template);
    Text_AddPrinterWithParams(&controller->windows[BAG_UI_WINDOW_MSG_BOX], FONT_MESSAGE, formatted, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_MSG_BOX]);
    String_Free(formatted);
    String_Free(template);
}

void BagUI_PrintItemTrashCount(BagController *controller)
{
    Window *window = &controller->windows[BAG_UI_WINDOW_THROW_AWAY_COUNT];
    Window_FillTilemap(window, 15);
    String *string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_ThrowAwayCount);

    StringTemplate_SetNumber(controller->strTemplate, 0, controller->selectedItemCount, 3, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, controller->stringBuffer, 16, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
    String_Free(string);
}

void BagUI_CloseItemTrashWindows(BagController *controller)
{
    Window_EraseMessageBox(&controller->windows[BAG_UI_WINDOW_MSG_BOX], TRUE);
    Window_EraseStandardFrame(&controller->windows[BAG_UI_WINDOW_THROW_AWAY_COUNT], TRUE);
    Window_ClearAndScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_MSG_BOX]);
    Window_ClearAndScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_THROW_AWAY_COUNT]);
    Window_ScheduleCopyToVRAM(&controller->windows[BAG_UI_WINDOW_ITEM_DESCRIPTION]);
}

void BagUI_PrintConfirmItemTrashMsg(BagController *controller)
{

    Window_DrawMessageBoxWithScrollCursor(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], TRUE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
    Window_FillTilemap(&controller->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], 15);

    String *string = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_ThrowAwayOK);
    BagApplicationPocket *pocket = &controller->bagCtx->accessiblePockets[controller->bagCtx->currPocketIdx];

    if (controller->selectedItemCount == 1) {
        BufferPocketSlotItemName(controller, pocket->cursorScroll + pocket->cursorPos - 1, 0);
    } else {
        BufferPocketSlotItemNamePlural(controller, pocket->cursorScroll + pocket->cursorPos - 1, 0);
    }

    StringTemplate_SetNumber(controller->strTemplate, 1, controller->selectedItemCount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, string);
    String_Free(string);

    controller->msgBoxPrinterID = BagUI_PrintStrBufferToWideMsgBox(controller);
}

u8 BagUI_PrintStrBufferToWideMsgBox(BagController *interface)
{
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    u8 textPrinterID = Text_AddPrinterWithParams(&interface->windows[BAG_UI_WINDOW_MSG_BOX_WIDE], FONT_MESSAGE, interface->stringBuffer, 0, 0, Options_TextFrameDelay(interface->options), BagUITextPrinterCallback);

    return textPrinterID;
}

static BOOL BagUITextPrinterCallback(TextPrinterTemplate *template, u16 param1)
{
    switch (param1) {
    case 1:
        return Sound_IsAnyEffectPlaying();
    case 2:
        return Sound_IsBGMPausedByFanfare();
    case 3:
        Sound_PlayEffect(SEQ_SE_DP_PC_LOGIN);
        break;
    case 4:
        return Sound_IsEffectPlaying(SEQ_SE_DP_PC_LOGIN);
    }

    return FALSE;
}

void BagUI_ShowYesNoMenu(BagController *controller)
{
    controller->menu = Menu_MakeYesNoChoice(controller->bgConfig, &sYesNoMenuTemplate, BASE_TILE_BAG_WINDOW_FRAME, PLTT_14, HEAP_ID_BAG);
}

void BagUI_PrintSellCountAndValue(BagController *controller, u8 skipFrame)
{
    Window *window = &controller->windows[BAG_UI_WINDOW_SELL_COUNT_VALUE];

    if (skipFrame == FALSE) {
        Window_DrawStandardFrame(window, TRUE, BASE_TILE_BAG_WINDOW_FRAME, PLTT_14);
    }

    Window_FillTilemap(window, 15);

    String *sellCount = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_SellNum);

    StringTemplate_SetNumber(controller->strTemplate, 0, controller->selectedItemCount, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, sellCount);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, controller->stringBuffer, 0, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(sellCount);

    String *sellValue = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_SellValue);

    StringTemplate_SetNumber(controller->strTemplate, 0, controller->soldItemPrice * controller->selectedItemCount, 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, sellValue);

    u32 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, controller->stringBuffer, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, controller->stringBuffer, SELL_WINDOW_WIDTH * TILE_WIDTH_PIXELS - stringWidth, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
    String_Free(sellValue);
}

void BagUI_PrintMoney(BagController *controller, u8 skipLabel)
{
    Window *window = &controller->windows[BAG_UI_WINDOW_MONEY];

    if (skipLabel == FALSE) {
        Window_FillTilemap(window, 15);
        Window_DrawStandardFrame(window, 1, BASE_TILE_BAG_WINDOW_FRAME, PLTT_14);

        String *label = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_MoneyLabel);

        Text_AddPrinterWithParams(window, FONT_SYSTEM, label, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        String_Free(label);
    } else {
        Window_FillRectWithColor(window, 15, 0, 16, MONEY_WINDOW_WIDTH * TILE_WIDTH_PIXELS, TEXT_LINES(1));
    }

    String *amount = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_MoneyNum);

    StringTemplate_SetNumber(controller->strTemplate, 0, TrainerInfo_Money(controller->trainerInfo), 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, amount);

    u32 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, controller->stringBuffer, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, controller->stringBuffer, MONEY_WINDOW_WIDTH * TILE_WIDTH_PIXELS - stringWidth, TEXT_LINES(1), TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
    String_Free(amount);
}

void BagUI_DrawPoffinCountMsgBox(BagController *controller)
{
    Window *window = &controller->windows[BAG_UI_WINDOW_POFFIN_COUNT];
    Window_FillTilemap(window, 15);
    Window_DrawStandardFrame(window, TRUE, BASE_TILE_BAG_WINDOW_FRAME, PLTT_14);

    String *label = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_PoffinCountLabel);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, label, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(label);

    String *count = MessageLoader_GetNewString(controller->bagStringsLoader, Bag_Text_PoffinCountNum);
    StringTemplate_SetNumber(controller->strTemplate, 0, PoffinCase_CountFilledSlots(SaveData_GetPoffinCase(controller->bagCtx->saveData)), 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(controller->strTemplate, controller->stringBuffer, count);
    String_Free(count);

    u32 stringWidth = Font_CalcStringWidth(FONT_SYSTEM, controller->stringBuffer, 0);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, controller->stringBuffer, POFFIN_COUNT_WINDOW_WIDTH * TILE_WIDTH_PIXELS - stringWidth, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
}
