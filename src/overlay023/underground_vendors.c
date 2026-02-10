#include "overlay023/underground_vendors.h"

#include <nitro.h>
#include <string.h>

#include "constants/field_base_tiles.h"
#include "generated/goods.h"
#include "generated/traps.h"

#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay023/trap_prices.h"
#include "overlay023/treasure_prices.h"
#include "overlay023/underground_item_list_menu.h"
#include "overlay023/underground_manager.h"
#include "overlay023/underground_menu.h"
#include "overlay023/underground_text_printer.h"

#include "bg_window.h"
#include "comm_player_manager.h"
#include "communication_information.h"
#include "communication_system.h"
#include "field_system.h"
#include "goods.h"
#include "heap.h"
#include "list_menu.h"
#include "map_header_data.h"
#include "map_object.h"
#include "menu.h"
#include "message.h"
#include "pokedex.h"
#include "render_window.h"
#include "savedata.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "unk_0202854C.h"

#include "res/text/bank/underground_npcs.h"

#define TRAP_VENDOR_OPTIONS_START UndergroundNPCs_Text_GetTrap
#define GOOD_VENDOR_OPTIONS_START UndergroundNPCs_Text_GetGoods

#define RESULT_SPHERE_TOO_SMALL  0xFFFB
#define RESULT_BAG_FULL          0xFFFC
#define RESULT_WRONG_SPHERE_TYPE 0xFFFD

enum VendorType {
    VENDOR_TYPE_GOODS = 0,
    VENDOR_TYPE_TRAPS,
    VENDOR_TYPE_TREASURES,
};

enum ShopMenuState {
    SHOP_MENU_STATE_INTRO_MESSAGE = 0,
    SHOP_MENU_STATE_WAIT_FOR_TEXT,
    SHOP_MENU_STATE_INIT_OPTIONS_MENU,
    SHOP_MENU_STATE_OPTIONS_MENU,
    SHOP_MENU_STATE_INIT_BUY_MENU,
    SHOP_MENU_STATE_BUY_MENU,
    SHOP_MENU_STATE_BUY_WAIT_FOR_TEXT,
    SHOP_MENU_STATE_INIT_PAY_MENU,
    SHOP_MENU_STATE_PAY_MENU,
    SHOP_MENU_STATE_BUY_SUCCESS,
    SHOP_MENU_STATE_END_TRANSACTION,
    SHOP_MENU_STATE_11_UNUSED,
    SHOP_MENU_STATE_INIT_SELL_MENU,
    SHOP_MENU_STATE_SELL_MENU,
    SHOP_MENU_STATE_INIT_CONFIRM_SELL_MENU,
    SHOP_MENU_STATE_CONFIRM_SELL,
    SHOP_MENU_STATE_SELL_SUCCESS,
    SHOP_MENU_STATE_EXIT_MESSAGE,
    SHOP_MENU_STATE_EXIT_AFTER_TEXT,
};

typedef struct UndergroundVendor {
    u16 vendorType;
    u16 x;
    u16 z;
} UndergroundVendor;

static void UndergroundVendors_DrawPriceWindow(UndergroundMenu *menu);
static void UndergroundVendors_FreeMenu(UndergroundMenu *menu);

UndergroundVendor sUndergroundVendors[] = {
    { .vendorType = VENDOR_TYPE_GOODS, .x = 72, .z = 104 },
    { .vendorType = VENDOR_TYPE_GOODS, .x = 424, .z = 87 },
    { .vendorType = VENDOR_TYPE_GOODS, .x = 200, .z = 185 },
    { .vendorType = VENDOR_TYPE_GOODS, .x = 335, .z = 264 },
    { .vendorType = VENDOR_TYPE_GOODS, .x = 175, .z = 279 },
    { .vendorType = VENDOR_TYPE_GOODS, .x = 424, .z = 439 },
    { .vendorType = VENDOR_TYPE_GOODS, .x = 87, .z = 456 },
    { .vendorType = VENDOR_TYPE_GOODS, .x = 311, .z = 358 },
    { .vendorType = VENDOR_TYPE_TRAPS, .x = 232, .z = 87 },
    { .vendorType = VENDOR_TYPE_TRAPS, .x = 328, .z = 151 },
    { .vendorType = VENDOR_TYPE_TRAPS, .x = 232, .z = 215 },
    { .vendorType = VENDOR_TYPE_TRAPS, .x = 232, .z = 298 },
    { .vendorType = VENDOR_TYPE_TRAPS, .x = 279, .z = 328 },
    { .vendorType = VENDOR_TYPE_TRAPS, .x = 279, .z = 456 },
    { .vendorType = VENDOR_TYPE_TRAPS, .x = 183, .z = 392 },
    { .vendorType = VENDOR_TYPE_TRAPS, .x = 279, .z = 245 },
    { .vendorType = VENDOR_TYPE_TREASURES, .x = 40, .z = 471 },
    { .vendorType = VENDOR_TYPE_TREASURES, .x = 471, .z = 72 },
    { .vendorType = VENDOR_TYPE_TREASURES, .x = 471, .z = 471 },
    { .vendorType = VENDOR_TYPE_TREASURES, .x = 40, .z = 72 }
};

static const WindowTemplate sWindowTemplate = {
    .bgLayer = BG_LAYER_MAIN_3,
    .tilemapLeft = 25,
    .tilemapTop = 13,
    .width = 6,
    .height = 4,
    .palette = 13,
    .baseTile = BASE_TILE_MESSAGE_WINDOW - 6 * 4
};

