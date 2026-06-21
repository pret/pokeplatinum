#ifndef POKEPLATINUM_OV104_0223A0C4_H
#define POKEPLATINUM_OV104_0223A0C4_H

#include "struct_defs/battle_tower.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay104/frontier_data_transfer.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_battle_data_transfer.h"
#include "savedata.h"

BOOL BattleTower_CreateTrainerParty(BattleTower *battleTower, FrontierDataDTO *opponentDataDTO, u16 battleTowerTrainerID, int partySize, u16 *species, u16 *items, BattleTowerPartnerData *param6, enum HeapID heapID);
void BattleTower_CreateWiFiTrainerParty(SaveData *saveData, FrontierDataDTO *dto, const u8 opponentID);
FieldBattleDTO *FieldBattleDTO_NewBattleTower(BattleTower *battleTower, FieldFrontierDTO *fieldData);
void ov104_0223A734(BattleTower *battleTower, u16 param1);
u16 ov104_0223A750(BattleTower *battleTower, const u16 *param1);
int BattleTower_GetTrainerMessagesBankID(u8 challengeMode);

#endif // POKEPLATINUM_OV104_0223A0C4_H
