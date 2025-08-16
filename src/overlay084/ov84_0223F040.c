#include "overlay084/ov84_0223F040.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/items.h"

#include "struct_defs/struct_0207CB08.h"

#include "overlay084/ov84_0223B5A0.h"
#include "overlay084/ov84_022403F4.h"
#include "overlay084/struct_ov84_0223BE5C.h"
#include "overlay084/struct_ov84_0223C920.h"

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

static void DrawHMIcon(BagInterface *param0, u32 param1);
static BOOL BagInterface_TextPrinterCallback(TextPrinterTemplate *param0, u16 param1);

static const WindowTemplate sYesNoMenuWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 23,
    .tilemapTop = 13,
    .width = YES_NO_WINDOW_WIDTH,
    .height = YES_NO_WINDOW_HEIGHT,
    .palette = PLTT_3,
    .baseTile = BASE_TILE_YES_NO
};

void BagInterface_CreateWindows(BagInterface *param0)
{
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], BG_LAYER_MAIN_2, 14, 0, ITEM_LIST_WINDOW_WIDTH, ITEM_LIST_WINDOW_HEIGHT, PLTT_3, BASE_TILE_ITEM_LIST);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], BG_LAYER_MAIN_0, 0, 18, ITEM_DESCRIPTION_WINDOW_WIDTH, ITEM_DESCRIPTION_WINDOW_HEIGHT, PLTT_3, BASE_TILE_ITEM_DESCRIPTION);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES], BG_LAYER_MAIN_2, 0, 13, POCKET_NAMES_WINDOW_WIDTH, POCKET_NAMES_WINDOW_HEIGHT, PLTT_3, BASE_TILE_POCKET_NAMES);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX], BG_LAYER_MAIN_0, 6, 19, MSG_BOX_WINDOW_WIDTH, MSG_BOX_WINDOW_HEIGHT, PLTT_11, BASE_TILE_MSG_BOX);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_NARROW], BG_LAYER_MAIN_0, 6, 19, MSG_BOX_NARROW_WINDOW_WIDTH, MSG_BOX_WINDOW_HEIGHT, PLTT_11, BASE_TILE_MSG_BOX_NARROW);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR], BG_LAYER_MAIN_0, 0, 11, POCKET_INDICATOR_WINDOW_WIDTH, POCKET_INDICATOR_WINDOW_HEIGHT, PLTT_13, BASE_TILE_POCKET_INDICATOR);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], BG_LAYER_MAIN_0, 2, 19, MSG_BOX_WIDE_WINDOW_WIDTH, MSG_BOX_WINDOW_HEIGHT, PLTT_11, BASE_TILE_MSG_BOX_WIDE);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE], BG_LAYER_MAIN_0, 19, 13, SELL_WINDOW_WIDTH, SELL_WINDOW_HEIGHT, PLTT_3, BASE_TILE_SELL_COUNT_VALUE);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_MONEY], BG_LAYER_MAIN_0, 1, 1, 10, TEXT_LINES_TILES(2), PLTT_3, BASE_TILE_MONEY);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT], BG_LAYER_MAIN_0, 24, 19, 7, 4, PLTT_3, BASE_TILE_THROW_AWAY_COUNT);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_POFFIN_COUNT], BG_LAYER_MAIN_0, 1, 12, 11, TEXT_LINES_TILES(2), PLTT_3, BASE_TILE_POFFIN_COUNT);
}

void BagInterface_DeleteWindows(Window *param0)
{
    for (u16 i = 0; i < NUM_BAG_INTERFACE_WINDOWS; i++) {
        Window_Remove(&param0[i]);
    }
}

void BagInterface_LoadPocketNames(BagInterface *param0)
{
    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG_POCKET_NAMES, HEAP_ID_6);

    for (u16 i = 0; i < POCKET_MAX; i++) {
        param0->pocketNames[i] = MessageLoader_GetNewStrbuf(msgLoader, i);
    }

    MessageLoader_Free(msgLoader);
}

void BagInterface_FreePocketNames(BagInterface *param0)
{
    for (u16 i = 0; i < POCKET_MAX; i++) {
        Strbuf_Free(param0->pocketNames[i]);
    }
}

