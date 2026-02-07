#ifndef POKEPLATINUM_BATTLE_BATTLE_LIB_H
#define POKEPLATINUM_BATTLE_BATTLE_LIB_H

#include "constants/battle.h"
#include "constants/sound.h"

#include "struct_decls/battle_system.h"

#include "battle/battle_context.h"
#include "battle/battle_message.h"
#include "battle/battle_mon.h"
#include "battle/btlcmd.h"

#include "pokemon.h"

enum CountAbilityMode {
    COUNT_ALL_BATTLERS_OUR_SIDE = 0, //< Count all the battlers on our side with the ability
    COUNT_ALIVE_BATTLERS_OUR_SIDE, //< Count all alive battlers on our side with the ability
    COUNT_ALL_BATTLERS_THEIR_SIDE, //< Count all the battlers on their side with the ability
    COUNT_ALIVE_BATTLERS_THEIR_SIDE, //< Count all alive battlers on their side with the ability
    COUNT_ALIVE_BATTLERS_THEIR_SIDE_FLAG, //< Return a mask of alive battlers on their side with the ability
    COUNT_ALL_BATTLERS, //< Count all battlers on the battlefield with the ability
    COUNT_ALL_BATTLERS_EXCEPT_ME, //< Count all battlers except for me which have the ability
    COUNT_ALL_BATTLERS_EXCEPT_ME_RETURN_BATTLER, //< Return the battler which has the ability
    COUNT_ALIVE_BATTLERS, //< Count all alive battlers on the battlefield with the ability
    COUNT_ALIVE_BATTLERS_EXCEPT_ME, //< Count all alive battlers except for me which have the ability
};

/**
 * @brief Initialize a BattleMon from the Pokemon in the given battler's party,
 * from the given party slot.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler whose party will be read from
 * @param partySlot The slot in the party to retrieve
 */
void BattleSystem_InitBattleMon(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);

/**
 * @brief Reload a BattleMon from the given battler's party, from the given
 * party slot.
 *
 * Specifically, this will only reload the following fields:
 *
 * - battle stats (attack, defense, etc.)
 * - level
 * - friendship
 * - move known in each slot
 * - total experience
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler whose party will be read from
 * @param partySlot The slot in the party to retrieve
 */
void BattleSystem_ReloadPokemon(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);

/**
 * @brief Load a script file from the specified NARC.
 *
 * @param battleCtx
 * @param narcID        Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
void BattleSystem_LoadScript(BattleContext *battleCtx, enum NarcID narcID, int file);

/**
 * @brief Load a script file from the specified NARC and invoke it as a call,
 * returning to the previous script once finished processing.
 *
 * @param battleCtx
 * @param narcID        Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
void BattleSystem_CallScript(BattleContext *battleCtx, enum NarcID narcID, int file);

/**
 * @brief Pop a script from the stack, if one is present, and load it for
 * execution.
 *
 * If a script is loaded, then this will also pop a value from the script cursor
 * stack and set the internal script cursor to that value.
 *
 * @param battleCtx
 * @return TRUE if there are no contents in the stack to be loaded; FALSE if
 * a stack was popped and should be executed.
 */
BOOL BattleSystem_PopScript(BattleContext *battleCtx);

/**
 * @brief Enqueue a value onto the given IO queue for the battler.
 *
 * @param battleCtx
 * @param id        ID of the queue to enqueue the value onto
 * @param battler   Battler for which the value should be enqueued
 * @param val       Value which will be enqueued
 */
void BattleIO_EnqueueVal(BattleContext *battleCtx, int id, int battler, int val);

/**
 * @brief Dequeue a specific value from the given IO queue for the battler.
 *
 * @param battleCtx
 * @param id        ID of the queue to dequeue the value from
 * @param battler   Battler for which the value should be dequeued
 * @param val       Value which will be dequeued
 */
void BattleIO_DequeueVal(BattleContext *battleCtx, int id, int battler, int val);

/**
 * @brief Determine if the Battle IO queue is empty (i.e., there are no pending
 * actions to be executed for any players hooked into this particular battle).
 *
 * As a side effect, if the queue is empty, then this routine will also set the
 * link-battle timeout counter back to 0.
 *
 * @param battleCtx
 * @return TRUE if the queue has no remaining actions; FALSE otherwise.
 */
BOOL BattleIO_QueueIsEmpty(BattleContext *battleCtx);

/**
 * @brief Increments the link-battle timeout counter.
 *
 * If the counter exceeds the maximum timeout value (1800, ~= 30 seconds),
 * then the link will be terminated with an error state.
 *
 * @param battleCtx
 */
void BattleIO_UpdateTimeout(BattleContext *battleCtx);

/**
 * @brief Clear the battle IO queue of all data.
 *
 * @param battleCtx
 * @param battler
 */
void BattleIO_ClearBuffer(BattleContext *battleCtx, int battler);

/**
 * @brief Get a data field value from a given battler.
 *
 * @param battleCtx
 * @param battler       The requested battler
 * @param paramID       ID of the field to retrieve from the battler
 * @param[out] outBuf   Buffer output for non-integral values (i.e., strings)
 * @return The value of the data field, or 0 if not recognized or output is
 * presented via outBuf
 */
int BattleMon_Get(BattleContext *battleCtx, int battler, enum BattleMonParam paramID, void *buf);

/**
 * @brief Set a data field value for a given battler.
 *
 * @param battleCtx
 * @param battler       The requested battler
 * @param paramID       ID of the field to retrieve from the battler
 * @param buf           Buffer input for the value to be set
 */
void BattleMon_Set(BattleContext *battleCtx, int battler, enum BattleMonParam paramID, const void *buf);

