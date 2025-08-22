#include "overlay084/ov84_0223F040.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/items.h"

#include "overlay084/ov84_0223B5A0.h"
#include "overlay084/ov84_022403F4.h"

#include "bag.h"
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
#include "strbuf.h"
#include "string_list.h"
#include "string_padding_mode.h"
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"

#include "res/text/bank/unk_0007.h"

#define ITEM_LIST_WINDOW_WIDTH         17
#define ITEM_LIST_WINDOW_HEIGHT        TEXT_LINES_TILES(BAG_UI_NUM_VISIBLE_ITEMS)
#define ITEM_DESCRIPTION_WINDOW_WIDTH  (HW_LCD_WIDTH / TILE_WIDTH_PIXELS)
#define ITEM_DESCRIPTION_WINDOW_HEIGHT TEXT_LINES_TILES(3)
#define MSG_BOX_WINDOW_WIDTH           14
#define MSG_BOX_NARROW_WINDOW_WIDTH    13
#define MSG_BOX_WIDE_WINDOW_WIDTH      27
#define MSG_BOX_WINDOW_HEIGHT          TEXT_LINES_TILES(2)
#define POCKET_INDICATOR_WINDOW_WIDTH  12
#define POCKET_INDICATOR_WINDOW_HEIGHT 2
#define POCKET_NAMES_WINDOW_WIDTH      (12 * 3)
#define POCKET_NAMES_WINDOW_HEIGHT     3
#define YES_NO_WINDOW_WIDTH            7
#define YES_NO_WINDOW_HEIGHT           TEXT_LINES_TILES(2)
#define SELL_WINDOW_WIDTH              12
#define SELL_WINDOW_HEIGHT             4

#define BASE_TILE_ITEM_LIST             1
#define BASE_TILE_ITEM_DESCRIPTION      (BASE_TILE_ITEM_LIST + (ITEM_LIST_WINDOW_WIDTH * ITEM_LIST_WINDOW_HEIGHT))
#define BASE_TILE_POCKET_NAMES          (BASE_TILE_ITEM_DESCRIPTION + ITEM_DESCRIPTION_WINDOW_WIDTH * ITEM_DESCRIPTION_WINDOW_HEIGHT)
#define BASE_TILE_MSG_BOX               (BASE_TILE_POCKET_NAMES + POCKET_NAMES_WINDOW_WIDTH * POCKET_NAMES_WINDOW_HEIGHT)
#define BASE_TILE_MSG_BOX_NARROW        BASE_TILE_MSG_BOX
#define BASE_TILE_POCKET_INDICATOR      (BASE_TILE_MSG_BOX + MSG_BOX_WINDOW_WIDTH * MSG_BOX_WINDOW_HEIGHT)
#define BASE_TILE_MSG_BOX_WIDE          (BASE_TILE_POCKET_INDICATOR + POCKET_INDICATOR_WINDOW_WIDTH * POCKET_INDICATOR_WINDOW_HEIGHT)
#define BASE_TILE_YES_NO                (BASE_TILE_MSG_BOX_WIDE + MSG_BOX_WIDE_WINDOW_WIDTH * MSG_BOX_WINDOW_HEIGHT)
#define BASE_TILE_SELL_COUNT_VALUE      (BASE_TILE_YES_NO + YES_NO_WINDOW_WIDTH * YES_NO_WINDOW_HEIGHT)
#define BASE_TILE_ITEM_ACTIONS_MENU     BASE_TILE_SELL_COUNT_VALUE
#define BASE_TILE_MONEY                 (BASE_TILE_SELL_COUNT_VALUE + SELL_WINDOW_WIDTH * SELL_WINDOW_HEIGHT)
#define BASE_TILE_POFFIN_COUNT          903
#define BASE_TILE_THROW_AWAY_COUNT      903
#define BASE_TILE_STANDARD_WINDOW_FRAME (1024 - NUM_TILES_STANDARD_WINDOW_FRAME)
#define BASE_TILE_MSG_BOX_FRAME         (BASE_TILE_STANDARD_WINDOW_FRAME - NUM_TILES_MESSAGE_BOX_FRAME)

