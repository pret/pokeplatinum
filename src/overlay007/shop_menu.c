#include "overlay007/shop_menu.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/window.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/map_object.h"
#include "generated/game_records.h"

#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay005/sprite_resource_manager.h"

#include "bag.h"
#include "bag_context.h"
#include "bg_window.h"
#include "camera.h"
#include "field_message.h"
#include "field_task.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "game_records.h"
#include "goods.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "items.h"
#include "journal.h"
#include "list_menu.h"
#include "map_header.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "player_avatar.h"
#include "render_window.h"
#include "save_player.h"
#include "screen_fade.h"
#include "shop_misc.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_system.h"
#include "sprite_transfer.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "system_vars.h"
#include "text.h"
#include "trainer_info.h"
#include "tv_episode_segment.h"
#include "underground.h"
#include "unk_0202C9F4.h"
#include "unk_0202D05C.h"
#include "unk_0203D1B8.h"
#include "unk_0208C098.h"
#include "unk_02097B18.h"
#include "vars_flags.h"

#include "res/graphics/shop_menu/shop_gra.naix"
#include "res/text/bank/location_names.h"
#include "res/text/bank/underground_goods.h"
#include "res/text/bank/unk_0543.h"

#define UNDERGROUND_GOOD_DESCRIPTIONS_START UndergroundGoods_Text_CloseDescription

static u8 Shop_GetCameraPosDest(FieldSystem *fieldSystem);
static u8 Shop_Exit(FieldSystem *fieldSystem, ShopMenu *shopMenu);
static void Shop_ShowContextMenu(ShopMenu *shopMenu);
static void Shop_InitStringUtil(ShopMenu *shopMenu);
static void Shop_InitContextMenu(ShopMenu *shopMenu);
static u8 Shop_SelectContextMenu(ShopMenu *shopMenu);
static void Shop_CloseContextMenu(ShopMenu *shopMenu);
static void Shop_InitCamera(FieldSystem *fieldSystem, ShopMenu *shopMenu);
static void Shop_LoadWindows(ShopMenu *shopMenu);
static void Shop_LoadGraphics(ShopMenu *shopMenu);
static u8 Shop_MoveCamera(ShopMenu *shopMenu);
static u8 Shop_SelectBuyMenu(ShopMenu *shopMenu);
static u8 Shop_MoveCameraBack(FieldSystem *fieldSystem, ShopMenu *shopMenu);
static void Shop_InitItemsList(ShopMenu *shopMenu);
static void Shop_MenuCursorCallback(ListMenu *menu, u32 index, u8 onInit);
static void Shop_MenuPrintCallback(ListMenu *menu, u32 index, u8 yOffset);
static void Shop_PrintCurrentMoney(ShopMenu *shopMenu, u8 clearCurrMoney);
static u8 Shop_ShowPurchaseMenu(ShopMenu *shopMenu);
static u8 Shop_SelectPurchaseMenu(ShopMenu *shopMenu);
static void Shop_ShowQtyTotalItemPurchase(ShopMenu *shopMenu, u8 dontDrawFrame);
static void Shop_ShowQtyWithinInventory(ShopMenu *shopMenu);
static u8 Shop_FinishPurchase(ShopMenu *shopMenu);
static u8 Shop_FinishFreePremierBall(ShopMenu *shopMenu);
static u8 Shop_ShowConfirmPurchase(ShopMenu *shopMenu);
static u8 Shop_SelectConfirmPurchase(ShopMenu *shopMenu);
static u8 Shop_ConfirmItemPurchase(ShopMenu *shopMenu);
static u8 Shop_ReinitContextMenu(ShopMenu *shopMenu);
static void Shop_PrintExit(FieldSystem *fieldSystem, ShopMenu *shopMenu);
static void Shop_StartScreenFade(FieldSystem *fieldSystem, ShopMenu *shopMenu);
static void Shop_FinishScreenTransition(FieldTask *task);
static u8 Shop_ReinitMerchantMessage(FieldSystem *fieldSystem, ShopMenu *shopMenu);
static void Shop_DrawSprites(ShopMenu *shopMenu);
static void Shop_DestroySprites(ShopMenu *shopMenu);
static void Shop_SetScrollSpritesPositionXY(ShopMenu *shopMenu, u8 isBuyingItem);
static void Shop_ChangeItemIconGfx(ShopMenu *shopMenu, u16 itemId);
static void Shop_SetCursorSpritePalette(ShopMenu *shopMenu, u8 selected);
static u8 Shop_ShowPurchaseMessage(ShopMenu *shopMenu);
static void Shop_SetItemNameToIndex(ShopMenu *shopMenu, u16 itemId, u16 idx);
static u32 Shop_GetItemPrice(ShopMenu *shopMenu, u16 itemId);
static u16 Shop_GetItemBPPrice(ShopMenu *shopMenu, u16 itemId);
static u32 Shop_GetCurrentMoney(ShopMenu *shopMenu);
static void Shop_TakeMoney(ShopMenu *shopMenu, u32 amount);

static const WindowTemplate sShop_DefaultWindowTemplates[] = {
    [SHOP_WINDOW_ITEM_LIST] = {
        .bgLayer = BG_LAYER_MAIN_2,
        .tilemapLeft = 12,
        .tilemapTop = 2,
        .width = 19,
        .height = 14,
        .palette = FIELD_MESSAGE_PALETTE_INDEX,
        .baseTile = 0x1,
    },
    [SHOP_WINDOW_ITEM_DESCRIPTION] = {
        .bgLayer = BG_LAYER_MAIN_2,
        .tilemapLeft = 5,
        .tilemapTop = 18,
        .width = 27,
        .height = 6,
        .palette = FIELD_MESSAGE_PALETTE_INDEX,
        .baseTile = 0x10B,
    },
    [SHOP_WINDOW_CURRENT_MONEY] = {
        .bgLayer = BG_LAYER_MAIN_3,
        .tilemapLeft = 1,
        .tilemapTop = 1,
        .width = 9,
        .height = 4,
        .palette = FIELD_MESSAGE_PALETTE_INDEX,
        .baseTile = 0x28,
    },
    [SHOP_WINDOW_QUANTITY_TOTAL_PRICE] = {
        .bgLayer = BG_LAYER_MAIN_3,
        .tilemapLeft = 19,
        .tilemapTop = 13,
        .width = 12,
        .height = 4,
        .palette = FIELD_MESSAGE_PALETTE_INDEX,
        .baseTile = 0x4C,
    },
    [SHOP_WINDOW_ITEMS_IN_BAG] = {
        .bgLayer = BG_LAYER_MAIN_3,
        .tilemapLeft = 1,
        .tilemapTop = 15,
        .width = 14,
        .height = 2,
        .palette = FIELD_MESSAGE_PALETTE_INDEX,
        .baseTile = 0x7C,
    },
    [SHOP_WINDOW_MESSAGE] = {
        .bgLayer = BG_LAYER_MAIN_3,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = 4,
        .palette = 12,
        .baseTile = 0x98,
    },
};

static const WindowTemplate sShop_NormalItemDescWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_2,
    .tilemapLeft = 1,
    .tilemapTop = 18,
    .width = 27,
    .height = 6,
    .palette = FIELD_MESSAGE_PALETTE_INDEX,
    .baseTile = 0x10B
};

static const WindowTemplate sShop_YesNoChoiceWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 23,
    .tilemapTop = 13,
    .width = 7,
    .height = 4,
    .palette = FIELD_MESSAGE_PALETTE_INDEX,
    .baseTile = 0x104
};

static const u8 sShop_BagPockets[] = {
    POCKET_ITEMS,
    POCKET_MEDICINE,
    POCKET_BALLS,
    POCKET_TMHMS,
    POCKET_BERRIES,
    POCKET_MAIL,
    POCKET_BATTLE_ITEMS,
    POCKET_KEY_ITEMS,
    -1
};

static const WindowTemplate sShop_FrontierCurrMoneyWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 1,
    .tilemapTop = 1,
    .width = 9,
    .height = 2,
    .palette = FIELD_MESSAGE_PALETTE_INDEX,
    .baseTile = 0x28
};

static void Shop_SetItemsForSale(ShopMenu *shopMenu, u16 *itemsPtr)
{
    u16 i;

    for (i = 0; i < MAX_SHOP_ITEMS; i++) {
        if (itemsPtr[i] == SHOP_ITEM_END) {
            break;
        }
    }

    shopMenu->itemsCount = i;
    shopMenu->itemsPtr = Heap_Alloc(HEAP_ID_FIELD2, shopMenu->itemsCount * sizeof(u16));

    for (i = 0; i < shopMenu->itemsCount; i++) {
        shopMenu->itemsPtr[i] = itemsPtr[i];
    }
}

static ShopMenu *Shop_Alloc(void)
{
    ShopMenu *shopMenu = Heap_Alloc(HEAP_ID_FIELD2, sizeof(ShopMenu));

    memset(shopMenu, 0, sizeof(ShopMenu));
    return shopMenu;
}

