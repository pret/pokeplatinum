#ifndef POKEPLATINUM_BATTLE_TRAINER_AI_H
#define POKEPLATINUM_BATTLE_TRAINER_AI_H

#include "struct_decls/battle_system.h"
#include "battle/battle_context.h"

/**
 * @brief Initialize the trainer AI for a given battler.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @param battler   The battler to be initialized
 * @param initScore Bitmask of moves to have their scores initialized; moves
 *                  flagged as such will be initially scored at 100 instead of 0.
 */
void TrainerAI_Init(BattleSystem *battleSys, BattleContext *battleCtx, u8 battler, u8 initScore);

/**
 * @brief Execute the trainer AI routine for a given battler.
 * 
 * @param battleSys 
 * @param battler   The battler to be executed
 * @return          AI execution routine result
 */
u8 TrainerAI_Main(BattleSystem *battleSys, u8 battler);

/**
 * @brief Pick the command for a battler to execute.
 * 
 * @param battleSys 
 * @param battler   The battler who is waiting to choose their turn's action
 * @return          The action to be executed for this battler
 */
int TrainerAI_PickCommand(BattleSystem *battleSys, int battler);

#endif // POKEPLATINUM_BATTLE_TRAINER_AI_H
