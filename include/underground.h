#ifndef POKEPLATINUM_UNDERGROUND_H
#define POKEPLATINUM_UNDERGROUND_H

#include "constants/string.h"
#include "generated/goods.h"
#include "generated/sphere_types.h"
#include "generated/traps.h"

#include "underground/defs.h"

#include "charcode.h"
#include "savedata.h"
#include "trainer_info.h"

#define MAX_CAPTURED_FLAG_RECORDS 5

#define MAX_UNDERGROUND_RECORD_VALUE 999999

enum CondensedCoordsIndex {
    X_LOW_BITS_INDEX = 0,
    HIGH_BITS_INDEX,
    Z_LOW_BITS_INDEX,
    CONDENSED_COORDS_BYTE_COUNT,
};

typedef struct UndergroundRecord {
    u32 trainerScore : 20;
    u32 peopleMet : 20;
    u32 numGiftsGiven : 20;
    u32 flagsStolen : 20; // never read; refers to taking a flag from another player, not from a base
    u32 numSpheresDug : 20;
    u32 numFossilsDug : 20;
    u32 numNonFossilsDug : 20;
    u32 numTrapHits : 20;
    u32 numTrapsTriggered : 20;
    u32 numPlayersHelped : 20;
    u32 numGiftsReceived : 20;
    u32 timesFlagTaken : 20;
    u32 flagsRecovered : 20;
    u32 timesBaseMoved : 20;
    u32 capturedFlagCount : 20;
} UndergroundRecord;

typedef struct PlacedGood {
    u8 x;
    u8 z;
    u8 goodID;
} PlacedGood;

typedef struct SecretBaseBoulder {
    u8 x;
    u8 z;
} SecretBaseBoulder;

typedef struct SecretBase {
    PlacedGood placedGoods[MAX_PLACED_GOODS];
    SecretBaseBoulder boulders[MAX_BASE_BOULDERS];
    UndergroundRecord undergroundRecord;
    u16 entranceX;
    u16 entranceZ;
    u8 entranceDir;
    u8 active;
} SecretBase;

typedef struct Underground {
    SecretBase secretBase;
    u32 randomSeed;
    s32 giftPenaltyMinutesLeft;
    u8 giftPenaltyState;
    u8 collectedOrbUnused; // Set but never read
    u32 registeredFlagOwnerIDs[MAX_CAPTURED_FLAG_RECORDS];
    charcode_t registeredFlagOwnerNames[MAX_CAPTURED_FLAG_RECORDS][TRAINER_NAME_LEN + 1];
    u8 registeredFlagOwnerLanguages[MAX_CAPTURED_FLAG_RECORDS];
    u8 registeredFlagOwnerGameCodes[MAX_CAPTURED_FLAG_RECORDS];
    u8 registeredFlagOwnerIndex;
    u8 spawnedTrapIDs[MAX_SPAWNED_TRAPS];
    u8 spawnedTrapCoordinates[MAX_SPAWNED_TRAPS][CONDENSED_COORDS_BYTE_COUNT];
    u8 miningSpotCoordinates[MAX_MINING_SPOTS + 5][CONDENSED_COORDS_BYTE_COUNT];
    u8 placedTrapIDs[MAX_PLACED_TRAPS];
    u8 placedTrapCoordinates[MAX_PLACED_TRAPS][CONDENSED_COORDS_BYTE_COUNT];
    u8 placedTrapSpawnedIndices[MAX_PLACED_TRAPS]; // pointless field
    u8 buriedSphereTypes[MAX_BURIED_SPHERES];
    u8 buriedSphereGrowth[MAX_BURIED_SPHERES];
    u8 buriedSphereInitialSizes[MAX_BURIED_SPHERES];
    u8 buriedSphereCoordinates[MAX_BURIED_SPHERES][CONDENSED_COORDS_BYTE_COUNT];
    u8 padding[88];
    u32 minedPlates;
    u8 goodsPC[MAX_GOODS_PC_SLOTS];
    u8 traps[MAX_TRAP_SLOTS];
    u8 goodsBag[MAX_GOODS_BAG_SLOTS];
    u8 treasure[MAX_TREASURE_SLOTS];
    u8 sphereTypes[MAX_SPHERE_SLOTS];
    u8 sphereSizes[MAX_SPHERE_SLOTS];
    u8 placedGoodSlots[MAX_PLACED_GOODS];
    u8 stepCount;
    u8 shouldSpawnNewBuriedObjects : 4;
    u8 hasMined : 4;
} Underground;

