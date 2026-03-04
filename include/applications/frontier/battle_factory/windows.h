#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_WINDOWS_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_WINDOWS_H

#include "bg_window.h"

enum BattleFactoryAppWindows {
    WINDOW_PLAYERS_NAME = 0,
    WINDOW_PARTNERS_NAME,
    WINDOW_SELECTED_MON_NAME_1,
    WINDOW_SELECTED_MON_NAME_2,
    WINDOW_SELECTED_MON_NAME_3,
    WINDOW_MESSAGE_BOX,
    WINDOW_UNUSED,
    WINDOW_MENU,
    WINDOW_PARTNERS_MON_NAME_1,
    WINDOW_PARTNERS_MON_NAME_2,
    NUM_FACTORY_APP_WINDOWS,
};

void BattleFactoryApp_InitWindows(BgConfig *bgConfig, Window *windows);
void BattleFactoryApp_FreeWindows(Window *windows);
void BattleFactoryApp_DrawWindow(BgConfig *bgConfig, Window *window);
void BattleFactoryApp_DrawMessageBox(Window *window, int frame);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_WINDOWS_H