/**
 * @brief Add a value to a battler's data field.
 *
 * This is just a convenience wrapper around BattleMon_AddVal.
 *
 * @param battleCtx
 * @param battler   The battler whose data should be modified
 * @param paramID   ID of the field which should be modified
 * @param val       Value to be added to the battler's data field
 */
void Battler_AddVal(BattleContext *battleCtx, int battler, enum BattleMonParam paramID, int val);

/**
 * @brief Add a value to a Pokemon's data field.
 *
 * @param mon
 * @param paramID   ID of the field which should be modified
 * @param val       Value to be added to the Pokemon's data field
 */
void BattleMon_AddVal(BattleMon *mon, enum BattleMonParam paramID, int val);

/**
 * @brief Compare the speed of two battlers and determine which of them should
 * move first.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler1
 * @param battler2
 * @param ignoreQuickClaw   If set to TRUE, the Quick Claw and Custap Berry
 *                          flags will NOT be set after determining if they
 *                          should activate.
 * @return A value representing the speed-ordering of the two battlers,
 * relative to the first of the two. See COMPARE_SPEED constants.
 */
u8 BattleSystem_CompareBattlerSpeed(BattleSystem *battleSys, BattleContext *battleCtx, int battler1, int battler2, BOOL ignoreQuickClaw);

/**
 * @brief Clear the flag denoting that a battler (or its partner) are due to
 * gain experience.
 *
 * @param battleCtx
 * @param battler   The battler who should not gain experience.
 */
void BattleSystem_ClearSideExpGain(BattleContext *battleCtx, int battler);

/**
 * @brief Flag a given battler as due to gain experience.
 *
 * If the battle involves an AI partner, then this routine will not touch the
 * flag for the opposing side of the battle.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler who should gain experience.
 */
