#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_OPPONENT_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_OPPONENT_MAIN_H

#include "overlay_manager.h"

BOOL BattleCastleOpponentApp_Init(ApplicationManager *appMan, int *state);
BOOL BattleCastleOpponentApp_Main(ApplicationManager *appMan, int *state);
BOOL BattleCastleOpponentApp_Exit(ApplicationManager *appMan, int *state);
void ov107_02248910(int param0, int param1, void *param2, void *param3);
void ov107_02248978(int param0, int param1, void *param2, void *param3);
void ov107_022489E0(int param0, int param1, void *param2, void *param3);
void ov107_02248A10(int param0, int param1, void *param2, void *param3);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_OPPONENT_MAIN_H
