#include "overlay007/accessory_shop.h"

#include <nitro.h>
#include <string.h>

#include "constants/accessories.h"
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
#include "sound_playback.h"
#include "string_list.h"
#include "system.h"
#include "text.h"
#include "unk_020298BC.h"

#include "res/graphics/shop_menu/shop_gra.naix"
#include "res/text/bank/flower_shop.h"

static const AccessoryShopItem sAccessoryShop_ItemLists[ACCESSORY_SHOP_ITEM_LIST_COUNT] = {
    { ACCESSORY_RED_FLOWER, BERRY_ID(CHERI), 1 },
    { ACCESSORY_PINK_FLOWER, BERRY_ID(CHESTO), 1 },
    { ACCESSORY_WHITE_FLOWER, BERRY_ID(PECHA), 1 },
    { ACCESSORY_BLUE_FLOWER, BERRY_ID(ORAN), 1 },
    { ACCESSORY_ORANGE_FLOWER, BERRY_ID(RAWST), 1 },
    { ACCESSORY_YELLOW_FLOWER, BERRY_ID(ASPEAR), 1 },
    { ACCESSORY_GOOGLY_SPECS, BERRY_ID(LEPPA), 1 },
    { ACCESSORY_BLACK_SPECS, BERRY_ID(PERSIM), 1 },
    { ACCESSORY_GORGEOUS_SPECS, BERRY_ID(RAZZ), 10 },
    { ACCESSORY_SWEET_CANDY, BERRY_ID(BLUK), 10 },
    { ACCESSORY_CONFETTI, BERRY_ID(NANAB), 10 },
    { ACCESSORY_COLORED_PARASOL, BERRY_ID(WEPEAR), 10 },
    { ACCESSORY_OLD_UMBRELLA, BERRY_ID(PINAP), 10 },
    { ACCESSORY_SPOTLIGHT, BERRY_ID(CORNN), 50 },
    { ACCESSORY_CAPE, BERRY_ID(PAMTRE), 100 },
    { ACCESSORY_STANDING_MIKE, BERRY_ID(MAGOST), 50 },
    { ACCESSORY_SURFBOARD, BERRY_ID(WATMEL), 100 },
    { ACCESSORY_CARPET, BERRY_ID(RABUTA), 50 },
    { ACCESSORY_RETRO_PIPE, BERRY_ID(NOMEL), 50 },
    { ACCESSORY_FLUFFY_BED, BERRY_ID(DURIN), 100 },
    { ACCESSORY_MIRROR_BALL, BERRY_ID(SPELON), 100 },
    { ACCESSORY_PHOTO_BOARD, BERRY_ID(BELUE), 100 }
};

