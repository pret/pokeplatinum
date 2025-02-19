#include "overlay007/ov7_0224CD28.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/window.h"
#include "constants/heap.h"
#include "generated/game_records.h"

#include "field/field_system.h"
#include "overlay005/fieldmap.h"
#include "overlay005/ov5_021D2F14.h"
#include "overlay007/struct_ov7_0224D008.h"

#include "bag.h"
#include "bg_window.h"
#include "camera.h"
#include "field_message.h"
#include "field_task.h"
#include "font.h"
#include "game_options.h"
#include "game_records.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "journal.h"
#include "list_menu.h"
#include "map_header.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "player_avatar.h"
#include "render_window.h"
#include "save_player.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_system.h"
#include "sprite_transfer.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "system_vars.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02005474.h"
#include "unk_0200C440.h"
#include "unk_0200F174.h"
#include "unk_0202854C.h"
#include "unk_0202C9F4.h"
#include "unk_0202D05C.h"
#include "unk_0203D1B8.h"
#include "unk_020573FC.h"
#include "unk_0206CCB0.h"
#include "unk_0207CB08.h"
#include "unk_0208C098.h"
#include "unk_02097B18.h"
#include "unk_0209AC14.h"
#include "vars_flags.h"

static u8 ov7_0224CE90(FieldSystem *fieldSystem);
static u8 ov7_0224D250(FieldSystem *fieldSystem, ShopMenu *param1);
static void ov7_0224D008(ShopMenu *param0);
static void ov7_0224D018(ShopMenu *param0);
static void ov7_0224D040(ShopMenu *param0);
static u8 ov7_0224D1EC(ShopMenu *param0);
static void ov7_0224D21C(ShopMenu *param0);
static void ov7_0224D388(FieldSystem *fieldSystem, ShopMenu *param1);
static void ov7_0224D3E8(ShopMenu *param0);
static void ov7_0224D474(ShopMenu *param0);
static u8 ov7_0224D620(ShopMenu *param0);
static u8 ov7_0224DC84(ShopMenu *param0);
static u8 ov7_0224E950(FieldSystem *fieldSystem, ShopMenu *param1);
static void ov7_0224D6BC(ShopMenu *param0);
static void ov7_0224D85C(ListMenu *param0, u32 param1, u8 param2);
static void ov7_0224D9B8(ListMenu *param0, u32 param1, u8 param2);
static void ov7_0224DAF8(ShopMenu *param0, u8 param1);
static u8 ov7_0224DE94(ShopMenu *param0);
static u8 ov7_0224DFB0(ShopMenu *param0);
static void ov7_0224E28C(ShopMenu *param0, u8 param1);
static void ov7_0224DED4(ShopMenu *param0);
static u8 ov7_0224E6B8(ShopMenu *param0);
static u8 ov7_0224E7C8(ShopMenu *param0);
static u8 ov7_0224E3A0(ShopMenu *param0);
static u8 ov7_0224E3D8(ShopMenu *param0);
static u8 ov7_0224E5B0(ShopMenu *param0);
static u8 ov7_0224EA2C(ShopMenu *param0);
static void ov7_0224EA54(FieldSystem *fieldSystem, ShopMenu *param1);
static void ov7_0224EC20(FieldSystem *fieldSystem, ShopMenu *param1);
static void ov7_0224EC38(FieldTask *param0);
static u8 ov7_0224EC9C(FieldSystem *fieldSystem, ShopMenu *param1);
static void ov7_0224EAD0(ShopMenu *param0);
static void ov7_0224EB14(ShopMenu *param0);
static void ov7_0224EB38(ShopMenu *param0, u8 param1);
static void ov7_0224EB7C(ShopMenu *param0, u16 param1);
static void ov7_0224EC10(ShopMenu *param0, u8 param1);
static u8 ov7_0224E098(ShopMenu *param0);
static void ov7_0224E834(ShopMenu *param0, u16 param1, u16 param2);
static u32 ov7_0224E890(ShopMenu *param0, u16 param1);
static u16 ov7_0224E8CC(ShopMenu *param0, u16 param1);
static u32 ov7_0224E8F4(ShopMenu *param0);
static void ov7_0224E920(ShopMenu *param0, u32 param1);

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

static const u8 Unk_ov7_0224F49C[] = {
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
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

static void ov7_0224CD28(ShopMenu *param0, u16 *param1)
{
    u16 v0;

    for (v0 = 0; v0 < 256; v0++) {
        if (param1[v0] == 0xffff) {
            break;
        }
    }

    param0->itemsCount = v0;
    param0->unk_290 = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, param0->itemsCount * 2);

    for (v0 = 0; v0 < param0->itemsCount; v0++) {
        param0->unk_290[v0] = param1[v0];
    }
}

static ShopMenu *Shop_Allocate(void)
{
    ShopMenu *shopMenu = Heap_AllocFromHeap(HEAP_ID_FIELDMAP, sizeof(ShopMenu));

    memset(shopMenu, 0, sizeof(ShopMenu));
    return shopMenu;
}

void Shop_Start(FieldTask *task, FieldSystem *fieldSystem, u16 *shopItems, u8 martType, BOOL incDeptStoreBuyCount)
{
    ShopMenu *shopMenu = Shop_Allocate();

    shopMenu->bgConfig = fieldSystem->bgConfig;

    shopMenu->strbuf = Strbuf_Init((24 * 2 * 2), HEAP_ID_FIELDMAP);
    shopMenu->trainerInfo = SaveData_GetTrainerInfo(fieldSystem->saveData);
    shopMenu->options = SaveData_Options(fieldSystem->saveData);
    shopMenu->records = SaveData_GetGameRecordsPtr(fieldSystem->saveData);
    shopMenu->varsFlags = SaveData_GetVarsFlags(fieldSystem->saveData);
    shopMenu->incDeptStoreBuyCount = incDeptStoreBuyCount;
    shopMenu->unk_2A6 = ov7_0224CE90(fieldSystem);
    shopMenu->journalEntry = fieldSystem->journalEntry;
    shopMenu->martType = martType;
    shopMenu->saveData = fieldSystem->saveData;
    shopMenu->unk_2B4 = sub_0200C440(1, 2, 0, 11);

    if (shopMenu->martType == MART_TYPE_NORMAL) {
        shopMenu->inventory = SaveData_GetBag(fieldSystem->saveData);
    } else if (shopMenu->martType == MART_TYPE_FRONTIER) {
        shopMenu->inventory = SaveData_GetBag(fieldSystem->saveData);
    } else if (shopMenu->martType == MART_TYPE_DECOR) {
        shopMenu->inventory = sub_020298B0(fieldSystem->saveData);
    } else {
        shopMenu->inventory = sub_0202CA1C(fieldSystem->saveData);
    }

    ov7_0224CD28(shopMenu, shopItems);
    FieldTask_InitCall(task, ov7_0224CEAC, shopMenu);
}

static u8 ov7_0224CE90(FieldSystem *fieldSystem)
{
    int v0 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    if ((v0 == 0) || (v0 == 1) || (v0 == 3)) {
        return 10;
    }

    return 8;
}

