#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_WINDOWS_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_WINDOWS_H

#include "bg_window.h"

void BattleFactoryApp_InitWindows(BgConfig *bgConfig, Window *windows);
void BattleFactoryApp_FreeWindows(Window *windows);
void BattleFactoryApp_DrawWindow(BgConfig *bgConfig, Window *window);
void BattleFactoryApp_DrawMessageBox(Window *window, int frame);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_WINDOWS_H
