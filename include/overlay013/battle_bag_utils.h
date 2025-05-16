#ifndef POKEPLATINUM_BATTLE_BAG_UTILS
#define POKEPLATINUM_BATTLE_BAG_UTILS

#include "overlay013/struct_ov13_02227244.h"

#define BATTLE_BAG_ITEMS_PER_POCKET_PAGE 6

BOOL IsLastUsedItemUsable(UnkStruct_ov13_02227244 *param0);
void SetPocketPositionToLastUsedItem(UnkStruct_ov13_02227244 *param0);
void InitializeBattleBag(UnkStruct_ov13_02227244 *param0);
u16 GetBattleBagItem(UnkStruct_ov13_02227244 *param0, u32 pagePosition);

#endif // POKEPLATINUM_BATTLE_BAG_UTILS
