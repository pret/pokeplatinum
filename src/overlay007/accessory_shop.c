#include "overlay007/accessory_shop.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/window.h"
#include "generated/sdat.h"
#include "generated/text_banks.h"

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

static const AccessoryShop_ItemList sAccessoryShop_ItemLists[ACCESSORY_SHOP_ITEM_LIST_COUNT] = {
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

static void AccessoryShop_LoadGraphics(AccessoryShop *accessoryShop);
static void AccessoryShop_ClearInterface(AccessoryShop *accessoryShop);
static void AccessoryShop_InitSpriteList(AccessoryShop *accessoryShop);
static void AccessoryShop_DeleteSpriteList(AccessoryShop *accessoryShop);
static void AccessoryShop_LoadOptions(AccessoryShop *accessoryShop);
static void AccessoryShop_ActivateMsgBox(AccessoryShop_MessageBox *msgbox, BgConfig *bgConfig, enum HeapId heapID, u32 renderDelay);
static void AccessoryShop_DeactivateMsgBox(AccessoryShop_MessageBox *msgbox);
static void AccessoryShop_PrintStrbufToMsgBox(AccessoryShop_MessageBox *msgbox, Strbuf *strbuf, enum HeapId heapID);
static BOOL AccessoryShop_HasMsgBoxFinishedPrinting(AccessoryShop_MessageBox *msgbox);
static void AccessoryShop_LoadConfirmPurchaseMsg(AccessoryShop_MessageBox *msgbox, MessageLoader *msgLoader, enum HeapId heapID, const AccessoryShop_ItemList *itemList, u32 idx);
static void AccessoryShop_LoadSuccessfulPurchaseMsg(AccessoryShop_MessageBox *msgbox, MessageLoader *msgLoader, enum HeapId heapID, const AccessoryShop_ItemList *itemList, u32 idx);
static void AccessoryShop_ActivateDescBox(AccessoryShop_DescriptionBox *descBox, BgConfig *bgConfig, MessageLoader *msgLoader, enum HeapId heapID);
static void AccessoryShop_DeactivateDescBox(AccessoryShop_DescriptionBox *descBox);
static void AccessoryShop_UpdateDescBox(AccessoryShop_DescriptionBox *descBox, u32 berryId, u32 totalAmount, u32 inBagAmount);
static void AccessoryShop_ActivateItemListMenu(AccessoryShop_ItemListMenu *itemListMenu, BgConfig *bgConfig, enum HeapId heapID, const AccessoryShop_ItemList *itemList, u32 maxItem, MessageLoader *msgLoader, void *param6, AccessoryShop_UpdateFunc updateFunc, SpriteList *spriteList);
static void AccessoryShop_DeactivateItemListMenu(AccessoryShop_ItemListMenu *itemListMenu);
static u32 AccessoryShop_SelectItemListMenu(AccessoryShop_ItemListMenu *itemListMenu);
static void AccessoryShop_UpdateItemListMenu(AccessoryShop_ItemListMenu *itemListMenu);
static void AccessoryShop_HideScrollArrows(AccessoryShop_ItemListMenu *itemList);
static void AccessoryShop_LoadScrollArrowGfx(SpriteResourcesHeader *scrollArrowResource, AccessoryShop_ItemListMenu *itemListMenu, enum HeapId heapID);
static void AccessoryShop_UnloadScrollArrowGfx(AccessoryShop_ItemListMenu *itemListMenu);
static void AccessoryShop_UpdateScrollArrowDrawFlag(AccessoryShop_ItemListMenu *itemListMenu);
static void AccessoryShop_ActivateYesNoChoice(AccessoryShop_YesNoChoice *yesNoChoice, BgConfig *bgConfig, enum HeapId heapID);
static void AccessoryShop_DeactivateYesNoChoice(AccessoryShop_YesNoChoice *yesNoChoice);
static u32 AccessoryShop_SelectYesNoChoice(AccessoryShop_YesNoChoice *yesNoChoice);
static void AccessoryShop_SetDataPointers(AccessoryShop_DataPointers *dataPtr, AccessoryShop_DescriptionBox *descBox, const AccessoryShop_ItemList *itemList, Bag *bag, enum HeapId heapID, BgConfig *bgConfig);
static void AccessoryShop_Update(void *ptr, u32 cursorPos);
static BOOL AccessoryShop_HasAllAccessories(const UnkStruct_02029D04 *param0, const AccessoryShop_ItemList *itemList, u32 maxItem);
static BOOL AccessoryShop_HasEnoughBerries(Bag *bag, const AccessoryShop_ItemList *itemList, u32 idx, enum HeapId heapID);
static BOOL ov7_0224CCE4(const UnkStruct_02029D04 *param0, const AccessoryShop_ItemList *itemList, u32 idx);
static void AccessoryShop_DoPurchase(UnkStruct_02029D04 *param0, Bag *bag, const AccessoryShop_ItemList *itemList, u32 idx, enum HeapId heapID);

AccessoryShop *AccessoryShop_Alloc(enum HeapId heapID, SaveData *saveData, BgConfig *bgConfig)
{
    AccessoryShop *accessoryShop = Heap_AllocFromHeap(heapID, sizeof(AccessoryShop));

    memset(accessoryShop, 0, sizeof(AccessoryShop));

    accessoryShop->heapID = heapID;
    accessoryShop->bgConfig = bgConfig;
    accessoryShop->saveData = saveData;
    accessoryShop->unk_0C = sub_02029D04(sub_0202A750(accessoryShop->saveData));
    accessoryShop->bag = SaveData_GetBag(saveData);
    accessoryShop->msgLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_FLOWER_SHOP, accessoryShop->heapID);

    AccessoryShop_LoadOptions(accessoryShop);
    AccessoryShop_LoadGraphics(accessoryShop);
    AccessoryShop_InitSpriteList(accessoryShop);

    return accessoryShop;
}

