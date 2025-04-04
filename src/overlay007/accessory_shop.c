#include "overlay007/accessory_shop.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/window.h"
#include "constants/scrcmd.h"

#include "overlay007/shop_menu.h"

#include "bg_window.h"
#include "field_message.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "string_list.h"
#include "system.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_020298BC.h"

#include "res/graphics/shop_menu/shop_gra.naix"
#include "res/text/bank/flower_shop.h"

static const AccessoryShopItem sAccessoryShop_ItemLists[ACCESSORY_SHOP_ITEM_LIST_COUNT] = {
    { 0x32, BERRY_ID(CHERI), 1 },
    { 0x33, BERRY_ID(CHESTO), 1 },
    { 0x34, BERRY_ID(PECHA), 1 },
    { 0x35, BERRY_ID(ORAN), 1 },
    { 0x36, BERRY_ID(RAWST), 1 },
    { 0x37, BERRY_ID(ASPEAR), 1 },
    { 0x38, BERRY_ID(LEPPA), 1 },
    { 0x39, BERRY_ID(PERSIM), 1 },
    { 0x3A, BERRY_ID(RAZZ), 10 },
    { 0x3B, BERRY_ID(BLUK), 10 },
    { 0x3C, BERRY_ID(NANAB), 10 },
    { 0x3D, BERRY_ID(WEPEAR), 10 },
    { 0x3E, BERRY_ID(PINAP), 10 },
    { 0x3F, BERRY_ID(CORNN), 50 },
    { 0x40, BERRY_ID(PAMTRE), 100 },
    { 0x41, BERRY_ID(MAGOST), 50 },
    { 0x42, BERRY_ID(WATMEL), 100 },
    { 0x43, BERRY_ID(RABUTA), 50 },
    { 0x44, BERRY_ID(NOMEL), 50 },
    { 0x45, BERRY_ID(DURIN), 100 },
    { 0x46, BERRY_ID(SPELON), 100 },
    { 0x47, BERRY_ID(BELUE), 100 }
};

static void AccessoryShop_LoadGraphics(AccessoryShop *shop);
static void AccessoryShop_ClearInterface(AccessoryShop *shop);
static void AccessoryShop_InitSpriteList(AccessoryShop *shop);
static void AccessoryShop_DeleteSpriteList(AccessoryShop *shop);
static void AccessoryShop_LoadOptions(AccessoryShop *shop);
static void AccessoryShop_ShowMsgBox(AccessoryShopMessageBox *msgbox, BgConfig *bgConfig, enum HeapId heapID, u32 renderDelay);
static void AccessoryShop_DeleteMsgBox(AccessoryShopMessageBox *msgbox);
static void AccessoryShop_PrintStrbufToMsgBox(AccessoryShopMessageBox *msgbox, Strbuf *strbuf, enum HeapId heapID);
static BOOL AccessoryShop_HasMsgBoxFinishedPrinting(AccessoryShopMessageBox *msgbox);
static void AccessoryShop_LoadConfirmPurchaseMsg(AccessoryShopMessageBox *msgbox, MessageLoader *msgLoader, enum HeapId heapID, const AccessoryShopItem *items, u32 idx);
static void AccessoryShop_LoadSuccessfulPurchaseMsg(AccessoryShopMessageBox *msgbox, MessageLoader *msgLoader, enum HeapId heapID, const AccessoryShopItem *items, u32 idx);
static void AccessoryShop_ShowDescBox(AccessoryShopDescBox *descBox, BgConfig *bgConfig, MessageLoader *msgLoader, enum HeapId heapID);
static void AccessoryShop_DeleteDescBox(AccessoryShopDescBox *descBox);
static void AccessoryShop_UpdateDescBox(AccessoryShopDescBox *descBox, u32 berryId, u32 totalAmount, u32 inBagAmount);
static void AccessoryShop_ShowItemList(AccessoryShopItemList *itemList, BgConfig *bgConfig, enum HeapId heapID, const AccessoryShopItem *items, u32 maxItems, MessageLoader *msgLoader, void *param6, AccessoryShopUpdateFunc updateFunc, SpriteList *spriteList);
static void AccessoryShop_DeleteItemList(AccessoryShopItemList *itemList);
static u32 AccessoryShop_SelectItemListMenu(AccessoryShopItemList *itemList);
static void AccessoryShop_UpdateItemListMenu(AccessoryShopItemList *itemList);
static void AccessoryShop_HideScrollArrows(AccessoryShopItemList *itemList);
static void AccessoryShop_LoadScrollArrowGfx(SpriteResourcesHeader *scrollArrowResource, AccessoryShopItemList *itemList, enum HeapId heapID);
static void AccessoryShop_UnloadScrollArrowGfx(AccessoryShopItemList *itemList);
static void AccessoryShop_UpdateScrollArrowsVisibility(AccessoryShopItemList *itemList);
static void AccessoryShop_ShowYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice, BgConfig *bgConfig, enum HeapId heapID);
static void AccessoryShop_DeleteYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice);
static u32 AccessoryShop_SelectYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice);
static void AccessoryShop_SetDataPointers(AccessoryShopDataPtrs *dataPtr, AccessoryShopDescBox *descBox, const AccessoryShopItem *items, Bag *bag, enum HeapId heapID, BgConfig *bgConfig);
static void AccessoryShop_Update(void *ptr, u32 cursorPos);
static BOOL AccessoryShop_HasAllAccessories(const UnkStruct_02029D04 *param0, const AccessoryShopItem *items, u32 maxItems);
static BOOL AccessoryShop_HasEnoughBerries(Bag *bag, const AccessoryShopItem *items, u32 idx, enum HeapId heapID);
static BOOL ov7_0224CCE4(const UnkStruct_02029D04 *param0, const AccessoryShopItem *items, u32 idx);
static void AccessoryShop_DoPurchase(UnkStruct_02029D04 *param0, Bag *bag, const AccessoryShopItem *items, u32 idx, enum HeapId heapID);