#define DIGIT_WIDTH                 6
#define ITEM_COUNT_X_OFFSET         7
#define ITEM_COUNT_NUMBER_START_POS (ITEM_LIST_WINDOW_WIDTH * TILE_WIDTH_PIXELS - 2)
#define ITEM_COUNT_START_POS        (ITEM_COUNT_NUMBER_START_POS - 3 * DIGIT_WIDTH - ITEM_COUNT_X_OFFSET)

static void DrawHMIcon(BagInterface *interface, u32 yOffset);
static BOOL BagInterface_TextPrinterCallback(TextPrinterTemplate *template, u16 param1);

static const WindowTemplate sYesNoMenuWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 23,
    .tilemapTop = 13,
    .width = YES_NO_WINDOW_WIDTH,
    .height = YES_NO_WINDOW_HEIGHT,
    .palette = PLTT_3,
    .baseTile = BASE_TILE_YES_NO
};

void BagInterface_CreateWindows(BagInterface *interface)
{
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], BG_LAYER_MAIN_2, 14, 0, ITEM_LIST_WINDOW_WIDTH, ITEM_LIST_WINDOW_HEIGHT, PLTT_3, BASE_TILE_ITEM_LIST);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], BG_LAYER_MAIN_0, 0, 18, ITEM_DESCRIPTION_WINDOW_WIDTH, ITEM_DESCRIPTION_WINDOW_HEIGHT, PLTT_3, BASE_TILE_ITEM_DESCRIPTION);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES], BG_LAYER_MAIN_2, 0, 13, POCKET_NAMES_WINDOW_WIDTH, POCKET_NAMES_WINDOW_HEIGHT, PLTT_3, BASE_TILE_POCKET_NAMES);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX], BG_LAYER_MAIN_0, 6, 19, MSG_BOX_WINDOW_WIDTH, MSG_BOX_WINDOW_HEIGHT, PLTT_11, BASE_TILE_MSG_BOX);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_NARROW], BG_LAYER_MAIN_0, 6, 19, MSG_BOX_NARROW_WINDOW_WIDTH, MSG_BOX_WINDOW_HEIGHT, PLTT_11, BASE_TILE_MSG_BOX_NARROW);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR], BG_LAYER_MAIN_0, 0, 11, POCKET_INDICATOR_WINDOW_WIDTH, POCKET_INDICATOR_WINDOW_HEIGHT, PLTT_13, BASE_TILE_POCKET_INDICATOR);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], BG_LAYER_MAIN_0, 2, 19, MSG_BOX_WIDE_WINDOW_WIDTH, MSG_BOX_WINDOW_HEIGHT, PLTT_11, BASE_TILE_MSG_BOX_WIDE);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE], BG_LAYER_MAIN_0, 19, 13, SELL_WINDOW_WIDTH, SELL_WINDOW_HEIGHT, PLTT_3, BASE_TILE_SELL_COUNT_VALUE);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_MONEY], BG_LAYER_MAIN_0, 1, 1, 10, TEXT_LINES_TILES(2), PLTT_3, BASE_TILE_MONEY);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT], BG_LAYER_MAIN_0, 24, 19, 7, 4, PLTT_3, BASE_TILE_THROW_AWAY_COUNT);
    Window_Add(interface->bgConfig, &interface->windows[BAG_INTERFACE_WINDOW_POFFIN_COUNT], BG_LAYER_MAIN_0, 1, 12, 11, TEXT_LINES_TILES(2), PLTT_3, BASE_TILE_POFFIN_COUNT);
}

void BagInterface_DeleteWindows(Window *windows)
{
    for (u16 i = 0; i < NUM_BAG_INTERFACE_WINDOWS; i++) {
        Window_Remove(&windows[i]);
    }
}