void Shop_Start(FieldTask *task, FieldSystem *fieldSystem, u16 *shopItems, u8 martType, BOOL incBuyCount)
{
    ShopMenu *shopMenu = Shop_Alloc();

    shopMenu->bgConfig = fieldSystem->bgConfig;

    shopMenu->string = String_Init(96, HEAP_ID_FIELD2);
    shopMenu->trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    shopMenu->options = SaveData_GetOptions(fieldSystem->saveData);
    shopMenu->records = SaveData_GetGameRecords(fieldSystem->saveData);
    shopMenu->varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    shopMenu->incBuyCount = incBuyCount;
    shopMenu->cameraPosDest = Shop_GetCameraPosDest(fieldSystem);
    shopMenu->journalEntry = fieldSystem->journalEntry;
    shopMenu->martType = martType;
    shopMenu->saveData = fieldSystem->saveData;
    shopMenu->unk_2B4 = FontSpecialChars_Init(1, 2, 0, HEAP_ID_FIELD2);

    if (shopMenu->martType == MART_TYPE_NORMAL) {
        shopMenu->destInventory = SaveData_GetBag(fieldSystem->saveData);
    } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
        shopMenu->destInventory = SaveData_GetBag(fieldSystem->saveData);
    } else if (shopMenu->martType == MART_TYPE_DECOR) {
        shopMenu->destInventory = SaveData_GetUnderground(fieldSystem->saveData);
    } else {
        shopMenu->destInventory = SaveData_GetSealCase(fieldSystem->saveData);
    }

    Shop_SetItemsForSale(shopMenu, shopItems);
    FieldTask_InitCall(task, FieldTask_InitShop, shopMenu);
}

static u8 Shop_GetCameraPosDest(FieldSystem *fieldSystem)
{
    int dir = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    if ((dir == DIR_NORTH) || (dir == DIR_SOUTH) || (dir == DIR_EAST)) {
        return 10;
    }

    return 8;
}

BOOL FieldTask_InitShop(FieldTask *task)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(task);
    ShopMenu *shopMenu = FieldTask_GetEnv(task);

    switch (shopMenu->state) {
    case SHOP_STATE_SHOW_CONTEXT_MENU:
        Shop_ShowContextMenu(shopMenu);
        shopMenu->state = SHOP_STATE_SELECT_CONTEXT_MENU;
        break;
    case SHOP_STATE_SELECT_CONTEXT_MENU:
        shopMenu->state = Shop_SelectContextMenu(shopMenu);
        break;
    case SHOP_STATE_INIT_CAMERA:
        Shop_InitCamera(fieldSystem, shopMenu);
        shopMenu->state = SHOP_STATE_MOVE_CAMERA;
        break;
    case SHOP_STATE_MOVE_CAMERA:
        shopMenu->state = Shop_MoveCamera(shopMenu);
        break;
    case SHOP_STATE_SELECT_BUY_MENU:
        shopMenu->state = Shop_SelectBuyMenu(shopMenu);
        break;
    case SHOP_STATE_SHOW_PURCHASE_MENU:
        shopMenu->state = Shop_ShowPurchaseMenu(shopMenu);
        break;
    case SHOP_STATE_SELECT_PURCHASE_MENU:
        shopMenu->state = Shop_SelectPurchaseMenu(shopMenu);
        break;
    case SHOP_STATE_SHOW_CONFIRM_PURCHASE:
        shopMenu->state = Shop_ShowConfirmPurchase(shopMenu);
        break;
    case SHOP_STATE_SELECT_CONFIRM_PURCHASE:
        shopMenu->state = Shop_SelectConfirmPurchase(shopMenu);
        break;
    case SHOP_STATE_CONFIRM_PURCHASE:
        shopMenu->state = Shop_ConfirmItemPurchase(shopMenu);
        break;
    case SHOP_STATE_FINISH_PURCHASE:
        shopMenu->state = Shop_FinishPurchase(shopMenu);
        break;
    case SHOP_STATE_FINISH_FREE_PREMIER:
        shopMenu->state = Shop_FinishFreePremierBall(shopMenu);
        break;
    case SHOP_STATE_MOVE_CAMERA_BACK:
        shopMenu->state = Shop_MoveCameraBack(fieldSystem, shopMenu);
        break;
    case SHOP_STATE_REINIT_CONTEXT_MENU:
        shopMenu->state = Shop_ReinitContextMenu(shopMenu);
        break;
    case SHOP_STATE_START_SCREEN_TRANSITION:
        Shop_StartScreenFade(fieldSystem, shopMenu);
        break;
    case SHOP_STATE_WAIT_SCREEN_TRANSITION:
        Shop_FinishScreenTransition(task);
        break;
    case SHOP_STATE_REINIT_FIELD_MAP:
    case SHOP_STATE_REINIT_SHOP:
        break;
    case SHOP_STATE_REINIT_MERCHANT_MESSAGE:
        shopMenu->state = Shop_ReinitMerchantMessage(fieldSystem, shopMenu);
        break;
    case SHOP_STATE_SHOW_EXIT_MESSAGE:
        Shop_PrintExit(fieldSystem, shopMenu);
        shopMenu->state = SHOP_STATE_EXIT;
        break;
    case SHOP_STATE_EXIT:
        return Shop_Exit(fieldSystem, shopMenu);
    }

    if ((shopMenu->state >= SHOP_STATE_SELECT_BUY_MENU) && (shopMenu->state <= SHOP_STATE_FINISH_FREE_PREMIER)) {
        Sprite_UpdateAnim(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], FX32_ONE);
        Sprite_UpdateAnim(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], FX32_ONE);
        SpriteList_Update(shopMenu->spriteManager.spriteList);
    }

    return FALSE;
}

static void Shop_ShowContextMenu(ShopMenu *shopMenu)
{
    Shop_InitStringUtil(shopMenu);
    Shop_InitContextMenu(shopMenu);
}

static void Shop_InitStringUtil(ShopMenu *shopMenu)
{
    shopMenu->msgLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0543, HEAP_ID_FIELD2);
    shopMenu->strTemplate = StringTemplate_Default(HEAP_ID_FIELD2);
}