AccessoryShop *AccessoryShop_New(enum HeapId heapID, SaveData *saveData, BgConfig *bgConfig)
{
    AccessoryShop *shop = Heap_AllocFromHeap(heapID, sizeof(AccessoryShop));

    memset(shop, 0, sizeof(AccessoryShop));

    shop->heapID = heapID;
    shop->bgConfig = bgConfig;
    shop->saveData = saveData;
    shop->unk_0C = sub_02029D04(sub_0202A750(shop->saveData));
    shop->bag = SaveData_GetBag(saveData);
    shop->msgLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FLOWER_SHOP, shop->heapID);

    AccessoryShop_LoadOptions(shop);
    AccessoryShop_LoadGraphics(shop);
    AccessoryShop_InitSpriteList(shop);

    return shop;
}

void AccessoryShop_Free(AccessoryShop *shop)
{
    MessageLoader_Free(shop->msgLoader);

    AccessoryShop_ClearInterface(shop);
    AccessoryShop_DeleteSpriteList(shop);

    memset(shop, 0, sizeof(AccessoryShop));
    Heap_FreeToHeap(shop);
}

BOOL AccessoryShop_Main(AccessoryShop *shop)
{
    Strbuf *strbuf;
    u32 input;

    switch (shop->state) {
    case ACCESSORY_SHOP_STATE_LOAD_GREET_MSG:
        AccessoryShop_ShowMsgBox(&shop->msgbox, shop->bgConfig, shop->heapID, shop->renderDelay);
        strbuf = MessageLoader_GetNewStrbuf(shop->msgLoader, flower_shop_greet);
        AccessoryShop_PrintStrbufToMsgBox(&shop->msgbox, strbuf, shop->heapID);
        Strbuf_Free(strbuf);
        shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
        shop->nextState = ACCESSORY_SHOP_STATE_INIT_ITEM_LIST;
        break;
    case ACCESSORY_SHOP_STATE_INIT_ITEM_LIST:
        if (AccessoryShop_HasAllAccessories(shop->unk_0C, sAccessoryShop_ItemLists, ACCESSORY_SHOP_ITEM_LIST_COUNT)) {
            strbuf = MessageLoader_GetNewStrbuf(shop->msgLoader, flower_shop_thanks);
            AccessoryShop_PrintStrbufToMsgBox(&shop->msgbox, strbuf, shop->heapID);
            Strbuf_Free(strbuf);
            shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            shop->nextState = ACCESSORY_SHOP_STATE_FREE_INTERFACE;
        } else {
            shop->state = ACCESSORY_SHOP_STATE_INIT_INTERFACE;
        }
        break;
    case ACCESSORY_SHOP_STATE_INIT_INTERFACE:
        AccessoryShop_ShowDescBox(&shop->descBox, shop->bgConfig, shop->msgLoader, shop->heapID);
        AccessoryShop_SetDataPointers(&shop->dataPtr, &shop->descBox, sAccessoryShop_ItemLists, shop->bag, shop->heapID, shop->bgConfig);
        AccessoryShop_ShowItemList(&shop->itemList, shop->bgConfig, shop->heapID, sAccessoryShop_ItemLists, ACCESSORY_SHOP_ITEM_LIST_COUNT, shop->msgLoader, &shop->dataPtr, AccessoryShop_Update, shop->spriteList);
        // fallthrough
    case ACCESSORY_SHOP_STATE_LOAD_BUY_MSG:
        AccessoryShop_UpdateItemListMenu(&shop->itemList);
        strbuf = MessageLoader_GetNewStrbuf(shop->msgLoader, flower_shop_purchase);
        AccessoryShop_PrintStrbufToMsgBox(&shop->msgbox, strbuf, shop->heapID);
        Strbuf_Free(strbuf);
        shop->state = ACCESSORY_SHOP_STATE_WAIT_MSGBOX;
        shop->nextState = ACCESSORY_SHOP_STATE_SELECT_ITEM_LIST;
        break;
    case ACCESSORY_SHOP_STATE_SELECT_ITEM_LIST:
        input = AccessoryShop_SelectItemListMenu(&shop->itemList);

        if (input != LIST_NOTHING_CHOSEN && input != LIST_CANCEL) {
            Bg_FillTilemapRect(shop->bgConfig, BG_LAYER_MAIN_3, 0, 0, 0, 32, 18, 17);

            AccessoryShop_HideScrollArrows(&shop->itemList);
            AccessoryShop_LoadConfirmPurchaseMsg(&shop->msgbox, shop->msgLoader, shop->heapID, sAccessoryShop_ItemLists, shop->itemList.cursorPos);

            shop->state = ACCESSORY_SHOP_STATE_WAIT_MSGBOX;
            shop->nextState = ACCESSORY_SHOP_STATE_INIT_YES_NO_CHOICE;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (input == LIST_CANCEL) {
            strbuf = MessageLoader_GetNewStrbuf(shop->msgLoader, flower_shop_please_come_again);
            AccessoryShop_PrintStrbufToMsgBox(&shop->msgbox, strbuf, shop->heapID);
            Strbuf_Free(strbuf);
            shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            shop->nextState = ACCESSORY_SHOP_STATE_FREE_INTERFACE;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
        break;
    case ACCESSORY_SHOP_STATE_INIT_YES_NO_CHOICE:
        AccessoryShop_ShowYesNoChoice(&shop->yesNoChoice, shop->bgConfig, shop->heapID);
        shop->state = ACCESSORY_SHOP_STATE_SELECT_YES_NO_CHOICE;
        break;
    case ACCESSORY_SHOP_STATE_SELECT_YES_NO_CHOICE:
        input = AccessoryShop_SelectYesNoChoice(&shop->yesNoChoice);

        if (input == MENU_YES) {
            if (AccessoryShop_HasEnoughBerries(shop->bag, sAccessoryShop_ItemLists, shop->itemList.cursorPos, shop->heapID) == FALSE) {
                strbuf = MessageLoader_GetNewStrbuf(shop->msgLoader, flower_shop_not_enough_berries);
                AccessoryShop_PrintStrbufToMsgBox(&shop->msgbox, strbuf, shop->heapID);
                Strbuf_Free(strbuf);
                shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
                shop->nextState = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
                AccessoryShop_DeleteYesNoChoice(&shop->yesNoChoice);
                break;
            }

            if (ov7_0224CCE4(shop->unk_0C, sAccessoryShop_ItemLists, shop->itemList.cursorPos) == FALSE) {
                strbuf = MessageLoader_GetNewStrbuf(shop->msgLoader, flower_shop_cant_carry_more_accessories);
                AccessoryShop_PrintStrbufToMsgBox(&shop->msgbox, strbuf, shop->heapID);
                Strbuf_Free(strbuf);
                AccessoryShop_DeleteYesNoChoice(&shop->yesNoChoice);
                shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
                shop->nextState = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
                break;
            }

            strbuf = MessageLoader_GetNewStrbuf(shop->msgLoader, flower_shop_purchase_success);
            AccessoryShop_PrintStrbufToMsgBox(&shop->msgbox, strbuf, shop->heapID);
            Strbuf_Free(strbuf);
            AccessoryShop_DeleteYesNoChoice(&shop->yesNoChoice);

            shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            shop->nextState = ACCESSORY_SHOP_STATE_CONFIRM_PURCHASE;
        } else if (input == MENU_CANCELED) {
            AccessoryShop_DeleteYesNoChoice(&shop->yesNoChoice);
            shop->state = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
        }
        break;
    case ACCESSORY_SHOP_STATE_CONFIRM_PURCHASE:
        AccessoryShop_DoPurchase(shop->unk_0C, shop->bag, sAccessoryShop_ItemLists, shop->itemList.cursorPos, shop->heapID);
        AccessoryShop_LoadSuccessfulPurchaseMsg(&shop->msgbox, shop->msgLoader, shop->heapID, sAccessoryShop_ItemLists, shop->itemList.cursorPos);

        if (AccessoryShop_HasAllAccessories(shop->unk_0C, sAccessoryShop_ItemLists, ACCESSORY_SHOP_ITEM_LIST_COUNT)) {
            shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            shop->nextState = ACCESSORY_SHOP_STATE_LOAD_SHOCKED_MSG;
        } else {
            shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            shop->nextState = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
        }
        break;
    case ACCESSORY_SHOP_STATE_LOAD_SHOCKED_MSG:
        strbuf = MessageLoader_GetNewStrbuf(shop->msgLoader, flower_shop_traded_all_accessories);
        AccessoryShop_PrintStrbufToMsgBox(&shop->msgbox, strbuf, shop->heapID);
        Strbuf_Free(strbuf);
        shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
        shop->nextState = ACCESSORY_SHOP_STATE_LOAD_THANKS_MSG;
        break;
    case ACCESSORY_SHOP_STATE_LOAD_THANKS_MSG:
        strbuf = MessageLoader_GetNewStrbuf(shop->msgLoader, flower_shop_thanks);
        AccessoryShop_PrintStrbufToMsgBox(&shop->msgbox, strbuf, shop->heapID);
        Strbuf_Free(strbuf);
        shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
        shop->nextState = ACCESSORY_SHOP_STATE_FREE_INTERFACE;
        break;
    case ACCESSORY_SHOP_STATE_WAIT_MSGBOX:
        if (AccessoryShop_HasMsgBoxFinishedPrinting(&shop->msgbox)) {
            shop->state = shop->nextState;
        }
        break;
    case ACCESSORY_SHOP_STATE_WAIT_AB_INPUT:
        if (AccessoryShop_HasMsgBoxFinishedPrinting(&shop->msgbox)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                shop->state = shop->nextState;
            }
        }
        break;
    case ACCESSORY_SHOP_STATE_FREE_INTERFACE:
        AccessoryShop_DeleteMsgBox(&shop->msgbox);
        AccessoryShop_DeleteDescBox(&shop->descBox);
        AccessoryShop_DeleteItemList(&shop->itemList);
        AccessoryShop_DeleteYesNoChoice(&shop->yesNoChoice);
        return TRUE;
    }

    SpriteList_Update(shop->spriteList);

    return FALSE;
}

static void AccessoryShop_LoadOptions(AccessoryShop *shop)
{
    Options *options = SaveData_GetOptions(shop->saveData);

    shop->msgBoxFrame = Options_Frame(options);
    shop->renderDelay = Options_TextFrameDelay(options);
}

static void AccessoryShop_LoadGraphics(AccessoryShop *shop)
{
    LoadMessageBoxGraphics(shop->bgConfig, BG_LAYER_MAIN_3, 1, 10, shop->msgBoxFrame, shop->heapID);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(12), shop->heapID);
    LoadStandardWindowGraphics(shop->bgConfig, BG_LAYER_MAIN_3, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX, 0, shop->heapID);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(FIELD_MESSAGE_PALETTE_INDEX), shop->heapID);
    Bg_ClearTilemap(shop->bgConfig, BG_LAYER_MAIN_3);
}

