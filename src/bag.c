#include "bag.h"

#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/items.h"
#include "constants/savedata/save_table.h"
#include "generated/items.h"

#include "struct_decls/struct_0207CB08_decl.h"

#include "heap.h"
#include "item.h"
#include "savedata.h"
#include "unk_0207CB08.h"

#define BAG_SLOT_INVALID ((u32)(-1))

#define BAG_MAX_QUANTITY_ITEM 999
#define BAG_MAX_QUANTITY_TMHM 99

static u32 Bag_GetPocketForItem(Bag *bag, u16 item, BagItem **outPocket, u32 *outMax, enum HeapId heapID);

int Bag_SaveSize(void)
{
    return sizeof(Bag);
}

Bag *Bag_New(enum HeapId heapID)
{
    Bag *bag = Heap_AllocFromHeap(heapID, sizeof(Bag));
    Bag_Init(bag);

    return bag;
}

void Bag_Init(Bag *bag)
{
    MI_CpuClear16(bag, sizeof(Bag));
}

void Bag_Copy(const Bag *src, Bag *dst)
{
    MI_CpuCopy8(src, dst, sizeof(Bag));
}

u32 Bag_GetRegisteredItem(const Bag *bag)
{
    return bag->registeredItem;
}

void Bag_RegisterItem(Bag *bag, u32 item)
{
    bag->registeredItem = item;
}

static u32 Bag_GetPocketForItem(Bag *bag, u16 item, BagItem **outPocket, u32 *outMax, enum HeapId heapID)
{
    u32 pocket = Item_LoadParam(item, ITEM_PARAM_FIELD_POCKET, heapID);

    switch (pocket) {
    case POCKET_KEY_ITEMS:
        *outPocket = bag->keyItems;
        *outMax = KEY_ITEM_POCKET_SIZE;
        break;
    case POCKET_ITEMS:
        *outPocket = bag->items;
        *outMax = ITEM_POCKET_SIZE;
        break;
    case POCKET_BERRIES:
        *outPocket = bag->berries;
        *outMax = BERRY_POCKET_SIZE;
        break;
    case POCKET_MEDICINE:
        *outPocket = bag->medicine;
        *outMax = MEDICINE_POCKET_SIZE;
        break;
    case POCKET_BALLS:
        *outPocket = bag->pokeballs;
        *outMax = POKEBALL_POCKET_SIZE;
        break;
    case POCKET_BATTLE_ITEMS:
        *outPocket = bag->battleItems;
        *outMax = BATTLE_ITEM_POCKET_SIZE;
        break;
    case POCKET_MAIL:
        *outPocket = bag->mail;
        *outMax = MAIL_POCKET_SIZE;
        break;
    case POCKET_TMHMS:
        *outPocket = bag->tmHms;
        *outMax = TMHM_POCKET_SIZE;
        break;
    }

    return pocket;
}

static BagItem *Pocket_FindSlotToAddItem(BagItem *pocket, u32 pocketSize, u16 item, u16 count, u16 max)
{
    u32 i; // Required for matching
    u32 slot = BAG_SLOT_INVALID;

    for (i = 0; i < pocketSize; i++) {
        if (pocket[i].item == item) {
            if (pocket[i].quantity + count > max) {
                return NULL;
            }

            return &pocket[i];
        }

        if (slot == BAG_SLOT_INVALID
            && pocket[i].item == ITEM_NONE
            && pocket[i].quantity == 0) {
            slot = i;
        }
    }

    return slot == BAG_SLOT_INVALID ? NULL : &pocket[slot];
}

static BagItem *Bag_FindSlotToAddItem(Bag *bag, u16 item, u16 count, enum HeapId heapID)
{
    BagItem *pocketItems;
    u32 pocketSize;

    u32 pocket = Bag_GetPocketForItem(bag, item, &pocketItems, &pocketSize, heapID);
    if (pocket == POCKET_TMHMS) {
        return Pocket_FindSlotToAddItem(pocketItems, pocketSize, item, count, BAG_MAX_QUANTITY_TMHM);
    }

    return Pocket_FindSlotToAddItem(pocketItems, pocketSize, item, count, BAG_MAX_QUANTITY_ITEM);
}

