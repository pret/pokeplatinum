#ifndef POKEPLATINUM_BATTLE_IDLE_BOUNCE_ANIM_H
#define POKEPLATINUM_BATTLE_IDLE_BOUNCE_ANIM_H

#include "struct_decls/battle_system.h"
#include "struct_defs/battler_data.h"

void BattlerData_StartIdleBounceAnim(BattlerData *battlerData, BattleSystem *battleSys);
void BattlerData_StopIdleBounceAnim(BattlerData *battlerData);

#endif // POKEPLATINUM_BATTLE_IDLE_BOUNCE_ANIM_H
