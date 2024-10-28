#ifndef POKEPLATINUM_APPLICATIONS_OPTIONS_MENU_H
#define POKEPLATINUM_APPLICATIONS_OPTIONS_MENU_H

#include "overlay_manager.h"

typedef struct OptionsMenu {
    u16 textSpeed : 4;
    u16 soundMode : 2;
    u16 battleScene : 1;
    u16 battleStyle : 1;
    u16 buttonMode : 2;
    u16 messageBoxStyle : 5;
    u16 : 1;
} OptionsMenu;

BOOL OptionsMenu_Init(OverlayManager *ovyManager, int *state);
BOOL OptionsMenu_Exit(OverlayManager *ovyManager, int *state);
BOOL OptionsMenu_Main(OverlayManager *ovyManager, int *state);

#endif // POKEPLATINUM_APPLICATIONS_OPTIONS_MENU_H