void AccessoryShop_Free(AccessoryShop *accessoryShop)
{
    MessageLoader_Free(accessoryShop->msgLoader);

    AccessoryShop_ClearInterface(accessoryShop);
    AccessoryShop_DeleteSpriteList(accessoryShop);

    memset(accessoryShop, 0, sizeof(AccessoryShop));
    Heap_FreeToHeap(accessoryShop);
}

BOOL AccessoryShop_Main(AccessoryShop *accessoryShop)
{
    Strbuf *strbuf;
    u32 input;

    switch (accessoryShop->state) {
    case ACCESSORY_SHOP_STATE_LOAD_GREET_MSG:
        AccessoryShop_ActivateMsgBox(&accessoryShop->msgbox, accessoryShop->bgConfig, accessoryShop->heapID, accessoryShop->renderDelay);
        strbuf = MessageLoader_GetNewStrbuf(accessoryShop->msgLoader, pl_msg_00000572_00004);
        AccessoryShop_PrintStrbufToMsgBox(&accessoryShop->msgbox, strbuf, accessoryShop->heapID);
        Strbuf_Free(strbuf);
        accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
        accessoryShop->nextState = ACCESSORY_SHOP_STATE_INIT_ITEM_LIST;
        break;
    case ACCESSORY_SHOP_STATE_INIT_ITEM_LIST:
        if (AccessoryShop_HasAllAccessories(accessoryShop->unk_0C, sAccessoryShop_ItemLists, ACCESSORY_SHOP_ITEM_LIST_COUNT)) {
            strbuf = MessageLoader_GetNewStrbuf(accessoryShop->msgLoader, pl_msg_00000572_00005);
            AccessoryShop_PrintStrbufToMsgBox(&accessoryShop->msgbox, strbuf, accessoryShop->heapID);
            Strbuf_Free(strbuf);
            accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            accessoryShop->nextState = ACCESSORY_SHOP_STATE_FREE_INTERFACE;
        } else {
            accessoryShop->state = ACCESSORY_SHOP_STATE_INIT_INTERFACE;
        }
        break;
    case ACCESSORY_SHOP_STATE_INIT_INTERFACE:
        AccessoryShop_ActivateDescBox(&accessoryShop->descBox, accessoryShop->bgConfig, accessoryShop->msgLoader, accessoryShop->heapID);
        AccessoryShop_SetDataPointers(&accessoryShop->dataPtr, &accessoryShop->descBox, sAccessoryShop_ItemLists, accessoryShop->bag, accessoryShop->heapID, accessoryShop->bgConfig);
        AccessoryShop_ActivateItemListMenu(&accessoryShop->itemListMenu, accessoryShop->bgConfig, accessoryShop->heapID, sAccessoryShop_ItemLists, ACCESSORY_SHOP_ITEM_LIST_COUNT, accessoryShop->msgLoader, &accessoryShop->dataPtr, AccessoryShop_Update, accessoryShop->spriteList);
        // fallthrough
    case ACCESSORY_SHOP_STATE_LOAD_BUY_MSG:
        AccessoryShop_UpdateItemListMenu(&accessoryShop->itemListMenu);
        strbuf = MessageLoader_GetNewStrbuf(accessoryShop->msgLoader, pl_msg_00000572_00006);
        AccessoryShop_PrintStrbufToMsgBox(&accessoryShop->msgbox, strbuf, accessoryShop->heapID);
        Strbuf_Free(strbuf);
        accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_MSGBOX;
        accessoryShop->nextState = ACCESSORY_SHOP_STATE_SELECT_ITEM_LIST;
        break;
    case ACCESSORY_SHOP_STATE_SELECT_ITEM_LIST:
        input = AccessoryShop_SelectItemListMenu(&accessoryShop->itemListMenu);

        if ((input != LIST_NOTHING_CHOSEN) && (input != LIST_CANCEL)) {
            Bg_FillTilemapRect(accessoryShop->bgConfig, BG_LAYER_MAIN_3, 0, 0, 0, 32, 18, 17);

            AccessoryShop_HideScrollArrows(&accessoryShop->itemListMenu);
            AccessoryShop_LoadConfirmPurchaseMsg(&accessoryShop->msgbox, accessoryShop->msgLoader, accessoryShop->heapID, sAccessoryShop_ItemLists, accessoryShop->itemListMenu.cursorPos);

            accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_MSGBOX;
            accessoryShop->nextState = ACCESSORY_SHOP_STATE_INIT_YES_NO_CHOICE;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        } else if (input == LIST_CANCEL) {
            strbuf = MessageLoader_GetNewStrbuf(accessoryShop->msgLoader, pl_msg_00000572_00011);
            AccessoryShop_PrintStrbufToMsgBox(&accessoryShop->msgbox, strbuf, accessoryShop->heapID);
            Strbuf_Free(strbuf);
            accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            accessoryShop->nextState = ACCESSORY_SHOP_STATE_FREE_INTERFACE;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
        break;
    case ACCESSORY_SHOP_STATE_INIT_YES_NO_CHOICE:
        AccessoryShop_ActivateYesNoChoice(&accessoryShop->yesNoChoice, accessoryShop->bgConfig, accessoryShop->heapID);
        accessoryShop->state = ACCESSORY_SHOP_STATE_SELECT_YES_NO_CHOICE;
        break;
    case ACCESSORY_SHOP_STATE_SELECT_YES_NO_CHOICE:
        input = AccessoryShop_SelectYesNoChoice(&accessoryShop->yesNoChoice);

        if (input == 0) {
            if (AccessoryShop_HasEnoughBerries(accessoryShop->bag, sAccessoryShop_ItemLists, accessoryShop->itemListMenu.cursorPos, accessoryShop->heapID) == FALSE) {
                strbuf = MessageLoader_GetNewStrbuf(accessoryShop->msgLoader, pl_msg_00000572_00009);
                AccessoryShop_PrintStrbufToMsgBox(&accessoryShop->msgbox, strbuf, accessoryShop->heapID);
                Strbuf_Free(strbuf);
                accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
                accessoryShop->nextState = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
                AccessoryShop_DeactivateYesNoChoice(&accessoryShop->yesNoChoice);
                break;
            }

            if (ov7_0224CCE4(accessoryShop->unk_0C, sAccessoryShop_ItemLists, accessoryShop->itemListMenu.cursorPos) == FALSE) {
                strbuf = MessageLoader_GetNewStrbuf(accessoryShop->msgLoader, pl_msg_00000572_00010);
                AccessoryShop_PrintStrbufToMsgBox(&accessoryShop->msgbox, strbuf, accessoryShop->heapID);
                Strbuf_Free(strbuf);
                AccessoryShop_DeactivateYesNoChoice(&accessoryShop->yesNoChoice);
                accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
                accessoryShop->nextState = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
                break;
            }

            strbuf = MessageLoader_GetNewStrbuf(accessoryShop->msgLoader, pl_msg_00000572_00008);
            AccessoryShop_PrintStrbufToMsgBox(&accessoryShop->msgbox, strbuf, accessoryShop->heapID);
            Strbuf_Free(strbuf);
            AccessoryShop_DeactivateYesNoChoice(&accessoryShop->yesNoChoice);

            accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            accessoryShop->nextState = ACCESSORY_SHOP_STATE_CONFIRM_PURCHASE;
        } else if (input == MENU_CANCELED) {
            AccessoryShop_DeactivateYesNoChoice(&accessoryShop->yesNoChoice);
            accessoryShop->state = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
        }
        break;
    case ACCESSORY_SHOP_STATE_CONFIRM_PURCHASE:
        AccessoryShop_DoPurchase(accessoryShop->unk_0C, accessoryShop->bag, sAccessoryShop_ItemLists, accessoryShop->itemListMenu.cursorPos, accessoryShop->heapID);
        AccessoryShop_LoadSuccessfulPurchaseMsg(&accessoryShop->msgbox, accessoryShop->msgLoader, accessoryShop->heapID, sAccessoryShop_ItemLists, accessoryShop->itemListMenu.cursorPos);

        if (AccessoryShop_HasAllAccessories(accessoryShop->unk_0C, sAccessoryShop_ItemLists, ACCESSORY_SHOP_ITEM_LIST_COUNT)) {
            accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            accessoryShop->nextState = ACCESSORY_SHOP_STATE_LOAD_SHOCKED_MSG;
        } else {
            accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
            accessoryShop->nextState = ACCESSORY_SHOP_STATE_LOAD_BUY_MSG;
        }
        break;
    case ACCESSORY_SHOP_STATE_LOAD_SHOCKED_MSG:
        strbuf = MessageLoader_GetNewStrbuf(accessoryShop->msgLoader, pl_msg_00000572_00013);
        AccessoryShop_PrintStrbufToMsgBox(&accessoryShop->msgbox, strbuf, accessoryShop->heapID);
        Strbuf_Free(strbuf);
        accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
        accessoryShop->nextState = ACCESSORY_SHOP_STATE_LOAD_THANKS_MSG;
        break;
    case ACCESSORY_SHOP_STATE_LOAD_THANKS_MSG:
        strbuf = MessageLoader_GetNewStrbuf(accessoryShop->msgLoader, pl_msg_00000572_00005);
        AccessoryShop_PrintStrbufToMsgBox(&accessoryShop->msgbox, strbuf, accessoryShop->heapID);
        Strbuf_Free(strbuf);
        accessoryShop->state = ACCESSORY_SHOP_STATE_WAIT_AB_INPUT;
        accessoryShop->nextState = ACCESSORY_SHOP_STATE_FREE_INTERFACE;
        break;
    case ACCESSORY_SHOP_STATE_WAIT_MSGBOX:
        if (AccessoryShop_HasMsgBoxFinishedPrinting(&accessoryShop->msgbox)) {
            accessoryShop->state = accessoryShop->nextState;
        }
        break;
    case ACCESSORY_SHOP_STATE_WAIT_AB_INPUT:
        if (AccessoryShop_HasMsgBoxFinishedPrinting(&accessoryShop->msgbox)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                accessoryShop->state = accessoryShop->nextState;
            }
        }
        break;
    case ACCESSORY_SHOP_STATE_FREE_INTERFACE:
        AccessoryShop_DeactivateMsgBox(&accessoryShop->msgbox);
        AccessoryShop_DeactivateDescBox(&accessoryShop->descBox);
        AccessoryShop_DeactivateItemListMenu(&accessoryShop->itemListMenu);
        AccessoryShop_DeactivateYesNoChoice(&accessoryShop->yesNoChoice);
        return TRUE;
    default:
        break;
    }

    SpriteList_Update(accessoryShop->spriteList);

    return FALSE;
}