void BagInterface_LoadPocketNames(BagInterface *interface)
{
    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG_POCKET_NAMES, HEAP_ID_BAG);

    for (u16 i = 0; i < POCKET_MAX; i++) {
        interface->pocketNames[i] = MessageLoader_GetNewStrbuf(msgLoader, i);
    }

    MessageLoader_Free(msgLoader);
}

void BagInterface_FreePocketNames(BagInterface *interface)
{
    for (u16 i = 0; i < POCKET_MAX; i++) {
        Strbuf_Free(interface->pocketNames[i]);
    }
}

void BagInterface_MaybeClearPocketNameBox(BagInterface *interface)
{
    for (u16 i = 0; i < 12; i++) {
        Bg_FillTilemapRect(interface->bgConfig, BG_LAYER_MAIN_2, BASE_TILE_POCKET_NAMES + 12 + i, i, 13, 1, 1, PLTT_3);
        Bg_FillTilemapRect(interface->bgConfig, BG_LAYER_MAIN_2, BASE_TILE_POCKET_NAMES + POCKET_NAMES_WINDOW_WIDTH + 12 + i, i, 13 + 1, 1, 1, PLTT_3);
    }
}

static void PrintPocketNameCentered(BagInterface *interface, Strbuf *string, u16 centerY)
{
    u32 stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&interface->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES], FONT_SYSTEM, string, centerY - stringWidth / 2, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
}

void BagInterface_PrintPocketNames(BagInterface *interface)
{
    Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES], 0);

    BagPocketIndicatorManager *indicMan = &interface->pocketIndicatorMan;
    Strbuf *currentPocketName = interface->pocketNames[interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType];
    Strbuf *nextPocketName = interface->pocketNames[interface->appArguments->accessiblePockets[indicMan->nextPocketIdx].pocketType];

    u16 curPocketNamePos;
    if (indicMan->scrollDirection == 0) {
        curPocketNamePos = 96 + 50 + 12 * indicMan->animFrame;
        PrintPocketNameCentered(interface, nextPocketName, curPocketNamePos - 96);
    } else {
        curPocketNamePos = 96 + 50 - 12 * indicMan->animFrame;
        PrintPocketNameCentered(interface, nextPocketName, curPocketNamePos + 96);
    }

    PrintPocketNameCentered(interface, currentPocketName, curPocketNamePos);
    Window_LoadTiles(&interface->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES]);
}

static void *LoadPocketIndicatorIcons(BagInterface *interface, NNSG2dCharacterData **charData)
{
    void *file = NARC_AllocAndReadWholeMember(interface->bagGraphicsNARC, 21, HEAP_ID_BAG);
    NNS_G2dGetUnpackedBGCharacterData(file, charData);
    return file;
}

void BagInterface_DrawPocketIndicatorIcon(BagInterface *interface, u8 pocketIndex, u8 focused)
{
    NNSG2dCharacterData *icons;
    void *iconsFile = LoadPocketIndicatorIcons(interface, &icons);

    u8 iconX;
    if (focused == TRUE) {
        iconX = interface->appArguments->accessiblePockets[pocketIndex].pocketType * 32 + 16;
    } else {
        iconX = interface->appArguments->accessiblePockets[pocketIndex].pocketType * 32;
    }

    Window_BlitBitmapRect(&interface->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR], icons->pRawData, iconX, 0, 32 * POCKET_MAX, 16, interface->pocketIndicatorLeftX + interface->pocketIndicatorSpacing * pocketIndex, 3, 10, 10);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR]);
    Heap_FreeExplicit(HEAP_ID_BAG, iconsFile);
}

