#ifndef POKEPLATINUM_OV104_022394A4_H
#define POKEPLATINUM_OV104_022394A4_H

#include "struct_defs/battle_tower.h"

#include "savedata.h"

void BattleTower_CreateOpponentParties(BattleTower *battleTower, SaveData *saveData);
u16 ov104_02239588(BattleTower *battleTower, u16 param1);
void ov104_022395A0(BattleTower *battleTower, u16 param1);
u16 ov104_022395B4(BattleTower *battleTower);
u16 ov104_022395D8(BattleTower *battleTower);

#endif // POKEPLATINUM_OV104_022394A4_H