static void AccessoryShop_LoadOptions(AccessoryShop *accessoryShop)
{
    Options *options = SaveData_Options(accessoryShop->saveData);

    accessoryShop->msgBoxFrame = Options_Frame(options);
    accessoryShop->renderDelay = Options_TextFrameDelay(options);
}

static void AccessoryShop_LoadGraphics(AccessoryShop *accessoryShop)
{
    LoadMessageBoxGraphics(accessoryShop->bgConfig, BG_LAYER_MAIN_3, 1, 10, accessoryShop->msgBoxFrame, accessoryShop->heapID);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(12), accessoryShop->heapID);
    LoadStandardWindowGraphics(accessoryShop->bgConfig, BG_LAYER_MAIN_3, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX, 0, accessoryShop->heapID);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(FIELD_MESSAGE_PALETTE_INDEX), accessoryShop->heapID);
    Bg_ClearTilemap(accessoryShop->bgConfig, BG_LAYER_MAIN_3);
}

static void AccessoryShop_ClearInterface(AccessoryShop *accessoryShop)
{
    Bg_ClearTilemap(accessoryShop->bgConfig, BG_LAYER_MAIN_3);
    FieldMessage_LoadTextPalettes(PAL_LOAD_MAIN_BG, TRUE);
}

static void AccessoryShop_InitSpriteList(AccessoryShop *accessoryShop)
{
    accessoryShop->spriteList = SpriteList_InitRendering(2, &accessoryShop->g2Renderer, accessoryShop->heapID);
}

