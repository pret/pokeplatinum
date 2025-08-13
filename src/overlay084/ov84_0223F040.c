#include "overlay084/ov84_0223F040.h"

#include <nitro.h>
#include <string.h>

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
#include "string_template.h"
#include "text.h"
#include "trainer_info.h"

#include "res/text/bank/unk_0007.h"

static void ov84_0223F9B0(BagInterfaceManager *param0, u32 param1);
static BOOL ov84_022400E0(TextPrinterTemplate *param0, u16 param1);

static const WindowTemplate sYesNoMenuWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_0,
    .tilemapLeft = 23,
    .tilemapTop = 13,
    .width = 7,
    .height = 4,
    .palette = PLTT_3,
    .baseTile = 795
};

void BagInterface_CreateWindows(BagInterfaceManager *param0)
{
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], BG_LAYER_MAIN_2, 14, 0, 17, 18, PLTT_3, 1);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], BG_LAYER_MAIN_0, 0, 18, 32, 6, PLTT_3, 1 + 17 * 18);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES], BG_LAYER_MAIN_2, 0, 13, 12 * 3, 3, PLTT_3, 499);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX], BG_LAYER_MAIN_0, 6, 19, 14, 4, PLTT_11, 607);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_NARROW], BG_LAYER_MAIN_0, 6, 19, 13, 4, PLTT_11, 607);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_POCKET_INDICATOR], BG_LAYER_MAIN_0, 0, 11, 12, 2, PLTT_13, 663);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], BG_LAYER_MAIN_0, 2, 19, 27, 4, PLTT_11, 687);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE], BG_LAYER_MAIN_0, 19, 13, 12, 4, PLTT_3, 823);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_MONEY], BG_LAYER_MAIN_0, 1, 1, 10, 4, PLTT_3, 871);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT], BG_LAYER_MAIN_0, 24, 19, 7, 4, PLTT_3, 903);
    Window_Add(param0->bgConfig, &param0->windows[BAG_INTERFACE_WINDOW_POFFIN_COUNT], BG_LAYER_MAIN_0, 1, 12, 11, 4, PLTT_3, 903);
}

void BagInterface_DeleteWindows(Window *param0)
{
    for (u16 i = 0; i < NUM_BAG_INTERFACE_WINDOWS; i++) {
        Window_Remove(&param0[i]);
    }
}

void BagInterface_LoadPocketNames(BagInterfaceManager *param0)
{
    MessageLoader *msgLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BAG_POCKET_NAMES, HEAP_ID_6);

    for (u16 i = 0; i < POCKET_MAX; i++) {
        param0->pocketNames[i] = MessageLoader_GetNewStrbuf(msgLoader, i);
    }

    MessageLoader_Free(msgLoader);
}

void BagInterface_FreePocketNames(BagInterfaceManager *param0)
{
    for (u16 i = 0; i < POCKET_MAX; i++) {
        Strbuf_Free(param0->pocketNames[i]);
    }
}

void BagInterface_MaybeClearPocketNameBox(BagInterfaceManager *param0)
{
    for (u16 i = 0; i < 12; i++) {
        Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_MAIN_2, ((1 + 17 * 18) + 32 * 6) + 12 + i, i, 13, 1, 1, PLTT_3);
        Bg_FillTilemapRect(param0->bgConfig, BG_LAYER_MAIN_2, ((1 + 17 * 18) + 32 * 6) + (12 * 3) + 12 + i, i, 13 + 1, 1, 1, PLTT_3);
    }
}

static void PrintPocketNamesCentered(BagInterfaceManager *param0, Strbuf *string, u16 centerY)
{
    u32 stringWidth = Font_CalcStrbufWidth(FONT_SYSTEM, string, 0);
    Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES], FONT_SYSTEM, string, centerY - stringWidth / 2, 2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
}

