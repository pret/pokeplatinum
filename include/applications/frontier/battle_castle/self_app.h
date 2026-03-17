#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SELF_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SELF_MAIN_H

#include "overlay_manager.h"

BOOL BattleCastleSelfApp_Init(ApplicationManager *appMan, int *state);
BOOL BattleCastleSelfApp_Main(ApplicationManager *appMan, int *state);
BOOL BattleCastleSelfApp_Exit(ApplicationManager *appMan, int *state);
void BattleCastleSelfApp_HandlePlayerInfoCmd(int netID, int unused, void *data, void *context);
void BattleCastleSelfApp_HandlePurchaseInfoCmd(int netID, int unused, void *data, void *context);
void BattleCastleSelfApp_HandleUpdateCursorCmd(int netID, int unused, void *data, void *context);
void BattleCastleSelfApp_HandleExitAppCmd(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SELF_MAIN_H