static void AccessoryShop_DeleteSpriteList(AccessoryShop *accessoryShop)
{
    SpriteList_Delete(accessoryShop->spriteList);
}

static void AccessoryShop_ActivateMsgBox(AccessoryShop_MessageBox *msgbox, BgConfig *bgConfig, enum HeapId heapID, u32 renderDelay)
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

static void AccessoryShop_DeactivateMsgBox(AccessoryShop_MessageBox *msgbox)
{
    if (msgbox->active == FALSE) {
        return;
    }

    Window_ClearAndCopyToVRAM(msgbox->window);
    Window_Remove(msgbox->window);
    Windows_Delete(msgbox->window, 1);

    msgbox->active = FALSE;
}

static void AccessoryShop_PrintStrbufToMsgBox(AccessoryShop_MessageBox *msgbox, Strbuf *strbuf, enum HeapId heapID)
{
    GF_ASSERT(msgbox->strbuf == NULL);

    Window_FillTilemap(msgbox->window, 15);

    msgbox->strbuf = Strbuf_Clone(strbuf, heapID);
    msgbox->printerID = Text_AddPrinterWithParamsAndColor(msgbox->window, FONT_MESSAGE, msgbox->strbuf, 0, 0, msgbox->renderDelay, TEXT_COLOR(1, 2, 15), NULL);

    Window_CopyToVRAM(msgbox->window);
}