BOOL ov7_0224CEAC(FieldTask *param0)
{
    FieldSystem *fieldSystem;
    ShopMenu *v1;

    fieldSystem = FieldTask_GetFieldSystem(param0);
    v1 = FieldTask_GetEnv(param0);

    switch (v1->state) {
    case 0:
        ov7_0224D008(v1);
        v1->state = 1;
        break;
    case 1:
        v1->state = ov7_0224D1EC(v1);
        break;
    case 2:
        ov7_0224D388(fieldSystem, v1);
        v1->state = 3;
        break;
    case 3:
        v1->state = ov7_0224D620(v1);
        break;
    case 4:
        v1->state = ov7_0224DC84(v1);
        break;
    case 5:
        v1->state = ov7_0224DE94(v1);
        break;
    case 6:
        v1->state = ov7_0224DFB0(v1);
        break;
    case 7:
        v1->state = ov7_0224E3A0(v1);
        break;
    case 8:
        v1->state = ov7_0224E3D8(v1);
        break;
    case 9:
        v1->state = ov7_0224E5B0(v1);
        break;
    case 10:
        v1->state = ov7_0224E6B8(v1);
        break;
    case 11:
        v1->state = ov7_0224E7C8(v1);
        break;
    case 12:
        v1->state = ov7_0224E950(fieldSystem, v1);
        break;
    case 13:
        v1->state = ov7_0224EA2C(v1);
        break;
    case 14:
        ov7_0224EC20(fieldSystem, v1);
        break;
    case 15:
        ov7_0224EC38(param0);
        break;
    case 16:
    case 17:
        break;
    case 18:
        v1->state = ov7_0224EC9C(fieldSystem, v1);
        break;
    case 19:
        ov7_0224EA54(fieldSystem, v1);
        v1->state = 20;
        break;
    case 20:
        return ov7_0224D250(fieldSystem, v1);
    }

    if ((v1->state >= 4) && (v1->state <= 11)) {
        Sprite_UpdateAnim(v1->unk_25C[0], FX32_ONE);
        Sprite_UpdateAnim(v1->unk_25C[1], FX32_ONE);
        SpriteList_Update(v1->unk_94.unk_00);
    }

    return 0;
}

static void ov7_0224D008(ShopMenu *shopMenu)
{
    ov7_0224D018(shopMenu);
    ov7_0224D040(shopMenu);
}

static void ov7_0224D018(ShopMenu *param0)
{
    param0->unk_88 = MessageLoader_Init(0, 26, 543, HEAP_ID_FIELDMAP);
    param0->unk_8C = StringTemplate_Default(HEAP_ID_FIELDMAP);
}

static void ov7_0224D040(ShopMenu *param0)
{
    MenuTemplate v0;
    u8 v1;

    if (param0->martType == MART_TYPE_NORMAL) {
        v1 = 3;
        param0->optionsList = StringList_New(v1, HEAP_ID_FIELDMAP);

        StringList_AddFromMessageBank(param0->optionsList, param0->unk_88, 15, 2);
        StringList_AddFromMessageBank(param0->optionsList, param0->unk_88, 16, 14);
        StringList_AddFromMessageBank(param0->optionsList, param0->unk_88, 17, 0xfffffffe);
        Window_Add(param0->bgConfig, &param0->windows[0], 3, 1, 1, 13, 6, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (13 * 6)));
    } else if (param0->martType == MART_TYPE_FRONTIER) {
        v1 = 2;
        param0->optionsList = StringList_New(v1, HEAP_ID_FIELDMAP);

        StringList_AddFromMessageBank(param0->optionsList, param0->unk_88, 29, 2);
        StringList_AddFromMessageBank(param0->optionsList, param0->unk_88, 30, 0xfffffffe);
        Window_Add(param0->bgConfig, &param0->windows[0], 3, 23, 13, 7, 4, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (13 * 6)));
    } else {
        v1 = 2;
        param0->optionsList = StringList_New(v1, HEAP_ID_FIELDMAP);

        StringList_AddFromMessageBank(param0->optionsList, param0->unk_88, 15, 2);
        StringList_AddFromMessageBank(param0->optionsList, param0->unk_88, 17, 0xfffffffe);
        Window_Add(param0->bgConfig, &param0->windows[0], 3, 1, 1, 13, 4, 13, ((((1024 - (18 + 12) - 9 - (32 * 8)) - (18 + 12 + 24)) - (27 * 4)) - (13 * 6)));
    }

    v0.choices = param0->optionsList;
    v0.window = &param0->windows[0];
    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = v1;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    LoadStandardWindowGraphics(param0->bgConfig, 3, 1024 - (18 + 12) - 9, 11, 0, HEAP_ID_FIELDMAP);
    Window_DrawStandardFrame(&param0->windows[0], 1, 1024 - (18 + 12) - 9, 11);

    param0->yesNoChoice = Menu_NewAndCopyToVRAM(&v0, 8, 0, 0, HEAP_ID_FIELDMAP, PAD_BUTTON_B);
}

static u8 ov7_0224D1EC(ShopMenu *param0)
{
    u32 input = Menu_ProcessInput(param0->yesNoChoice);

    switch (input) {
    case MENU_NOTHING_CHOSEN:
        break;
    case MENU_CANCELED:
        ov7_0224D21C(param0);
        return 19;
    default:
        return (u8)input;
    }

    return 1;
}

static void ov7_0224D21C(ShopMenu *param0)
{
    Window_EraseStandardFrame(&param0->windows[0], 1);
    Window_ClearAndCopyToVRAM(&param0->windows[0]);
    Menu_Free(param0->yesNoChoice, NULL);
    StringList_Free(param0->optionsList);
    Window_Remove(&param0->windows[0]);
}

