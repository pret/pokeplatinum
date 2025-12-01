#include "constants/battle/trainer_ai.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/items.h"
#include "constants/species.h"
#include "generated/abilities.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/battle_system.h"

#include "battle/ai_context.h"
#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_lib.h"
#include "battle/common.h"
#include "battle/ov16_0223DF00.h"
#include "battle/trainer_ai.h"
#include "pch/global_pch.h"

#include "assert.h"
#include "flags.h"
#include "party.h"
#include "pokemon.h"

#define AI_CONTEXT (battleCtx->aiContext)

static const u16 sRiskyMoves[] = {
    BATTLE_EFFECT_HALVE_DEFENSE,
    BATTLE_EFFECT_RECOVER_DAMAGE_SLEEP,
    BATTLE_EFFECT_CHARGE_TURN_HIGH_CRIT,
    BATTLE_EFFECT_CHARGE_TURN_HIGH_CRIT_FLINCH,
    BATTLE_EFFECT_RECHARGE_AFTER,
    BATTLE_EFFECT_CHARGE_TURN_DEF_UP,
    BATTLE_EFFECT_SKIP_CHARGE_TURN_IN_SUN,
    BATTLE_EFFECT_SPIT_UP,
    BATTLE_EFFECT_HIT_LAST_WHIFF_IF_HIT,
    BATTLE_EFFECT_LOWER_OWN_ATK_AND_DEF,
    BATTLE_EFFECT_DECREASE_POWER_WITH_LESS_USER_HP,
    BATTLE_EFFECT_HIT_FIRST_IF_TARGET_ATTACKING,
    BATTLE_EFFECT_RECOIL_HALF,
    0xFFFF
};

static const u16 sAltPowerCalcMoves[] = {
    BATTLE_EFFECT_RANDOM_POWER_BASED_ON_IVS,
    BATTLE_EFFECT_POWER_BASED_ON_LOW_SPEED,
    BATTLE_EFFECT_NATURAL_GIFT,
    BATTLE_EFFECT_JUDGEMENT,
    BATTLE_EFFECT_40_DAMAGE_FLAT,
    BATTLE_EFFECT_LEVEL_DAMAGE_FLAT,
    BATTLE_EFFECT_RANDOM_DAMAGE_1_TO_150_LEVEL,
    BATTLE_EFFECT_POWER_BASED_ON_FRIENDSHIP,
    BATTLE_EFFECT_POWER_BASED_ON_LOW_FRIENDSHIP,
    BATTLE_EFFECT_20_DAMAGE_FLAT,
    BATTLE_EFFECT_INCREASE_POWER_WITH_WEIGHT,
    0xFFFF
};

typedef void (*AICommandFunc)(BattleSystem *, BattleContext *);

enum AIEvalStep {
    AI_EVAL_STEP_INIT,
    AI_EVAL_STEP_EVAL,
    AI_EVAL_STEP_END,
};