BOOL Bag_CanFitItem(Bag *bag, u16 item, u16 count, enum HeapId heapID)
{
    return Bag_FindSlotToAddItem(bag, item, count, heapID) != NULL;
}

BOOL Bag_TryAddItem(Bag *bag, u16 item, u16 count, enum HeapId heapID)
{
    BagItem *slot = Bag_FindSlotToAddItem(bag, item, count, heapID);
    if (slot == NULL) {
        return FALSE;
    }

    slot->item = item;
    slot->quantity += count;

    u32 pocketSize;
    u32 pocket = Bag_GetPocketForItem(bag, item, &slot, &pocketSize, heapID);
    if (pocket == POCKET_BERRIES || pocket == POCKET_TMHMS) {
        Pocket_Sort(slot, pocketSize);
    }

    return TRUE;
}

static BagItem *Pocket_FindSlotWithItemQuantity(BagItem *pocket, u32 pocketSize, u16 item, u16 count)
{
    for (u32 i = 0; i < pocketSize; i++) {
        if (pocket[i].item == item) {
            return pocket[i].quantity >= count ? &pocket[i] : NULL;
        }
    }

    return NULL;
}

static BagItem *Bag_FindSlotWithItemQuantity(Bag *bag, u16 item, u16 count, enum HeapId heapID)
{
    BagItem *pocket;
    u32 pocketSize;

    Bag_GetPocketForItem(bag, item, &pocket, &pocketSize, heapID);
    return Pocket_FindSlotWithItemQuantity(pocket, pocketSize, item, count);
}

BOOL Bag_TryRemoveItem(Bag *bag, u16 item, u16 count, enum HeapId heapID)
{
    BagItem *slot = Bag_FindSlotWithItemQuantity(bag, item, count, heapID);
    if (slot == NULL) {
        return FALSE;
    }

    slot->quantity -= count;

    if (slot->quantity == 0) {
        slot->item = ITEM_NONE;
    }

    u32 pocketSize;
    Bag_GetPocketForItem(bag, item, &slot, &pocketSize, heapID);
    Pocket_SortEmpty(slot, pocketSize);

    return TRUE;
}

BOOL Pocket_TryRemoveItem(BagItem *pocket, u32 pocketSize, u16 item, u16 count, enum HeapId heapID)
{
    BagItem *slot = Pocket_FindSlotWithItemQuantity(pocket, pocketSize, item, count);
    if (slot == NULL) {
        return FALSE;
    }

    slot->quantity -= count;

    if (slot->quantity == 0) {
        slot->item = ITEM_NONE;
    }

    Pocket_SortEmpty(pocket, pocketSize);

    return TRUE;
}

BOOL Bag_CanRemoveItem(Bag *bag, u16 item, u16 count, enum HeapId heapID)
{
    return Bag_FindSlotWithItemQuantity(bag, item, count, heapID) != NULL;
}

BOOL Bag_HasItemsInPocket(Bag *bag, u32 pocketID)
{
    BagItem *pocket;
    u32 pocketSize;

    switch (pocketID) {
    case POCKET_KEY_ITEMS:
        pocket = bag->keyItems;
        pocketSize = KEY_ITEM_POCKET_SIZE;
        break;
    case POCKET_ITEMS:
        pocket = bag->items;
        pocketSize = ITEM_POCKET_SIZE;
        break;
    case POCKET_BERRIES:
        pocket = bag->berries;
        pocketSize = BERRY_POCKET_SIZE;
        break;
    case POCKET_MEDICINE:
        pocket = bag->medicine;
        pocketSize = MEDICINE_POCKET_SIZE;
        break;
    case POCKET_BALLS:
        pocket = bag->pokeballs;
        pocketSize = POKEBALL_POCKET_SIZE;
        break;
    case POCKET_BATTLE_ITEMS:
        pocket = bag->battleItems;
        pocketSize = BATTLE_ITEM_POCKET_SIZE;
        break;
    case POCKET_MAIL:
        pocket = bag->mail;
        pocketSize = MAIL_POCKET_SIZE;
        break;
    case POCKET_TMHMS:
        pocket = bag->tmHms;
        pocketSize = TMHM_POCKET_SIZE;
        break;
    default:
        return FALSE;
    }

    for (u32 i = 0; i < pocketSize; i++) {
        if (pocket[i].item != ITEM_NONE) {
            return TRUE;
        }
    }

    return FALSE;
}

