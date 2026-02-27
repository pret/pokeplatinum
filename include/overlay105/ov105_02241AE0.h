#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_MAIN_H

#include "overlay_manager.h"

int BattleFactoryApp_Init(ApplicationManager *appMan, int *state);
int BattleFactoryApp_Main(ApplicationManager *appMan, int *state);
int BattleFactoryApp_Exit(ApplicationManager *appMan, int *state);
void ov105_0224569C(int param0, int param1, void *param2, void *param3);
void ov105_02245744(int param0, int param1, void *param2, void *param3);
void ov105_022457B8(int param0, int param1, void *param2, void *param3);
void ov105_022458A4(int param0, int param1, void *param2, void *param3);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_FACTORY_MAIN_H
