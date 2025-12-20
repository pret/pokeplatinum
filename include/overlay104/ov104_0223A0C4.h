#ifndef POKEPLATINUM_OV104_0223A0C4_H
#define POKEPLATINUM_OV104_0223A0C4_H

#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_0204B404.h"

#include "overlay104/frontier_data_transfer.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_battle_data_transfer.h"
#include "savedata.h"

BOOL BattleTower_CreateTrainerParty(BattleTower *battleTower, FrontierDataDTO *opponentDataDTO, u16 battleTowerTrainerID, int partySize, u16 *species, u16 *items, UnkStruct_0204B404 *param6, int heapID);
void ov104_0223A30C(SaveData *saveData, FrontierDataDTO *param1, const u8 param2);
FieldBattleDTO *ov104_0223A580(BattleTower *battleTower, UnkStruct_ov104_02230BE4 *param1);
void ov104_0223A734(BattleTower *battleTower, u16 param1);
u16 ov104_0223A750(BattleTower *battleTower, const u16 *param1);
int BattleTower_GetTrainerMessagesBankID(u8 challengeMode);

#endif // POKEPLATINUM_OV104_0223A0C4_H
