#ifndef POKEPLATINUM_PLATFORM_LIFT_H
#define POKEPLATINUM_PLATFORM_LIFT_H

#include "field/field_system_decl.h"

void PlatformLift_DynamicMapFeaturesInit(FieldSystem *fieldSystem);
void PersistedMapFeatures_InitForPlatformLift(FieldSystem *fieldSystem);
u8 PlatformLift_WasNotUsedWhenEnteredMap(FieldSystem *fieldSystem);
void PlatformLift_Trigger(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_PLATFORM_LIFT_H
