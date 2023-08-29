#ifndef POKEPLATINUM_BATTLE_CONTROLLER_H
#define POKEPLATINUM_BATTLE_CONTROLLER_H

#include "struct_decls/battle_system.h"
#include "battle/battle_context.h"

void *BattleContext_New(BattleSystem *battleSys);
int BattleController_Main(BattleSystem *battleSys, BattleContext *battleCtx);
void BattleContext_Free(BattleContext *battleCtx);
void BattleSystem_CheckMoveHitEffect(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move);

#endif // POKEPLATINUM_BATTLE_CONTROLLER_H