static void UndergroundVendors_InitTrapsVendorInventory(UndergroundMenu *menu, int vendorIndex)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(menu->fieldSystem));

    MATHRandContext16 rand;
    MATH_InitRand16(&rand, Underground_GetRandomSeed(underground) + vendorIndex);

    int trapID;

    for (int i = 0; i < SHOP_INVENTORY_SIZE; i++) {
        if (i == 0) {
            trapID = TRAP_DIGGER_DRILL;
        } else {
            trapID = MATH_Rand16(&rand, TRAP_MAX - 1) + 1;
        }

        for (int j = 0; j < i; j++) {
            if (menu->shopInventory[j] == trapID) {
                trapID = TRAP_NONE;
            }
        }

        if (trapID == TRAP_NONE) {
            i--;
            continue;
        }
        int maxSize; // needs to be declared before below variable to match
        int minSize = TrapGetSpherePriceMinSize(trapID);
        maxSize = TrapGetSpherePriceMaxSize(trapID);

        if (minSize == 0 && maxSize == 0) {
            i--;
            continue;
        }

        menu->shopInventory[i] = trapID;
        menu->shopPriceTypes[i] = TrapGetSpherePriceType(trapID);

        if (menu->shopPriceTypes[i] == RANDOM_SPHERE_TYPE) {
            menu->shopPriceTypes[i] = MATH_Rand16(&rand, 6 - 1) + 1;
        }

        menu->shopPriceSizes[i] = MATH_Rand16(&rand, maxSize - minSize) + minSize;
    }
}

static void UndergroundVendors_InitGoodsVendorInventory(UndergroundMenu *menu, int vendorIndex)
{
    MATHRandContext16 rand;
    int maxSize, minSize;
    SaveData *saveData = FieldSystem_GetSaveData(menu->fieldSystem);
    Underground *underground = SaveData_GetUnderground(saveData);
    BOOL natDexObtained = Pokedex_IsNationalDexObtained(SaveData_GetPokedex(saveData));

    MATH_InitRand16(&rand, Underground_GetRandomSeed(underground) + vendorIndex);

    for (int i = 0; i < SHOP_INVENTORY_SIZE; i++) {
        int goodID = MATH_Rand16(&rand, UG_GOOD_MAX - 1) + 1;

        for (int j = 0; j < i; j++) {
            if (menu->shopInventory[j] == goodID) {
                goodID = UG_GOOD_NONE;
            }
        }

        if (goodID == UG_GOOD_NONE) {
            i--;
            continue;
        }

        menu->shopInventory[i] = goodID;
        menu->shopPriceTypes[i] = Good_GetSpherePriceType(goodID);

        if (!natDexObtained && Good_IsNatDexRequired(goodID) == TRUE) {
            i--;
            continue;
        }

        if (menu->shopPriceTypes[i] == SPHERE_NONE) {
            i--;
            continue;
        } else if (menu->shopPriceTypes[i] == RANDOM_SPHERE_TYPE) {
            menu->shopPriceTypes[i] = MATH_Rand16(&rand, 6 - 1) + 1;
        }

        minSize = Good_GetSpherePriceMinSize(goodID);
        maxSize = Good_GetSpherePriceMaxSize(goodID);

        menu->shopPriceSizes[i] = MATH_Rand16(&rand, maxSize - minSize) + minSize;
    }
}

static int UndergroundVendors_TryBuyItem(UndergroundMenu *menu, int itemSlot, int sphereSlot)
{
    BOOL itemAdded = FALSE;
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(menu->fieldSystem));

    if (menu->shopPriceTypes[itemSlot] != UndergroundMenu_GetSphereTypeAtSlot(sphereSlot, menu)) {
        return RESULT_WRONG_SPHERE_TYPE;
    }

    if (menu->shopPriceSizes[itemSlot] > UndergroundMenu_GetSphereSizeAtSlot(sphereSlot, menu)) {
        return RESULT_SPHERE_TOO_SMALL;
    }

    if (menu->vendorType == VENDOR_TYPE_TRAPS) {
        itemAdded = Underground_TryAddTrap(underground, menu->shopInventory[itemSlot]);
    } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
        itemAdded = Underground_TryAddGoodBag(underground, menu->shopInventory[itemSlot]);
    } else if (menu->vendorType == VENDOR_TYPE_TREASURES) {
        itemAdded = Underground_TryAddTreasure(underground, menu->shopInventory[itemSlot]);
    }

    if (itemAdded) {
        Underground_RemoveSphereAtSlot(underground, sphereSlot);
    } else {
        return RESULT_BAG_FULL;
    }

    return menu->shopInventory[itemSlot];
}

