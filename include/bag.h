#ifndef POKEPLATINUM_BAG_H
#define POKEPLATINUM_BAG_H

#include "constants/heap.h"
#include "constants/items.h"

#include "savedata.h"

#define ITEM_POCKET_SIZE        165
#define KEY_ITEM_POCKET_SIZE    50
#define TMHM_POCKET_SIZE        100
#define MAIL_POCKET_SIZE        12
#define MEDICINE_POCKET_SIZE    40
#define BERRY_POCKET_SIZE       64
#define POKEBALL_POCKET_SIZE    15
#define BATTLE_ITEM_POCKET_SIZE 30

typedef struct BagItem {
    u16 item;
    u16 quantity;
} BagItem;

typedef struct Bag {
    BagItem items[ITEM_POCKET_SIZE];
    BagItem keyItems[KEY_ITEM_POCKET_SIZE];
    BagItem tmHms[TMHM_POCKET_SIZE];
    BagItem mail[MAIL_POCKET_SIZE];
    BagItem medicine[MEDICINE_POCKET_SIZE];
    BagItem berries[BERRY_POCKET_SIZE];
    BagItem pokeballs[POKEBALL_POCKET_SIZE];
    BagItem battleItems[BATTLE_ITEM_POCKET_SIZE];
    u32 registeredItem;
} Bag;

typedef struct FieldBagCursor {
    u8 scroll[POCKET_MAX];
    u8 index[POCKET_MAX];
    u16 pocket;
    u16 dummy12;
} FieldBagCursor;

typedef struct BattleBagCursor {
    u8 scroll[ITEM_BATTLE_CATEGORY_MAX + 1];
    u8 index[ITEM_BATTLE_CATEGORY_MAX + 1];
    u16 lastUsedItemID;
    u16 lastUsedCategory;
    u16 currentCategory;
} BattleBagCursor;

typedef struct BagCursor {
    FieldBagCursor field;
    BattleBagCursor battle;
} BagCursor;

int Bag_SaveSize(void);
Bag *Bag_New(enum HeapID heapID);
void Bag_Init(Bag *bag);
void Bag_Copy(const Bag *src, Bag *dst);
u32 Bag_GetRegisteredItem(const Bag *bag);
void Bag_RegisterItem(Bag *bag, u32 item);
BOOL Bag_CanFitItem(Bag *bag, u16 item, u16 count, enum HeapID heapID);
BOOL Bag_TryAddItem(Bag *bag, u16 item, u16 count, enum HeapID heapID);
BOOL Bag_TryRemoveItem(Bag *bag, u16 item, u16 count, enum HeapID heapID);
BOOL Pocket_TryRemoveItem(BagItem *pocket, u32 pocketSize, u16 item, u16 count, enum HeapID heapID);
BOOL Bag_CanRemoveItem(Bag *bag, u16 item, u16 count, enum HeapID heapID);
BOOL Bag_HasItemsInPocket(Bag *bag, u32 pocketID);
u16 Bag_GetItemQuantity(Bag *bag, u16 item, enum HeapID heapID);
u16 Pocket_GetItemQuantity(BagItem *pocket, u32 pocketSize, u16 item, enum HeapID heapID);
void Pocket_SortEmpty(BagItem *pocket, const u32 size); // Moves empty slots to the end of the pocket
void Pocket_Sort(BagItem *pocket, const u32 size); // Same as Pocket_SortEmpty, but also sorts by item ID
void *sub_0207D824(Bag *bag, const u8 *pockets, enum HeapID heapID);
BagItem *Bag_GetItemSlot(Bag *bag, u16 pocketID, u16 slot);
Bag *SaveData_GetBag(SaveData *saveData);
BagCursor *BagCursor_New(u32 heapID);
void BagCursor_GetFieldPocketPosition(BagCursor *cursor, u32 pocket, u8 *outIndex, u8 *outScroll);
u16 BagCursor_GetFieldPocket(BagCursor *cursor);
void BagCursor_SetFieldPocketPosition(BagCursor *cursor, u32 pocket, u8 index, u8 scroll);
void BagCursor_SetFieldPocket(BagCursor *cursor, u16 pocket);
void BagCursor_GetBattleCategoryPosition(BagCursor *cursor, u32 category, u8 *outIndex, u8 *outScroll);
u16 BagCursor_GetLastUsedBattleItem(BagCursor *cursor);
u16 BagCursor_GetLastUsedBattleItemCategory(BagCursor *cursor);
u16 BagCursor_GetBattleCurrentCategory(BagCursor *cursor);
void BagCursor_SetBattleCategoryPosition(BagCursor *cursor, u32 category, u8 index, u8 scroll);
void BagCursor_ResetBattle(BagCursor *cursor);
void Bag_SetLastBattleItemUsed(BagCursor *cursor, u16 itemID, u16 category);
void BagCursor_SetBattleCurrentCategory(BagCursor *cursor, u16 category);

#endif // POKEPLATINUM_BAG_H