static u8 ov7_0224D250(FieldSystem *fieldSystem, ShopMenu *param1)
{
    if (FieldMessage_FinishedPrinting(param1->unk_2A4) == 0) {
        return 0;
    }

    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        void *journalEntryLocationEvent;

        Window_EraseMessageBox(&param1->windows[1], 0);
        Window_Remove(&param1->windows[1]);
        MessageLoader_Free(param1->unk_88);
        StringTemplate_Free(param1->unk_8C);
        Strbuf_Free(param1->strbuf);

        if (param1->martType == MART_TYPE_NORMAL && MapHeader_GetMapLabelTextID(fieldSystem->location->mapId) != 101
            && fieldSystem->location->mapId != MAP_HEADER_ETERNA_CITY_NORTH_HOUSE
            && fieldSystem->location->mapId != MAP_HEADER_CELESTIC_TOWN_NORTHWEST_HOUSE) {
            if (param1->unk_2A7 != 0 && param1->unk_2A8 != 0) {
                journalEntryLocationEvent = JournalEntry_CreateEventBusinessAtMart(HEAP_ID_FIELDMAP);
                JournalEntry_SaveData(param1->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            } else if (param1->unk_2A7 > 1) {
                journalEntryLocationEvent = JournalEntry_CreateEventLotsOfShopping(HEAP_ID_FIELDMAP);
                JournalEntry_SaveData(param1->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            } else if (param1->unk_2A8 > 1) {
                journalEntryLocationEvent = JournalEntry_CreateEventSoldALot(HEAP_ID_FIELDMAP);
                JournalEntry_SaveData(param1->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            } else if (param1->unk_2A7 != 0) {
                journalEntryLocationEvent = JournalEntry_CreateEventShoppedAtMart(HEAP_ID_FIELDMAP);
                JournalEntry_SaveData(param1->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            } else if (param1->unk_2A8 != 0) {
                journalEntryLocationEvent = JournalEntry_CreateEventSoldALittle(HEAP_ID_FIELDMAP);
                JournalEntry_SaveData(param1->journalEntry, journalEntryLocationEvent, JOURNAL_LOCATION);
            }
        }

        sub_0200C560(param1->unk_2B4);
        Heap_FreeToHeap(param1->unk_290);
        Heap_FreeToHeap(param1);

        return 1;
    }

    return 0;
}

static void ov7_0224D388(FieldSystem *fieldSystem, ShopMenu *param1)
{
    Bg_FillTilemapRect(param1->bgConfig, 3, 0, 2 - 2, 19 - 1, 27 + 5, 4 + 2, 0);

    ov7_0224D21C(param1);
    ov7_0224D3E8(param1);

    param1->camera = Camera_Alloc(HEAP_ID_FIELDMAP);

    Camera_Copy(fieldSystem->camera, param1->camera);
    Camera_SetAsActive(param1->camera);

    param1->unk_2A5 = 0;
}

static void ov7_0224D3E8(ShopMenu *param0)
{
    u32 i;

    for (i = 0; i < SHOP_WINDOW_MAX; i++) {
        if ((param0->martType != MART_TYPE_NORMAL) && (param0->martType != 3) && (i == SHOP_WINDOW_ITEM_DESCRIPTION)) {
            Window_AddFromTemplate(param0->bgConfig, &param0->windows[i], &sShop_NormalItemDescWindowTemplate);
        } else if ((param0->martType == MART_TYPE_FRONTIER) && (i == SHOP_WINDOW_CURRENT_MONEY)) {
            Window_AddFromTemplate(param0->bgConfig, &param0->windows[i], &sShop_FrontierCurrMoneyWindowTemplate);
        } else {
            Window_AddFromTemplate(param0->bgConfig, &param0->windows[i], &sShop_DefaultWindowTemplates[i]);
        }
    }
}

static void ov7_0224D44C(ShopMenu *param0)
{
    u32 v0;

    Window_EraseStandardFrame(&param0->windows[2], 1);

    for (v0 = 0; v0 < 6; v0++) {
        Window_ClearAndCopyToVRAM(&param0->windows[v0]);
        Window_Remove(&param0->windows[v0]);
    }
}

static void ov7_0224D474(ShopMenu *param0)
{
    NARC *v0;

    v0 = NARC_ctor(NARC_INDEX_GRAPHIC__SHOP_GRA, HEAP_ID_FIELDMAP);

    Graphics_LoadTilesToBgLayerFromOpenNARC(v0, 0, param0->bgConfig, 1, 0, 0, 0, HEAP_ID_FIELDMAP);

    if ((param0->martType == MART_TYPE_NORMAL) || (param0->martType == MART_TYPE_FRONTIER)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 2, param0->bgConfig, 1, 0, 0, 0, HEAP_ID_FIELDMAP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(v0, 3, param0->bgConfig, 1, 0, 0, 0, HEAP_ID_FIELDMAP);
    }

    if (param0->martType == MART_TYPE_FRONTIER) {
        Graphics_LoadPaletteFromOpenNARC(v0, 11, 0, 0, 32, HEAP_ID_FIELDMAP);
    } else {
        Graphics_LoadPaletteFromOpenNARC(v0, 1, 0, 0, 32, HEAP_ID_FIELDMAP);
    }

    LoadStandardWindowGraphics(param0->bgConfig, 3, (1 + (18 + 12)), 11, 0, HEAP_ID_FIELDMAP);
    LoadMessageBoxGraphics(param0->bgConfig, 3, 1, 10, Options_Frame(param0->options), HEAP_ID_FIELDMAP);
    NARC_dtor(v0);
}

static void ov7_0224D548(ShopMenu *param0)
{
    param0->unk_2A0 = GXLayers_EngineAGetLayers();
    param0->unk_29C[0] = Bg_GetPriority(param0->bgConfig, 0);
    param0->unk_29C[1] = Bg_GetPriority(param0->bgConfig, 1);
    param0->unk_29C[2] = Bg_GetPriority(param0->bgConfig, 2);
    param0->unk_29C[3] = Bg_GetPriority(param0->bgConfig, 3);

    Bg_SetPriority(0, 3);
    Bg_SetPriority(1, 2);
    Bg_SetPriority(2, 1);
    Bg_SetPriority(3, 0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, 1);
}

static void ov7_0224D5D8(ShopMenu *param0)
{
    Bg_SetPriority(0, param0->unk_29C[0]);
    Bg_SetPriority(1, param0->unk_29C[1]);
    Bg_SetPriority(2, param0->unk_29C[2]);
    Bg_SetPriority(3, param0->unk_29C[3]);
    GXLayers_EngineASetLayers(param0->unk_2A0);
}

static u8 ov7_0224D620(ShopMenu *param0)
{
    if (param0->unk_2A5 != param0->unk_2A6) {
        VecFx32 v0 = { 8 * FX32_ONE, 0, 0 };

        Camera_Move(&v0, param0->camera);
        param0->unk_2A5++;
        return 3;
    }

    param0->unk_2A5 = 0;
    MI_CpuClear32((void *)HW_BG_VRAM, HW_BG_VRAM_SIZE);

    ov7_0224EAD0(param0);
    ov7_0224D474(param0);
    ov7_0224D548(param0);
    ov7_0224D6BC(param0);
    ov7_0224DAF8(param0, 0);

    return 4;
}

static const ListMenuTemplate sShop_ItemListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = ov7_0224D85C,
    .printCallback = ov7_0224D9B8,
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
    .lineSpacing = 16, // truncates to 0 but needed to match, unused as its set to 0 anyways
    .pagerMode = PAGER_MODE_NONE,
    .fontID = FONT_SYSTEM,
    .cursorType = 1,
    .parent = NULL,
};

static u32 ov7_0224D698(ShopMenu *param0, u16 param1)
{
    if (param0->martType == MART_TYPE_DECOR) {
        return 1 + param1 - 1;
    } else if (param0->martType == MART_TYPE_SEAL) {
        return (u32)sub_02098164((u8)param1);
    }

    return (u32)param1;
}

static void ov7_0224D6BC(ShopMenu *param0)
{
    MessageLoader *v0;
    Strbuf *v1;
    ListMenuTemplate v2;
    u32 v3;
    u32 v4;
    MessageLoader *v5;
    BOOL v6 = 0;

    if ((param0->martType == MART_TYPE_NORMAL) || (param0->martType == MART_TYPE_FRONTIER)) {
        v0 = MessageLoader_Init(0, 26, 392, HEAP_ID_FIELDMAP);
        v5 = MessageLoader_Init(0, 26, 647, HEAP_ID_FIELDMAP);
    } else if (param0->martType == MART_TYPE_DECOR) {
        v0 = MessageLoader_Init(0, 26, 626, HEAP_ID_FIELDMAP);
    } else {
        v0 = MessageLoader_Init(0, 26, 12, HEAP_ID_FIELDMAP);
    }

    param0->itemsList = StringList_New(param0->itemsCount + 1, HEAP_ID_FIELDMAP);

    for (v3 = 0; v3 < param0->itemsCount; v3++) {
        v4 = ov7_0224D698(param0, param0->unk_290[v3]);

        if ((v4 <= 420) && (v4 >= 328)) {
            v1 = MessageLoader_GetNewStrbuf(v5, Item_MoveForTMHM(v4));
            StringList_AddFromStrbuf(param0->itemsList, v1, param0->unk_290[v3]);
            Strbuf_Free(v1);

            v6 = 1;
        } else {
            v1 = MessageLoader_GetNewStrbuf(v0, v4);
            StringList_AddFromStrbuf(param0->itemsList, v1, param0->unk_290[v3]);
            Strbuf_Free(v1);
        }
    }

    if (v6) {
        StringList_AddFromMessageBank(param0->itemsList, param0->unk_88, 26, 0xfffffffe);
    } else {
        StringList_AddFromMessageBank(param0->itemsList, param0->unk_88, 8, 0xfffffffe);
    }

    MessageLoader_Free(v0);

    if ((param0->martType == MART_TYPE_NORMAL) || (param0->martType == MART_TYPE_FRONTIER)) {
        MessageLoader_Free(v5);
    }

    v2 = sShop_ItemListMenuTemplate;

    if ((v4 <= 420) && (v4 >= 328)) {
        v2.textXOffset = 35;
    } else {
        v2.textXOffset = 0;
    }

    v2.choices = param0->itemsList;
    v2.window = &param0->windows[0];
    v2.count = param0->itemsCount + 1;
    v2.parent = (void *)param0;

    param0->menu = ListMenu_New(&v2, 0, 0, HEAP_ID_FIELDMAP);
}

static void ov7_0224D85C(ListMenu *param0, u32 param1, u8 param2)
{
    ShopMenu *v0 = (ShopMenu *)ListMenu_GetAttribute(param0, 19);

    if (param2 != 1) {
        Sound_PlayEffect(1592);
    }

    Window_FillTilemap(&v0->windows[1], 0);

    if (param1 != 0xfffffffe) {
        Strbuf *v1;

        if (v0->martType == MART_TYPE_NORMAL) {
            v1 = Strbuf_Init(130, HEAP_ID_FIELDMAP);
            Item_LoadDescription(v1, (u16)param1, HEAP_ID_FIELDMAP);
        } else if (v0->martType == MART_TYPE_FRONTIER) {
            v1 = Strbuf_Init(130, HEAP_ID_FIELDMAP);
            Item_LoadDescription(v1, (u16)param1, HEAP_ID_FIELDMAP);
        } else if (v0->martType == MART_TYPE_DECOR) {
            MessageLoader *v2;

            v2 = MessageLoader_Init(0, 26, 626, HEAP_ID_FIELDMAP);
            v1 = MessageLoader_GetNewStrbuf(v2, 139 + param1 - 1);
            MessageLoader_Free(v2);
        } else {
            MessageLoader *v3;

            v3 = MessageLoader_Init(0, 26, 542, HEAP_ID_FIELDMAP);
            v1 = MessageLoader_GetNewStrbuf(v3, sub_020981F4((u8)param1));

            MessageLoader_Free(v3);
        }

        Text_AddPrinterWithParamsAndColor(&v0->windows[1], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(15, 14, 0), NULL);
        Strbuf_Free(v1);

        ov7_0224EB7C(v0, (u16)param1);
    } else {
        ov7_0224EB7C(v0, 0xffff);
    }

    {
        u32 v4;
        u16 v5, v6;

        ListMenu_GetListAndCursorPos(param0, &v5, &v6);

        if (v5 == 0) {
            Sprite_SetDrawFlag(v0->unk_25C[0], 0);
        } else {
            Sprite_SetDrawFlag(v0->unk_25C[0], 1);
        }

        v4 = ListMenu_GetAttribute(param0, 2);

        if ((v4 > 7) && (v4 > v5 + 7)) {
            Sprite_SetDrawFlag(v0->unk_25C[1], 1);
        } else {
            Sprite_SetDrawFlag(v0->unk_25C[1], 0);
        }
    }
    Window_ScheduleCopyToVRAM(&v0->windows[1]);
}

static void ov7_0224D9B8(ListMenu *param0, u32 param1, u8 param2)
{
    ShopMenu *v0 = (ShopMenu *)ListMenu_GetAttribute(param0, 19);

    if (param1 != 0xfffffffe) {
        Strbuf *v1;
        Strbuf *v2;
        u32 v3;
        u32 v4;
        u16 v5 = (u16)param1;

        if ((v5 <= 420) && (v5 >= 328)) {
            v5 = v5 - 328 + 1;

            sub_0200C648(v0->unk_2B4, 2, v5, 2, 2, &v0->windows[0], 0, param2 + 4);
        }

        v3 = ov7_0224E890(v0, (u16)param1);
        v1 = Strbuf_Init(12, HEAP_ID_FIELDMAP);

        if (v0->martType == MART_TYPE_FRONTIER) {
            v2 = MessageLoader_GetNewStrbuf(v0->unk_88, 32);
        } else {
            v2 = MessageLoader_GetNewStrbuf(v0->unk_88, 9);
        }

        StringTemplate_SetNumber(v0->unk_8C, 0, v3, 4, 1, 1);
        StringTemplate_Format(v0->unk_8C, v1, v2);

        v4 = Font_CalcStrbufWidth(FONT_SYSTEM, v1, 0);

        Text_AddPrinterWithParamsAndColor(&v0->windows[0], FONT_SYSTEM, v1, (19 * 8) - v4, param2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v2);
        Strbuf_Free(v1);
    }

    if (param1 == 0xfffffffe) {
        Strbuf *v6 = MessageLoader_GetNewStrbuf(v0->unk_88, 8);

        Window_FillRectWithColor(&v0->windows[0], 15, 0, param2, 19 * 8, 16);
        Text_AddPrinterWithParamsAndColor(&v0->windows[0], FONT_SYSTEM, v6, 0, param2, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        Strbuf_Free(v6);
    }
}

static void ov7_0224DAF8(ShopMenu *param0, u8 param1)
{
    Strbuf *v0;
    Strbuf *v1;
    u32 v2;
    u32 v3;

    if (param0->martType == MART_TYPE_FRONTIER) {
        if (param1 == 0) {
            Window_FillTilemap(&param0->windows[2], 15);
            Window_DrawStandardFrame(
                &param0->windows[2], 1, (1 + (18 + 12)), 11);
        } else {
            Window_FillRectWithColor(&param0->windows[2], 15, 0, 0, (9 * 8), 16);
        }

        v0 = Strbuf_Init(16, HEAP_ID_FIELDMAP);
        v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 38);
        v2 = ov7_0224E8F4(param0);

        StringTemplate_SetNumber(param0->unk_8C, 0, v2, 6, 1, 1);
        StringTemplate_Format(param0->unk_8C, v0, v1);

        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

        Text_AddPrinterWithParams(&param0->windows[2], FONT_SYSTEM, v0, (9 * 8) - v3 - 8, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    } else {
        if (param1 == 0) {
            Window_FillTilemap(&param0->windows[2], 15);
            Window_DrawStandardFrame(&param0->windows[2], 1, (1 + (18 + 12)), 11);

            v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 18);

            Text_AddPrinterWithParams(&param0->windows[2], FONT_SYSTEM, v1, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
            Strbuf_Free(v1);
        } else {
            Window_FillRectWithColor(&param0->windows[2], 15, 0, 16, (9 * 8), 16);
        }

        v0 = Strbuf_Init(16, HEAP_ID_FIELDMAP);
        v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 19);
        v2 = ov7_0224E8F4(param0);

        StringTemplate_SetNumber(param0->unk_8C, 0, v2, 6, 1, 1);
        StringTemplate_Format(param0->unk_8C, v0, v1);

        v3 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

        Text_AddPrinterWithParams(&param0->windows[2], FONT_SYSTEM, v0, (9 * 8) - v3, 16, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    Strbuf_Free(v1);
    Strbuf_Free(v0);
    Window_ScheduleCopyToVRAM(&param0->windows[2]);
}

static u8 ov7_0224DC84(ShopMenu *param0)
{
    u32 v0;
    u16 v1, v2;

    ListMenu_GetListAndCursorPos(param0->menu, NULL, &v1);
    v0 = ListMenu_ProcessInput(param0->menu);
    ListMenu_GetListAndCursorPos(param0->menu, NULL, &v2);

    if (v1 != v2) {
        Sprite_SetPositionXY(param0->unk_25C[2], (176 - 4), 24 + v2 * 16);
    }

    switch (v0) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        ListMenu_Free(param0->menu, NULL, NULL);
        StringList_Free(param0->itemsList);
        ov7_0224D44C(param0);
        ov7_0224D5D8(param0);
        Bg_ClearTilemap(param0->bgConfig, 1);
        Sound_PlayEffect(1500);
        return 12;

    default: {
        Strbuf *v3;
        u32 v4;

        param0->unk_26C[0] = (u16)Sprite_GetDrawFlag(param0->unk_25C[0]);
        param0->unk_26C[1] = (u16)Sprite_GetDrawFlag(param0->unk_25C[1]);

        Sprite_SetDrawFlag(param0->unk_25C[0], 0);
        Sprite_SetDrawFlag(param0->unk_25C[1], 0);

        ov7_0224EC10(param0, 1);

        Window_FillTilemap(&param0->windows[5], 15);
        Window_ClearAndCopyToVRAM(&param0->windows[1]);
        Window_DrawMessageBoxWithScrollCursor(&param0->windows[5], 0, 1, 10);

        param0->unk_2AA = (u16)v0;
        param0->unk_2AC = 1;
        param0->unk_2B0 = ov7_0224E890(param0, param0->unk_2AA);

        v4 = ov7_0224E8F4(param0);

        if (v4 < param0->unk_2B0) {
            if (param0->martType == MART_TYPE_FRONTIER) {
                v3 = MessageLoader_GetNewStrbuf(param0->unk_88, 37);
            } else {
                v3 = MessageLoader_GetNewStrbuf(param0->unk_88, 3);
            }

            StringTemplate_Format(param0->unk_8C, param0->strbuf, v3);
            Strbuf_Free(v3);

            param0->unk_2A4 = FieldMessage_Print(&param0->windows[5], param0->strbuf, param0->options, 1);
            return 10;
        }

        if (param0->martType == MART_TYPE_DECOR) {
            Sound_PlayEffect(1500);

            return ov7_0224E098(param0);
        }

        param0->unk_2AE = v4 / param0->unk_2B0;

        if (param0->unk_2AE > 99) {
            param0->unk_2AE = 99;
        }

        ov7_0224E834(param0, param0->unk_2AA, 0);

        if (param0->martType == MART_TYPE_FRONTIER) {
            v3 = MessageLoader_GetNewStrbuf(param0->unk_88, 33);
        } else {
            v3 = MessageLoader_GetNewStrbuf(param0->unk_88, 4);
        }

        StringTemplate_Format(param0->unk_8C, param0->strbuf, v3);
        Strbuf_Free(v3);

        param0->unk_2A4 = FieldMessage_Print(&param0->windows[5], param0->strbuf, param0->options, 1);

        ov7_0224EB38(param0, 1);
        Sound_PlayEffect(1500);

        return 5;
    }
    }

    return 4;
}

static u8 ov7_0224DE94(ShopMenu *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 5;
    }

    ov7_0224DED4(param0);
    ov7_0224E28C(param0, 0);

    Sprite_SetDrawFlag(param0->unk_25C[0], 1);
    Sprite_SetDrawFlag(param0->unk_25C[1], 1);

    return 6;
}

static void ov7_0224DED4(ShopMenu *param0)
{
    Strbuf *v0;
    Strbuf *v1;
    u16 v2;

    if (param0->martType == MART_TYPE_NORMAL) {
        v2 = Bag_GetItemQuantity(param0->inventory, param0->unk_2AA, HEAP_ID_FIELDMAP);
    } else if (param0->martType == MART_TYPE_FRONTIER) {
        v2 = Bag_GetItemQuantity(param0->inventory, param0->unk_2AA, HEAP_ID_FIELDMAP);
    } else if (param0->martType == MART_TYPE_SEAL) {
        v2 = sub_0202CBC8(param0->inventory, param0->unk_2AA);
    } else {
        v2 = 0;
    }

    Window_FillTilemap(&param0->windows[4], 15);
    Window_DrawStandardFrame(&param0->windows[4], 1, (1 + (18 + 12)), 11);

    v0 = Strbuf_Init((12 * 2), HEAP_ID_FIELDMAP);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 20);

    StringTemplate_SetNumber(param0->unk_8C, 0, v2, 3, 1, 1);
    StringTemplate_Format(param0->unk_8C, v0, v1);
    Text_AddPrinterWithParams(&param0->windows[4], FONT_SYSTEM, v0, 0, 0, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v0);
    Window_ScheduleCopyToVRAM(&param0->windows[4]);
}

static u8 ov7_0224DFB0(ShopMenu *param0)
{
    if (sub_0208C15C(&param0->unk_2AC, param0->unk_2AE) != 0) {
        Sound_PlayEffect(1592);
        ov7_0224E28C(param0, 1);
        return 6;
    }

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        Sprite_SetDrawFlag(param0->unk_25C[0], 0);
        Sprite_SetDrawFlag(param0->unk_25C[1], 0);
        Window_EraseStandardFrame(&param0->windows[4], 1);
        Window_EraseStandardFrame(&param0->windows[3], 1);
        Window_FillTilemap(&param0->windows[5], 15);
        Sound_PlayEffect(1500);

        return ov7_0224E098(param0);
    }

    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        Window_EraseStandardFrame(&param0->windows[4], 1);
        Window_EraseStandardFrame(&param0->windows[3], 1);
        Window_EraseMessageBox(&param0->windows[5], 0);

        ov7_0224EB38(param0, 0);

        Sprite_SetDrawFlag(param0->unk_25C[0], param0->unk_26C[0]);
        Sprite_SetDrawFlag(param0->unk_25C[1], param0->unk_26C[1]);

        ov7_0224EC10(param0, 0);

        Window_ScheduleCopyToVRAM(&param0->windows[1]);
        Sound_PlayEffect(1500);

        return 4;
    }

    return 6;
}

