#ifndef POKEPLATINUM_OV5_021F8370_H
#define POKEPLATINUM_OV5_021F8370_H

#include "field/field_system_decl.h"

void Villa_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void Villa_DynamicMapFeaturesFree(FieldSystem *fieldSystem);
BOOL Villa_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileY, const fx32 height, BOOL *isColliding);
BOOL ov5_021F8410(FieldSystem *fieldSystem, const int param1, const int param2, const int param3);

#endif // POKEPLATINUM_OV5_021F8370_H
