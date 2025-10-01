#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_FLY_DESTINATIONS_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_FLY_DESTINATIONS_H

#include "generated/map_headers.h"

#include "applications/town_map/defs.h"
#include "applications/town_map/main.h"

#include "sprite_system.h"

TownMapAppFlyDestinations *TownMap_LoadFlyDestinations(SpriteSystem *param0, SpriteManager *param1, u8 *param2, short param3, int heapID);
void TownMap_FreeFlyDestinations(TownMapAppFlyDestinations *param0);
TownMapAppFlyDestination *TownMap_GetHoveredFlyDestination(TownMapAppFlyDestinations *param0, int param1, int param2, int param3);
BOOL TownMap_UpdateHoveredFlyDestination(TownMapAppFlyDestinations *param0, enum MapHeader mapHeader, int x, int y);
void TownMap_BlinkHoveredFlyDestination(TownMapAppFlyDestinations *param0, enum TownMapMode param1);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_FLY_DESTINATIONS_H
