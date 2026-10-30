#ifndef POKEPLATINUM_BATTLE_TOWER_H
#define POKEPLATINUM_BATTLE_TOWER_H

#include "struct_defs/battle_tower.h"
#include "struct_defs/wifi_battle_tower_data.h"

#include "field/field_system_decl.h"

#include "field_task.h"
#include "journal.h"
#include "savedata.h"

u16 BattleTower_GetPartySizeForChallengeMode(u16 param0);
BOOL BattleTower_CheckIfPartyIsEligible(u16 param0, SaveData *saveData, u8 param2);
void BattleTower_ResetSystem(void);
void BattleTower_ClearSave(BattleTowerSave *param0);
BOOL BattleTower_CheckRunInProgress(BattleTowerSave *param0);
void BattleTower_SetCommunicationClubAccessible(FieldSystem *fieldSystem);
void BattleTower_ClearCommunicationClubAccessible(FieldSystem *fieldSystem);
u16 BattleTower_GetLatestStreak(SaveData *saveData, u16 param1);
void sub_0204A030(SaveData *saveData, u8 param1);
u16 sub_0204A050(SaveData *saveData);
u16 sub_0204A064(SaveData *saveData);
u16 BattleTower_CheckHaveWifiDownloadData(SaveData *saveData);
void BattleTower_SetNull(BattleTower **battleTower);
BattleTower *BattleTower_Init(SaveData *saveData, u16 param1, u16 challengeMode);
void BattleTower_Free(BattleTower *battleTower);
void BattleTower_SelectPokemonFromPartyMenu(BattleTower *battleTower, FieldTask *param1, void **param2);
BOOL BattleTower_StorePartySelectionResults(BattleTower *battleTower, void **param1, SaveData *saveData);
int BattleTower_CheckDuplicateSpeciesAndHeldItems(BattleTower *battleTower, SaveData *saveData);
void BattleTower_PickOpponentTrainers(BattleTower *battleTower, SaveData *saveData);
u16 BattleTower_GetNextOpponentNum(BattleTower *battleTower);
BOOL BattleTower_HasDefeatedSevenTrainers(BattleTower *battleTower);
void BattleTower_UpdateGameRecords(BattleTower *battleTower, SaveData *saveData);
void BattleTower_UpdateGameRecordsAndJournal(BattleTower *battleTower, SaveData *saveData, JournalEntry *journalEntry);
void BattleTower_Save(BattleTower *battleTower);
void BattleTower_InitAllStatTrainers(BattleTower *battleTower);
u16 BattleTower_GetObjectIDFromOpponentID(BattleTower *battleTower, u16 param1);
u16 BattleTower_GetChallengeMode(BattleTower *battleTower);
u16 BattleTower_GetBeatPalmer(BattleTower *battleTower);
u16 BattleTower_GiveBattlePointsReward(BattleTower *battleTower);
u16 sub_0204AA7C(BattleTower *battleTower, SaveData *saveData);
u16 BattleTower_WifiRankOperation(BattleTower *battleTower, SaveData *saveData, u8 param2);
u16 BattleTower_GiveBeatTycoonRibbon(BattleTower *battleTower, SaveData *saveData);
u16 BattleTower_TryGive50WinsRibbons(BattleTower *battleTower, SaveData *saveData);
u16 BattleTower_SetRngSeeds(BattleTower *battleTower, SaveData *saveData);
u8 BattleTower_GetIVsFromTrainerID(u16 param0);
u16 BattleTower_GetRandom(BattleTower *battleTower);

#endif // POKEPLATINUM_BATTLE_TOWER_H
