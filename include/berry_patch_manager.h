#ifndef POKEPLATINUM_BERRY_PATCH_MANAGER_H
#define POKEPLATINUM_BERRY_PATCH_MANAGER_H

#include "struct_decls/berry_patch_manager_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system_decl.h"

BerryPatchManager *BerryPatchManager_Create(FieldSystem *fieldSystem, int heapID);
void BerryPatchManager_Destroy(BerryPatchManager *manager);
void BerryPatches_ElapseTime(FieldSystem *fieldSystem, int minutes);
void BerryPatches_UpdateGrowthStates(FieldSystem *fieldSystem);
BOOL BerryPatches_HarvestBerry(FieldSystem *fieldSystem, MapObject *param1);
void BerryPatches_SetMulchType(FieldSystem *fieldSystem, MapObject *param1, u16 param2);
void BerryPatches_PlantBerry(FieldSystem *fieldSystem, MapObject *param1, u16 param2);
void BerryPatches_ResetMoisture(FieldSystem *fieldSystem, MapObject *mapObject);
int BerryPatches_GetGrowthStage(const FieldSystem *fieldSystem, const MapObject *param1);
int BerryPatches_GetBerryID(const FieldSystem *fieldSystem, const MapObject *mapObject);
u16 BerryPatches_GetItemID(const FieldSystem *fieldSystem, const MapObject *param1);
u16 BerryPatches_GetMulchItemID(const FieldSystem *fieldSystem, const MapObject *param1);
int BerryPatches_GetMoisture(const FieldSystem *fieldSystem, const MapObject *param1);
int BerryPatches_GetYield(const FieldSystem *fieldSystem, const MapObject *param1);
u32 BerryPatches_GetPatchFlags(const FieldSystem *fieldSystem, const MapObject *mapObject);
void BerryPatches_StartWatering(FieldSystem *fieldSystem);
void BerryPatches_EndWatering(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_BERRY_PATCH_MANAGER_H
