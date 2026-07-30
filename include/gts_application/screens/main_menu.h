#ifndef POKEPLATINUM_GTS_SCREENS_MAIN_MENU_H
#define POKEPLATINUM_GTS_SCREENS_MAIN_MENU_H

#include "gts_application/gts.h"

#include "bg_window.h"
#include "message.h"

int GTSApplication_MainMenu_Init(GTSApplicationState *appState, int unused1);
int GTSApplication_MainMenu_Main(GTSApplicationState *appState, int unused1);
int GTSApplication_MainMenu_Exit(GTSApplicationState *appState, int unused1);
void GTSApplication_MainMenu_RenderButton(Window *window, MessageLoader *gtsMessageLoader, int messageId, u16 tile);
void GTS_LoadSubScreenGraphics(GTSApplicationState *appState);

enum {
    GTS_MAIN_MENU_OPTION_DEPOSIT = 0,
    GTS_MAIN_MENU_OPTION_SEEK = 1,
    GTS_MAIN_MENU_OPTION_EXIT = 2,
};

enum GTSMainMenuScreenStates {
    GTS_MAINMENU_WAIT_UNTIL_FINISHED_MOVING,
    GTS_MAINMENU_QUEUE_FADE_IN,
    GTS_MAINMENU_BEGIN_FADE_IN,
    GTS_MAINMENU_WAIT_FADE_IN_1,
    GTS_MAINMENU_WAIT_FADE_IN_2,
    GTS_MAINMENU_SETUP_BOTTOM_WINDOW_QUESTION,
    GTS_MAINMENU_HANDLE_INPUT,
    GTS_MAINMENU_BEGIN_LOGOUT_ANIM,
    GTS_MAINMENU_WAIT_LOGOUT_ANIM,
    GTS_MAINMENU_FADE_AND_EXIT,
    GTS_MAINMENU_WAIT_FOR_TEXT_PRINTER,
    GTS_MAINMENU_WAIT_FOR_MESSAGE_WITH_DELAY,
    GTS_MAINMENU_SHOW_CONFIRMATION_MENU,
    GTS_MAINMENU_HANDLE_CONFIRMATION_MENU,
};

#endif // POKEPLATINUM_GTS_SCREENS_MAIN_MENU_H
