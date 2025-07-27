#ifndef POKEPLATINUM_SHOP_MENU_H
#define POKEPLATINUM_SHOP_MENU_H

#include "struct_decls/battle_font_decl.h"

#include "field/field_system_decl.h"
#include "overlay005/struct_ov5_021D30A8.h"

#include "bg_window.h"
#include "camera.h"
#include "field_task.h"
#include "game_options.h"
#include "game_records.h"
#include "journal.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "savedata.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "trainer_info.h"
#include "vars_flags.h"

enum MartTypes {
    MART_TYPE_NORMAL = 0,
    MART_TYPE_DECOR,
    MART_TYPE_SEAL,
    MART_TYPE_FRONTIER, // uses Battle Points instead of normal money
};

enum ShopStaticWindows {
    SHOP_WINDOW_ITEM_LIST = 0,
    SHOP_WINDOW_ITEM_DESCRIPTION,
    SHOP_WINDOW_CURRENT_MONEY,
    SHOP_WINDOW_QUANTITY_TOTAL_PRICE,
    SHOP_WINDOW_ITEMS_IN_BAG,
    SHOP_WINDOW_MESSAGE,

    SHOP_WINDOW_MAX
};

enum ShopStaticSprites {
    SHOP_SPRITE_SCROLL_ARROW_UP = 0,
    SHOP_SPRITE_SCROLL_ARROW_DOWN,
    SHOP_SPRITE_CURSOR,
    SHOP_SPRITE_ITEM_ICON,

    SHOP_SPRITE_MAX
};

enum ShopStates {
    SHOP_STATE_SHOW_CONTEXT_MENU = 0,
    SHOP_STATE_SELECT_CONTEXT_MENU,
    SHOP_STATE_INIT_CAMERA,
    SHOP_STATE_MOVE_CAMERA, // also loads the buy menu interface
    SHOP_STATE_SELECT_BUY_MENU,
    SHOP_STATE_SHOW_PURCHASE_MENU,
    SHOP_STATE_SELECT_PURCHASE_MENU,
    SHOP_STATE_SHOW_CONFIRM_PURCHASE,
    SHOP_STATE_SELECT_CONFIRM_PURCHASE,
    SHOP_STATE_CONFIRM_PURCHASE,
    SHOP_STATE_FINISH_PURCHASE, // also records the purchase
    SHOP_STATE_FINISH_FREE_PREMIER, // handles message input when getting a free premier ball
    SHOP_STATE_MOVE_CAMERA_BACK,
    SHOP_STATE_REINIT_CONTEXT_MENU,
    SHOP_STATE_START_SCREEN_TRANSITION,
    SHOP_STATE_WAIT_SCREEN_TRANSITION,
    SHOP_STATE_REINIT_FIELD_MAP,
    SHOP_STATE_REINIT_SHOP,
    SHOP_STATE_REINIT_MERCHANT_MESSAGE,
    SHOP_STATE_SHOW_EXIT_MESSAGE,
    SHOP_STATE_EXIT
};

#define MAX_ITEM_SHOWN 7
#define MAX_SHOP_ITEMS 256

typedef struct {
    BgConfig *bgConfig;
    void *unk_04;
    Window windows[SHOP_WINDOW_MAX + 1]; // beyond SHOP_WINDOW_MAX index here is unused
    ListMenu *listMenu;
    StringList *itemsList;
    Menu *choiceMenu; // used both for the buy confirmation and the field options
    StringList *optionsList;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    Camera *camera;
    UnkStruct_ov5_021D30A8 unk_94;
    Sprite *sprites[SHOP_SPRITE_MAX];
    u16 spriteDrawFlags[2];
    TrainerInfo *trainerInfo;
    void *destInventory;
    Options *options;
    JournalEntry *journalEntry;
    GameRecords *records;
    SaveData *saveData;
    VarsFlags *varsFlags;
    BOOL incBuyCount;
    u16 *itemsPtr;
    u8 itemsCount;
    u8 unused[2];
    u8 state;
    Strbuf *strbuf;
    u8 bgPriorities[4];
    int engineALayers;
    u8 fieldMsgPrinterId;
    u8 cameraPosCurr;
    u8 cameraPosDest;
    u8 itemPurchaseCount;
    u8 itemSoldCount;
    u8 martType;
    u16 itemId;
    s16 itemAmount;
    u16 itemAmountMax;
    u32 itemPrice;
    BattleFontContext *unk_2B4;
} ShopMenu;

void Shop_Start(FieldTask *task, FieldSystem *fieldSystem, u16 *shopItems, u8 martType, BOOL incBuyCount);
BOOL FieldTask_InitShop(FieldTask *task);

#endif // POKEPLATINUM_SHOP_MENU_H