u16 Bag_GetItemQuantity(Bag *bag, u16 item, enum HeapId heapID)
{
    BagItem *slot = Bag_FindSlotWithItemQuantity(bag, item, 1, heapID);
    if (slot == NULL) {
        return 0;
    }

    return slot->quantity;
}

u16 Pocket_GetItemQuantity(BagItem *pocket, u32 pocketSize, u16 item, enum HeapId heapID)
{
    BagItem *slot = Pocket_FindSlotWithItemQuantity(pocket, pocketSize, item, 1);
    if (slot == NULL) {
        return 0;
    }

    return slot->quantity;
}

static void BagItem_Swap(BagItem *a, BagItem *b)
{
    BagItem temp = *a;
    *a = *b;
    *b = temp;
}

void Pocket_SortEmpty(BagItem *pocket, const u32 size)
{
    for (u32 i = 0; i < size - 1; i++) {
        for (u32 j = i + 1; j < size; j++) {
            if (pocket[i].quantity == 0) {
                BagItem_Swap(&pocket[i], &pocket[j]);
            }
        }
    }
}

void Pocket_Sort(BagItem *pocket, const u32 size)
{
    for (u32 i = 0; i < size - 1; i++) {
        for (u32 j = i + 1; j < size; j++) {
            if (pocket[i].quantity == 0 || (pocket[j].quantity != 0 && pocket[i].item > pocket[j].item)) {
                BagItem_Swap(&pocket[i], &pocket[j]);
            }
        }
    }
}

void *sub_0207D824(Bag *bag, const u8 *pockets, enum HeapId heapID)
{
    UnkStruct_0207CB08 *v0;
    int i;

    v0 = sub_0207CB08(heapID);

    for (i = 0; pockets[i] != 0xff; i++) {
        switch (pockets[i]) {
        case POCKET_KEY_ITEMS:
            sub_0207CB48(v0, bag->keyItems, POCKET_KEY_ITEMS, i);
            break;
        case POCKET_ITEMS:
            sub_0207CB48(v0, bag->items, POCKET_ITEMS, i);
            break;
        case POCKET_BERRIES:
            sub_0207CB48(v0, bag->berries, POCKET_BERRIES, i);
            break;
        case POCKET_MEDICINE:
            sub_0207CB48(v0, bag->medicine, POCKET_MEDICINE, i);
            break;
        case POCKET_BALLS:
            sub_0207CB48(v0, bag->pokeballs, POCKET_BALLS, i);
            break;
        case POCKET_BATTLE_ITEMS:
            sub_0207CB48(v0, bag->battleItems, POCKET_BATTLE_ITEMS, i);
            break;
        case POCKET_MAIL:
            sub_0207CB48(v0, bag->mail, POCKET_MAIL, i);
            break;
        case POCKET_TMHMS:
            sub_0207CB48(v0, bag->tmHms, POCKET_TMHMS, i);
            break;
        }
    }

    return v0;
}

