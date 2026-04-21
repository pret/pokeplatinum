#ifndef POKEPLATINUM_VILLA_FURNITURE_H
#define POKEPLATINUM_VILLA_FURNITURE_H

#include "field/field_system_decl.h"

typedef struct VillaPersistedData {
    int dummy;
} VillaPersistedData;

void Villa_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void Villa_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL Villa_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding);
BOOL FieldSystem_TrySetVillaFurnitureScript(FieldSystem *fieldSystem, const int param1, const int param2, const int direction);

#endif // POKEPLATINUM_VILLA_FURNITURE_H
