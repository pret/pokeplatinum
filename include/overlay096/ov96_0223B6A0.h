#ifndef POKEPLATINUM_OV96_0223B6A0_H
#define POKEPLATINUM_OV96_0223B6A0_H

#include "overlay096/struct_ov96_0223BF40_decl.h"

#include "bg_window.h"
#include "menu.h"
#include "overlay_manager.h"
#include "sprite.h"

int WifiBattleTower_AppInit(ApplicationManager *appMan, int *state);
int WifiBattleTower_AppMain(ApplicationManager *appMan, int *state);
int WifiBattleTower_AppExit(ApplicationManager *appMan, int *unused);
void WifiBattleTower_BuildAffineSpriteTemplate(AffineSpriteListTemplate *template, WifiBattleTowerAppState *appState, SpriteResourcesHeader *spriteResourceHeader, int vramType);
Menu *WifiBattleTower_CreateYesNoMenu(BgConfig *bgConfig, int tilemapTop, int baseTile);
void WifiBattleTower_SetState(WifiBattleTowerAppState *appState, int state, int nextState);
int WifiBattleTower_GetSignalStrength(void);
void WifiBattleTower_SetExitMode(WifiBattleTowerAppState *appState, int exitMode, int unused);

enum WifiBattleTowerLoopState {
    BT_LOOP_STATE_WAIT_FOR_WIRELESS_DRIVER,
    BT_LOOP_STATE_INIT,
    BT_LOOP_STATE_WAIT_FADE,
    BT_LOOP_STATE_MAIN,
    BT_LOOP_STATE_FINISH,
    BT_LOOP_STATE_EXIT,
};

#endif // POKEPLATINUM_OV96_0223B6A0_H
