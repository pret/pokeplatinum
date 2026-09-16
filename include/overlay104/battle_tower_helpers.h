#ifndef POKEPLATINUM_OV104_BATTLE_TOWER_HELPERS_H
#define POKEPLATINUM_OV104_BATTLE_TOWER_HELPERS_H

#include "struct_defs/battle_tower.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "overlay104/frontier_opponents.h"
#include "overlay104/struct_ov104_02230BE4.h"

#include "field_battle_data_transfer.h"
#include "savedata.h"

BOOL BattleTower_CreateTrainerParty(BattleTower *battleTower, FrontierOpponent *opponent, u16 battleTowerTrainerID, int partySize, u16 *species, u16 *items, BattleTowerPartnerData *trainer, enum HeapID heapID);
void BattleTower_CreateWiFiTrainerParty(SaveData *saveData, FrontierOpponent *oppponent, const u8 opponentID);
FieldBattleDTO *BattleTower_SetupBattle(BattleTower *battleTower, FieldFrontierDTO *fieldData);
void BattleTower_SetIsRetiringFlag(BattleTower *battleTower, u16 isRetiring);
u16 BattleTower_CheckIsRetiring(BattleTower *battleTower, const u16 *payload);
int BattleTower_GetTrainerMessagesBankID(u8 challengeMode);

#endif // POKEPLATINUM_OV104_BATTLE_TOWER_HELPERS_H