enum BaseFlagType {
    BASE_FLAG_NORMAL = 0,
    BASE_FLAG_BRONZE,
    BASE_FLAG_SILVER,
    BASE_FLAG_GOLD,
    BASE_FLAG_PLATINUM,
};

int Underground_SaveSize(void);
int SecretBase_Size(void);
int UndergroundRecord_Size(void);
UndergroundRecord *UndergroundRecord_Init(enum HeapID heapID);
void Underground_Init(Underground *underground);
void Underground_HandleDailyEvents(SaveData *saveData, int daysPassed);
void Underground_ProgressGiftPenalty(SaveData *saveData, s32 minutes, BOOL hasTimePenalty);
void Underground_UpdateGiftPenaltyState(SaveData *saveData);
void Underground_SetGiftPenaltyPrimedFlag(SaveData *saveData);
void Underground_ClearGiftPenaltyFlag(SaveData *saveData);
BOOL Underground_CanExchangeGifts(SaveData *saveData);
void Underground_SetUnusedCollectedOrbFlag(Underground *underground);
void Underground_StoreRegisteredFlagOwnerInfo(Underground *underground, const TrainerInfo *info);
TrainerInfo *Underground_GetRegisteredFlagOwnerInfo(const Underground *underground, enum HeapID heapID, int offset);
u32 Underground_GetRandomSeed(Underground *underground);
int Underground_ConvertTreasureToBagItem(int treasureID);
BOOL Underground_TryAddGoodPC(Underground *underground, enum Good goodID);
BOOL Underground_IsRoomForGoodsInPC(Underground *underground, int unused);
int Underground_GetGoodsCountPC(Underground *underground);
int Underground_GetGoodAtSlotPC(Underground *underground, int slot);
enum Good Underground_RemoveGoodAtSlotPC(Underground *underground, int slot);
void Underground_MoveGoodPC(Underground *underground, int origSlot, int slotToMoveAfter);
int Underground_AddPlacedGood(Underground *underground, int slot, int index);
BOOL Underground_IsGoodAtSlotPlacedInBase(Underground *underground, int slot);
void Underground_RemovePlacedGood(Underground *underground, int index);
void Underground_InitPlacedGoodSlots(Underground *underground);
int Underground_GetGoodsCountBag(Underground *underground);
int Underground_GetGoodAtSlotBag(Underground *underground, int slot);
int Underground_RemoveGoodAtSlotBag(Underground *underground, int slot);
BOOL Underground_TryAddGoodBag(Underground *underground, enum Good goodID);
void Underground_MoveGoodBag(Underground *underground, int origSlot, int slotToMoveAfter);
int Underground_GetSphereCount(Underground *underground);
int Underground_GetSphereTypeAtSlot(Underground *underground, int slot);
int Underground_GetSphereSizeAtSlot(Underground *underground, int slot);
int Underground_RemoveSphereAtSlot(Underground *underground, int slot);
BOOL Underground_TryAddSphere(Underground *underground, enum SphereType sphereType, int sphereSize);
void Underground_MoveSphereInInventory(Underground *underground, int origSlot, int slotToMoveAfter);
int Underground_GetTreasureCount(Underground *underground);
int Underground_GetTreasureAtSlot(Underground *underground, int slot);
int Underground_RemoveTreasureAtSlot(Underground *underground, int slot);
BOOL Underground_TryAddTreasure(Underground *underground, int treasureID);
void Underground_MoveTreasureInInventory(Underground *underground, int origSlot, int slotToMoveAfter);
int Underground_GetTrapCount(Underground *underground);
int Underground_GetTrapAtSlot(Underground *underground, int slot);
int Underground_RemoveTrapAtSlot(Underground *underground, int slot);
BOOL Underground_TryAddTrap(Underground *underground, enum Trap trapID);
void Underground_MoveTrapInInventory(Underground *underground, int origSlot, int slotToMoveAfter);
void Underground_SaveSpawnedTrap(Underground *underground, enum Trap trapID, int index, int x, int z);
int Underground_GetSpawnedTrapIDAtIndex(Underground *underground, int index);
int Underground_GetSpawnedTrapXCoordAtIndex(Underground *underground, int index);
int Underground_GetSpawnedTrapZCoordAtIndex(Underground *underground, int index);
void Underground_RemoveSpawnedTrapAtIndex(Underground *underground, int index);
void Underground_SavePlacedTrap(Underground *underground, enum Trap trapID, int index, int x, int z, int spawnedIndex);
int Underground_GetPlacedTrapIDAtIndex(Underground *underground, int index);
int Underground_GetPlacedTrapXCoordAtIndex(Underground *underground, int index);
int Underground_GetPlacedTrapZCoordAtIndex(Underground *underground, int index);
int Underground_GetPlacedTrapSpawnedIndexAtIndex(Underground *underground, int index);
void Underground_SaveBuriedSphere(Underground *underground, int type, int index, int x, int z, int initialSize, int growth);
int Underground_GetBuriedSphereTypeAtIndex(Underground *underground, int index);
int Underground_GetBuriedSphereXCoordAtIndex(Underground *underground, int index);
int Underground_GetBuriedSphereZCoordAtIndex(Underground *underground, int index);
int Underground_GetBuriedSphereInitialSizeAtIndex(Underground *underground, int index);
int Underground_GetBuriedSphereGrowthAtIndex(Underground *underground, int index);
int Underground_TryAddMiningSpot(Underground *underground, int x, int z);
void Underground_RemoveMiningSpotAtIndex(Underground *underground, int index);
int Underground_GetMiningSpotXCoordAtIndex(Underground *underground, int index);
int Underground_GetMiningSpotZCoordAtIndex(Underground *underground, int index);
BOOL Underground_HasPlayerNeverMined(Underground *underground);
void Underground_SetHasMined(Underground *underground);
BOOL Underground_ShouldSpawnNewBuriedObjects(Underground *underground);
void Underground_FlagSpawnedNewBuriedObjects(Underground *underground);
void Underground_SetPlateMined(Underground *underground, int miningItemID);
BOOL Underground_HasPlateNeverBeenMined(Underground *underground, int miningItemID);
void Underground_IncrementStepCount(Underground *underground);
int Underground_GetStepCount(Underground *underground);
void SecretBase_Init(SecretBase *secretBase);
void SecretBase_Clear(SecretBase *secretBase);
void SecretBase_SetInactive(SecretBase *secretBase);
void SecretBase_AddGoodAtIndex(SecretBase *secretBase, int index, enum Good goodID, int x, int z);
void SecretBase_SetGoodCoordsAtIndex(SecretBase *secretBase, int index, int x, int z);
int SecretBase_GetGoodIDAtIndex(const SecretBase *secretBase, int index);
int SecretBase_GetGoodXCoordAtIndex(const SecretBase *secretBase, int index);
int SecretBase_GetGoodZCoordAtIndex(const SecretBase *secretBase, int index);
int SecretBase_GetUnremovableBoulderCount(const SecretBase *secretBase);
int SecretBase_GetPlacedGoodsLimit(const SecretBase *secretBase);
int UndergroundRecord_GetTrainerScore(const UndergroundRecord *undergroundRecord);
BOOL UndergroundRecord_HasPlatBaseFlag(const UndergroundRecord *undergroundRecord);
void UndergroundRecord_SetTrainerScore(UndergroundRecord *undergroundRecord, int trainerScore);
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
void Underground_AddNumNonFossilsDug(UndergroundRecord *undergroundRecord, int amount);
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

#endif // POKEPLATINUM_UNDERGROUND_H