void BagInterface_DrawPocketIndicatorIcons(BagInterface *interface)
{
    NNSG2dCharacterData *icons;

    void *iconsFile = LoadPocketIndicatorIcons(interface, &icons);
    Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR], 0);

    for (u8 i = 0; i < interface->numPockets; i++) {
        u8 iconX;

        if (i == interface->appArguments->currPocketIdx) {
            iconX = interface->appArguments->accessiblePockets[i].pocketType * 32 + 16;
        } else {
            iconX = interface->appArguments->accessiblePockets[i].pocketType * 32;
        }

        Window_BlitBitmapRect(&interface->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR], icons->pRawData, iconX, 0, 32 * POCKET_MAX, 16, interface->pocketIndicatorLeftX + interface->pocketIndicatorSpacing * i, 3, 10, 10);
    }

    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR]);
    Heap_FreeExplicit(HEAP_ID_BAG, iconsFile);
}

static void BagInterface_BufferPocketSlotItemName(BagInterface *interface, u32 pocketSlot, u32 templateParamIdx)
{
    StringTemplate_SetItemName(interface->strTemplate, templateParamIdx, BagInterface_GetItemSlotParam(interface, pocketSlot, ITEM_SLOT_ITEM));
}

static void BagInterface_BufferPocketSlotItemNamePlural(BagInterface *interface, u32 pocketSlot, u32 templateParamIdx)
{
    StringTemplate_SetItemNamePlural(interface->strTemplate, templateParamIdx, BagInterface_GetItemSlotParam(interface, pocketSlot, ITEM_SLOT_ITEM));
}

void BagInterface_PrintItemDescription(BagInterface *interface, u16 item)
{
    Strbuf *strBuf;

    if (item != 0xffff) {
        strBuf = Strbuf_Init(130, HEAP_ID_BAG);
        Item_LoadDescription(strBuf, item, HEAP_ID_BAG);
    } else {
        strBuf = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_CloseBagDescription);
    }

    Text_AddPrinterWithParamsAndColor(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], FONT_SYSTEM, strBuf, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strBuf);
}

void BagInterface_PrintTMHMMoveStats(BagInterface *interface, u16 item)
{
    Window *window = &interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION];
    u16 move = Item_MoveForTMHM(item);

    Strbuf *string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Type);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(string);

    string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_PP);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(string);

    string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Category);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 96, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(string);

    string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Power);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 96, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(string);

    string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Accuracy);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, 96, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(string);

    u16 moveStat = MoveTable_CalcMaxPP(move, 0);
    string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_MaxPPNum);
    StringTemplate_SetNumber(interface->strTemplate, 0, moveStat, 2, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
    Strbuf_Free(string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, interface->strBuffer, 48, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    moveStat = MoveTable_LoadParam(move, MOVEATTRIBUTE_POWER);

    if (moveStat <= 1) {
        string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Dashes);
    } else {
        string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_PowerAccuracyNum);
    }

    StringTemplate_SetNumber(interface->strTemplate, 0, moveStat, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
    Strbuf_Free(string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, interface->strBuffer, 96 + 64, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    moveStat = MoveTable_LoadParam(move, MOVEATTRIBUTE_ACCURACY);

    if (moveStat == 0) {
        string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Dashes);
    } else {
        string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_PowerAccuracyNum);
    }

    StringTemplate_SetNumber(interface->strTemplate, 0, moveStat, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
    Strbuf_Free(string);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, interface->strBuffer, 96 + 64, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
}

void BagInterface_LoadItemCountStrings(BagInterface *interface)
{
    interface->itemCountX = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ItemCountX);
    interface->itemCountNumberFmt = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ItemCountNum);
}

void BagInterface_FreeItemCountStrings(BagInterface *interface)
{
    Strbuf_Free(interface->itemCountX);
    Strbuf_Free(interface->itemCountNumberFmt);
}

