#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_0207CB08_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

#include "struct_defs/struct_0207CDEC.h"

#include "heap.h"
#include "unk_020244AC.h"
#include "unk_0207CB08.h"
#include "item.h"
#include "bag.h"

#include "constants/items.h"

typedef struct Bag_t {
    ItemSlot items[NUM_BAG_ITEMS];
    ItemSlot keyItems[NUM_BAG_KEY_ITEMS];
    ItemSlot TMsHMs[NUM_BAG_TMS_HMS];
    ItemSlot mail[NUM_BAG_MAIL];
    ItemSlot medicine[NUM_BAG_MEDICINE];
    ItemSlot berries[NUM_BAG_BERRIES];
    ItemSlot balls[NUM_BAG_BALLS];
    ItemSlot battleItems[NUM_BAG_BATTLE_ITEMS];
    u32 registeredItem;
} Bag;

typedef struct {
    u8 unk_00[8];
    u8 unk_08[8];
    u16 unk_10;
    u16 unk_12;
} UnkStruct_0207D99C_sub1;

typedef struct {
    u8 unk_00[5];
    u8 unk_05[5];
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
} UnkStruct_0207D99C_sub2;

typedef struct UnkStruct_0207D99C_t {
    UnkStruct_0207D99C_sub1 unk_00;
    UnkStruct_0207D99C_sub2 unk_14;
} UnkStruct_0207D99C;

static u32 Bag_GetItemPocket(Bag * bag, u16 item_id, ItemSlot ** slot_p, u32 * count_p, u32 heap_id);

int bag (void)
{
    return sizeof(Bag);
}

Bag * sub_0207D3C0 (int param0)
{
    Bag * v0;

    v0 = Heap_AllocFromHeap(param0, sizeof(Bag));
    Sav2_Bag_init(v0);

    return v0;
}

void Sav2_Bag_init (Bag * param0)
{
    MI_CpuClear16(param0, sizeof(Bag));
}

void Sav2_Bag_copy (const Bag * param0, Bag * param1)
{
    MI_CpuCopy8(param0, param1, sizeof(Bag));
}

u32 Bag_GetRegisteredItem (const Bag * bag)
{
    return bag->registeredItem;
}

void Bag_SetRegisteredItem (Bag * bag, u32 newRegisteredItem)
{
    bag->registeredItem = newRegisteredItem;
}

static u32 Bag_GetItemPocket (Bag * bag, u16 item_id, ItemSlot ** slot_p, u32 * count_p, u32 heap_id)
{
    u32 pocket = Item_GetAttribute(item_id, 5, heap_id);

    switch (pocket)
    {
        case POCKET_KEY_ITEMS:
            *slot_p = bag->keyItems;
            *count_p = NUM_BAG_KEY_ITEMS;
            break;
        case POCKET_ITEMS:
            *slot_p = bag->items;
            *count_p = NUM_BAG_ITEMS;
            break;
        case POCKET_BERRIES:
            *slot_p = bag->berries;
            *count_p = NUM_BAG_BERRIES;
            break;
        case POCKET_MEDICINE:
            *slot_p = bag->medicine;
            *count_p = NUM_BAG_MEDICINE;
            break;
        case POCKET_BALLS:
            *slot_p = bag->balls;
            *count_p = NUM_BAG_BALLS;
            break;
        case POCKET_BATTLE_ITEMS:
            *slot_p = bag->battleItems;
            *count_p = NUM_BAG_BATTLE_ITEMS;
            break;
        case POCKET_MAIL:
            *slot_p = bag->mail;
            *count_p = NUM_BAG_MAIL;
            break;
        case POCKET_TMHMS:
            *slot_p = bag->TMsHMs;
            *count_p = NUM_BAG_TMS_HMS;
            break;
    }

    return pocket;
}

static ItemSlot * Pocket_GetItemSlotForAdd (ItemSlot * param0, u32 param1, u16 param2, u16 param3, u16 param4)
{
    u32 v0;
    u32 v1 = 0xffffffff;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_00 == param2) {
            if ((param0[v0].unk_02 + param3) > param4) {
                return NULL;
            }

            return &param0[v0];
        }

        if (v1 == 0xffffffff) {
            if ((param0[v0].unk_00 == 0) && (param0[v0].unk_02 == 0)) {
                v1 = v0;
            }
        }
    }

    if (v1 == 0xffffffff) {
        return NULL;
    }

    return &param0[v1];
}

static ItemSlot * sub_0207D518 (Bag * param0, u16 param1, u16 param2, u32 param3)
{
    ItemSlot * v0;
    u32 v1;
    u32 v2;

    v2 = Bag_GetItemPocket(param0, param1, &v0, &v1, param3);

    if (v2 == 3) {
        return Pocket_GetItemSlotForAdd(v0, v1, param1, param2, 99);
    }

    return Pocket_GetItemSlotForAdd(v0, v1, param1, param2, 999);
}

BOOL sub_0207D55C (Bag * param0, u16 param1, u16 param2, u32 param3)
{
    if (sub_0207D518(param0, param1, param2, param3) == NULL) {
        return 0;
    }

    return 1;
}

BOOL sub_0207D570 (Bag * param0, u16 param1, u16 param2, u32 param3)
{
    ItemSlot * v0 = sub_0207D518(param0, param1, param2, param3);

    if (v0 == NULL) {
        return 0;
    }

    v0->unk_00 = param1;
    v0->unk_02 += param2;

    {
        u32 v1;
        u32 v2;

        v1 = Bag_GetItemPocket(param0, param1, &v0, &v2, param3);

        if ((v1 == 4) || (v1 == 3)) {
            sub_0207D7CC(v0, v2);
        }
    }

    return 1;
}

