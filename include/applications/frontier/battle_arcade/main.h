#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_ARCADE_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_ARCADE_MAIN_H

#include "overlay_manager.h"

BOOL BattleArcadeApp_Init(ApplicationManager *appMan, int *state);
BOOL BattleArcadeApp_Main(ApplicationManager *appMan, int *state);
BOOL BattleArcadeApp_Exit(ApplicationManager *appMan, int *state);
void BattleArcadeApp_HandleInitialLayoutCmd(int netID, int unused, void *data, void *context);
void BattleArcadeApp_HandleResultCmd(int netID, int unused, void *data, void *context);
void BattleArcadeApp_HandleUnusedCmd(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_ARCADE_MAIN_H