static u8 ov7_0224E098(ShopMenu *param0)
{
    Strbuf *v0;
    BOOL v1;

    if (param0->martType == MART_TYPE_NORMAL) {
        v1 = Bag_CanFitItem(param0->inventory, param0->unk_2AA, param0->unk_2AC, HEAP_ID_FIELDMAP);
    } else if (param0->martType == MART_TYPE_FRONTIER) {
        v1 = Bag_CanFitItem(param0->inventory, param0->unk_2AA, param0->unk_2AC, HEAP_ID_FIELDMAP);
    } else if (param0->martType == MART_TYPE_DECOR) {
        if (sub_020289A0(param0->inventory) == 200) {
            v1 = 0;
        } else {
            v1 = 1;
        }
    } else {
        v1 = sub_0202CB70(param0->inventory, param0->unk_2AA, param0->unk_2AC);
    }

    if (v1 == 0) {
        param0->unk_2AC = 0;

        if (param0->martType == MART_TYPE_NORMAL) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 7);
        } else if (param0->martType == MART_TYPE_FRONTIER) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 7);
        } else if (param0->martType == MART_TYPE_DECOR) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 12);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 14);
        }

        StringTemplate_Format(param0->unk_8C, param0->strbuf, v0);
        Strbuf_Free(v0);

        param0->unk_2A4 = FieldMessage_Print(&param0->windows[5], param0->strbuf, param0->options, 1);
        return 10;
    }

    ov7_0224E834(param0, param0->unk_2AA, 0);

    StringTemplate_SetNumber(param0->unk_8C, 1, param0->unk_2AC, 2, 0, 1);
    StringTemplate_SetNumber(param0->unk_8C, 2, param0->unk_2B0 * param0->unk_2AC, 6, 0, 1);

    if ((param0->unk_2AA <= 420) && (param0->unk_2AA >= 328)) {
        u16 v2 = Item_MoveForTMHM(param0->unk_2AA);

        StringTemplate_SetMoveName(param0->unk_8C, 3, v2);

        if (param0->martType == MART_TYPE_FRONTIER) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 36);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 27);
        }
    } else {
        if (param0->martType == MART_TYPE_FRONTIER) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 35);
        } else {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 5);
        }
    }

    StringTemplate_Format(param0->unk_8C, param0->strbuf, v0);
    Strbuf_Free(v0);

    param0->unk_2A4 = FieldMessage_Print(&param0->windows[5], param0->strbuf, param0->options, 1);
    return 7;
}

