#ifndef POKEPLATINUM_CHOOSE_STARTER_APP_H
#define POKEPLATINUM_CHOOSE_STARTER_APP_H

#include "overlay_manager.h"

BOOL ChooseStarter_Init(OverlayManager *ovyManager, int *state);
BOOL ChooseStarter_Main(OverlayManager *ovyManager, int *state);
BOOL ChooseStarter_Exit(OverlayManager *ovyManager, int *state);

#endif // POKEPLATINUM_CHOOSE_STARTER_APP_H