static void AccessoryShop_LoadGraphics(AccessoryShop *shop);
static void AccessoryShop_ClearInterface(AccessoryShop *shop);
static void AccessoryShop_InitSpriteList(AccessoryShop *shop);
static void AccessoryShop_DeleteSpriteList(AccessoryShop *shop);
static void AccessoryShop_LoadOptions(AccessoryShop *shop);
static void AccessoryShop_ShowMsgBox(AccessoryShopMessageBox *msgbox, BgConfig *bgConfig, enum HeapID heapID, u32 renderDelay);
static void AccessoryShop_DeleteMsgBox(AccessoryShopMessageBox *msgbox);
static void AccessoryShop_PrintStringToMsgBox(AccessoryShopMessageBox *msgbox, String *string, enum HeapID heapID);
static BOOL AccessoryShop_HasMsgBoxFinishedPrinting(AccessoryShopMessageBox *msgbox);
static void AccessoryShop_LoadConfirmPurchaseMsg(AccessoryShopMessageBox *msgbox, MessageLoader *msgLoader, enum HeapID heapID, const AccessoryShopItem *items, u32 idx);
static void AccessoryShop_LoadSuccessfulPurchaseMsg(AccessoryShopMessageBox *msgbox, MessageLoader *msgLoader, enum HeapID heapID, const AccessoryShopItem *items, u32 idx);
static void AccessoryShop_ShowDescBox(AccessoryShopDescBox *descBox, BgConfig *bgConfig, MessageLoader *msgLoader, enum HeapID heapID);
static void AccessoryShop_DeleteDescBox(AccessoryShopDescBox *descBox);
static void AccessoryShop_UpdateDescBox(AccessoryShopDescBox *descBox, u32 berryId, u32 totalAmount, u32 inBagAmount);
static void AccessoryShop_ShowItemList(AccessoryShopItemList *itemList, BgConfig *bgConfig, enum HeapID heapID, const AccessoryShopItem *items, u32 maxItems, MessageLoader *msgLoader, void *param6, AccessoryShopUpdateFunc updateFunc, SpriteList *spriteList);
static void AccessoryShop_DeleteItemList(AccessoryShopItemList *itemList);
static u32 AccessoryShop_SelectItemListMenu(AccessoryShopItemList *itemList);
static void AccessoryShop_UpdateItemListMenu(AccessoryShopItemList *itemList);
static void AccessoryShop_HideScrollArrows(AccessoryShopItemList *itemList);
static void AccessoryShop_LoadScrollArrowGfx(SpriteResourcesHeader *scrollArrowResource, AccessoryShopItemList *itemList, enum HeapID heapID);
static void AccessoryShop_UnloadScrollArrowGfx(AccessoryShopItemList *itemList);
static void AccessoryShop_UpdateScrollArrowsVisibility(AccessoryShopItemList *itemList);
static void AccessoryShop_ShowYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice, BgConfig *bgConfig, enum HeapID heapID);
static void AccessoryShop_DeleteYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice);
static u32 AccessoryShop_SelectYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice);
static void AccessoryShop_SetDataPointers(AccessoryShopDataPtrs *dataPtr, AccessoryShopDescBox *descBox, const AccessoryShopItem *items, Bag *bag, enum HeapID heapID, BgConfig *bgConfig);
static void AccessoryShop_Update(void *ptr, u32 cursorPos);
static BOOL AccessoryShop_HasAllAccessories(const FashionCase *fashionCase, const AccessoryShopItem *items, u32 maxItems);
static BOOL AccessoryShop_HasEnoughBerries(Bag *bag, const AccessoryShopItem *items, u32 idx, enum HeapID heapID);
static BOOL ov7_0224CCE4(const FashionCase *fashionCase, const AccessoryShopItem *items, u32 idx);
static void AccessoryShop_DoPurchase(FashionCase *fashionCase, Bag *bag, const AccessoryShopItem *items, u32 idx, enum HeapID heapID);

AccessoryShop *AccessoryShop_New(enum HeapID heapID, SaveData *saveData, BgConfig *bgConfig)
{
    AccessoryShop *shop = Heap_Alloc(heapID, sizeof(AccessoryShop));

    memset(shop, 0, sizeof(AccessoryShop));

    shop->heapID = heapID;
    shop->bgConfig = bgConfig;
    shop->saveData = saveData;
    shop->fashionCase = ImageClips_GetFashionCase(SaveData_GetImageClips(shop->saveData));
    shop->bag = SaveData_GetBag(saveData);
    shop->msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FLOWER_SHOP, shop->heapID);

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
    Heap_Free(shop);
}