static void Shop_InitContextMenu(ShopMenu *shopMenu)
{
    MenuTemplate menuTemplate;
    u8 maxOptions;

    if (shopMenu->martType == MART_TYPE_NORMAL) {
        maxOptions = 3;
        shopMenu->optionsList = StringList_New(maxOptions, HEAP_ID_FIELD2);

        StringList_AddFromMessageBank(shopMenu->optionsList, shopMenu->msgLoader, pl_msg_00000543_00015, SHOP_STATE_INIT_CAMERA);
        StringList_AddFromMessageBank(shopMenu->optionsList, shopMenu->msgLoader, pl_msg_00000543_00016, 14);
        StringList_AddFromMessageBank(shopMenu->optionsList, shopMenu->msgLoader, pl_msg_00000543_00017, LIST_CANCEL);
        Window_Add(shopMenu->bgConfig, &shopMenu->windows[0], BG_LAYER_MAIN_3, 1, 1, 13, 6, FIELD_MESSAGE_PALETTE_INDEX, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (13 * 6));
    } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
        maxOptions = 2;
        shopMenu->optionsList = StringList_New(maxOptions, HEAP_ID_FIELD2);

        StringList_AddFromMessageBank(shopMenu->optionsList, shopMenu->msgLoader, pl_msg_00000543_00029, SHOP_STATE_INIT_CAMERA);
        StringList_AddFromMessageBank(shopMenu->optionsList, shopMenu->msgLoader, pl_msg_00000543_00030, LIST_CANCEL);
        Window_Add(shopMenu->bgConfig, &shopMenu->windows[0], BG_LAYER_MAIN_3, 23, 13, 7, 4, FIELD_MESSAGE_PALETTE_INDEX, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (13 * 6));
    } else {
        maxOptions = 2;
        shopMenu->optionsList = StringList_New(maxOptions, HEAP_ID_FIELD2);

        StringList_AddFromMessageBank(shopMenu->optionsList, shopMenu->msgLoader, pl_msg_00000543_00015, SHOP_STATE_INIT_CAMERA);
        StringList_AddFromMessageBank(shopMenu->optionsList, shopMenu->msgLoader, pl_msg_00000543_00017, LIST_CANCEL);
        Window_Add(shopMenu->bgConfig, &shopMenu->windows[0], BG_LAYER_MAIN_3, 1, 1, 13, 4, 13, (((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (13 * 6));
    }

    menuTemplate.choices = shopMenu->optionsList;
    menuTemplate.window = &shopMenu->windows[0];
    menuTemplate.fontID = FONT_SYSTEM;
    menuTemplate.xSize = 1;
    menuTemplate.ySize = maxOptions;
    menuTemplate.lineSpacing = 0;
    menuTemplate.suppressCursor = FALSE;
    menuTemplate.loopAround = FALSE;

    LoadStandardWindowGraphics(shopMenu->bgConfig, BG_LAYER_MAIN_3, 1024 - (18 + 12) - 9, FIELD_WINDOW_PALETTE_INDEX, 0, HEAP_ID_FIELD2);
    Window_DrawStandardFrame(&shopMenu->windows[0], TRUE, 1024 - (18 + 12) - 9, FIELD_WINDOW_PALETTE_INDEX);

    shopMenu->choiceMenu = Menu_NewAndCopyToVRAM(&menuTemplate, 8, 0, 0, HEAP_ID_FIELD2, PAD_BUTTON_B);
}

static u8 Shop_SelectContextMenu(ShopMenu *shopMenu)
{
    u32 input = Menu_ProcessInput(shopMenu->choiceMenu);

    switch (input) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCELED:
        Shop_CloseContextMenu(shopMenu);
        return SHOP_STATE_SHOW_EXIT_MESSAGE;
    default:
        return input;
    }

    return TRUE;
}

static void Shop_CloseContextMenu(ShopMenu *shopMenu)
{
    Window_EraseStandardFrame(&shopMenu->windows[0], TRUE);
    Window_ClearAndCopyToVRAM(&shopMenu->windows[0]);
    Menu_Free(shopMenu->choiceMenu, NULL);
    StringList_Free(shopMenu->optionsList);
    Window_Remove(&shopMenu->windows[0]);
}

static u8 Shop_Exit(FieldSystem *fieldSystem, ShopMenu *shopMenu)
{
    if (FieldMessage_FinishedPrinting(shopMenu->fieldMsgPrinterId) == FALSE) {
        return FALSE;
    }

    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        void *journalEntryLocationEvent;

        Window_EraseMessageBox(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION], FALSE);
        Window_Remove(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION]);
        MessageLoader_Free(shopMenu->msgLoader);
        StringTemplate_Free(shopMenu->strTemplate);
        String_Free(shopMenu->string);

        if (shopMenu->martType == MART_TYPE_NORMAL && MapHeader_GetMapLabelTextID(fieldSystem->location->mapId) != LocationNames_Text_VeilstoneStore
            && fieldSystem->location->mapId != MAP_HEADER_ETERNA_CITY_HERB_SHOP
            && fieldSystem->location->mapId != MAP_HEADER_CELESTIC_TOWN_NORTHWEST_HOUSE) {
            if (shopMenu->itemPurchaseCount != 0 && shopMenu->itemSoldCount != 0) {
                journalEntryLocationEvent = JournalEntry_CreateEventBusinessAtMart(HEAP_ID_FIELD2);
                JournalEntry_SaveData(shopMenu->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            } else if (shopMenu->itemPurchaseCount > 1) {
                journalEntryLocationEvent = JournalEntry_CreateEventLotsOfShopping(HEAP_ID_FIELD2);
                JournalEntry_SaveData(shopMenu->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            } else if (shopMenu->itemSoldCount > 1) {
                journalEntryLocationEvent = JournalEntry_CreateEventSoldALot(HEAP_ID_FIELD2);
                JournalEntry_SaveData(shopMenu->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            } else if (shopMenu->itemPurchaseCount != 0) {
                journalEntryLocationEvent = JournalEntry_CreateEventShoppedAtMart(HEAP_ID_FIELD2);
                JournalEntry_SaveData(shopMenu->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            } else if (shopMenu->itemSoldCount != 0) {
                journalEntryLocationEvent = JournalEntry_CreateEventSoldALittle(HEAP_ID_FIELD2);
                JournalEntry_SaveData(shopMenu->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            }
        }

        FontSpecialChars_Free(shopMenu->unk_2B4);
        Heap_Free(shopMenu->itemsPtr);
        Heap_Free(shopMenu);

        return TRUE;
    }

    return FALSE;
}

static void Shop_InitCamera(FieldSystem *fieldSystem, ShopMenu *shopMenu)
{
    Bg_FillTilemapRect(shopMenu->bgConfig, BG_LAYER_MAIN_3, 0, 0, 18, 32, 6, 0);

    Shop_CloseContextMenu(shopMenu);
    Shop_LoadWindows(shopMenu);

    shopMenu->camera = Camera_Alloc(HEAP_ID_FIELD2);

    Camera_Copy(fieldSystem->camera, shopMenu->camera);
    Camera_SetAsActive(shopMenu->camera);

    shopMenu->cameraPosCurr = 0;
}

static void Shop_LoadWindows(ShopMenu *shopMenu)
{
    for (u32 i = 0; i < SHOP_WINDOW_MAX; i++) {
        if ((shopMenu->martType != MART_TYPE_NORMAL) && (shopMenu->martType != MART_TYPE_FRONTIER) && (i == SHOP_WINDOW_ITEM_DESCRIPTION)) {
            Window_AddFromTemplate(shopMenu->bgConfig, &shopMenu->windows[i], &sShop_NormalItemDescWindowTemplate);
        } else if ((shopMenu->martType == MART_TYPE_FRONTIER) && (i == SHOP_WINDOW_CURRENT_MONEY)) {
            Window_AddFromTemplate(shopMenu->bgConfig, &shopMenu->windows[i], &sShop_FrontierCurrMoneyWindowTemplate);
        } else {
            Window_AddFromTemplate(shopMenu->bgConfig, &shopMenu->windows[i], &sShop_DefaultWindowTemplates[i]);
        }
    }
}

static void Shop_DestroyStaticWindows(ShopMenu *shopMenu)
{
    Window_EraseStandardFrame(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], TRUE);

    for (u32 i = 0; i < SHOP_WINDOW_MAX; i++) {
        Window_ClearAndCopyToVRAM(&shopMenu->windows[i]);
        Window_Remove(&shopMenu->windows[i]);
    }
}

static void Shop_LoadGraphics(ShopMenu *shopMenu)
{
    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__SHOP_GRA, HEAP_ID_FIELD2);

    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, tiles_NCGR, shopMenu->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_FIELD2);

    if ((shopMenu->martType == MART_TYPE_NORMAL) || (shopMenu->martType == MART_TYPE_FRONTIER)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, tilemap_NSCR, shopMenu->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_FIELD2);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, tilemap_no_item_NSCR, shopMenu->bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_FIELD2);
    }

    if (shopMenu->martType == MART_TYPE_FRONTIER) {
        Graphics_LoadPaletteFromOpenNARC(narc, frontier_NCLR, 0, PLTT_OFFSET(0), PALETTE_SIZE_BYTES, HEAP_ID_FIELD2);
    } else {
        Graphics_LoadPaletteFromOpenNARC(narc, default_NCLR, 0, PLTT_OFFSET(0), PALETTE_SIZE_BYTES, HEAP_ID_FIELD2);
    }

    LoadStandardWindowGraphics(shopMenu->bgConfig, BG_LAYER_MAIN_3, 1 + (18 + 12), FIELD_WINDOW_PALETTE_INDEX, 0, HEAP_ID_FIELD2);
    LoadMessageBoxGraphics(shopMenu->bgConfig, BG_LAYER_MAIN_3, 1, 10, Options_Frame(shopMenu->options), HEAP_ID_FIELD2);
    NARC_dtor(narc);
}

static void Shop_SetBgPriorities(ShopMenu *shopMenu)
{
    shopMenu->engineALayers = GXLayers_EngineAGetLayers();
    shopMenu->bgPriorities[BG_LAYER_MAIN_0] = Bg_GetPriority(shopMenu->bgConfig, BG_LAYER_MAIN_0);
    shopMenu->bgPriorities[BG_LAYER_MAIN_1] = Bg_GetPriority(shopMenu->bgConfig, BG_LAYER_MAIN_1);
    shopMenu->bgPriorities[BG_LAYER_MAIN_2] = Bg_GetPriority(shopMenu->bgConfig, BG_LAYER_MAIN_2);
    shopMenu->bgPriorities[BG_LAYER_MAIN_3] = Bg_GetPriority(shopMenu->bgConfig, BG_LAYER_MAIN_3);

    Bg_SetPriority(BG_LAYER_MAIN_0, 3);
    Bg_SetPriority(BG_LAYER_MAIN_1, 2);
    Bg_SetPriority(BG_LAYER_MAIN_2, 1);
    Bg_SetPriority(BG_LAYER_MAIN_3, 0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, TRUE);
}

static void Shop_RestoreBgPriorities(ShopMenu *shopMenu)
{
    Bg_SetPriority(BG_LAYER_MAIN_0, shopMenu->bgPriorities[BG_LAYER_MAIN_0]);
    Bg_SetPriority(BG_LAYER_MAIN_1, shopMenu->bgPriorities[BG_LAYER_MAIN_1]);
    Bg_SetPriority(BG_LAYER_MAIN_2, shopMenu->bgPriorities[BG_LAYER_MAIN_2]);
    Bg_SetPriority(BG_LAYER_MAIN_3, shopMenu->bgPriorities[BG_LAYER_MAIN_3]);
    GXLayers_EngineASetLayers(shopMenu->engineALayers);
}