static void *UndergroundVendors_InitVendorOptionsMenu(UndergroundMenu *menu)
{
    int optionCount = 3;

    if (menu->vendorType == VENDOR_TYPE_TREASURES) {
        optionCount = 2;
    }

    UndergroundMenu_EraseCurrentMenu(menu);

    menu->menuOptions = StringList_New(optionCount, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 19, 3, 12, optionCount * 2, 13, BASE_TILE_MESSAGE_WINDOW - 12 * 6);
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    if (menu->vendorType == VENDOR_TYPE_TRAPS) {
        int baseBankEntry = TRAP_VENDOR_OPTIONS_START;
        UndergroundVendors_InitTrapsVendorInventory(menu, menu->vendorIndex);
        StringList_AddFromMessageBank(menu->menuOptions, UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), baseBankEntry, 0);
        StringList_AddFromMessageBank(menu->menuOptions, UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), baseBankEntry + 1, 1);
        StringList_AddFromMessageBank(menu->menuOptions, UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), baseBankEntry + 2, LIST_CANCEL);
    } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
        int baseBankEntry = GOOD_VENDOR_OPTIONS_START;
        UndergroundVendors_InitGoodsVendorInventory(menu, menu->vendorIndex);
        StringList_AddFromMessageBank(menu->menuOptions, UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), baseBankEntry, 0);
        StringList_AddFromMessageBank(menu->menuOptions, UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), baseBankEntry + 1, 1);
        StringList_AddFromMessageBank(menu->menuOptions, UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), baseBankEntry + 2, LIST_CANCEL);
    } else {
        StringList_AddFromMessageBank(menu->menuOptions, UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), UndergroundNPCs_Text_GiveTreasures, 0);
        StringList_AddFromMessageBank(menu->menuOptions, UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), UndergroundNPCs_Text_Cancel, LIST_CANCEL);
    }

    ListMenuTemplate template;
    MI_CpuCopy8(UndergroundTextPrinter_GetListMenuTemplate(), &template, sizeof(ListMenuTemplate));

    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;
    template.count = optionCount;
    template.maxDisplay = optionCount;

    menu->listMenuListPos = UndergroundMan_GetStoredListPos(UNDERGROUND_MENU_KEY_VENDOR_OPTIONS);
    menu->listMenuCursorPos = UndergroundMan_GetStoredCursorPos(UNDERGROUND_MENU_KEY_VENDOR_OPTIONS);

    UndergroundMenu_MoveListCursorPosInBounds(menu, template.maxDisplay, template.count);

    menu->listMenu = ListMenu_New(&template, menu->listMenuListPos, menu->listMenuCursorPos, HEAP_ID_FIELD1);
    menu->listMenuPos = menu->listMenuCursorPos;

    Window_CopyToVRAM(&menu->primaryWindow);

    return menu;
}

static void UndergroundVendors_PrintItemDescriptionAndBuyPrice(ListMenu *listMenu, u32 index, u8 onInit)
{
    UndergroundMenu *menu = (UndergroundMenu *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);

    Window_FillTilemap(&menu->secondaryWindow, 15);
    MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), UndergroundNPCs_Text_RequiredSphere + menu->isSelling, menu->string);
    Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, menu->string, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    if (index != LIST_CANCEL) {
        StringTemplate_SetUndergroundItemName(menu->template, 2, menu->shopPriceTypes[index]);
        StringTemplate_SetNumber(menu->template, 6, menu->shopPriceSizes[index], 2, PADDING_MODE_SPACES, CHARSET_MODE_EN);
        MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), UndergroundNPCs_Text_SphereTemplate, menu->string);
        StringTemplate_Format(menu->template, menu->fmtString, menu->string);
        Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, menu->fmtString, 1, 17, TEXT_SPEED_NO_TRANSFER, NULL);
    }

    Window_ScheduleCopyToVRAM(&menu->secondaryWindow);

    // make sure we have the right type of -2
    if (index == MENU_CANCELED) {
        index = LIST_CANCEL;
    }

    if (menu->vendorType == VENDOR_TYPE_TRAPS) {
        UndergroundMenu_PrintTrapDescription(listMenu, index, onInit);
    } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
        UndergroundMenu_PrintGoodDescription(listMenu, index, onInit);
    } else {
        UndergroundMenu_PrintTreasureDescription(listMenu, index, onInit);
    }
}

