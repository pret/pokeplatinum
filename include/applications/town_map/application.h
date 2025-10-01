#ifndef POKEPLATINUM_APPLICATIONS_TOWN_MAP_APPLICATION_H
#define POKEPLATINUM_APPLICATIONS_TOWN_MAP_APPLICATION_H

#include "overlay_manager.h"

enum TownMapMode {
    TOWN_MAP_MODE_ITEM = 0,
    TOWN_MAP_MODE_FLY,
    TOWN_MAP_MODE_WALL_MAP,

    NUM_TOWN_MAP_MODES,
};

BOOL TownMap_Init(ApplicationManager *appMan, int *unused);
BOOL TownMap_Main(ApplicationManager *appMan, int *unused);
BOOL TownMap_Exit(ApplicationManager *appMan, int *unused);

#endif // POKEPLATINUM_APPLICATIONS_TOWN_MAP_APPLICATION_H
