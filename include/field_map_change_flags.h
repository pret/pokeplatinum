#ifndef POKEPLATINUM_FIELD_MAP_CHANGE_FLAGS_H
#define POKEPLATINUM_FIELD_MAP_CHANGE_FLAGS_H

#include "field/field_system_decl.h"

void FieldSystem_SetTemporaryMapChange(FieldSystem *fieldSystem, BOOL temporaryMapChange);
void FieldSystem_InitFlagsOnMapChange(FieldSystem *fieldSystem);
void FieldSystem_InitFlagsWarp(FieldSystem *fieldSystem);
void FieldSystem_SetFlyFlags(FieldSystem *fieldSystem);
void FieldSystem_SetTeleportFlags(FieldSystem *fieldSystem);
void FieldSystem_SetEscapeFlags(FieldSystem *fieldSystem);
void FieldSystem_ClearPartnerTrainer(FieldSystem *fieldSystem);
void FieldSystem_RandomizeRoamingPokemonLocations(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_FIELD_MAP_CHANGE_FLAGS_H