static u8 Shop_MoveCamera(ShopMenu *shopMenu)
{
    if (shopMenu->cameraPosCurr != shopMenu->cameraPosDest) {
        VecFx32 targetPosDelta = { 8 * FX32_ONE, 0, 0 };

        Camera_Move(&targetPosDelta, shopMenu->camera);
        shopMenu->cameraPosCurr++;
        return SHOP_STATE_MOVE_CAMERA;
    }

    shopMenu->cameraPosCurr = 0;
    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);

    Shop_DrawSprites(shopMenu);
    Shop_LoadGraphics(shopMenu);
    Shop_SetBgPriorities(shopMenu);
    Shop_InitItemsList(shopMenu);
    Shop_PrintCurrentMoney(shopMenu, FALSE);

    return SHOP_STATE_SELECT_BUY_MENU;
}

static const ListMenuTemplate sShop_ItemListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = Shop_MenuCursorCallback,
    .printCallback = Shop_MenuPrintCallback,
    .window = NULL,
    .count = 0,
    .maxDisplay = MAX_ITEM_SHOWN,
    .headerXOffset = 0,
    .textXOffset = 0,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 0,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 0,
    .pagerMode = PAGER_MODE_NONE,
    .fontID = FONT_SYSTEM,
    .cursorType = 1,
    .parent = NULL,
};

static u32 Shop_GetItemId(ShopMenu *shopMenu, u16 itemId)
{
    if (shopMenu->martType == MART_TYPE_DECOR) {
        return itemId;
    } else if (shopMenu->martType == MART_TYPE_SEAL) {
        return sub_02098164(itemId);
    }

    return itemId;
}

static void Shop_InitItemsList(ShopMenu *shopMenu)
{
    MessageLoader *itemNames;
    String *string;
    ListMenuTemplate listTemplate;
    u32 i, itemId;
    MessageLoader *moveNames;
    BOOL isTMShop = FALSE;

    if ((shopMenu->martType == MART_TYPE_NORMAL) || (shopMenu->martType == MART_TYPE_FRONTIER)) {
        itemNames = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, HEAP_ID_FIELD2);
        moveNames = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_FIELD2);
    } else if (shopMenu->martType == MART_TYPE_DECOR) {
        itemNames = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_GOODS, HEAP_ID_FIELD2);
    } else {
        itemNames = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BALL_SEAL_NAMES, HEAP_ID_FIELD2);
    }

    shopMenu->itemsList = StringList_New(shopMenu->itemsCount + 1, HEAP_ID_FIELD2);

    for (i = 0; i < shopMenu->itemsCount; i++) {
        itemId = Shop_GetItemId(shopMenu, shopMenu->itemsPtr[i]);

        if ((itemId <= ITEM_HM01) && (itemId >= ITEM_TM01)) {
            string = MessageLoader_GetNewString(moveNames, Item_MoveForTMHM(itemId));
            StringList_AddFromString(shopMenu->itemsList, string, shopMenu->itemsPtr[i]);
            String_Free(string);

            isTMShop = TRUE;
        } else {
            string = MessageLoader_GetNewString(itemNames, itemId);
            StringList_AddFromString(shopMenu->itemsList, string, shopMenu->itemsPtr[i]);
            String_Free(string);
        }
    }

    if (isTMShop) {
        StringList_AddFromMessageBank(shopMenu->itemsList, shopMenu->msgLoader, pl_msg_00000543_00026, LIST_CANCEL);
    } else {
        StringList_AddFromMessageBank(shopMenu->itemsList, shopMenu->msgLoader, pl_msg_00000543_00008, LIST_CANCEL);
    }

    MessageLoader_Free(itemNames);

    if ((shopMenu->martType == MART_TYPE_NORMAL) || (shopMenu->martType == MART_TYPE_FRONTIER)) {
        MessageLoader_Free(moveNames);
    }

    listTemplate = sShop_ItemListMenuTemplate;

    if ((itemId <= ITEM_HM01) && (itemId >= ITEM_TM01)) {
        listTemplate.textXOffset = 35;
    } else {
        listTemplate.textXOffset = 0;
    }

    listTemplate.choices = shopMenu->itemsList;
    listTemplate.window = &shopMenu->windows[SHOP_WINDOW_ITEM_LIST];
    listTemplate.count = shopMenu->itemsCount + 1;
    listTemplate.parent = (void *)shopMenu;

    shopMenu->listMenu = ListMenu_New(&listTemplate, 0, 0, HEAP_ID_FIELD2);
}

static void Shop_MenuCursorCallback(ListMenu *menu, u32 index, u8 onInit)
{
    ShopMenu *shopMenu = (ShopMenu *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (onInit != TRUE) {
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
    }

    Window_FillTilemap(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION], 0);

    if (index != MENU_CANCELED) {
        String *string;

        if (shopMenu->martType == MART_TYPE_NORMAL) {
            string = String_Init(130, HEAP_ID_FIELD2);
            Item_LoadDescription(string, index, HEAP_ID_FIELD2);
        } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
            string = String_Init(130, HEAP_ID_FIELD2);
            Item_LoadDescription(string, index, HEAP_ID_FIELD2);
        } else if (shopMenu->martType == MART_TYPE_DECOR) {
            MessageLoader *loader;

            loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_GOODS, HEAP_ID_FIELD2);
            string = MessageLoader_GetNewString(loader, UNDERGROUND_GOOD_DESCRIPTIONS_START + index - 1);
            MessageLoader_Free(loader);
        } else {
            MessageLoader *loader;

            loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNK_0542, HEAP_ID_FIELD2);
            string = MessageLoader_GetNewString(loader, sub_020981F4(index));

            MessageLoader_Free(loader);
        }

        Text_AddPrinterWithParamsAndColor(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        String_Free(string);

        Shop_ChangeItemIconGfx(shopMenu, index);
    } else {
        Shop_ChangeItemIconGfx(shopMenu, SHOP_ITEM_END);
    }

    u32 count;
    u16 listPos, cursorPos;

    ListMenu_GetListAndCursorPos(menu, &listPos, &cursorPos);

    if (listPos == FALSE) {
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], FALSE);
    } else {
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], TRUE);
    }

    count = ListMenu_GetAttribute(menu, LIST_MENU_COUNT);

    if ((count > MAX_ITEM_SHOWN) && (count > listPos + MAX_ITEM_SHOWN)) {
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], TRUE);
    } else {
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], FALSE);
    }

    Window_ScheduleCopyToVRAM(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION]);
}

static void Shop_MenuPrintCallback(ListMenu *menu, u32 index, u8 yOffset)
{
    ShopMenu *shopMenu = (ShopMenu *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (index != MENU_CANCELED) {
        String *string, *fmtString;
        u32 price, strWidth;
        u16 itemId = index;

        if ((itemId <= ITEM_HM01) && (itemId >= ITEM_TM01)) {
            itemId = itemId - ITEM_TM01 + 1;

            FontSpecialChars_DrawPartyScreenText(shopMenu->unk_2B4, 2, itemId, 2, 2, &shopMenu->windows[SHOP_WINDOW_ITEM_LIST], 0, yOffset + 4);
        }

        price = Shop_GetItemPrice(shopMenu, index);
        string = String_Init(12, HEAP_ID_FIELD2);

        if (shopMenu->martType == MART_TYPE_FRONTIER) {
            fmtString = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00032);
        } else {
            fmtString = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00009);
        }

        StringTemplate_SetNumber(shopMenu->strTemplate, 0, price, 4, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_Format(shopMenu->strTemplate, string, fmtString);

        strWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);

        Text_AddPrinterWithParamsAndColor(&shopMenu->windows[SHOP_WINDOW_ITEM_LIST], FONT_SYSTEM, string, (19 * 8) - strWidth, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        String_Free(fmtString);
        String_Free(string);
    }

    if (index == MENU_CANCELED) {
        String *string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00008);

        Window_FillRectWithColor(&shopMenu->windows[SHOP_WINDOW_ITEM_LIST], 15, 0, yOffset, 19 * 8, 16);
        Text_AddPrinterWithParamsAndColor(&shopMenu->windows[SHOP_WINDOW_ITEM_LIST], FONT_SYSTEM, string, 0, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        String_Free(string);
    }
}

