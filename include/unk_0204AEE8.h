#ifndef POKEPLATINUM_UNK_0204AEE8_H
#define POKEPLATINUM_UNK_0204AEE8_H

#include "struct_defs/battle_tower.h"
#include "struct_defs/struct_0204B404.h"

#include "field/field_system_decl.h"
#include "overlay104/frontier_data_transfer.h"

#include "savedata.h"
#include "string_template.h"

StringTemplate *BattleFrontier_MakeSeenBanlistSpeciesMsg(SaveData *saveData, u16 numPokemonRequired, u16 unused2, u8 unused3, u8 *outNumBannedSeen);
u16 BattleFrontier_GetObjectIDFromTrainerClass(u8 trainerClass);
u16 sub_0204AFC4(FieldSystem *fieldSystem, const u16 *param1);
u16 sub_0204B020(FieldSystem *fieldSystem, const u16 *param1);
u16 sub_0204B044(FieldSystem *fieldSystem, const u16 *param1);
void sub_0204B060(BattleTower *battleTower, SaveData *saveData);
void sub_0204B0BC(BattleTower *battleTower);
void sub_0204B0D4(BattleTower *battleTower, u16 param1);
u16 BattleTower_GetTrainerIDForRoomAndOpponentNum(BattleTower *battleTower, u8 roomNum, u8 opponentNum, int challengeMode);
BOOL sub_0204B3B8(BattleTower *battleTower, FrontierDataDTO *param1, u16 partnerBattleTowerID, int partysize, u16 *param4, u16 *param5, UnkStruct_0204B404 *param6, int heapID);
void sub_0204B404(BattleTower *battleTower, FrontierDataDTO *param1, u16 partnerBattleTowerID, BOOL param3, const UnkStruct_0204B404 *param4, int heapID);

#endif // POKEPLATINUM_UNK_0204AEE8_H
