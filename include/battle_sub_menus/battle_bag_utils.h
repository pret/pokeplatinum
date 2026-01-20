#ifndef POKEPLATINUM_BATTLE_BAG_UTILS_H
#define POKEPLATINUM_BATTLE_BAG_UTILS_H

#include "battle_sub_menus/battle_bag.h"

enum BattlePocketIndex {
    BATTLE_POCKET_INDEX_RECOVER_HP_PP = 0,
    BATTLE_POCKET_INDEX_RECOVER_STATUS,
    BATTLE_POCKET_INDEX_POKE_BALLS,
    BATTLE_POCKET_INDEX_BATTLE_ITEMS,
    BATTLE_POCKET_INDEX_NONE,
};

BOOL BattleBag_CanUseLastUsedItem(BattleBag *battleBag);
void BattleBag_SetLastUsedPocket(BattleBag *battleBag);
void BattleBag_Init(BattleBag *battleBag);
u16 BattleBag_GetItem(BattleBag *battleBag, u32 pagePosition);

#endif // POKEPLATINUM_BATTLE_BAG_UTILS_H
