#ifndef POKEPLATINUM_WIFI_BATTLE_TOWER_APPLICATION_H
#define POKEPLATINUM_WIFI_BATTLE_TOWER_APPLICATION_H

#include "wifi_battle_tower/app_state.h"

#include "bg_window.h"
#include "menu.h"
#include "overlay_manager.h"
#include "sprite.h"

enum WifiBattleTowerLoopState {
    BT_LOOP_STATE_WAIT_FOR_WIRELESS_DRIVER,
    BT_LOOP_STATE_INIT,
    BT_LOOP_STATE_WAIT_FADE,
    BT_LOOP_STATE_MAIN,
    BT_LOOP_STATE_FINISH,
    BT_LOOP_STATE_EXIT,
};

BOOL WifiBattleTower_AppInit(ApplicationManager *appMan, int *state);
BOOL WifiBattleTower_AppMain(ApplicationManager *appMan, int *state);
BOOL WifiBattleTower_AppExit(ApplicationManager *appMan, int *state);
void WifiBattleTower_BuildAffineSpriteTemplate(AffineSpriteListTemplate *template, WifiBattleTowerAppState *appState, SpriteResourcesHeader *spriteResourceHeader, int vramType);
Menu *WifiBattleTower_CreateYesNoMenu(BgConfig *bgConfig, int tilemapTop, int baseTile);
void WifiBattleTower_SetState(WifiBattleTowerAppState *appState, enum WifiBattleTowerState state, enum WifiBattleTowerState nextState);
int WifiBattleTower_GetSignalStrength(void);
void WifiBattleTower_SetExitMode(WifiBattleTowerAppState *appState, int exitMode, int unused);

#endif // POKEPLATINUM_WIFI_BATTLE_TOWER_APPLICATION_H