static BOOL AccessoryShop_HasMsgBoxFinishedPrinting(AccessoryShop_MessageBox *msgbox)
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

static void AccessoryShop_LoadConfirmPurchaseMsg(AccessoryShop_MessageBox *msgbox, MessageLoader *msgLoader, enum HeapId heapID, const AccessoryShop_ItemList *itemList, u32 idx)
{
    Strbuf *fmtString, *strbuf;
    StringTemplate *strTemplate;

    strTemplate = StringTemplate_Default(heapID);
    strbuf = Strbuf_Init(200, heapID);
    fmtString = MessageLoader_GetNewStrbuf(msgLoader, pl_msg_00000572_00007);

    if (itemList[idx].totalAmount == 1) {
        StringTemplate_SetItemName(strTemplate, 0, itemList[idx].itemBerryId + FIRST_BERRY_IDX);
    } else {
        StringTemplate_SetItemNamePlural(strTemplate, 0, itemList[idx].itemBerryId + FIRST_BERRY_IDX);
    }

    StringTemplate_SetNumber(strTemplate, 1, itemList[idx].totalAmount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetContestAccessoryName(strTemplate, 2, itemList[idx].accessoryId);
    StringTemplate_Format(strTemplate, strbuf, fmtString);

    AccessoryShop_PrintStrbufToMsgBox(msgbox, strbuf, heapID);

    StringTemplate_Free(strTemplate);
    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void AccessoryShop_LoadSuccessfulPurchaseMsg(AccessoryShop_MessageBox *msgbox, MessageLoader *msgLoader, enum HeapId heapID, const AccessoryShop_ItemList *itemList, u32 idx)
{
    Strbuf *fmtString, *strbuf;
    StringTemplate *strTemplate;

    strTemplate = StringTemplate_Default(heapID);
    strbuf = Strbuf_Init(200, heapID);
    fmtString = MessageLoader_GetNewStrbuf(msgLoader, pl_msg_00000572_00012);

    if (itemList[idx].totalAmount == 1) {
        StringTemplate_SetItemName(strTemplate, 0, itemList[idx].itemBerryId + FIRST_BERRY_IDX);
    } else {
        StringTemplate_SetItemNamePlural(strTemplate, 0, itemList[idx].itemBerryId + FIRST_BERRY_IDX);
    }

    StringTemplate_SetNumber(strTemplate, 1, itemList[idx].totalAmount, 3, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetContestAccessoryName(strTemplate, 2, itemList[idx].accessoryId);
    StringTemplate_Format(strTemplate, strbuf, fmtString);

    AccessoryShop_PrintStrbufToMsgBox(msgbox, strbuf, heapID);

    StringTemplate_Free(strTemplate);
    Strbuf_Free(strbuf);
    Strbuf_Free(fmtString);
}

static void AccessoryShop_ActivateDescBox(AccessoryShop_DescriptionBox *descBox, BgConfig *bgConfig, MessageLoader *msgLoader, enum HeapId heapID)
{
    if (descBox->active == TRUE) {
        return;
    }

    descBox->window = Window_New(heapID, 1);
    Window_Add(bgConfig, descBox->window, BG_LAYER_MAIN_3, 1, 11, 14, 6, FIELD_MESSAGE_PALETTE_INDEX, (((1 + (18 + 12)) + 9) + (27 * 4)));
    descBox->strTemplate = StringTemplate_Default(heapID);

    for (int i = 0; i < 3; i++) {
        descBox->fmtString[i] = MessageLoader_GetNewStrbuf(msgLoader, pl_msg_00000572_00016 + i);
    }

    descBox->strbuf = Strbuf_Init(32, heapID);
    Window_FillTilemap(descBox->window, 15);
    descBox->active = TRUE;
}

static void AccessoryShop_DeactivateDescBox(AccessoryShop_DescriptionBox *descBox)
{
    if (descBox->active == FALSE) {
        return;
    }

    for (int i = 0; i < 3; i++) {
        Strbuf_Free(descBox->fmtString[i]);
    }

    Strbuf_Free(descBox->strbuf);
    StringTemplate_Free(descBox->strTemplate);
    Window_ClearAndCopyToVRAM(descBox->window);
    Window_Remove(descBox->window);
    Windows_Delete(descBox->window, 1);

    descBox->active = FALSE;
}

static void AccessoryShop_UpdateDescBox(AccessoryShop_DescriptionBox *descBox, u32 berryId, u32 totalAmount, u32 inBagAmount)
{
    StringTemplate_SetItemName(descBox->strTemplate, 0, berryId + FIRST_BERRY_IDX);
    StringTemplate_SetNumber(descBox->strTemplate, 1, totalAmount, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_SetNumber(descBox->strTemplate, 2, inBagAmount, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    Window_FillTilemap(descBox->window, 15);

    for (int i = 0; i < 3; i++) {
        StringTemplate_Format(descBox->strTemplate, descBox->strbuf, descBox->fmtString[i]);
        Text_AddPrinterWithParamsAndColor(descBox->window, FONT_SYSTEM, descBox->strbuf, 0, 16 * i, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 15), NULL);
    }

    Window_DrawStandardFrame(descBox->window, FALSE, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX);
}

static void AccessoryShop_ActivateItemListMenu(AccessoryShop_ItemListMenu *itemListMenu, BgConfig *bgConfig, enum HeapId heapID, const AccessoryShop_ItemList *itemList, u32 maxItem, MessageLoader *msgLoader, void *param6, AccessoryShop_UpdateFunc updateFunc, SpriteList *spriteList)
{
    int i;
    Strbuf *fmtString;
    SpriteResourcesHeader scrollArrowResource;
    SpriteListTemplate scrollArrowCellParams;
    static const u8 yPos[2] = {
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

    if (itemListMenu->active == TRUE) {
        return;
    }

    itemListMenu->active = TRUE;
    itemListMenu->maxListItems = maxItem + 1;
    itemListMenu->unk_130 = param6;
    itemListMenu->updateFunc = updateFunc;
    itemListMenu->window = Window_New(heapID, 1);

    Window_Add(bgConfig, itemListMenu->window, BG_LAYER_MAIN_3, 17, 1, 14, 16, FIELD_MESSAGE_PALETTE_INDEX, ((((1 + (18 + 12)) + 9) + (27 * 4)) + (14 * 6)));

    itemListMenu->strTemplate = StringTemplate_Default(heapID);
    itemListMenu->tempStrbuf = Strbuf_Init(32, heapID);

    fmtString = MessageLoader_GetNewStrbuf(msgLoader, pl_msg_00000572_00016);

    for (i = 0; i < maxItem; i++) {
        StringTemplate_SetContestAccessoryName(itemListMenu->strTemplate, 0, itemList[i].accessoryId);
        StringTemplate_Format(itemListMenu->strTemplate, itemListMenu->tempStrbuf, fmtString);

        itemListMenu->strbuf[i] = Strbuf_Clone(itemListMenu->tempStrbuf, heapID);
        itemListMenu->strList[i].entry = itemListMenu->strbuf[i];
        itemListMenu->strList[i].index = i;
    }

    itemListMenu->strbuf[maxItem] = MessageLoader_GetNewStrbuf(msgLoader, pl_msg_00000572_00019);
    itemListMenu->strList[maxItem].entry = itemListMenu->strbuf[maxItem];
    itemListMenu->strList[maxItem].index = maxItem;

    StringTemplate_Free(itemListMenu->strTemplate);
    Strbuf_Free(itemListMenu->tempStrbuf);
    Strbuf_Free(fmtString);

    listTemplate.window = itemListMenu->window;
    listTemplate.count = itemListMenu->maxListItems;
    listTemplate.choices = itemListMenu->strList;

    itemListMenu->listMenu = ListMenu_New(&listTemplate, 0, 0, heapID);

    Window_DrawStandardFrame(itemListMenu->window, FALSE, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX);

    for (i = 0; i < 4; i++) {
        itemListMenu->spriteResCollections[i] = SpriteResourceCollection_New(1, i, heapID);
    }

    AccessoryShop_LoadScrollArrowGfx(&scrollArrowResource, itemListMenu, heapID);

    scrollArrowCellParams.list = spriteList;
    scrollArrowCellParams.resourceData = &scrollArrowResource;
    scrollArrowCellParams.priority = 0;
    scrollArrowCellParams.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    scrollArrowCellParams.heapID = heapID;
    scrollArrowCellParams.position.x = 192 * FX32_ONE;

    for (i = 0; i < ACCESSORY_SHOP_SPRITE_COUNT; i++) {
        scrollArrowCellParams.position.y = yPos[i] * FX32_ONE;
        itemListMenu->sprites[i] = SpriteList_Add(&scrollArrowCellParams);

        Sprite_SetAnim(itemListMenu->sprites[i], i);
        Sprite_SetAnimateFlag(itemListMenu->sprites[i], TRUE);
    }
}

static void AccessoryShop_DeactivateItemListMenu(AccessoryShop_ItemListMenu *itemListMenu)
{
    int i;

    if (itemListMenu->active == FALSE) {
        return;
    }

    for (i = 0; i < ACCESSORY_SHOP_SPRITE_COUNT; i++) {
        Sprite_Delete(itemListMenu->sprites[i]);
    }

    AccessoryShop_UnloadScrollArrowGfx(itemListMenu);

    for (i = 0; i < itemListMenu->maxListItems; i++) {
        Strbuf_Free(itemListMenu->strbuf[i]);
    }

    ListMenu_Free(itemListMenu->listMenu, NULL, NULL);
    Window_ClearAndCopyToVRAM(itemListMenu->window);
    Window_Remove(itemListMenu->window);
    Windows_Delete(itemListMenu->window, 1);

    itemListMenu->active = TRUE; // a mistake?
}

static u32 AccessoryShop_SelectItemListMenu(AccessoryShop_ItemListMenu *itemListMenu)
{
    u32 input;
    u16 cursorPos;

    input = ListMenu_ProcessInput(itemListMenu->listMenu);

    if (input == LIST_NOTHING_CHOSEN) {
        ListMenu_CalcTrueCursorPos(itemListMenu->listMenu, &cursorPos);

        if (itemListMenu->cursorPos != cursorPos) {
            itemListMenu->cursorPos = cursorPos;
            itemListMenu->updateFunc(itemListMenu->unk_130, itemListMenu->cursorPos);

            Sound_PlayEffect(SEQ_SE_CONFIRM);
            AccessoryShop_UpdateScrollArrowDrawFlag(itemListMenu);
        }
    } else if (input != LIST_CANCEL) {
        if (itemListMenu->cursorPos == (itemListMenu->maxListItems - 1)) {
            input = LIST_CANCEL;
        }
    }

    return input;
}

static void AccessoryShop_UpdateItemListMenu(AccessoryShop_ItemListMenu *itemListMenu)
{
    itemListMenu->updateFunc(itemListMenu->unk_130, itemListMenu->cursorPos);

    Window_DrawStandardFrame(itemListMenu->window, FALSE, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX);
    AccessoryShop_UpdateScrollArrowDrawFlag(itemListMenu);
}

static void AccessoryShop_HideScrollArrows(AccessoryShop_ItemListMenu *itemListMenu)
{
    Sprite_SetDrawFlag(itemListMenu->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_TOP], FALSE);
    Sprite_SetDrawFlag(itemListMenu->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_BOTTOM], FALSE);
}

static void AccessoryShop_LoadScrollArrowGfx(SpriteResourcesHeader *scrollArrowResource, AccessoryShop_ItemListMenu *itemListMenu, enum HeapId heapID)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__SHOP_GRA, heapID);

    itemListMenu->spriteResources[ACCESSORY_SHOP_RES_IDX_TILES] = SpriteResourceCollection_AddTilesFrom(itemListMenu->spriteResCollections[ACCESSORY_SHOP_RES_IDX_TILES], narc, scroll_arrow_NCGR, FALSE, 5000, NNS_G2D_VRAM_TYPE_2DMAIN, heapID);
    itemListMenu->spriteResources[ACCESSORY_SHOP_RES_IDX_PALETTE] = SpriteResourceCollection_AddPaletteFrom(itemListMenu->spriteResCollections[ACCESSORY_SHOP_RES_IDX_PALETTE], narc, sprites_NCLR, FALSE, 5000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, heapID);
    itemListMenu->spriteResources[ACCESSORY_SHOP_RES_IDX_CELL] = SpriteResourceCollection_AddFrom(itemListMenu->spriteResCollections[ACCESSORY_SHOP_RES_IDX_CELL], narc, scroll_arrow_cell_NCER, FALSE, 5000, 2, heapID);
    itemListMenu->spriteResources[ACCESSORY_SHOP_RES_IDX_ANIM] = SpriteResourceCollection_AddFrom(itemListMenu->spriteResCollections[ACCESSORY_SHOP_RES_IDX_ANIM], narc, scroll_arrow_anim_NANR, FALSE, 5000, 3, heapID);

    NARC_dtor(narc);
    SpriteTransfer_RequestCharAtEnd(itemListMenu->spriteResources[ACCESSORY_SHOP_RES_IDX_TILES]);
    SpriteTransfer_RequestPlttFreeSpace(itemListMenu->spriteResources[ACCESSORY_SHOP_RES_IDX_PALETTE]);
    SpriteResourcesHeader_Init(scrollArrowResource, 5000, 5000, 5000, 5000, -1, -1, 0, 0, itemListMenu->spriteResCollections[ACCESSORY_SHOP_RES_IDX_TILES], itemListMenu->spriteResCollections[ACCESSORY_SHOP_RES_IDX_PALETTE], itemListMenu->spriteResCollections[ACCESSORY_SHOP_RES_IDX_CELL], itemListMenu->spriteResCollections[ACCESSORY_SHOP_RES_IDX_ANIM], NULL, NULL);
}

static void AccessoryShop_UnloadScrollArrowGfx(AccessoryShop_ItemListMenu *itemListMenu)
{
    SpriteTransfer_ResetCharTransfer(itemListMenu->spriteResources[ACCESSORY_SHOP_RES_IDX_TILES]);
    SpriteTransfer_ResetPlttTransfer(itemListMenu->spriteResources[ACCESSORY_SHOP_RES_IDX_PALETTE]);

    for (int i = 0; i < 4; i++) {
        SpriteResourceCollection_Delete(itemListMenu->spriteResCollections[i]);
    }
}

static void AccessoryShop_UpdateScrollArrowDrawFlag(AccessoryShop_ItemListMenu *itemListMenu)
{
    u16 listPos;

    ListMenu_GetListAndCursorPos(itemListMenu->listMenu, &listPos, NULL);

    if (listPos <= 0) {
        Sprite_SetDrawFlag(itemListMenu->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_TOP], FALSE);
    } else {
        Sprite_SetDrawFlag(itemListMenu->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_TOP], TRUE);
    }

    if (listPos >= (itemListMenu->maxListItems - MAX_ITEM_SHOWN)) {
        Sprite_SetDrawFlag(itemListMenu->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_BOTTOM], FALSE);
    } else {
        Sprite_SetDrawFlag(itemListMenu->sprites[ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_BOTTOM], TRUE);
    }
}