void BagInterface_PrintCurrentAndNextPocketNames(BagInterfaceManager *param0)
{
    UnkStruct_ov84_0223C920 *v0;
    Strbuf *nextPocketName;
    Strbuf *currentPocketName;
    u16 v3;

    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES], 0);

    v0 = &param0->unk_429;
    currentPocketName = param0->pocketNames[param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType];
    nextPocketName = param0->pocketNames[param0->appArguments->accessiblePockets[v0->nextPocketIdx].pocketType];

    if (v0->scrollDirection == 0) {
        v3 = 96 + 50 + 12 * v0->unk_03;
        PrintPocketNamesCentered(param0, nextPocketName, v3 - 96);
    } else {
        v3 = 96 + 50 - 12 * v0->unk_03;
        PrintPocketNamesCentered(param0, nextPocketName, 96 + v3);
    }

    PrintPocketNamesCentered(param0, currentPocketName, v3);
    Window_LoadTiles(&param0->windows[BAG_INTERFACE_WINDOW_POCKET_NAMES]);
}

static void *LoadPocketIndicatorIcons(BagInterfaceManager *param0, NNSG2dCharacterData **param1)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0->bagGraphicsNARC, 21, HEAP_ID_6);
    NNS_G2dGetUnpackedBGCharacterData(v0, param1);
    return v0;
}

void BagInterface_DrawPocketIndicatorIcon(BagInterfaceManager *param0, u8 pocketIndex, u8 focused)
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

void BagInterface_DrawPocketIndicatorIcons(BagInterfaceManager *param0)
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

static void BagInterface_BufferPocketSlotItemName(BagInterfaceManager *param0, u32 slot, u32 param2)
{
    StringTemplate_SetItemName(param0->strTemplate, param2, BagInterface_GetItemSlotProperty(param0, slot, 0));
}

static void BagInterface_BufferPocketSlotItemNamePlural(BagInterfaceManager *param0, u32 slot, u32 param2)
{
    StringTemplate_SetItemNamePlural(param0->strTemplate, param2, BagInterface_GetItemSlotProperty(param0, slot, 0));
}

void BagInterface_PrintItemDescription(BagInterfaceManager *param0, u16 item)
{
    Strbuf *v0;

    if (item != 0xffff) {
        v0 = Strbuf_Init(130, HEAP_ID_6);
        Item_LoadDescription(v0, item, HEAP_ID_6);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_CloseBagDescription);
    }

    Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], FONT_SYSTEM, v0, 40, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    Strbuf_Free(v0);
}

void BagInterface_PrintTMHMMoveData(BagInterfaceManager *param0, u16 param1)
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
    StringTemplate_Format(param0->strTemplate, param0->msgBoxText, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->msgBoxText, 48, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);

    v3 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_POWER);

    if (v3 <= 1) {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Dashes);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_PowerAccuracyNum);
    }

    StringTemplate_SetNumber(param0->strTemplate, 0, v3, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, param0->msgBoxText, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->msgBoxText, 96 + 64, 16, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
    v3 = MoveTable_LoadParam(v2, MOVEATTRIBUTE_ACCURACY);

    if (v3 == 0) {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_Dashes);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_PowerAccuracyNum);
    }

    StringTemplate_SetNumber(param0->strTemplate, 0, v3, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, param0->msgBoxText, v1);
    Strbuf_Free(v1);
    Text_AddPrinterWithParamsAndColor(v0, FONT_SYSTEM, param0->msgBoxText, 96 + 64, 32, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
}

void BagInterface_LoadItemCountStrings(BagInterfaceManager *param0)
{
    param0->itemCountX = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ItemCountX);
    param0->itemCountNumberFmt = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ItemCountNum);
}

void BagInterface_FreeItemCountStrings(BagInterfaceManager *param0)
{
    Strbuf_Free(param0->itemCountX);
    Strbuf_Free(param0->itemCountNumberFmt);
}

void BagInterface_PrintItemCount(BagInterfaceManager *param0, u16 count, u16 yOffset, u32 color)
{
    Strbuf *v0;
    u32 v1;

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
        Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, param0->itemCountX, (((17 * 8 - 2) - 6 - 1 - 6 * 3) + 6), yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    } else {
        Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, param0->itemCountX, ((17 * 8 - 2) - 6 - 1 - 6 * 3), yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    }

    v0 = Strbuf_Init(10, HEAP_ID_6);

    StringTemplate_SetNumber(param0->strTemplate, 0, count, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, v0, param0->itemCountNumberFmt);

    v1 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

    Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, v0, (17 * 8 - 2) - v1, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    Strbuf_Free(v0);
}