static void Shop_PrintCurrentMoney(ShopMenu *shopMenu, u8 clearCurrMoney)
{
    String *string, *fmtString;
    u32 currMoney, strWidth;

    if (shopMenu->martType == MART_TYPE_FRONTIER) {
        if (clearCurrMoney == FALSE) {
            Window_FillTilemap(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], 15);
            Window_DrawStandardFrame(
                &shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], TRUE, 1 + (18 + 12), FIELD_WINDOW_PALETTE_INDEX);
        } else {
            Window_FillRectWithColor(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], 15, 0, 0, 9 * 8, 16);
        }

        string = String_Init(16, HEAP_ID_FIELD2);
        fmtString = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00038);
        currMoney = Shop_GetCurrentMoney(shopMenu);

        StringTemplate_SetNumber(shopMenu->strTemplate, 0, currMoney, 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_Format(shopMenu->strTemplate, string, fmtString);

        strWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);

        Text_AddPrinterWithParams(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], FONT_SYSTEM, string, (9 * 8) - strWidth - 8, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    } else {
        if (clearCurrMoney == FALSE) {
            Window_FillTilemap(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], 15);
            Window_DrawStandardFrame(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], TRUE, 1 + (18 + 12), FIELD_WINDOW_PALETTE_INDEX);

            fmtString = MessageLoader_GetNewString(shopMenu->msgLoader, 18);

            Text_AddPrinterWithParams(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], FONT_SYSTEM, fmtString, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            String_Free(fmtString);
        } else {
            Window_FillRectWithColor(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], 15, 0, 16, 9 * 8, 16);
        }

        string = String_Init(16, HEAP_ID_FIELD2);
        fmtString = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00019);
        currMoney = Shop_GetCurrentMoney(shopMenu);

        StringTemplate_SetNumber(shopMenu->strTemplate, 0, currMoney, 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        StringTemplate_Format(shopMenu->strTemplate, string, fmtString);

        strWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);

        Text_AddPrinterWithParams(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY], FONT_SYSTEM, string, (9 * 8) - strWidth, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    String_Free(fmtString);
    String_Free(string);
    Window_ScheduleCopyToVRAM(&shopMenu->windows[SHOP_WINDOW_CURRENT_MONEY]);
}

static u8 Shop_SelectBuyMenu(ShopMenu *shopMenu)
{
    u32 input;
    u16 prevPos, currPos;

    ListMenu_GetListAndCursorPos(shopMenu->listMenu, NULL, &prevPos);
    input = ListMenu_ProcessInput(shopMenu->listMenu);
    ListMenu_GetListAndCursorPos(shopMenu->listMenu, NULL, &currPos);

    if (prevPos != currPos) {
        Sprite_SetPositionXY(shopMenu->sprites[SHOP_SPRITE_CURSOR], 176 - 4, 24 + currPos * 16);
    }

    switch (input) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCELED:
        ListMenu_Free(shopMenu->listMenu, NULL, NULL);
        StringList_Free(shopMenu->itemsList);
        Shop_DestroyStaticWindows(shopMenu);
        Shop_RestoreBgPriorities(shopMenu);
        Bg_ClearTilemap(shopMenu->bgConfig, BG_LAYER_MAIN_1);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        return SHOP_STATE_MOVE_CAMERA_BACK;
    default: {
        String *string;
        u32 currMoney;

        shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_UP] = Sprite_GetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP]);
        shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_DOWN] = Sprite_GetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN]);

        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], FALSE);
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], FALSE);

        Shop_SetCursorSpritePalette(shopMenu, TRUE);

        Window_FillTilemap(&shopMenu->windows[SHOP_WINDOW_MESSAGE], 15);
        Window_ClearAndCopyToVRAM(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION]);
        Window_DrawMessageBoxWithScrollCursor(&shopMenu->windows[SHOP_WINDOW_MESSAGE], FALSE, 1, 10);

        shopMenu->itemId = input;
        shopMenu->itemAmount = 1;
        shopMenu->itemPrice = Shop_GetItemPrice(shopMenu, shopMenu->itemId);

        currMoney = Shop_GetCurrentMoney(shopMenu);

        if (currMoney < shopMenu->itemPrice) {
            if (shopMenu->martType == MART_TYPE_FRONTIER) {
                string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00037);
            } else {
                string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00003);
            }

            StringTemplate_Format(shopMenu->strTemplate, shopMenu->string, string);
            String_Free(string);

            shopMenu->fieldMsgPrinterId = FieldMessage_Print(&shopMenu->windows[SHOP_WINDOW_MESSAGE], shopMenu->string, shopMenu->options, TRUE);
            return SHOP_STATE_FINISH_PURCHASE;
        }

        if (shopMenu->martType == MART_TYPE_DECOR) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            return Shop_ShowPurchaseMessage(shopMenu);
        }

        shopMenu->itemAmountMax = currMoney / shopMenu->itemPrice;

        if (shopMenu->itemAmountMax > 99) {
            shopMenu->itemAmountMax = 99;
        }

        Shop_SetItemNameToIndex(shopMenu, shopMenu->itemId, 0);

        if (shopMenu->martType == MART_TYPE_FRONTIER) {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00033);
        } else {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00004);
        }

        StringTemplate_Format(shopMenu->strTemplate, shopMenu->string, string);
        String_Free(string);

        shopMenu->fieldMsgPrinterId = FieldMessage_Print(&shopMenu->windows[SHOP_WINDOW_MESSAGE], shopMenu->string, shopMenu->options, 1);

        Shop_SetScrollSpritesPositionXY(shopMenu, TRUE);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return SHOP_STATE_SHOW_PURCHASE_MENU;
    }
    }

    return SHOP_STATE_SELECT_BUY_MENU;
}

static u8 Shop_ShowPurchaseMenu(ShopMenu *shopMenu)
{
    if (FieldMessage_FinishedPrinting(shopMenu->fieldMsgPrinterId) == FALSE) {
        return SHOP_STATE_SHOW_PURCHASE_MENU;
    }

    Shop_ShowQtyWithinInventory(shopMenu);
    Shop_ShowQtyTotalItemPurchase(shopMenu, FALSE);

    Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], TRUE);
    Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], TRUE);

    return SHOP_STATE_SELECT_PURCHASE_MENU;
}

static void Shop_ShowQtyWithinInventory(ShopMenu *shopMenu)
{
    String *string, *fmtString;
    u16 inventoryQty;

    if (shopMenu->martType == MART_TYPE_NORMAL) {
        inventoryQty = Bag_GetItemQuantity(shopMenu->destInventory, shopMenu->itemId, HEAP_ID_FIELD2);
    } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
        inventoryQty = Bag_GetItemQuantity(shopMenu->destInventory, shopMenu->itemId, HEAP_ID_FIELD2);
    } else if (shopMenu->martType == MART_TYPE_SEAL) {
        inventoryQty = SealCase_CountSealOccurrenceAnywhere(shopMenu->destInventory, shopMenu->itemId);
    } else {
        inventoryQty = 0;
    }

    Window_FillTilemap(&shopMenu->windows[SHOP_WINDOW_ITEMS_IN_BAG], 15);
    Window_DrawStandardFrame(&shopMenu->windows[SHOP_WINDOW_ITEMS_IN_BAG], TRUE, 1 + (18 + 12), FIELD_WINDOW_PALETTE_INDEX);

    string = String_Init(24, HEAP_ID_FIELD2);
    fmtString = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00020);

    StringTemplate_SetNumber(shopMenu->strTemplate, 0, inventoryQty, 3, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(shopMenu->strTemplate, string, fmtString);
    Text_AddPrinterWithParams(&shopMenu->windows[SHOP_WINDOW_ITEMS_IN_BAG], FONT_SYSTEM, string, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(fmtString);
    String_Free(string);
    Window_ScheduleCopyToVRAM(&shopMenu->windows[SHOP_WINDOW_ITEMS_IN_BAG]);
}

static u8 Shop_SelectPurchaseMenu(ShopMenu *shopMenu)
{
    if (sub_0208C15C(&shopMenu->itemAmount, shopMenu->itemAmountMax) != FALSE) {
        Sound_PlayEffect(SEQ_SE_DP_BAG_004);
        Shop_ShowQtyTotalItemPurchase(shopMenu, TRUE);
        return SHOP_STATE_SELECT_PURCHASE_MENU;
    }

    if (JOY_NEW(PAD_BUTTON_A)) {
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], FALSE);
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], FALSE);
        Window_EraseStandardFrame(&shopMenu->windows[SHOP_WINDOW_ITEMS_IN_BAG], TRUE);
        Window_EraseStandardFrame(&shopMenu->windows[SHOP_WINDOW_QUANTITY_TOTAL_PRICE], TRUE);
        Window_FillTilemap(&shopMenu->windows[SHOP_WINDOW_MESSAGE], 15);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return Shop_ShowPurchaseMessage(shopMenu);
    }

    if (JOY_NEW(PAD_BUTTON_B)) {
        Window_EraseStandardFrame(&shopMenu->windows[SHOP_WINDOW_ITEMS_IN_BAG], TRUE);
        Window_EraseStandardFrame(&shopMenu->windows[SHOP_WINDOW_QUANTITY_TOTAL_PRICE], TRUE);
        Window_EraseMessageBox(&shopMenu->windows[SHOP_WINDOW_MESSAGE], FALSE);

        Shop_SetScrollSpritesPositionXY(shopMenu, FALSE);

        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_UP]);
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_DOWN]);

        Shop_SetCursorSpritePalette(shopMenu, FALSE);

        Window_ScheduleCopyToVRAM(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION]);
        Sound_PlayEffect(SEQ_SE_CONFIRM);

        return SHOP_STATE_SELECT_BUY_MENU;
    }

    return SHOP_STATE_SELECT_PURCHASE_MENU;
}

