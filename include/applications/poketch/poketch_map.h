#ifndef POKEPLATINUM_POKETCH_MAP_H
#define POKEPLATINUM_POKETCH_MAP_H

#include "generated/maps.h"

void PoketchMap_GetPositionOnMap(u32 playerX, u32 playerY, u32 *mapX, u32 *mapY);
void PoketchMap_GetHiddenLocationPosition(int hiddenLocation, u32 *x, u32 *y);
BOOL PoketchMap_GetPositionFromMapID(enum MapID mapID, u32 *x, u32 *y);

#endif // POKEPLATINUM_POKETCH_MAP_H
