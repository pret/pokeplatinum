#ifndef POKEPLATINUM_UNK_0202854C_H
#define POKEPLATINUM_UNK_0202854C_H

#include "struct_defs/underground.h"
#include "struct_defs/underground_record.h"

#include "savedata.h"
#include "trainer_info.h"

#define NUM_MAX_DECORATION_GOODS 200

enum BaseFlagType {
    BASE_FLAG_NORMAL,
    BASE_FLAG_BRONZE,
    BASE_FLAG_SILVER,
    BASE_FLAG_GOLD,
    BASE_FLAG_PLATINUM
};

int Underground_SaveSize(void);
int SecretBase_Size(void);
int UndergroundRecord_Size(void);
UndergroundRecord *UndergroundRecord_Init(enum HeapID heapID);
void Underground_Init(Underground *underground);
void Underground_UpdateBuriedSphereSizes(SaveData *saveData, int daysPassed);
void sub_02028758(SaveData *saveData, s32 param1, BOOL param2);
void SaveData_LoadAndUpdateUnderground(SaveData *saveData);
void sub_020287E0(SaveData *saveData);
void sub_020287F8(SaveData *saveData);
BOOL sub_02028810(SaveData *saveData);
void Underground_SetUnusedField(Underground *underground);
void Underground_StoreRegisteredFlagOwnerInfo(Underground *underground, const TrainerInfo *info);
TrainerInfo *Underground_GetRegisteredFlagOwnerInfo(const Underground *underground, enum HeapID heapID, int param2);
u32 Underground_GetRandomSeed(Underground *underground);
int Underground_ConvertTreasureToBagItem(int treasureID);
BOOL Underground_TryAddGoodPC(Underground *underground, int goodID);
BOOL Underground_IsRoomForGoodsInPC(Underground *underground, int unused);
int Underground_GetGoodsCountPC(Underground *underground);
int Underground_GetGoodAtSlotPC(Underground *underground, int slot);
int Underground_RemoveGoodAtSlotPC(Underground *underground, int slot);
void Underground_MoveGoodPC(Underground *underground, int origSlot, int slotToMoveAfter);
int Underground_AddPlacedGood(Underground *underground, int slot, int index);
BOOL Underground_IsGoodAtSlotPlacedInBase(Underground *underground, int slot);
void Underground_RemovePlacedGood(Underground *underground, int index);
void Underground_InitPlacedGoodSlots(Underground *underground);
int Underground_GetGoodsCountBag(Underground *underground);
int Underground_GetGoodAtSlotBag(Underground *underground, int slot);
int Underground_RemoveGoodAtSlotBag(Underground *underground, int slot);
BOOL Underground_TryAddGoodBag(Underground *underground, int goodID);
void Underground_MoveGoodBag(Underground *underground, int origSlot, int slotToMoveAfter);
int Underground_GetSphereCount(Underground *underground);
int Underground_GetSphereTypeAtSlot(Underground *underground, int slot);
int Underground_GetSphereSizeAtSlot(Underground *underground, int slot);
int Underground_RemoveSphereAtSlot(Underground *underground, int slot);
BOOL Underground_TryAddSphere(Underground *underground, int sphereType, int sphereSize);
void Underground_MoveSphereInInventory(Underground *underground, int origSlot, int slotToMoveAfter);
int Underground_GetTreasureCount(Underground *underground);
int Underground_GetTreasureAtSlot(Underground *underground, int slot);
int Underground_RemoveTreasureAtSlot(Underground *underground, int slot);
BOOL Underground_TryAddTreasure(Underground *underground, int treasureID);
void Underground_MoveTreasureInInventory(Underground *underground, int origSlot, int slotToMoveAfter);
int Underground_GetTrapCount(Underground *underground);
int Underground_GetTrapAtSlot(Underground *underground, int slot);
int Underground_RemoveTrapAtSlot(Underground *underground, int slot);
BOOL Underground_TryAddTrap(Underground *underground, int trapID);
void Underground_MoveTrapInInventory(Underground *underground, int origSlot, int slotToMoveAfter);
void Underground_SaveSpawnedTrap(Underground *underground, int trapID, int index, int x, int z);
int Underground_GetSpawnedTrapIDAtIndex(Underground *underground, int index);
int Underground_GetSpawnedTrapXCoordAtIndex(Underground *underground, int index);
int Underground_GetSpawnedTrapZCoordAtIndex(Underground *underground, int index);
void Underground_RemoveSpawnedTrapAtIndex(Underground *underground, int index);
void Underground_SavePlacedTrap(Underground *underground, int trapID, int index, int x, int z, int param5);
int Underground_GetPlacedTrapIDAtIndex(Underground *underground, int index);
int Underground_GetPlacedTrapXCoordAtIndex(Underground *underground, int index);
int Underground_GetPlacedTrapZCoordAtIndex(Underground *underground, int index);
int sub_0202907C(Underground *underground, int index);
void Underground_SaveBuriedSphere(Underground *underground, int type, int index, int x, int z, int initialSize, int growth);
int Underground_GetBuriedSphereTypeAtIndex(Underground *underground, int index);
int Underground_GetBuriedSphereXCoordAtIndex(Underground *underground, int index);
int Underground_GetBuriedSphereZCoordAtIndex(Underground *underground, int index);
int Underground_GetBuriedSphereInitialSizeAtIndex(Underground *underground, int index);
int Underground_GetBuriedSphereGrowthAtIndex(Underground *underground, int index);
int sub_02029140(Underground *underground, int param1, int param2);
void sub_020291A4(Underground *underground, int param1);
int sub_020291CC(Underground *underground, int param1);
int sub_020291EC(Underground *underground, int param1);
BOOL Underground_HasNeverMined(Underground *underground);
void Underground_SetHasMined(Underground *underground);
BOOL sub_02029234(Underground *underground);
void sub_02029240(Underground *underground);
void Underground_SetPlateMined(Underground *underground, int miningItemID);
BOOL Underground_HasPlateNeverBeenMined(Underground *underground, int miningItemID);
void Underground_IncrementStepCount(Underground *underground);
int Underground_GetStepCount(Underground *underground);
void SecretBase_Init(SecretBase *secretBase);
void SecretBase_Clear(SecretBase *secretBase);
void SecretBase_SetInactive(SecretBase *secretBase);
void SecretBase_AddGoodAtIndex(SecretBase *secretBase, int index, int goodID, int x, int z);
void SecretBase_SetGoodCoordsAtIndex(SecretBase *secretBase, int index, int x, int z);
int SecretBase_GetGoodIDAtIndex(const SecretBase *secretBase, int index);
int SecretBase_GetGoodXCoordAtIndex(const SecretBase *secretBase, int index);
int SecretBase_GetGoodZCoordAtIndex(const SecretBase *secretBase, int index);
int SecretBase_GetUnremovableBoulderCount(const SecretBase *secretBase);
int SecretBase_GetPlacedGoodsLimit(const SecretBase *secretBase);
int UndergroundRecord_GetTrainerScore(const UndergroundRecord *undergroundRecord);
BOOL UndergroundRecord_HasPlatBaseFlag(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_SetTrainerScore(UndergroundRecord *undergroundRecord, int param1);
int UndergroundRecord_GetPeopleMet(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementPeopleMet(UndergroundRecord *undergroundRecord, int unused);
int UndergroundRecord_GetNumGiftsGiven(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementGiftsGiven(UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementFlagsStolen(UndergroundRecord *undergroundRecord);
enum BaseFlagType UndergroundRecord_GetFlagRank(const UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetCapturedFlagCount(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementCapturedFlagCount(UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetNumSpheresDug(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_AddNumSpheresDug(UndergroundRecord *undergroundRecord, int amount);
int UndergroundRecord_GetNumFossilsDug(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_AddNumFossilsDug(UndergroundRecord *undergroundRecord, int amount);
void sub_02029688(UndergroundRecord *param0, int param1);
int UndergroundRecord_GetNumTrapHits(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementNumTrapHits(UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetNumTrapsTriggered(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementNumTrapsTriggered(UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetNumPlayersHelped(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementNumPlayersHelped(UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetGiftsReceived(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementGiftsReceived(UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetTimesFlagTaken(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementTimesFlagTaken(UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetFlagsRecovered(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementFlagsRecovered(UndergroundRecord *undergroundRecord);
int UndergroundRecord_GetTimesBaseMoved(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_IncrementTimesBaseMoved(UndergroundRecord *undergroundRecord);
void SecretBase_SetEntrance(SecretBase *secretBase, int x, int z, int dir);
int SecretBase_GetEntranceXCoord(const SecretBase *secretBase);
int SecretBase_GetEntranceZCoord(const SecretBase *secretBase);
int SecretBase_GetEntranceDir(const SecretBase *secretBase);
BOOL SecretBase_IsActive(const SecretBase *secretBase);
SecretBase *SaveData_GetSecretBase(SaveData *saveData);
UndergroundRecord *SaveData_GetUndergroundRecord(SaveData *saveData);
UndergroundRecord *SecretBase_GetUndergroundRecord(SecretBase *secretBase);
Underground *SaveData_GetUnderground(SaveData *saveData);

#endif // POKEPLATINUM_UNK_0202854C_H
