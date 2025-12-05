#ifndef POKEPLATINUM_OV104_0223A0C4_H
#define POKEPLATINUM_OV104_0223A0C4_H

#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_0204B404.h"

#include "overlay104/frontier_data_transfer.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_battle_data_transfer.h"
#include "savedata.h"

BOOL ov104_0223A0C4(BattleTower *battleTower, FrontierDataDTO *param1, u16 param2, int param3, u16 *param4, u16 *param5, UnkStruct_0204B404 *param6, int heapID);
void ov104_0223A30C(SaveData *saveData, FrontierDataDTO *param1, const u8 param2);
FieldBattleDTO *ov104_0223A580(BattleTower *battleTower, UnkStruct_ov104_02230BE4 *param1);
void ov104_0223A734(BattleTower *battleTower, u16 param1);
u16 ov104_0223A750(BattleTower *battleTower, const u16 *param1);
int ov104_0223A790(u8 param0);

#endif // POKEPLATINUM_OV104_0223A0C4_H