void BagInterface_MaybeClearPocketNameBox(BagInterface *param0)
{
    for (u16 i = 0; i < 12; i++) {
        Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_MAIN_2, BASE_TILE_POCKET_NAMES + 12 + i, i, 13, 1, 1, PLTT_3);
        Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_MAIN_2, BASE_TILE_POCKET_NAMES + POCKET_NAMES_WINDOW_WIDTH + 12 + i, i, 13 + 1, 1, 1, PLTT_3);
    }
}

static void PrintPocketNameCentered(BagInterface *param0, Strbuf *string, u16 centerY)
{
    u32 stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES], FONT_SYSTEM, string, centerY - stringWidth / 2, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
}

void BagInterface_PrintPocketNames(BagInterface *param0)
{
    BagPocketIndicatorManager *v0;
    Strbuf *nextPocketName;
    Strbuf *currentPocketName;
    u16 curPocketNamePos;

    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES], 0);

    v0 = &param0->pocketIndicatorMan;
    currentPocketName = param0->pocketNames[param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType];
    nextPocketName = param0->pocketNames[param0->appArguments->accessiblePockets[v0->nextPocketIdx].pocketType];

    if (v0->scrollDirection == 0) {
        curPocketNamePos = 96 + 50 + 12 * v0->animFrame;
        PrintPocketNameCentered(param0, nextPocketName, curPocketNamePos - 96);
    } else {
        curPocketNamePos = 96 + 50 - 12 * v0->animFrame;
        PrintPocketNameCentered(param0, nextPocketName, curPocketNamePos + 96);
    }

    PrintPocketNameCentered(param0, currentPocketName, curPocketNamePos);
    Window_LoadTiles(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES]);
}

static void *LoadPocketIndicatorIcons(BagInterface *param0, NNSG2dCharacterData **param1)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0->bagGraphicsNARC, 21, HEAP_ID_6);
    NNS_G2dGetUnpackedBGCharacterData(v0, param1);
    return v0;
}

void BagInterface_DrawPocketIndicatorIcon(BagInterface *param0, u8 pocketIndex, u8 focused)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;

    v1 = LoadPocketIndicatorIcons(param0, &v0);
    if (focused == TRUE) {
        v2 = param0->appArguments->accessiblePockets[pocketIndex].pocketType * 32 + 16;
    } else {
        v2 = param0->appArguments->accessiblePockets[pocketIndex].pocketType * 32;
    }

    Window_BlitBitmapRect(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR], v0->pRawData, v2, 0, 32 * POCKET_MAX, 16, param0->pocketIndicatorLeftX + param0->pocketIndicatorSpacing * pocketIndex, 3, 10, 10);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR]);
    Heap_FreeExplicit(HEAP_ID_6, v1);
}

void BagInterface_DrawPocketIndicatorIcons(BagInterface *param0)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;
    u8 v3;

    v1 = LoadPocketIndicatorIcons(param0, &v0);
    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR], 0);

    for (v2 = 0; v2 < param0->numPockets; v2++) {
        if (v2 == param0->appArguments->currPocketIdx) {
            v3 = param0->appArguments->accessiblePockets[v2].pocketType * 32 + 16;
        } else {
            v3 = param0->appArguments->accessiblePockets[v2].pocketType * 32;
        }

        Window_BlitBitmapRect(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR], v0->pRawData, v3, 0, 32 * POCKET_MAX, 16, param0->pocketIndicatorLeftX + param0->pocketIndicatorSpacing * v2, 3, 10, 10);
    }

    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR]);
    Heap_FreeExplicit(HEAP_ID_6, v1);
}

static void BagInterface_BufferPocketSlotItemName(BagInterface *param0, u32 pocketSlot, u32 templateParamIdx)
{
    StringTemplate_SetItemName(param0->strTemplate, templateParamIdx, BagInterface_GetItemSlotProperty(param0, pocketSlot, ITEM_SLOT_ITEM));
}

