#include "overlay013/battle_bag_utils.h"

#include "overlay013/battle_bag.h"

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

BOOL BattleBag_CanUseLastUsedItem(BattleBag *battleBagTask)
{
    if (battleBagTask->context->lastUsedItem == ITEM_NONE) {
        return FALSE;
    }

    if (Bag_CanRemoveItem(battleBagTask->context->bag, battleBagTask->context->lastUsedItem, 1, battleBagTask->context->heapID) == FALSE) {
        battleBagTask->context->lastUsedItem = ITEM_NONE;
        battleBagTask->context->lastUsedItemPocket = ITEM_BATTLE_CATEGORY_RECOVER_HP;
        return FALSE;
    }

    return TRUE;
}

void BattleBag_SetLastUsedPocket(BattleBag *battleBagTask)
{
    u32 i;

    for (i = 0; i < BATTLE_POCKET_SIZE; i++) {
        if (battleBagTask->context->lastUsedItem == battleBagTask->items[battleBagTask->currentBattlePocket][i].item) {
            battleBagTask->context->pocketCurrentPagePositions[battleBagTask->currentBattlePocket] = i % BATTLE_POCKET_ITEMS_PER_PAGE;
            battleBagTask->context->pocketCurrentPages[battleBagTask->currentBattlePocket] = i / BATTLE_POCKET_ITEMS_PER_PAGE;
            break;
        }
    }
}

void BattleBag_Init(BattleBag *battleBagTask)
{
    BagItem *bagItem;
    u32 i, l, currentPocketSlot;
    s32 bagItemBattlePocketMask;

    for (i = 0; i < POCKET_MAX; i++) {
        currentPocketSlot = 0;

        while (TRUE) {
            bagItem = Bag_GetItemSlot(battleBagTask->context->bag, i, currentPocketSlot);

            if (bagItem == NULL) {
                break;
            }

            if (!(bagItem->item == ITEM_NONE || bagItem->quantity == 0)) {
                bagItemBattlePocketMask = Item_LoadParam(bagItem->item, ITEM_PARAM_BATTLE_POCKET, battleBagTask->context->heapID);

                for (l = 0; l < BATTLE_POCKET_MAX; l++) {
                    if ((bagItemBattlePocketMask & (1 << l)) == FALSE) {
                        continue;
                    }

                    battleBagTask->items[sbattlePocketIndexes[l]][battleBagTask->numBattlePocketItems[sbattlePocketIndexes[l]]] = *bagItem;
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

        if (battleBagTask->numBattlePocketPages[i] < battleBagTask->context->pocketCurrentPages[i]) {
            battleBagTask->context->pocketCurrentPages[i] = battleBagTask->numBattlePocketPages[i];
        }
    }
}

u16 BattleBag_GetItem(BattleBag *battleBagTask, u32 pagePosition)
{
    if (battleBagTask->items[battleBagTask->currentBattlePocket][battleBagTask->context->pocketCurrentPages[battleBagTask->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + pagePosition].item != ITEM_NONE && battleBagTask->items[battleBagTask->currentBattlePocket][battleBagTask->context->pocketCurrentPages[battleBagTask->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + pagePosition].quantity != 0) {
        return battleBagTask->items[battleBagTask->currentBattlePocket][battleBagTask->context->pocketCurrentPages[battleBagTask->currentBattlePocket] * BATTLE_POCKET_ITEMS_PER_PAGE + pagePosition].item;
    }

    return ITEM_NONE;
}