static void ov7_0224E28C(ShopMenu *param0, u8 param1)
{
    Strbuf *v0;
    Strbuf *v1;
    u32 v2;

    Window_FillTilemap(&param0->windows[3], 15);

    if (param1 == 0) {
        Window_DrawStandardFrame(&param0->windows[3], 1, (1 + (18 + 12)), 11);
    }

    v0 = Strbuf_Init(24, HEAP_ID_FIELDMAP);
    v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 21);

    StringTemplate_SetNumber(param0->unk_8C, 0, param0->unk_2AC, 2, 2, 1);
    StringTemplate_Format(param0->unk_8C, v0, v1);
    Text_AddPrinterWithParams(&param0->windows[3], FONT_SYSTEM, v0, 0, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);

    if (param0->martType == MART_TYPE_FRONTIER) {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 34);
    } else {
        v1 = MessageLoader_GetNewStrbuf(param0->unk_88, 22);
    }

    StringTemplate_SetNumber(param0->unk_8C, 0, param0->unk_2B0 * param0->unk_2AC, 6, 1, 1);
    StringTemplate_Format(param0->unk_8C, v0, v1);

    v2 = Font_CalcStrbufWidth(FONT_SYSTEM, v0, 0);

    Text_AddPrinterWithParams(&param0->windows[3], FONT_SYSTEM, v0, (12 * 8) - v2, 8, TEXT_SPEED_NO_TRANSFER, NULL);
    Strbuf_Free(v1);
    Strbuf_Free(v0);
    Window_ScheduleCopyToVRAM(&param0->windows[3]);
}