static void AccessoryShop_ClearInterface(AccessoryShop *shop)
{
    Bg_ClearTilemap(shop->bgConfig, BG_LAYER_MAIN_3);
    FieldMessage_LoadTextPalettes(PAL_LOAD_MAIN_BG, TRUE);
}

static void AccessoryShop_InitSpriteList(AccessoryShop *shop)
{
    shop->spriteList = SpriteList_InitRendering(2, &shop->g2dRenderer, shop->heapID);
}

static void AccessoryShop_DeleteSpriteList(AccessoryShop *shop)
{
    SpriteList_Delete(shop->spriteList);
}

static void AccessoryShop_ShowMsgBox(AccessoryShopMessageBox *msgbox, BgConfig *bgConfig, enum HeapId heapID, u32 renderDelay)
{
    if (msgbox->active == TRUE) {
        return;
    }

    msgbox->renderDelay = renderDelay;
    msgbox->window = Window_New(heapID, 1);

    Window_Add(bgConfig, msgbox->window, BG_LAYER_MAIN_3, 2, 19, 27, 4, 12, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(msgbox->window, 15);
    Window_DrawMessageBoxWithScrollCursor(msgbox->window, FALSE, 1, 10);

    msgbox->active = TRUE;
}

static void AccessoryShop_DeleteMsgBox(AccessoryShopMessageBox *msgbox)
{
    if (msgbox->active == FALSE) {
        return;
    }

    Window_ClearAndCopyToVRAM(msgbox->window);
    Window_Remove(msgbox->window);
    Windows_Delete(msgbox->window, 1);

    msgbox->active = FALSE;
}

static void AccessoryShop_PrintStrbufToMsgBox(AccessoryShopMessageBox *msgbox, Strbuf *strbuf, enum HeapId heapID)
{
    GF_ASSERT(msgbox->strbuf == NULL);

    Window_FillTilemap(msgbox->window, 15);

    msgbox->strbuf = Strbuf_Clone(strbuf, heapID);
    msgbox->printerID = Text_AddPrinterWithParamsAndColor(msgbox->window, FONT_MESSAGE, msgbox->strbuf, 0, 0, msgbox->renderDelay, TEXT_COLOR(1, 2, 15), NULL);

    Window_CopyToVRAM(msgbox->window);
}

static BOOL AccessoryShop_HasMsgBoxFinishedPrinting(AccessoryShopMessageBox *msgbox)
{
    if (Text_IsPrinterActive(msgbox->printerID) == FALSE) {
        if (msgbox->strbuf != NULL) {
            Strbuf_Free(msgbox->strbuf);
            msgbox->strbuf = NULL;
        }

        return TRUE;
    }

    return FALSE;
}

static void AccessoryShop_LoadConfirmPurchaseMsg(AccessoryShopMessageBox *msgbox, MessageLoader *msgLoader, enum HeapId heapID, const AccessoryShopItem *items, u32 idx)
{
    Strbuf *fmtString, *strbuf;
    StringTemplate *strTemplate = StringTemplate_Default(heapID);
    strbuf = Strbuf_Init(200, heapID);
    fmtString = MessageLoader_GetNewStrbuf(msgLoader, flower_shop_confirm_purchase);

    if (items[idx].totalAmount == 1) {
        StringTemplate_SetItemName(strTemplate, 0, items[idx].itemBerryID + FIRST_BERRY_IDX);
    } else {
        StringTemplate_SetItemNamePlural(strTemplate, 0, items[idx].itemBerryID + FIRST_BERRY_IDX);
    }

    StringTemplate_SetNumber(strTemplate, 1, items[idx].totalAmount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetContestAccessoryName(strTemplate, 2, items[idx].accessoryID);
    StringTemplate_Format(strTemplate, strbuf, fmtString);

    AccessoryShop_PrintStrbufToMsgBox(msgbox, strbuf, heapID);

    StringTemplate_Free(strTemplate);
    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void AccessoryShop_LoadSuccessfulPurchaseMsg(AccessoryShopMessageBox *msgbox, MessageLoader *msgLoader, enum HeapId heapID, const AccessoryShopItem *items, u32 idx)
{
    Strbuf *fmtString, *strbuf;
    StringTemplate *strTemplate = StringTemplate_Default(heapID);
    strbuf = Strbuf_Init(200, heapID);
    fmtString = MessageLoader_GetNewStrbuf(msgLoader, flower_shop_purchase_post_success);

    if (items[idx].totalAmount == 1) {
        StringTemplate_SetItemName(strTemplate, 0, items[idx].itemBerryID + FIRST_BERRY_IDX);
    } else {
        StringTemplate_SetItemNamePlural(strTemplate, 0, items[idx].itemBerryID + FIRST_BERRY_IDX);
    }

    StringTemplate_SetNumber(strTemplate, 1, items[idx].totalAmount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetContestAccessoryName(strTemplate, 2, items[idx].accessoryID);
    StringTemplate_Format(strTemplate, strbuf, fmtString);

    AccessoryShop_PrintStrbufToMsgBox(msgbox, strbuf, heapID);

    StringTemplate_Free(strTemplate);
    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void AccessoryShop_ShowDescBox(AccessoryShopDescBox *descBox, BgConfig *bgConfig, MessageLoader *msgLoader, enum HeapId heapID)
{
    if (descBox->active == TRUE) {
        return;
    }

    descBox->window = Window_New(heapID, 1);
    Window_Add(bgConfig, descBox->window, BG_LAYER_MAIN_3, 1, 11, 14, 6, FIELD_MESSAGE_PALETTE_INDEX, (((1 + (18 + 12)) + 9) + (27 * 4)));
    descBox->strTemplate = StringTemplate_Default(heapID);

    for (int i = 0; i < ACCESSORY_SHOP_FORMAT_STRS; i++) {
        descBox->fmtString[i] = MessageLoader_GetNewStrbuf(msgLoader, flower_shop_berry_name_format + i);
    }

    descBox->strbuf = Strbuf_Init(32, heapID);
    Window_FillTilemap(descBox->window, 15);
    descBox->active = TRUE;
}

static void AccessoryShop_DeleteDescBox(AccessoryShopDescBox *descBox)
{
    if (descBox->active == FALSE) {
        return;
    }

    for (int i = 0; i < ACCESSORY_SHOP_FORMAT_STRS; i++) {
        Strbuf_Free(descBox->fmtString[i]);
    }

    Strbuf_Free(descBox->strbuf);
    StringTemplate_Free(descBox->strTemplate);
    Window_ClearAndCopyToVRAM(descBox->window);
    Window_Remove(descBox->window);
    Windows_Delete(descBox->window, 1);

    descBox->active = FALSE;
}

static void AccessoryShop_UpdateDescBox(AccessoryShopDescBox *descBox, u32 berryId, u32 totalAmount, u32 inBagAmount)
{
    StringTemplate_SetItemName(descBox->strTemplate, 0, berryId + FIRST_BERRY_IDX);
    StringTemplate_SetNumber(descBox->strTemplate, 1, totalAmount, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_SetNumber(descBox->strTemplate, 2, inBagAmount, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    Window_FillTilemap(descBox->window, 15);

    for (int i = 0; i < ACCESSORY_SHOP_FORMAT_STRS; i++) {
        StringTemplate_Format(descBox->strTemplate, descBox->strbuf, descBox->fmtString[i]);
        Text_AddPrinterWithParamsAndColor(descBox->window, FONT_SYSTEM, descBox->strbuf, 0, 16 * i, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    }

    Window_DrawStandardFrame(descBox->window, FALSE, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX);
}

static void AccessoryShop_ShowItemList(AccessoryShopItemList *itemList, BgConfig *bgConfig, enum HeapId heapID, const AccessoryShopItem *items, u32 maxItems, MessageLoader *msgLoader, void *param6, AccessoryShopUpdateFunc updateFunc, SpriteList *spriteList)
{
    int i;
    Strbuf *fmtString;
    SpriteResourcesHeader scrollArrowResource;
    SpriteListTemplate scrollArrowCellParams;
    static const u8 scrollArrowsYPos[ACCESSORY_SHOP_SPRITE_COUNT] = {
        8, 136
    };
    static ListMenuTemplate listTemplate = {
        .choices = NULL,
        .cursorCallback = NULL,
        .printCallback = NULL,
        .window = NULL,
        .count = 0,
        .maxDisplay = MAX_ITEM_SHOWN,
        .headerXOffset = 0,
        .textXOffset = 16,
        .cursorXOffset = 0,
        .yOffset = 8,
        .textColorFg = 1,
        .textColorBg = 15,
        .textColorShadow = 2,
        .letterSpacing = 0,
        .lineSpacing = 0,
        .pagerMode = PAGER_MODE_NONE,
        .fontID = FONT_SYSTEM,
        .cursorType = 0,
        .parent = NULL
    };

    if (itemList->active == TRUE) {
        return;
    }

    itemList->active = TRUE;
    itemList->maxListItems = maxItems + 1;
    itemList->unk_130 = param6;
    itemList->updateFunc = updateFunc;
    itemList->window = Window_New(heapID, 1);

    Window_Add(bgConfig, itemList->window, BG_LAYER_MAIN_3, 17, 1, 14, 16, FIELD_MESSAGE_PALETTE_INDEX, ((((1 + (18 + 12)) + 9) + (27 * 4)) + (14 * 6)));

    itemList->strTemplate = StringTemplate_Default(heapID);
    itemList->tempStrbuf = Strbuf_Init(32, heapID);

    fmtString = MessageLoader_GetNewStrbuf(msgLoader, flower_shop_berry_name_format);

    for (i = 0; i < maxItems; i++) {
        StringTemplate_SetContestAccessoryName(itemList->strTemplate, 0, items[i].accessoryID);
        StringTemplate_Format(itemList->strTemplate, itemList->tempStrbuf, fmtString);

        itemList->strbuf[i] = Strbuf_Clone(itemList->tempStrbuf, heapID);
        itemList->strList[i].entry = itemList->strbuf[i];
        itemList->strList[i].index = i;
    }

    itemList->strbuf[maxItems] = MessageLoader_GetNewStrbuf(msgLoader, flower_shop_exit);
    itemList->strList[maxItems].entry = itemList->strbuf[maxItems];
    itemList->strList[maxItems].index = maxItems;

    StringTemplate_Free(itemList->strTemplate);
    Strbuf_Free(itemList->tempStrbuf);
    Strbuf_Free(fmtString);

    listTemplate.window = itemList->window;
    listTemplate.count = itemList->maxListItems;
    listTemplate.choices = itemList->strList;

    itemList->listMenu = ListMenu_New(&listTemplate, 0, 0, heapID);

    Window_DrawStandardFrame(itemList->window, FALSE, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX);

    for (i = 0; i < ACCESSORY_SHOP_RES_IDX_COUNT; i++) {
        itemList->spriteResCollections[i] = SpriteResourceCollection_New(1, i, heapID);
    }

    AccessoryShop_LoadScrollArrowGfx(&scrollArrowResource, itemList, heapID);

    scrollArrowCellParams.list = spriteList;
    scrollArrowCellParams.resourceData = &scrollArrowResource;
    scrollArrowCellParams.priority = 0;
    scrollArrowCellParams.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    scrollArrowCellParams.heapID = heapID;
    scrollArrowCellParams.position.x = 192 * FX32_ONE;

    for (i = 0; i < ACCESSORY_SHOP_SPRITE_COUNT; i++) {
        scrollArrowCellParams.position.y = scrollArrowsYPos[i] * FX32_ONE;
        itemList->sprites[i] = SpriteList_Add(&scrollArrowCellParams);

        Sprite_SetAnim(itemList->sprites[i], i);
        Sprite_SetAnimateFlag(itemList->sprites[i], TRUE);
    }
}

static void AccessoryShop_DeleteItemList(AccessoryShopItemList *itemList)
{
    int i;

    if (itemList->active == FALSE) {
        return;
    }

    for (i = 0; i < ACCESSORY_SHOP_SPRITE_COUNT; i++) {
        Sprite_Delete(itemList->sprites[i]);
    }

    AccessoryShop_UnloadScrollArrowGfx(itemList);

    for (i = 0; i < itemList->maxListItems; i++) {
        Strbuf_Free(itemList->strbuf[i]);
    }

    ListMenu_Free(itemList->listMenu, NULL, NULL);
    Window_ClearAndCopyToVRAM(itemList->window);
    Window_Remove(itemList->window);
    Windows_Delete(itemList->window, 1);

    itemList->active = TRUE; // a mistake?
}

static u32 AccessoryShop_SelectItemListMenu(AccessoryShopItemList *itemList)
{
    u16 cursorPos;
    u32 input = ListMenu_ProcessInput(itemList->listMenu);

    if (input == LIST_NOTHING_CHOSEN) {
        ListMenu_CalcTrueCursorPos(itemList->listMenu, &cursorPos);

        if (itemList->cursorPos != cursorPos) {
            itemList->cursorPos = cursorPos;
            itemList->updateFunc(itemList->unk_130, itemList->cursorPos);

            Sound_PlayEffect(SEQ_SE_CONFIRM);
            AccessoryShop_UpdateScrollArrowsVisibility(itemList);
        }
    } else if (input != LIST_CANCEL) {
        if (itemList->cursorPos == (itemList->maxListItems - 1)) {
            input = LIST_CANCEL;
        }
    }

    return input;
}

static void AccessoryShop_UpdateItemListMenu(AccessoryShopItemList *itemList)
{
    itemList->updateFunc(itemList->unk_130, itemList->cursorPos);

    Window_DrawStandardFrame(itemList->window, FALSE, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX);
    AccessoryShop_UpdateScrollArrowsVisibility(itemList);
}

static void AccessoryShop_HideScrollArrows(AccessoryShopItemList *itemList)
{
    Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_TOP], FALSE);
    Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_BOTTOM], FALSE);
}

static void AccessoryShop_LoadScrollArrowGfx(SpriteResourcesHeader *scrollArrowResource, AccessoryShopItemList *itemList, enum HeapId heapID)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__SHOP_GRA, heapID);

    itemList->spriteResources[ACCESSORY_SHOP_RES_IDX_TILES] = SpriteResourceCollection_AddTilesFrom(itemList->spriteResCollections[ACCESSORY_SHOP_RES_IDX_TILES], narc, scroll_arrow_NCGR, FALSE, 5000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);
    itemList->spriteResources[ACCESSORY_SHOP_RES_IDX_PALETTE] = SpriteResourceCollection_AddPaletteFrom(itemList->spriteResCollections[ACCESSORY_SHOP_RES_IDX_PALETTE], narc, sprites_NCLR, FALSE, 5000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, heapID);
    itemList->spriteResources[ACCESSORY_SHOP_RES_IDX_CELL] = SpriteResourceCollection_AddFrom(itemList->spriteResCollections[ACCESSORY_SHOP_RES_IDX_CELL], narc, scroll_arrow_cell_NCER, FALSE, 5000, 2, heapID);
    itemList->spriteResources[ACCESSORY_SHOP_RES_IDX_ANIM] = SpriteResourceCollection_AddFrom(itemList->spriteResCollections[ACCESSORY_SHOP_RES_IDX_ANIM], narc, scroll_arrow_anim_NANR, FALSE, 5000, 3, heapID);

    NARC_dtor(narc);
    SpriteTransfer_RequestCharAtEnd(itemList->spriteResources[ACCESSORY_SHOP_RES_IDX_TILES]);
    SpriteTransfer_RequestPlttFreeSpace(itemList->spriteResources[ACCESSORY_SHOP_RES_IDX_PALETTE]);
    SpriteResourcesHeader_Init(scrollArrowResource, 5000, 5000, 5000, 5000, -1, -1, 0, 0, itemList->spriteResCollections[ACCESSORY_SHOP_RES_IDX_TILES], itemList->spriteResCollections[ACCESSORY_SHOP_RES_IDX_PALETTE], itemList->spriteResCollections[ACCESSORY_SHOP_RES_IDX_CELL], itemList->spriteResCollections[ACCESSORY_SHOP_RES_IDX_ANIM], NULL, NULL);
}

static void AccessoryShop_UnloadScrollArrowGfx(AccessoryShopItemList *itemList)
{
    SpriteTransfer_ResetCharTransfer(itemList->spriteResources[ACCESSORY_SHOP_RES_IDX_TILES]);
    SpriteTransfer_ResetPlttTransfer(itemList->spriteResources[ACCESSORY_SHOP_RES_IDX_PALETTE]);

    for (int i = 0; i < ACCESSORY_SHOP_RES_IDX_COUNT; i++) {
        SpriteResourceCollection_Delete(itemList->spriteResCollections[i]);
    }
}

static void AccessoryShop_UpdateScrollArrowsVisibility(AccessoryShopItemList *itemList)
{
    u16 listPos;

    ListMenu_GetListAndCursorPos(itemList->listMenu, &listPos, NULL);

    if (listPos <= 0) {
        Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_TOP], FALSE);
    } else {
        Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_TOP], TRUE);
    }

    if (listPos >= (itemList->maxListItems - MAX_ITEM_SHOWN)) {
        Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_BOTTOM], FALSE);
    } else {
        Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_BOTTOM], TRUE);
    }
}

