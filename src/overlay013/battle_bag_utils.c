#include "overlay013/battle_bag_utils.h"

#include "overlay013/ov13_022264F4.h"

#include "bag.h"
#include "item.h"

// Order is dictated by the bit shifts associated with each pocket. See items.h
static const u8 sbattlePocketIndexes[] = {
    BATTLE_POCKET_INDEX_POKE_BALLS,
    BATTLE_POCKET_INDEX_BATTLE_ITEMS,
    BATTLE_POCKET_INDEX_RECOVER_HP_PP,
    BATTLE_POCKET_INDEX_RECOVER_STATUS,
    BATTLE_POCKET_INDEX_RECOVER_HP_PP,
};

BOOL IsLastUsedBattleBagItemUsable(BattleBagTask *param0)
{
    if (param0->battleInfo->lastUsedItem == ITEM_NONE) {
        return FALSE;
    }

    if (Bag_CanRemoveItem(param0->battleInfo->bag, param0->battleInfo->lastUsedItem, 1, param0->battleInfo->heapID) == FALSE) {
        param0->battleInfo->lastUsedItem = ITEM_NONE;
        param0->battleInfo->lastUsedItemPocket = ITEM_BATTLE_CATEGORY_RECOVER_HP;
        return FALSE;
    }

    return TRUE;
}

void SetBattlePocketPositionToLastUsedItem(BattleBagTask *param0)
{
    u32 i;

    for (i = 0; i < BATTLE_POCKET_SIZE; i++) {
        if (param0->battleInfo->lastUsedItem == param0->battleBagItems[param0->currentBattlePocket][i].item) {
            param0->battleInfo->pocketCurrentPagePositions[param0->currentBattlePocket] = i % BATTLE_POCKET_ITEMS_PER_PAGE;
            param0->battleInfo->pocketCurrentPages[param0->currentBattlePocket] = i / BATTLE_POCKET_ITEMS_PER_PAGE;
            break;
        }
    }
}

void InitializeBattleBag(BattleBagTask *param0)
{
    BagItem *bagItem;
    u32 i, l, currentPocketSlot;
    s32 bagItemBattlePocketMask;

    for (i = 0; i < POCKET_MAX; i++) {
        currentPocketSlot = 0;

        while (TRUE) {
            bagItem = Bag_GetItemSlot(param0->battleInfo->bag, i, currentPocketSlot);

            if (bagItem == NULL) {
                break;
            }

            if (!(bagItem->item == ITEM_NONE || bagItem->quantity == 0)) {
                bagItemBattlePocketMask = Item_LoadParam(bagItem->item, ITEM_PARAM_BATTLE_POCKET, param0->battleInfo->heapID);

                for (l = 0; l < BATTLE_POCKET_MAX; l++) {
                    if ((bagItemBattlePocketMask & (1 << l)) == FALSE) {
                        continue;
                    }

                    param0->battleBagItems[sbattlePocketIndexes[l]][param0->numBattlePocketItems[sbattlePocketIndexes[l]]] = *bagItem;
                    param0->numBattlePocketItems[sbattlePocketIndexes[l]]++;
                }
            }

            currentPocketSlot++;
        }
    }

    for (i = 0; i < BATTLE_POCKET_MAX; i++) {
        if (param0->numBattlePocketItems[i] == 0) {
            param0->numBattlePocketPages[i] = 0;
        } else {
            param0->numBattlePocketPages[i] = (param0->numBattlePocketItems[i] - 1) / BATTLE_POCKET_ITEMS_PER_PAGE;
        }

        if (param0->numBattlePocketPages[i] < param0->battleInfo->pocketCurrentPages[i]) {
            param0->battleInfo->pocketCurrentPages[i] = param0->numBattlePocketPages[i];
        }
    }
}

u16 GetBattleBagItem(BattleBagTask *param0, u32 pagePosition)
{
    if (param0->battleBagItems[param0->currentBattlePocket][param0->battleInfo->pocketCurrentPages[param0->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + pagePosition].item != ITEM_NONE && param0->battleBagItems[param0->currentBattlePocket][param0->battleInfo->pocketCurrentPages[param0->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + pagePosition].quantity != 0) {
        return param0->battleBagItems[param0->currentBattlePocket][param0->battleInfo->pocketCurrentPages[param0->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + pagePosition].item;
    }

    return ITEM_NONE;
}
