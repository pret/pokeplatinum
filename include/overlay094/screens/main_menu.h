#ifndef POKEPLATINUM_GTS_SCREENS_MAIN_MENU_H
#define POKEPLATINUM_GTS_SCREENS_MAIN_MENU_H

#include "overlay094/gts_application_state.h"

#include "bg_window.h"
#include "message.h"

int GTSApplication_MainMenu_Init(GTSApplicationState *param0, int param1);
int GTSApplication_MainMenu_Main(GTSApplicationState *param0, int param1);
int GTSApplication_MainMenu_Exit(GTSApplicationState *param0, int param1);
void GTSApplication_MainMenu_RenderButton(Window *param0, MessageLoader *gtsMessageLoader, int param2, u16 param3);
void ov94_0223D068(GTSApplicationState *param0);

#endif // POKEPLATINUM_GTS_SCREENS_MAIN_MENU_H
