#ifndef POKEPLATINUM_SPAWN_LOCATIONS_H
#define POKEPLATINUM_SPAWN_LOCATIONS_H

#include "generated/map_headers.h"

#include "field/field_system_decl.h"

#include "location.h"

int FieldOverworldState_GetDefaultWarpID(void);
void Location_InitFly(int flyDestination, Location *location);
void Location_InitBlackOut(int blackOutDestination, Location *location);
int GetMapBlackOutWarpId(enum MapHeaderID mapHeaderID);
int GetMapFlyWarpId(enum MapHeaderID mapHeaderID);
int GetSpawnIdByMapAndCoords(enum MapHeaderID mapHeaderID, int param1, int param2);
void TryUnlockFlyLocationByMap(FieldSystem *fieldSystem, enum MapHeaderID mapHeaderID);
BOOL CheckFlyLocationUnlocked(FieldSystem *fieldSystem, int flyLocation);

#endif // POKEPLATINUM_SPAWN_LOCATIONS_H