static void BagInterface_BufferPocketSlotItemNamePlural(BagInterface *param0, u32 pocketSlot, u32 templateParamIdx)
{
    StringTemplate_SetItemNamePlural(param0->strTemplate, templateParamIdx, BagInterface_GetItemSlotProperty(param0, pocketSlot, ITEM_SLOT_ITEM));
}

void BagInterface_PrintItemDescription(BagInterface *param0, u16 item)
{
    Strbuf *strBuf;

    if (item != 0xffff) {
        strBuf = Strbuf_Init(130, HEAP_ID_6);
        Item_LoadDescription(strBuf, item, HEAP_ID_6);
    } else {
        strBuf = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_CloseBagDescription);
    }

    Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], FONT_SYSTEM, strBuf, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(strBuf);
}

void BagInterface_PrintTMHMMoveInfo(BagInterface *param0, u16 param1)
{
    Window *v0;
    Strbuf *v1;
    u16 v2;
    u16 v3;

    v0 = &param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION];
    v2 = Item_MoveForTMHM(param1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Type);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_PP);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 0, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Category);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 96, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Power);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 96, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Accuracy);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, v1, 96, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v1);

    v3 = MoveTable_CalcMaxPP(v2, 0);
    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_MaxPPNum);
    StringTemplate_SetNumber(param0->strTemplate, 0, v3, 2, 1, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strBuffer, 48, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    v3 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_POWER);

    if (v3 <= 1) {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Dashes);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_PowerAccuracyNum);
    }

    StringTemplate_SetNumber(param0->strTemplate, 0, v3, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strBuffer, 96 + 64, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    v3 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_ACCURACY);

    if (v3 == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Dashes);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_PowerAccuracyNum);
    }

    StringTemplate_SetNumber(param0->strTemplate, 0, v3, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->strBuffer, 96 + 64, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
}

void BagInterface_LoadItemCountStrings(BagInterface *param0)
{
    param0->itemCountX = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ItemCountX);
    param0->itemCountNumberFmt = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ItemCountNum);
}

void BagInterface_FreeItemCountStrings(BagInterface *param0)
{
    Strbuf_Free(param0->itemCountX);
    Strbuf_Free(param0->itemCountNumberFmt);
}

void BagInterface_PrintItemCount(BagInterface *param0, u16 count, u16 yOffset, u32 color)
{
    Strbuf *v0;
    u32 v1;

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
        Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, param0->itemCountX, ITEM_COUNT_START_POS + DIGIT_WIDTH, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, param0->itemCountX, ITEM_COUNT_START_POS, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    }

    v0 = Strbuf_Init(10, HEAP_ID_6);

    StringTemplate_SetNumber(param0->strTemplate, 0, count, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, v0, param0->itemCountNumberFmt);

    v1 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

    Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, v0, ITEM_COUNT_NUMBER_START_POS - v1, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    Strbuf_Free(v0);
}

void BagInterface_PrintTMHMNumber(BagInterface *param0, BagItem *param1, u32 yOffset)
{
    u16 item = param1->item;

    if (item < ITEM_HM01) {
        item = item - ITEM_TM01 + 1;
        FontSpecialChars_DrawPartyScreenText(param0->specialChars, SPECIAL_CHAR_NUMBER, item, 2, PADDING_MODE_ZEROES, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0, yOffset + 5);
        BagInterface_PrintItemCount(param0, param1->quantity, yOffset, TEXT_COLOR(1, 2, 0));
    } else {
        item = item - ITEM_HM01 + 1;
        FontSpecialChars_DrawPartyScreenHPText(param0->specialChars, item, 2, 1, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 16, yOffset + 5);
        DrawHMIcon(param0, yOffset);
    }
}

void BagInterface_PrintBerryNumber(BagInterface *param0, BagItem *param1, u32 param2)
{
    FontSpecialChars_DrawPartyScreenText(param0->specialChars, SPECIAL_CHAR_NUMBER, Item_BerryNumber(param1->item) + 1, 2, PADDING_MODE_ZEROES, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0, param2 + 5);
    BagInterface_PrintItemCount(param0, param1->quantity, param2, TEXT_COLOR(1, 2, 0));
}