static void UndergroundVendors_PrintItemDescriptionAndSellPrice(ListMenu *listMenu, u32 index, u8 onInit)
{
    MATHRandContext16 rand;
    UndergroundMenu *menu = (UndergroundMenu *)ListMenu_GetAttribute(listMenu, LIST_MENU_PARENT);
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(menu->fieldSystem));
    int minSize, maxSize;
    int sphereType = SPHERE_NONE, sphereSize;

    Window_FillTilemap(&menu->secondaryWindow, 15);

    if (index != LIST_CANCEL) {
        if (menu->vendorType == VENDOR_TYPE_TRAPS) {
            const int trapID = UndergroundMenu_GetTrapAtSlot(index, menu);
            MATH_InitRand16(&rand, Underground_GetRandomSeed(underground) + menu->vendorIndex + trapID);
            sphereType = TrapGetSpherePriceType(trapID);

            if (sphereType == RANDOM_SPHERE_TYPE) {
                sphereType = MATH_Rand16(&rand, SPHERE_TYPE_MAX - 1) + 1;
            }

            minSize = TrapGetSpherePriceMinSize(trapID);
            maxSize = TrapGetSpherePriceMaxSize(trapID);
            sphereSize = MATH_Rand16(&rand, maxSize - minSize) + minSize;
            sphereSize /= 2;
        } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
            const int goodID = UndergroundMenu_GetGoodAtSlotBag(index, menu);
            MATH_InitRand16(&rand, Underground_GetRandomSeed(underground) + menu->vendorIndex + goodID);
            sphereType = Good_GetSpherePriceType(goodID);

            if (sphereType == RANDOM_SPHERE_TYPE) {
                sphereType = MATH_Rand16(&rand, SPHERE_TYPE_MAX - 1) + 1;
            }

            minSize = Good_GetSpherePriceMinSize(goodID);
            maxSize = Good_GetSpherePriceMaxSize(goodID);
            sphereSize = MATH_Rand16(&rand, maxSize - minSize) + minSize;
            sphereSize /= 2;
        } else {
            const int treasureID = UndergroundMenu_GetTreasureAtSlot(index, menu);
            MATH_InitRand16(&rand, Underground_GetRandomSeed(underground) + menu->vendorIndex + treasureID);
            sphereType = Treasure_GetSpherePriceType(treasureID);

            if (sphereType == RANDOM_SPHERE_TYPE) {
                sphereType = MATH_Rand16(&rand, SPHERE_TYPE_MAX - 1) + 1;
            }

            minSize = Treasure_GetSpherePriceMinSize(treasureID);
            maxSize = Treasure_GetSpherePriceMaxSize(treasureID);
            sphereSize = MATH_Rand16(&rand, maxSize - minSize) + minSize;
        }
    }

    MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), UndergroundNPCs_Text_RequiredSphere + menu->isSelling, menu->string);
    Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, menu->string, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);

    if (index != LIST_CANCEL) {
        if (sphereType != SPHERE_NONE) {
            StringTemplate_SetUndergroundItemName(menu->template, 2, sphereType);
            StringTemplate_SetNumber(menu->template, 6, sphereSize, 2, PADDING_MODE_SPACES, CHARSET_MODE_EN);
            MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), UndergroundNPCs_Text_SphereTemplate, menu->string);
            StringTemplate_Format(menu->template, menu->fmtString, menu->string);
            Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, menu->fmtString, 1, 17, TEXT_SPEED_NO_TRANSFER, NULL);

            menu->shopPriceTypes[0] = sphereType;
            menu->shopPriceSizes[0] = sphereSize;
        } else {
            menu->shopPriceTypes[0] = sphereType;

            MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), UndergroundNPCs_Text_NotForSale, menu->string);
            Text_AddPrinterWithParams(&menu->secondaryWindow, FONT_SYSTEM, menu->string, 1, 17, TEXT_SPEED_NO_TRANSFER, NULL);
        }
    }

    Window_ScheduleCopyToVRAM(&menu->secondaryWindow);

    if (menu->vendorType == VENDOR_TYPE_TRAPS) {
        UndergroundMenu_PrintTrapDescription(listMenu, index, onInit);
    } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
        UndergroundMenu_PrintGoodDescription(listMenu, index, onInit);
    } else {
        UndergroundMenu_PrintTreasureDescription(listMenu, index, onInit);
    }
}

static int UndergroundVendors_GetItemAtInventorySlot(int slot, void *menu)
{
    UndergroundMenu *ugMenu = menu;

    if (slot >= SHOP_INVENTORY_SIZE) {
        return 0;
    }

    return ugMenu->shopInventory[slot];
}

static void UndergroundVendors_InitBuyMenu(UndergroundMenu *menu)
{
    const int optionCount = SHOP_INVENTORY_SIZE + 1;

    UndergroundMenu_EraseCurrentMenu(menu);
    menu->menuOptions = StringList_New(optionCount, HEAP_ID_FIELD1);

    Window_Add(menu->fieldSystem->bgConfig, &menu->primaryWindow, BG_LAYER_MAIN_3, 19, 3, 12, optionCount * 2, 13, BASE_TILE_MESSAGE_WINDOW - 12 * 6 - 12 * 12);
    Window_DrawStandardFrame(&menu->primaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    MessageLoader *loader;

    if (menu->vendorType == VENDOR_TYPE_TRAPS) {
        loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_TRAPS, HEAP_ID_FIELD1);
        UndergroundTextPrinter_ChangeMessageLoaderBank(UndergroundMan_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_TRAPS, MSG_LOADER_PRELOAD_ENTIRE_BANK);
    } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
        loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_GOODS, HEAP_ID_FIELD1);
        UndergroundTextPrinter_ChangeMessageLoaderBank(UndergroundMan_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_GOODS, MSG_LOADER_PRELOAD_ENTIRE_BANK);
    } else {
        loader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_UNDERGROUND_ITEMS, HEAP_ID_FIELD1);
        UndergroundTextPrinter_ChangeMessageLoaderBank(UndergroundMan_GetItemNameTextPrinter(), TEXT_BANK_UNDERGROUND_ITEMS, MSG_LOADER_PRELOAD_ENTIRE_BANK);
    }

    for (int i = 0; i < optionCount - 1; i++) {
        StringList_AddFromMessageBank(menu->menuOptions, loader, menu->shopInventory[i], i);
    }

    StringList_AddFromMessageBank(menu->menuOptions, loader, 0, LIST_CANCEL);
    MessageLoader_Free(loader);

    ListMenuTemplate template;
    MI_CpuCopy8(UndergroundTextPrinter_GetListMenuTemplate(), &template, sizeof(ListMenuTemplate));

    template.choices = menu->menuOptions;
    template.window = &menu->primaryWindow;
    template.count = optionCount;
    template.maxDisplay = optionCount;
    template.cursorCallback = UndergroundVendors_PrintItemDescriptionAndBuyPrice;
    template.parent = menu;

    menu->getItem = UndergroundVendors_GetItemAtInventorySlot;
    menu->listMenuListPos = UndergroundMan_GetStoredListPos(UNDERGROUND_MENU_KEY_BUY_GOODS + menu->vendorType);
    menu->listMenuCursorPos = UndergroundMan_GetStoredCursorPos(UNDERGROUND_MENU_KEY_BUY_GOODS + menu->vendorType);
    menu->listMenuPos = menu->listMenuCursorPos;

    UndergroundMenu_MoveListCursorPosInBounds(menu, template.maxDisplay, template.count);
    menu->listMenu = ListMenu_New(&template, menu->listMenuListPos, menu->listMenuCursorPos, HEAP_ID_FIELD1);
    Window_CopyToVRAM(&menu->primaryWindow);
}

