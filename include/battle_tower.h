#ifndef POKEPLATINUM_BATTLE_TOWER_H
#define POKEPLATINUM_BATTLE_TOWER_H

#include "struct_defs/battle_tower.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "field/field_system_decl.h"
#include "overlay104/frontier_opponents.h"

#include "savedata.h"
#include "string_template.h"

StringTemplate *BattleFrontier_MakeSeenBanlistSpeciesMsg(SaveData *saveData, u16 numPokemonRequired, u16 unused2, u8 unused3, u8 *outNumBannedSeen);
u16 BattleTower_GetObjectIDFromTrainerClass(u8 trainerClass);
u16 BattleTower_ReceivePlayerData(FieldSystem *fieldSystem, const u16 *recvBuf);
u16 BattleTower_ReceiveTrainers(FieldSystem *fieldSystem, const u16 *recvBuf);
BOOL BattleTower_ReceiveShouldRetire(FieldSystem *fieldSystem, const u16 *recvBuf);
void BattleTower_SendPlayerData(BattleTower *battleTower, SaveData *saveData);
void BattleTower_SendTrainers(BattleTower *battleTower);
void BattleTower_SendShouldRetire(BattleTower *battleTower, BOOL shouldRetire);
u16 BattleTower_GetTrainerIDForRoomAndOpponentNum(BattleTower *battleTower, u8 roomNum, u8 opponentNum, int challengeMode);
BOOL BattleTower_CreatePartnerTrainerParty(BattleTower *battleTower, FrontierOpponent *opponentDataDTO, u16 battleTowerTrainerID, int partySize, u16 *species, u16 *items, BattleTowerPartnerData *partnerData, enum HeapID heapID);
void BattleTower_RestorePartnerParty(BattleTower *battleTower, FrontierOpponent *opponentDataDTO, u16 battleTowerTrainerID, BOOL giveReservedItem, const BattleTowerPartnerData *partnerData, enum HeapID heapID);

#endif // POKEPLATINUM_BATTLE_TOWER_H