static u8 ov7_0224E3A0(ShopMenu *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 7;
    }

    param0->yesNoChoice = Menu_MakeYesNoChoice(param0->bgConfig, &sShop_YesNoChoiceWindowTemplate, (1 + (18 + 12)), 11, HEAP_ID_FIELDMAP);
    return 8;
}

static u8 ov7_0224E3D8(ShopMenu *param0)
{
    switch (Menu_ProcessInputAndHandleExit(param0->yesNoChoice, HEAP_ID_FIELDMAP)) {
    case 0: {
        Strbuf *v0;

        if (param0->martType == MART_TYPE_NORMAL) {
            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 6);

            if (param0->unk_2AC == 1) {
                StringTemplate_SetItemName(param0->unk_8C, 0, param0->unk_2AA);
            } else {
                StringTemplate_SetItemNamePlural(param0->unk_8C, 0, param0->unk_2AA);
            }

            StringTemplate_SetBagPocketName(param0->unk_8C, 1, Item_LoadParam(param0->unk_2AA, 5, HEAP_ID_FIELDMAP));
        } else if (param0->martType == MART_TYPE_FRONTIER) {
            if (param0->unk_2AC == 1) {
                StringTemplate_SetItemName(param0->unk_8C, 0, param0->unk_2AA);
            } else {
                StringTemplate_SetItemNamePlural(param0->unk_8C, 0, param0->unk_2AA);
            }

            v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 6);
            StringTemplate_SetBagPocketName(param0->unk_8C, 1, Item_LoadParam(param0->unk_2AA, 5, HEAP_ID_FIELDMAP));
        } else {
            if (param0->martType == MART_TYPE_DECOR) {
                ov7_0224E834(param0, param0->unk_2AA, 0);
                v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 11);
            } else {
                if (param0->unk_2AC == 1) {
                    StringTemplate_SetBallSealName(param0->unk_8C, 0, sub_02098164((u8)param0->unk_2AA));
                } else {
                    StringTemplate_SetBallSealNamePlural(param0->unk_8C, 0, sub_02098164((u8)param0->unk_2AA));
                }

                v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 13);
            }
        }

        StringTemplate_Format(param0->unk_8C, param0->strbuf, v0);
        Strbuf_Free(v0);
    }
        Window_FillTilemap(&param0->windows[5], 15);
        param0->unk_2A4 = FieldMessage_Print(&param0->windows[5], param0->strbuf, param0->options, 1);
        Sound_PlayEffect(1604);
        return 9;
    case 0xfffffffe:
        Window_EraseMessageBox(&param0->windows[5], 0);
        ov7_0224EB38(param0, 0);
        Sprite_SetDrawFlag(param0->unk_25C[0], param0->unk_26C[0]);
        Sprite_SetDrawFlag(param0->unk_25C[1], param0->unk_26C[1]);
        ov7_0224EC10(param0, 0);
        Window_ScheduleCopyToVRAM(&param0->windows[1]);
        return 4;
    }

    return 8;
}

