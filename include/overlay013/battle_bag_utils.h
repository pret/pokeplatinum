#ifndef POKEPLATINUM_BATTLE_BAG_UTILS
#define POKEPLATINUM_BATTLE_BAG_UTILS

#include "overlay013/battle_bag_task.h"

enum BattlePocketIndex {
    BATTLE_POCKET_INDEX_RECOVER_HP_PP = 0,
    BATTLE_POCKET_INDEX_RECOVER_STATUS,
    BATTLE_POCKET_INDEX_POKE_BALLS,
    BATTLE_POCKET_INDEX_BATTLE_ITEMS,
    BATTLE_POCKET_INDEX_NONE,
};

BOOL IsLastUsedBattleBagItemUsable(BattleBagTask *battleBagTask);
void SetBattlePocketPositionToLastUsedItem(BattleBagTask *battleBagTask);
void InitializeBattleBag(BattleBagTask *battleBagTask);
u16 GetBattleBagItem(BattleBagTask *battleBagTask, u32 pagePosition);

#endif // POKEPLATINUM_BATTLE_BAG_UTILS
