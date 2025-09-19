#ifndef POKEPLATINUM_OV80_021D0D80_H
#define POKEPLATINUM_OV80_021D0D80_H

#include "overlay_manager.h"

#define TOWN_MAP_GRID_SPACING  7
#define TOWN_MAP_GRID_X_OFFSET (+25)
#define TOWN_MAP_GRID_Y_OFFSET (-34)
#define TOWN_MAP_GRID_X(x)     (TOWN_MAP_GRID_SPACING * (x) + TOWN_MAP_GRID_X_OFFSET)
#define TOWN_MAP_GRID_Y(y)     (TOWN_MAP_GRID_SPACING * (y) + TOWN_MAP_GRID_Y_OFFSET)

enum TownMapMode {
    TOWN_MAP_MODE_ITEM = 0,
    TOWN_MAP_MODE_FLY,
    TOWN_MAP_MODE_WALL_MAP,

    NUM_TOWN_MAP_MODES,
};

int TownMap_Init(ApplicationManager *appMan, int *unused);
int TownMap_Main(ApplicationManager *appMan, int *unused);
int TownMap_Exit(ApplicationManager *appMan, int *unused);

#endif // POKEPLATINUM_OV80_021D0D80_H
