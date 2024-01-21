#ifndef POKEPLATINUM_BATTLE_TRAINER_AI_H
#define POKEPLATINUM_BATTLE_TRAINER_AI_H

#include "struct_decls/battle_system.h"
#include "battle/battle_context.h"

void TrainerAI_Init(BattleSystem * param0, BattleContext * param1, u8 param2, u8 param3);
u8 TrainerAI_Main(BattleSystem * param0, u8 param1);
int TrainerAI_PickCommand(BattleSystem * param0, int param1);

#endif // POKEPLATINUM_BATTLE_TRAINER_AI_H