void BagInterface_PrintItemCount(BagInterface *interface, u16 count, u16 yOffset, u32 color)
{
    if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
        Text_AddPrinterWithParamsAndColor(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, interface->itemCountX, ITEM_COUNT_START_POS + DIGIT_WIDTH, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, interface->itemCountX, ITEM_COUNT_START_POS, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    }

    Strbuf *string = Strbuf_Init(10, HEAP_ID_BAG);

    StringTemplate_SetNumber(interface->strTemplate, 0, count, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, string, interface->itemCountNumberFmt);

    u32 stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, string, 0);

    Text_AddPrinterWithParamsAndColor(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, string, ITEM_COUNT_NUMBER_START_POS - stringWidth, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    Strbuf_Free(string);
}

void BagInterface_PrintTMHMNumber(BagInterface *interface, BagItem *itemSlot, u32 yOffset)
{
    u16 item = itemSlot->item;

    if (item < ITEM_HM01) {
        item = item - ITEM_TM01 + 1;
        FontSpecialChars_DrawPartyScreenText(interface->specialChars, SPECIAL_CHAR_NUMBER, item, 2, PADDING_MODE_ZEROES, &interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0, yOffset + 5);
        BagInterface_PrintItemCount(interface, itemSlot->quantity, yOffset, TEXT_COLOR(1, 2, 0));
    } else {
        item = item - ITEM_HM01 + 1;
        FontSpecialChars_DrawPartyScreenHPText(interface->specialChars, item, 2, PADDING_MODE_SPACES, &interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 16, yOffset + 5);
        DrawHMIcon(interface, yOffset);
    }
}

void BagInterface_PrintBerryNumber(BagInterface *interface, BagItem *itemSlot, u32 yOffset)
{
    FontSpecialChars_DrawPartyScreenText(interface->specialChars, SPECIAL_CHAR_NUMBER, Item_BerryNumber(itemSlot->item) + 1, 2, PADDING_MODE_ZEROES, &interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0, yOffset + 5);
    BagInterface_PrintItemCount(interface, itemSlot->quantity, yOffset, TEXT_COLOR(1, 2, 0));
}

static void *LoadBagInterfaceItemEntrySprites(BagInterface *interface, NNSG2dCharacterData **charData)
{
    void *file = NARC_AllocAndReadWholeMember(interface->bagGraphicsNARC, 38, HEAP_ID_BAG);
    NNS_G2dGetUnpackedBGCharacterData(file, charData);
    return file;
}

static void DrawHMIcon(BagInterface *interface, u32 yOffset)
{
    NNSG2dCharacterData *imageData;

    void *file = LoadBagInterfaceItemEntrySprites(interface, &imageData);
    Window_BlitBitmapRect(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], imageData->pRawData, 40, 0, 64, 16, 0, yOffset, 24, 16);
    Heap_FreeExplicit(HEAP_ID_BAG, file);
}

void BagInterface_PrintCloseBagEntry(BagInterface *interface, u32 yOffset)
{
    Strbuf *string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_CloseBag);

    Window_FillRectWithColor(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0, 0, yOffset, ITEM_LIST_WINDOW_WIDTH * TILE_WIDTH_PIXELS, TEXT_LINES(1));
    Text_AddPrinterWithParamsAndColor(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, string, 0, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(string);
}

void BagInterface_DrawRegisteredIcon(BagInterface *interface, u32 yOffset)
{
    NNSG2dCharacterData *imageData;

    void *file = LoadBagInterfaceItemEntrySprites(interface, &imageData);
    Window_BlitBitmapRect(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], imageData->pRawData, 0, 0, 64, 16, 96, yOffset, 40, 16);
    Heap_FreeExplicit(HEAP_ID_BAG, file);
}

