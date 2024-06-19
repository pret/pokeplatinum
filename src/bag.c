#include <nitro.h>
#include <string.h>

#include "constants/heap.h"
#include "constants/items.h"
#include "consts/items.h"
#include "struct_decls/struct_0207CB08_decl.h"
#include "savedata.h"

#include "struct_defs/struct_0207CDEC.h"

#include "heap.h"
#include "savedata.h"
#include "unk_0207CB08.h"
#include "item.h"
#include "bag.h"

#define BAG_SLOT_INVALID    ((u32)(-1))

#define BAG_MAX_ITEMS       999
#define BAG_MAX_TMHMS       99

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

u32 sub_0207D3FC (const Bag * param0)
{
    return param0->unk_770;
}

void sub_0207D404 (Bag * param0, u32 param1)
{
    param0->unk_770 = param1;
}

static u32 Bag_GetPocketForItem(Bag *bag, u16 item, BagItem **outPocket, u32 *outMax, enum HeapId heapID)
{
    u32 pocket = Item_LoadParam(item, ITEM_PARAM_FIELD_POCKET, heapID);

    switch (pocket) {
    case POCKET_KEY_ITEMS:
        *outPocket = bag->keyItems;
        *outMax = 50;
        break;
    case POCKET_ITEMS:
        *outPocket = bag->items;
        *outMax = 165;
        break;
    case POCKET_BERRIES:
        *outPocket = bag->berries;
        *outMax = 64;
        break;
    case POCKET_MEDICINE:
        *outPocket = bag->medicine;
        *outMax = 40;
        break;
    case POCKET_BALLS:
        *outPocket = bag->pokeballs;
        *outMax = 15;
        break;
    case POCKET_BATTLE_ITEMS:
        *outPocket = bag->battleItems;
        *outMax = 30;
        break;
    case POCKET_MAIL:
        *outPocket = bag->mail;
        *outMax = 12;
        break;
    case POCKET_TMHMS:
        *outPocket = bag->tmHms;
        *outMax = 100;
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

        if (slot == BAG_SLOT_INVALID) {
            if (pocket[i].item == ITEM_NONE && pocket[i].quantity == 0) {
                slot = i;
            }
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
        return Pocket_FindSlotToAddItem(pocketItems, pocketSize, item, count, BAG_MAX_TMHMS);
    }

    return Pocket_FindSlotToAddItem(pocketItems, pocketSize, item, count, BAG_MAX_ITEMS);
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

static BagItem *Pocket_FindSlotToRemoveItem(BagItem *pocket, u32 pocketSize, u16 item, u16 count)
{
    for (u32 i = 0; i < pocketSize; i++) {
        if (pocket[i].item == item) {
            return pocket[i].quantity >= count ? &pocket[i] : NULL;
        }
    }

    return NULL;
}

static BagItem *Bag_FindSlotToRemoveItem(Bag *bag, u16 item, u16 count, enum HeapId heapID)
{
    BagItem *pocket;
    u32 pocketSize;

    Bag_GetPocketForItem(bag, item, &pocket, &pocketSize, heapID);
    return Pocket_FindSlotToRemoveItem(pocket, pocketSize, item, count);
}

BOOL Bag_TryRemoveItem(Bag *bag, u16 item, u16 count, enum HeapId heapID)
{
    BagItem *slot = Bag_FindSlotToRemoveItem(bag, item, count, heapID);
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
    BagItem *slot = Pocket_FindSlotToRemoveItem(pocket, pocketSize, item, count);
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
    return Bag_FindSlotToRemoveItem(bag, item, count, heapID) != NULL;
}

BOOL sub_0207D69C (Bag * param0, u32 param1)
{
    BagItem * v0;
    u32 v1;
    u32 v2;

    switch (param1) {
    case 7:
        v0 = param0->keyItems;
        v1 = 50;
        break;
    case 0:
        v0 = param0->items;
        v1 = 165;
        break;
    case 4:
        v0 = param0->berries;
        v1 = 64;
        break;
    case 1:
        v0 = param0->medicine;
        v1 = 40;
        break;
    case 2:
        v0 = param0->pokeballs;
        v1 = 15;
        break;
    case 6:
        v0 = param0->battleItems;
        v1 = 30;
        break;
    case 5:
        v0 = param0->mail;
        v1 = 12;
        break;
    case 3:
        v0 = param0->tmHms;
        v1 = 100;
        break;
    default:
        return 0;
    }

    for (v2 = 0; v2 < v1; v2++) {
        if (v0[v2].item != 0) {
            return 1;
        }
    }

    return 0;
}

u16 sub_0207D730 (Bag * param0, u16 param1, u32 param2)
{
    BagItem * v0 = Bag_FindSlotToRemoveItem(param0, param1, 1, param2);

    if (v0 == NULL) {
        return 0;
    }

    return v0->quantity;
}

u16 sub_0207D748 (BagItem * param0, u32 param1, u16 param2, u32 param3)
{
    BagItem * v0 = Pocket_FindSlotToRemoveItem(param0, param1, param2, 1);

    if (v0 == NULL) {
        return 0;
    }

    return v0->quantity;
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

void * sub_0207D824 (Bag * param0, const u8 * param1, u32 param2)
{
    UnkStruct_0207CB08 * v0;
    int v1;

    v0 = sub_0207CB08(param2);

    for (v1 = 0; param1[v1] != 0xff; v1++) {
        switch (param1[v1]) {
        case 7:
            sub_0207CB48(v0, param0->keyItems, 7, v1);
            break;
        case 0:
            sub_0207CB48(v0, param0->items, 0, v1);
            break;
        case 4:
            sub_0207CB48(v0, param0->berries, 4, v1);
            break;
        case 1:
            sub_0207CB48(v0, param0->medicine, 1, v1);
            break;
        case 2:
            sub_0207CB48(v0, param0->pokeballs, 2, v1);
            break;
        case 6:
            sub_0207CB48(v0, param0->battleItems, 6, v1);
            break;
        case 5:
            sub_0207CB48(v0, param0->mail, 5, v1);
            break;
        case 3:
            sub_0207CB48(v0, param0->tmHms, 3, v1);
            break;
        }
    }

    return v0;
}

BagItem * sub_0207D910 (Bag * param0, u16 param1, u16 param2)
{
    BagItem * v0;
    u16 v1;

    switch (param1) {
    case 7:
        v0 = param0->keyItems;
        v1 = 50;
        break;
    case 0:
        v0 = param0->items;
        v1 = 165;
        break;
    case 4:
        v0 = param0->berries;
        v1 = 64;
        break;
    case 1:
        v0 = param0->medicine;
        v1 = 40;
        break;
    case 2:
        v0 = param0->pokeballs;
        v1 = 15;
        break;
    case 6:
        v0 = param0->battleItems;
        v1 = 30;
        break;
    case 5:
        v0 = param0->mail;
        v1 = 12;
        break;
    case 3:
        v0 = param0->tmHms;
        v1 = 100;
        break;
    }

    if (param2 >= v1) {
        return NULL;
    }

    return &v0[param2];
}

Bag * sub_0207D990 (SaveData * param0)
{
    Bag * v0;

    v0 = (Bag *)SaveData_SaveTable(param0, 3);
    return v0;
}

UnkStruct_0207D99C * sub_0207D99C (u32 param0)
{
    UnkStruct_0207D99C * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_0207D99C));
    MI_CpuClear16(v0, sizeof(UnkStruct_0207D99C));

    return v0;
}

void sub_0207D9B4 (UnkStruct_0207D99C * param0, u32 param1, u8 * param2, u8 * param3)
{
    *param2 = param0->unk_00.unk_08[param1];
    *param3 = param0->unk_00.unk_00[param1];
}

u16 sub_0207D9C4 (UnkStruct_0207D99C * param0)
{
    return param0->unk_00.unk_10;
}

void sub_0207D9C8 (UnkStruct_0207D99C * param0, u32 param1, u8 param2, u8 param3)
{
    param0->unk_00.unk_08[param1] = param2;
    param0->unk_00.unk_00[param1] = param3;
}

void sub_0207D9D4 (UnkStruct_0207D99C * param0, u16 param1)
{
    param0->unk_00.unk_10 = param1;
}

void sub_0207D9D8 (UnkStruct_0207D99C * param0, u32 param1, u8 * param2, u8 * param3)
{
    *param2 = param0->unk_14.unk_05[param1];
    *param3 = param0->unk_14.unk_00[param1];
}

u16 sub_0207D9E4 (UnkStruct_0207D99C * param0)
{
    return param0->unk_14.unk_0A;
}

u16 sub_0207D9E8 (UnkStruct_0207D99C * param0)
{
    return param0->unk_14.unk_0C;
}

u16 sub_0207D9EC (UnkStruct_0207D99C * param0)
{
    return param0->unk_14.unk_0E;
}

void sub_0207D9F0 (UnkStruct_0207D99C * param0, u32 param1, u8 param2, u8 param3)
{
    param0->unk_14.unk_05[param1] = param2;
    param0->unk_14.unk_00[param1] = param3;
}

void sub_0207D9F8 (UnkStruct_0207D99C * param0)
{
    u32 v0;

    for (v0 = 0; v0 < 5; v0++) {
        sub_0207D9F0(param0, v0, 0, 0);
    }

    sub_0207DA24(param0, 0);
}

void Bag_SetLastItemUsed (UnkStruct_0207D99C * param0, u16 param1, u16 param2)
{
    param0->unk_14.unk_0A = param1;
    param0->unk_14.unk_0C = param2;
}

void sub_0207DA24 (UnkStruct_0207D99C * param0, u16 param1)
{
    param0->unk_14.unk_0E = param1;
}
