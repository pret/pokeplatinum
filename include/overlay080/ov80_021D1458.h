#ifndef POKEPLATINUM_OV80_021d1458_H
#define POKEPLATINUM_OV80_021d1458_H

#include "applications/town_map/defs.h"

BOOL TownMap_CreateGraphicsMan(TownMapAppData *appData);
BOOL TownMap_LoadGraphics(TownMapAppData *appData);
BOOL TownMap_FadeInBothScreens(TownMapAppData *appData);
BOOL TownMap_FadeOutBothScreens(TownMapAppData *appData);
BOOL TownMap_HandleInput_Item(TownMapAppData *appData);
BOOL TownMap_UpdateBottomScreen(TownMapAppData *appData);
BOOL TownMap_UpdateFlyTargetSprites(TownMapAppData *appData);
BOOL TownMap_FreeGraphics(TownMapAppData *appData);
BOOL TownMap_UpdateDisplayedLocationInfo(TownMapAppData *appData);
BOOL TownMap_HandleInput_Fly(TownMapAppData *appData);
BOOL TownMap_FadeInTopScreen(TownMapAppData *appData);
BOOL TownMap_FadeOutTopScreen(TownMapAppData *appData);
BOOL TownMap_HandleInput_WallMap(TownMapAppData *appData);

#endif // POKEPLATINUM_OV80_021d1458_H