static void AccessoryShop_SetDataPointers(AccessoryShop_DataPointers *dataPtr, AccessoryShop_DescriptionBox *descBox, const AccessoryShop_ItemList *itemList, Bag *bag, enum HeapId heapID, BgConfig *bgConfig)
{
    dataPtr->bgConfig = bgConfig;
    dataPtr->descBox = descBox;
    dataPtr->itemList = itemList;
    dataPtr->bag = bag;
    dataPtr->heapID = heapID;
}

static void AccessoryShop_Update(void *ptr, u32 cursorPos)
{
    AccessoryShop_DataPointers *dataPtr = ptr;
    u32 inBagAmount;

    if (cursorPos < ACCESSORY_SHOP_ITEM_LIST_COUNT) {
        inBagAmount = Bag_GetItemQuantity(dataPtr->bag, dataPtr->itemList[cursorPos].itemBerryId + FIRST_BERRY_IDX, dataPtr->heapID);
        AccessoryShop_UpdateDescBox(dataPtr->descBox, dataPtr->itemList[cursorPos].itemBerryId, dataPtr->itemList[cursorPos].totalAmount, inBagAmount);
    } else {
        Bg_FillTilemapRect(dataPtr->bgConfig, BG_LAYER_MAIN_3, 0, 0, 10, 16, 8, 17);
        Bg_CopyTilemapBufferToVRAM(dataPtr->bgConfig, BG_LAYER_MAIN_3);
    }
}

