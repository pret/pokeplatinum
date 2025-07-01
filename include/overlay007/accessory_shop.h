#ifndef POKEPLATINUM_ACCESSORY_SHOP_H
#define POKEPLATINUM_ACCESSORY_SHOP_H

#include "constants/heap.h"

#include "struct_decls/struct_02029D04_decl.h"

#include "bag.h"
#include "bg_window.h"
#include "list_menu.h"
#include "menu.h"
#include "savedata.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "string_template.h"

enum AccessoryShopState {
    ACCESSORY_SHOP_STATE_LOAD_GREET_MSG = 0,
    ACCESSORY_SHOP_STATE_INIT_ITEM_LIST,
    ACCESSORY_SHOP_STATE_INIT_INTERFACE,
    ACCESSORY_SHOP_STATE_LOAD_BUY_MSG,
    ACCESSORY_SHOP_STATE_SELECT_ITEM_LIST,
    ACCESSORY_SHOP_STATE_INIT_YES_NO_CHOICE,
    ACCESSORY_SHOP_STATE_SELECT_YES_NO_CHOICE,
    ACCESSORY_SHOP_STATE_CONFIRM_PURCHASE,
    // player traded everything in the shop
    ACCESSORY_SHOP_STATE_LOAD_SHOCKED_MSG,
    ACCESSORY_SHOP_STATE_LOAD_THANKS_MSG,
    ACCESSORY_SHOP_STATE_WAIT_MSGBOX,
    ACCESSORY_SHOP_STATE_WAIT_AB_INPUT,
    ACCESSORY_SHOP_STATE_FREE_INTERFACE,
};

enum AccessoryShopSpriteResourceIdx {
    ACCESSORY_SHOP_RES_IDX_TILES = 0,
    ACCESSORY_SHOP_RES_IDX_PALETTE,
    ACCESSORY_SHOP_RES_IDX_CELL,
    ACCESSORY_SHOP_RES_IDX_ANIM,

    ACCESSORY_SHOP_RES_IDX_COUNT,
};

enum AccessoryShopStaticSprite {
    ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_TOP = 0,
    ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_BOTTOM,

    ACCESSORY_SHOP_SPRITE_COUNT,
};

#define ACCESSORY_SHOP_ITEM_LIST_COUNT 22
#define ACCESSORY_SHOP_FORMAT_STRS     3

typedef struct AccessoryShopItem {
    u32 accessoryID;
    u32 itemBerryID;
    u32 totalAmount;
} AccessoryShopItem;

typedef void (*AccessoryShopUpdateFunc)(void *, u32);

typedef struct AccessoryShopMessageBox {
    BOOL active;
    Window *window;
    u32 renderDelay;
    u32 printerID;
    Strbuf *strbuf;
} AccessoryShopMessageBox;

typedef struct AccessoryShopDescBox {
    BOOL active;
    Window *window;
    StringTemplate *strTemplate;
    Strbuf *strbuf;
    Strbuf *fmtString[ACCESSORY_SHOP_FORMAT_STRS];
} AccessoryShopDescBox;

typedef struct AccessoryShopItemList {
    BOOL active;
    Window *window;
    ListMenu *listMenu;
    StringList strList[ACCESSORY_SHOP_ITEM_LIST_COUNT + 1];
    Strbuf *strbuf[ACCESSORY_SHOP_ITEM_LIST_COUNT + 1];
    s32 maxListItems;
    StringTemplate *strTemplate;
    Strbuf *tempStrbuf;
    u16 cursorPos;
    u16 unused;
    void *unk_130;
    AccessoryShopUpdateFunc updateFunc;
    SpriteResourceCollection *spriteResCollections[ACCESSORY_SHOP_RES_IDX_COUNT];
    SpriteResource *spriteResources[ACCESSORY_SHOP_RES_IDX_COUNT];
    Sprite *sprites[ACCESSORY_SHOP_SPRITE_COUNT];
} AccessoryShopItemList;

typedef struct AccessoryShopYesNoChoice {
    BOOL active;
    Menu *menu;
    enum HeapID heapID;
} AccessoryShopYesNoChoice;

typedef struct AccessoryShopDataPtrs {
    enum HeapID heapID;
    BgConfig *bgConfig;
    AccessoryShopDescBox *descBox;
    const AccessoryShopItem *items;
    Bag *bag;
} AccessoryShopDataPtrs;

typedef struct AccessoryShop {
    enum AccessoryShopState state;
    enum AccessoryShopState nextState;
    SaveData *saveData;
    UnkStruct_02029D04 *unk_0C;
    Bag *bag;
    BgConfig *bgConfig;
    enum HeapID heapID;
    SpriteList *spriteList;
    G2dRenderer g2dRenderer;
    MessageLoader *msgLoader;
    u32 msgBoxFrame;
    u32 renderDelay;
    AccessoryShopMessageBox msgbox;
    AccessoryShopDescBox descBox;
    AccessoryShopItemList itemList;
    AccessoryShopYesNoChoice yesNoChoice;
    AccessoryShopDataPtrs dataPtr;
} AccessoryShop;

AccessoryShop *AccessoryShop_New(enum HeapID heapID, SaveData *saveData, BgConfig *bgConfig);
void AccessoryShop_Free(AccessoryShop *shop);
BOOL AccessoryShop_Main(AccessoryShop *shop);

#endif // POKEPLATINUM_ACCESSORY_SHOP_H