void BagInterface_LoadItemActionStrings(BagInterface *interface)
{
    interface->itemActionStrings[ITEM_ACTION_USE] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Use);
    interface->itemActionStrings[ITEM_ACTION_WALK] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Walk);
    interface->itemActionStrings[ITEM_ACTION_CHECK] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Check);
    interface->itemActionStrings[ITEM_ACTION_PLANT] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Plant);
    interface->itemActionStrings[ITEM_ACTION_OPEN] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Open);
    interface->itemActionStrings[ITEM_ACTION_TRASH] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Trash);
    interface->itemActionStrings[ITEM_ACTION_REGISTER] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Register);
    interface->itemActionStrings[ITEM_ACTION_DESELECT] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Deselect);
    interface->itemActionStrings[ITEM_ACTION_GIVE] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Give);
    interface->itemActionStrings[ITEM_ACTION_CHECK_TAG] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_CheckTag);
    interface->itemActionStrings[ITEM_ACTION_CONFIRM] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Confirm);
    interface->itemActionStrings[ITEM_ACTION_CANCEL] = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_Cancel);
}

void BagInterface_FreeItemActionStrings(BagInterface *interface)
{
    for (u16 i = 0; i < NUM_ITEM_ACTIONS; i++) {
        Strbuf_Free(interface->itemActionStrings[i]);
    }
}

void BagInterface_ShowItemActionsMenu(BagInterface *interface, u8 *actions, u8 numActions)
{
    u16 msgBoxWindowIdx;
    if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_BERRIES) {
        Window_Add(interface->bgConfig, &interface->itemActionsWindow, BG_LAYER_MAIN_0, 23, 23 - TEXT_LINES_TILES(numActions), 8, TEXT_LINES_TILES(numActions), PLTT_3, BASE_TILE_ITEM_ACTIONS_MENU);
        msgBoxWindowIdx = BAG_INTERFACE_WINDOW_MSG_BOX_NARROW;
    } else {
        Window_Add(interface->bgConfig, &interface->itemActionsWindow, BG_LAYER_MAIN_0, 23 + 1, 23 - TEXT_LINES_TILES(numActions), 8 - 1, TEXT_LINES_TILES(numActions), PLTT_3, BASE_TILE_ITEM_ACTIONS_MENU);
        msgBoxWindowIdx = BAG_INTERFACE_WINDOW_MSG_BOX;
    }

    interface->itemActionsMenuChoices = StringList_New(numActions, HEAP_ID_BAG);

    for (u16 i = 0; i < numActions; i++) {
        StringList_AddFromStrbuf(interface->itemActionsMenuChoices, interface->itemActionStrings[actions[i]], GetItemActionFunc(actions[i]));
    }

    MenuTemplate menuTemplate;
    menuTemplate.choices = interface->itemActionsMenuChoices;
    menuTemplate.window = &interface->itemActionsWindow;
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

    interface->menu = Menu_New(&menuTemplate, 8, 0, 0, HEAP_ID_BAG, PAD_BUTTON_B);

    if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
        Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
        BagInterface_PrintTMHMMoveStats(interface, interface->appArguments->selectedItem);
        Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_UpdateTypeAndCategoryIcons(interface, interface->appArguments->selectedItem, TRUE);
    } else {
        Window_DrawMessageBoxWithScrollCursor(&interface->windows[msgBoxWindowIdx], TRUE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
        Window_FillTilemap(&interface->windows[msgBoxWindowIdx], 15);

        Strbuf *template = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ItemIsSelected);
        Strbuf *formatted = Strbuf_Init(28 * 2, HEAP_ID_BAG);
        BagInterfacePocketInfo *pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

        BagInterface_BufferPocketSlotItemName(interface, pocket->cursorScroll + pocket->cursorPos - 1, 0);
        StringTemplate_Format(interface->strTemplate, formatted, template);
        Text_AddPrinterWithParams(&interface->windows[msgBoxWindowIdx], FONT_MESSAGE, formatted, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(formatted);
        Strbuf_Free(template);
        Window_ScheduleCopyToVRAM(&interface->windows[msgBoxWindowIdx]);
    }

    Window_DrawStandardFrame(&interface->itemActionsWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_14);
    Window_ScheduleCopyToVRAM(&interface->itemActionsWindow);
}