static u8 ov7_0224E5B0(ShopMenu *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 9;
    }

    if (param0->martType == MART_TYPE_NORMAL) {
        Bag_TryAddItem(param0->inventory, param0->unk_2AA, param0->unk_2AC, HEAP_ID_FIELDMAP);
        sub_0206D504(param0->saveData, param0->unk_2AA, param0->unk_2AC);
    } else if (param0->martType == MART_TYPE_FRONTIER) {
        Bag_TryAddItem(param0->inventory, param0->unk_2AA, param0->unk_2AC, HEAP_ID_FIELDMAP);
    } else if (param0->martType == MART_TYPE_DECOR) {
        sub_0202895C(param0->inventory, param0->unk_2AA);
    } else {
        sub_0202CAE0(param0->inventory, param0->unk_2AA, param0->unk_2AC);
    }

    ov7_0224E920(param0, param0->unk_2B0 * param0->unk_2AC);

    if (param0->martType == MART_TYPE_FRONTIER) {
        GameRecords_AddToRecordValue(param0->records, RECORD_UNK_069, param0->unk_2B0 * param0->unk_2AC);
    } else {
        GameRecords_AddToRecordValue(param0->records, RECORD_UNK_035, param0->unk_2B0 * param0->unk_2AC);
    }

    ov7_0224DAF8(param0, 1);

    if (param0->unk_2AC > 1) {
        param0->unk_2A7 = 2;
    } else {
        if (param0->unk_2A7 != 0xff) {
            param0->unk_2A7++;
        }
    }

    return 10;
}

static u8 ov7_0224E6B8(ShopMenu *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 10;
    }

    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        if (param0->incDeptStoreBuyCount == TRUE) {
            SystemVars_IncrementDepartmentStoreBuyCount(param0->varsFlags);
        }

        if (((param0->martType == MART_TYPE_NORMAL) || (param0->martType == MART_TYPE_FRONTIER)) && (param0->unk_2AA == 4) && (param0->unk_2AC >= 10)) {
            if (Bag_TryAddItem(param0->inventory, 12, 1, HEAP_ID_FIELDMAP) == 1) {
                Strbuf *v0 = MessageLoader_GetNewStrbuf(param0->unk_88, 10);

                StringTemplate_Format(param0->unk_8C, param0->strbuf, v0);
                Strbuf_Free(v0);
                Window_FillTilemap(&param0->windows[5], 15);

                param0->unk_2A4 = FieldMessage_Print(&param0->windows[5], param0->strbuf, param0->options, 1);

                {
                    GameRecords *v1 = SaveData_GetGameRecordsPtr(param0->saveData);
                    GameRecords_IncrementRecordValue(v1, RECORD_UNK_050);
                }

                return 11;
            }
        }

        Window_EraseMessageBox(&param0->windows[5], 0);
        ov7_0224EB38(param0, 0);
        Sprite_SetDrawFlag(param0->unk_25C[0], param0->unk_26C[0]);
        Sprite_SetDrawFlag(param0->unk_25C[1], param0->unk_26C[1]);
        ov7_0224EC10(param0, 0);
        Window_ScheduleCopyToVRAM(&param0->windows[1]);

        return 4;
    }

    return 10;
}

static u8 ov7_0224E7C8(ShopMenu *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 11;
    }

    if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        Window_EraseMessageBox(&param0->windows[5], 0);
        ov7_0224EB38(param0, 0);
        Sprite_SetDrawFlag(param0->unk_25C[0], param0->unk_26C[0]);
        Sprite_SetDrawFlag(param0->unk_25C[1], param0->unk_26C[1]);
        ov7_0224EC10(param0, 0);
        Window_ScheduleCopyToVRAM(&param0->windows[1]);

        return 4;
    }

    return 11;
}

static void ov7_0224E834(ShopMenu *param0, u16 param1, u16 param2)
{
    if (param0->martType == MART_TYPE_NORMAL) {
        StringTemplate_SetItemName(param0->unk_8C, param2, param1);
    } else if (param0->martType == MART_TYPE_FRONTIER) {
        StringTemplate_SetItemName(param0->unk_8C, param2, param1);
    } else if (param0->martType == MART_TYPE_DECOR) {
        StringTemplate_SetUndergroundGoodsName(param0->unk_8C, param2, param1);
    } else {
        StringTemplate_SetBallSealName(param0->unk_8C, param2, sub_02098164((u8)param1));
    }
}

static u32 ov7_0224E890(ShopMenu *param0, u16 param1)
{
    if (param0->martType == MART_TYPE_NORMAL) {
        return Item_LoadParam(param1, 0, HEAP_ID_FIELDMAP);
    } else if (param0->martType == MART_TYPE_FRONTIER) {
        return ov7_0224E8CC(param0, param1);
    } else if (param0->martType == MART_TYPE_DECOR) {
        return sub_0205745C((const int)param1);
    }

    return sub_020981D0((u8)param1);
}

static u16 ov7_0224E8CC(ShopMenu *param0, u16 param1)
{
    int v0;
    static const u16 v1[][2] = {
        { 46, 1 },
        { 49, 1 },
        { 47, 1 },
        { 52, 1 },
        { 48, 1 },
        { 45, 1 },
        { 289, 16 },
        { 290, 16 },
        { 291, 16 },
        { 292, 16 },
        { 293, 16 },
        { 294, 16 },
        { 272, 16 },
        { 273, 16 },
        { 214, 32 },
        { 271, 32 },
        { 213, 48 },
        { 220, 48 },
        { 230, 48 },
        { 232, 48 },
        { 266, 48 },
        { 275, 48 },
        { 287, 48 },
        { 326, 48 },
        { 327, 48 },
        { 50, 48 },
        { 333, 32 },
        { 400, 32 },
        { 388, 32 },
        { 372, 32 },
        { 367, 40 },
        { 358, 40 },
        { 335, 48 },
        { 331, 48 },
        { 408, 64 },
        { 357, 64 },
        { 380, 64 },
        { 363, 80 },
        { 386, 80 },
        { 398, 80 },
        { 353, 80 }
    };

    for (v0 = 0; v0 < (NELEMS(v1)); v0++) {
        if (v1[v0][0] == param1) {
            return v1[v0][1];
        }
    }

    return 0;
}

