#ifndef POKEPLATINUM_CHOOSE_STARTER_APP_H
#define POKEPLATINUM_CHOOSE_STARTER_APP_H

#include "overlay_manager.h"

BOOL ChooseStarter_Init(ApplicationManager *appMan, int *state);
BOOL ChooseStarter_Main(ApplicationManager *appMan, int *state);
BOOL ChooseStarter_Exit(ApplicationManager *appMan, int *state);

#endif // POKEPLATINUM_CHOOSE_STARTER_APP_H