static u8 Shop_ShowPurchaseMessage(ShopMenu *shopMenu)
{
    String *string;
    BOOL canFitItem;

    if (shopMenu->martType == MART_TYPE_NORMAL) {
        canFitItem = Bag_CanFitItem(shopMenu->destInventory, shopMenu->itemId, shopMenu->itemAmount, HEAP_ID_FIELD2);
    } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
        canFitItem = Bag_CanFitItem(shopMenu->destInventory, shopMenu->itemId, shopMenu->itemAmount, HEAP_ID_FIELD2);
    } else if (shopMenu->martType == MART_TYPE_DECOR) {
        if (Underground_GetGoodsCountPC(shopMenu->destInventory) == MAX_GOODS_PC_SLOTS) {
            canFitItem = FALSE;
        } else {
            canFitItem = TRUE;
        }
    } else {
        canFitItem = SealCase_CheckSealCount(shopMenu->destInventory, shopMenu->itemId, shopMenu->itemAmount);
    }

    if (canFitItem == FALSE) {
        shopMenu->itemAmount = 0;

        if (shopMenu->martType == MART_TYPE_NORMAL) {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00007);
        } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00007);
        } else if (shopMenu->martType == MART_TYPE_DECOR) {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00012);
        } else {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00014);
        }

        StringTemplate_Format(shopMenu->strTemplate, shopMenu->string, string);
        String_Free(string);

        shopMenu->fieldMsgPrinterId = FieldMessage_Print(&shopMenu->windows[SHOP_WINDOW_MESSAGE], shopMenu->string, shopMenu->options, TRUE);
        return SHOP_STATE_FINISH_PURCHASE;
    }

    Shop_SetItemNameToIndex(shopMenu, shopMenu->itemId, 0);

    StringTemplate_SetNumber(shopMenu->strTemplate, 1, shopMenu->itemAmount, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
    StringTemplate_SetNumber(shopMenu->strTemplate, 2, shopMenu->itemPrice * shopMenu->itemAmount, 6, PADDING_MODE_NONE, CHARSET_MODE_EN);

    if ((shopMenu->itemId <= ITEM_HM01) && (shopMenu->itemId >= ITEM_TM01)) {
        u16 move = Item_MoveForTMHM(shopMenu->itemId);

        StringTemplate_SetMoveName(shopMenu->strTemplate, 3, move);

        if (shopMenu->martType == MART_TYPE_FRONTIER) {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00036);
        } else {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00027);
        }
    } else {
        if (shopMenu->martType == MART_TYPE_FRONTIER) {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00035);
        } else {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00005);
        }
    }

    StringTemplate_Format(shopMenu->strTemplate, shopMenu->string, string);
    String_Free(string);

    shopMenu->fieldMsgPrinterId = FieldMessage_Print(&shopMenu->windows[SHOP_WINDOW_MESSAGE], shopMenu->string, shopMenu->options, TRUE);
    return SHOP_STATE_SHOW_CONFIRM_PURCHASE;
}

static void Shop_ShowQtyTotalItemPurchase(ShopMenu *shopMenu, u8 dontDrawFrame)
{
    String *string, *fmtString;
    u32 stringWidth;

    Window_FillTilemap(&shopMenu->windows[SHOP_WINDOW_QUANTITY_TOTAL_PRICE], 15);

    if (dontDrawFrame == FALSE) {
        Window_DrawStandardFrame(&shopMenu->windows[SHOP_WINDOW_QUANTITY_TOTAL_PRICE], TRUE, 1 + (18 + 12), FIELD_WINDOW_PALETTE_INDEX);
    }

    string = String_Init(24, HEAP_ID_FIELD2);
    fmtString = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00021);

    StringTemplate_SetNumber(shopMenu->strTemplate, 0, shopMenu->itemAmount, 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    StringTemplate_Format(shopMenu->strTemplate, string, fmtString);
    Text_AddPrinterWithParams(&shopMenu->windows[SHOP_WINDOW_QUANTITY_TOTAL_PRICE], FONT_SYSTEM, string, 0, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(fmtString);

    if (shopMenu->martType == MART_TYPE_FRONTIER) {
        fmtString = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00034);
    } else {
        fmtString = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00022);
    }

    StringTemplate_SetNumber(shopMenu->strTemplate, 0, shopMenu->itemPrice * shopMenu->itemAmount, 6, PADDING_MODE_SPACES, CHARSET_MODE_EN);
    StringTemplate_Format(shopMenu->strTemplate, string, fmtString);

    stringWidth = Font_CalcStringWidth(FONT_SYSTEM, string, 0);

    Text_AddPrinterWithParams(&shopMenu->windows[SHOP_WINDOW_QUANTITY_TOTAL_PRICE], FONT_SYSTEM, string, (12 * 8) - stringWidth, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    String_Free(fmtString);
    String_Free(string);
    Window_ScheduleCopyToVRAM(&shopMenu->windows[SHOP_WINDOW_QUANTITY_TOTAL_PRICE]);
}

static u8 Shop_ShowConfirmPurchase(ShopMenu *shopMenu)
{
    if (FieldMessage_FinishedPrinting(shopMenu->fieldMsgPrinterId) == FALSE) {
        return SHOP_STATE_SHOW_CONFIRM_PURCHASE;
    }

    shopMenu->choiceMenu = Menu_MakeYesNoChoice(shopMenu->bgConfig, &sShop_YesNoChoiceWindowTemplate, 1 + (18 + 12), FIELD_WINDOW_PALETTE_INDEX, HEAP_ID_FIELD2);
    return SHOP_STATE_SELECT_CONFIRM_PURCHASE;
}

static u8 Shop_SelectConfirmPurchase(ShopMenu *shopMenu)
{
    switch (Menu_ProcessInputAndHandleExit(shopMenu->choiceMenu, HEAP_ID_FIELD2)) {
    case 0: {
        String *string;

        if (shopMenu->martType == MART_TYPE_NORMAL) {
            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00006);

            if (shopMenu->itemAmount == 1) {
                StringTemplate_SetItemName(shopMenu->strTemplate, 0, shopMenu->itemId);
            } else {
                StringTemplate_SetItemNamePlural(shopMenu->strTemplate, 0, shopMenu->itemId);
            }

            StringTemplate_SetBagPocketName(shopMenu->strTemplate, 1, Item_LoadParam(shopMenu->itemId, ITEM_PARAM_FIELD_POCKET, HEAP_ID_FIELD2));
        } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
            if (shopMenu->itemAmount == 1) {
                StringTemplate_SetItemName(shopMenu->strTemplate, 0, shopMenu->itemId);
            } else {
                StringTemplate_SetItemNamePlural(shopMenu->strTemplate, 0, shopMenu->itemId);
            }

            string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00006);
            StringTemplate_SetBagPocketName(shopMenu->strTemplate, 1, Item_LoadParam(shopMenu->itemId, ITEM_PARAM_FIELD_POCKET, HEAP_ID_FIELD2));
        } else {
            if (shopMenu->martType == MART_TYPE_DECOR) {
                Shop_SetItemNameToIndex(shopMenu, shopMenu->itemId, 0);
                string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00011);
            } else {
                if (shopMenu->itemAmount == 1) {
                    StringTemplate_SetBallSealName(shopMenu->strTemplate, 0, sub_02098164(shopMenu->itemId));
                } else {
                    StringTemplate_SetBallSealNamePlural(shopMenu->strTemplate, 0, sub_02098164(shopMenu->itemId));
                }

                string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00013);
            }
        }

        StringTemplate_Format(shopMenu->strTemplate, shopMenu->string, string);
        String_Free(string);
        Window_FillTilemap(&shopMenu->windows[SHOP_WINDOW_MESSAGE], 15);
        shopMenu->fieldMsgPrinterId = FieldMessage_Print(&shopMenu->windows[SHOP_WINDOW_MESSAGE], shopMenu->string, shopMenu->options, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_REGI);
        return SHOP_STATE_CONFIRM_PURCHASE;
    }
    case MENU_CANCELED:
        Window_EraseMessageBox(&shopMenu->windows[SHOP_WINDOW_MESSAGE], FALSE);
        Shop_SetScrollSpritesPositionXY(shopMenu, FALSE);
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_UP]);
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_DOWN]);
        Shop_SetCursorSpritePalette(shopMenu, FALSE);
        Window_ScheduleCopyToVRAM(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION]);
        return SHOP_STATE_SELECT_BUY_MENU;
    }

    return SHOP_STATE_SELECT_CONFIRM_PURCHASE;
}

