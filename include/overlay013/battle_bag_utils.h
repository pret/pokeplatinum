#ifndef POKEPLATINUM_BATTLE_BAG_UTILS
#define POKEPLATINUM_BATTLE_BAG_UTILS

#include "overlay013/battle_bag.h"

enum BattlePocketIndex {
    BATTLE_POCKET_INDEX_RECOVER_HP_PP = 0,
    BATTLE_POCKET_INDEX_RECOVER_STATUS,
    BATTLE_POCKET_INDEX_POKE_BALLS,
    BATTLE_POCKET_INDEX_BATTLE_ITEMS,
    BATTLE_POCKET_INDEX_NONE,
};

BOOL BattleBag_CanUseLastUsedItem(BattleBag *battleBagTask);
void BattleBag_SetLastUsedPocket(BattleBag *battleBagTask);
void BattleBag_Init(BattleBag *battleBagTask);
u16 BattleBag_GetItem(BattleBag *battleBagTask, u32 pagePosition);

#endif // POKEPLATINUM_BATTLE_BAG_UTILS
