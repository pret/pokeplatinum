#ifndef POKEPLATINUM_BATTLE_CONTROLLER_H
#define POKEPLATINUM_BATTLE_CONTROLLER_H

#include "struct_decls/battle_system.h"

#include "battle/battle_context.h"

enum BattleControllerPlayerInput {
    PLAYER_INPUT_FIGHT = 1,
    PLAYER_INPUT_ITEM,
    PLAYER_INPUT_PARTY,
    PLAYER_INPUT_RUN,

    PLAYER_INPUT_SAFARI_BALL = PLAYER_INPUT_FIGHT,
    PLAYER_INPUT_SAFARI_BAIT = PLAYER_INPUT_ITEM,
    PLAYER_INPUT_SAFARI_ROCK = PLAYER_INPUT_PARTY,
    PLAYER_INPUT_SAFARI_RUN = PLAYER_INPUT_RUN,
    PLAYER_INPUT_SAFARI_WAIT,

    PLAYER_INPUT_PAL_PARK_BALL = PLAYER_INPUT_FIGHT,
    PLAYER_INPUT_PAL_PARK_RUN = PLAYER_INPUT_RUN,

    PLAYER_INPUT_MOVE_1 = 1,
    PLAYER_INPUT_MOVE_2,
    PLAYER_INPUT_MOVE_3,
    PLAYER_INPUT_MOVE_4,

    PLAYER_INPUT_PARTY_SLOT_1 = 1,
    PLAYER_INPUT_PARTY_SLOT_2,
    PLAYER_INPUT_PARTY_SLOT_3,
    PLAYER_INPUT_PARTY_SLOT_4,
    PLAYER_INPUT_PARTY_SLOT_5,
    PLAYER_INPUT_PARTY_SLOT_6,

    PLAYER_INPUT_TARGET_BATTLER_1 = 1,
    PLAYER_INPUT_TARGET_BATTLER_2,
    PLAYER_INPUT_TARGET_BATTLER_3,
    PLAYER_INPUT_TARGET_BATTLER_4,

    PLAYER_INPUT_CANCEL = 0xFF,
};

/**
 * @brief Create a new BattleContext struct from the given BattleSystem.
 *
 * The context itself will be initialized along with its state-counters, its AI
 * context, the move data table, and the item data table. Memory for the new
 * structure will always be allocated from the Battle heap.
 *
 * @param battleSys
 * @return Address of the newly-allocated BattleContext struct.
 */
void *BattleContext_New(BattleSystem *battleSys);

/**
 * @brief Main executor for the battle state machine.
 *
 * If the battle is deemed to not yet be complete, then a command will be
 * loaded from the parent context struct and the respective state machine
 * function will be invoked.
 *
 * For the sequence of states in the machine, see enum BattleControlSequence.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the battle for this state machine is complete; FALSE
 * otherwise.
 */
BOOL BattleContext_Main(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Free the child memory blocks allocated for a BattleContext struct.
 *
 * @param battleCtx
 */
void BattleContext_Free(BattleContext *battleCtx);

/**
 * @brief Determine if a move used by the attacking battler will hit its target.
 *
 * This routine will account for both the standard accuracy formula and any
 * effects which would otherwise override that formula. Move status flags will
 * be updated with information about the move's result.
 *
 * @param battleSys
 * @param battleCtx
 * @param attacker
 * @param defender
 * @param move
 */
void BattleControllerPlayer_CheckMoveHit(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move);

#endif // POKEPLATINUM_BATTLE_CONTROLLER_H