static void AICmd_IfRandomLessThan(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfRandomGreaterThan(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfRandomEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfRandomNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_AddToMoveScore(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfHPPercentLessThan(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfHPPercentGreaterThan(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfHPPercentEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfHPPercentNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfNotStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfVolatileStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfNotVolatileStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfMoveEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfNotMoveEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfSideCondition(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfNotSideCondition(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfLoadedLessThan(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfLoadedGreaterThan(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfLoadedEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfLoadedNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfLoadedMask(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfLoadedNotMask(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfMoveEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfMoveNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfLoadedInTable(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfLoadedNotInTable(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfAttackerHasDamagingMoves(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfAttackerHasNoDamagingMoves(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadTurnCount(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadTypeFrom(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadMovePower(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_FlagMoveDamageScore(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadBattlerPreviousMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfTempEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfTempNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfSpeedCompareEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfSpeedCompareNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_CountAlivePartyBattlers(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadCurrentMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadCurrentMoveEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadBattlerAbility(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_CalcMaxEffectiveness(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfMoveEffectivenessEquals(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfPartyMemberStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfPartyMemberNotStatus(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadCurrentWeather(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfCurrentMoveEffectEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfCurrentMoveEffectNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfStatStageLessThan(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfStatStageGreaterThan(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfStatStageEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfStatStageNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfCurrentMoveKills(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfCurrentMoveDoesNotKill(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfMoveKnown(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfMoveNotKnown(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfMoveEffectKnown(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfMoveEffectNotKnown(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfBattlerUnderEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfCurrentMoveMatchesEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_Escape(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_Dummy3E(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_Dummy3F(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadHeldItem(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadHeldItemEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadGender(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadIsFirstTurnInBattle(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadStockpileCount(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadBattleType(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadRecycleItem(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadTypeOfLoadedMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadPowerOfLoadedMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadEffectOfLoadedMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadProtectChain(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_PushAndGoTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_GoTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_PopOrEnd(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfLevel(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfTargetIsTaunted(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfTargetIsNotTaunted(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfTargetIsPartner(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_FlagBattlerIsType(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_CheckBattlerAbility(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfActivatedFlashFire(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfHeldItemEqualTo(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfFieldConditionsMask(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadSpikesLayers(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfAnyPartyMemberIsWounded(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfAnyPartyMemberUsedPP(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadFlingPower(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadCurrentMovePP(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfCanUseLastResort(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadCurrentMoveClass(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadDefenderLastUsedMoveClass(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadBattlerSpeedRank(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadBattlerTurnCount(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfPartyMemberDealsMoreDamage(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfHasSuperEffectiveMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfBattlerDealsMoreDamage(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_SumPositiveStatStages(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_DiffStatStages(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfBattlerHasHigherStat(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfBattlerHasLowerStat(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfBattlerHasEqualStat(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_CheckIfHighestDamageWithPartner(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfBattlerFainted(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_IfBattlerNotFainted(BattleSystem *battleSys, BattleContext *battleCtx);
static void AICmd_LoadAbility(BattleSystem *battleSys, BattleContext *battleCtx);

static u8 TrainerAI_MainSingles(BattleSystem *battleSys, BattleContext *battleCtx);
static u8 TrainerAI_MainDoubles(BattleSystem *battleSys, BattleContext *battleCtx);
static void TrainerAI_EvalMoves(BattleSystem *battleSys, BattleContext *battleCtx);
static void TrainerAI_RecordLastMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void AIScript_PushCursor(BattleSystem *battleSys, BattleContext *battleCtx, int address);
static BOOL AIScript_PopCursor(BattleSystem *battleSys, BattleContext *battleCtx);
static int AIScript_Read(BattleContext *battleCtx);
static int AIScript_ReadOffset(BattleContext *battleCtx, int ofs);
static void AIScript_Iter(BattleContext *battleCtx, int i);
static u8 AIScript_Battler(BattleContext *battleCtx, u8 inBattler);
static s32 TrainerAI_CalcAllDamage(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, u16 *moves, s32 *damageVals, u16 heldItem, u8 *ivs, int ability, BOOL embargo, BOOL varyDamage);
static s32 TrainerAI_CalcDamage(BattleSystem *battleSys, BattleContext *battleCtx, u16 move, u16 heldItem, u8 *ivs, int attacker, int ability, BOOL embargo, u8 variance);
static int TrainerAI_MoveType(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int move);
static void TrainerAI_GetStats(BattleContext *battleCtx, int battler, int *buf1, int *buf2, int stat);

static BOOL AI_PerishSongKO(BattleContext *battleCtx, int battler);
static BOOL AI_CannotDamageWonderGuard(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
static BOOL AI_OnlyIneffectiveMoves(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
static BOOL AI_HasSuperEffectiveMove(BattleSystem *battleSys, BattleContext *battleCtx, int battler, BOOL alwaysSwitch);
static BOOL AI_HasAbsorbAbilityInParty(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
static BOOL AI_HasPartyMemberWithSuperEffectiveMove(BattleSystem *battleSys, BattleContext *battleCtx, int battler, u32 checkEffectiveness, u8 rand);
static BOOL AI_IsAsleepWithNaturalCure(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
static BOOL AI_IsHeavilyStatBoosted(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
static BOOL TrainerAI_ShouldSwitch(BattleSystem *battleSys, BattleContext *battleCtx, int battler);
static BOOL TrainerAI_ShouldUseItem(BattleSystem *battleSys, int battler);

static const AICommandFunc sAICommandTable[] = {
    AICmd_IfRandomLessThan,
    AICmd_IfRandomGreaterThan,
    AICmd_IfRandomEqualTo,
    AICmd_IfRandomNotEqualTo,
    AICmd_AddToMoveScore,
    AICmd_IfHPPercentLessThan,
    AICmd_IfHPPercentGreaterThan,
    AICmd_IfHPPercentEqualTo,
    AICmd_IfHPPercentNotEqualTo,
    AICmd_IfStatus,
    AICmd_IfNotStatus,
    AICmd_IfVolatileStatus,
    AICmd_IfNotVolatileStatus,
    AICmd_IfMoveEffect,
    AICmd_IfNotMoveEffect,
    AICmd_IfSideCondition,
    AICmd_IfNotSideCondition,
    AICmd_IfLoadedLessThan,
    AICmd_IfLoadedGreaterThan,
    AICmd_IfLoadedEqualTo,
    AICmd_IfLoadedNotEqualTo,
    AICmd_IfLoadedMask,
    AICmd_IfLoadedNotMask,
    AICmd_IfMoveEqualTo,
    AICmd_IfMoveNotEqualTo,
    AICmd_IfLoadedInTable,
    AICmd_IfLoadedNotInTable,
    AICmd_IfAttackerHasDamagingMoves,
    AICmd_IfAttackerHasNoDamagingMoves,
    AICmd_LoadTurnCount,
    AICmd_LoadTypeFrom,
    AICmd_LoadMovePower,
    AICmd_FlagMoveDamageScore,
    AICmd_LoadBattlerPreviousMove,
    AICmd_IfTempEqualTo,
    AICmd_IfTempNotEqualTo,
    AICmd_IfSpeedCompareEqualTo,
    AICmd_IfSpeedCompareNotEqualTo,
    AICmd_CountAlivePartyBattlers,
    AICmd_LoadCurrentMove,
    AICmd_LoadCurrentMoveEffect,
    AICmd_LoadBattlerAbility,
    AICmd_CalcMaxEffectiveness,
    AICmd_IfMoveEffectivenessEquals,
    AICmd_IfPartyMemberStatus,
    AICmd_IfPartyMemberNotStatus,
    AICmd_LoadCurrentWeather,
    AICmd_IfCurrentMoveEffectEqualTo,
    AICmd_IfCurrentMoveEffectNotEqualTo,
    AICmd_IfStatStageLessThan,
    AICmd_IfStatStageGreaterThan,
    AICmd_IfStatStageEqualTo,
    AICmd_IfStatStageNotEqualTo,
    AICmd_IfCurrentMoveKills,
    AICmd_IfCurrentMoveDoesNotKill,
    AICmd_IfMoveKnown,
    AICmd_IfMoveNotKnown,
    AICmd_IfMoveEffectKnown,
    AICmd_IfMoveEffectNotKnown,
    AICmd_IfBattlerUnderEffect,
    AICmd_IfCurrentMoveMatchesEffect,
    AICmd_Escape,
    AICmd_Dummy3E,
    AICmd_Dummy3F,
    AICmd_LoadHeldItem,
    AICmd_LoadHeldItemEffect,
    AICmd_LoadGender,
    AICmd_LoadIsFirstTurnInBattle,
    AICmd_LoadStockpileCount,
    AICmd_LoadBattleType,
    AICmd_LoadRecycleItem,
    AICmd_LoadTypeOfLoadedMove,
    AICmd_LoadPowerOfLoadedMove,
    AICmd_LoadEffectOfLoadedMove,
    AICmd_LoadProtectChain,
    AICmd_PushAndGoTo,
    AICmd_GoTo,
    AICmd_PopOrEnd,
    AICmd_IfLevel,
    AICmd_IfTargetIsTaunted,
    AICmd_IfTargetIsNotTaunted,
    AICmd_IfTargetIsPartner,
    AICmd_FlagBattlerIsType,
    AICmd_CheckBattlerAbility,
    AICmd_IfActivatedFlashFire,
    AICmd_IfHeldItemEqualTo,
    AICmd_IfFieldConditionsMask,
    AICmd_LoadSpikesLayers,
    AICmd_IfAnyPartyMemberIsWounded,
    AICmd_IfAnyPartyMemberUsedPP,
    AICmd_LoadFlingPower,
    AICmd_LoadCurrentMovePP,
    AICmd_IfCanUseLastResort,
    AICmd_LoadCurrentMoveClass,
    AICmd_LoadDefenderLastUsedMoveClass,
    AICmd_LoadBattlerSpeedRank,
    AICmd_LoadBattlerTurnCount,
    AICmd_IfPartyMemberDealsMoreDamage,
    AICmd_IfHasSuperEffectiveMove,
    AICmd_IfBattlerDealsMoreDamage,
    AICmd_SumPositiveStatStages,
    AICmd_DiffStatStages,
    AICmd_IfBattlerHasHigherStat,
    AICmd_IfBattlerHasLowerStat,
    AICmd_IfBattlerHasEqualStat,
    AICmd_CheckIfHighestDamageWithPartner,
    AICmd_IfBattlerFainted,
    AICmd_IfBattlerNotFainted,
    AICmd_LoadAbility,
};

void TrainerAI_Init(BattleSystem *battleSys, BattleContext *battleCtx, u8 battler, u8 initScore)
{
    // must declare these up here to match
    int i;
    u8 invalidMoves;

    // explicit memset
    u8 *adrs = (u8 *)&AI_CONTEXT;
    for (i = 0; i < XtOffset(AIContext *, battlerMoves); i++) {
        adrs[i] = 0;
    }

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (initScore & 1) {
            AI_CONTEXT.moveScore[i] = 100;
        } else {
            AI_CONTEXT.moveScore[i] = 0;
        }

        initScore = initScore >> 1;
    }

    // pick damage rolls for moves and score invalid moves to 0
    invalidMoves = BattleSystem_CheckInvalidMoves(battleSys, battleCtx, battler, 0, CHECK_INVALID_ALL);
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (invalidMoves & FlagIndex(i)) {
            AI_CONTEXT.moveScore[i] = 0;
        }

        AI_CONTEXT.moveDamageRolls[i] = 100 - (BattleSystem_RandNext(battleSys) % 16);
    }

    AI_CONTEXT.scriptStackSize = 0;

    // roaming Pokemon have special AI; otherwise, copy the AI behavior from the trainer data
    if (battleSys->battleType & BATTLE_TYPE_ROAMER) {
        AI_CONTEXT.thinkingMask = AI_FLAG_ROAMING_POKEMON;
    } else {
        AI_CONTEXT.thinkingMask = battleSys->trainers[battler].header.aiMask;
    }

    // force double-battle strategies, if applicable
    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        AI_CONTEXT.thinkingMask |= AI_FLAG_TAG_STRATEGY;
    }
}

u8 TrainerAI_Main(BattleSystem *battleSys, u8 battler)
{
    u8 result;
    BattleContext *battleCtx = battleSys->battleCtx;

    if ((AI_CONTEXT.stateFlags & AI_STATUS_FLAG_CONTINUE) == FALSE) {
        AI_CONTEXT.attacker = battler;
        AI_CONTEXT.defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battler);

        TrainerAI_Init(battleSys, battleCtx, AI_CONTEXT.attacker, AI_INIT_SCORE_ALL_MOVES);
    }

    if ((battleSys->battleType & BATTLE_TYPE_DOUBLES) == FALSE) {
        result = TrainerAI_MainSingles(battleSys, battleCtx);
    } else {
        result = TrainerAI_MainDoubles(battleSys, battleCtx);
    }

    return result;
}

/**
 * @brief Main action-choice routine for single battles.
 *
 * @param battleSys
 * @param battleCtx
 * @return The action that the AI picked for its turn. See enum AIActionChoice.
 */
static u8 TrainerAI_MainSingles(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    u8 maxScoreMoves[4];
    u8 maxScoreMoveSlots[4];
    u8 numMaxScoreMoves;
    u8 action = AI_ENEMY_ATTACK_1;
    u16 move;

    TrainerAI_RecordLastMove(battleSys, battleCtx);

    while (AI_CONTEXT.thinkingMask) {
        if (AI_CONTEXT.thinkingMask & AI_FLAG_BASIC) {
            if ((AI_CONTEXT.stateFlags & AI_STATUS_FLAG_CONTINUE) == FALSE) {
                AI_CONTEXT.evalStep = AI_EVAL_STEP_INIT;
            }

            TrainerAI_EvalMoves(battleSys, battleCtx);
        }

        AI_CONTEXT.thinkingMask = AI_CONTEXT.thinkingMask >> 1;
        AI_CONTEXT.thinkingBitShift++;
        AI_CONTEXT.moveSlot = 0;
    }

    if (AI_CONTEXT.stateFlags & AI_STATUS_FLAG_ESCAPE) {
        action = AI_ENEMY_ESCAPE;
    } else if (AI_CONTEXT.stateFlags & AI_STATUS_FLAG_SAFARI) {
        action = AI_ENEMY_SAFARI;
    } else {
        // Get the move with the highest score; break ties randomly
        numMaxScoreMoves = 1;
        maxScoreMoves[0] = AI_CONTEXT.moveScore[0];
        maxScoreMoveSlots[0] = AI_ENEMY_ATTACK_1;

        for (i = 1; i < LEARNED_MOVES_MAX; i++) {
            if (battleCtx->battleMons[AI_CONTEXT.attacker].moves[i]) { // Attacker has a move in this slot
                // Append to the list of max-score moves if equal score to the current max
                if (maxScoreMoves[0] == AI_CONTEXT.moveScore[i]) {
                    maxScoreMoves[numMaxScoreMoves] = AI_CONTEXT.moveScore[i];
                    maxScoreMoveSlots[numMaxScoreMoves++] = i;
                }

                // Set to be the maximum score if higher score than the current max
                if (maxScoreMoves[0] < AI_CONTEXT.moveScore[i]) {
                    numMaxScoreMoves = 1;
                    maxScoreMoves[0] = AI_CONTEXT.moveScore[i];
                    maxScoreMoveSlots[0] = i;
                }
            }
        }

        action = maxScoreMoveSlots[BattleSystem_RandNext(battleSys) % numMaxScoreMoves];
    }

    AI_CONTEXT.selectedTarget[AI_CONTEXT.attacker] = AI_CONTEXT.defender;
    return action;
}

/**
 * @brief Main action-choice routine for double battles.
 *
 * @param battleSys
 * @param battleCtx
 * @return The action that the AI picked for its turn. See enum AIActionChoice.
 */
static u8 TrainerAI_MainDoubles(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int battler, battlerCount, thinkingMask;
    s16 maxScoreForBattler[MAX_BATTLERS];
    u8 battlerTemp[MAX_BATTLERS];
    s8 actionForBattler[MAX_BATTLERS];
    s16 maxScore;
    u16 move;
    s8 moveSlot;

    for (battler = 0; battler < MAX_BATTLERS; battler++) {
        if (battler == AI_CONTEXT.attacker || battleCtx->battleMons[battler].curHP == 0) {
            actionForBattler[battler] = -1;
            maxScoreForBattler[battler] = -1;
            continue;
        }

        TrainerAI_Init(battleSys, battleCtx, AI_CONTEXT.attacker, 0xf);

        // Record the last moves of enemy battlers
        AI_CONTEXT.defender = battler;
        if ((battler & 1) != (AI_CONTEXT.attacker & 1)) {
            TrainerAI_RecordLastMove(battleSys, battleCtx);
        }

        AI_CONTEXT.thinkingBitShift = 0;
        AI_CONTEXT.moveSlot = 0;
        thinkingMask = AI_CONTEXT.thinkingMask;

        // Evaluate moves according with the current battler as the target
        while (thinkingMask) {
            if (thinkingMask & AI_FLAG_BASIC) {
                if ((AI_CONTEXT.stateFlags & AI_STATUS_FLAG_CONTINUE) == FALSE) {
                    AI_CONTEXT.evalStep = AI_EVAL_STEP_INIT;
                }

                TrainerAI_EvalMoves(battleSys, battleCtx);
            }

            thinkingMask >>= 1;
            AI_CONTEXT.thinkingBitShift++;
            AI_CONTEXT.moveSlot = 0;
        }

        if (AI_CONTEXT.stateFlags & AI_STATUS_FLAG_ESCAPE) {
            actionForBattler[battler] = AI_ENEMY_ESCAPE;
        } else if (AI_CONTEXT.stateFlags & AI_STATUS_FLAG_SAFARI) {
            actionForBattler[battler] = AI_ENEMY_SAFARI;
        } else {
            u8 tmpMaxScores[4];
            u8 tmpMaxScoreMoveSlots[4];
            int numMaxScoreMoves, i;

            // Pick a random move from among the highest-scored moves on this target
            tmpMaxScores[0] = AI_CONTEXT.moveScore[0];
            tmpMaxScoreMoveSlots[0] = 0;
            numMaxScoreMoves = 1;

            for (i = 1; i < LEARNED_MOVES_MAX; i++) {
                if (battleCtx->battleMons[AI_CONTEXT.attacker].moves[i]) {
                    // Same score as max: append to list of possible max-score moves
                    if (tmpMaxScores[0] == AI_CONTEXT.moveScore[i]) {
                        tmpMaxScores[numMaxScoreMoves] = AI_CONTEXT.moveScore[i];
                        tmpMaxScoreMoveSlots[numMaxScoreMoves] = i;
                        numMaxScoreMoves++;
                    }

                    // Higher score than max: set as new max score
                    if (tmpMaxScores[0] < AI_CONTEXT.moveScore[i]) {
                        tmpMaxScores[0] = AI_CONTEXT.moveScore[i];
                        tmpMaxScoreMoveSlots[0] = i;
                        numMaxScoreMoves = 1;
                    }
                }
            }

            actionForBattler[battler] = tmpMaxScoreMoveSlots[BattleSystem_RandNext(battleSys) % numMaxScoreMoves];
            maxScoreForBattler[battler] = tmpMaxScores[0];

            // Score moves on an ally below 100 to -1 (basically, never use them)
            if (battler == (AI_CONTEXT.attacker ^ 2)) {
                if (maxScoreForBattler[battler] < 100) {
                    maxScoreForBattler[battler] = -1;
                }
            }
        }
    }

    // Get the highest overall score among all the possible targets
    maxScore = maxScoreForBattler[0];
    battlerTemp[0] = 0;
    battlerCount = 1;
    for (battler = 1; battler < MAX_BATTLERS; battler++) {
        if (maxScore == maxScoreForBattler[battler]) {
            battlerTemp[battlerCount++] = battler;
        }

        if (maxScore < maxScoreForBattler[battler]) {
            maxScore = maxScoreForBattler[battler];
            battlerTemp[0] = battler;
            battlerCount = 1;
        }
    }

    // Pick a random target from among the maximum-scored targets
    AI_CONTEXT.selectedTarget[AI_CONTEXT.attacker] = battlerTemp[(BattleSystem_RandNext(battleSys) % battlerCount)];
    moveSlot = actionForBattler[AI_CONTEXT.selectedTarget[AI_CONTEXT.attacker]];
    move = battleCtx->battleMons[AI_CONTEXT.attacker].moves[moveSlot];

    // Override targets as needed
    if (AI_CONTEXT.moveTable[move].range == RANGE_USER_OR_ALLY
        && Battler_Side(battleSys, AI_CONTEXT.selectedTarget[AI_CONTEXT.attacker]) == 0) {
        AI_CONTEXT.selectedTarget[AI_CONTEXT.attacker] = AI_CONTEXT.attacker;
    }

    if (move == MOVE_CURSE && Move_IsGhostCurse(battleCtx, move, AI_CONTEXT.attacker) == FALSE) {
        AI_CONTEXT.selectedTarget[AI_CONTEXT.attacker] = AI_CONTEXT.attacker;
    }

    return moveSlot;
}

/**
 * @brief Evaluation loop for scoring each move available to the AI.
 *
 * This does NOT score the potential choices of using an item or switching
 * a Pokemon for turn.
 *
 * @param battleSys
 * @param battleCtx
 */
static void TrainerAI_EvalMoves(BattleSystem *battleSys, BattleContext *battleCtx)
{
    while (AI_CONTEXT.evalStep != AI_EVAL_STEP_END) {
        switch (AI_CONTEXT.evalStep) {
        case AI_EVAL_STEP_INIT:
            battleCtx->aiScriptCursor = battleCtx->aiScriptTemp[AI_CONTEXT.thinkingBitShift];

            if (battleCtx->battleMons[AI_CONTEXT.attacker].ppCur[AI_CONTEXT.moveSlot] == 0) {
                AI_CONTEXT.move = MOVE_NONE;
            } else {
                AI_CONTEXT.move = battleCtx->battleMons[AI_CONTEXT.attacker].moves[AI_CONTEXT.moveSlot];
            }

            AI_CONTEXT.evalStep++;
            break;

        case AI_EVAL_STEP_EVAL:
            if (AI_CONTEXT.move != MOVE_NONE) {
                sAICommandTable[battleCtx->aiScriptTemp[battleCtx->aiScriptCursor]](battleSys, battleCtx);
            } else {
                AI_CONTEXT.moveScore[AI_CONTEXT.moveSlot] = 0;
                AI_CONTEXT.stateFlags |= AI_STATUS_FLAG_DONE;
            }

            if (AI_CONTEXT.stateFlags & AI_STATUS_FLAG_DONE) {
                // If we haven't gone through all the moves, loop back to INIT state and evaluate the next move
                AI_CONTEXT.moveSlot++;
                if (AI_CONTEXT.moveSlot < LEARNED_MOVES_MAX
                    && (AI_CONTEXT.stateFlags & AI_STATUS_FLAG_BREAK) == FALSE) {
                    AI_CONTEXT.evalStep = AI_EVAL_STEP_INIT;
                } else {
                    AI_CONTEXT.evalStep++;
                }

                AI_CONTEXT.stateFlags &= AI_STATUS_FLAG_DONE_OFF;
            }

            break;

        case AI_EVAL_STEP_END:
            break;
        }
    }
}

static void AICmd_IfRandomLessThan(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if ((BattleSystem_RandNext(battleSys) % 256) < val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfRandomGreaterThan(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if ((BattleSystem_RandNext(battleSys) % 256) > val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfRandomEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if ((BattleSystem_RandNext(battleSys) % 256) == val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfRandomNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if ((BattleSystem_RandNext(battleSys) % 256) != val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_AddToMoveScore(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    AI_CONTEXT.moveScore[AI_CONTEXT.moveSlot] += val;

    if (AI_CONTEXT.moveScore[AI_CONTEXT.moveSlot] < 0) {
        AI_CONTEXT.moveScore[AI_CONTEXT.moveSlot] = 0;
    }
}

static void AICmd_IfHPPercentLessThan(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int targetPercent = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    u32 hpPercent = battleCtx->battleMons[battler].curHP * 100 / battleCtx->battleMons[battler].maxHP;

    if (hpPercent < targetPercent) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfHPPercentGreaterThan(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int targetPercent = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    u32 hpPercent = battleCtx->battleMons[battler].curHP * 100 / battleCtx->battleMons[battler].maxHP;

    if (hpPercent > targetPercent) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfHPPercentEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int targetPercent = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    u32 hpPercent = battleCtx->battleMons[battler].curHP * 100 / battleCtx->battleMons[battler].maxHP;

    if (hpPercent == targetPercent) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfHPPercentNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int targetPercent = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    u32 hpPercent = battleCtx->battleMons[battler].curHP * 100 / battleCtx->battleMons[battler].maxHP;

    if (hpPercent != targetPercent) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfStatus(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u32 mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].status & mask) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfNotStatus(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u32 mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if ((battleCtx->battleMons[battler].status & mask) == FALSE) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfVolatileStatus(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u32 mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].statusVolatile & mask) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfNotVolatileStatus(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u32 mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if ((battleCtx->battleMons[battler].statusVolatile & mask) == FALSE) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfMoveEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u32 mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].moveEffectsMask & mask) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfNotMoveEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u32 mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if ((battleCtx->battleMons[battler].moveEffectsMask & mask) == FALSE) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfSideCondition(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u32 mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    u8 side = Battler_Side(battleSys, battler);

    if (battleCtx->sideConditionsMask[side] & mask) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfNotSideCondition(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u32 mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    u8 side = Battler_Side(battleSys, battler);

    if ((battleCtx->sideConditionsMask[side] & mask) == FALSE) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfLoadedLessThan(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (AI_CONTEXT.calcTemp < val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfLoadedGreaterThan(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (AI_CONTEXT.calcTemp > val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfLoadedEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (AI_CONTEXT.calcTemp == val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfLoadedNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (AI_CONTEXT.calcTemp != val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfLoadedMask(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (AI_CONTEXT.calcTemp & mask) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfLoadedNotMask(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if ((AI_CONTEXT.calcTemp & mask) == FALSE) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfMoveEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (AI_CONTEXT.move == val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfMoveNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (AI_CONTEXT.move != val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfLoadedInTable(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int ofs = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    int val;

    while ((val = AIScript_ReadOffset(battleCtx, ofs)) != 0xFFFFFFFF) {
        if (AI_CONTEXT.calcTemp == val) {
            AIScript_Iter(battleCtx, jump);
            break;
        }

        ofs++;
    }
}

static void AICmd_IfLoadedNotInTable(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int ofs = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    int val;

    while ((val = AIScript_ReadOffset(battleCtx, ofs)) != 0xFFFFFFFF) {
        if (AI_CONTEXT.calcTemp == val) {
            return;
        }

        ofs++;
    }

    AIScript_Iter(battleCtx, jump);
}

static void AICmd_IfAttackerHasDamagingMoves(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    int jump = AIScript_Read(battleCtx);

    int i;
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (battleCtx->battleMons[AI_CONTEXT.attacker].moves[i] != MOVE_NONE
            && MOVE_DATA(battleCtx->battleMons[AI_CONTEXT.attacker].moves[i]).power) {
            break;
        }
    }

    if (i < LEARNED_MOVES_MAX) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfAttackerHasNoDamagingMoves(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    int jump = AIScript_Read(battleCtx);

    int i;
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (battleCtx->battleMons[AI_CONTEXT.attacker].moves[i] != MOVE_NONE
            && MOVE_DATA(battleCtx->battleMons[AI_CONTEXT.attacker].moves[i]).power) {
            break;
        }
    }

    if (i == LEARNED_MOVES_MAX) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_LoadTurnCount(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = battleCtx->totalTurns;
}

static void AICmd_LoadTypeFrom(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int param = AIScript_Read(battleCtx);
    int partner;

    switch (param) {
    case LOAD_ATTACKER_TYPE_1:
        AI_CONTEXT.calcTemp = BattleMon_Get(battleCtx, AI_CONTEXT.attacker, BATTLEMON_TYPE_1, NULL);
        break;

    case LOAD_DEFENDER_TYPE_1:
        AI_CONTEXT.calcTemp = BattleMon_Get(battleCtx, AI_CONTEXT.defender, BATTLEMON_TYPE_1, NULL);
        break;

    case LOAD_ATTACKER_TYPE_2:
        AI_CONTEXT.calcTemp = BattleMon_Get(battleCtx, AI_CONTEXT.attacker, BATTLEMON_TYPE_2, NULL);
        break;

    case LOAD_DEFENDER_TYPE_2:
        AI_CONTEXT.calcTemp = BattleMon_Get(battleCtx, AI_CONTEXT.defender, BATTLEMON_TYPE_2, NULL);
        break;

    case LOAD_MOVE_TYPE:
        AI_CONTEXT.calcTemp = MOVE_DATA(AI_CONTEXT.move).type;
        break;

    case LOAD_ATTACKER_PARTNER_TYPE_1:
        partner = BattleSystem_Partner(battleSys, AI_CONTEXT.attacker);
        AI_CONTEXT.calcTemp = BattleMon_Get(battleCtx, partner, BATTLEMON_TYPE_1, NULL);
        break;

    case LOAD_DEFENDER_PARTNER_TYPE_1:
        partner = BattleSystem_Partner(battleSys, AI_CONTEXT.defender);
        AI_CONTEXT.calcTemp = BattleMon_Get(battleCtx, partner, BATTLEMON_TYPE_1, NULL);
        break;

    case LOAD_ATTACKER_PARTNER_TYPE_2:
        partner = BattleSystem_Partner(battleSys, AI_CONTEXT.attacker);
        AI_CONTEXT.calcTemp = BattleMon_Get(battleCtx, partner, BATTLEMON_TYPE_2, NULL);
        break;

    case LOAD_DEFENDER_PARTNER_TYPE_2:
        partner = BattleSystem_Partner(battleSys, AI_CONTEXT.defender);
        AI_CONTEXT.calcTemp = BattleMon_Get(battleCtx, partner, BATTLEMON_TYPE_1, NULL);
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void AICmd_FlagBattlerIsType(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int type = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (MON_HAS_TYPE(battler, type)) {
        AI_CONTEXT.calcTemp = TRUE;
    } else {
        AI_CONTEXT.calcTemp = FALSE;
    }
}

static void AICmd_LoadMovePower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = MOVE_DATA(AI_CONTEXT.move).power;
}

static void AICmd_FlagMoveDamageScore(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i = 0, riskyIdx, altPowerIdx;
    s32 moveDamage[LEARNED_MOVES_MAX];
    BOOL varyDamage;
    u8 ivs[STAT_MAX];

    AIScript_Iter(battleCtx, 1);

    varyDamage = AIScript_Read(battleCtx);

    for (riskyIdx = 0; sRiskyMoves[riskyIdx] != 0xFFFF; riskyIdx++) {
        if (MOVE_DATA(AI_CONTEXT.move).effect == sRiskyMoves[riskyIdx]) {
            break;
        }
    }

    for (altPowerIdx = 0; sAltPowerCalcMoves[altPowerIdx] != 0xFFFF; altPowerIdx++) {
        if (MOVE_DATA(AI_CONTEXT.move).effect == sAltPowerCalcMoves[altPowerIdx]) {
            break;
        }
    }

    if (sAltPowerCalcMoves[altPowerIdx] != 0xFFFF
        || (MOVE_DATA(AI_CONTEXT.move).power > 1 && sRiskyMoves[riskyIdx] == 0xFFFF)) {
        for (i = 0; i < STAT_MAX; i++) {
            ivs[i] = BattleMon_Get(battleCtx, AI_CONTEXT.attacker, BATTLEMON_HP_IV + i, NULL);
        }

        TrainerAI_CalcAllDamage(battleSys,
            battleCtx,
            AI_CONTEXT.attacker,
            battleCtx->battleMons[AI_CONTEXT.attacker].moves,
            moveDamage,
            battleCtx->battleMons[AI_CONTEXT.attacker].heldItem,
            ivs,
            Battler_Ability(battleCtx, AI_CONTEXT.attacker),
            battleCtx->battleMons[AI_CONTEXT.attacker].moveEffectsData.embargoTurns,
            varyDamage);

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (moveDamage[i] > moveDamage[AI_CONTEXT.moveSlot]) {
                break;
            }
        }

        if (i == LEARNED_MOVES_MAX) {
            AI_CONTEXT.calcTemp = AI_MOVE_IS_HIGHEST_DAMAGE;
        } else {
            AI_CONTEXT.calcTemp = AI_NOT_HIGHEST_DAMAGE;
        }
    } else {
        AI_CONTEXT.calcTemp = AI_NO_COMPARISON_MADE;
    }
}

static void AICmd_LoadBattlerPreviousMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = battleCtx->movePrevByBattler[battler];
}

static void AICmd_IfTempEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (val == AI_CONTEXT.calcTemp) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfTempNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (val != AI_CONTEXT.calcTemp) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfSpeedCompareEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (BattleSystem_CompareBattlerSpeed(battleSys, battleCtx, AI_CONTEXT.attacker, AI_CONTEXT.defender, TRUE) == val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfSpeedCompareNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (BattleSystem_CompareBattlerSpeed(battleSys, battleCtx, AI_CONTEXT.attacker, AI_CONTEXT.defender, TRUE) != val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_CountAlivePartyBattlers(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);

    AI_CONTEXT.calcTemp = 0;

    u8 battler = AIScript_Battler(battleCtx, inBattler);
    Party *party = BattleSystem_Party(battleSys, battler);
    u8 battlerSlot, partnerSlot;

    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        battlerSlot = battleCtx->selectedPartySlot[battler];
        partnerSlot = battleCtx->selectedPartySlot[BattleSystem_Partner(battleSys, battler)];
    } else {
        battlerSlot = partnerSlot = battleCtx->selectedPartySlot[battler];
    }

    for (int i = 0; i < BattleSystem_PartyCount(battleSys, battler); i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (i != battlerSlot
            && i != partnerSlot
            && Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
            AI_CONTEXT.calcTemp++;
        }
    }
}

static void AICmd_LoadCurrentMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = AI_CONTEXT.move;
}

static void AICmd_LoadCurrentMoveEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = MOVE_DATA(AI_CONTEXT.move).effect;
}

static void AICmd_LoadBattlerAbility(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_ABILITY_SUPPRESSED) {
        AI_CONTEXT.calcTemp = ABILITY_NONE;
    } else if (AI_CONTEXT.attacker != battler && inBattler != AI_BATTLER_ATTACKER_PARTNER) {
        // If we already know an opponent's ability, load that ability
        if (AI_CONTEXT.battlerAbilities[battler]) {
            AI_CONTEXT.calcTemp = AI_CONTEXT.battlerAbilities[battler];
        } else {
            // If the opponent has an ability that traps us, we should already know about it (because it self-announces)
            if (battleCtx->battleMons[battler].ability == ABILITY_SHADOW_TAG
                || battleCtx->battleMons[battler].ability == ABILITY_MAGNET_PULL
                || battleCtx->battleMons[battler].ability == ABILITY_ARENA_TRAP) {
                AI_CONTEXT.calcTemp = battleCtx->battleMons[battler].ability;
            } else {
                // Try to guess the opponent's ability (flip a coin)
                int ability1 = SpeciesData_GetSpeciesValue(battleCtx->battleMons[battler].species, SPECIES_DATA_ABILITY_1);
                int ability2 = SpeciesData_GetSpeciesValue(battleCtx->battleMons[battler].species, SPECIES_DATA_ABILITY_2);

                if (ability1 && ability2) {
                    if (BattleSystem_RandNext(battleSys) & 1) {
                        AI_CONTEXT.calcTemp = ability1;
                    } else {
                        AI_CONTEXT.calcTemp = ability2;
                    }
                } else if (ability1) {
                    AI_CONTEXT.calcTemp = ability1;
                } else {
                    AI_CONTEXT.calcTemp = ability2;
                }
            }
        }
    } else {
        AI_CONTEXT.calcTemp = battleCtx->battleMons[battler].ability;
    }
}

static void AICmd_CheckBattlerAbility(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int expected = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    int tmpAbility;

    if (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_ABILITY_SUPPRESSED) {
        tmpAbility = ABILITY_NONE;
    } else if (inBattler == AI_BATTLER_DEFENDER || inBattler == AI_BATTLER_DEFENDER_PARTNER) {
        // If we already know an opponent's ability, load that ability
        if (AI_CONTEXT.battlerAbilities[battler]) {
            tmpAbility = AI_CONTEXT.battlerAbilities[battler];
            AI_CONTEXT.calcTemp = AI_CONTEXT.battlerAbilities[battler];
        } else {
            // If the opponent has an ability that traps us, we should already know about it (because it self-announces)
            if (battleCtx->battleMons[battler].ability == ABILITY_SHADOW_TAG
                || battleCtx->battleMons[battler].ability == ABILITY_MAGNET_PULL
                || battleCtx->battleMons[battler].ability == ABILITY_ARENA_TRAP) {
                tmpAbility = battleCtx->battleMons[battler].ability;
            } else {
                // Try to guess the opponent's ability (flip a coin)
                int ability1 = SpeciesData_GetSpeciesValue(battleCtx->battleMons[battler].species, SPECIES_DATA_ABILITY_1);
                int ability2 = SpeciesData_GetSpeciesValue(battleCtx->battleMons[battler].species, SPECIES_DATA_ABILITY_2);

                if (ability1 && ability2) {
                    // If the opponent has two abilities, but neither are the expected one,
                    // prefer ability 1 for the final check
                    if (ability1 != expected && ability2 != expected) {
                        tmpAbility = ability1;
                        // Otherwise, pretend that we don't know about it
                    } else {
                        tmpAbility = ABILITY_NONE;
                    }
                } else if (ability1) {
                    tmpAbility = ability1;
                } else {
                    tmpAbility = ability2;
                }
            }
        }
    } else {
        tmpAbility = battleCtx->battleMons[battler].ability;
    }

    if (tmpAbility == ABILITY_NONE) {
        AI_CONTEXT.calcTemp = AI_UNKNOWN;
    } else if (tmpAbility == expected) {
        AI_CONTEXT.calcTemp = AI_HAVE;
    } else {
        AI_CONTEXT.calcTemp = AI_NOT_HAVE;
    }
}

static void AICmd_CalcMaxEffectiveness(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    AI_CONTEXT.calcTemp = TYPE_MULTI_IMMUNE;

    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        u32 damage = TYPE_MULTI_BASE_DAMAGE;
        u32 effectiveness = 0;
        u16 move = battleCtx->battleMons[AI_CONTEXT.attacker].moves[i];
        int moveType = TrainerAI_MoveType(battleSys, battleCtx, AI_CONTEXT.attacker, move);

        if (move) {
            damage = BattleSystem_ApplyTypeChart(battleSys,
                battleCtx,
                move,
                moveType,
                AI_CONTEXT.attacker,
                AI_CONTEXT.defender,
                damage,
                &effectiveness);

            if (damage == TYPE_MULTI_STAB_DAMAGE * 2) {
                damage = TYPE_MULTI_DOUBLE_DAMAGE;
            } else if (damage == TYPE_MULTI_STAB_DAMAGE * 4) {
                damage = TYPE_MULTI_QUADRUPLE_DAMAGE;
            } else if (damage == TYPE_MULTI_STAB_DAMAGE / 2) {
                damage = TYPE_MULTI_HALF_DAMAGE;
            } else if (damage == TYPE_MULTI_STAB_DAMAGE / 4) {
                damage = TYPE_MULTI_QUARTER_DAMAGE;
            }

            if (effectiveness & MOVE_STATUS_IMMUNE) {
                damage = TYPE_MULTI_IMMUNE;
            }

            if (AI_CONTEXT.calcTemp < damage) {
                AI_CONTEXT.calcTemp = damage;
            }
        }
    }
}

static void AICmd_IfMoveEffectivenessEquals(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int expected = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u32 damage = TYPE_MULTI_BASE_DAMAGE;
    u32 effectiveness = 0;

    damage = BattleSystem_ApplyTypeChart(battleSys,
        battleCtx,
        AI_CONTEXT.move,
        TrainerAI_MoveType(battleSys, battleCtx, AI_CONTEXT.attacker, AI_CONTEXT.move),
        AI_CONTEXT.attacker,
        AI_CONTEXT.defender,
        damage,
        &effectiveness);

    if (damage == TYPE_MULTI_STAB_DAMAGE * 2) {
        damage = TYPE_MULTI_DOUBLE_DAMAGE;
    } else if (damage == TYPE_MULTI_STAB_DAMAGE * 4) {
        damage = TYPE_MULTI_QUADRUPLE_DAMAGE;
    } else if (damage == TYPE_MULTI_STAB_DAMAGE / 2) {
        damage = TYPE_MULTI_HALF_DAMAGE;
    } else if (damage == TYPE_MULTI_STAB_DAMAGE / 4) {
        damage = TYPE_MULTI_QUARTER_DAMAGE;
    }

    if (effectiveness & MOVE_STATUS_IMMUNE) {
        damage = TYPE_MULTI_IMMUNE;
    }

    if (damage == expected) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfPartyMemberStatus(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    Party *party; // this must be declared first to match
    int inBattler = AIScript_Read(battleCtx);
    u32 statusMask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    u8 slot1, slot2;
    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        slot1 = battleCtx->selectedPartySlot[battler];
        slot2 = battleCtx->selectedPartySlot[BattleSystem_Partner(battleSys, battler)];
    } else {
        slot1 = slot2 = battleCtx->selectedPartySlot[battler];
    }

    party = BattleSystem_Party(battleSys, battler);
    for (int i = 0; i < BattleSystem_PartyCount(battleSys, battler); i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (i != slot1 && i != slot2
            && Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
            && (Pokemon_GetValue(mon, MON_DATA_STATUS, NULL) & statusMask)) {
            AIScript_Iter(battleCtx, jump);
            return;
        }
    }
}

static void AICmd_IfPartyMemberNotStatus(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    Party *party; // this must be declared first to match
    int inBattler = AIScript_Read(battleCtx);
    u32 statusMask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    u8 slot1, slot2;
    if (battleSys->battleType & BATTLE_TYPE_DOUBLES) {
        slot1 = battleCtx->selectedPartySlot[battler];
        slot2 = battleCtx->selectedPartySlot[BattleSystem_Partner(battleSys, battler)];
    } else {
        slot1 = slot2 = battleCtx->selectedPartySlot[battler];
    }

    party = BattleSystem_Party(battleSys, battler);
    for (int i = 0; i < BattleSystem_PartyCount(battleSys, battler); i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(party, i);

        if (i != slot1 && i != slot2
            && Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
            && (Pokemon_GetValue(mon, MON_DATA_STATUS, NULL) & statusMask) == FALSE) {
            AIScript_Iter(battleCtx, jump);
            return;
        }
    }
}

static void AICmd_LoadCurrentWeather(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    AI_CONTEXT.calcTemp = AI_WEATHER_CLEAR;

    if (WEATHER_IS_RAIN) {
        AI_CONTEXT.calcTemp = AI_WEATHER_RAINING;
    }

    if (WEATHER_IS_SAND) {
        AI_CONTEXT.calcTemp = AI_WEATHER_SANDSTORM;
    }

    if (WEATHER_IS_SUN) {
        AI_CONTEXT.calcTemp = AI_WEATHER_SUNNY;
    }

    if (WEATHER_IS_HAIL) {
        AI_CONTEXT.calcTemp = AI_WEATHER_HAILING;
    }

    if (WEATHER_IS_FOG) {
        AI_CONTEXT.calcTemp = AI_WEATHER_DEEP_FOG;
    }
}

static void AICmd_IfCurrentMoveEffectEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int expected = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (MOVE_DATA(AI_CONTEXT.move).effect == expected) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfCurrentMoveEffectNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int expected = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (MOVE_DATA(AI_CONTEXT.move).effect != expected) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfStatStageLessThan(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int stat = AIScript_Read(battleCtx);
    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].statBoosts[stat] < val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfStatStageGreaterThan(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int stat = AIScript_Read(battleCtx);
    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].statBoosts[stat] > val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfStatStageEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int stat = AIScript_Read(battleCtx);
    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].statBoosts[stat] == val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfStatStageNotEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int stat = AIScript_Read(battleCtx);
    int val = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].statBoosts[stat] != val) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfCurrentMoveKills(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    BOOL useDamageRoll = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    int roll;
    if (useDamageRoll == TRUE) {
        roll = AI_CONTEXT.moveDamageRolls[AI_CONTEXT.moveSlot];
    } else {
        roll = 100;
    }

    int riskyIdx;
    for (riskyIdx = 0; sRiskyMoves[riskyIdx] != 0xFFFF; riskyIdx++) {
        if (MOVE_DATA(AI_CONTEXT.move).effect == sRiskyMoves[riskyIdx]) {
            break;
        }
    }

    int altPowerIdx;
    for (altPowerIdx = 0; sAltPowerCalcMoves[altPowerIdx] != 0xFFFF; altPowerIdx++) {
        if (MOVE_DATA(AI_CONTEXT.move).effect == sAltPowerCalcMoves[altPowerIdx]) {
            break;
        }
    }

    if (sAltPowerCalcMoves[altPowerIdx] != 0xFFFF
        || (MOVE_DATA(AI_CONTEXT.move).power > 1 && sRiskyMoves[riskyIdx] == 0xFFFF)) {
        u8 ivs[STAT_MAX];
        for (int stat = STAT_HP; stat < STAT_MAX; stat++) {
            ivs[stat] = BattleMon_Get(battleCtx, AI_CONTEXT.attacker, BATTLEMON_HP_IV + stat, NULL);
        }

        u32 damage = TrainerAI_CalcDamage(battleSys,
            battleCtx,
            AI_CONTEXT.move,
            battleCtx->battleMons[AI_CONTEXT.attacker].heldItem,
            ivs,
            AI_CONTEXT.attacker,
            Battler_Ability(battleCtx, AI_CONTEXT.attacker),
            battleCtx->battleMons[AI_CONTEXT.attacker].moveEffectsData.embargoTurns,
            roll);

        if (battleCtx->battleMons[AI_CONTEXT.defender].curHP <= damage) {
            AIScript_Iter(battleCtx, jump);
        }
    }
}

static void AICmd_IfCurrentMoveDoesNotKill(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    BOOL useDamageRoll = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    int roll;
    if (useDamageRoll == TRUE) {
        roll = AI_CONTEXT.moveDamageRolls[AI_CONTEXT.moveSlot];
    } else {
        roll = 100;
    }

    int riskyIdx;
    for (riskyIdx = 0; sRiskyMoves[riskyIdx] != 0xFFFF; riskyIdx++) {
        if (MOVE_DATA(AI_CONTEXT.move).effect == sRiskyMoves[riskyIdx]) {
            break;
        }
    }

    int altPowerIdx;
    for (altPowerIdx = 0; sAltPowerCalcMoves[altPowerIdx] != 0xFFFF; altPowerIdx++) {
        if (MOVE_DATA(AI_CONTEXT.move).effect == sAltPowerCalcMoves[altPowerIdx]) {
            break;
        }
    }

    if (sAltPowerCalcMoves[altPowerIdx] != 0xFFFF
        || (MOVE_DATA(AI_CONTEXT.move).power > 1 && sRiskyMoves[riskyIdx] == 0xFFFF)) {
        u8 ivs[STAT_MAX];
        for (int stat = STAT_HP; stat < STAT_MAX; stat++) {
            ivs[stat] = BattleMon_Get(battleCtx, AI_CONTEXT.attacker, BATTLEMON_HP_IV + stat, NULL);
        }

        u32 damage = TrainerAI_CalcDamage(battleSys,
            battleCtx,
            AI_CONTEXT.move,
            battleCtx->battleMons[AI_CONTEXT.attacker].heldItem,
            ivs,
            AI_CONTEXT.attacker,
            Battler_Ability(battleCtx, AI_CONTEXT.attacker),
            battleCtx->battleMons[AI_CONTEXT.attacker].moveEffectsData.embargoTurns,
            roll);

        if (battleCtx->battleMons[AI_CONTEXT.defender].curHP > damage) {
            AIScript_Iter(battleCtx, jump);
        }
    }
}

static void AICmd_IfMoveKnown(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int move = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    int i;

    switch (inBattler) {
    case AI_BATTLER_ATTACKER:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (battleCtx->battleMons[battler].moves[i] == move) {
                break;
            }
        }

        if (i < LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case AI_BATTLER_ATTACKER_PARTNER:
        if (battleCtx->battleMons[battler].curHP == 0) {
            break;
        }

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (battleCtx->battleMons[battler].moves[i] == move) {
                break;
            }
        }

        if (i < LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case AI_BATTLER_DEFENDER:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (AI_CONTEXT.battlerMoves[battler][i] == move) {
                break;
            }
        }

        if (i < LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    default:
        break;
    }
}

static void AICmd_IfMoveNotKnown(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int move = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    int i;

    switch (inBattler) {
    case AI_BATTLER_ATTACKER:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (battleCtx->battleMons[battler].moves[i] == move) {
                break;
            }
        }

        if (i == LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case AI_BATTLER_ATTACKER_PARTNER:
        if (battleCtx->battleMons[battler].curHP == 0) {
            break;
        }

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (battleCtx->battleMons[battler].moves[i] == move) {
                break;
            }
        }

        if (i == LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case AI_BATTLER_DEFENDER:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (AI_CONTEXT.battlerMoves[battler][i] == move) {
                break;
            }
        }

        if (i == LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    default:
        break;
    }
}

static void AICmd_IfMoveEffectKnown(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int effect = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    int i;

    switch (inBattler) {
    case AI_BATTLER_ATTACKER:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (battleCtx->battleMons[battler].moves[i]
                && MOVE_DATA(battleCtx->battleMons[battler].moves[i]).effect == effect) {
                break;
            }
        }

        if (i < LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case AI_BATTLER_DEFENDER:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (AI_CONTEXT.battlerMoves[battler][i]
                && MOVE_DATA(AI_CONTEXT.battlerMoves[battler][i]).effect == effect) {
                break;
            }
        }

        if (i < LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    default:
        break;
    }
}

static void AICmd_IfMoveEffectNotKnown(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int effect = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    int i;

    switch (inBattler) {
    case AI_BATTLER_ATTACKER:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (battleCtx->battleMons[battler].moves[i]
                && MOVE_DATA(battleCtx->battleMons[battler].moves[i]).effect == effect) {
                break;
            }
        }

        if (i == LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case AI_BATTLER_DEFENDER:
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (AI_CONTEXT.battlerMoves[battler][i]
                && MOVE_DATA(AI_CONTEXT.battlerMoves[battler][i]).effect == effect) {
                break;
            }
        }

        if (i == LEARNED_MOVES_MAX) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    default:
        break;
    }
}

static void AICmd_IfBattlerUnderEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int check = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    switch (check) {
    case CHECK_DISABLE:
        if (battleCtx->battleMons[battler].moveEffectsData.disabledTurns) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case CHECK_ENCORE:
        if (battleCtx->battleMons[battler].moveEffectsData.encoredTurns) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    default:
        break;
    }
}

static void AICmd_IfCurrentMoveMatchesEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int check = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    switch (check) {
    case CHECK_DISABLE:
        if (battleCtx->battleMons[AI_CONTEXT.attacker].moveEffectsData.disabledMove == AI_CONTEXT.move) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case CHECK_ENCORE:
        if (battleCtx->battleMons[AI_CONTEXT.attacker].moveEffectsData.encoredMove == AI_CONTEXT.move) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    default:
        break;
    }
}

static void AICmd_Escape(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.stateFlags |= (AI_STATUS_FLAG_DONE | AI_STATUS_FLAG_ESCAPE | AI_STATUS_FLAG_BREAK);
}

static void AICmd_Dummy3E(BattleSystem *battleSys, BattleContext *battleCtx)
{
    return;
}

static void AICmd_Dummy3F(BattleSystem *battleSys, BattleContext *battleCtx)
{
    return;
}

static void AICmd_LoadHeldItem(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = battleCtx->battleMons[battler].heldItem;
}

static void AICmd_LoadHeldItemEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (AI_CONTEXT.attacker != battler) {
        AI_CONTEXT.calcTemp = BattleSystem_GetItemData(battleCtx, AI_CONTEXT.battlerHeldItems[battler], ITEM_PARAM_HOLD_EFFECT);
    } else {
        AI_CONTEXT.calcTemp = BattleSystem_GetItemData(battleCtx, battleCtx->battleMons[battler].heldItem, ITEM_PARAM_HOLD_EFFECT);
    }
}

static void AICmd_IfHeldItemEqualTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int expected = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    u16 heldItem;

    if ((battler & 1) == (AI_CONTEXT.attacker & 1)) {
        heldItem = battleCtx->battleMons[battler].heldItem;
    } else {
        heldItem = AI_CONTEXT.battlerHeldItems[battler];
    }

    if (heldItem == expected) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfFieldConditionsMask(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    u32 mask = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    if (battleCtx->fieldConditionsMask & mask) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_LoadSpikesLayers(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u32 sideCondition = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    u8 side = Battler_Side(battleSys, battler);

    switch (sideCondition) {
    case SIDE_CONDITION_SPIKES:
        AI_CONTEXT.calcTemp = battleCtx->sideConditions[side].spikesLayers;
        break;

    case SIDE_CONDITION_TOXIC_SPIKES:
        AI_CONTEXT.calcTemp = battleCtx->sideConditions[side].toxicSpikesLayers;
        break;
    }
}

static void AICmd_IfAnyPartyMemberIsWounded(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    for (int i = 0; i < BattleSystem_PartyCount(battleSys, battler); i++) {
        Pokemon *mon = BattleSystem_PartyPokemon(battleSys, battler, i);

        if (i != battleCtx->selectedPartySlot[battler]
            && Pokemon_GetValue(mon, MON_DATA_HP, NULL) != Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL)) {
            AIScript_Iter(battleCtx, jump);
            break;
        }
    }
}

static void AICmd_IfAnyPartyMemberUsedPP(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    int moveSlot; // must be declared outside of the loop to match

    for (int partySlot = 0; partySlot < BattleSystem_PartyCount(battleSys, battler); partySlot++) {
        Pokemon *mon = BattleSystem_PartyPokemon(battleSys, battler, partySlot);

        if (partySlot != battleCtx->selectedPartySlot[battler]) {
            for (moveSlot = 0; moveSlot < LEARNED_MOVES_MAX; moveSlot++) {
                if (Pokemon_GetValue(mon, MON_DATA_MOVE1_PP + moveSlot, NULL) != Pokemon_GetValue(mon, MON_DATA_MOVE1_MAX_PP + moveSlot, NULL)) {
                    AIScript_Iter(battleCtx, jump);
                    break;
                }
            }

            if (moveSlot != LEARNED_MOVES_MAX) {
                break;
            }
        }
    }
}

static void AICmd_LoadFlingPower(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = Battler_ItemFlingPower(battleCtx, battler);
}

static void AICmd_LoadCurrentMovePP(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = battleCtx->battleMons[AI_CONTEXT.attacker].ppCur[AI_CONTEXT.moveSlot];
}

static void AICmd_IfCanUseLastResort(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);
    int numKnownMoves = Battler_CountMoves(battleSys, battleCtx, battler);

    if (battleCtx->battleMons[battler].moveEffectsData.lastResortCount >= (numKnownMoves - 1) && numKnownMoves > 1) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_LoadCurrentMoveClass(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = MOVE_DATA(AI_CONTEXT.move).class;
}

static void AICmd_LoadDefenderLastUsedMoveClass(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = MOVE_DATA(battleCtx->movePrevByBattler[AI_CONTEXT.defender]).class;
}

static void AICmd_LoadBattlerSpeedRank(BattleSystem *battleSys, BattleContext *battleCtx)
{
    // Must declare C89-style to match
    int i, j;
    int speedOrder[4];
    int cmp1, cmp2;
    int maxBattlers;
    int battler;
    int inBattler;

    AIScript_Iter(battleCtx, 1);

    inBattler = AIScript_Read(battleCtx);
    battler = AIScript_Battler(battleCtx, inBattler);
    maxBattlers = BattleSystem_MaxBattlers(battleSys);

    for (i = 0; i < maxBattlers; i++) {
        speedOrder[i] = i;
    }

    for (i = 0; i < maxBattlers - 1; i++) {
        for (j = i + 1; j < maxBattlers; j++) {
            cmp1 = speedOrder[i];
            cmp2 = speedOrder[j];

            if (BattleSystem_CompareBattlerSpeed(battleSys, battleCtx, cmp1, cmp2, TRUE)) {
                speedOrder[i] = cmp2;
                speedOrder[j] = cmp1;
            }
        }
    }

    for (i = 0; i < maxBattlers; i++) {
        if (speedOrder[i] == battler) {
            AI_CONTEXT.calcTemp = i;
            break;
        }
    }
}

static void AICmd_LoadBattlerTurnCount(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = battleCtx->totalTurns - battleCtx->battleMons[battler].moveEffectsData.fakeOutTurnNumber;
}

static void AICmd_IfPartyMemberDealsMoreDamage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    // Declare C89-style to match
    int i, j;
    BOOL varyDamage;
    int jump;
    int battler;
    s32 activeMonDamage;
    s32 partyMonDamage;
    s32 allDamageVals[LEARNED_MOVES_MAX];
    u16 partyMonMoves[LEARNED_MOVES_MAX];
    u8 ivs[STAT_MAX];
    Pokemon *partyMon;

    AIScript_Iter(battleCtx, 1);

    varyDamage = AIScript_Read(battleCtx);
    jump = AIScript_Read(battleCtx);
    battler = AI_CONTEXT.attacker;

    for (i = 0; i < 6; i++) {
        ivs[i] = BattleMon_Get(battleCtx, battler, BATTLEMON_HP_IV + i, NULL);
    }

    activeMonDamage = TrainerAI_CalcAllDamage(battleSys,
        battleCtx,
        AI_CONTEXT.attacker,
        battleCtx->battleMons[battler].moves,
        allDamageVals,
        battleCtx->battleMons[battler].heldItem,
        ivs,
        Battler_Ability(battleCtx, battler),
        battleCtx->battleMons[battler].moveEffectsData.embargoTurns,
        varyDamage);

    for (i = 0; i < BattleSystem_PartyCount(battleSys, battler); i++) {
        if (i != battleCtx->selectedPartySlot[battler]) {
            partyMon = BattleSystem_PartyPokemon(battleSys, battler, i);

            if (Pokemon_GetValue(partyMon, MON_DATA_HP, NULL) != 0
                && Pokemon_GetValue(partyMon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
                && Pokemon_GetValue(partyMon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
                for (j = 0; j < LEARNED_MOVES_MAX; j++) {
                    partyMonMoves[j] = Pokemon_GetValue(partyMon, MON_DATA_MOVE1 + j, NULL);
                }

                for (j = 0; j < STAT_MAX; j++) {
                    ivs[j] = Pokemon_GetValue(partyMon, MON_DATA_HP_IV + j, NULL);
                }

                partyMonDamage = TrainerAI_CalcAllDamage(battleSys,
                    battleCtx,
                    AI_CONTEXT.attacker,
                    partyMonMoves,
                    allDamageVals,
                    Pokemon_GetValue(partyMon, MON_DATA_HELD_ITEM, NULL),
                    ivs,
                    Pokemon_GetValue(partyMon, MON_DATA_ABILITY, NULL),
                    FALSE,
                    varyDamage);

                if (partyMonDamage > activeMonDamage) {
                    AIScript_Iter(battleCtx, jump);
                    break;
                }
            }
        }
    }
}

static void AICmd_IfHasSuperEffectiveMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int jump = AIScript_Read(battleCtx);

    if (AI_HasSuperEffectiveMove(battleSys, battleCtx, AI_CONTEXT.attacker, TRUE) == TRUE) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfBattlerDealsMoreDamage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int inBattler;
    BOOL varyDamage;
    int jump;
    int battler;
    int roll;
    s32 aiDamage;
    s32 battlerDamage;
    s32 damageVals[LEARNED_MOVES_MAX];
    u8 ivs[STAT_MAX];

    AIScript_Iter(battleCtx, 1);

    inBattler = AIScript_Read(battleCtx);
    varyDamage = AIScript_Read(battleCtx);
    jump = AIScript_Read(battleCtx);

    for (i = 0; i < STAT_MAX; i++) {
        ivs[i] = BattleMon_Get(battleCtx, AI_CONTEXT.attacker, BATTLEMON_HP_IV + i, NULL);
    }

    aiDamage = TrainerAI_CalcAllDamage(battleSys,
        battleCtx,
        AI_CONTEXT.attacker,
        battleCtx->battleMons[AI_CONTEXT.attacker].moves,
        damageVals,
        battleCtx->battleMons[AI_CONTEXT.attacker].heldItem,
        ivs,
        Battler_Ability(battleCtx, AI_CONTEXT.attacker),
        battleCtx->battleMons[AI_CONTEXT.attacker].moveEffectsData.embargoTurns,
        varyDamage);
    battler = AIScript_Battler(battleCtx, inBattler);

    if (varyDamage == TRUE) {
        roll = AI_CONTEXT.moveDamageRolls[AI_CONTEXT.moveSlot];
    } else {
        roll = 100;
    }

    battlerDamage = TrainerAI_CalcDamage(battleSys,
        battleCtx,
        battleCtx->movePrevByBattler[battler],
        battleCtx->battleMons[battler].heldItem,
        ivs,
        battler,
        Battler_Ability(battleCtx, battler),
        battleCtx->battleMons[battler].moveEffectsData.embargoTurns,
        roll);

    if (battlerDamage > aiDamage) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_SumPositiveStatStages(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = 0;

    for (int stat = BATTLE_STAT_HP; stat < BATTLE_STAT_MAX; stat++) {
        if (battleCtx->battleMons[battler].statBoosts[stat] > 6) {
            AI_CONTEXT.calcTemp += battleCtx->battleMons[battler].statBoosts[stat] - 6;
        }
    }
}

static void AICmd_DiffStatStages(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int stat = AIScript_Read(battleCtx);
    int battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = battleCtx->battleMons[battler].statBoosts[stat] - battleCtx->battleMons[AI_CONTEXT.attacker].statBoosts[stat];
}

static void AICmd_IfBattlerHasHigherStat(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int stat = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    int battler = AIScript_Battler(battleCtx, inBattler);

    int aiStat, battlerStat;
    TrainerAI_GetStats(battleCtx, battler, &aiStat, &battlerStat, stat);

    if (aiStat < battlerStat) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfBattlerHasLowerStat(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int stat = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    int battler = AIScript_Battler(battleCtx, inBattler);

    int aiStat, battlerStat;
    TrainerAI_GetStats(battleCtx, battler, &aiStat, &battlerStat, stat);

    if (aiStat > battlerStat) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfBattlerHasEqualStat(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int stat = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    int battler = AIScript_Battler(battleCtx, inBattler);

    int aiStat, battlerStat;
    TrainerAI_GetStats(battleCtx, battler, &aiStat, &battlerStat, stat);

    if (aiStat == battlerStat) {
        AIScript_Iter(battleCtx, jump);
    }
}

/**
 * @brief Get the values for a given stat for the AI battler and another given battler.
 *
 * @param battleCtx
 * @param battler   The other battler whose stats will be retrieved.
 * @param buf1      Buffer to hold the stat-value for the AI battler.
 * @param buf2      Buffer to hold the stat-value for the given other battler.
 * @param stat      Which stat value to load.
 */
static void TrainerAI_GetStats(BattleContext *battleCtx, int battler, int *buf1, int *buf2, int stat)
{
    switch (stat) {
    case BATTLE_STAT_HP:
        *buf1 = battleCtx->battleMons[AI_CONTEXT.attacker].curHP;
        *buf2 = battleCtx->battleMons[battler].curHP;
        break;

    case BATTLE_STAT_ATTACK:
        *buf1 = battleCtx->battleMons[AI_CONTEXT.attacker].attack;
        *buf2 = battleCtx->battleMons[battler].attack;
        break;

    case BATTLE_STAT_DEFENSE:
        *buf1 = battleCtx->battleMons[AI_CONTEXT.attacker].defense;
        *buf2 = battleCtx->battleMons[battler].defense;
        break;

    case BATTLE_STAT_SP_ATTACK:
        *buf1 = battleCtx->battleMons[AI_CONTEXT.attacker].spAttack;
        *buf2 = battleCtx->battleMons[battler].spAttack;
        break;

    case BATTLE_STAT_SP_DEFENSE:
        *buf1 = battleCtx->battleMons[AI_CONTEXT.attacker].spDefense;
        *buf2 = battleCtx->battleMons[battler].spDefense;
        break;

    case BATTLE_STAT_SPEED:
        *buf1 = battleCtx->battleMons[AI_CONTEXT.attacker].speed;
        *buf2 = battleCtx->battleMons[battler].speed;
        break;

    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void AICmd_CheckIfHighestDamageWithPartner(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i = 0, j, k;
    s32 moveDamage;
    s32 damageVals[LEARNED_MOVES_MAX];
    BOOL varyDamage;
    u8 ivs[STAT_MAX];
    int battler;

    AIScript_Iter(battleCtx, 1);
    varyDamage = AIScript_Read(battleCtx);

    for (j = 0; sRiskyMoves[j] != 0xFFFF; j++) {
        if (MOVE_DATA(AI_CONTEXT.move).effect == sRiskyMoves[j]) {
            break;
        }
    }

    for (k = 0; sAltPowerCalcMoves[k] != 0xFFFF; k++) {
        if (MOVE_DATA(AI_CONTEXT.move).effect == sAltPowerCalcMoves[k]) {
            break;
        }
    }

    if (sAltPowerCalcMoves[k] != 0xFFFF
        || (MOVE_DATA(AI_CONTEXT.move).power > 1 && sRiskyMoves[j] == 0xFFFF)) {
        battler = AI_CONTEXT.attacker;

        for (j = 0; j < MAX_BATTLERS_PER_SIDE; j++) {
            for (i = STAT_HP; i < STAT_MAX; i++) {
                ivs[i] = BattleMon_Get(battleCtx, battler, BATTLEMON_HP_IV + i, NULL);
            }

            TrainerAI_CalcAllDamage(battleSys,
                battleCtx,
                battler,
                battleCtx->battleMons[battler].moves,
                damageVals,
                battleCtx->battleMons[battler].heldItem,
                ivs,
                Battler_Ability(battleCtx, battler),
                battleCtx->battleMons[battler].moveEffectsData.embargoTurns,
                varyDamage);

            // Update to the partner for the next iteration
            battler = BattleSystem_Partner(battleSys, AI_CONTEXT.attacker);

            if (j == 0) {
                moveDamage = damageVals[AI_CONTEXT.moveSlot];
            }

            for (i = 0; i < LEARNED_MOVES_MAX; i++) {
                if (damageVals[i] > moveDamage) {
                    break;
                }
            }

            if (i == LEARNED_MOVES_MAX) {
                AI_CONTEXT.calcTemp = AI_MOVE_IS_HIGHEST_DAMAGE;
            } else {
                AI_CONTEXT.calcTemp = AI_NOT_HIGHEST_DAMAGE;
                break;
            }
        }
    } else {
        AI_CONTEXT.calcTemp = AI_NO_COMPARISON_MADE;
    }
}

static void AICmd_IfBattlerFainted(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    GF_ASSERT(inBattler != AI_BATTLER_ATTACKER);
    GF_ASSERT(inBattler != AI_BATTLER_DEFENDER);

    int battler = AIScript_Battler(battleCtx, inBattler);
    if (battleCtx->battlersSwitchingMask & FlagIndex(battler)) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfBattlerNotFainted(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    GF_ASSERT(inBattler != AI_BATTLER_ATTACKER);
    GF_ASSERT(inBattler != AI_BATTLER_DEFENDER);

    int battler = AIScript_Battler(battleCtx, inBattler);
    if ((battleCtx->battlersSwitchingMask & FlagIndex(battler)) == FALSE) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_LoadGender(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = battleCtx->battleMons[battler].gender;
}

static void AICmd_LoadIsFirstTurnInBattle(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].moveEffectsData.fakeOutTurnNumber < battleCtx->totalTurns) {
        AI_CONTEXT.calcTemp = FALSE;
    } else {
        AI_CONTEXT.calcTemp = TRUE;
    }
}

static void AICmd_LoadStockpileCount(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = battleCtx->battleMons[battler].moveEffectsData.stockpileCount;
}

static void AICmd_LoadBattleType(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = battleSys->battleType;
}

static void AICmd_LoadRecycleItem(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = battleCtx->recycleItem[battler];
}

static void AICmd_LoadTypeOfLoadedMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = MOVE_DATA(AI_CONTEXT.calcTemp).type;
}

static void AICmd_LoadPowerOfLoadedMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = MOVE_DATA(AI_CONTEXT.calcTemp).power;
}

static void AICmd_LoadEffectOfLoadedMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    AI_CONTEXT.calcTemp = MOVE_DATA(AI_CONTEXT.calcTemp).effect;
}

static void AICmd_LoadProtectChain(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->moveProtect[battler] != MOVE_PROTECT
        && battleCtx->moveProtect[battler] != MOVE_DETECT
        && battleCtx->moveProtect[battler] != MOVE_ENDURE) {
        AI_CONTEXT.calcTemp = 0;
    } else {
        AI_CONTEXT.calcTemp = battleCtx->battleMons[battler].moveEffectsData.protectSuccessTurns;
    }
}

static void AICmd_PushAndGoTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    int jump = AIScript_Read(battleCtx);
    AIScript_PushCursor(battleSys, battleCtx, jump);
}

static void AICmd_GoTo(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    int jump = AIScript_Read(battleCtx);
    AIScript_Iter(battleCtx, jump);
}

static void AICmd_PopOrEnd(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    if (AIScript_PopCursor(battleSys, battleCtx) == TRUE) {
        return;
    }

    AI_CONTEXT.stateFlags |= AI_STATUS_FLAG_DONE;
}

static void AICmd_IfLevel(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int op = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);

    switch (op) {
    case CHECK_HIGHER_THAN_TARGET:
        if (battleCtx->battleMons[AI_CONTEXT.attacker].level > battleCtx->battleMons[AI_CONTEXT.defender].level) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case CHECK_LOWER_THAN_TARGET:
        if (battleCtx->battleMons[AI_CONTEXT.attacker].level < battleCtx->battleMons[AI_CONTEXT.defender].level) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    case CHECK_EQUAL_TO_TARGET:
        if (battleCtx->battleMons[AI_CONTEXT.attacker].level == battleCtx->battleMons[AI_CONTEXT.defender].level) {
            AIScript_Iter(battleCtx, jump);
        }
        break;

    default:
        break;
    }
}

static void AICmd_IfTargetIsTaunted(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    int jump = AIScript_Read(battleCtx);

    if (battleCtx->battleMons[AI_CONTEXT.defender].moveEffectsData.tauntedTurns) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfTargetIsNotTaunted(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);
    int jump = AIScript_Read(battleCtx);

    if (battleCtx->battleMons[AI_CONTEXT.defender].moveEffectsData.tauntedTurns == 0) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfTargetIsPartner(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int jump = AIScript_Read(battleCtx);

    if ((AI_CONTEXT.attacker & 1) == (AI_CONTEXT.defender & 1)) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_IfActivatedFlashFire(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    int jump = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    if (battleCtx->battleMons[battler].moveEffectsData.flashFire) {
        AIScript_Iter(battleCtx, jump);
    }
}

static void AICmd_LoadAbility(BattleSystem *battleSys, BattleContext *battleCtx)
{
    AIScript_Iter(battleCtx, 1);

    int inBattler = AIScript_Read(battleCtx);
    u8 battler = AIScript_Battler(battleCtx, inBattler);

    AI_CONTEXT.calcTemp = Battler_Ability(battleCtx, battler);
}

/**
 * @brief Push an address for the AI script onto the cursor stack.
 *
 * @param battleSys
 * @param battleCtx
 * @param offset    Distance to jump ahead after pushing the cursor.
 */
static void AIScript_PushCursor(BattleSystem *battleSys, BattleContext *battleCtx, int offset)
{
    AI_CONTEXT.scriptStackPointer[AI_CONTEXT.scriptStackSize++] = battleCtx->aiScriptCursor;
    AIScript_Iter(battleCtx, offset);

    GF_ASSERT(AI_CONTEXT.scriptStackSize <= AI_MAX_STACK_SIZE);
}

/**
 * @brief Pop the top element of the cursor stack into the cursor.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the cursor stack had an element to be popped; FALSE
 * if it was empty.
 */
static BOOL AIScript_PopCursor(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (AI_CONTEXT.scriptStackSize) {
        AI_CONTEXT.scriptStackSize--;
        battleCtx->aiScriptCursor = AI_CONTEXT.scriptStackPointer[AI_CONTEXT.scriptStackSize];
        return TRUE;
    }

    return FALSE;
}

/**
 * @brief Record the last move used by an active battler, if it is not
 * already known.
 *
 * @param battleSys
 * @param battleCtx
 */
static void TrainerAI_RecordLastMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    for (int i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (AI_CONTEXT.battlerMoves[AI_CONTEXT.defender][i] == battleCtx->movePrevByBattler[AI_CONTEXT.defender]) {
            break;
        }

        if (AI_CONTEXT.battlerMoves[AI_CONTEXT.defender][i] == MOVE_NONE) {
            AI_CONTEXT.battlerMoves[AI_CONTEXT.defender][i] = battleCtx->movePrevByBattler[AI_CONTEXT.defender];
            break;
        }
    }
}

/**
 * @brief Read a word from the AI script at the current cursor position,
 * then increment the cursor.
 *
 * @param battleCtx
 * @return Current word for the AI script under the cursor.
 */
static int AIScript_Read(BattleContext *battleCtx)
{
    int word = battleCtx->aiScriptTemp[battleCtx->aiScriptCursor];
    battleCtx->aiScriptCursor++;

    return word;
}

/**
 * @brief Read a word from the AI script at the current cursor position
 * offset by a specified value, then increment the cursor.
 *
 * @param battleCtx
 * @return Current word for the AI script under the cursor + an offset.
 */
static int AIScript_ReadOffset(BattleContext *battleCtx, int ofs)
{
    return battleCtx->aiScriptTemp[battleCtx->aiScriptCursor + ofs];
}

/**
 * @brief Increment the cursor for the AI script by a fixed amount.
 *
 * @param battleCtx
 * @param i         Amount by which to increment the script cursor.
 */
static void AIScript_Iter(BattleContext *battleCtx, int i)
{
    battleCtx->aiScriptCursor += i;
}

/**
 * @brief Determine the true battler ID for an input battler value as
 * recognized by the AI script.
 *
 * @param battleCtx
 * @param inBattler The input battler value.
 * @return True battler ID for the input battler value.
 */
static u8 AIScript_Battler(BattleContext *battleCtx, u8 inBattler)
{
    // the order of this switch statement must be maintained to match
    switch (inBattler) {
    case AI_BATTLER_ATTACKER:
        return AI_CONTEXT.attacker;

    case AI_BATTLER_DEFENDER:
    default:
        return AI_CONTEXT.defender;

    case AI_BATTLER_ATTACKER_PARTNER:
        return AI_CONTEXT.attacker ^ 2;

    case AI_BATTLER_DEFENDER_PARTNER:
        return AI_CONTEXT.defender ^ 2;
    }
}

/**
 * @brief Calculate the damage that will be done by all of an attacker's moves.
 *
 * @param battleSys
 * @param battleCtx
 * @param attacker      The attacker's battler ID.
 * @param moves         The attacker's moveset.
 * @param damageVals    Out-param for all damage values as computed by the routine.
 * @param heldItem      The attacker's held item.
 * @param ivs           The attacker's IVs. Used for calculating Hidden Power params.
 * @param ability       The attacker's ability.
 * @param embargoTurns  Number of turns that the attacker is still under Embargo.
 * @param varyDamage    If TRUE, apply random damage variance to each calculation.
 * @return              The highest damage value among all considered moves.
 */
static s32 TrainerAI_CalcAllDamage(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, u16 *moves, s32 *damageVals, u16 heldItem, u8 *ivs, int ability, int embargoTurns, BOOL varyDamage)
{
    int i, riskyScanIdx, altPowerScanIdx;
    s32 maxDamage;
    u8 damageRoll;

    maxDamage = 0;

    // Step 1: Compute the true damage of a given move.
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        riskyScanIdx = 0;
        while (sRiskyMoves[riskyScanIdx] != 0xFFFF) {
            if (MOVE_DATA(moves[i]).effect == sRiskyMoves[riskyScanIdx]) {
                break;
            }

            riskyScanIdx++;
        }

        altPowerScanIdx = 0;
        while (sAltPowerCalcMoves[altPowerScanIdx] != 0xFFFF) {
            if (MOVE_DATA(moves[i]).effect == sAltPowerCalcMoves[altPowerScanIdx]) {
                break;
            }

            altPowerScanIdx++;
        }

        if (sAltPowerCalcMoves[altPowerScanIdx] != 0xFFFF
            || (moves[i] != MOVE_NONE && sRiskyMoves[riskyScanIdx] == 0xFFFF && MOVE_DATA(moves[i]).power > 1)) {
            if (varyDamage == TRUE) {
                damageRoll = AI_CONTEXT.moveDamageRolls[i];
            } else {
                damageRoll = 100;
            }

            damageVals[i] = TrainerAI_CalcDamage(battleSys, battleCtx, moves[i], heldItem, ivs, attacker, ability, embargoTurns, damageRoll);
        } else {
            damageVals[i] = 0;
        }
    }

    // Step 2: Determine the maximum-damage of all moves.
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (maxDamage < damageVals[i]) {
            maxDamage = damageVals[i];
        }
    }

    return maxDamage;
}

#include "data/battle/weight_to_power.h"

/**
 * @brief Damage calculation routine visible to the AI.
 *
 * @param battleSys
 * @param battleCtx
 * @param move          The move being used
 * @param heldItem      The attacker's held item.
 * @param ivs           The attacker's IVs. Used for Hidden Power calculation.
 * @param attacker      The attacker's ID.
 * @param ability       The attacker's ability.
 * @param embargoTurns  Number of turns that the attacker is still under Embargo.
 * @param variance      Variance factor applied to the damage value. This is presumed
 *                      to be a value in the range [85..100].
 * @return Calculated damage value.
 */
static s32 TrainerAI_CalcDamage(BattleSystem *battleSys, BattleContext *battleCtx, u16 move, u16 heldItem, u8 *ivs, int attacker, int ability, int embargoTurns, u8 variance)
{
    // must declare C89-style to match
    int defendingSide;
    int power;
    int type;
    int typeTmp;
    u32 effectivenessFlags;
    s32 damage;

    defendingSide = Battler_Side(battleSys, AI_CONTEXT.defender);
    damage = 0;
    power = 0;
    type = 0;
    effectivenessFlags = 0;

    switch (move) {
    case MOVE_NATURAL_GIFT:
        if (ability != ABILITY_KLUTZ && embargoTurns == 0) {
            power = BattleSystem_GetItemData(battleCtx, heldItem, ITEM_PARAM_NATURAL_GIFT_POWER);

            if (power) {
                type = BattleSystem_GetItemData(battleCtx, heldItem, ITEM_PARAM_NATURAL_GIFT_TYPE);
            } else {
                type = TYPE_NORMAL;
            }
        }
        break;

    case MOVE_JUDGMENT:
        if (ability != ABILITY_KLUTZ && embargoTurns == 0) {
            power = 0;

            switch (BattleSystem_GetItemData(battleCtx, heldItem, ITEM_PARAM_HOLD_EFFECT)) {
            case HOLD_EFFECT_ARCEUS_FIGHTING:
                type = TYPE_FIGHTING;
                break;

            case HOLD_EFFECT_ARCEUS_FLYING:
                type = TYPE_FLYING;
                break;

            case HOLD_EFFECT_ARCEUS_POISON:
                type = TYPE_POISON;
                break;

            case HOLD_EFFECT_ARCEUS_GROUND:
                type = TYPE_GROUND;
                break;

            case HOLD_EFFECT_ARCEUS_ROCK:
                type = TYPE_ROCK;
                break;

            case HOLD_EFFECT_ARCEUS_BUG:
                type = TYPE_BUG;
                break;

            case HOLD_EFFECT_ARCEUS_GHOST:
                type = TYPE_GHOST;
                break;

            case HOLD_EFFECT_ARCEUS_STEEL:
                type = TYPE_STEEL;
                break;

            case HOLD_EFFECT_ARCEUS_FIRE:
                type = TYPE_FIRE;
                break;

            case HOLD_EFFECT_ARCEUS_WATER:
                type = TYPE_WATER;
                break;

            case HOLD_EFFECT_ARCEUS_GRASS:
                type = TYPE_GRASS;
                break;

            case HOLD_EFFECT_ARCEUS_ELECTRIC:
                type = TYPE_ELECTRIC;
                break;

            case HOLD_EFFECT_ARCEUS_PSYCHIC:
                type = TYPE_PSYCHIC;
                break;

            case HOLD_EFFECT_ARCEUS_ICE:
                type = TYPE_ICE;
                break;

            case HOLD_EFFECT_ARCEUS_DRAGON:
                type = TYPE_DRAGON;
                break;

            case HOLD_EFFECT_ARCEUS_DARK:
                type = TYPE_DARK;
                break;

            default:
                type = TYPE_NORMAL;
                break;
            }
        }
        break;

    case MOVE_HIDDEN_POWER:
        power = ((ivs[STAT_HP] & 2) >> 1)
            | ((ivs[STAT_ATTACK] & 2) >> 0)
            | ((ivs[STAT_DEFENSE] & 2) << 1)
            | ((ivs[STAT_SPEED] & 2) << 2)
            | ((ivs[STAT_SPECIAL_ATTACK] & 2) << 3)
            | ((ivs[STAT_SPECIAL_DEFENSE] & 2) << 4);
        type = ((ivs[STAT_HP] & 1) >> 0)
            | ((ivs[STAT_ATTACK] & 1) << 1)
            | ((ivs[STAT_DEFENSE] & 1) << 2)
            | ((ivs[STAT_SPEED] & 1) << 3)
            | ((ivs[STAT_SPECIAL_ATTACK] & 1) << 4)
            | ((ivs[STAT_SPECIAL_DEFENSE] & 1) << 5);

        power = power * 40 / 63 + 30;
        type = (type * 15 / 63) + 1;

        if (type >= TYPE_MYSTERY) {
            type++;
        }
        break;

    case MOVE_GYRO_BALL:
        power = 1 + 25 * battleCtx->monSpeedValues[AI_CONTEXT.defender] / battleCtx->monSpeedValues[attacker];

        if (power > 150) {
            power = 150;
        }

        type = TYPE_NORMAL; // default to the base move type
        break;

    case MOVE_DRAGON_RAGE:
        damage = 40;
        break;

    case MOVE_SEISMIC_TOSS:
    case MOVE_NIGHT_SHADE:
        damage = battleCtx->battleMons[attacker].level;
        break;

    case MOVE_PSYWAVE:
        damage = battleCtx->battleMons[attacker].level * (BattleSystem_RandNext(battleSys) % 11 + 5) / 10;
        break;

    case MOVE_RETURN:
        power = battleCtx->battleMons[attacker].friendship * 10 / 25;
        type = TYPE_NORMAL;
        break;

    case MOVE_FRUSTRATION:
        power = (255 - battleCtx->battleMons[attacker].friendship) * 10 / 25;
        type = TYPE_NORMAL;
        break;

    case MOVE_MAGNITUDE:
        // Simulate a Magnitude roll
        power = BattleSystem_RandNext(battleSys) % 100;

        if (power < 5) {
            power = 10;
        } else if (power < 15) {
            power = 30;
        } else if (power < 35) {
            power = 50;
        } else if (power < 65) {
            power = 70;
        } else if (power < 85) {
            power = 90;
        } else if (power < 95) {
            power = 110;
        } else {
            power = 150;
        }

        type = TYPE_NORMAL;
        break;

    case MOVE_SONIC_BOOM:
        damage = 20;
        break;

    case MOVE_LOW_KICK:
    case MOVE_GRASS_KNOT: {
        int i;

        for (i = 0; sWeightToPower[i][0] != 0xFFFF; i++) {
            if (sWeightToPower[i][0] >= battleCtx->battleMons[AI_CONTEXT.defender].weight) {
                break;
            }
        }

        if (sWeightToPower[i][0] != 0xFFFF) {
            power = sWeightToPower[i][1];
        } else {
            power = 120;
        }

        break;
    }

    default:
        // Move has no special calculation logic; default to the basic calc
        power = 0;
        type = TYPE_NORMAL;
        break;
    }

    if (damage == 0) {
        damage = BattleSystem_CalcMoveDamage(battleSys,
            battleCtx,
            move,
            battleCtx->sideConditionsMask[defendingSide],
            battleCtx->fieldConditionsMask,
            power,
            type,
            attacker,
            AI_CONTEXT.defender,
            1);
    } else {
        battleCtx->battleStatusMask |= SYSCTL_IGNORE_TYPE_CHECKS;
    }

    damage = BattleSystem_ApplyTypeChart(battleSys,
        battleCtx,
        move,
        type,
        attacker,
        AI_CONTEXT.defender,
        damage,
        &effectivenessFlags);
    battleCtx->battleStatusMask &= ~SYSCTL_IGNORE_TYPE_CHECKS;

    if (effectivenessFlags & MOVE_STATUS_IMMUNE) {
        damage = 0;
    } else {
        damage = BattleSystem_Divide(damage * variance, 100);
    }

    return damage;
}

/**
 * @brief Compute the type of a move. Variable-type moves will have their type
 * computed according to the usual routines (i.e., Natural Gift, Judgment,
 * Hidden Power, and Weather Ball). Moves without a variable typing will be
 * returned as TYPE_NORMAL.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The battler using the move.
 * @param move      The move being used.
 * @return The type of the move.
 */
static int TrainerAI_MoveType(BattleSystem *battleSys, BattleContext *battleCtx, int battler, int move)
{
    int result;

    switch (move) {
    case MOVE_NATURAL_GIFT:
        result = Battler_NaturalGiftType(battleCtx, battler);
        break;

    case MOVE_JUDGMENT:
        switch (Battler_HeldItemEffect(battleCtx, battler)) {
        case HOLD_EFFECT_ARCEUS_FIGHTING:
            result = TYPE_FIGHTING;
            break;

        case HOLD_EFFECT_ARCEUS_FLYING:
            result = TYPE_FLYING;
            break;

        case HOLD_EFFECT_ARCEUS_POISON:
            result = TYPE_POISON;
            break;

        case HOLD_EFFECT_ARCEUS_GROUND:
            result = TYPE_GROUND;
            break;

        case HOLD_EFFECT_ARCEUS_ROCK:
            result = TYPE_ROCK;
            break;

        case HOLD_EFFECT_ARCEUS_BUG:
            result = TYPE_BUG;
            break;

        case HOLD_EFFECT_ARCEUS_GHOST:
            result = TYPE_GHOST;
            break;

        case HOLD_EFFECT_ARCEUS_STEEL:
            result = TYPE_STEEL;
            break;

        case HOLD_EFFECT_ARCEUS_FIRE:
            result = TYPE_FIRE;
            break;

        case HOLD_EFFECT_ARCEUS_WATER:
            result = TYPE_WATER;
            break;

        case HOLD_EFFECT_ARCEUS_GRASS:
            result = TYPE_GRASS;
            break;

        case HOLD_EFFECT_ARCEUS_ELECTRIC:
            result = TYPE_ELECTRIC;
            break;

        case HOLD_EFFECT_ARCEUS_PSYCHIC:
            result = TYPE_PSYCHIC;
            break;

        case HOLD_EFFECT_ARCEUS_ICE:
            result = TYPE_ICE;
            break;

        case HOLD_EFFECT_ARCEUS_DRAGON:
            result = TYPE_DRAGON;
            break;

        case HOLD_EFFECT_ARCEUS_DARK:
            result = TYPE_DARK;
            break;

        default:
            result = TYPE_NORMAL;
            break;
        }
        break;

    case MOVE_HIDDEN_POWER:
        result = ((battleCtx->battleMons[battler].hpIV & 1) >> 0)
            | ((battleCtx->battleMons[battler].attackIV & 1) << 1)
            | ((battleCtx->battleMons[battler].defenseIV & 1) << 2)
            | ((battleCtx->battleMons[battler].speedIV & 1) << 3)
            | ((battleCtx->battleMons[battler].spAttackIV & 1) << 4)
            | ((battleCtx->battleMons[battler].spDefenseIV & 1) << 5);
        result = (result * 15 / 63) + 1;

        if (result >= TYPE_MYSTERY) {
            result++;
        }
        break;

    case MOVE_WEATHER_BALL:
        if (NO_CLOUD_NINE && (battleCtx->fieldConditionsMask & FIELD_CONDITION_WEATHER)) {
            if (WEATHER_IS_RAIN) {
                result = TYPE_WATER;
            }

            if (WEATHER_IS_SAND) {
                result = TYPE_ROCK;
            }

            if (WEATHER_IS_SUN) {
                result = TYPE_FIRE;
            }

            if (WEATHER_IS_HAIL) {
                result = TYPE_ICE;
            }
        }
        break;

    default:
        result = TYPE_NORMAL;
        break;
    }

    return result;
}

/**
 * @brief Check if Perish Song is active on a battler and the battler should
 * faint at the end of the turn. If so, treat the next switch as post-KO switch
 * AI.
 *
 * This routine is bugged; it functionally does nothing. The Perish Song turn
 * count decrements at the end of the turn, so the AI never sees that it WILL
 * die to Perish Song.
 *
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return TRUE if the AI has a switch to make, FALSE otherwise.
 */
static BOOL AI_PerishSongKO(BattleContext *battleCtx, int battler)
{
    if ((battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_PERISH_SONG)
        && battleCtx->battleMons[battler].moveEffectsData.perishSongTurns == 0) {
        battleCtx->aiSwitchedPartySlot[battler] = 6;
        return TRUE;
    }

    return FALSE;
}

/**
 * @brief Check if an AI's battler cannot damage the opponent's Pokemon due to
 * Wonder Guard. If so, check for any living party member that can deal damage
 * to that Pokemon, and switch to that mon 66% of the time.
 *
 * This routine does NOT apply to double-battles.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return TRUE if the AI has a switch to make, FALSE otherwise.
 */
static BOOL AI_CannotDamageWonderGuard(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    int i, j;
    u16 move;
    int moveType;
    u32 effectiveness;
    Pokemon *mon;

    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
        return FALSE;
    }

    if (battleCtx->battleMons[BATTLER_OPP(battler)].ability == ABILITY_WONDER_GUARD) {
        // Check if we have a super-effective move against the opponent
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            move = battleCtx->battleMons[battler].moves[i];
            moveType = TrainerAI_MoveType(battleSys, battleCtx, battler, move);

            if (move) {
                effectiveness = 0;
                BattleSystem_ApplyTypeChart(battleSys, battleCtx, move, moveType, battler, BATTLER_OPP(battler), 0, &effectiveness);

                if (effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) {
                    return FALSE;
                }
            }
        }

        // If we don't, check if any of our party members have a super-effective move
        for (i = 0; i < BattleSystem_PartyCount(battleSys, battler); i++) {
            mon = BattleSystem_PartyPokemon(battleSys, battler, i);

            if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
                && i != battleCtx->selectedPartySlot[battler]) {
                for (j = 0; j < LEARNED_MOVES_MAX; j++) {
                    move = Pokemon_GetValue(mon, MON_DATA_MOVE1 + j, NULL);
                    moveType = Move_CalcVariableType(battleSys, battleCtx, mon, move);

                    if (move) {
                        effectiveness = 0;
                        BattleSystem_CalcEffectiveness(battleCtx,
                            move,
                            moveType,
                            Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL),
                            Battler_Ability(battleCtx, BATTLER_OPP(battler)),
                            Battler_HeldItemEffect(battleCtx, BATTLER_OPP(battler)),
                            BattleMon_Get(battleCtx, BATTLER_OPP(battler), BATTLEMON_TYPE_1, NULL),
                            BattleMon_Get(battleCtx, BATTLER_OPP(battler), BATTLEMON_TYPE_2, NULL),
                            &effectiveness);

                        // If this party member has a super-effective move, switch 2/3 of the time
                        if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) && BattleSystem_RandNext(battleSys) % 3 < 2) {
                            battleCtx->aiSwitchedPartySlot[battler] = i;
                            return TRUE;
                        }
                    }
                }
            }
        }
    }

    return FALSE;
}

/**
 * @brief Check if an AI's battler only has moves which do not deal damage to either
 * of the opponent's Pokemon.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return TRUE if the AI has a switch to make, FALSE otherwise.
 */
static BOOL AI_OnlyIneffectiveMoves(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    int i, j;
    u8 defender1, defender2;
    u8 aiSlot1, aiSlot2;
    u16 move;
    int type;
    u32 effectiveness;
    int start, end;
    int numMoves;
    Pokemon *mon;

    // "Player" consts here refer to the AI's perspective.
    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) {
        defender1 = BATTLER_PLAYER_1;
        defender2 = BATTLER_PLAYER_2;
    } else {
        defender1 = BATTLER_PLAYER_1;
        defender2 = BATTLER_PLAYER_1;
    }

    // Check all of this mon's attacking moves for immunities. If any of our moves can deal damage to
    // either of the opponents' battlers, do not switch.
    numMoves = 0;
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        move = battleCtx->battleMons[battler].moves[i];
        type = TrainerAI_MoveType(battleSys, battleCtx, battler, move);

        if (move && MOVE_DATA(move).power) {
            numMoves++;

            effectiveness = 0;
            if (battleCtx->battleMons[defender1].curHP) {
                BattleSystem_ApplyTypeChart(battleSys, battleCtx, move, type, battler, defender1, 0, &effectiveness);
            }

            if ((effectiveness & MOVE_STATUS_INEFFECTIVE) == FALSE) {
                return FALSE;
            }

            effectiveness = 0;
            if (battleCtx->battleMons[defender2].curHP) {
                BattleSystem_ApplyTypeChart(battleSys, battleCtx, move, type, battler, defender2, 0, &effectiveness);
            }

            if ((effectiveness & MOVE_STATUS_INEFFECTIVE) == FALSE) {
                return FALSE;
            }
        }
    }

    // If we have more than 1 attacking move, do not switch.
    if (numMoves < 2) {
        return FALSE;
    }

    aiSlot1 = battler;
    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG) || (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2)) {
        aiSlot2 = aiSlot1;
    } else {
        aiSlot2 = BattleSystem_Partner(battleSys, battler);
    }

    start = 0;
    end = BattleSystem_PartyCount(battleSys, battler);

    // For each of the AI's active party Pokemon on the bench, check if any of them have a
    // damaging move which is super-effective against either of the player's active Pokemon
    // on the battlefield. If any such Pokemon on the bench exists, switch to it 66% of
    // the time.
    for (i = start; i < end; i++) {
        mon = BattleSystem_PartyPokemon(battleSys, battler, i);

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
            && i != battleCtx->selectedPartySlot[aiSlot1]
            && i != battleCtx->selectedPartySlot[aiSlot2]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot1]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot2]) {
            for (j = 0; j < LEARNED_MOVES_MAX; j++) {
                move = Pokemon_GetValue(mon, MON_DATA_MOVE1 + j, NULL);
                type = Move_CalcVariableType(battleSys, battleCtx, mon, move);

                if (move && MOVE_DATA(move).power) {
                    effectiveness = 0;
                    if (battleCtx->battleMons[defender1].curHP) {
                        BattleSystem_CalcEffectiveness(battleCtx,
                            move,
                            type,
                            Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL),
                            Battler_Ability(battleCtx, defender1),
                            Battler_HeldItemEffect(battleCtx, defender1),
                            BattleMon_Get(battleCtx, defender1, BATTLEMON_TYPE_1, NULL),
                            BattleMon_Get(battleCtx, defender1, BATTLEMON_TYPE_2, NULL),
                            &effectiveness);
                    }

                    if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) && BattleSystem_RandNext(battleSys) % 3 < 2) {
                        battleCtx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }

                    effectiveness = 0;
                    if (battleCtx->battleMons[defender2].curHP) {
                        BattleSystem_CalcEffectiveness(battleCtx,
                            move,
                            type,
                            Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL),
                            Battler_Ability(battleCtx, defender2),
                            Battler_HeldItemEffect(battleCtx, defender2),
                            BattleMon_Get(battleCtx, defender2, BATTLEMON_TYPE_1, NULL),
                            BattleMon_Get(battleCtx, defender2, BATTLEMON_TYPE_2, NULL),
                            &effectiveness);
                    }

                    if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) && BattleSystem_RandNext(battleSys) % 3 < 2) {
                        battleCtx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }
                }
            }
        }
    }

    // For each of the AI's active party Pokemon on the bench, check if any of them have a
    // damaging move which is normally-effective against either of the player's active
    // Pokemon on the battlefield. If any such Pokemon on the bench exists, switch to it
    // 50% of the time.
    for (i = start; i < end; i++) {
        mon = BattleSystem_PartyPokemon(battleSys, battler, i);

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
            && i != battleCtx->selectedPartySlot[aiSlot1]
            && i != battleCtx->selectedPartySlot[aiSlot2]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot1]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot2]) {
            for (j = 0; j < LEARNED_MOVES_MAX; j++) {
                move = Pokemon_GetValue(mon, MON_DATA_MOVE1 + j, NULL);
                type = Move_CalcVariableType(battleSys, battleCtx, mon, move);

                if (move && MOVE_DATA(move).power) {
                    effectiveness = 0;
                    if (battleCtx->battleMons[defender1].curHP) {
                        BattleSystem_CalcEffectiveness(battleCtx,
                            move,
                            type,
                            Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL),
                            Battler_Ability(battleCtx, defender1),
                            Battler_HeldItemEffect(battleCtx, defender1),
                            BattleMon_Get(battleCtx, defender1, BATTLEMON_TYPE_1, NULL),
                            BattleMon_Get(battleCtx, defender1, BATTLEMON_TYPE_2, NULL),
                            &effectiveness);
                    }

                    if (effectiveness == 0 && BattleSystem_RandNext(battleSys) % 2 == 0) {
                        battleCtx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }

                    effectiveness = 0;
                    if (battleCtx->battleMons[defender2].curHP) {
                        BattleSystem_CalcEffectiveness(battleCtx,
                            move,
                            type,
                            Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL),
                            Battler_Ability(battleCtx, defender2),
                            Battler_HeldItemEffect(battleCtx, defender2),
                            BattleMon_Get(battleCtx, defender2, BATTLEMON_TYPE_1, NULL),
                            BattleMon_Get(battleCtx, defender2, BATTLEMON_TYPE_2, NULL),
                            &effectiveness);
                    }

                    if (effectiveness == 0 && BattleSystem_RandNext(battleSys) % 2 == 0) {
                        battleCtx->aiSwitchedPartySlot[battler] = i;
                        return TRUE;
                    }
                }
            }
        }
    }

    return FALSE;
}

/**
 * @brief Check if an AI's battler has a super-effective move against either of the
 * opponent's Pokemon.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @param flag      If TRUE, will always return TRUE if the AI's battler has a super-
 *                  effective move. If FALSE, returns TRUE 90% of the time for either
 *                  target against which the battler has a super-effective move.
 * @return TRUE if the AI's battler has a super-effective move.
 */
static BOOL AI_HasSuperEffectiveMove(BattleSystem *battleSys, BattleContext *battleCtx, int battler, BOOL flag)
{
    int i;
    u32 effectiveness;
    u8 defender;
    u8 oppositeSlot;
    u16 move;
    int type;

    // Look at the slot directly across from us on the opposite side. i.e.,
    // AI slot 1 looks at player slot 1, AI slot 2 looks at player slot 2
    oppositeSlot = BattleSystem_BattlerSlot(battleSys, battler) ^ 1;
    defender = BattleSystem_BattlerOfType(battleSys, oppositeSlot);

    if ((battleCtx->battlersSwitchingMask & FlagIndex(defender)) == FALSE) {
        // Check if the player's battler is weak to any of our moves
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            move = battleCtx->battleMons[battler].moves[i];
            type = TrainerAI_MoveType(battleSys, battleCtx, battler, move);

            if (move) {
                effectiveness = 0;
                BattleSystem_ApplyTypeChart(battleSys, battleCtx, move, type, battler, defender, 0, &effectiveness);

                // If the defending mon is weak to our move, return TRUE 90-100% of the time.
                if (effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) {
                    if (flag) {
                        return TRUE;
                    } else if (BattleSystem_RandNext(battleSys) % 10 != 0) {
                        return TRUE;
                    }
                }
            }
        }
    }

    // Check the defender's partner the same way as above.
    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_DOUBLES) == FALSE) {
        return FALSE;
    }
    defender = BattleSystem_Partner(battleSys, defender);

    if ((battleCtx->battlersSwitchingMask & FlagIndex(defender)) == FALSE) {
        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            move = battleCtx->battleMons[battler].moves[i];
            type = TrainerAI_MoveType(battleSys, battleCtx, battler, move);

            if (move) {
                effectiveness = 0;
                BattleSystem_ApplyTypeChart(battleSys, battleCtx, move, type, battler, defender, 0, &effectiveness);

                // If the defending mon is weak to our move, return TRUE 90-100% of the time.
                if (effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) {
                    if (flag) {
                        return TRUE;
                    } else if (BattleSystem_RandNext(battleSys) % 10 != 0) {
                        return TRUE;
                    }
                }
            }
        }
    }

    return FALSE;
}

/**
 * @brief Check if the AI's party has a Pokemon on the bench which has an "absorbing"
 * ability for the move which was last used on it (specifically, Volt Absorb, Water
 * Absorb, and Flash Fire).
 *
 * This routine will skip its checks roughly 33% of the time if the AI's battler has
 * a super-effective move. It will also skip its checks if the AI's active battler
 * is the one with the absorbing ability.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return BOOL
 */
static BOOL AI_HasAbsorbAbilityInParty(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    int i;
    u8 aiSlot1, aiSlot2;
    u8 moveType;
    u8 ability;
    u8 checkAbility;
    int start, end;
    Pokemon *mon;

    // If we have a super-effective move against either opponent, do not switch ~33% of the time.
    if (AI_HasSuperEffectiveMove(battleSys, battleCtx, battler, TRUE) && BattleSystem_RandNext(battleSys) % 3 != 0) {
        return FALSE;
    }

    // If we have not been hit by a move by this battler, do not switch.
    if (battleCtx->moveHit[battler] == MOVE_NONE) {
        return FALSE;
    }

    // If the last move that hit us does not deal damage, do not switch.
    if (MOVE_DATA(battleCtx->moveHit[battler]).power == 0) {
        return FALSE;
    }

    moveType = MOVE_DATA(battleCtx->moveHit[battler]).type;
    if (moveType == TYPE_FIRE) {
        checkAbility = ABILITY_FLASH_FIRE;
    } else if (moveType == TYPE_WATER) {
        checkAbility = ABILITY_WATER_ABSORB;
    } else if (moveType == TYPE_ELECTRIC) {
        checkAbility = ABILITY_VOLT_ABSORB;
    } else {
        return ABILITY_NONE;
    }

    // If our ability absorbs the type of the last move that hit us, do not switch.
    if (Battler_Ability(battleCtx, battler) == checkAbility) {
        return FALSE;
    }

    aiSlot1 = battler;
    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG) || (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2)) {
        aiSlot2 = aiSlot1;
    } else {
        aiSlot2 = BattleSystem_Partner(battleSys, battler);
    }

    start = 0;
    end = BattleSystem_PartyCount(battleSys, battler);

    // Check each Pokemon on the bench for one which has an ability that absorbs
    // the last move that was used.
    for (i = start; i < end; i++) {
        mon = BattleSystem_PartyPokemon(battleSys, battler, i);

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
            && i != battleCtx->selectedPartySlot[aiSlot1]
            && i != battleCtx->selectedPartySlot[aiSlot2]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot1]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot2]) {
            ability = Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL);

            // Switch to a matching Pokemon 50% of the time.
            if (checkAbility == ability && (BattleSystem_RandNext(battleSys) & 1)) {
                battleCtx->aiSwitchedPartySlot[battler] = i;
                return TRUE;
            }
        }
    }

    return FALSE;
}

/**
 * @brief Check if the AI has a party member with a super-effective move, constrained
 * to mons with a certain effectiveness matchup against the move that last hit us.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler               The AI's battler.
 * @param checkEffectiveness    The desired effectiveness mask against the last move.
 * @param rand                  Random odds to switch, if conditions are met.
 * @return TRUE if the AI should switch, FALSE if not.
 */
static BOOL AI_HasPartyMemberWithSuperEffectiveMove(BattleSystem *battleSys, BattleContext *battleCtx, int battler, u32 checkEffectiveness, u8 rand)
{
    int i, j;
    u8 aiSlot1, aiSlot2;
    u16 move;
    int moveType;
    u32 effectiveness;
    int start, end;
    Pokemon *mon;

    if (battleCtx->moveHit[battler] == MOVE_NONE || battleCtx->moveHitBattler[battler] == BATTLER_NONE) {
        return FALSE;
    }

    // If the last move that hit us is a status move, do not switch.
    if (MOVE_DATA(battleCtx->moveHit[battler]).power == 0) {
        return FALSE;
    }

    aiSlot1 = battler;
    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG) || (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2)) {
        aiSlot2 = aiSlot1;
    } else {
        aiSlot2 = BattleSystem_Partner(battleSys, battler);
    }

    start = 0;
    end = BattleSystem_PartyCount(battleSys, battler);

    for (i = start; i < end; i++) {
        mon = BattleSystem_PartyPokemon(battleSys, battler, i);

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
            && i != battleCtx->selectedPartySlot[aiSlot1]
            && i != battleCtx->selectedPartySlot[aiSlot2]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot1]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot2]) {
            effectiveness = 0;
            moveType = TrainerAI_MoveType(battleSys, battleCtx, battleCtx->moveHitBattler[battler], battleCtx->moveHit[battler]);

            BattleSystem_CalcEffectiveness(battleCtx,
                battleCtx->moveHit[battler],
                moveType,
                Battler_Ability(battleCtx, battleCtx->moveHitBattler[battler]),
                Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL),
                BattleSystem_GetItemData(battleCtx, Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL), ITEM_PARAM_HOLD_EFFECT),
                Pokemon_GetValue(mon, MON_DATA_TYPE_1, NULL),
                Pokemon_GetValue(mon, MON_DATA_TYPE_2, NULL),
                &effectiveness);

            if (effectiveness & checkEffectiveness) {
                for (j = 0; j < LEARNED_MOVES_MAX; j++) {
                    move = Pokemon_GetValue(mon, MON_DATA_MOVE1 + j, NULL);
                    moveType = Move_CalcVariableType(battleSys, battleCtx, mon, move);

                    if (move) {
                        effectiveness = 0;
                        BattleSystem_CalcEffectiveness(battleCtx,
                            move,
                            moveType,
                            Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL),
                            Battler_Ability(battleCtx, battleCtx->moveHitBattler[battler]),
                            Battler_HeldItemEffect(battleCtx, battleCtx->moveHitBattler[battler]),
                            BattleMon_Get(battleCtx, battleCtx->moveHitBattler[battler], BATTLEMON_TYPE_1, NULL),
                            BattleMon_Get(battleCtx, battleCtx->moveHitBattler[battler], BATTLEMON_TYPE_2, NULL),
                            &effectiveness);

                        if ((effectiveness & MOVE_STATUS_SUPER_EFFECTIVE) && BattleSystem_RandNext(battleSys) % rand == 0) {
                            battleCtx->aiSwitchedPartySlot[battler] = i;
                            return TRUE;
                        }
                    }
                }
            }
        }
    }

    return FALSE;
}

/**
 * @brief Check if the AI's battler is asleep and has Natural Cure + an eligible switch.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's battler.
 * @return TRUE if the AI should switch, FALSE otherwise.
 */
static BOOL AI_IsAsleepWithNaturalCure(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    // Don't switch if we aren't asleep, don't have Natural Cure, or are below 50% HP.
    if ((battleCtx->battleMons[battler].status & MON_CONDITION_SLEEP) == FALSE
        || Battler_Ability(battleCtx, battler) != ABILITY_NATURAL_CURE
        || battleCtx->battleMons[battler].curHP < (battleCtx->battleMons[battler].maxHP / 2)) {
        return FALSE;
    }

    // Check for the move that last hit you; i.e., don't switch on your first turn.
    // Switch 50% of the time, and use post-KO switch logic.
    if (battleCtx->moveHit[battler] == MOVE_NONE && (BattleSystem_RandNext(battleSys) & 1)) {
        battleCtx->aiSwitchedPartySlot[battler] = 6;
        return TRUE;
    }

    // If the last move that hit you is a status move, switch 50% of the time, following
    // post-KO switch logic.
    if (MOVE_DATA(battleCtx->moveHit[battler]).power == 0 && (BattleSystem_RandNext(battleSys) & 1)) {
        battleCtx->aiSwitchedPartySlot[battler] = 6;
        return TRUE;
    }

    // If we have a party member with an immunity to the last move that also has a super-effective
    // move, switch 50% of the time.
    if (AI_HasPartyMemberWithSuperEffectiveMove(battleSys, battleCtx, battler, MOVE_STATUS_INEFFECTIVE, 1)) {
        return TRUE;
    }

    // If we have a party member with a resistance to the last move that also has a super-effective
    // move, switch 50% of the time.
    if (AI_HasPartyMemberWithSuperEffectiveMove(battleSys, battleCtx, battler, MOVE_STATUS_NOT_VERY_EFFECTIVE, 1)) {
        return TRUE;
    }

    // Randomly switch 50% of the time, following post-KO switch logic.
    if (BattleSystem_RandNext(battleSys) & 1) {
        battleCtx->aiSwitchedPartySlot[battler] = 6;
        return TRUE;
    }

    return FALSE;
}

/**
 * @brief Check if the AI's current battler is heavily stat-boosted (that is,
 * if the sum of its total positive stat stage changes is greater than or
 * equal to 4.)
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   The AI's current battler.
 * @return          TRUE if the AI has a high number of positive stat stages;
 *                  FALSE otherwise.
 */
static BOOL AI_IsHeavilyStatBoosted(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    int stat;
    u8 numBoosts = 0;

    for (stat = BATTLE_STAT_HP; stat < BATTLE_STAT_MAX; stat++) {
        if (battleCtx->battleMons[battler].statBoosts[stat] > 6) {
            numBoosts += battleCtx->battleMons[battler].statBoosts[stat] - 6;
        }
    }

    return numBoosts >= 4;
}

/**
 * @brief Check if the AI should switch for turn.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler   TRUE if the battler
 * @return BOOL
 */
static BOOL TrainerAI_ShouldSwitch(BattleSystem *battleSys, BattleContext *battleCtx, int battler)
{
    int i;
    int alivePartyMons;
    u8 aiSlot1, aiSlot2;
    int start, end;
    Pokemon *mon;

    // Don't try to make illegal switches
    // This definition is naive: the AI does not consider itself immune to Magnet Pull from an ally,
    // Shadow Tag if it also has Shadow Tag, Arena Trap if it is a Flying-type, or always able to switch
    // if it is holding a Shed Shell.
    if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_TRAPPED)
        || (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_INGRAIN)
        || BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALL_BATTLERS_THEIR_SIDE, battler, ABILITY_SHADOW_TAG)
        || BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALL_BATTLERS_THEIR_SIDE, battler, ABILITY_ARENA_TRAP)
        || (BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALL_BATTLERS_EXCEPT_ME, battler, ABILITY_MAGNET_PULL)
            && MON_HAS_TYPE(battler, TYPE_STEEL))) {
        return FALSE;
    }

    alivePartyMons = 0;
    aiSlot1 = battler;
    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TAG) || (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_2vs2)) {
        aiSlot2 = aiSlot1;
    } else {
        aiSlot2 = BattleSystem_Partner(battleSys, battler);
    }

    // Check for living party members (obviously, do not try to switch if there are none).
    start = 0;
    end = BattleSystem_PartyCount(battleSys, battler);
    for (i = start; i < end; i++) {
        mon = BattleSystem_PartyPokemon(battleSys, battler, i);

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
            && i != battleCtx->selectedPartySlot[aiSlot1]
            && i != battleCtx->selectedPartySlot[aiSlot2]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot1]
            && i != battleCtx->aiSwitchedPartySlot[aiSlot2]) {
            alivePartyMons++;
        }
    }

    if (alivePartyMons) {
        if (AI_PerishSongKO(battleCtx, battler)) {
            return TRUE;
        }

        if (AI_CannotDamageWonderGuard(battleSys, battleCtx, battler)) {
            return TRUE;
        }

        if (AI_OnlyIneffectiveMoves(battleSys, battleCtx, battler)) {
            return TRUE;
        }

        if (AI_HasAbsorbAbilityInParty(battleSys, battleCtx, battler)) {
            return TRUE;
        }

        if (AI_IsAsleepWithNaturalCure(battleSys, battleCtx, battler)) {
            return TRUE;
        }

        // Do not switch if we have a super-effective move.
        // Note that this has a 10% chance of returning FALSE for each of our
        // moves that are super-effective against either opponent.
        if (AI_HasSuperEffectiveMove(battleSys, battleCtx, battler, FALSE)) {
            return FALSE;
        }

        // Never switch if the active battler has 4+ positive stat stages.
        if (AI_IsHeavilyStatBoosted(battleSys, battleCtx, battler)) {
            return FALSE;
        }

        // 33% of the time, switch to a party member with an immunity to the last move that hit
        // this battler which also has a super-effective move against an opposing Pokemon.
        if (AI_HasPartyMemberWithSuperEffectiveMove(battleSys, battleCtx, battler, 0x8, 2)) {
            return TRUE;
        }

        // 25% of the time, switch to a party member with an immunity to the last move that hit
        // this battler which also has a super-effective move against an opposing Pokemon.
        if (AI_HasPartyMemberWithSuperEffectiveMove(battleSys, battleCtx, battler, 0x4, 3)) {
            return TRUE;
        }
    }

    return FALSE;
}

int TrainerAI_PickCommand(BattleSystem *battleSys, int battler)
{
    // must declare C89-style to match
    int i;
    u8 battler1, battler2;
    u32 battleType;
    int end;
    Pokemon *mon;
    BattleContext *battleCtx = battleSys->battleCtx;
    battleType = BattleSystem_BattleType(battleSys);

    if ((battleType & BATTLE_TYPE_TRAINER) || Battler_Side(battleSys, battler) == BATTLE_SIDE_PLAYER) {
        if (TrainerAI_ShouldSwitch(battleSys, battleCtx, battler)) {
            // If this is a switch which should use the post-KO switch logic, then do so.
            // If there is no valid battler, pick the first one in party order.
            if (battleCtx->aiSwitchedPartySlot[battler] == 6) {
                if ((i = BattleAI_PostKOSwitchIn(battleSys, battler)) == 6) {
                    battler1 = battler;
                    if ((battleType & BATTLE_TYPE_TAG) || (battleType & BATTLE_TYPE_2vs2)) {
                        battler2 = battler1;
                    } else {
                        battler2 = BattleSystem_Partner(battleSys, battler);
                    }

                    end = BattleSystem_PartyCount(battleSys, battler);
                    for (i = 0; i < end; i++) {
                        mon = BattleSystem_PartyPokemon(battleSys, battler, i);

                        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
                            && i != battleCtx->selectedPartySlot[battler1]
                            && i != battleCtx->selectedPartySlot[battler2]
                            && i != battleCtx->aiSwitchedPartySlot[battler1]
                            && i != battleCtx->aiSwitchedPartySlot[battler2]) {
                            break;
                        }
                    }
                }

                battleCtx->aiSwitchedPartySlot[battler] = i;
            }

            return PLAYER_INPUT_PARTY;
        }

        // Check if the AI determines that it should use an item
        if (TrainerAI_ShouldUseItem(battleSys, battler)) {
            return PLAYER_INPUT_ITEM;
        }
    }

    return PLAYER_INPUT_FIGHT;
}

/**
 * @brief Determine if the AI should use an item on its active battler.
 *
 * Several buffers will be filled, if an item should be used:
 * 1. The item type (e.g., Full Restore, Potion, etc.)
 * 2. Any parameters for the item, e.g. what status condition it heals
 * 3. What item number is used
 *
 * The trainer's pocket of items will also be updated appropriately.
 *
 * @param battleSys
 * @param battler   The AI's battler.
 * @return          TRUE if an item should be used, FALSE if not.
 */
static BOOL TrainerAI_ShouldUseItem(BattleSystem *battleSys, int battler)
{
    int i;
    u8 aliveMons = 0;
    u16 item;
    u8 hpRestore;
    BOOL result;
    Party *party;
    Pokemon *mon;
    BattleContext *battleCtx = battleSys->battleCtx;
    AI_CONTEXT.usedItemCondition[battler >> 1] = 0;
    result = FALSE;

    // Don't let the AI partners ever use items in battle against trainers.
    if ((battleSys->battleType & BATTLE_TYPE_TRAINER_WITH_AI_PARTNER) == BATTLE_TYPE_TRAINER_WITH_AI_PARTNER
        && BattleSystem_BattlerSlot(battleSys, battler) == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
        return result;
    }

    // Don't try to use items if it's illegal to do so.
    if (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_EMBARGO) {
        return result;
    }

    party = BattleSystem_Party(battleSys, battler);
    for (i = 0; i < Party_GetCurrentCount(party); i++) {
        mon = Party_GetPokemonBySlotIndex(party, i);

        if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) != 0
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
            && Pokemon_GetValue(mon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
            aliveMons++;
        }
    }

    for (i = 0; i < MAX_TRAINER_ITEMS; i++) {
        if (i == 0 || aliveMons <= AI_CONTEXT.trainerItemCounts[battler >> 1] - i + 1) {
            item = AI_CONTEXT.trainerItems[battler >> 1][i];

            if (item == ITEM_NONE) {
                continue;
            }

            if (item == ITEM_FULL_RESTORE) {
                if (battleCtx->battleMons[battler].curHP < (battleCtx->battleMons[battler].maxHP / 4)
                    && battleCtx->battleMons[battler].curHP) {
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_FULL_RESTORE;
                    result = TRUE;
                }
            } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HP_RESTORE)) {
                hpRestore = BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HP_RESTORED);

                // Use an HP restore item if the battler is at less than 1/4 HP or if the full HP restore
                // value of the item would be used.
                if (hpRestore) {
                    if (battleCtx->battleMons[battler].curHP
                        && (battleCtx->battleMons[battler].curHP < (battleCtx->battleMons[battler].maxHP / 4)
                            || (battleCtx->battleMons[battler].maxHP - battleCtx->battleMons[battler].curHP) > hpRestore)) {
                        AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_HP;
                        result = TRUE;
                    }
                }
            } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_SLEEP)) {
                if (battleCtx->battleMons[battler].status & MON_CONDITION_SLEEP) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(5);
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_POISON)) {
                if ((battleCtx->battleMons[battler].status & MON_CONDITION_POISON)
                    || (battleCtx->battleMons[battler].status & MON_CONDITION_TOXIC)) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(4);
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_BURN)) {
                if (battleCtx->battleMons[battler].status & MON_CONDITION_BURN) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(3);
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_FREEZE)) {
                if (battleCtx->battleMons[battler].status & MON_CONDITION_FREEZE) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(2);
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_PARALYSIS)) {
                if (battleCtx->battleMons[battler].status & MON_CONDITION_PARALYSIS) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(1);
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
            } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_HEAL_CONFUSION)) {
                if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_CONFUSION) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] |= FlagIndex(0);
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_RECOVER_STATUS;
                    result = TRUE;
                }
                // Don't try to use any of these until after the first turn that a mon is in play.
            } else if ((battleCtx->battleMons[battler].moveEffectsData.fakeOutTurnNumber - battleCtx->totalTurns) >= 0) {
                if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_ATK_STAGES)) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_ATTACK;
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_DEF_STAGES)) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_DEFENSE;
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_SPATK_STAGES)) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_SP_ATTACK;
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_SPDEF_STAGES)) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_SP_DEFENSE;
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_SPEED_STAGES)) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_SPEED;
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_ACC_STAGES)) {
                    AI_CONTEXT.usedItemCondition[battler >> 1] = BATTLE_STAT_ACCURACY;
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_STAT_BOOSTER;
                    result = TRUE;
                } else if (BattleSystem_GetItemData(battleCtx, item, ITEM_PARAM_GUARD_SPEC)
                    && (battleCtx->sideConditionsMask[1] & SIDE_CONDITION_MIST) == FALSE) {
                    AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_GUARD_SPEC;
                    result = TRUE;
                }
            } else {
                // Unrecognized item type
                AI_CONTEXT.usedItemType[battler >> 1] = ITEM_AI_CATEGORY_MAX;
            }

            if (result == TRUE) {
                AI_CONTEXT.usedItem[battler >> 1] = item;
                AI_CONTEXT.trainerItems[battler >> 1][i] = 0;
            }
        }
    }

    return result;
}
