#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_HALL_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_HALL_MAIN_H

#include "overlay_manager.h"

BOOL BattleHallApp_Init(ApplicationManager *appMan, int *state);
BOOL BattleHallApp_Main(ApplicationManager *appMan, int *state);
BOOL BattleHallApp_Exit(ApplicationManager *appMan, int *state);
void BattleHall_DummyCommCommand(int netID, int unused, void *unused2, void *unused3);
void BattleHall_HandleTypeSelectionMsg(int netID, int unused, void *data, void *context);
void BattleHall_HandlePartnerDecisionCmd(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_HALL_MAIN_H
