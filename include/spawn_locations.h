#ifndef POKEPLATINUM_SPAWN_LOCATIONS_H
#define POKEPLATINUM_SPAWN_LOCATIONS_H

#include "field/field_system_decl.h"

#include "generated/map_headers.h"

#include "location.h"

int FieldOverworldState_GetDefaultWarpID(void);
void Location_InitFly(int flyDestination, Location *location);
void Location_InitBlackOut(int blackOutDestination, Location *location);
int GetMapBlackOutWarpId(int mapId);
int GetMapFlyWarpId(int mapId);
int GetSpawnIdByMapAndCoords(int mapID, int param1, int param2);
void TryUnlockFlyLocationByMap(FieldSystem *fieldSystem, int param1);
BOOL CheckFlyLocationUnlocked(FieldSystem *fieldSystem, enum MapHeaderID mapHeaderID);

#endif // POKEPLATINUM_SPAWN_LOCATIONS_H