void ov84_0223F8D0(BagInterfaceManager *param0, BagItem *param1, u32 param2)
{
    u16 v0 = param1->item;

    if (v0 < 420) {
        v0 = v0 - 328 + 1;
        FontSpecialChars_DrawPartyScreenText(param0->specialChars, 2, v0, 2, 2, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0, param2 + 5);
        BagInterface_PrintItemCount(param0, param1->quantity, param2, TEXT_COLOR(1, 2, 0));
    } else {
        v0 = v0 - 420 + 1;
        FontSpecialChars_DrawPartyScreenHPText(param0->specialChars, v0, 2, 1, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 16, param2 + 5);
        ov84_0223F9B0(param0, param2);
    }
}

void ov84_0223F94C(BagInterfaceManager *param0, BagItem *param1, u32 param2)
{
    FontSpecialChars_DrawPartyScreenText(param0->specialChars, 2, Item_BerryNumber(param1->item) + 1, 2, 2, &param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0, param2 + 5);
    BagInterface_PrintItemCount(param0, param1->quantity, param2, TEXT_COLOR(1, 2, 0));
}

static void *LoadImageIndex38(BagInterfaceManager *param0, NNSG2dCharacterData **param1)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0->bagGraphicsNARC, 38, HEAP_ID_6);
    NNS_G2dGetUnpackedBGCharacterData(v0, param1);
    return v0;
}

static void ov84_0223F9B0(BagInterfaceManager *param0, u32 param1)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;

    v1 = LoadImageIndex38(param0, &v0);
    Window_BlitBitmapRect(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], v0->pRawData, 40, 0, 64, 16, 0, param1, 24, 16);
    Heap_FreeExplicit(HEAP_ID_6, v1);
}

void ov84_0223F9F0(BagInterfaceManager *param0, u32 param1)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_CloseBag);

    Window_FillRectWithColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], 0, 0, param1, 17 * 8, 16);
    Text_AddPrinterWithParamsAndColor(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], FONT_SYSTEM, v0, 0, param1, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
    Strbuf_Free(v0);
}

void ov84_0223FA44(BagInterfaceManager *param0, u32 param1)
{
    NNSG2dCharacterData *v0;
    void *v1;
    u8 v2;

    v1 = LoadImageIndex38(param0, &v0);
    Window_BlitBitmapRect(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_LIST], v0->pRawData, 0, 0, 64, 16, 96, param1, 40, 16);
    Heap_FreeExplicit(HEAP_ID_6, v1);
}

void BagInterface_LoadItemActionStrings(BagInterfaceManager *param0)
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

void BagInterface_FreeItemActionStrings(BagInterfaceManager *param0)
{
    u16 v0;

    for (v0 = 0; v0 < NUM_ITEM_ACTIONS; v0++) {
        Strbuf_Free(param0->itemActionStrings[v0]);
    }
}

