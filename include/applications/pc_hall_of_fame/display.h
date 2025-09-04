#ifndef POKEPLATINUM_PC_HALL_OF_FAME_DISPLAY_H
#define POKEPLATINUM_PC_HALL_OF_FAME_DISPLAY_H

#include "struct_decls/pc_hall_of_fame_app_decl.h"
#include "struct_decls/pc_hall_of_fame_man_decl.h"
#include "struct_defs/pc_hall_of_fame_screen_def.h"

typedef enum PCHallOfFameTransition {
    PC_HALL_OF_FAME_TRANSITION_OPEN,
    PC_HALL_OF_FAME_TRANSITION_CLOSE,
    PC_HALL_OF_FAME_TRANSITION_CHANGE_POKEMON,
    PC_HALL_OF_FAME_TRANSITION_CHANGE_ENTRY,
    PC_HALL_OF_FAME_TRANSITION_CHANGE_TEXT,
} PCHallOfFameTransition;

PCHallOfFameApp *PCHallOfFame_InitApp(PCHallOfFameMan *pcHallOfFameMan, const PCHallOfFameScreen *pcHallOfFameScreen);
void PCHallOfFame_FreeApp(PCHallOfFameApp *pcHallOfFameApp);
BOOL PCHallOfFame_DoTransition(PCHallOfFameApp *pcHallOfFameApp, int transition);
BOOL PCHallOfFame_IsTransitionDone(PCHallOfFameApp *pcHallOfFameApp);

#endif // POKEPLATINUM_PC_HALL_OF_FAME_DISPLAY_H
