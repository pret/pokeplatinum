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

enum AccessoryShop_States {
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

enum AccessoryShop_SpriteResourcesIdx {
    ACCESSORY_SHOP_RES_IDX_TILES = 0,
    ACCESSORY_SHOP_RES_IDX_PALETTE,
    ACCESSORY_SHOP_RES_IDX_CELL,
    ACCESSORY_SHOP_RES_IDX_ANIM,

    ACCESSORY_SHOP_RES_IDX_COUNT,
};

enum AccessoryShop_StaticSprites {
    ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_TOP = 0,
    ACCESSORY_SHOP_SPRITE_SCROLL_ARROW_BOTTOM,

    ACCESSORY_SHOP_SPRITE_COUNT,
};

#define ACCESSORY_SHOP_ITEM_LIST_COUNT 22
#define BERRY_ID(itemId)               (ITEM_##itemId##_BERRY - FIRST_BERRY_IDX)

typedef struct AccessoryShop_ItemList {
    u32 accessoryId;
    u32 itemBerryId;
    u32 totalAmount;
} AccessoryShop_ItemList;

typedef void (*AccessoryShop_UpdateFunc)(void *, u32);

typedef struct AccessoryShop_MessageBox {
    BOOL active;
    Window *window;
    u32 renderDelay;
    u32 printerID;
    Strbuf *strbuf;
} AccessoryShop_MessageBox;

typedef struct AccessoryShop_DescriptionBox {
    BOOL active;
    Window *window;
    StringTemplate *strTemplate;
    Strbuf *strbuf;
    Strbuf *fmtString[3];
} AccessoryShop_DescriptionBox;

typedef struct AccessoryShop_ItemListMenu {
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
    AccessoryShop_UpdateFunc updateFunc;
    SpriteResourceCollection *spriteResCollections[ACCESSORY_SHOP_RES_IDX_COUNT];
    SpriteResource *spriteResources[ACCESSORY_SHOP_RES_IDX_COUNT];
    Sprite *sprites[ACCESSORY_SHOP_SPRITE_COUNT];
} AccessoryShop_ItemListMenu;

typedef struct AccessoryShop_YesNoChoice {
    BOOL active;
    Menu *yesNoChoice;
    enum HeapId heapID;
} AccessoryShop_YesNoChoice;

typedef struct AccessoryShop_DataPointers {
    enum HeapId heapID;
    BgConfig *bgConfig;
    AccessoryShop_DescriptionBox *descBox;
    const AccessoryShop_ItemList *itemList;
    Bag *bag;
} AccessoryShop_DataPointers;

typedef struct AccessoryShop {
    enum AccessoryShop_States state;
    enum AccessoryShop_States nextState;
    SaveData *saveData;
    UnkStruct_02029D04 *unk_0C;
    Bag *bag;
    BgConfig *bgConfig;
    enum HeapId heapID;
    SpriteList *spriteList;
    G2dRenderer g2Renderer;
    MessageLoader *msgLoader;
    u32 msgBoxFrame;
    u32 renderDelay;
    AccessoryShop_MessageBox msgbox;
    AccessoryShop_DescriptionBox descBox;
    AccessoryShop_ItemListMenu itemListMenu;
    AccessoryShop_YesNoChoice yesNoChoice;
    AccessoryShop_DataPointers dataPtr;
} AccessoryShop;

AccessoryShop *AccessoryShop_Alloc(enum HeapId heapID, SaveData *saveData, BgConfig *bgConfig);
void AccessoryShop_Free(AccessoryShop *accessoryShop);
BOOL AccessoryShop_Main(AccessoryShop *accessoryShop);

#endif // POKEPLATINUM_ACCESSORY_SHOP_H
