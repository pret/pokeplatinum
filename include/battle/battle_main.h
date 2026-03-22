#ifndef POKEPLATINUM_BATTLE_MAIN_H
#define POKEPLATINUM_BATTLE_MAIN_H

#include "struct_decls/battle_system.h"

#include "overlay_manager.h"

BOOL Battle_Main(ApplicationManager *appMan, int *state);
void ov16_0223B384(BattleSystem *battleSys);
void ov16_0223B3E4(BattleSystem *battleSys);
void ov16_0223B430(BattleSystem *battleSys);
void ov16_0223B53C(BattleSystem *battleSys);
void ov16_0223B578(BattleSystem *battleSys);
void BattleSystem_LoadFightOverlay(BattleSystem *battleSys, int flags);

#endif // POKEPLATINUM_BATTLE_MAIN_H
