#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_FLY_DESTINATIONS_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_FLY_DESTINATIONS_H

#include "generated/map_headers.h"

#include "applications/town_map/application.h"

#include "sprite_system.h"

typedef struct TownMapFlyLocationDescriptor {
    int mapHeader;
    int unusedUnlockFirstArrivalFlag;
    u8 blockShape;
    u8 palette;
    u16 specialFlyLocationID;
    u32 spriteX;
    u32 spriteY;
} TownMapFlyLocationDescriptor;

typedef struct TownMapAppFlyLocation {
    TownMapFlyLocationDescriptor descriptor;
    BOOL isUnlocked;
    Sprite *sprite;
} TownMapAppFlyLocation;

typedef struct TownMapAppFlyLocationsManager {
    u16 count;
    u8 blinkTimer;
    u8 blinkState;
    TownMapAppFlyLocation *hovered;
    TownMapAppFlyLocation *flyLocationsList;
} TownMapAppFlyLocationsManager;

TownMapAppFlyLocationsManager *TownMap_LoadFlyLocations(SpriteSystem *spriteSystem, SpriteManager *spriteMan, u8 *unlocked, short count, enum HeapID heapID);
void TownMap_FreeFlyLocations(TownMapAppFlyLocationsManager *flyLocations);
TownMapAppFlyLocation *TownMap_GetFlyLocationAtPos(TownMapAppFlyLocationsManager *flyLocations, enum MapHeader mapHeader, int x, int z);
BOOL TownMap_UpdateHoveredFlyLocation(TownMapAppFlyLocationsManager *flyLocations, enum MapHeader mapHeader, int x, int y);
void TownMap_BlinkHoveredFlyLocation(TownMapAppFlyLocationsManager *flyLocations, enum TownMapMode mode);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_FLY_DESTINATIONS_H
