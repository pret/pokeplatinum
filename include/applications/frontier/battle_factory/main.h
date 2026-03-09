#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_MAIN_H

#include "overlay_manager.h"

int BattleFactoryApp_Init(ApplicationManager *appMan, int *state);
int BattleFactoryApp_Main(ApplicationManager *appMan, int *state);
int BattleFactoryApp_Exit(ApplicationManager *appMan, int *state);
void BattleFactoryApp_DummyCommCommand(int netID, int unused, void *data, void *context);
void BattleFactoryApp_HandleSelectionUpdateCmd(int netID, int unused, void *data, void *context);
void BattleFactoryApp_DummyCommCommand2(int netID, int unused, void *data, void *context);
void BattleFactoryApp_HandleTradeResultCmd(int netID, int unused, void *data, void *context);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_MAIN_H
