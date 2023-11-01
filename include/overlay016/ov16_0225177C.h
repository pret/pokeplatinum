#ifndef POKEPLATINUM_OV16_0225177C_H
#define POKEPLATINUM_OV16_0225177C_H

#include "pokemon.h"
#include "struct_decls/battle_system.h"
#include "battle/battle_context.h"
#include "battle/battle_mon.h"
#include "battle/battle_message.h"

enum BattleContextParam {
    BATTLECTX_SIDE_CONDITIONS_MASK = 0,
    BATTLECTX_SIDE_MIST_TURNS,
    BATTLECTX_SELECTED_PARTY_SLOT,
    BATTLECTX_TOTAL_TURNS,
    BATTLECTX_LEVEL_UP_MONS,
    BATTLECTX_SAFARI_ESCAPE_COUNT,
    BATTLECTX_TOTAL_FAINTED_FOR,
    BATTLECTX_TOTAL_DAMAGE_FOR,
    BATTLECTX_ACTION_FOR,
    BATTLECTX_AICTX_DEFENDER,
    BATTLECTX_SWITCHING_MASK,
    BATTLECTX_AICTX_SELECTED_TARGET,
    BATTLECTX_ACTION_TEMP_FOR,
    BATTLECTX_CONTROL_COMMAND,
    BATTLECTX_NEXT_CONTROL_COMMAND
};

enum BattleMonParam {
    BATTLEMON_SPECIES = 0,
    BATTLEMON_ATTACK,
    BATTLEMON_DEFENSE,
    BATTLEMON_SPEED,
    BATTLEMON_SP_ATTACK,
    BATTLEMON_SP_DEFENSE,
    BATTLEMON_MOVE_1,
    BATTLEMON_MOVE_2,
    BATTLEMON_MOVE_3,
    BATTLEMON_MOVE_4,
    BATTLEMON_HP_IV,
    BATTLEMON_ATTACK_IV,
    BATTLEMON_DEFENSE_IV,
    BATTLEMON_SPEED_IV,
    BATTLEMON_SP_ATTACK_IV,
    BATTLEMON_SP_DEFENSE_IV,
    BATTLEMON_IS_EGG,
    BATTLEMON_HAS_NICKNAME,
    BATTLEMON_HP_STAGE,
    BATTLEMON_ATTACK_STAGE,
    BATTLEMON_DEFENSE_STAGE,
    BATTLEMON_SPEED_STAGE,
    BATTLEMON_SP_ATTACK_STAGE,
    BATTLEMON_SP_DEFENSE_STAGE,
    BATTLEMON_ACCURACY_STAGE,
    BATTLEMON_EVASION_STAGE,
    BATTLEMON_ABILITY,
    BATTLEMON_TYPE_1,
    BATTLEMON_TYPE_2,
    BATTLEMON_GENDER,
    BATTLEMON_IS_SHINY,
    BATTLEMON_CUR_PP_1,
    BATTLEMON_CUR_PP_2,
    BATTLEMON_CUR_PP_3,
    BATTLEMON_CUR_PP_4,
    BATTLEMON_PP_UPS_1,
    BATTLEMON_PP_UPS_2,
    BATTLEMON_PP_UPS_3,
    BATTLEMON_PP_UPS_4,
    BATTLEMON_MAX_PP_1,
    BATTLEMON_MAX_PP_2,
    BATTLEMON_MAX_PP_3,
    BATTLEMON_MAX_PP_4,
    BATTLEMON_LEVEL,
    BATTLEMON_FRIENDSHIP,
    BATTLEMON_NICKNAME,
    BATTLEMON_NICKNAME_STRBUF,
    BATTLEMON_CUR_HP,
    BATTLEMON_MAX_HP,
    BATTLEMON_OT_NAME,
    BATTLEMON_EXP,
    BATTLEMON_PERSONALITY,
    BATTLEMON_STATUS,
    BATTLEMON_VOLATILE_STATUS,
    BATTLEMON_OT_ID,
    BATTLEMON_HELD_ITEM,
    BATTLEMON_TIMES_DAMAGED,
    BATTLEMON_TRAINER_MESSAGE_FLAGS,
    BATTLEMON_OT_GENDER,
    BATTLEMON_MOVE_EFFECTS_MASK,
    BATTLEMON_MOVE_EFFECTS_TEMP,
    BATTLEMON_DISABLED_TURNS,
    BATTLEMON_ENCORED_TURNS,
    BATTLEMON_CHARGED_TURNS,
    BATTLEMON_TAUNTED_TURNS,
    BATTLEMON_SUCCESSFUL_PROTECT_TURNS,
    BATTLEMON_PERISH_SONG_TURNS,
    BATTLEMON_ROLLOUT_COUNT,
    BATTLEMON_FURY_CUTTER_COUNT,
    BATTLEMON_STOCKPILE_COUNT,
    BATTLEMON_STOCKPILE_DEF_BOOSTS,
    BATTLEMON_STOCKPILE_SPDEF_BOOSTS,
    BATTLEMON_TRUANT,
    BATTLEMON_FLASH_FIRE,
    BATTLEMON_LOCK_ON_TARGET,
    BATTLEMON_MIMICKED_MOVE_SLOT,
    BATTLEMON_BIND_TARGET,
    BATTLEMON_MEAN_LOOK_TARGET,
    BATTLEMON_LAST_RESORT_COUNT,
    BATTLEMON_MAGNET_RISE_TURNS,
    BATTLEMON_HEAL_BLOCK_TURNS,
    BATTLEMON_EMBARGO_TURNS,
    BATTLEMON_CAN_UNBURDEN,
    BATTLEMON_METRONOME_TURNS,
    BATTLEMON_MICLE_BERRY,
    BATTLEMON_CUSTAP_BERRY,
    BATTLEMON_QUICK_CLAW,
    BATTLEMON_RECHARGE_TURN_NUMBER,
    BATTLEMON_FAKE_OUT_TURN_NUMBER,
    BATTLEMON_SLOW_START_TURN_NUMBER,
    BATTLEMON_SUBSTITUTE_HP,
    BATTLEMON_TRANSFORMED_PERSONALITY,
    BATTLEMON_DISABLED_MOVE,
    BATTLEMON_ENCORED_MOVE,
    BATTLEMON_BINDING_MOVE,
    BATTLEMON_ITEM_HP_RECOVERY,
    BATTLEMON_SLOW_START_ANNOUNCED,
    BATTLEMON_SLOW_START_FINISHED,
    BATTLEMON_FORM_NUM,
    BATTLEMON_TEMP = 100,
};

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
 * @param narc          Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