static u8 Shop_ConfirmItemPurchase(ShopMenu *shopMenu)
{
    if (FieldMessage_FinishedPrinting(shopMenu->fieldMsgPrinterId) == FALSE) {
        return SHOP_STATE_CONFIRM_PURCHASE;
    }

    if (shopMenu->martType == MART_TYPE_NORMAL) {
        Bag_TryAddItem(shopMenu->destInventory, shopMenu->itemId, shopMenu->itemAmount, HEAP_ID_FIELD2);
        FieldSystem_SaveTVEpisodeSegment_SinnohShoppingChampCorner(shopMenu->saveData, shopMenu->itemId, shopMenu->itemAmount);
    } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
        Bag_TryAddItem(shopMenu->destInventory, shopMenu->itemId, shopMenu->itemAmount, HEAP_ID_FIELD2);
    } else if (shopMenu->martType == MART_TYPE_DECOR) {
        Underground_TryAddGoodPC(shopMenu->destInventory, shopMenu->itemId);
    } else {
        GiveOrTakeSeal(shopMenu->destInventory, shopMenu->itemId, shopMenu->itemAmount);
    }

    Shop_TakeMoney(shopMenu, shopMenu->itemPrice * shopMenu->itemAmount);

    if (shopMenu->martType == MART_TYPE_FRONTIER) {
        GameRecords_AddToRecordValue(shopMenu->records, RECORD_BATTLE_POINTS_SPENT, shopMenu->itemPrice * shopMenu->itemAmount);
    } else {
        GameRecords_AddToRecordValue(shopMenu->records, RECORD_MONEY_SPENT, shopMenu->itemPrice * shopMenu->itemAmount);
    }

    Shop_PrintCurrentMoney(shopMenu, TRUE);

    if (shopMenu->itemAmount > 1) {
        shopMenu->itemPurchaseCount = 2;
    } else {
        if (shopMenu->itemPurchaseCount != 255) {
            shopMenu->itemPurchaseCount++;
        }
    }

    return SHOP_STATE_FINISH_PURCHASE;
}

static u8 Shop_FinishPurchase(ShopMenu *shopMenu)
{
    if (FieldMessage_FinishedPrinting(shopMenu->fieldMsgPrinterId) == FALSE) {
        return SHOP_STATE_FINISH_PURCHASE;
    }

    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        if (shopMenu->incBuyCount == TRUE) {
            SystemVars_IncrementDepartmentStoreBuyCount(shopMenu->varsFlags);
        }

        if (((shopMenu->martType == MART_TYPE_NORMAL) || (shopMenu->martType == MART_TYPE_FRONTIER)) && (shopMenu->itemId == ITEM_POKE_BALL) && (shopMenu->itemAmount >= 10)) {
            if (Bag_TryAddItem(shopMenu->destInventory, ITEM_PREMIER_BALL, 1, HEAP_ID_FIELD2) == TRUE) {
                String *string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00010);

                StringTemplate_Format(shopMenu->strTemplate, shopMenu->string, string);
                String_Free(string);
                Window_FillTilemap(&shopMenu->windows[SHOP_WINDOW_MESSAGE], 15);

                shopMenu->fieldMsgPrinterId = FieldMessage_Print(&shopMenu->windows[SHOP_WINDOW_MESSAGE], shopMenu->string, shopMenu->options, TRUE);

                GameRecords *records = SaveData_GetGameRecords(shopMenu->saveData);
                GameRecords_IncrementRecordValue(records, RECORD_UNK_050);

                return SHOP_STATE_FINISH_FREE_PREMIER;
            }
        }

        Window_EraseMessageBox(&shopMenu->windows[SHOP_WINDOW_MESSAGE], FALSE);
        Shop_SetScrollSpritesPositionXY(shopMenu, FALSE);
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_UP]);
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_DOWN]);
        Shop_SetCursorSpritePalette(shopMenu, FALSE);
        Window_ScheduleCopyToVRAM(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION]);

        return SHOP_STATE_SELECT_BUY_MENU;
    }

    return SHOP_STATE_FINISH_PURCHASE;
}

static u8 Shop_FinishFreePremierBall(ShopMenu *shopMenu)
{
    if (FieldMessage_FinishedPrinting(shopMenu->fieldMsgPrinterId) == FALSE) {
        return SHOP_STATE_FINISH_FREE_PREMIER;
    }

    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&shopMenu->windows[SHOP_WINDOW_MESSAGE], 0);
        Shop_SetScrollSpritesPositionXY(shopMenu, FALSE);
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_UP]);
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], shopMenu->spriteDrawFlags[SHOP_SPRITE_SCROLL_ARROW_DOWN]);
        Shop_SetCursorSpritePalette(shopMenu, FALSE);
        Window_ScheduleCopyToVRAM(&shopMenu->windows[SHOP_WINDOW_ITEM_DESCRIPTION]);

        return SHOP_STATE_SELECT_BUY_MENU;
    }

    return SHOP_STATE_FINISH_FREE_PREMIER;
}

// idx is "unused" as it is always provided as 0
static void Shop_SetItemNameToIndex(ShopMenu *shopMenu, u16 itemId, u16 idx)
{
    if (shopMenu->martType == MART_TYPE_NORMAL) {
        StringTemplate_SetItemName(shopMenu->strTemplate, idx, itemId);
    } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
        StringTemplate_SetItemName(shopMenu->strTemplate, idx, itemId);
    } else if (shopMenu->martType == MART_TYPE_DECOR) {
        StringTemplate_SetUndergroundGoodsName(shopMenu->strTemplate, idx, itemId);
    } else {
        StringTemplate_SetBallSealName(shopMenu->strTemplate, idx, sub_02098164(itemId));
    }
}

static u32 Shop_GetItemPrice(ShopMenu *shopMenu, u16 itemId)
{
    if (shopMenu->martType == MART_TYPE_NORMAL) {
        return Item_LoadParam(itemId, ITEM_PARAM_PRICE, HEAP_ID_FIELD2);
    } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
        return Shop_GetItemBPPrice(shopMenu, itemId);
    } else if (shopMenu->martType == MART_TYPE_DECOR) {
        return Good_GetMoneyPrice(itemId);
    }

    return sub_020981D0(itemId);
}

static u16 Shop_GetItemBPPrice(ShopMenu *shopMenu, u16 itemId)
{
    static const u16 itemToBpPrice[][2] = {
        { ITEM_PROTEIN, 1 },
        { ITEM_CALCIUM, 1 },
        { ITEM_IRON, 1 },
        { ITEM_ZINC, 1 },
        { ITEM_CARBOS, 1 },
        { ITEM_HP_UP, 1 },
        { ITEM_POWER_BRACER, 16 },
        { ITEM_POWER_BELT, 16 },
        { ITEM_POWER_LENS, 16 },
        { ITEM_POWER_BAND, 16 },
        { ITEM_POWER_ANKLET, 16 },
        { ITEM_POWER_WEIGHT, 16 },
        { ITEM_TOXIC_ORB, 16 },
        { ITEM_FLAME_ORB, 16 },
        { ITEM_WHITE_HERB, 32 },
        { ITEM_POWER_HERB, 32 },
        { ITEM_BRIGHTPOWDER, 48 },
        { ITEM_CHOICE_BAND, 48 },
        { ITEM_FOCUS_BAND, 48 },
        { ITEM_SCOPE_LENS, 48 },
        { ITEM_MUSCLE_BAND, 48 },
        { ITEM_FOCUS_SASH, 48 },
        { ITEM_CHOICE_SCARF, 48 },
        { ITEM_RAZOR_CLAW, 48 },
        { ITEM_RAZOR_FANG, 48 },
        { ITEM_RARE_CANDY, 48 },
        { ITEM_TM06, 32 },
        { ITEM_TM73, 32 },
        { ITEM_TM61, 32 },
        { ITEM_TM45, 32 },
        { ITEM_TM40, 40 },
        { ITEM_TM31, 40 },
        { ITEM_TM08, 48 },
        { ITEM_TM04, 48 },
        { ITEM_TM81, 64 },
        { ITEM_TM30, 64 },
        { ITEM_TM53, 64 },
        { ITEM_TM36, 80 },
        { ITEM_TM59, 80 },
        { ITEM_TM71, 80 },
        { ITEM_TM26, 80 }
    };

    for (u32 i = 0; i < (NELEMS(itemToBpPrice)); i++) {
        if (itemToBpPrice[i][0] == itemId) {
            return itemToBpPrice[i][1];
        }
    }

    return 0;
}

static u32 Shop_GetCurrentMoney(ShopMenu *shopMenu)
{
    if (shopMenu->martType == MART_TYPE_FRONTIER) {
        return BattlePoints_ApplyFuncAndGet(sub_0202D750(shopMenu->saveData), 0, BATTLE_POINTS_FUNC_NONE);
    } else {
        return TrainerInfo_Money(shopMenu->trainerInfo);
    }
}

static void Shop_TakeMoney(ShopMenu *shopMenu, u32 amount)
{
    if (shopMenu->martType == MART_TYPE_FRONTIER) {
        BattlePoints_ApplyFuncAndGet(sub_0202D750(shopMenu->saveData), amount, BATTLE_POINTS_FUNC_SUB);
    } else {
        TrainerInfo_TakeMoney(shopMenu->trainerInfo, amount);
    }
}

