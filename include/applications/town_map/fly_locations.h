#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_FLY_DESTINATIONS_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_FLY_DESTINATIONS_H

#include "generated/map_headers.h"

#include "applications/town_map/defs.h"
#include "applications/town_map/main.h"

#include "sprite_system.h"

TownMapAppFlyLocationsManager *TownMap_LoadFlyLocations(SpriteSystem *spriteSystem, SpriteManager *spriteMan, u8 *unlocked, short count, enum HeapID heapID);
void TownMap_FreeFlyLocations(TownMapAppFlyLocationsManager *flyLocations);
TownMapAppFlyLocation *TownMap_GetFlyLocationAtPos(TownMapAppFlyLocationsManager *flyLocations, enum MapHeader mapHeader, int x, int z);
BOOL TownMap_UpdateHoveredFlyLocation(TownMapAppFlyLocationsManager *flyLocations, enum MapHeader mapHeader, int x, int y);
void TownMap_BlinkHoveredFlyLocation(TownMapAppFlyLocationsManager *flyLocations, enum TownMapMode mode);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_FLY_DESTINATIONS_H