void BagInterface_CloseItemActionsMenu(BagInterface *interface)
{
    u32 msgBoxWindowIdx;
    if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType == POCKET_BERRIES) {
        msgBoxWindowIdx = BAG_INTERFACE_WINDOW_MSG_BOX_NARROW;
    } else {
        msgBoxWindowIdx = BAG_INTERFACE_WINDOW_MSG_BOX;
    }

    if (interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx].pocketType != POCKET_TMHMS) {
        Window_EraseMessageBox(&interface->windows[msgBoxWindowIdx], TRUE);
        Window_ClearAndScheduleCopyToVRAM(&interface->windows[msgBoxWindowIdx]);
    }

    Window_EraseStandardFrame(&interface->itemActionsWindow, TRUE);
    Window_ClearAndScheduleCopyToVRAM(&interface->itemActionsWindow);
    Menu_Free(interface->menu, NULL);
    StringList_Free(interface->itemActionsMenuChoices);
    Window_Remove(&interface->itemActionsWindow);
    Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
    BagInterface_PrintItemDescription(interface, interface->appArguments->selectedItem);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    BagInterface_UpdateTypeAndCategoryIcons(interface, ITEM_NONE, FALSE);
}

void BagInterface_PrintMovingItemMessage(BagInterface *interface)
{
    Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);

    Strbuf *template = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_MoveItemWhere);
    Strbuf *formatted = Strbuf_Init(130, HEAP_ID_BAG);

    BagInterface_BufferPocketSlotItemName(interface, interface->movingItemIndex - 1, 0);

    StringTemplate_Format(interface->strTemplate, formatted, template);
    Text_AddPrinterWithParamsAndColor(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], FONT_SYSTEM, formatted, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    Strbuf_Free(formatted);
    Strbuf_Free(template);
}

void BagInterface_ShowItemTrashWindows(BagInterface *interface)
{
    Window_DrawStandardFrame(&interface->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT], 1, BASE_TILE_STANDARD_WINDOW_FRAME, 14);
    BagInterface_PrintItemTrashCount(interface);
    Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX], 1, BASE_TILE_MSG_BOX_FRAME, 12);
    Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX], 15);

    Strbuf *template = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ThrowAwayHowMany);
    Strbuf *formatted = Strbuf_Init(14 * 2 * 2, HEAP_ID_BAG);
    BagInterfacePocketInfo *pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

    BagInterface_BufferPocketSlotItemName(interface, pocket->cursorScroll + pocket->cursorPos - 1, 0);

    StringTemplate_Format(interface->strTemplate, formatted, template);
    Text_AddPrinterWithParams(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX], FONT_MESSAGE, formatted, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX]);
    Strbuf_Free(formatted);
    Strbuf_Free(template);
}

void BagInterface_PrintItemTrashCount(BagInterface *interface)
{
    Window *window = &interface->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT];
    Window_FillTilemap(window, 15);
    Strbuf *string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ThrowAwayCount);

    StringTemplate_SetNumber(interface->strTemplate, 0, interface->selectedItemCount, 3, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, interface->strBuffer, 16, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
    Strbuf_Free(string);
}

void BagInterface_CloseItemTrashWindows(BagInterface *interface)
{
    Window_EraseMessageBox(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX], TRUE);
    Window_EraseStandardFrame(&interface->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT], TRUE);
    Window_ClearAndScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX]);
    Window_ClearAndScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT]);
    Window_ScheduleCopyToVRAM(&interface->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
}

void BagInterface_PrintConfirmItemTrashMsg(BagInterface *interface)
{

    Window_DrawMessageBoxWithScrollCursor(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], TRUE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
    Window_FillTilemap(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);

    Strbuf *string = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_ThrowAwayOK);
    BagInterfacePocketInfo *pocket = &interface->appArguments->accessiblePockets[interface->appArguments->currPocketIdx];

    if (interface->selectedItemCount == 1) {
        BagInterface_BufferPocketSlotItemName(interface, pocket->cursorScroll + pocket->cursorPos - 1, 0);
    } else {
        BagInterface_BufferPocketSlotItemNamePlural(interface, pocket->cursorScroll + pocket->cursorPos - 1, 0);
    }

    StringTemplate_SetNumber(interface->strTemplate, 1, interface->selectedItemCount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, interface->strBuffer, string);
    Strbuf_Free(string);

    interface->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(interface);
}