static void AccessoryShop_SetDataPointers(AccessoryShopDataPtrs *dataPtr, AccessoryShopDescBox *descBox, const AccessoryShopItem *items, Bag *bag, enum HeapId heapID, BgConfig *bgConfig)
{
    dataPtr->bgConfig = bgConfig;
    dataPtr->descBox = descBox;
    dataPtr->items = items;
    dataPtr->bag = bag;
    dataPtr->heapID = heapID;
}

static void AccessoryShop_Update(void *ptr, u32 cursorPos)
{
    AccessoryShopDataPtrs *dataPtr = ptr;
    u32 inBagAmount;

    if (cursorPos < ACCESSORY_SHOP_ITEM_LIST_COUNT) {
        inBagAmount = Bag_GetItemQuantity(dataPtr->bag, dataPtr->items[cursorPos].itemBerryID + FIRST_BERRY_IDX, dataPtr->heapID);
        AccessoryShop_UpdateDescBox(dataPtr->descBox, dataPtr->items[cursorPos].itemBerryID, dataPtr->items[cursorPos].totalAmount, inBagAmount);
    } else {
        Bg_FillTilemapRect(dataPtr->bgConfig, BG_LAYER_MAIN_3, 0, 0, 10, 16, 8, 17);
        Bg_CopyTilemapBufferToVRAM(dataPtr->bgConfig, BG_LAYER_MAIN_3);
    }
}