void ov84_0223FB70(BagInterfaceManager *param0, u8 *param1, u8 param2)
{
    MenuTemplate v0;
    BagInterfacePocketInfo *v1;
    Strbuf *v2;
    Strbuf *v3;
    u16 i;
    u16 v5;

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_BERRIES) {
        Window_Add(param0->bgConfig, &param0->itemActionsWindow, 0, 23, 23 - param2 * 2, 8, param2 * 2, 3, 823);
        v5 = BAG_INTERFACE_WINDOW_MSG_BOX_NARROW;
    } else {
        Window_Add(param0->bgConfig, &param0->itemActionsWindow, 0, 23 + 1, 23 - param2 * 2, 8 - 1, param2 * 2, 3, 823);
        v5 = BAG_INTERFACE_WINDOW_MSG_BOX;
    }

    param0->itemActionsStringList = StringList_New(param2, HEAP_ID_6);

    for (i = 0; i < param2; i++) {
        StringList_AddFromStrbuf(param0->itemActionsStringList, param0->itemActionStrings[param1[i]], GetItemActionFunc(param1[i]));
    }

    v0.choices = param0->itemActionsStringList;
    v0.window = &param0->itemActionsWindow;
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = param2;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;

    if (param2 >= 4) {
        v0.loopAround = TRUE;
    } else {
        v0.loopAround = FALSE;
    }

    param0->itemActionsMenu = Menu_New(&v0, 8, 0, 0, HEAP_ID_6, PAD_BUTTON_B);

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_TMHMS) {
        Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
        BagInterface_PrintTMHMMoveData(param0, param0->appArguments->selectedItem);
        Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
        UpdateTypeAndCategoryIcons(param0, param0->appArguments->selectedItem, 1);
    } else {
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[v5], 1, 1024 - 9 - (18 + 12), 12);
        Window_FillTilemap(&param0->windows[v5], 15);

        v2 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ItemIsSelected);
        v3 = Strbuf_Init((14 * 2 * 2), HEAP_ID_6);
        v1 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

        BagInterface_BufferPocketSlotItemName(param0, v1->cursorScroll + v1->cursorPos - 1, 0);
        StringTemplate_Format(param0->strTemplate, v3, v2);
        Text_AddPrinterWithParams(&param0->windows[v5], FONT_MESSAGE, v3, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v3);
        Strbuf_Free(v2);
        Window_ScheduleCopyToVRAM(&param0->windows[v5]);
    }

    Window_DrawStandardFrame(&param0->itemActionsWindow, 1, 1024 - 9, 14);
    Window_ScheduleCopyToVRAM(&param0->itemActionsWindow);
}

void ov84_0223FD84(BagInterfaceManager *param0)
{
    u32 v0;

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType == POCKET_BERRIES) {
        v0 = BAG_INTERFACE_WINDOW_MSG_BOX_NARROW;
    } else {
        v0 = BAG_INTERFACE_WINDOW_MSG_BOX;
    }

    if (param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx].pocketType != POCKET_TMHMS) {
        Window_EraseMessageBox(&param0->windows[v0], 1);
        Window_ClearAndScheduleCopyToVRAM(&param0->windows[v0]);
    }

    Window_EraseStandardFrame(&param0->itemActionsWindow, 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->itemActionsWindow);
    Menu_Free(param0->itemActionsMenu, NULL);
    StringList_Free(param0->itemActionsStringList);
    Window_Remove(&param0->itemActionsWindow);
    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION], 0);
    BagInterface_PrintItemDescription(param0, param0->appArguments->selectedItem);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
    UpdateTypeAndCategoryIcons(param0, 0, 0);
}

void PrintMovingItemTooltip(BagInterfaceManager *param0)
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

void ov84_0223FE94(BagInterfaceManager *param0)
{
    BagInterfacePocketInfo *v0;
    Strbuf *v1;
    Strbuf *v2;
    u16 v3;

    Window_DrawStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT], 1, 1024 - 9, 14);
    ov84_0223FF44(param0);
    Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX], 1, 1024 - 9 - (18 + 12), 12);
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

void ov84_0223FF44(BagInterfaceManager *param0)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT];
    Window_FillTilemap(v0, 15);
    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ThrowAwayCount);

    StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount, 3, 2, 1);
    StringTemplate_Format(param0->strTemplate, param0->msgBoxText, v1);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->msgBoxText, 16, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void ov84_0223FFC0(BagInterfaceManager *param0)
{
    Window_EraseMessageBox(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX], 1);
    Window_EraseStandardFrame(&param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_THROW_AWAY_COUNT]);
    Window_ScheduleCopyToVRAM(&param0->windows[BAG_INTERFACE_WINDOW_ITEM_DESCRIPTION]);
}

