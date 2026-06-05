#ifndef POKEPLATINUM_BATTLE_BATTLE_MAIN_H
#define POKEPLATINUM_BATTLE_BATTLE_MAIN_H

#include "struct_decls/battle_system.h"

#include "overlay_manager.h"

BOOL Battle_Main(ApplicationManager *appMan, int *state);
void BattleSystem_EnterSubMenu(BattleSystem *battleSys);
void BattleSystem_FreeGraphics(BattleSystem *battleSys);
void BattleSystem_ExitSubMenu(BattleSystem *battleSys);
void BattleSystem_HideBattleScreen(BattleSystem *battleSys);
void BattleSystem_SetupBattleScreen(BattleSystem *battleSys);
void BattleSystem_LoadFightOverlay(BattleSystem *battleSys, int flags);

#endif // POKEPLATINUM_BATTLE_BATTLE_MAIN_H