static u8 Shop_MoveCameraBack(FieldSystem *fieldSystem, ShopMenu *shopMenu)
{
    if (shopMenu->cameraPosCurr != shopMenu->cameraPosDest) {
        VecFx32 targetPosDelta = { -8 * FX32_ONE, 0, 0 };

        Camera_Move(&targetPosDelta, shopMenu->camera);
        shopMenu->cameraPosCurr++;
        return SHOP_STATE_MOVE_CAMERA_BACK;
    }

    shopMenu->cameraPosCurr = 0;

    Camera_Copy(shopMenu->camera, fieldSystem->camera);
    Camera_Delete(shopMenu->camera);
    Camera_SetAsActive(fieldSystem->camera);

    Shop_DestroySprites(shopMenu);

    if (shopMenu->martType == MART_TYPE_FRONTIER) {
        return SHOP_STATE_SHOW_EXIT_MESSAGE;
    }

    FieldMessage_AddWindow(fieldSystem->bgConfig, &shopMenu->windows[1], BG_LAYER_MAIN_3);
    FieldMessage_DrawWindow(&shopMenu->windows[1], shopMenu->options);

    String *string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00002);
    StringTemplate_Format(shopMenu->strTemplate, shopMenu->string, string);
    String_Free(string);

    shopMenu->fieldMsgPrinterId = FieldMessage_Print(&shopMenu->windows[1], shopMenu->string, shopMenu->options, TRUE);

    return SHOP_STATE_REINIT_CONTEXT_MENU;
}

static u8 Shop_ReinitContextMenu(ShopMenu *shopMenu)
{
    if (FieldMessage_FinishedPrinting(shopMenu->fieldMsgPrinterId) == FALSE) {
        return SHOP_STATE_REINIT_CONTEXT_MENU;
    }

    Window_Remove(&shopMenu->windows[1]);
    Shop_InitContextMenu(shopMenu);

    return SHOP_STATE_SELECT_CONTEXT_MENU;
}

static void Shop_PrintExit(FieldSystem *fieldSystem, ShopMenu *shopMenu)
{
    String *string;

    if (shopMenu->martType == MART_TYPE_FRONTIER) {
        string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00031);
    } else {
        string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00001);
    }

    StringTemplate_Format(shopMenu->strTemplate, shopMenu->string, string);
    String_Free(string);
    FieldMessage_AddWindow(fieldSystem->bgConfig, &shopMenu->windows[1], BG_LAYER_MAIN_3);
    FieldMessage_DrawWindow(&shopMenu->windows[1], shopMenu->options);

    shopMenu->fieldMsgPrinterId = FieldMessage_Print(&shopMenu->windows[1], shopMenu->string, shopMenu->options, TRUE);
}

static const SpriteResourceDataPaths sShop_SpriteResourcePaths = {
    "data/shop_chr.resdat",
    "data/shop_pal.resdat",
    "data/shop_cell.resdat",
    "data/shop_canm.resdat",
    NULL,
    NULL,
    "data/shop_h.cldat"
};

static const SpriteTemplateFromResourceHeader sShop_SpriteTemplates[] = {
    {
        .resourceHeaderID = 0,
        .x = 0xB1,
        .y = 0x8,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .dummy18 = 0,
        .dummy1C = 0,
        .dummy20 = 0,
        .dummy24 = 0,
    },
    {
        .resourceHeaderID = 0,
        .x = 0xB1,
        .y = 0x84,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .dummy18 = 0,
        .dummy1C = 0,
        .dummy20 = 0,
        .dummy24 = 0,
    },
    {
        .resourceHeaderID = 1,
        .x = 0xAC,
        .y = 0x18,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .dummy18 = 0,
        .dummy1C = 0,
        .dummy20 = 0,
        .dummy24 = 0,
    },
    {
        .resourceHeaderID = 2,
        .x = 0x16,
        .y = 0xAC,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .dummy18 = 0,
        .dummy1C = 0,
        .dummy20 = 0,
        .dummy24 = 0,
    },
};

static void Shop_DrawSprites(ShopMenu *shopMenu)
{
    SpriteResourceManager_Init(&shopMenu->spriteManager, &sShop_SpriteResourcePaths, 4, HEAP_ID_FIELD2);

    for (u32 i = 0; i < SHOP_SPRITE_MAX; i++) {
        shopMenu->sprites[i] = SpriteResourceManager_CreateSprite(&shopMenu->spriteManager, &sShop_SpriteTemplates[i]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void Shop_DestroySprites(ShopMenu *shopMenu)
{
    for (u32 i = 0; i < SHOP_SPRITE_MAX; i++) {
        Sprite_Delete(shopMenu->sprites[i]);
    }

    SpriteResourceManager_Free(&shopMenu->spriteManager);
}

static void Shop_SetScrollSpritesPositionXY(ShopMenu *shopMenu, u8 isBuyingItem)
{
    if (isBuyingItem == FALSE) {
        Sprite_SetPositionXY(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], 177, 8);
        Sprite_SetPositionXY(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], 177, 132);
    } else {
        Sprite_SetPositionXY(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_UP], 162, 108);
        Sprite_SetPositionXY(shopMenu->sprites[SHOP_SPRITE_SCROLL_ARROW_DOWN], 162, 132);
    }
}

static void Shop_ChangeItemIconGfx(ShopMenu *shopMenu, u16 itemId)
{
    SpriteResource *spriteRes;

    if ((shopMenu->martType != MART_TYPE_NORMAL) && (shopMenu->martType != MART_TYPE_FRONTIER)) {
        Sprite_SetDrawFlag(shopMenu->sprites[SHOP_SPRITE_ITEM_ICON], FALSE);
        return;
    }

    spriteRes = SpriteResourceCollection_Find(shopMenu->spriteManager.resourceCollections[0], 2);

    SpriteResourceCollection_ModifyTiles(shopMenu->spriteManager.resourceCollections[0], spriteRes, 16, Item_FileID(itemId, ITEM_FILE_TYPE_ICON), FALSE, HEAP_ID_FIELD2);
    SpriteTransfer_RetransferCharData(spriteRes);

    spriteRes = SpriteResourceCollection_Find(shopMenu->spriteManager.resourceCollections[1], 1);

    SpriteResourceCollection_ModifyPalette(shopMenu->spriteManager.resourceCollections[1], spriteRes, 16, Item_FileID(itemId, ITEM_FILE_TYPE_PALETTE), FALSE, HEAP_ID_FIELD2);
    SpriteTransfer_ReplacePlttData(spriteRes);
}

static void Shop_SetCursorSpritePalette(ShopMenu *shopMenu, u8 selected)
{
    Sprite_SetExplicitPalette2(shopMenu->sprites[SHOP_SPRITE_CURSOR], selected);
}

static void Shop_StartScreenFade(FieldSystem *fieldSystem, ShopMenu *shopMenu)
{
    FieldMap_FadeScreen(FADE_TYPE_BRIGHTNESS_OUT);
    shopMenu->state = SHOP_STATE_WAIT_SCREEN_TRANSITION;
}

static void Shop_FinishScreenTransition(FieldTask *task)
{
    FieldSystem *fieldSystem;
    ShopMenu *shopMenu;

    if (IsScreenFadeDone() == FALSE) {
        return;
    }

    fieldSystem = FieldTask_GetFieldSystem(task);
    shopMenu = FieldTask_GetEnv(task);

    Shop_CloseContextMenu(shopMenu);

    Bag *bag = SaveData_GetBag(fieldSystem->saveData);
    shopMenu->unk_04 = BagContext_CreateWithPockets(bag, sShop_BagPockets, HEAP_ID_FIELD2);

    BagContext_Init(shopMenu->unk_04, fieldSystem->saveData, 2, fieldSystem->bagCursor);
    sub_0203D1E4(fieldSystem, shopMenu->unk_04);
    FieldTask_InitJump(task, FieldTask_ShopMisc, shopMenu);

    shopMenu->state = SHOP_STATE_REINIT_FIELD_MAP;
}

static u8 Shop_ReinitMerchantMessage(FieldSystem *fieldSystem, ShopMenu *shopMenu)
{
    if (IsScreenFadeDone() == FALSE) {
        return SHOP_STATE_REINIT_MERCHANT_MESSAGE;
    }

    FieldMessage_AddWindow(fieldSystem->bgConfig, &shopMenu->windows[1], BG_LAYER_MAIN_3);
    FieldMessage_DrawWindow(&shopMenu->windows[1], shopMenu->options);

    String *string = MessageLoader_GetNewString(shopMenu->msgLoader, pl_msg_00000543_00002);
    StringTemplate_Format(shopMenu->strTemplate, shopMenu->string, string);
    String_Free(string);

    shopMenu->fieldMsgPrinterId = FieldMessage_Print(&shopMenu->windows[1], shopMenu->string, shopMenu->options, TRUE);
    return SHOP_STATE_REINIT_CONTEXT_MENU;
}
