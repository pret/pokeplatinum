#ifndef POKEPLATINUM_OV80_021D2AF4_H
#define POKEPLATINUM_OV80_021D2AF4_H

#include "generated/map_headers.h"

#include "overlay080/ov80_021D0D80.h"
#include "overlay080/struct_ov80_021D2AF4.h"
#include "overlay080/struct_ov80_021D2C1C.h"
#include "overlay080/struct_ov80_021D2C5C.h"
#include "overlay080/struct_ov80_021D2E10.h"

#include "sprite_system.h"

TownMapAppFlyDestinations *TownMapApp_LoadFlyDestinations(SpriteSystem *param0, SpriteManager *param1, u8 *param2, short param3, int heapID);
void TownMapApp_FreeFlyDestinations(TownMapAppFlyDestinations *param0);
TownMapAppFlyDestination *TownMapApp_GetHoveredFlyDestination(TownMapAppFlyDestinations *param0, int param1, int param2, int param3);
BOOL TownMapApp_UpdateHoveredFlyTarget(TownMapAppFlyDestinations *param0, enum MapHeader mapHeader, int x, int y);
void TownMapApp_BlinkHoveredFlyTarget(TownMapAppFlyDestinations *param0, enum TownMapMode param1);
TownMapBlockList *TownMap_ReadBlockData(const char *param0, int heapID);
void TownMapApp_FreeTownMapBlockData(TownMapBlockList *param0);
TownMapBlock *TownMapApp_GetHoveredMapBlock(TownMapBlockList *param0, int param1, int param2, u16 param3);

#endif // POKEPLATINUM_OV80_021D2AF4_H
