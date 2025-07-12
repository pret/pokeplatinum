#ifndef POKEPLATINUM_GTS_SCREENS_MAIN_MENU_H
#define POKEPLATINUM_GTS_SCREENS_MAIN_MENU_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "message.h"

int GTSApplication_MainMenu_Init(GTSApplicationState *appState, int unused1);
int GTSApplication_MainMenu_Main(GTSApplicationState *appState, int unused1);
int GTSApplication_MainMenu_Exit(GTSApplicationState *appState, int unused1);
void GTSApplication_MainMenu_RenderButton(Window *window, MessageLoader *gtsMessageLoader, int messageId, u16 tile);
void ov94_0223D068(GTSApplicationState *appState);

#endif // POKEPLATINUM_GTS_SCREENS_MAIN_MENU_H