BOOL AccessoryShop_Main(AccessoryShop *shop)
{
    String *string;
    u32 input;

    switch (shop->state) {
    case ACCESSORY_SHOP_STATE_LOAD_GREET_MSG:
        AccessoryShop_ShowMsgBox(&shop->msgbox, shop->bgConfig, shop->heapID, shop->renderDelay);
        string = MessageLoader_GetNewString(shop->msgLoader, FlowerShop_Text_Greet);
        AccessoryShop_PrintStringToMsgBox(&shop->msgbox, string, shop->heapID);
        String_Free(string);
        shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
        shop->nextState = ACCESSORY_SHOP_STATE_INIT_ITEM_LIST;
        break;
    case ACCESSORY_SHOP_STATE_INIT_ITEM_LIST:
        if (AccessoryShop_HasAllAccessories(shop->fashionCase, sAccessoryShop_ItemLists, ACCESSORY_SHOP_ITEM_LIST_COUNT)) {
            string = MessageLoader_GetNewString(shop->msgLoader, FlowerShop_Text_Thanks);
            AccessoryShop_PrintStringToMsgBox(&shop->msgbox, string, shop->heapID);
            String_Free(string);
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
        string = MessageLoader_GetNewString(shop->msgLoader, FlowerShop_Text_Purchase);
        AccessoryShop_PrintStringToMsgBox(&shop->msgbox, string, shop->heapID);
        String_Free(string);
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
            string = MessageLoader_GetNewString(shop->msgLoader, FlowerShop_Text_PleaseComeAgain);
            AccessoryShop_PrintStringToMsgBox(&shop->msgbox, string, shop->heapID);
            String_Free(string);
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
                string = MessageLoader_GetNewString(shop->msgLoader, FlowerShop_Text_NotEnoughBerries);
                AccessoryShop_PrintStringToMsgBox(&shop->msgbox, string, shop->heapID);
                String_Free(string);
                shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
                shop->nextState = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
                AccessoryShop_DeleteYesNoChoice(&shop->yesNoChoice);
                break;
            }

            if (ov7_0224CCE4(shop->fashionCase, sAccessoryShop_ItemLists, shop->itemList.cursorPos) == FALSE) {
                string = MessageLoader_GetNewString(shop->msgLoader, FlowerShop_Text_CantCarryMoreAccessories);
                AccessoryShop_PrintStringToMsgBox(&shop->msgbox, string, shop->heapID);
                String_Free(string);
                AccessoryShop_DeleteYesNoChoice(&shop->yesNoChoice);
                shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
                shop->nextState = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
                break;
            }

            string = MessageLoader_GetNewString(shop->msgLoader, FlowerShop_Text_PurchaseSuccess);
            AccessoryShop_PrintStringToMsgBox(&shop->msgbox, string, shop->heapID);
            String_Free(string);
            AccessoryShop_DeleteYesNoChoice(&shop->yesNoChoice);

            shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            shop->nextState = ACCESSORY_SHOP_STATE_CONFIRM_PURCHASE;
        } else if (input == MENU_CANCELED) {
            AccessoryShop_DeleteYesNoChoice(&shop->yesNoChoice);
            shop->state = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
        }
        break;
    case ACCESSORY_SHOP_STATE_CONFIRM_PURCHASE:
        AccessoryShop_DoPurchase(shop->fashionCase, shop->bag, sAccessoryShop_ItemLists, shop->itemList.cursorPos, shop->heapID);
        AccessoryShop_LoadSuccessfulPurchaseMsg(&shop->msgbox, shop->msgLoader, shop->heapID, sAccessoryShop_ItemLists, shop->itemList.cursorPos);

        if (AccessoryShop_HasAllAccessories(shop->fashionCase, sAccessoryShop_ItemLists, ACCESSORY_SHOP_ITEM_LIST_COUNT)) {
            shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            shop->nextState = ACCESSORY_SHOP_STATE_LOAD_SHOCKED_MSG;
        } else {
            shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            shop->nextState = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
        }
        break;
    case ACCESSORY_SHOP_STATE_LOAD_SHOCKED_MSG:
        string = MessageLoader_GetNewString(shop->msgLoader, FlowerShop_Text_TradedAllAccessories);
        AccessoryShop_PrintStringToMsgBox(&shop->msgbox, string, shop->heapID);
        String_Free(string);
        shop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
        shop->nextState = ACCESSORY_SHOP_STATE_LOAD_THANKS_MSG;
        break;
    case ACCESSORY_SHOP_STATE_LOAD_THANKS_MSG:
        string = MessageLoader_GetNewString(shop->msgLoader, FlowerShop_Text_Thanks);
        AccessoryShop_PrintStringToMsgBox(&shop->msgbox, string, shop->heapID);
        String_Free(string);
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

static void AccessoryShop_ShowMsgBox(AccessoryShopMessageBox *msgbox, BgConfig *bgConfig, enum HeapID heapID, u32 renderDelay)
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

static void AccessoryShop_PrintStringToMsgBox(AccessoryShopMessageBox *msgbox, String *string, enum HeapID heapID)
{
    GF_ASSERT(msgbox->string == NULL);

    Window_FillTilemap(msgbox->window, 15);

    msgbox->string = String_Clone(string, heapID);
    msgbox->printerID = Text_AddPrinterWithParamsAndColor(msgbox->window, FONT_MESSAGE, msgbox->string, 0, 0, msgbox->renderDelay, TEXT_COLOR(1, 2, 15), NULL);

    Window_CopyToVRAM(msgbox->window);
}

static BOOL AccessoryShop_HasMsgBoxFinishedPrinting(AccessoryShopMessageBox *msgbox)
{
    if (Text_IsPrinterActive(msgbox->printerID) == FALSE) {
        if (msgbox->string != NULL) {
            String_Free(msgbox->string);
            msgbox->string = NULL;
        }

        return TRUE;
    }

    return FALSE;
}

static void AccessoryShop_LoadConfirmPurchaseMsg(AccessoryShopMessageBox *msgbox, MessageLoader *msgLoader, enum HeapID heapID, const AccessoryShopItem *items, u32 idx)
{
    String *fmtString, *string;
    StringTemplate *strTemplate = StringTemplate_Default(heapID);
    string = String_Init(200, heapID);
    fmtString = MessageLoader_GetNewString(msgLoader, FlowerShop_Text_ConfirmPurchase);

    if (items[idx].totalAmount == 1) {
        StringTemplate_SetItemName(strTemplate, 0, items[idx].itemBerryID + FIRST_BERRY_IDX);
    } else {
        StringTemplate_SetItemNamePlural(strTemplate, 0, items[idx].itemBerryID + FIRST_BERRY_IDX);
    }

    StringTemplate_SetNumber(strTemplate, 1, items[idx].totalAmount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetContestAccessoryName(strTemplate, 2, items[idx].accessoryID);
    StringTemplate_Format(strTemplate, string, fmtString);

    AccessoryShop_PrintStringToMsgBox(msgbox, string, heapID);

    StringTemplate_Free(strTemplate);
    String_Free(string);
    String_Free(fmtString);
}

static void AccessoryShop_LoadSuccessfulPurchaseMsg(AccessoryShopMessageBox *msgbox, MessageLoader *msgLoader, enum HeapID heapID, const AccessoryShopItem *items, u32 idx)
{
    String *fmtString, *string;
    StringTemplate *strTemplate = StringTemplate_Default(heapID);
    string = String_Init(200, heapID);
    fmtString = MessageLoader_GetNewString(msgLoader, FlowerShop_Text_PurchasePostSuccess);

    if (items[idx].totalAmount == 1) {
        StringTemplate_SetItemName(strTemplate, 0, items[idx].itemBerryID + FIRST_BERRY_IDX);
    } else {
        StringTemplate_SetItemNamePlural(strTemplate, 0, items[idx].itemBerryID + FIRST_BERRY_IDX);
    }

    StringTemplate_SetNumber(strTemplate, 1, items[idx].totalAmount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetContestAccessoryName(strTemplate, 2, items[idx].accessoryID);
    StringTemplate_Format(strTemplate, string, fmtString);

    AccessoryShop_PrintStringToMsgBox(msgbox, string, heapID);

    StringTemplate_Free(strTemplate);
    String_Free(string);
    String_Free(fmtString);
}

static void AccessoryShop_ShowDescBox(AccessoryShopDescBox *descBox, BgConfig *bgConfig, MessageLoader *msgLoader, enum HeapID heapID)
{
    if (descBox->active == TRUE) {
        return;
    }

    descBox->window = Window_New(heapID, 1);
    Window_Add(bgConfig, descBox->window, BG_LAYER_MAIN_3, 1, 11, 14, 6, FIELD_MESSAGE_PALETTE_INDEX, (((1 + (18 + 12)) + 9) + (27 * 4)));
    descBox->strTemplate = StringTemplate_Default(heapID);

    for (int i = 0; i < ACCESSORY_SHOP_FORMAT_STRS; i++) {
        descBox->fmtString[i] = MessageLoader_GetNewString(msgLoader, FlowerShop_Text_BerryNameFormat + i);
    }

    descBox->string = String_Init(32, heapID);
    Window_FillTilemap(descBox->window, 15);
    descBox->active = TRUE;
}

static void AccessoryShop_DeleteDescBox(AccessoryShopDescBox *descBox)
{
    if (descBox->active == FALSE) {
        return;
    }

    for (int i = 0; i < ACCESSORY_SHOP_FORMAT_STRS; i++) {
        String_Free(descBox->fmtString[i]);
    }

    String_Free(descBox->string);
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
        StringTemplate_Format(descBox->strTemplate, descBox->string, descBox->fmtString[i]);
        Text_AddPrinterWithParamsAndColor(descBox->window, FONT_SYSTEM, descBox->string, 0, 16 * i, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    }

    Window_DrawStandardFrame(descBox->window, FALSE, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX);
}

static void AccessoryShop_ShowItemList(AccessoryShopItemList *itemList, BgConfig *bgConfig, enum HeapID heapID, const AccessoryShopItem *items, u32 maxItems, MessageLoader *msgLoader, void *param6, AccessoryShopUpdateFunc updateFunc, SpriteList *spriteList)
{
    int i;
    String *fmtString;
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
    itemList->tempString = String_Init(32, heapID);

    fmtString = MessageLoader_GetNewString(msgLoader, FlowerShop_Text_BerryNameFormat);

    for (i = 0; i < maxItems; i++) {
        StringTemplate_SetContestAccessoryName(itemList->strTemplate, 0, items[i].accessoryID);
        StringTemplate_Format(itemList->strTemplate, itemList->tempString, fmtString);

        itemList->string[i] = String_Clone(itemList->tempString, heapID);
        itemList->strList[i].entry = itemList->string[i];
        itemList->strList[i].index = i;
    }

    itemList->string[maxItems] = MessageLoader_GetNewString(msgLoader, FlowerShop_Text_Exit);
    itemList->strList[maxItems].entry = itemList->string[maxItems];
    itemList->strList[maxItems].index = maxItems;

    StringTemplate_Free(itemList->strTemplate);
    String_Free(itemList->tempString);
    String_Free(fmtString);

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
        String_Free(itemList->string[i]);
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
    Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_TOP_ARROW], FALSE);
    Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_BOTTOM_ARROW], FALSE);
}