void ov84_0223FFF0(BagInterfaceManager *param0)
{
    BagInterfacePocketInfo *v0;
    Strbuf *v1;
    u16 v2;

    Window_DrawMessageBoxWithScrollCursor(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 1, 1024 - 9 - (18 + 12), 12);
    Window_FillTilemap(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], 15);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_ThrowAwayOK);
    v0 = &param0->appArguments->accessiblePockets[param0->appArguments->currPocketIdx];

    if (param0->selectedItemCount == 1) {
        BagInterface_BufferPocketSlotItemName(param0, v0->cursorScroll + v0->cursorPos - 1, 0);
    } else {
        BagInterface_BufferPocketSlotItemNamePlural(param0, v0->cursorScroll + v0->cursorPos - 1, 0);
    }

    StringTemplate_SetNumber(param0->strTemplate, 1, param0->selectedItemCount, 3, 0, 1);
    StringTemplate_Format(param0->strTemplate, param0->msgBoxText, v1);
    Strbuf_Free(v1);

    param0->msgBoxPrinter = BagInterface_PrintMessageBoxText(param0);
}

u8 BagInterface_PrintMessageBoxText(BagInterfaceManager *param0)
{
    u8 v0;

    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(FALSE);
    v0 = Text_AddPrinterWithParams(&param0->windows[BAG_INTERFACE_WINDOW_MSG_BOX_WIDE], FONT_MESSAGE, param0->msgBoxText, 0, 0, Options_TextFrameDelay(param0->options), ov84_022400E0);

    return v0;
}

static BOOL ov84_022400E0(TextPrinterTemplate *param0, u16 param1)
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

    return 0;
}

void ov84_02240120(BagInterfaceManager *param0)
{
    param0->itemActionsMenu = Menu_MakeYesNoChoice(param0->bgConfig, &sYesNoMenuWindowTemplate, 1024 - 9, 14, 6);
}

void ov84_02240148(BagInterfaceManager *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[BAG_INTERFACE_WINDOW_SELL_COUNT_VALUE];

    if (param1 == 0) {
        Window_DrawStandardFrame(v0, 1, 1024 - 9, 14);
    }

    Window_FillTilemap(v0, 15);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_SellNum);

    StringTemplate_SetNumber(param0->strTemplate, 0, param0->selectedItemCount, 2, 2, 1);
    StringTemplate_Format(param0->strTemplate, param0->msgBoxText, v1);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->msgBoxText, 0, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_SellValue);

    StringTemplate_SetNumber(param0->strTemplate, 0, param0->soldItemPrice * param0->selectedItemCount, 6, 1, 1);
    StringTemplate_Format(param0->strTemplate, param0->msgBoxText, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->msgBoxText, 0);

    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->msgBoxText, (12 * 8) - v2, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void ov84_02240248(BagInterfaceManager *param0, u8 param1)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[BAG_INTERFACE_WINDOW_MONEY];

    if (param1 == 0) {
        Window_FillTilemap(v0, 15);
        Window_DrawStandardFrame(v0, 1, 1024 - 9, 14);

        v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_MoneyLabel);

        Text_AddPrinterWithParams(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
        Strbuf_Free(v1);
    } else {
        Window_FillRectWithColor(v0, 15, 0, 16, (10 * 8), 16);
    }

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_MoneyNum);

    StringTemplate_SetNumber(param0->strTemplate, 0, TrainerInfo_Money(param0->trainerInfo), 6, 1, 1);
    StringTemplate_Format(param0->strTemplate, param0->msgBoxText, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->msgBoxText, 0);

    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->msgBoxText, (10 * 8) - v2, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
    Strbuf_Free(v1);
}

void BagInterface_DrawPoffinCountMsgBox(BagInterfaceManager *param0)
{
    Window *v0;
    Strbuf *v1;
    u32 v2;

    v0 = &param0->windows[BAG_INTERFACE_WINDOW_POFFIN_COUNT];
    Window_FillTilemap(v0, 15);
    Window_DrawStandardFrame(v0, 1, 1024 - 9, 14);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_PoffinCountLabel);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param0->bagStringsLoader, Bag_Text_PoffinCountNum);
    StringTemplate_SetNumber(param0->strTemplate, 0, PoffinCase_CountFilledSlots(SaveData_GetPoffinCase(param0->appArguments->saveData)), 3, 1, 1);
    StringTemplate_Format(param0->strTemplate, param0->msgBoxText, v1);
    Strbuf_Free(v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, param0->msgBoxText, 0);
    Text_AddPrinterWithParams(v0, FONT_SYSTEM, param0->msgBoxText, 11 * 8 - v2, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(v0);
}