static void UndergroundVendors_EraseCurrentMenu(UndergroundMenu *menu, BOOL unused)
{
    if (Window_IsInUse(&menu->secondaryWindow)) {
        Window_EraseStandardFrame(&menu->secondaryWindow, TRUE);
        Window_Remove(&menu->secondaryWindow);
    }

    UndergroundMenu_EraseCurrentMenu(menu);
}

static void UndergroundVendors_PrintConfirmSellPrompt(int slot, UndergroundMenu *menu)
{
    if (menu->vendorType == VENDOR_TYPE_TRAPS) {
        int trapID = UndergroundMenu_GetTrapAtSlot(slot, menu);
        UndergroundVendors_SetTrapNameForPrinter(2, trapID);
    } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
        int goodID = UndergroundMenu_GetGoodAtSlotBag(slot, menu);
        UndergroundVendors_SetGoodNameForPrinter(2, goodID);
    } else {
        int treasureID = UndergroundMenu_GetTreasureAtSlot(slot, menu);
        UndergroundVendors_SetTreasureNameForPrinter(2, treasureID);
    }

    UndergroundVendors_SetTreasureNameForPrinter(4, menu->shopPriceTypes[0]);
    UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_ConfirmTradePrompt);
}

static u32 UndergroundVendors_TrySellItem(UndergroundMenu *menu)
{
    Underground *underground = SaveData_GetUnderground(FieldSystem_GetSaveData(menu->fieldSystem));

    if (UndergroundInventory_TryAddSphere(menu->shopPriceTypes[0], menu->shopPriceSizes[0])) {
        if (menu->vendorType == VENDOR_TYPE_TRAPS) {
            Underground_RemoveTrapAtSlot(underground, menu->shopSelection);
        } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
            Underground_RemoveGoodAtSlotBag(underground, menu->shopSelection);
        } else if (menu->vendorType == VENDOR_TYPE_TREASURES) {
            Underground_RemoveTreasureAtSlot(underground, menu->shopSelection);
        }

        return menu->shopPriceTypes[0];
    }

    return RESULT_BAG_FULL;
}

int UndergroundVendors_ReturnFFFE(void *unused)
{
    return 0xFFFE;
}

static void UndergroundVendors_FreeMenu(UndergroundMenu *menu)
{
    String_Free(menu->string);
    String_Free(menu->fmtString);
    StringTemplate_Free(menu->template);
    Heap_Free(menu);
}

void *UndergroundVendors_ReturnNull(int unused0, FieldSystem *unused1, int unused2)
{
    return NULL;
}

int UndergroundVendors_PrintNPCMessage(int bankEntry)
{
    UndergroundTextPrinter_ChangeMessageLoaderBank(UndergroundMan_GetMiscTextPrinter(), TEXT_BANK_UNDERGROUND_NPCS, MSG_LOADER_LOAD_ON_DEMAND);
    UndergroundTextPrinter_SetPlayerNameIndex0(UndergroundMan_GetMiscTextPrinter(), CommInfo_TrainerInfo(CommSys_CurNetId()));

    return UndergroundTextPrinter_PrintText(UndergroundMan_GetMiscTextPrinter(), bankEntry, FALSE, NULL);
}

void UndergroundVendors_EraseMessageBoxWindow(void)
{
    UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetMiscTextPrinter());
}

void UndergroundVendors_SetTreasureNameForPrinter(int index, int treasureID)
{
    UndergroundTextPrinter_SetUndergroundItemName(UndergroundMan_GetMiscTextPrinter(), index, treasureID);
}

void UndergroundVendors_SetTrapNameForPrinter(int index, int trapID)
{
    UndergroundTextPrinter_SetUndergroundTrapNameWithIndex(UndergroundMan_GetMiscTextPrinter(), index, trapID);
}

void UndergroundVendors_SetGoodNameForPrinter(int index, int goodID)
{
    UndergroundTextPrinter_SetGoodNameWithIndex(UndergroundMan_GetMiscTextPrinter(), index, goodID);
}

static void UndergroundVendors_DrawPriceWindow(UndergroundMenu *menu)
{
    if (!Window_IsInUse(&menu->secondaryWindow)) {
        Window_Add(menu->fieldSystem->bgConfig, &menu->secondaryWindow, BG_LAYER_MAIN_3, 1, 12, 12, 4, 13, 1);
        Window_DrawStandardFrame(&menu->secondaryWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);
    }

    Window_FillTilemap(&menu->secondaryWindow, 15);
    Window_CopyToVRAM(&menu->secondaryWindow);
}

void UndergroundMenu_PrintMenuDescription(UndergroundMenu *menu, int bankEntry)
{
    Window_Add(menu->fieldSystem->bgConfig, &menu->menuDescriptionWindow, BG_LAYER_MAIN_3, 1, 1, 7, 4, 13, 51);
    Window_DrawStandardFrame(&menu->menuDescriptionWindow, TRUE, BASE_TILE_STANDARD_WINDOW_FRAME, 11);

    Window_FillTilemap(&menu->menuDescriptionWindow, 15);
    Window_CopyToVRAM(&menu->menuDescriptionWindow);

    MessageLoader_GetString(UndergroundTextPrinter_GetMessageLoader(UndergroundMan_GetMiscTextPrinter()), bankEntry, menu->string);
    Text_AddPrinterWithParams(&menu->menuDescriptionWindow, FONT_SYSTEM, menu->string, 1, 1, TEXT_SPEED_NO_TRANSFER, NULL);
    Window_ScheduleCopyToVRAM(&menu->menuDescriptionWindow);
}

