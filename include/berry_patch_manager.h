#ifndef POKEPLATINUM_BERRY_PATCH_MANAGER_H
#define POKEPLATINUM_BERRY_PATCH_MANAGER_H

#include "constants/heap.h"

#include "struct_decls/berry_patch_manager_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system_decl.h"

enum BerryWateringState {
    BERRY_WATERING_STATE_INIT = 0, // Initial state - setting up watering mode
    BERRY_WATERING_STATE_WATERING, // Watering the current patch
    BERRY_WATERING_STATE_INPUT, // Waiting for player input (movement keys)
    BERRY_WATERING_STATE_ANIMATION, // Playing watering animation
    BERRY_WATERING_STATE_CLEANUP, // Cleaning up and exiting watering mode
};

enum BerryPatchFlags {
    BERRY_PATCH_FLAG_INVALID = 0x0, // Not a berry patch or NULL
    BERRY_PATCH_FLAG_EMPTY = 0x1, // Patch is empty, can plant
    BERRY_PATCH_FLAG_CAN_MULCH = 0x2, // Patch can have mulch applied
    BERRY_PATCH_FLAG_HAS_BERRY = 0x4, // Patch has berry growing
};

BerryPatchManager *BerryPatchManager_New(FieldSystem *fieldSystem, enum HeapID heapID);
void BerryPatchManager_Free(BerryPatchManager *manager);
void BerryPatches_ElapseTime(FieldSystem *fieldSystem, int minutes);
void BerryPatches_UpdateGrowthStates(FieldSystem *fieldSystem);
BOOL BerryPatches_HarvestBerry(FieldSystem *fieldSystem, MapObject *mapObject);
void BerryPatches_SetMulchType(FieldSystem *fieldSystem, MapObject *mapObject, u16 mulchItemID);
void BerryPatches_PlantBerry(FieldSystem *fieldSystem, MapObject *mapObject, u16 berryItemID);
void BerryPatches_ResetMoisture(FieldSystem *fieldSystem, MapObject *mapObject);
int BerryPatches_GetGrowthStage(const FieldSystem *fieldSystem, const MapObject *mapObject);
int BerryPatches_GetBerryID(const FieldSystem *fieldSystem, const MapObject *mapObject);
u16 BerryPatches_GetItemID(const FieldSystem *fieldSystem, const MapObject *mapObject);
u16 BerryPatches_GetMulchItemID(const FieldSystem *fieldSystem, const MapObject *mapObject);
int BerryPatches_GetMoisture(const FieldSystem *fieldSystem, const MapObject *mapObject);
int BerryPatches_GetYield(const FieldSystem *fieldSystem, const MapObject *mapObject);
u32 BerryPatches_GetPatchFlags(const FieldSystem *fieldSystem, const MapObject *mapObject);
void BerryPatches_StartWatering(FieldSystem *fieldSystem);
void BerryPatches_EndWatering(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_BERRY_PATCH_MANAGER_H
