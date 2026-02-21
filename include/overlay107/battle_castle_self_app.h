#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SELF_MAIN_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SELF_MAIN_H

#include "overlay_manager.h"

BOOL BattleCastleSelfApp_Init(ApplicationManager *appMan, int *state);
BOOL BattleCastleSelfApp_Main(ApplicationManager *appMan, int *state);
BOOL BattleCastleSelfApp_Exit(ApplicationManager *appMan, int *state);
void ov107_02245338(int param0, int param1, void *param2, void *param3);
void ov107_022453A0(int param0, int param1, void *param2, void *param3);
void ov107_02245408(int param0, int param1, void *param2, void *param3);
void ov107_02245438(int param0, int param1, void *param2, void *param3);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_SELF_MAIN_H
