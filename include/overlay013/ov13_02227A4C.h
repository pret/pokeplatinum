#ifndef POKEPLATINUM_OV13_02227A4C_H
#define POKEPLATINUM_OV13_02227A4C_H

#include "overlay013/struct_ov13_02227244.h"

#define BATTLE_BAG_ITEMS_PER_POCKET_PAGE 6

u8 IsLastUsedItemUsable(UnkStruct_ov13_02227244 *param0);
void SetPositionToLastUsedItem(UnkStruct_ov13_02227244 *param0);
void InitializeBattleBag(UnkStruct_ov13_02227244 *param0);
u16 GetBattleBagItem(UnkStruct_ov13_02227244 *param0, u32 pagePosition);

#endif // POKEPLATINUM_OV13_02227A4C_H