static void AccessoryShop_ShowYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice, BgConfig *bgConfig, enum HeapId heapID)
{
    static const WindowTemplate winTemplate = {
        .bgLayer = BG_LAYER_MAIN_3,
        .tilemapLeft = 24,
        .tilemapTop = 13,
        .width = 7,
        .height = 4,
        .palette = FIELD_MESSAGE_PALETTE_INDEX,
        .baseTile = (((((1 + (18 + 12)) + 9) + (27 * 4)) + (14 * 6)) + (14 * 16))
    };

    if (yesNoChoice->active == TRUE) {
        return;
    }

    yesNoChoice->menu = Menu_MakeYesNoChoice(bgConfig, &winTemplate, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX, heapID);
    yesNoChoice->heapID = heapID;
    yesNoChoice->active = TRUE;
}

static void AccessoryShop_DeleteYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice)
{
    if (yesNoChoice->active == FALSE) {
        return;
    }

    yesNoChoice->active = FALSE;
}

static u32 AccessoryShop_SelectYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice)
{
    return Menu_ProcessInputAndHandleExit(yesNoChoice->menu, yesNoChoice->heapID);
}

static BOOL AccessoryShop_HasAllAccessories(const UnkStruct_02029D04 *param0, const AccessoryShopItem *items, u32 maxItems)
{
    for (int i = 0; i < maxItems; i++) {
        if (sub_02029D50(param0, items[i].accessoryID, 1) == TRUE) {
            return FALSE;
        }
    }

    return TRUE;
}

static BOOL AccessoryShop_HasEnoughBerries(Bag *bag, const AccessoryShopItem *items, u32 idx, enum HeapId heapID)
{
    u32 inBagAmount = Bag_GetItemQuantity(bag, items[idx].itemBerryID + FIRST_BERRY_IDX, heapID);

    if (inBagAmount >= items[idx].totalAmount) {
        return TRUE;
    }

    return FALSE;
}

static BOOL ov7_0224CCE4(const UnkStruct_02029D04 *param0, const AccessoryShopItem *items, u32 idx)
{
    return sub_02029D50(param0, items[idx].accessoryID, 1);
}

static void AccessoryShop_DoPurchase(UnkStruct_02029D04 *param0, Bag *bag, const AccessoryShopItem *items, u32 idx, enum HeapId heapID)
{
    u32 accessoryID = items[idx].accessoryID;
    u32 itemId = items[idx].itemBerryID + FIRST_BERRY_IDX;
    u32 count = items[idx].totalAmount;
    BOOL res;

    sub_02029E2C(param0, accessoryID, 1);
    res = Bag_TryRemoveItem(bag, itemId, count, heapID);

    GF_ASSERT(res == TRUE);
}
