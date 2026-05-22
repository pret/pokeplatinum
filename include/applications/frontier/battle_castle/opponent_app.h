#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_OPPONENT_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_OPPONENT_MAIN_H

#include "overlay_manager.h"

BOOL BattleCastleOpponentApp_Init(ApplicationManager *appMan, int *state);
BOOL BattleCastleOpponentApp_Main(ApplicationManager *appMan, int *state);
BOOL BattleCastleOpponentApp_Exit(ApplicationManager *appMan, int *state);
void CommCmd_BattleCastleOpponentHandlePlayerInfo(int netID, int unused, void *data, void *context);
void CommCmd_BattleCastleOpponentHandlePurchaseInfo(int netID, int unused, void *data, void *context);
void CommCmd_BattleCastleOpponentUpdateCursorCmd(int netID, int unused, void *data, void *context);
void CommCmd_BattleCastleOpponentHandleExitApp(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_OPPONENT_MAIN_H
