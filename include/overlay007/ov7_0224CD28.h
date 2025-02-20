#ifndef POKEPLATINUM_OV7_0224CD28_H
#define POKEPLATINUM_OV7_0224CD28_H

#include "field/field_system_decl.h"

#include "field_task.h"

enum MartTypes {
    MART_TYPE_NORMAL = 0,
    MART_TYPE_DECOR,
    MART_TYPE_SEAL,
    MART_TYPE_FRONTIER, // uses Battle Points instead of normal money
};

enum ShopStaticWindow {
    SHOP_WINDOW_ITEM_LIST = 0,
    SHOP_WINDOW_ITEM_DESCRIPTION,
    SHOP_WINDOW_CURRENT_MONEY,
    SHOP_WINDOW_QUANTITY_TOTAL_PRICE,
    SHOP_WINDOW_ITEMS_IN_BAG,
    SHOP_WINDOW_MESSAGE,

    SHOP_WINDOW_MAX
};

#define MAX_ITEM_SHOWN 7
#define MAX_SHOP_ITEMS 256

void Shop_Start(FieldTask *task, FieldSystem *fieldSystem, u16 *shopItems, u8 martType, BOOL incDeptStoreBuyCount);
BOOL FieldTask_InitShop(FieldTask *task);

#endif // POKEPLATINUM_OV7_0224CD28_H