BagItem *Bag_GetItemSlot(Bag *bag, u16 pocketID, u16 slot)
{
    BagItem *pocket;
    u16 pocketSize;

    switch (pocketID) {
    case POCKET_KEY_ITEMS:
        pocket = bag->keyItems;
        pocketSize = KEY_ITEM_POCKET_SIZE;
        break;
    case POCKET_ITEMS:
        pocket = bag->items;
        pocketSize = ITEM_POCKET_SIZE;
        break;
    case POCKET_BERRIES:
        pocket = bag->berries;
        pocketSize = BERRY_POCKET_SIZE;
        break;
    case POCKET_MEDICINE:
        pocket = bag->medicine;
        pocketSize = MEDICINE_POCKET_SIZE;
        break;
    case POCKET_BALLS:
        pocket = bag->pokeballs;
        pocketSize = POKEBALL_POCKET_SIZE;
        break;
    case POCKET_BATTLE_ITEMS:
        pocket = bag->battleItems;
        pocketSize = BATTLE_ITEM_POCKET_SIZE;
        break;
    case POCKET_MAIL:
        pocket = bag->mail;
        pocketSize = MAIL_POCKET_SIZE;
        break;
    case POCKET_TMHMS:
        pocket = bag->tmHms;
        pocketSize = TMHM_POCKET_SIZE;
        break;
    }

    return slot >= pocketSize ? NULL : &pocket[slot];
}

Bag *SaveData_GetBag(SaveData *saveData)
{
    return SaveData_SaveTable(saveData, SAVE_TABLE_ENTRY_BAG);
}

BagCursor *BagCursor_New(enum HeapId heapID)
{
    BagCursor *cursor = Heap_AllocFromHeap(heapID, sizeof(BagCursor));
    MI_CpuClear16(cursor, sizeof(BagCursor));
    return cursor;
}

void BagCursor_GetFieldPocketPosition(BagCursor *cursor, u32 pocket, u8 *outIndex, u8 *outScroll)
{
    *outIndex = cursor->field.index[pocket];
    *outScroll = cursor->field.scroll[pocket];
}

u16 BagCursor_GetFieldPocket(BagCursor *cursor)
{
    return cursor->field.pocket;
}

void BagCursor_SetFieldPocketPosition(BagCursor *cursor, u32 pocket, u8 index, u8 scroll)
{
    cursor->field.index[pocket] = index;
    cursor->field.scroll[pocket] = scroll;
}

void BagCursor_SetFieldPocket(BagCursor *cursor, u16 pocket)
{
    cursor->field.pocket = pocket;
}

void BagCursor_GetBattleCategoryPosition(BagCursor *cursor, u32 category, u8 *outIndex, u8 *outScroll)
{
    *outIndex = cursor->battle.index[category];
    *outScroll = cursor->battle.scroll[category];
}

u16 BagCursor_GetLastUsedBattleItem(BagCursor *cursor)
{
    return cursor->battle.lastUsedItemID;
}

u16 BagCursor_GetLastUsedBattleItemCategory(BagCursor *cursor)
{
    return cursor->battle.lastUsedCategory;
}

u16 BagCursor_GetBattleCurrentCategory(BagCursor *cursor)
{
    return cursor->battle.currentCategory;
}

void BagCursor_SetBattleCategoryPosition(BagCursor *cursor, u32 category, u8 index, u8 scroll)
{
    cursor->battle.index[category] = index;
    cursor->battle.scroll[category] = scroll;
}

void BagCursor_ResetBattle(BagCursor *cursor)
{
    for (u32 i = 0; i < ITEM_BATTLE_CATEGORY_MAX + 1; i++) {
        BagCursor_SetBattleCategoryPosition(cursor, i, 0, 0);
    }

    BagCursor_SetBattleCurrentCategory(cursor, ITEM_BATTLE_CATEGORY_RECOVER_HP);
}

void Bag_SetLastBattleItemUsed(BagCursor *cursor, u16 itemID, u16 category)
{
    cursor->battle.lastUsedItemID = itemID;
    cursor->battle.lastUsedCategory = category;
}

void BagCursor_SetBattleCurrentCategory(BagCursor *cursor, u16 category)
{
    cursor->battle.currentCategory = category;
}
