#ifndef POKEPLATINUM_PC_HALL_OF_FAME_MANAGER_H
#define POKEPLATINUM_PC_HALL_OF_FAME_MANAGER_H

#include "struct_decls/pc_hall_of_fame_app_decl.h"
#include "struct_defs/pc_hall_of_fame_screen_def.h"

#include "applications/pc_hall_of_fame/display.h"

#include "hall_of_fame.h"
#include "overlay_manager.h"

typedef struct PCHallOfFameMan {
    PCHallOfFameScreen pcHallOfFameScreen;
    PCHallOfFameApp *pcHallOfFameApp;
    HallOfFame *hallOfFame;
    int storedEntriesCount;
    int entryIndex;
    BOOL isTransitioning;
} PCHallOfFameMan;

BOOL PCHallOfFameManager_Init(ApplicationManager *appMan, int *state);
BOOL PCHallOfFameManager_Exit(ApplicationManager *appMan, int *state);
BOOL PCHallOfFameManager_Main(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_PC_HALL_OF_FAME_MANAGER_H