u32 ov7_0224E8F4(ShopMenu *param0)
{
    if (param0->martType == MART_TYPE_FRONTIER) {
        return sub_0202D230(sub_0202D750(param0->saveData), 0, 0);
    } else {
        return TrainerInfo_Money(param0->trainerInfo);
    }
}

void ov7_0224E920(ShopMenu *param0, u32 param1)
{
    if (param0->martType == MART_TYPE_FRONTIER) {
        sub_0202D230(sub_0202D750(param0->saveData), (u16)param1, 6);
    } else {
        TrainerInfo_TakeMoney(param0->trainerInfo, param1);
    }
}

static u8 ov7_0224E950(FieldSystem *fieldSystem, ShopMenu *param1)
{
    if (param1->unk_2A5 != param1->unk_2A6) {
        VecFx32 v0 = { -8 * FX32_ONE, 0, 0 };

        Camera_Move(&v0, param1->camera);
        param1->unk_2A5++;
        return 12;
    }

    param1->unk_2A5 = 0;

    Camera_Copy(param1->camera, fieldSystem->camera);
    Camera_Delete(param1->camera);
    Camera_SetAsActive(fieldSystem->camera);

    ov7_0224EB14(param1);

    if (param1->martType == MART_TYPE_FRONTIER) {
        return 19;
    }

    FieldMessage_AddWindow(fieldSystem->bgConfig, &param1->windows[1], 3);
    FieldMessage_DrawWindow(&param1->windows[1], param1->options);

    {
        Strbuf *v1 = MessageLoader_GetNewStrbuf(param1->unk_88, 2);

        StringTemplate_Format(param1->unk_8C, param1->strbuf, v1);
        Strbuf_Free(v1);
    }

    param1->unk_2A4 = FieldMessage_Print(&param1->windows[1], param1->strbuf, param1->options, 1);

    return 13;
}

static u8 ov7_0224EA2C(ShopMenu *param0)
{
    if (FieldMessage_FinishedPrinting(param0->unk_2A4) == 0) {
        return 13;
    }

    Window_Remove(&param0->windows[1]);
    ov7_0224D040(param0);

    return 1;
}

static void ov7_0224EA54(FieldSystem *fieldSystem, ShopMenu *param1)
{
    Strbuf *v0;

    if (param1->martType == MART_TYPE_FRONTIER) {
        v0 = MessageLoader_GetNewStrbuf(param1->unk_88, 31);
    } else {
        v0 = MessageLoader_GetNewStrbuf(param1->unk_88, 1);
    }

    StringTemplate_Format(param1->unk_8C, param1->strbuf, v0);
    Strbuf_Free(v0);
    FieldMessage_AddWindow(fieldSystem->bgConfig, &param1->windows[1], 3);
    FieldMessage_DrawWindow(&param1->windows[1], param1->options);

    param1->unk_2A4 = FieldMessage_Print(&param1->windows[1], param1->strbuf, param1->options, 1);
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

// sSummaryScreenSpriteTemplates
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

static void ov7_0224EAD0(ShopMenu *param0)
{
    u32 v0;

    ov5_021D2F14(&param0->unk_94, &sShop_SpriteResourcePaths, 4, 11);

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_25C[v0] = ov5_021D3104(&param0->unk_94, &sShop_SpriteTemplates[v0]);
    }

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov7_0224EB14(ShopMenu *param0)
{
    u32 v0;

    for (v0 = 0; v0 < 4; v0++) {
        Sprite_Delete(param0->unk_25C[v0]);
    }

    ov5_021D30A8(&param0->unk_94);
}

static void ov7_0224EB38(ShopMenu *param0, u8 param1)
{
    if (param1 == 0) {
        Sprite_SetPositionXY(param0->unk_25C[0], 177, 8);
        Sprite_SetPositionXY(param0->unk_25C[1], 177, 132);
    } else {
        Sprite_SetPositionXY(param0->unk_25C[0], 162, 108);
        Sprite_SetPositionXY(param0->unk_25C[1], 162, 132);
    }
}

static void ov7_0224EB7C(ShopMenu *param0, u16 param1)
{
    SpriteResource *v0;

    if ((param0->martType != MART_TYPE_NORMAL) && (param0->martType != MART_TYPE_FRONTIER)) {
        Sprite_SetDrawFlag(param0->unk_25C[3], 0);
        return;
    }

    v0 = SpriteResourceCollection_Find(param0->unk_94.unk_194[0], 2);

    SpriteResourceCollection_ModifyTiles(param0->unk_94.unk_194[0], v0, 16, Item_FileID(param1, 1), 0, HEAP_ID_FIELDMAP);
    SpriteTransfer_RetransferCharData(v0);

    v0 = SpriteResourceCollection_Find(param0->unk_94.unk_194[1], 1);

    SpriteResourceCollection_ModifyPalette(param0->unk_94.unk_194[1], v0, 16, Item_FileID(param1, 2), 0, HEAP_ID_FIELDMAP);
    SpriteTransfer_ReplacePlttData(v0);
}

static void ov7_0224EC10(ShopMenu *param0, u8 param1)
{
    Sprite_SetExplicitPalette2(param0->unk_25C[2], param1);
}

static void ov7_0224EC20(FieldSystem *fieldSystem, ShopMenu *param1)
{
    ov5_021D1744(0);
    param1->state = 15;
}

static void ov7_0224EC38(FieldTask *param0)
{
    FieldSystem *fieldSystem;
    ShopMenu *v1;

    if (IsScreenTransitionDone() == 0) {
        return;
    }

    fieldSystem = FieldTask_GetFieldSystem(param0);
    v1 = FieldTask_GetEnv(param0);

    ov7_0224D21C(v1);

    {
        Bag *v2;

        v2 = SaveData_GetBag(fieldSystem->saveData);
        v1->unk_04 = sub_0207D824(v2, Unk_ov7_0224F49C, HEAP_ID_FIELDMAP);

        sub_0207CB2C(v1->unk_04, fieldSystem->saveData, 2, fieldSystem->unk_98);
    }

    sub_0203D1E4(fieldSystem, v1->unk_04);
    FieldTask_InitJump(param0, sub_0209AC14, v1);

    v1->state = 16;
}

static u8 ov7_0224EC9C(FieldSystem *fieldSystem, ShopMenu *param1)
{
    if (IsScreenTransitionDone() == 0) {
        return 18;
    }

    FieldMessage_AddWindow(fieldSystem->bgConfig, &param1->windows[1], 3);
    FieldMessage_DrawWindow(&param1->windows[1], param1->options);

    {
        Strbuf *v0 = MessageLoader_GetNewStrbuf(param1->unk_88, 2);

        StringTemplate_Format(param1->unk_8C, param1->strbuf, v0);
        Strbuf_Free(v0);
    }

    param1->unk_2A4 = FieldMessage_Print(&param1->windows[1], param1->strbuf, param1->options, 1);
    return 13;
}
