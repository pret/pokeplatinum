#ifndef POKEPLATINUM_PERSISTED_MAP_FEATURES_INIT_H
#define POKEPLATINUM_PERSISTED_MAP_FEATURES_INIT_H

#include <nitro/types.h>

#include "field/field_system_decl.h"

void PersistedMapFeatures_InitForPastoriaGym(FieldSystem *fieldSystem);
void PersistedMapFeatures_InitForCanalaveGym(FieldSystem *fieldSystem);
void PersistedMapFeatures_InitForSunyshoreGym(FieldSystem *fieldSystem, const u8 floorID);
void PersistedMapFeatures_InitForEternaGym(FieldSystem *fieldSystem);
void PersistedMapFeatures_InitForVeilstoneGym(FieldSystem *fieldSystem);
void PersistedMapFeatures_InitForHearthomeGym(FieldSystem *fieldSystem);
void PersistedMapFeatures_InitForVilla(FieldSystem *fieldSystem);
void PersistedMapFeatures_InitForDistortionWorld(FieldSystem *fieldSystem);
void PersistedMapFeatures_InitForGreatMarsh(FieldSystem *fieldSystem);
BOOL PersistedMapFeatures_IsCurrentDynamicMap(FieldSystem *fieldSystem, int dynamicMapFeaturesID);

#endif // POKEPLATINUM_PERSISTED_MAP_FEATURES_INIT_H