u8 BagInterface_PrintStrBufferToWideMsgBox(BagInterface *interface)
{
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(FALSE);
    u8 textPrinterID = Text_AddPrinterWithParams(&interface->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FONT_MESSAGE, interface->strBuffer, 0, 0, Options_TextFrameDelay(interface->options), BagInterface_TextPrinterCallback);

    return textPrinterID;
}

static BOOL BagInterface_TextPrinterCallback(TextPrinterTemplate *template, u16 param1)
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

void BagInterface_ShowYesNoMenu(BagInterface *interface)
{
    interface->menu = Menu_MakeYesNoChoice(interface->bgConfig, &sYesNoMenuWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_14, HEAP_ID_BAG);
}

void BagInterface_PrintSellCountAndValue(BagInterface *interface, u8 skipFrame)
{
    Window *window = &interface->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE];

    if (skipFrame == FALSE) {
        Window_DrawStandardFrame(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_14);
    }

    Window_FillTilemap(window, 15);

    Strbuf *sellCount = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_SellNum);

    StringTemplate_SetNumber(interface->strTemplate, 0, interface->selectedItemCount, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, interface->strBuffer, sellCount);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, interface->strBuffer, 0, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(sellCount);

    Strbuf *sellValue = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_SellValue);

    StringTemplate_SetNumber(interface->strTemplate, 0, interface->soldItemPrice * interface->selectedItemCount, 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, interface->strBuffer, sellValue);

    u32 stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, interface->strBuffer, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, interface->strBuffer, (12 * 8) - stringWidth, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
    Strbuf_Free(sellValue);
}

void BagInterface_PrintMoney(BagInterface *interface, u8 skipLabel)
{
    Window *window = &interface->windows[BAG_INTERFACE_WINDOW_MONEY];

    if (skipLabel == FALSE) {
        Window_FillTilemap(window, 15);
        Window_DrawStandardFrame(window, 1, BASE_TILE_STANDARD_WINDOW_FRAME, 14);

        Strbuf *label = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_MoneyLabel);

        Text_AddPrinterWithParams(window, FONT_SYSTEM, label, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(label);
    } else {
        Window_FillRectWithColor(window, 15, 0, 16, (10 * 8), TEXT_LINES(1));
    }

    Strbuf *amount = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_MoneyNum);

    StringTemplate_SetNumber(interface->strTemplate, 0, TrainerInfo_Money(interface->trainerInfo), 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, interface->strBuffer, amount);

    u32 stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, interface->strBuffer, 0);

    Text_AddPrinterWithParams(window, FONT_SYSTEM, interface->strBuffer, (10 * 8) - stringWidth, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
    Strbuf_Free(amount);
}

void BagInterface_DrawPoffinCountMsgBox(BagInterface *interface)
{
    Window *window = &interface->windows[BAG_INTERFACE_WINDOW_POFFIN_COUNT];
    Window_FillTilemap(window, 15);
    Window_DrawStandardFrame(window, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 14);

    Strbuf *label = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_PoffinCountLabel);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, label, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(label);

    Strbuf *count = MessageLoader_GetNewStrbuf(interface->bagStringsLoader, Bag_Text_PoffinCountNum);
    StringTemplate_SetNumber(interface->strTemplate, 0, PoffinCase_CountFilledSlots(SaveData_GetPoffinCase(interface->appArguments->saveData)), 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(interface->strTemplate, interface->strBuffer, count);
    Strbuf_Free(count);

    u32 stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, interface->strBuffer, 0);
    Text_AddPrinterWithParams(window, FONT_SYSTEM, interface->strBuffer, 11 * 8 - stringWidth, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(window);
}