static void AccessoryShop_LoadScrollArrowGfx(SpriteResourcesHeader *scrollArrowResource, AccessoryShopItemList *itemList, enum HeapID heapID)
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
        Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_TOP_ARROW], FALSE);
    } else {
        Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_TOP_ARROW], TRUE);
    }

    if (listPos >= (itemList->maxListItems - MAX_ITEM_SHOWN)) {
        Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_BOTTOM_ARROW], FALSE);
    } else {
        Sprite_SetDrawFlag(itemList->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_BOTTOM_ARROW], TRUE);
    }
}

static void AccessoryShop_SetDataPointers(AccessoryShopDataPtrs *dataPtr, AccessoryShopDescBox *descBox, const AccessoryShopItem *items, Bag *bag, enum HeapID heapID, BgConfig *bgConfig)
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

static void AccessoryShop_ShowYesNoChoice(AccessoryShopYesNoChoice *yesNoChoice, BgConfig *bgConfig, enum HeapID heapID)
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

static BOOL AccessoryShop_HasAllAccessories(const FashionCase *fashionCase, const AccessoryShopItem *items, u32 maxItems)
{
    for (int i = 0; i < maxItems; i++) {
        if (FashionCase_CanFitAccessoryCount(fashionCase, items[i].accessoryID, 1) == TRUE) {
            return FALSE;
        }
    }

    return TRUE;
}

static BOOL AccessoryShop_HasEnoughBerries(Bag *bag, const AccessoryShopItem *items, u32 idx, enum HeapID heapID)
{
    u32 inBagAmount = Bag_GetItemQuantity(bag, items[idx].itemBerryID + FIRST_BERRY_IDX, heapID);

    if (inBagAmount >= items[idx].totalAmount) {
        return TRUE;
    }

    return FALSE;
}

static BOOL ov7_0224CCE4(const FashionCase *fashionCase, const AccessoryShopItem *items, u32 idx)
{
    return FashionCase_CanFitAccessoryCount(fashionCase, items[idx].accessoryID, 1);
}

static void AccessoryShop_DoPurchase(FashionCase *fashionCase, Bag *bag, const AccessoryShopItem *items, u32 idx, enum HeapID heapID)
{
    u32 accessoryID = items[idx].accessoryID;
    u32 itemId = items[idx].itemBerryID + FIRST_BERRY_IDX;
    u32 count = items[idx].totalAmount;
    BOOL res;

    FashionCase_AddAccessory(fashionCase, accessoryID, 1);
    res = Bag_TryRemoveItem(bag, itemId, count, heapID);

    GF_ASSERT(res == TRUE);
}
