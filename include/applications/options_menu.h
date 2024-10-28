#ifndef POKEPLATINUM_APPLICATIONS_OPTIONS_MENU_H
#define POKEPLATINUM_APPLICATIONS_OPTIONS_MENU_H

#include "overlay_manager.h"

BOOL OptionsMenu_Init(OverlayManager *ovyManager, int *state);
BOOL OptionsMenu_Main(OverlayManager *ovyManager, int *state);
BOOL OptionsMenu_Exit(OverlayManager *ovyManager, int *state);

#endif // POKEPLATINUM_APPLICATIONS_OPTIONS_MENU_H
