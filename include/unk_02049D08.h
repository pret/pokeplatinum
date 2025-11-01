#ifndef POKEPLATINUM_UNK_02049D08_H
#define POKEPLATINUM_UNK_02049D08_H

#include "struct_decls/struct_0202D060_decl.h"
#include "struct_defs/struct_0204AFC4.h"

#include "field/field_system_decl.h"

#include "field_task.h"
#include "journal.h"
#include "savedata.h"

u16 BattleTower_GetPartySizeForChallengeMode(u16 param0);
BOOL sub_02049EC4(u16 param0, SaveData *saveData, u8 param2);
void sub_02049F8C(void);
void sub_02049F98(UnkStruct_0202D060 *param0);
BOOL sub_02049FA0(UnkStruct_0202D060 *param0);
void BattleTower_SetCommunicationClubAccessible(FieldSystem *fieldSystem);
void BattleTower_ClearCommunicationClubAccessible(FieldSystem *fieldSystem);
u16 sub_02049FF8(SaveData *saveData, u16 param1);
void sub_0204A030(SaveData *saveData, u8 param1);
u16 sub_0204A050(SaveData *saveData);
u16 sub_0204A064(SaveData *saveData);
u16 sub_0204A100(SaveData *saveData);
void BattleTower_SetNull(BattleTower **battleTower);
BattleTower *BattleTower_Init(SaveData *saveData, u16 param1, u16 challengeMode);
void BattleTower_Free(BattleTower *battleTower);
void sub_0204A358(BattleTower *battleTower, FieldTask *param1, void **param2);
BOOL sub_0204A378(BattleTower *battleTower, void **param1, SaveData *saveData);
int BattleTower_CheckDuplicateSpeciesAndHeldItems(BattleTower *battleTower, SaveData *saveData);
void sub_0204A4C8(BattleTower *battleTower, SaveData *saveData);
u16 sub_0204A578(BattleTower *battleTower);
BOOL sub_0204A57C(BattleTower *battleTower);
void sub_0204A660(BattleTower *battleTower, SaveData *saveData);
void sub_0204A7A4(BattleTower *battleTower, SaveData *saveData, JournalEntry *param2);
void sub_0204A8C8(BattleTower *battleTower);
void sub_0204A97C(BattleTower *battleTower);
u16 sub_0204A9E0(BattleTower *battleTower, u16 param1);
u16 BattleTower_GetChallengeMode(BattleTower *battleTower);
u16 sub_0204A9FC(BattleTower *battleTower);
u16 sub_0204AA04(BattleTower *battleTower);
u16 sub_0204AA7C(BattleTower *battleTower, SaveData *saveData);
u16 sub_0204AABC(BattleTower *battleTower, SaveData *saveData, u8 param2);
u16 sub_0204AB68(BattleTower *battleTower, SaveData *saveData);
u16 sub_0204ABA0(BattleTower *battleTower, SaveData *saveData);
u16 sub_0204ABF4(BattleTower *battleTower, SaveData *saveData);
u8 sub_0204AE84(u16 param0);
u16 sub_0204AEC0(BattleTower *battleTower);

#endif // POKEPLATINUM_UNK_02049D08_H
