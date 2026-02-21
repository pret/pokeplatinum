#ifndef POKEPLATINUM_OV104_022394A4_H
#define POKEPLATINUM_OV104_022394A4_H

#include "struct_defs/battle_tower.h"

#include "savedata.h"

void BattleTower_CreateOpponentParties(BattleTower *battleTower, SaveData *saveData);
u16 BattleTower_GetObjectIDFromOpponentIDInFrontierScript(BattleTower *battleTower, u16 opponentID);
void BattleTower_SetBeatPalmer(BattleTower *battleTower, u16 value);
u16 ov104_022395B4(BattleTower *battleTower);
u16 ov104_022395D8(BattleTower *battleTower);

#endif // POKEPLATINUM_OV104_022394A4_H
