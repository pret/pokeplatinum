#include "overlay013/battle_bag_utils.h"

#include "overlay013/struct_ov13_02227244.h"

#include "bag.h"
#include "item.h"

#define BATTLE_BAG_POCKET_SIZE 36
#define BATTLE_BAG_POCKET_NUM  5

enum BattleBagPocketMask {
    BATTLE_BAG_POCKET_MASK_POKE_BALLS = 0x0,
    BATTLE_BAG_POCKET_MASK_BATTLE_ITEMS,
    BATTLE_BAG_POCKET_MASK_RECOVER_HP,
    BATTLE_BAG_POCKET_MASK_RECOVER_STATUS,
    BATTLE_BAG_POCKET_MASK_UNUSUED = 0x0,
};

static const u8 battleBagPocketMasks[] = {
    BATTLE_BAG_POCKET_MASK_RECOVER_HP,
    BATTLE_BAG_POCKET_MASK_RECOVER_STATUS,
    BATTLE_BAG_POCKET_MASK_POKE_BALLS,
    BATTLE_BAG_POCKET_MASK_BATTLE_ITEMS,
    BATTLE_BAG_POCKET_MASK_UNUSUED
};

u8 IsLastUsedItemUsable(UnkStruct_ov13_02227244 *param0)
{
    if (param0->unk_00->unk_20 == ITEM_NONE) {
        return FALSE;
    }

    if (Bag_CanRemoveItem(param0->unk_00->unk_08, param0->unk_00->unk_20, 1, param0->unk_00->heapID) == FALSE) {
        param0->unk_00->unk_20 = ITEM_NONE;
        param0->unk_00->unk_1F = ITEM_BATTLE_CATEGORY_RECOVER_HP;
        return FALSE;
    }

    return TRUE;
}

void SetPositionToLastUsedItem(UnkStruct_ov13_02227244 *param0)
{
    u32 i;

    for (i = 0; i < BATTLE_BAG_POCKET_SIZE; i++) {
        if (param0->unk_00->unk_20 == param0->unk_3C[param0->unk_114D][i].item) {
            param0->unk_00->unk_27[param0->unk_114D] = i % BATTLE_BAG_ITEMS_PER_POCKET_PAGE;
            param0->unk_00->unk_2C[param0->unk_114D] = i / BATTLE_BAG_ITEMS_PER_POCKET_PAGE;
            break;
        }
    }
}

static const u8 Unk_ov13_02229BB0[] = {
    0x2,
    0x3,
    0x0,
    0x1,
    0x0
};

void InitializeBattleBag(UnkStruct_ov13_02227244 *param0)
{
    BagItem *bagItem;
    u32 i, l, currentPocketSlot;
    s32 bagItemBattlePocketMask;

    for (i = 0; i < POCKET_MAX; i++) {
        currentPocketSlot = 0;

        while (TRUE) {
            bagItem = Bag_GetItemSlot(param0->unk_00->unk_08, i, currentPocketSlot);

            if (bagItem == NULL) {
                break;
            }

            if (!((bagItem->item == ITEM_NONE) || (bagItem->quantity == 0))) {
                bagItemBattlePocketMask = Item_LoadParam(bagItem->item, ITEM_PARAM_BATTLE_POCKET, param0->unk_00->heapID);

                for (l = 0; l < BATTLE_BAG_POCKET_NUM; l++) {
                    if ((bagItemBattlePocketMask & (1 << l)) == FALSE) {
                        continue;
                    }

                    param0->unk_3C[battleBagPocketMasks[l]][param0->unk_114F[battleBagPocketMasks[l]]] = *bagItem;
                    param0->unk_114F[battleBagPocketMasks[l]]++;
                }
            }

            currentPocketSlot++;
        }
    }

    for (i = 0; i < BATTLE_BAG_POCKET_NUM; i++) {
        if (param0->unk_114F[i] == 0) {
            param0->unk_1154[i] = 0;
        } else {
            param0->unk_1154[i] = (param0->unk_114F[i] - 1) / BATTLE_BAG_ITEMS_PER_POCKET_PAGE;
        }

        if (param0->unk_1154[i] < param0->unk_00->unk_2C[i]) {
            param0->unk_00->unk_2C[i] = param0->unk_1154[i];
        }
    }
}

u16 GetBattleBagItem(UnkStruct_ov13_02227244 *param0, u32 pagePosition)
{
    if ((param0->unk_3C[param0->unk_114D][param0->unk_00->unk_2C[param0->unk_114D] * BATTLE_BAG_ITEMS_PER_POCKET_PAGE + pagePosition].item != ITEM_NONE) && (param0->unk_3C[param0->unk_114D][param0->unk_00->unk_2C[param0->unk_114D] * BATTLE_BAG_ITEMS_PER_POCKET_PAGE + pagePosition].quantity != 0)) {
        return param0->unk_3C[param0->unk_114D][param0->unk_00->unk_2C[param0->unk_114D] * BATTLE_BAG_ITEMS_PER_POCKET_PAGE + pagePosition].item;
    }

    return ITEM_NONE;
}