static ItemSlot * sub_0207D5B8 (ItemSlot * param0, u32 param1, u16 param2, u16 param3)
{
    u32 v0;

    for (v0 = 0; v0 < param1; v0++) {
        if (param0[v0].unk_00 == param2) {
            if (param0[v0].unk_02 >= param3) {
                return &param0[v0];
            } else {
                return NULL;
            }
        }
    }

    return NULL;
}

static ItemSlot * sub_0207D5E8 (Bag * param0, u16 param1, u16 param2, u32 param3)
{
    ItemSlot * v0;
    u32 v1;

    Bag_GetItemPocket(param0, param1, &v0, &v1, param3);
    return sub_0207D5B8(v0, v1, param1, param2);
}

BOOL sub_0207D60C (Bag * param0, u16 param1, u16 param2, u32 param3)
{
    ItemSlot * v0 = sub_0207D5E8(param0, param1, param2, param3);

    if (v0 == NULL) {
        return 0;
    }

    v0->unk_02 -= param2;

    if (v0->unk_02 == 0) {
        v0->unk_00 = 0;
    }

    {
        u32 v1;

        Bag_GetItemPocket(param0, param1, &v0, &v1, param3);
        sub_0207D780(v0, v1);
    }

    return 1;
}

BOOL sub_0207D658 (ItemSlot * param0, u32 param1, u16 param2, u16 param3, u32 param4)
{
    ItemSlot * v0 = sub_0207D5B8(param0, param1, param2, param3);

    if (v0 == NULL) {
        return 0;
    }

    v0->unk_02 -= param3;

    if (v0->unk_02 == 0) {
        v0->unk_00 = 0;
    }

    sub_0207D780(param0, param1);

    return 1;
}

BOOL sub_0207D688 (Bag * param0, u16 param1, u16 param2, u32 param3)
{
    if (sub_0207D5E8(param0, param1, param2, param3) == NULL) {
        return 0;
    }

    return 1;
}

BOOL sub_0207D69C (Bag * param0, u32 param1)
{
    ItemSlot * v0;
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
        v0 = param0->balls;
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
        v0 = param0->TMsHMs;
        v1 = 100;
        break;
    default:
        return 0;
    }

    for (v2 = 0; v2 < v1; v2++) {
        if (v0[v2].unk_00 != 0) {
            return 1;
        }
    }

    return 0;
}

u16 sub_0207D730 (Bag * param0, u16 param1, u32 param2)
{
    ItemSlot * v0 = sub_0207D5E8(param0, param1, 1, param2);

    if (v0 == NULL) {
        return 0;
    }

    return v0->unk_02;
}

u16 sub_0207D748 (ItemSlot * param0, u32 param1, u16 param2, u32 param3)
{
    ItemSlot * v0 = sub_0207D5B8(param0, param1, param2, 1);

    if (v0 == NULL) {
        return 0;
    }

    return v0->unk_02;
}

static void sub_0207D75C (ItemSlot * param0, ItemSlot * param1)
{
    ItemSlot v0;

    v0 = *param0;

    *param0 = *param1;
    *param1 = v0;
}

void sub_0207D780 (ItemSlot * param0, const u32 param1)
{
    u32 v0, v1;

    for (v0 = 0; v0 < param1 - 1; v0++) {
        for (v1 = v0 + 1; v1 < param1; v1++) {
            if (param0[v0].unk_02 == 0) {
                sub_0207D75C(&param0[v0], &param0[v1]);
            }
        }
    }
}

void sub_0207D7CC (ItemSlot * param0, const u32 param1)
{
    u32 v0, v1;

    for (v0 = 0; v0 < param1 - 1; v0++) {
        for (v1 = v0 + 1; v1 < param1; v1++) {
            if ((param0[v0].unk_02 == 0) || ((param0[v1].unk_02 != 0) && (param0[v0].unk_00 > param0[v1].unk_00))) {
                sub_0207D75C(&param0[v0], &param0[v1]);
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
            sub_0207CB48(v0, param0->balls, 2, v1);
            break;
        case 6:
            sub_0207CB48(v0, param0->battleItems, 6, v1);
            break;
        case 5:
            sub_0207CB48(v0, param0->mail, 5, v1);
            break;
        case 3:
            sub_0207CB48(v0, param0->TMsHMs, 3, v1);
            break;
        }
    }

    return v0;
}

ItemSlot * sub_0207D910 (Bag * param0, u16 param1, u16 param2)
{
    ItemSlot * v0;
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
        v0 = param0->balls;
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
        v0 = param0->TMsHMs;
        v1 = 100;
        break;
    }

    if (param2 >= v1) {
        return NULL;
    }

    return &v0[param2];
}

Bag * sub_0207D990 (UnkStruct_021C0794 * param0)
{
    Bag * v0;

    v0 = (Bag *)sub_020245BC(param0, 3);
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

void sub_0207DA1C (UnkStruct_0207D99C * param0, u16 param1, u16 param2)
{
    param0->unk_14.unk_0A = param1;
    param0->unk_14.unk_0C = param2;
}

void sub_0207DA24 (UnkStruct_0207D99C * param0, u16 param1)
{
    param0->unk_14.unk_0E = param1;
}