void UndergroundMenu_RemoveDescriptionWindow(UndergroundMenu *menu)
{
    if (Window_IsInUse(&menu->menuDescriptionWindow)) {
        Window_EraseStandardFrame(&menu->menuDescriptionWindow, TRUE);
        Window_Remove(&menu->menuDescriptionWindow);
    }
}

void UndergroundMenu_RemoveDescriptionWindowInstant(UndergroundMenu *menu)
{
    if (Window_IsInUse(&menu->menuDescriptionWindow)) {
        Window_EraseStandardFrame(&menu->menuDescriptionWindow, FALSE);
        Window_Remove(&menu->menuDescriptionWindow);
    }
}

static int UndergroundVendors_FindVendorAtCoordinates(int x, int z, int *outIndex)
{
    int vendorTotal = NELEMS(sUndergroundVendors);

    for (int i = 0; i < vendorTotal; i++) {
        if (sUndergroundVendors[i].x == x && sUndergroundVendors[i].z == z) {
            *outIndex = i;
            return sUndergroundVendors[i].vendorType;
        }
    }

    GF_ASSERT(FALSE);
    return 0;
}

static void UndergroundVendors_ShopMenuTask(SysTask *sysTask, void *data)
{
    UndergroundMenu *menu = data;
    u32 input;
    u16 listPos, cursorPos, prevPos;

    switch (menu->state) {
    case SHOP_MENU_STATE_INTRO_MESSAGE:
        if (menu->vendorType == VENDOR_TYPE_TREASURES) {
            UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_IllTradeSpheresForTreasures);
        } else {
            UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_IllTradeYouSomething);
        }

        menu->state = SHOP_MENU_STATE_WAIT_FOR_TEXT;
        break;
    case SHOP_MENU_STATE_WAIT_FOR_TEXT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetMiscTextPrinter())) {
            menu->state = SHOP_MENU_STATE_INIT_OPTIONS_MENU;
        }
        break;
    case SHOP_MENU_STATE_INIT_OPTIONS_MENU:
        UndergroundVendors_InitVendorOptionsMenu(menu);
        menu->state = SHOP_MENU_STATE_OPTIONS_MENU;
        break;
    case SHOP_MENU_STATE_OPTIONS_MENU:
        input = ListMenu_ProcessInput(menu->listMenu);
        ListMenu_GetListAndCursorPos(menu->listMenu, &listPos, &cursorPos);
        UndergroundMan_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_VENDOR_OPTIONS, cursorPos, listPos);

        prevPos = menu->listMenuPos;
        ListMenu_CalcTrueCursorPos(menu->listMenu, &menu->listMenuPos);

        if (prevPos != menu->listMenuPos) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        switch (input) {
        case LIST_CANCEL:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UndergroundVendors_EraseCurrentMenu(menu, FALSE);
            menu->state = SHOP_MENU_STATE_EXIT_MESSAGE;
            break;
        case LIST_NOTHING_CHOSEN:
            break;
        default:
            if (menu->vendorType == VENDOR_TYPE_TREASURES) {
                menu->isSelling = TRUE;
                menu->state = SHOP_MENU_STATE_INIT_SELL_MENU;
            } else {
                menu->isSelling = input;

                if (input == 0) {
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    menu->state = SHOP_MENU_STATE_INIT_BUY_MENU;
                } else {
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                    menu->state = SHOP_MENU_STATE_INIT_SELL_MENU;
                }
            }
            break;
        }
        break;
    case SHOP_MENU_STATE_INIT_BUY_MENU:
        UndergroundVendors_DrawPriceWindow(menu);
        UndergroundVendors_InitBuyMenu(menu);
        menu->state = SHOP_MENU_STATE_BUY_MENU;
        break;
    case SHOP_MENU_STATE_BUY_MENU:
        input = ListMenu_ProcessInput(menu->listMenu);
        ListMenu_GetListAndCursorPos(menu->listMenu, &listPos, &cursorPos);
        UndergroundMan_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_BUY_GOODS + menu->vendorType, cursorPos, listPos);

        prevPos = menu->listMenuPos;
        ListMenu_CalcTrueCursorPos(menu->listMenu, &menu->listMenuPos);

        if (prevPos != menu->listMenuPos) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }

        // make sure we have the right type of -2
        if (input == MENU_CANCELED) {
            input = LIST_CANCEL;
        }

        if (input != LIST_NOTHING_CHOSEN) {
            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetItemNameTextPrinter());
        }

        switch (input) {
        case LIST_CANCEL:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UndergroundVendors_EraseCurrentMenu(menu, TRUE);
            menu->state = SHOP_MENU_STATE_INIT_OPTIONS_MENU;
            break;
        case LIST_NOTHING_CHOSEN:
            break;
        default:
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            menu->shopSelection = input;

            if (menu->vendorType == VENDOR_TYPE_TRAPS) {
                UndergroundVendors_SetTrapNameForPrinter(2, menu->shopInventory[menu->shopSelection]);
            } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
                UndergroundVendors_SetGoodNameForPrinter(2, menu->shopInventory[menu->shopSelection]);
            }

            UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_PickSpherePrompt);
            menu->state = SHOP_MENU_STATE_BUY_WAIT_FOR_TEXT;
            break;
        }
        break;
    case SHOP_MENU_STATE_BUY_WAIT_FOR_TEXT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetMiscTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                menu->state = SHOP_MENU_STATE_INIT_PAY_MENU;
            }
        }
        break;
    case SHOP_MENU_STATE_INIT_PAY_MENU:
        UndergroundMenu_EraseCurrentMenu(menu);

        menu->listMenuCursorPos = UndergroundMan_GetStoredCursorPos(UNDERGROUND_MENU_KEY_PAY_WITH_SPHERES);
        menu->listMenuListPos = UndergroundMan_GetStoredListPos(UNDERGROUND_MENU_KEY_PAY_WITH_SPHERES);

        UndergroundMenu_OpenPayWithSpheresMenu(menu);
        UndergroundMenu_PrintMenuDescription(menu, UndergroundNPCs_Text_SpheresOnHand);

        if (menu->vendorType == VENDOR_TYPE_TRAPS) {
            UndergroundVendors_SetTrapNameForPrinter(2, menu->shopInventory[menu->shopSelection]);
        } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
            UndergroundVendors_SetGoodNameForPrinter(2, menu->shopInventory[menu->shopSelection]);
        }

        menu->state = SHOP_MENU_STATE_PAY_MENU;
        break;
    case SHOP_MENU_STATE_PAY_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetMiscTextPrinter())) {
            input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);
            ListMenu_GetListAndCursorPos(menu->itemListMenu->listMenu, &listPos, &cursorPos);
            UndergroundMan_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_PAY_WITH_SPHERES, cursorPos, listPos);

            if (input != LIST_NOTHING_CHOSEN) {
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetItemNameTextPrinter());
            }

            switch (input) {
            case LIST_NOTHING_CHOSEN:
                break;
            case LIST_CANCEL:
                UndergroundMenu_RemoveDescriptionWindow(menu);
                menu->state = SHOP_MENU_STATE_INIT_BUY_MENU;
                break;
            default:
                int result = UndergroundVendors_TryBuyItem(menu, menu->shopSelection, input);
                UndergroundVendors_EraseCurrentMenu(menu, TRUE);
                UndergroundMenu_RemoveDescriptionWindow(menu);

                if (result == RESULT_BAG_FULL) {
                    UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_YouDontHaveRoom);
                    menu->state = SHOP_MENU_STATE_END_TRANSACTION;
                } else if (result == RESULT_WRONG_SPHERE_TYPE) {
                    UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_WrongKindOfSphere);
                    menu->state = SHOP_MENU_STATE_END_TRANSACTION;
                } else if (result == RESULT_SPHERE_TOO_SMALL) {
                    UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_SphereTooSmall);
                    menu->state = SHOP_MENU_STATE_END_TRANSACTION;
                } else {
                    menu->shopSelection = result;
                    UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_LetsDoThisTrade);
                    menu->state = SHOP_MENU_STATE_BUY_SUCCESS;
                }
                break;
            }
        }
        break;
    case SHOP_MENU_STATE_11_UNUSED:
        UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_YouDontHaveRoom);
        menu->state = SHOP_MENU_STATE_END_TRANSACTION;
        break;
    case SHOP_MENU_STATE_BUY_SUCCESS:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetMiscTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                if (menu->vendorType == VENDOR_TYPE_TRAPS) {
                    UndergroundVendors_SetTrapNameForPrinter(2, menu->shopSelection);
                } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
                    UndergroundVendors_SetGoodNameForPrinter(2, menu->shopSelection);
                }

                UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_ItemWasObtained);
                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

                menu->state = SHOP_MENU_STATE_END_TRANSACTION;
            }
        }
        break;
    case SHOP_MENU_STATE_END_TRANSACTION:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetMiscTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_DoYouNeedAnythingElse);
                menu->state = SHOP_MENU_STATE_INIT_OPTIONS_MENU;
            }
        }
        break;
    case SHOP_MENU_STATE_INIT_SELL_MENU:
        UndergroundVendors_DrawPriceWindow(menu);

        menu->listMenuCursorPos = UndergroundMan_GetStoredCursorPos(UNDERGROUND_MENU_KEY_SELL_GOODS + menu->vendorType);
        menu->listMenuListPos = UndergroundMan_GetStoredListPos(UNDERGROUND_MENU_KEY_SELL_GOODS + menu->vendorType);
        menu->cursorCallback = UndergroundVendors_PrintItemDescriptionAndSellPrice;

        if (menu->vendorType == VENDOR_TYPE_TRAPS) {
            UndergroundMenu_OpenSellTrapsMenu(menu);
            UndergroundMenu_PrintMenuDescription(menu, UndergroundNPCs_Text_TrapsOnHand);
        } else if (menu->vendorType == VENDOR_TYPE_GOODS) {
            UndergroundMenu_OpenSellGoodsMenu(menu);
            UndergroundMenu_PrintMenuDescription(menu, UndergroundNPCs_Text_GoodsOnHand);
        } else {
            UndergroundMenu_OpenSellTreasuresMenu(menu);
            UndergroundMenu_PrintMenuDescription(menu, UndergroundNPCs_Text_TreasuresOnHand);
        }

        menu->state = SHOP_MENU_STATE_SELL_MENU;
        break;
    case SHOP_MENU_STATE_SELL_MENU:
        input = UndergroundItemListMenu_ProcessInput(menu->itemListMenu);
        ListMenu_GetListAndCursorPos(menu->itemListMenu->listMenu, &listPos, &cursorPos);
        UndergroundMan_StoreCursorAndListPos(UNDERGROUND_MENU_KEY_SELL_GOODS + menu->vendorType, cursorPos, listPos);

        switch (input) {
        case LIST_CANCEL:
            UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetItemNameTextPrinter());
            UndergroundVendors_EraseCurrentMenu(menu, TRUE);
            UndergroundMenu_RemoveDescriptionWindow(menu);
            menu->state = SHOP_MENU_STATE_INIT_OPTIONS_MENU;
            break;
        case LIST_NOTHING_CHOSEN:
            break;
        default:
            if (menu->shopPriceTypes[0] != SPHERE_NONE) {
                UndergroundTextPrinter_EraseMessageBoxWindow(UndergroundMan_GetItemNameTextPrinter());
                menu->shopSelection = input;
                UndergroundVendors_EraseCurrentMenu(menu, TRUE);
                UndergroundMenu_RemoveDescriptionWindow(menu);
                UndergroundVendors_PrintConfirmSellPrompt(input, menu);
                menu->state = SHOP_MENU_STATE_INIT_CONFIRM_SELL_MENU;
            }
            break;
        }
        break;
    case SHOP_MENU_STATE_INIT_CONFIRM_SELL_MENU:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetMiscTextPrinter())) {
            menu->yesNoMenu = Menu_MakeYesNoChoice(menu->fieldSystem->bgConfig, &sWindowTemplate, BASE_TILE_STANDARD_WINDOW_FRAME, 11, HEAP_ID_FIELD1);
            menu->state = SHOP_MENU_STATE_CONFIRM_SELL;
        }
        break;
    case SHOP_MENU_STATE_CONFIRM_SELL:
        input = Menu_ProcessInputAndHandleExit(menu->yesNoMenu, HEAP_ID_FIELD1);

        if (input == LIST_NOTHING_CHOSEN) {
            return;
        } else if (input == 0) {
            int result = UndergroundVendors_TrySellItem(menu);

            if (result == RESULT_BAG_FULL) {
                UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_YouDontHaveRoom);
                menu->state = SHOP_MENU_STATE_END_TRANSACTION;
            } else {
                UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_AllRightLetsTrade);
                menu->state = SHOP_MENU_STATE_SELL_SUCCESS;
            }
        } else {
            menu->state = SHOP_MENU_STATE_EXIT_MESSAGE;
        }

        menu->yesNoMenu = NULL;
        break;
    case SHOP_MENU_STATE_SELL_SUCCESS:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetMiscTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                UndergroundTextPrinter_SetTwoDigitNumber(UndergroundMan_GetMiscTextPrinter(), menu->shopPriceSizes[0]);
                UndergroundVendors_SetTreasureNameForPrinter(2, menu->shopPriceTypes[0]);
                UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_YouObtainedSphere);

                Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

                menu->state = SHOP_MENU_STATE_END_TRANSACTION;
            }
        }
        break;
    case SHOP_MENU_STATE_EXIT_MESSAGE:
        UndergroundVendors_PrintNPCMessage(UndergroundNPCs_Text_BeSeeingYouThen);
        menu->state = SHOP_MENU_STATE_EXIT_AFTER_TEXT;
        break;
    case SHOP_MENU_STATE_EXIT_AFTER_TEXT:
        if (!UndergroundTextPrinter_IsPrinterActive(UndergroundMan_GetMiscTextPrinter())) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                UndergroundVendors_EraseMessageBoxWindow();
                UndergroundVendors_FreeMenu(menu);
                UndergroundMan_ClearCurrentSysTaskInfo();
                SysTask_Done(sysTask);
                CommPlayerMan_ResumeFieldSystem();
            }
        }
        break;
    default:
        break;
    }
}