static void *LoadBagInterfaceItemEntrySprites(BagInterface *param0, NNSG2dCharacterData **param1)
{
    void *file = NARC_AllocAndReadWholeMember(param0->bagGraphicsNARC, 38, HEAP_ID_6);
    NNS_G2dGetUnpackedBGCharacterData(file, param1);
    return file;
}

static void DrawHMIcon(BagInterface *param0, u32 yOffset)
{
    NNSG2dCharacterData *imageData;

    void *file = LoadBagInterfaceItemEntrySprites(param0, &imageData);
    Window_BlitBitmapRect(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], imageData->pRawData, 40, 0, 64, 16, 0, yOffset, 24, 16);
    Heap_FreeExplicit(HEAP_ID_6, file);
}

void BagInterface_PrintCloseBagEntry(BagInterface *param0, u32 yOffset)
{
    Strbuf *string = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_CloseBag);

    Window_FillRectWithColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0, 0, yOffset, ITEM_LIST_WINDOW_WIDTH * TILE_WIDTH_PIXELS, TEXT_LINES(1));
    Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, string, 0, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(string);
}

void BagInterface_DrawRegisteredIcon(BagInterface *param0, u32 yOffset)
{
    NNSG2dCharacterData *imageData;

    void *file = LoadBagInterfaceItemEntrySprites(param0, &imageData);
    Window_BlitBitmapRect(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], imageData->pRawData, 0, 0, 64, 16, 96, yOffset, 40, 16);
    Heap_FreeExplicit(HEAP_ID_6, file);
}

void BagInterface_LoadItemActionStrings(BagInterface *param0)
{
    param0->itemActionStrings[ITEM_ACTION_USE] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Use);
    param0->itemActionStrings[ITEM_ACTION_WALK] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Walk);
    param0->itemActionStrings[ITEM_ACTION_CHECK] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Check);
    param0->itemActionStrings[ITEM_ACTION_PLANT] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Plant);
    param0->itemActionStrings[ITEM_ACTION_OPEN] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Open);
    param0->itemActionStrings[ITEM_ACTION_TRASH] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Trash);
    param0->itemActionStrings[ITEM_ACTION_REGISTER] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Register);
    param0->itemActionStrings[ITEM_ACTION_DESELECT] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Deselect);
    param0->itemActionStrings[ITEM_ACTION_GIVE] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Give);
    param0->itemActionStrings[ITEM_ACTION_CHECK_TAG] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_CheckTag);
    param0->itemActionStrings[ITEM_ACTION_CONFIRM] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Confirm);
    param0->itemActionStrings[ITEM_ACTION_CANCEL] = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Cancel);
}

void BagInterface_FreeItemActionStrings(BagInterface *param0)
{
    for (u16 i = 0; i < NUM_ITEM_ACTIONS; i++) {
        Strbuf_Free(param0->itemActionStrings[i]);
    }
}

