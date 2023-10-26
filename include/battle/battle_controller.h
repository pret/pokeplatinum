#ifndef POKEPLATINUM_BATTLE_CONTROLLER_H
#define POKEPLATINUM_BATTLE_CONTROLLER_H

#include "struct_decls/battle_system.h"
#include "battle/battle_context.h"

enum BattleControlSequence {
    BATTLE_CONTROL_GET_BATTLE_MON = 0,
    BATTLE_CONTROL_START_ENCOUNTER,
    BATTLE_CONTROL_TRAINER_MESSAGE,
    BATTLE_CONTROL_SHOW_BATTLE_MON,
    BATTLE_CONTROL_INIT_COMMAND_SELECTION,
    BATTLE_CONTROL_COMMAND_SELECTION_INPUT,
    BATTLE_CONTROL_CALC_TURN_ORDER,
    BATTLE_CONTROL_CHECK_PRE_MOVE_ACTIONS,
    BATTLE_CONTROL_BRANCH_ACTIONS,
    BATTLE_CONTROL_CHECK_FIELD_CONDITIONS,
    BATTLE_CONTROL_CHECK_MON_CONDITIONS,
    BATTLE_CONTROL_CHECK_SIDE_CONDITIONS,
    BATTLE_CONTROL_TURN_END,

    BATTLE_CONTROL_FIGHT,
    BATTLE_CONTROL_ITEM,
    BATTLE_CONTROL_PARTY,
    BATTLE_CONTROL_RUN,

    BATTLE_CONTROL_SAFARI_BALL,
    BATTLE_CONTROL_SAFARI_BAIT,
    BATTLE_CONTROL_SAFARI_ROCK,
    BATTLE_CONTROL_SAFARI_WAIT,

    BATTLE_CONTROL_EXEC_SCRIPT,
    BATTLE_CONTROL_BEFORE_MOVE,
    BATTLE_CONTROL_TRY_MOVE,
    BATTLE_CONTROL_PRIMARY_EFFECT,
    BATTLE_CONTROL_MOVE_FAILED,
    BATTLE_CONTROL_USE_MOVE,
    BATTLE_CONTROL_UPDATE_HP,
    BATTLE_CONTROL_AFTER_MOVE_MESSAGE,
// 29 is an unused state
    BATTLE_CONTROL_AFTER_MOVE_EFFECT = 30,
    BATTLE_CONTROL_LOOP_MULTI_HIT,
// 32 is an unused state
    BATTLE_CONTROL_LOOP_FAINTED = 33,
    BATTLE_CONTROL_LOOP_SPREAD_MOVES,
    BATTLE_CONTROL_FAINT_AFTER_SELFDESTRUCT,
    BATTLE_CONTROL_TRIGGER_AFTER_HIT_EFFECTS,
// 37 is an unused state
    BATTLE_CONTROL_UPDATE_MOVE_BUFFERS = 38,
    BATTLE_CONTROL_MOVE_END,
    BATTLE_CONTROL_CHECK_ANY_FAINTED,
    BATTLE_CONTROL_RESULT,
    BATTLE_CONTROL_SCREEN_WIPE,
    BATTLE_CONTROL_FIGHT_END,
    BATTLE_CONTROL_END_WAIT,
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
void* BattleContext_New(BattleSystem *battleSys);

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
BOOL BattleController_Main(BattleSystem *battleSys, BattleContext *battleCtx);

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
void BattleController_CheckMoveHit(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move);

#endif // POKEPLATINUM_BATTLE_CONTROLLER_H