void UndergroundVendors_StartShopMenuTask(FieldSystem *fieldSystem)
{
    int x = CommPlayer_GetXInFrontOfPlayer(CommSys_CurNetId());
    int z = CommPlayer_GetZInFrontOfPlayer(CommSys_CurNetId());
    int dir = CommPlayer_GetOppositeDir(CommPlayer_Dir(CommSys_CurNetId()));
    const int unused = 6;
    int vendorIndex;
    int vendorType = UndergroundVendors_FindVendorAtCoordinates(x, z, &vendorIndex);

    UndergroundMan_SetStoredPosKey(UNDERGROUND_STORED_POS_KEY_GOODS_VENDOR + vendorType);

    UndergroundMenu *menu = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UndergroundMenu));
    MI_CpuClear8(menu, sizeof(UndergroundMenu));

    menu->fieldSystem = fieldSystem;
    menu->vendorType = vendorType;
    menu->vendorIndex = vendorIndex;
    menu->string = String_Init(50 * 2, HEAP_ID_FIELD1);
    menu->fmtString = String_Init(50 * 2, HEAP_ID_FIELD1);
    menu->template = StringTemplate_Default(HEAP_ID_FIELD1);
    menu->state = SHOP_MENU_STATE_INTRO_MESSAGE;

    Sound_PlayEffect(SEQ_SE_CONFIRM);
    menu->sysTask = SysTask_Start(UndergroundVendors_ShopMenuTask, menu, 10000);
    UndergroundMan_SetCurrentSysTask(menu, menu->sysTask, UndergroundMenu_ResetBrightnessAndExit);

    int objEventCount = MapHeaderData_GetNumObjectEvents(menu->fieldSystem);
    const ObjectEvent *objEventList = MapHeaderData_GetObjectEvents(menu->fieldSystem);

    for (int i = 0; i < objEventCount; i++) {
        if (objEventList[i].x == x && objEventList[i].z == z) {
            MapObject *mapObj = MapObjMan_LocalMapObjByIndex(menu->fieldSystem->mapObjMan, i);
            MapObject_TryFace(mapObj, dir);
        }
    }
}