void BagInterface_ShowItemActionsMenu(BagInterface *param0, u8 *actions, u8 numActions)
{
    MenuTemplate menuTemplate;
    BagInterfacePocketInfo *v1;
    Strbuf *v2;
    Strbuf *v3;
    u16 i;
    u16 msgBoxWindowIdx;

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_BERRIES) {
        Window_Add(param0->bgConfig, &param0->itemActionsWindow, BG_LAYER_MAIN_0, 23, 23 - numActions * 2, 8, numActions * 2, PLTT_3, BASE_TILE_ITEM_ACTIONS_MENU);
        msgBoxWindowIdx = BAG_INTERFACE_WINDOW_MSG_BOX_NARROW;
    } else {
        Window_Add(param0->bgConfig, &param0->itemActionsWindow, BG_LAYER_MAIN_0, 23 + 1, 23 - numActions * 2, 8 - 1, numActions * 2, PLTT_3, BASE_TILE_ITEM_ACTIONS_MENU);
        msgBoxWindowIdx = BAG_INTERFACE_WINDOW_MSG_BOX;
    }

    param0->itemActionsMenuChoices = StringList_New(numActions, HEAP_ID_6);

    for (i = 0; i < numActions; i++) {
        StringList_AddFromStrbuf(param0->itemActionsMenuChoices, param0->itemActionStrings[actions[i]], GetItemActionFunc(actions[i]));
    }

    menuTemplate.choices = param0->itemActionsMenuChoices;
    menuTemplate.window = &param0->itemActionsWindow;
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

    param0->menu = Menu_New(&menuTemplate, 8, 0, 0, HEAP_ID_6, PAD_BUTTON_B);

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
        Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
        BagInterface_PrintTMHMMoveInfo(param0, param0->appArguments->selectedItem);
        Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        BagInterface_UpdateTypeAndCategoryIcons(param0, param0->appArguments->selectedItem, TRUE);
    } else {
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[msgBoxWindowIdx], TRUE, BASE_TILE_MSG_BOX_FRAME, PLTT_12);
        Window_FillTilemap(&param0->windows[msgBoxWindowIdx], 15);

        v2 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ItemIsSelected);
        v3 = Strbuf_Init(28 * 2, HEAP_ID_6);
        v1 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

        BagInterface_BufferPocketSlotItemName(param0, v1->cursorScroll + v1->cursorPos - 1, 0);
        StringTemplate_Format(param0->strTemplate, v3, v2);
        Text_AddPrinterWithParams(&param0->windows[msgBoxWindowIdx], FONT_MESSAGE, v3, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v3);
        Strbuf_Free(v2);
        Window_ScheduleCopyToVRAM(&param0->windows[msgBoxWindowIdx]);
    }

    Window_DrawStandardFrame(&param0->itemActionsWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_14);
    Window_ScheduleCopyToVRAM(&param0->itemActionsWindow);
}

void BagInterface_CloseItemActionsMenu(BagInterface *param0)
{
    u32 msgBoxWindowIdx;

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_BERRIES) {
        msgBoxWindowIdx = BAG_INTERFACE_WINDOW_MSG_BOX_NARROW;
    } else {
        msgBoxWindowIdx = BAG_INTERFACE_WINDOW_MSG_BOX;
    }

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType != POCKET_TMHMS) {
        Window_EraseMessageBox(&param0->windows[msgBoxWindowIdx], TRUE);
        Window_ClearAndScheduleCopyToVRAM(&param0->windows[msgBoxWindowIdx]);
    }

    Window_EraseStandardFrame(&param0->itemActionsWindow, TRUE);
    Window_ClearAndScheduleCopyToVRAM(&param0->itemActionsWindow);
    Menu_Free(param0->menu, NULL);
    StringList_Free(param0->itemActionsMenuChoices);
    Window_Remove(&param0->itemActionsWindow);
    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
    BagInterface_PrintItemDescription(param0, param0->appArguments->selectedItem);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    BagInterface_UpdateTypeAndCategoryIcons(param0, ITEM_NONE, FALSE);
}

void BagInterface_PrintMovingItemMessage(BagInterface *param0)
{
    Strbuf *v0;
    Strbuf *v1;

    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);

    v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_MoveItemWhere);
    v1 = Strbuf_Init(130, HEAP_ID_6);

    BagInterface_BufferPocketSlotItemName(param0, param0->movingItemIndex - 1, 0);

    StringTemplate_Format(param0->strTemplate, v1, v0);
    Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], FONT_SYSTEM, v1, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    Strbuf_Free(v1);
    Strbuf_Free(v0);
}

void BagInterface_ShowItemTrashWindows(BagInterface *param0)
{
    BagInterfacePocketInfo *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;

    Window_DrawStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT], 1, BASE_TILE_STANDARD_WINDOW_FRAME, 14);
    BagInterface_PrintItemTrashCount(param0);
    Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX], 1, BASE_TILE_MSG_BOX_FRAME, 12);
    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX], 15);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ThrowAwayHowMany);
    v2 = Strbuf_Init(14 * 2 * 2, HEAP_ID_6);
    v0 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

    BagInterface_BufferPocketSlotItemName(param0, v0->cursorScroll + v0->cursorPos - 1, 0);

    StringTemplate_Format(param0->strTemplate, v2, v1);
    Text_AddPrinterWithParams(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX], FONT_MESSAGE, v2, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX]);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
}