static void AccessoryShop_ActivateYesNoChoice(AccessoryShop_YesNoChoice *yesNoChoice, BgConfig *bgConfig, enum HeapId heapID)
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

    yesNoChoice->yesNoChoice = Menu_MakeYesNoChoice(bgConfig, &winTemplate, (1 + (18 + 12)), FIELD_WINDOW_PALETTE_INDEX, heapID);
    yesNoChoice->heapID = heapID;
    yesNoChoice->active = TRUE;
}

static void AccessoryShop_DeactivateYesNoChoice(AccessoryShop_YesNoChoice *yesNoChoice)
{
    if (yesNoChoice->active == FALSE) {
        return;
    }

    yesNoChoice->active = FALSE;
}

static u32 AccessoryShop_SelectYesNoChoice(AccessoryShop_YesNoChoice *yesNoChoice)
{
    return Menu_ProcessInputAndHandleExit(yesNoChoice->yesNoChoice, yesNoChoice->heapID);
}

static BOOL AccessoryShop_HasAllAccessories(const UnkStruct_02029D04 *param0, const AccessoryShop_ItemList *itemList, u32 maxItem)
{
    for (int i = 0; i < maxItem; i++) {
        if (sub_02029D50(param0, itemList[i].accessoryId, 1) == TRUE) {
            return FALSE;
        }
    }

    return TRUE;
}

static BOOL AccessoryShop_HasEnoughBerries(Bag *bag, const AccessoryShop_ItemList *itemList, u32 idx, enum HeapId heapID)
{
    u32 inBagAmount = Bag_GetItemQuantity(bag, itemList[idx].itemBerryId + FIRST_BERRY_IDX, heapID);

    if (inBagAmount >= itemList[idx].totalAmount) {
        return TRUE;
    }

    return FALSE;
}

static BOOL ov7_0224CCE4(const UnkStruct_02029D04 *param0, const AccessoryShop_ItemList *itemList, u32 idx)
{
    return sub_02029D50(param0, itemList[idx].accessoryId, 1);
}

static void AccessoryShop_DoPurchase(UnkStruct_02029D04 *param0, Bag *bag, const AccessoryShop_ItemList *itemList, u32 idx, enum HeapId heapID)
{
    u32 accessoryId = itemList[idx].accessoryId;
    u32 itemId = itemList[idx].itemBerryId + FIRST_BERRY_IDX;
    u32 count = itemList[idx].totalAmount;
    BOOL res;

    sub_02029E2C(param0, accessoryId, 1);
    res = Bag_TryRemoveItem(bag, itemId, count, heapID);

    GF_ASSERT(res == TRUE);
}
