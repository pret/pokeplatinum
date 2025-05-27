#ifndef POKEPLATINUM_BATTLE_BAG_UTILS
#define POKEPLATINUM_BATTLE_BAG_UTILS

#include "overlay013/ov13_022264F4.h"

enum BattlePocketIndex {
    BATTLE_POCKET_INDEX_RECOVER_HP_PP = 0,
    BATTLE_POCKET_INDEX_RECOVER_STATUS,
    BATTLE_POCKET_INDEX_POKE_BALLS,
    BATTLE_POCKET_INDEX_BATTLE_ITEMS,
    BATTLE_POCKET_INDEX_MAX,
};

BOOL IsLastUsedBattleBagItemUsable(BattleBagTask *param0);
void SetBattlePocketPositionToLastUsedItem(BattleBagTask *param0);
void InitializeBattleBag(BattleBagTask *param0);
u16 GetBattleBagItem(BattleBagTask *param0, u32 pagePosition);

#endif // POKEPLATINUM_BATTLE_BAG_UTILS