void BagInterface_PrintItemTrashCount(BagInterface *param0)
{
    Window *v0;
    Strbuf *v1;

    v0 = &param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT];
    Window_FillTilemap(v0, 15);
    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ThrowAwayCount);

    StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount, 3, 2, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, 16, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void BagInterface_CloseItemTrashWindows(BagInterface *param0)
{
    Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX], 1);
    Window_EraseStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT]);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
}

void BagInterface_PrintConfirmItemTrashMsg(BagInterface *param0)
{
    BagInterfacePocketInfo *v0;
    Strbuf *v1;

    Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 1, BASE_TILE_MSG_BOX_FRAME, 12);
    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ThrowAwayOK);
    v0 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

    if (param0->selectedItemCount == 1) {
        BagInterface_BufferPocketSlotItemName(param0, v0->cursorScroll + v0->cursorPos - 1, 0);
    } else {
        BagInterface_BufferPocketSlotItemNamePlural(param0, v0->cursorScroll + v0->cursorPos - 1, 0);
    }

    StringTemplate_SetNumber(param0->strTemplate, 1, param0->selectedItemCount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);

    param0->msgBoxPrinter = BagInterface_PrintStrBufferToWideMsgBox(param0);
}

u8 BagInterface_PrintStrBufferToWideMsgBox(BagInterface *param0)
{
    u8 v0;

    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(FALSE);
    v0 = Text_AddPrinterWithParams(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FONT_MESSAGE, param0->strBuffer, 0, 0, Options_TextFrameDelay(param0->options), BagInterface_TextPrinterCallback);

    return v0;
}

static BOOL BagInterface_TextPrinterCallback(TextPrinterTemplate *param0, u16 param1)
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

void BagInterface_ShowYesNoMenu(BagInterface *param0)
{
    param0->menu = Menu_MakeYesNoChoice(param0->bgConfig, &sYesNoMenuWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_14, HEAP_ID_6);
}

void BagInterface_PrintSellCountAndValue(BagInterface *param0, u8 skipFrame)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE];

    if (skipFrame == 0) {
        Window_DrawStandardFrame(v0, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, PLTT_14);
    }

    Window_FillTilemap(v0, 15);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_SellNum);

    StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, 0, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_SellValue);

    StringTemplate_SetNumber(param0->strTemplate, 0, param0->soldItemPrice * param0->selectedItemCount, 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strBuffer, 0);

    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, (12 * 8) - v2, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void BagInterface_PrintMoney(BagInterface *param0, u8 hideLabel)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[BAG_INTERFACE_WINDOW_MONEY];

    if (hideLabel == FALSE) {
        Window_FillTilemap(v0, 15);
        Window_DrawStandardFrame(v0, 1, BASE_TILE_STANDARD_WINDOW_FRAME, 14);

        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_MoneyLabel);

        Text_AddPrinterWithParams(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v1);
    } else {
        Window_FillRectWithColor(v0, 15, 0, 16, (10 * 8), 16);
    }

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_MoneyNum);

    StringTemplate_SetNumber(param0->strTemplate, 0, TrainerInfo_Money(param0->trainerInfo), 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strBuffer, 0);

    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, (10 * 8) - v2, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void BagInterface_DrawPoffinCountMsgBox(BagInterface *param0)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[BAG_INTERFACE_WINDOW_POFFIN_COUNT];
    Window_FillTilemap(v0, 15);
    Window_DrawStandardFrame(v0, 1, BASE_TILE_STANDARD_WINDOW_FRAME, 14);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_PoffinCountLabel);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_PoffinCountNum);
    StringTemplate_SetNumber(param0->strTemplate, 0, PoffinCase_CountFilledSlots(SaveData_GetPoffinCase(param0->appArguments->saveData)), 3, 1, 1);
    StringTemplate_Format(param0->strTemplate, param0->strBuffer, v1);
    Strbuf_Free(v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->strBuffer, 0);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->strBuffer, 11 * 8 - v2, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
}
