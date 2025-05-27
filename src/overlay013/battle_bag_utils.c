#include "overlay013/battle_bag_utils.h"

#include "overlay013/battle_bag_task.h"

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

BOOL IsLastUsedBattleBagItemUsable(BattleBagTask *battleBagTask)
{
    if (battleBagTask->battleInfo->lastUsedItem == ITEM_NONE) {
        return FALSE;
    }

    if (Bag_CanRemoveItem(battleBagTask->battleInfo->bag, battleBagTask->battleInfo->lastUsedItem, 1, battleBagTask->battleInfo->heapID) == FALSE) {
        battleBagTask->battleInfo->lastUsedItem = ITEM_NONE;
        battleBagTask->battleInfo->lastUsedItemPocket = ITEM_BATTLE_CATEGORY_RECOVER_HP;
        return FALSE;
    }

    return TRUE;
}

void SetBattlePocketPositionToLastUsedItem(BattleBagTask *battleBagTask)
{
    u32 i;

    for (i = 0; i < BATTLE_POCKET_SIZE; i++) {
        if (battleBagTask->battleInfo->lastUsedItem == battleBagTask->battleBagItems[battleBagTask->currentBattlePocket][i].item) {
            battleBagTask->battleInfo->pocketCurrentPagePositions[battleBagTask->currentBattlePocket] = i % BATTLE_POCKET_ITEMS_PER_PAGE;
            battleBagTask->battleInfo->pocketCurrentPages[battleBagTask->currentBattlePocket] = i / BATTLE_POCKET_ITEMS_PER_PAGE;
            break;
        }
    }
}

void InitializeBattleBag(BattleBagTask *battleBagTask)
{
    BagItem *bagItem;
    u32 i, l, currentPocketSlot;
    s32 bagItemBattlePocketMask;

    for (i = 0; i < POCKET_MAX; i++) {
        currentPocketSlot = 0;

        while (TRUE) {
            bagItem = Bag_GetItemSlot(battleBagTask->battleInfo->bag, i, currentPocketSlot);

            if (bagItem == NULL) {
                break;
            }

            if (!(bagItem->item == ITEM_NONE || bagItem->quantity == 0)) {
                bagItemBattlePocketMask = Item_LoadParam(bagItem->item, ITEM_PARAM_BATTLE_POCKET, battleBagTask->battleInfo->heapID);

                for (l = 0; l < BATTLE_POCKET_MAX; l++) {
                    if ((bagItemBattlePocketMask & (1 << l)) == FALSE) {
                        continue;
                    }

                    battleBagTask->battleBagItems[sbattlePocketIndexes[l]][battleBagTask->numBattlePocketItems[sbattlePocketIndexes[l]]] = *bagItem;
                    battleBagTask->numBattlePocketItems[sbattlePocketIndexes[l]]++;
                }
            }

            currentPocketSlot++;
        }
    }

    for (i = 0; i < BATTLE_POCKET_MAX; i++) {
        if (battleBagTask->numBattlePocketItems[i] == 0) {
            battleBagTask->numBattlePocketPages[i] = 0;
        } else {
            battleBagTask->numBattlePocketPages[i] = (battleBagTask->numBattlePocketItems[i] - 1) / BATTLE_POCKET_ITEMS_PER_PAGE;
        }

        if (battleBagTask->numBattlePocketPages[i] < battleBagTask->battleInfo->pocketCurrentPages[i]) {
            battleBagTask->battleInfo->pocketCurrentPages[i] = battleBagTask->numBattlePocketPages[i];
        }
    }
}

u16 GetBattleBagItem(BattleBagTask *battleBagTask, u32 pagePosition)
{
    if (battleBagTask->battleBagItems[battleBagTask->currentBattlePocket][battleBagTask->battleInfo->pocketCurrentPages[battleBagTask->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + pagePosition].item != ITEM_NONE && battleBagTask->battleBagItems[battleBagTask->currentBattlePocket][battleBagTask->battleInfo->pocketCurrentPages[battleBagTask->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + pagePosition].quantity != 0) {
        return battleBagTask->battleBagItems[battleBagTask->currentBattlePocket][battleBagTask->battleInfo->pocketCurrentPages[battleBagTask->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + pagePosition].item;
    }

    return ITEM_NONE;
}