void BattleSystem_FlagBattlerExpGain(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Trigger a primary effect on the current move.
 *
 * @param battleSys
 * @param battleCtx
 * @param[out] effect   Output parameter for the effect to be loaded.
 * @return TRUE if an effect should be loaded, FALSE if the result should be
 * ignored.
 */
BOOL BattleSystem_TriggerPrimaryEffect(BattleSystem *battleSys, BattleContext *battleCtx, int *effect);

/**
 * @brief Trigger a secondary effect on the current move.
 *
 * @param battleSys
 * @param battleCtx
 * @param[out] effect   Output parameter for the effect to be loaded.
 * @return TRUE if an effect should be loaded, FALSE if the result should be
 * ignored.
 */
BOOL BattleSystem_TriggerSecondaryEffect(BattleSystem *battleSys, BattleContext *battleCtx, int *effect);

/**
 * @brief Find the defender for the move.
 *
 * The defender can be chosen at random in certain scenarios, but only while
 * the randomize parameter is TRUE:
 *
 * 1. The move's range is Me First
 * 2. The move's range is Acupressure
 * 3. The move is a standard single-target attack, e.g., Thunderbolt
 *
 * @param battleSys
 * @param battleCtx
 * @param attacker
 * @param move      The move being used
 * @param randomize If TRUE, permit randomization of target-selection for certain moves
 * @param inRange   An input range to prefer for the move over whatever range is set on the move data
 * @return The chosen defender for the move
 */
int BattleSystem_Defender(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, u16 move, BOOL randomize, int inRange);

/**
 * @brief Check for redirection abilities given an attacker using a certain move.
 *
 * This routine will update the appropriate flags and the current target if the
 * used move is Electric- or Water-type, has single-target range, and at least
 * one other battler on the field has Lightning Rod or Storm Drain, respectively.
 *
 * @param battleSys
 * @param battleCtx
 * @param attacker
 * @param move
 */
void BattleSystem_CheckRedirectionAbilities(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, u16 move);

/**
 * @brief Trigger a redirection ability's effect and load the appropriate
 * subscript for execution.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if a subscript was loaded and should be executed for the effect,
 * FALSE otherwise.
 */
BOOL BattleSystem_TriggerRedirectionAbilities(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Copy the given battler back to its backing Pokemon structure in the party.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleMon_CopyToParty(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Locks the battler into their current move.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void Battler_LockMoveChoice(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Unlocks the battler's future move choices.
 *
 * This will also, as a convenience, toggle off the flags for Bide and semi-
 * invulnerable moves and reset the counters for Rollout and Fury Cutter.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void Battler_UnlockMoveChoice(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Calculate the status effect value for a battler's non-volatile
 * condition, if any.
 *
 * @param battleCtx
 * @param battler
 * @return A value representing the battler's status non-volatile status.
 */
enum BattleSubAnimation Battler_StatusCondition(BattleContext *battleCtx, int battler);

/**
 * @brief Check if the given trainer has a trainer message to be shown.
 *
 * If a trainer message is to be shown, then the respective battler will be
 * updated with the appropriate flag, and battleCtx->msgTemp will be loaded
 * with the type of message to be shown.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if a message should be shown, else FALSE.
 */
BOOL BattleSystem_CheckTrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Initialize the BattleContext structure with start-of-turn state.
 *
 * @param battleCtx
 */
void BattleContext_Init(BattleContext *battleCtx);

/**
 * @brief Initialize standard counters for the BattleContext structure.
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleContext_InitCounters(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Update relevant buffers for a battler after a switch.
 *
 * This handles all of the logic for what effects are zero'd out due to a
 * switch, as well as what effects are transferred across a switch due to
 * Baton Pass.
 *
 * This routine will update the battler's chosen command to be MOVE_END, which
 * functionally ends their turn.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The switching battler
 */
void BattleSystem_UpdateAfterSwitch(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Cleanup lingering state according to the given battler.
 *
 * This routine will clean up any volatile status values dependent on the
 * fainted battler (Mean Look, Attract, Bind), all move effects and single-turn
 * flags, and extra data associated with the battler that is elsewhere in the
 * battle context struct (e.g., buffers for Conversion 2, Sketch, and Mirror
 * Move).
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 */
void BattleSystem_CleanupFaintedMon(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Clear single-turn flags and buffered values in setup for the next turn.
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleSystem_SetupNextTurn(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Compute which moves are invalid for the battler to use, performing
 * checks according to the input opcode mask.
 *
 * The following op-codes are supported in the input mask:
 * - CHECK_INVALID_NO_MOVE -> flag empty move-slots
 * - CHECK_INVALID_NO_PP -> flag moves with no remaining PP
 * - CHECK_INVALID_DISABLED -> flag the battler's Disabled move
 * - CHECK_INVALID_TORMENTED -> flag the battler's last-used move
 * - CHECK_INVALID_TAUNTED -> flag any of the battler's moves with 0 power
 * - CHECK_INVALID_IMPRISONED -> flag any of the battler's Imprisoned moves
 * - CHECK_INVALID_GRAVITY -> flag any of the battler's moves which fail in high gravity
 * - CHECK_INVALID_HEAL_BLOCK -> flag any of the battler's healing moves
 * - CHECK_INVALID_CHOICE_ITEM -> flag any of the battler's moves other than their choice-locked move
 *
 * @param battleSys
 * @param battleCtx
 * @param battler       The battler choosing their move
 * @param invalidMoves  An initial mask of moves which should be deemed invalid
 * @param opMask        An input opcode mask determining which checks should be
 *                      made for move validity
 * @return A bitmask denoting which of the battler's move slots are invalid for
 * selection
 */
int BattleSystem_CheckInvalidMoves(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int invalidMoves, int opMask);

/**
 * @brief Determine if a battler can use the move in the given slot, populating
 * the input BattleMessage struct with a message to display if they cannot.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param moveSlot      The slot of the move that the battler is trying to use
 * @param[out] msgOut   An output message for display to the player
 * @return TRUE if the move can be used, FALSE if it cannot
 */
BOOL BattleSystem_CanUseMove(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int moveSlot, BattleMessage *msgOut);

/**
 * @brief Determine which slot of the Pokemon's moveset contains a given move.
 *
 * @param mon
 * @param move
 * @return The slot of the Pokemon's moveset containing the input move
 */
int Battler_SlotForMove(BattleMon *mon, u16 move);

/**
 * @brief Apply type-chart effectiveness for a given move against its target.
 *
 * This encapsulates the following multipliers:
 * - Same-Type Attack Bonus (and its modification by the ability Adaptability)
 * - Super/Not Very Effective multipliers for each of the defender's types
 * - Type-effectiveness overrides for effects like Iron Ball, Roost, and Miracle Eye
 * - Wonder Guard's override for moves that are not super-effective
 * - Expert Belt's multiplier for super-effective moves
 * - Filter and Solid Rock's multipliers for defenders taking super-effective damage
 * - Tinted Lens's multiplier for defenders taking not-very-effective damage
 *
 * The move status mask will also be updated with the correct flags.
 *
 * @param battleSys
 * @param battleCtx
 * @param move
 * @param inType            If this is non-zero, then it will be regarded as the move's type
 * @param attacker
 * @param defender
 * @param damage            Pre-calculated starting damage value
 * @param[out] moveStatusMask
 * @return Damage value after applying the type-chart and related multipliers
 */
int BattleSystem_ApplyTypeChart(BattleSystem *battleSys, BattleContext *battleCtx, int move, int inType, int attacker, int defender, int damage, u32 *moveStatusMask);

/**
 * @brief Calculate the effectiveness mask of the given move.
 *
 * @param battleCtx
 * @param move
 * @param inType                If this is non-zero, then it will be regarded as the move's type
 * @param attackerAbility
 * @param defenderAbility
 * @param defenderItemEffect
 * @param defenderType1
 * @param defenderType2
 * @param[out] moveStatusMask
 */
void BattleSystem_CalcEffectiveness(BattleContext *battleCtx, int move, int inType, int attackerAbility, int defenderAbility, int defenderItemEffect, int defenderType1, int defenderType2, u32 *moveStatusMask);

/**
 * @brief Check if a battler's move failed to execute for the turn.
 *
 * @param battleCtx
 * @param battler
 * @return TRUE if the battler's move failed to execute for the turn, FALSE
 * otherwise.
 */
BOOL BattleContext_MoveFailed(BattleContext *battleCtx, int battler);

/**
 * @brief Count the number of targets hit by a move.
 *
 * @param battleSys
 * @param battleCtx
 * @param sameSide  If TRUE, only the battlers on the same side of the field as
 *                  the defender will be counted. If FALSE, all battlers will
 *                  be counted.
 * @param defender
 * @return The number of battlers hit by the move.
 */
u8 BattleSystem_CountAliveBattlers(BattleSystem *battleSys, BattleContext *battleCtx, BOOL sameSide, int defender);

/**
 * @brief Apply a nickname tag to the given battler for message-formatting.
 *
 * @param battleSys
 * @param battler
 * @return The battler + a nickname tag value.
 */
int BattleSystem_NicknameTag(BattleContext *battleSys, int battler);

/**
 * @brief Get a battler's selected move for the turn, if any.
 *
 * @param battleCtx
 * @param battler
 * @return The battler's selected move for the turn.
 */
u16 Battler_SelectedMove(BattleContext *battleCtx, int battler);

/**
 * @brief Count the number of instances of the given ability on the battlefield.
 *
 * @param battleSys
 * @param battleCtx
 * @param mode      The behavior mode. See enum CountAbilityMode.
 * @param battler
 * @param ability
 * @return The number of battlers with the given ability matching the input
 * criteria; if the mode is one of *_FLAG, then the return value will instead
 * be a mask of the battlers matching the criteria.
 */
int BattleSystem_CountAbility(BattleSystem *battleSys, BattleContext *battleCtx, enum CountAbilityMode mode, int battler, int ability);

/**
 * @brief Determine if a given move is a multi-turn move.
 *
 * @param battleCtx
 * @param move
 * @return TRUE if the move is a multi-turn move (one which has a charging
 * turn); FALSE if not
 */
BOOL Move_IsMultiTurn(BattleContext *battleCtx, int move);

/**
 * @brief Access a particular entry in the type-matchup table.
 *
 * If the requested entry falls outside the bounds of the table, then a
 * random entry's data will instead be accessed.
 *
 * @param battleSys
 * @param idx           The index of table entry to access.
 * @param[out] atkType  Attacking type of the table entry.
 * @param[out] defType  Defending type of the table entry.
 * @param[out] multi    Multiplier for the type matchup.
 * @return TRUE if the requested entry was accessed; FALSE if the requested
 * entry falls outside the bounds of the table.
 */
BOOL BattleSystem_TypeMatchup(BattleSystem *battleSys, int idx, u8 *moveType, u8 *vsType, u8 *multi);

/**
 * @brief Determine the total multiplier classification to use for an attacking
 * type against a pair of defending types.
 *
 * This routine centers 1x damage as a return value of 40. From there, the
 * multiplier varies by powers of 2:
 * - 1/4x ->  10
 * - 1/2x ->  20
 * -   1x ->  40
 * -   2x ->  80
 * -   4x -> 160
 *
 * @param attackingType
 * @param defendingType1
 * @param defendingType2
 * @return The total multiplier of the attacking type against a defender with
 * the pair of types.
 */
int BattleSystem_TypeMatchupMultiplier(u8 attackingType, u8 defendingType1, u8 defendingType2);

/**
 * @brief Determines if a move is an invoker-class move.
 *
 * Invoker-class moves are those which call other moves and have no outward
 * effect of their own.
 *
 * @param move
 * @return TRUE if the move is invoker-class, FALSE if not.
 */
BOOL Move_IsInvoker(u16 move);

/**
 * @brief Check if a given move is Curse being used by a Ghost-type Pokemon.
 *
 * @param battleCtx
 * @param move
 * @param battler
 * @return TRUE if the move is Curse and the battler has the Ghost typing;
 * FALSE otherwise
 */
BOOL Move_IsGhostCurse(BattleContext *battleCtx, u16 move, int battler);

/**
 * @brief Determine if a battler's item can be stolen.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @return FALSE
 */
BOOL BattleSystem_CanStealItem(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Check if a battler is *not* holding Mail.
 *
 * @param battleCtx
 * @param battler
 * @return TRUE if the battler is *not* holding Mail, FALSE if so.
 */
BOOL BattleSystem_NotHoldingMail(BattleContext *battleCtx, int battler);

/**
 * @brief Determine if a target can be Whirlwinded away by an attacker.
 *
 * If the attacker is of a lesser level than the target, then this routine has
 * a random chance to return FALSE. Given a random integer R between 0 and 255,
 * Whirlwind will fail if the following condition holds:
 *
 *     R * (attackerLevel + defenderLevel)       defenderLevel
 *     ----------------------------------- + 1 ≤ -------------
 *                   256                               4
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if Whirlwind should succeed, FALSE if it should fail.
 */
BOOL BattleSystem_CanWhirlwind(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Get the battler's ability, accounting for disrupting effects on itself,
 * e.g. Gastro Acid, Gravity, and Ingrain.
 *
 * @param battleCtx
 * @param battler
 * @return The battler's ability
 */
u8 Battler_Ability(BattleContext *battleCtx, int battler);

/**
 * @brief Check if the given defender has the specified ability, treating it as
 * ignorable.
 *
 * The ability will be ignored if the attacker has Mold Breaker.
 *
 * @param battleCtx
 * @param attacker
 * @param defender
 * @param ability
 * @return TRUE if the defender has the given ability and it is not ignored;
 * FALSE if the ability is ignored, or if the defender does not have it.
 */
BOOL Battler_IgnorableAbility(BattleContext *battleCtx, int attacker, int defender, int ability);

/**
 * @brief Checks if there are any Pokemon which can act as a replacement for a
 * fainted one.
 *
 * Replacement-eligible Pokemon have HP > 0 and belong to the same party as a
 * fallen ally.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler which wishes to replace a fainted Pokemon.
 * @return TRUE if there are any Pokemon which can replace the fainted one;
 * otherwise FALSE.
 */
BOOL BattleSystem_AnyReplacementMons(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Check if a battler is trapped and cannot switch and, optionally,
 * populate a message for display.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param[out] msgOut   If non-null, will be populated with a message for
 *                      display to the player
 * @return TRUE if the battler is trapped, FALSE if not.
 */
BOOL Battler_IsTrappedMsg(BattleSystem *battleSys, BattleContext *battleCtx, int battler, BattleMessage *msgOut);

/**
 * @brief Try to escape a battle.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler trying to escape
 * @return TRUE if escape is successful, FALSE otherwise
 */
BOOL Battler_CanEscape(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Check if Truant is active for the turn for a given battler.
 *
 * @param battleCtx
 * @param battler
 * @return TRUE if the battler is loafing due to Truant, FALSE if not.
 */
BOOL Battler_CheckTruant(BattleContext *battleCtx, int battler);

/**
 * @brief Checks if a given move has been Imprisoned by one of the battler's
 * opponents.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler trying to execute a move.
 * @param move      The move to be executed.
 * @return TRUE if any of the battler's opponents has used Imprison and also
 * knows the requested move; FALSE otherwise.
 */
BOOL Move_Imprisoned(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int move);

/**
 * @brief Check if any active battlers are flagged as having the given move
 * effect.
 *
 * @param battleSys
 * @param battleCtx
 * @param effectMask    The requested move effect
 * @return TRUE if any active battler has the requested move effect; FALSE
 * othewise
 */
BOOL BattleSystem_AnyBattlersWithMoveEffect(BattleSystem *battleSys, BattleContext *battleCtx, int effectMask);

/**
 * @brief Setup flags for a move loop, e.g. for multi-hit or spread moves.
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleSystem_SetupLoop(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Sort all active battlers by their speed for the turn, ignoring Quick
 * Claw type effects.
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleSystem_SortMonSpeedOrder(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Check if a given move should fail due to high gravity conditions.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param move      The move to be executed
 * @return TRUE if the field is under high gravity conditions AND the move
 * should fail in such conditions; FALSE otherwise
 */
BOOL Move_FailsInHighGravity(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int move);

/**
 * @brief Check if a given move should fail due to the battler being afflicted
 * by Heal Block.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler trying to execute a move
 * @param move      The move to be executed
 * @return TRUE if the battler is afflicted with Heal Block AND the move should
 * fail due to such afflicition; FALSE otherwise
 */
BOOL Move_HealBlocked(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int move);

/**
 * @brief Update buffers for the attacking Pokemon related to Last Resort.
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleSystem_UpdateLastResort(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Count the number of moves known by a battler.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @return The number of moves known.
 */
int Battler_CountMoves(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Trigger an immunity-granting ability of the defender based on the
 * attacker's current move.
 *
 * Despite its name, this routine does NOT check for Levitate, which is
 * handled inside the type-chart check routine.
 *
 * @param battleCtx
 * @param attacker
 * @param defender
 * @return A subscript to be loaded for any triggered effect.
 */
int BattleSystem_TriggerImmunityAbility(BattleContext *battleCtx, int attacker, int defender);

/**
 * @brief Trigger an end-of-turn ability for the battler.
 *
 * If an end-of-turn ability is triggered, then the respective subscript will
 * be loaded into the script buffer, and the battle control command will be
 * updated to run that script.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @return TRUE if a subscript has been loaded for a triggered effect, FALSE
 * otherwise.
 */
BOOL BattleSystem_TriggerTurnEndAbility(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Perform a division, setting any zero-result to 1 or -1, matching the
 * sign of the dividend.
 *
 * @param dividend  The division's dividend. If positive, quotients of 0 will
 *                  be set to 1; if negative, quotients of 0 will be set to -1.
 * @param divisor   The dividend's divisor.
 * @return The result of the division, not permitted to be lesser in magnitude
 * than 1.
 */
int BattleSystem_Divide(int dividend, int divisor);

/**
 * @brief Trigger effects which process on-switch-in, e.g. weather abilities,
 * Intimidate, status-restoring berries, and Amulet Coin.
 *
 * @param battleSys
 * @param battleCtx
 * @return A subscript which should be loaded as a triggered effect, if any.
 */
int BattleSystem_TriggerEffectOnSwitch(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Pick a random opponent for the given attacker.
 *
 * In a single-battle, this will always return the lone opponent.
 *
 * In a double-battle, if one of the two opponents has fainted, then the other
 * opponent will always be chosen.
 *
 * @param battleSys
 * @param battleCtx
 * @param attacker
 * @return A random opponent of the attacker's.
 */
int BattleSystem_RandomOpponent(BattleSystem *battleSys, BattleContext *battleCtx, int attacker);

/**
 * @brief Trigger the defender's ability after a move deals damage to it.
 *
 * @param battleSys
 * @param battleCtx
 * @param[out] subscript    Return-param for the subscript to be loaded for any
 *                          triggered effect.
 * @return TRUE if the returned subscript param should be loaded for a
 * triggered effect.
 */
BOOL BattleSystem_TriggerAbilityOnHit(BattleSystem *battleSys, BattleContext *battleCtx, int *subscript);

/**
 * @brief Triggers a battler's ability which prevents an illegal status
 * condition on the given battler, e.g. a paralyzed Pokemon with Limber.
 *
 * This also contains the check responsible for setting the canUnburden flag.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param skipLoad  If TRUE, the routine will skip loading the subscript
 *                  responsible for curing an illegal status condition.
 * @return TRUE if a subscript for an ability effect was loaded, FALSE
 * otherwise.
 */
BOOL BattleSystem_RecoverStatusByAbility(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int skipLoad);

/**
 * @brief Check if an ability forbids a value in the given status mask.
 *
 * @param battleSys
 * @param ability   The ability to check
 * @param status    A mask of status values
 * @return TRUE if the given ability forbids some status in the given mask;
 * FALSE if not
 */
BOOL Ability_ForbidsStatus(BattleContext *battleSys, int ability, int status);

/**
 * @brief Synchronize a defender's newly-applied status with the Pokemon who
 * applied it.
 *
 * @param battleSys
 * @param battleCtx
 * @param controllerCommand The command to return to after sharing the status
 * @return TRUE if a subscript has been loaded for the status-sharing effect,
 * FALSE if not.
 */
BOOL BattleSystem_SynchronizeStatus(BattleSystem *battleSys, BattleContext *battleCtx, int controllerCommand);

/**
 * @brief Check if a held item should trigger due to status, an HP threshold, or
 * a stat reduction, then load any such triggered effect's corresponding subscript.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @return TRUE if a subscript has been loaded for a triggered effect, FALSE
 * otherwise.
 */
BOOL BattleSystem_TriggerHeldItem(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Check if a Leftovers-type item should trigger at the end of the turn.
 *
 * This also contains the split-effect for Black Sludge.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @return TRUE if an effect has been loaded for a subscript to be run, FALSE
 * otherwise.
 */
BOOL BattleSystem_TriggerLeftovers(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Check if a held item should trigger due to status, an HP threshold, or
 * a stat reduction.
 *
 * Unlike its counterpart TriggerHeldItem, this routine will return the triggered
 * effect subscript to the caller rather than immediately loading it for
 * execution.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @param[out] subscript    Return param for the subscript to load for a
 *                          triggered effect.
 * @return TRUE if a subscript has been returned for a triggered effect, FALSE
 * otherwise.
 */
BOOL BattleSystem_TriggerHeldItemOnStatus(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int *subscript);

/**
 * @brief Check if a detrimental held item should trigger at the end of the turn.
 *
 * This accounts for the effects of Toxic Orb, Flame Orb, and Sticky Barb.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @return TRUE if an effect has been loaded for a subscript to be run, FALSE
 * otherwise.
 */
BOOL BattleSystem_TriggerDetrimentalHeldItem(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Get the battler's held item.
 *
 * @param battleCtx
 * @param battler
 * @return Integer ID of the battler's held item
 */
u16 Battler_HeldItem(BattleContext *battleCtx, int battler);

/**
 * @brief Check if a battler moved this turn.
 *
 * @param battleCtx
 * @param battler
 * @return TRUE if the battler's turn is over, FALSE if they have yet to move.
 */
BOOL Battler_MovedThisTurn(BattleContext *battleCtx, int battler);

/**
 * @brief Trigger a held item's effect when its holder takes damage.
 *
 * @param battleSys
 * @param battleCtx
 * @param[out] subscript    Return param for the subscript to load for a
 *                          triggered effect.
 * @return TRUE if a subscript should be loaded for a triggered effect,
 * FALSE otherwise.
 */
BOOL BattleSystem_TriggerHeldItemOnHit(BattleSystem *battleSys, BattleContext *battleCtx, int *subscript);

/**
 * @brief Get the effect of the battler's held item.
 *
 * @param battleCtx
 * @param battler
 * @return Integer ID of the effect of the battler's held item
 */
s32 Battler_HeldItemEffect(BattleContext *battleCtx, int battler);

enum HeldItemPowerOp {
    ITEM_POWER_CHECK_ALL = 0, //< Check all possible effects which would suppress a battler's held item.
    ITEM_POWER_CHECK_NONE, //< Perform no suppression checks; always return the item's power.
    ITEM_POWER_CHECK_EMBARGO, //< Check if Embargo is active; if so, return 0 power.
};

/**
 * @brief Get the power of the battler's held item.
 *
 * This routine optionally can perform a series of checks for effects which
 * would suppress the held item.
 *
 * @param battleCtx
 * @param battler
 * @param opcode    Opcode controlling the behavior of this subroutine.
 * @return The power of the battler's held item.
 */
s32 Battler_HeldItemPower(BattleContext *battleCtx, int battler, enum HeldItemPowerOp opcode);

/**
 * @brief Get the Natural Gift base power for a battler's held item.
 *
 * @param battleCtx
 * @param battler
 * @return Base power for Natural Gift.
 */
s32 Battler_NaturalGiftPower(BattleContext *battleCtx, int battler);

/**
 * @brief Get the Natural Gift type for a battler's held item.
 *
 * @param battleCtx
 * @param battler
 * @return Type for Natural Gift.
 */
s32 Battler_NaturalGiftType(BattleContext *battleCtx, int battler);

/**
 * @brief Get the Pluck effect of the battler's held item.
 *
 * @param battleCtx
 * @param battler
 * @return Pluck effect of the battler's held item.
 */
s32 Battler_ItemPluckEffect(BattleContext *battleCtx, int battler);

/**
 * @brief Get the Fling effect of the battler's held item.
 *
 * @param battleCtx
 * @param battler
 * @return Fling effect of the battler's held item.
 */
s32 Battler_ItemFlingEffect(BattleContext *battleCtx, int battler);

/**
 * @brief Get the Fling power of the battler's held item.
 *
 * @param battleCtx
 * @param battler
 * @return Fling power of the battler's held item.
 */
s32 Battler_ItemFlingPower(BattleContext *battleCtx, int battler);

/**
 * @brief Check if a battler is trapped and cannot switch.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler
 * @return TRUE if the battler is trapped, FALSE if not.
 */
BOOL Battler_IsTrapped(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Try to Pluck the given battler's berry.
 *
 * This routine will determine what subsequence should be run as the stolen
 * effect (if any) and store it in battleCtx->scriptTemp. It will also update
 * the attacker's self-turn status flags to denote that the attacker has
 * Plucked a berry.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler whose berry is to be Plucked.
 * @return TRUE if a follow-up subsequence should be run to apply the berry's
 * Pluck effect; FALSE if no such follow-up is needed.
 */
BOOL BattleSystem_PluckBerry(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Try to Fling the attacker's item at the given battler.
 *
 * This routine will determine what subsequence should be run as the flung
 * effect (if any) and store it in battleCtx->flingScript. It will also
 * determine the base power of Fling, as specified in the item data, and
 * store it in battleCtx->movePower.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The target of the flung item.
 * @return TRUE if a follow-up subsequence should be run to apply the item's
 * Fling effect; FALSE if no such follow-up is needed.
 */
BOOL BattleSystem_FlingItem(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

/**
 * @brief Update the count for the Metronome held item.
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleSystem_UpdateMetronomeCount(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Verify the current count for the Metronome held item.
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleSystem_VerifyMetronomeCount(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Determine what modulating effect to apply to a battler's cry
 * whenever they are sent into battle.
 *
 * @param battleCtx
 * @param battler
 * @param battlerType
 * @param encounter     TRUE if this is a start-of-battle cry.
 * @return The type of modulating effect applied to the battler's cry.
 */
enum PokemonCryMod Battler_CryModulation(BattleContext *battleCtx, int battler, int battlerType, BOOL encounter);

/**
 * @brief Check if a battler can choose their action for the turn.
 *
 * @param battleSys
 * @param battler
 * @return TRUE if the battler can choose their action for the turn, FALSE
 * if not.
 */
BOOL Battler_CanPickCommand(BattleContext *battleSys, int battler);

/**
 * @brief Set the catch-data for a newly-caught Pokemon.
 *
 * This will set the met-location and Poke Ball for the newly-caught Pokemon.
 *
 * @param battleSys
 * @param battleCtx
 * @param mon
 */
void BattleSystem_SetPokemonCatchData(BattleSystem *battleSys, BattleContext *battleCtx, Pokemon *mon);

/**
 * @brief Get the top byte of the IO buffer for the given battler.
 *
 * @param battleCtx
 * @param battler
 * @return Top byte of the IO buffer for the given battler.
 */
u8 BattleContext_IOBufferVal(BattleContext *battleCtx, int battler);

/**
 * @brief Check if a battler's substitute was hit.
 *
 * @param battleCtx
 * @param battler
 * @return TRUE if the battler's substitute was hit, FALSE if not.
 */
BOOL Battler_SubstituteWasHit(BattleContext *battleCtx, int battler);

/**
 * @brief Check if the player is the attacking Pokemon's OT.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the player is the attacking Pokemon's OT, FALSE
 * otherwise.
 */
BOOL BattleSystem_TrainerIsOT(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Check if the player is a given Pokemon's OT.
 *
 * @param battleSys
 * @param mon
 * @return TRUE if the player is the given Pokemon's OT, FALSE otherwise.
 */
BOOL BattleSystem_PokemonIsOT(BattleSystem *battleSys, Pokemon *mon);

/**
 * @brief Trigger a form change for the battler stored in battleCtx->msgBattlerTemp,
 * if applicable.
 *
 * @param battleSys
 * @param battleCtx
 * @param[out] subscript    Return-param for the subscript to be loaded for any
 *                          triggered effect.
 * @return TRUE if a form change has triggered and the returned subscript should
 * be loaded for execution, FALSE otherwise.
 */
BOOL BattleSystem_TriggerFormChange(BattleSystem *battleSys, BattleContext *battleCtx, int *subscript);

/**
 * @brief Initialize the party order buffer.
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleSystem_InitPartyOrder(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Switch the party order by swapping the battler in the given party slot
 * with an active slot.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler who is switching
 * @param partySlot The party slot which should be moved to an active slot
 */
void BattleSystem_SwitchSlots(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int partySlot);

/**
 * @brief Calculate the base damage for a move using the general damage formula.
 *
 * This computes the following value:
 *
 *     ( ( 2 x Level     )           ( Attack  ) )
 *     ( ( --------- + 2 ) * Power * ( ------- ) )
 *     ( (    5          )           ( Defense ) )
 *     ( --------------------------------------- ) * Burn * Screens * Targets * Weather * FlashFire + 2
 *     (                   50                    )
 *
 * @param battleSys
 * @param battleCtx
 * @param move              The move being calculated
 * @param sideConditions    State of the side conditions mask at the time of calculation
 * @param fieldConditions   State of the field conditions mask at the time of calculation
 * @param inPower           Input power for variable base-power moves
 * @param inType            Input type for variable type moves (e.g. Hidden Power)
 * @param attacker
 * @param defender
 * @param criticalMul       Critical multiplier; must always be >= 1, 1 == no crit,
 *                          2+ signifies a crit
 * @return The computed base damage for the move
 */
int BattleSystem_CalcMoveDamage(BattleSystem *battleSys,
    BattleContext *battleCtx,
    int move,
    u32 sideConditions,
    u32 fieldConditions,
    u16 inPower,
    u8 inType,
    u8 attacker,
    u8 defender,
    u8 criticalMul);

/**
 * @brief Incorporate random variance in the given damage value.
 *
 * A random factor in the range of [0.85, 1] will be used to vary the output
 * damage value, i.e., we compute the following:
 *
 *     Damage = Damage * Random([0.85, 1])
 *
 * @param battleSys
 * @param battleCtx
 * @param damage
 * @return The varied damage value.
 */
int BattleSystem_CalcDamageVariance(BattleSystem *battleSys, BattleContext *battleCtx, int damage);

/**
 * @brief Calculate the critical multiplier to be applied to a move's damage.
 *
 * This also performs all of the calculations for if a critical hit should/can
 * occur.
 *
 * @param battleSys
 * @param battleCtx
 * @param attacker
 * @param defender
 * @param criticalStage     The existing critical hit stage for the attacker
 * @param sideConditions    State of the side conditions mask at the time of calculation
 * @return 1 if no critical occurs, 2 if a critical occurs, 3 if a critical
 * occurs and the attacker also has the ability Sniper
 */
int BattleSystem_CalcCriticalMulti(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int criticalStage, u32 sideConditions);

/**
 * @brief Check if a move can be copied by Mimic.
 *
 * @param move
 * @return TRUE if the move can be copied by Mimic, FALSE if not.
 */
BOOL Move_CanBeMimicked(u16 move);

/**
 * @brief Check if a move can be invoked by Metronome.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler using Metronome.
 * @param move
 * @return TRUE if the move can be invoked by Metronome, FALSE if not.
 */
BOOL Move_CanBeMetronomed(BattleSystem *battleSys, BattleContext *battleCtx, int battler, u16 move);

/**
 * @brief Check if a move can be Encored.
 *
 * @param battleCtx
 * @param move
 * @return TRUE if the move can be Encored, FALSE if not.
 */
BOOL Move_CanBeEncored(BattleContext *battleCtx, u16 move);

/**
 * @brief Check if a move can be copied by Me First.
 *
 * @param battleCtx
 * @param move
 * @return TRUE if the move can be copied by Me First, FALSE if not.
 */
BOOL Move_MeFirstCanCopy(BattleContext *battleCtx, u16 move);

/**
 * @brief Get a data element out of the given item's data structure.
 *
 * This consults the item table loaded at battle start-time.
 *
 * @param battleCtx
 * @param item      ID of the item to be loaded
 * @param paramID   ID of the item param to be retrieved
 * @return s32-representation of the data pulled from the item table
 */
s32 BattleSystem_GetItemData(BattleContext *battleCtx, u16 item, enum ItemDataParam paramID);

/**
 * @brief Determine the first battler which matches the input side value.
 *
 * @param battleSys
 * @param battleCtx
 * @param side
 * @return The first battler which matches the input side value.
 */
int BattleSystem_SideToBattler(BattleSystem *battleSys, BattleContext *battleCtx, int side);

/**
 * @brief Sort the action order for battlers based on their speed and actions.
 *
 * @param battleSys
 * @param battleCtx
 */
void BattleSystem_SortMonActionOrder(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Determine if a status effect should be shown for the given battler.
 *
 * This handles the determination of if a given status effect animation should
 * be played if the battler is behind a substitute or is in an invulnerable
 * state.
 *
 * @param battleCtx
 * @param battler   The battler for whom the status effect should be shown.
 * @param status    The status effect attempting to be shown.
 * @return TRUE if the status effect should be shown, FALSE otherwise.
 */
BOOL BattleSystem_ShouldShowStatusEffect(BattleContext *battleCtx, int battler, int status);

/**
 * @brief Trigger a held item's effect after a pivoting move has been used.
 *
 * This is meant to support triggering effects such as Shell Bell, Life Orb,
 * and Sticky Barb transferral before the user of a pivoting move switches out.
 *
 * @param battleSys
 * @param battleCtx
 * @param[out] subscript    Return param for the subscript to load for a
 *                          triggered effect.
 * @return TRUE if a subscript should be loaded for a triggered effect,
 * FALSE otherwise.
 */
BOOL BattleSystem_TriggerHeldItemOnPivotMove(BattleSystem *battleSys, BattleContext *battleCtx, int *subscript);

/**
 * @brief Decrement additional PP from the attacker's selected move if its
 * target has the Pressure ability.
 *
 * @param battleCtx
 * @param attacker
 * @param defender
 */
void BattleSystem_DecPPForPressure(BattleContext *battleCtx, int attacker, int defender);

/**
 * @brief Check if the recording for a battle has finished playing.
 *
 * If the recording has finished, then the controller will be set to a
 * SCREEN_WIPE command.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the recording has stopped, FALSE otherwise.
 */
BOOL BattleSystem_IsRecordingStopped(BattleSystem *battleSys, BattleContext *battleCtx);

/**
 * @brief Get an accessible field from the BattleContext struct.
 *
 * See: enum BattleContextParam
 *
 * @param battleSys
 * @param battleCtx
 * @param paramID   ID of the field to retrieve
 * @param battler   Battler for retrieving the correct field, if applicable
 * @return Value of the field, or 0 if unrecognized.
 */
int BattleContext_Get(BattleSystem *battleSys, BattleContext *battleCtx, enum BattleContextParam paramID, int battler);

/**
 * @brief Set the value of an accessible field in the BattleContext struct.
 *
 * See: enum BattleContextParam
 *
 * The following values may be modified:
 * - The full side conditions mask for a particular side
 * - The number of turns of Mist for a particular side
 * - The selected party slot for a battler
 * - The total number of turns that have elapsed
 * - The AI's chosen target for the turn
 * - The AI's chosen target from a particular battler for the turn
 *
 * @param battleSys
 * @param battleCtx
 * @param paramID   ID of the field to retrieve
 * @param battler   Battler for accessing the correct field, if applicable
 * @param val       Value to which the field should be set
 */
void BattleContext_Set(BattleSystem *battleSys, BattleContext *battleCtx, enum BattleContextParam paramID, int battler, int val);

/**
 * @brief Determine what Pokemon the AI will switch-in from their party after
 * one of their active battlers has been KO'd.
 *
 * @param battleSys
 * @param battler
 * @return The party slot of the Pokemon to be switched in.
 */
int BattleAI_PostKOSwitchIn(BattleSystem *battleSys, int battler);

/**
 * @brief Get the switched-to slot determined by the AI for a given battler.
 *
 * @param battleSys
 * @param battler
 * @return The AI's switched-to slot for the battler.
 */
int BattleAI_SwitchedSlot(BattleSystem *battleSys, int battler);

/**
 * @brief Compute the variable-type of a move, given its use by a given Pokemon.
 *
 * This is used by moves such as Natural Gift, Hidden Power, and Weather Ball.
 *
 * @param battleSys
 * @param battleCtx
 * @param mon       The Pokemon using the move.
 * @param move      The move being used.
 * @return The variable-type of a move, considering parameters of its user and
 * the battlefield.
 */
int Move_CalcVariableType(BattleSystem *battleSys, BattleContext *battleCtx, Pokemon *mon, int move);

#endif // POKEPLATINUM_BATTLE_BATTLE_LIB_H
