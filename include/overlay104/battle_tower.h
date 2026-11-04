#ifndef POKEPLATINUM_OV104_BATTLE_TOWER_H
#define POKEPLATINUM_OV104_BATTLE_TOWER_H

#include "struct_defs/battle_tower.h"

#include "savedata.h"

void BattleTower_CreateOpponentParties(BattleTower *battleTower, SaveData *saveData);
u16 BattleTower_GetObjectIDFromOpponentIDInFrontierScript(BattleTower *battleTower, u16 opponentID);
void BattleTower_SetBeatPalmer(BattleTower *battleTower, u16 value);
u16 BattleTower_IncrementCurrentBattle(BattleTower *battleTower);
u16 BattleTower_GetCurrentStreak(BattleTower *battleTower);

#endif // POKEPLATINUM_OV104_BATTLE_TOWER_H