void BattleSystem_LoadScript(BattleContext *battleCtx, int narc, int file);

/**
 * @brief Load a script file from the specified NARC and invoke it as a call,
 * returning to the previous script once finished processing.
 * 
 * @param battleCtx 
 * @param narc          Which NARC to open for the script
 * @param file          Which file in the NARC to load
 */
void BattleSystem_CallScript(BattleContext *battleCtx, int narc, int file);
BOOL ov16_02251EF4(BattleContext * param0);
void ov16_02251F44(BattleContext * param0, int param1, int param2, int param3);
void ov16_02251F80(BattleContext * param0, int param1, int param2, int param3);

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
u8 BattleSystem_CompareBattlerSpeed(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
void BattleSystem_NoExpGain(BattleContext * param0, int param1);
void BattleSystem_FlagExpGain(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_CheckPrimaryEffect(BattleSystem * param0, BattleContext * param1, int * param2);
BOOL BattleSystem_TriggerSecondaryEffect(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq);

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
void BattleSystem_RedirectTarget(BattleSystem * param0, BattleContext * param1, int param2, u16 param3);
BOOL BattleMove_TriggerRedirectionAbilities(BattleSystem * param0, BattleContext * param1);
void BattleMon_CopyToParty(BattleSystem * param0, BattleContext * param1, int param2);

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
int ov16_02253F7C(BattleContext * param0, int param1);
BOOL BattleSystem_CheckTrainerMessage(BattleSystem * param0, BattleContext * param1);
void BattleContext_Init(BattleContext * param0);
void BattleContext_InitCounters(BattleSystem * param0, BattleContext * param1);

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
void BattleSystem_SetupNextTurn(BattleSystem * param0, BattleContext * param1);
int BattleSystem_CheckStruggling(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4);
BOOL BattleSystem_CanUseMove(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int moveSlot, BattleMessage *msgOut);
int Battler_SlotForMove(BattleMon * param0, u16 param1);
int BattleSystem_CheckTypeChart(BattleSystem * param0, BattleContext * param1, int param2, int param3, int param4, int param5, int param6, u32 * param7);
void ov16_022552D4(BattleContext * param0, int param1, int param2, int param3, int param4, int param5, int param6, int param7, u32 * param8);
BOOL BattleContext_MoveFailed(BattleContext * param0, int param1);

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
int BattleSystem_NicknameTag(BattleContext *battleSys, int battler);
u16 Battler_SelectedMove(BattleContext * param0, int param1);

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
BOOL BattleMove_IsMultiTurn(BattleContext * param0, int param1);

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
BOOL BattleSystem_IsGhostCurse(BattleContext * param0, u16 param1, int param2);

/**
 * @brief Determine if a battler's item can be stolen.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @param battler 
 * @return FALSE
 */
BOOL BattleSystem_CanStealItem(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
BOOL BattleSystem_NotHoldingMail(BattleContext * param0, int param1);

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
u8 Battler_Ability(BattleContext * param0, int param1);

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
BOOL BattleSystem_Trapped(BattleSystem * param0, BattleContext * param1, int param2, BattleMessage * param3);
BOOL BattleSystem_TryEscape(BattleSystem * param0, BattleContext * param1, int param2);
BOOL Battler_CheckTruant(BattleContext * param0, int param1);
BOOL BattleSystem_Imprisoned(BattleSystem * param0, BattleContext * param1, int param2, int param3);

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
void BattleSystem_SetupLoop(BattleSystem *battleSys, BattleContext *battleCtx);
void BattleSystem_SortMonsBySpeed(BattleSystem * param0, BattleContext * param1);
BOOL BattleSystem_FailsInHighGravity(BattleSystem * param0, BattleContext * param1, int param2, int param3);
BOOL BattleSystem_HealBlocked(BattleSystem * param0, BattleContext * param1, int param2, int param3);
void BattleSystem_UpdateLastResort(BattleSystem * param0, BattleContext * param1);

/**
 * @brief Count the number of moves known by a battler.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @param battler 
 * @return The number of moves known.
 */
int Battler_CountMoves(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
int BattleSystem_CheckImmunityAbilities(BattleContext * param0, int param1, int param2);
BOOL BattleSystem_TriggerTurnEndAbility(BattleSystem * param0, BattleContext * param1, int param2);

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
int BattleSystem_ShowMonChecks(BattleSystem * param0, BattleContext * param1);

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
BOOL BattleSystem_TriggerAbilityOnHit(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq);
BOOL BattleSystem_RecoverStatusByAbility(BattleSystem * param0, BattleContext * param1, int param2, int param3);
BOOL ov16_022577A4(BattleContext * param0, int param1, int param2);
BOOL BattleSystem_SynchronizeStatus(BattleSystem * battleSys, BattleContext * battleCtx, int controllerCommand);
BOOL BattleSystem_TriggerHeldItem(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_TriggerLeftovers(BattleSystem * param0, BattleContext * param1, int param2);
BOOL BattleSystem_TriggerHeldItemOnStatus(BattleSystem * param0, BattleContext * param1, int param2, int * param3);
BOOL BattleSystem_TriggerDetrimentalHeldItem(BattleSystem * param0, BattleContext * param1, int param2);

/**
 * @brief Get the battler's held item.
 * 
 * @param battleCtx 
 * @param battler 
 * @return Integer ID of the battler's held item
 */
u16 Battler_HeldItem(BattleContext *battleCtx, int battler);
BOOL Battler_MovedThisTurn(BattleContext * param0, int param1);
BOOL BattleSystem_TriggerHeldItemOnHit(BattleSystem * param0, BattleContext * param1, int * param2);
s32 Battler_HeldItemEffect(BattleContext * param0, int param1);

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
int BattleSystem_CanSwitch(BattleSystem *battleSys, BattleContext *battleCtx, int battler);

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
BOOL BattleSystem_FlingItem(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_UpdateMetronomeCount(BattleSystem * param0, BattleContext * param1);
void BattleSystem_VerifyMetronomeCount(BattleSystem * param0, BattleContext * param1);
int ov16_022599D0(BattleContext * param0, int param1, int param2, int param3);
BOOL BattleSystem_CanPickCommand(BattleContext *battleSys, int battler);
void ov16_02259A5C(BattleSystem * param0, BattleContext * param1, Pokemon * param2);
u8 BattleContext_IOBufferVal(BattleContext *battleCtx, int battler);

/**
 * @brief Check if a battler's substitute was hit.
 * 
 * @param battleCtx 
 * @param battler 
 * @return TRUE if the battler's substitute was hit, FALSE if not.
 */
BOOL Battler_SubstituteWasHit(BattleContext *battleCtx, int battler);
BOOL BattleSystem_TrainerIsOT(BattleSystem * param0, BattleContext * param1);
BOOL BattleSystem_PokemonIsOT(BattleSystem * param0, Pokemon * param1);
BOOL BattleSystem_UpdateWeatherForms(BattleSystem * param0, BattleContext * param1, int * param2);
void ov16_0225A1B0(BattleSystem * param0, BattleContext * param1);

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
int BattleSystem_SideToBattler(BattleSystem * param0, BattleContext * param1, int param2);
void BattleSystem_SortMonsInTrickRoom(BattleSystem * param0, BattleContext * param1);

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
BOOL ov16_0225B228(BattleSystem * param0, BattleContext * param1, int * param2);
void BattleSystem_DecPPForPressure(BattleContext * param0, int param1, int param2);
BOOL BattleSystem_RecordingStopped(BattleSystem * param0, BattleContext * param1);

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
int ov16_0225BA88(BattleSystem * param0, int param1);
int ov16_0225BE28(BattleSystem * param0, int param1);
int ov16_0225BE3C(BattleSystem * param0, BattleContext * param1, Pokemon * param2, int param3);

#endif // POKEPLATINUM_OV16_0225177C_H
