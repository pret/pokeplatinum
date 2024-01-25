#include <nitro.h>
#include <string.h>

#include "pch/global_pch.h"
#include "assert.h"

#include "consts/generated/c/abilities.h"
#include "constants/battle.h"
#include "constants/items.h"
#include "constants/species.h"
#include "constants/battle/trainer_ai.h"

#include "struct_decls/struct_party_decl.h"
#include "struct_decls/battle_system.h"
#include "struct_defs/battle_system.h"

#include "battle/common.h"
#include "battle/ai_context.h"
#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/trainer_ai.h"
#include "battle/battle_lib.h"

#include "flags.h"
#include "pokemon.h"
#include "party.h"
#include "overlay016/ov16_0223DF00.h"

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
	BATTLE_EFFECT_10_DAMAGE_FLAT,
	BATTLE_EFFECT_INCREASE_POWER_WITH_WEIGHT,
	0xFFFF
};

typedef void (*AICommandFunc)(BattleSystem*, BattleContext*);

enum AIEvalStep {
    AI_EVAL_STEP_INIT,
    AI_EVAL_STEP_EVAL,
    AI_EVAL_STEP_END,
};

static void ov14_02220184(BattleSystem * param0, BattleContext * param1);
static void ov14_022201C4(BattleSystem * param0, BattleContext * param1);
static void ov14_02220204(BattleSystem * param0, BattleContext * param1);
static void ov14_02220244(BattleSystem * param0, BattleContext * param1);
static void ov14_02220284(BattleSystem * param0, BattleContext * param1);
static void ov14_022202B8(BattleSystem * param0, BattleContext * param1);
static void ov14_02220310(BattleSystem * param0, BattleContext * param1);
static void ov14_02220368(BattleSystem * param0, BattleContext * param1);
static void ov14_022203C0(BattleSystem * param0, BattleContext * param1);
static void ov14_02220418(BattleSystem * param0, BattleContext * param1);
static void ov14_02220464(BattleSystem * param0, BattleContext * param1);
static void ov14_022204B0(BattleSystem * param0, BattleContext * param1);
static void ov14_022204FC(BattleSystem * param0, BattleContext * param1);
static void ov14_02220548(BattleSystem * param0, BattleContext * param1);
static void ov14_02220590(BattleSystem * param0, BattleContext * param1);
static void ov14_022205D8(BattleSystem * param0, BattleContext * param1);
static void ov14_02220628(BattleSystem * param0, BattleContext * param1);
static void ov14_02220678(BattleSystem * param0, BattleContext * param1);
static void ov14_022206A8(BattleSystem * param0, BattleContext * param1);
static void ov14_022206D8(BattleSystem * param0, BattleContext * param1);
static void ov14_02220708(BattleSystem * param0, BattleContext * param1);
static void ov14_02220738(BattleSystem * param0, BattleContext * param1);
static void ov14_02220768(BattleSystem * param0, BattleContext * param1);
static void ov14_02220798(BattleSystem * param0, BattleContext * param1);
static void ov14_022207C8(BattleSystem * param0, BattleContext * param1);
static void ov14_022207F8(BattleSystem * param0, BattleContext * param1);
static void ov14_0222084C(BattleSystem * param0, BattleContext * param1);
static void ov14_0222089C(BattleSystem * param0, BattleContext * param1);
static void ov14_02220900(BattleSystem * param0, BattleContext * param1);
static void ov14_02220964(BattleSystem * param0, BattleContext * param1);
static void ov14_02220980(BattleSystem * param0, BattleContext * param1);
static void ov14_02220B10(BattleSystem * param0, BattleContext * param1);
static void ov14_02220B34(BattleSystem * param0, BattleContext * param1);
static void ov14_02220C70(BattleSystem * param0, BattleContext * param1);
static void ov14_02220CA4(BattleSystem * param0, BattleContext * param1);
static void ov14_02220CD4(BattleSystem * param0, BattleContext * param1);
static void ov14_02220D04(BattleSystem * param0, BattleContext * param1);
static void ov14_02220D48(BattleSystem * param0, BattleContext * param1);
static void ov14_02220D8C(BattleSystem * param0, BattleContext * param1);
static void ov14_02220E68(BattleSystem * param0, BattleContext * param1);
static void ov14_02220E84(BattleSystem * param0, BattleContext * param1);
static void ov14_02220EA8(BattleSystem * param0, BattleContext * param1);
static void ov14_02221060(BattleSystem * param0, BattleContext * param1);
static void ov14_02221114(BattleSystem * param0, BattleContext * param1);
static void ov14_022211AC(BattleSystem * param0, BattleContext * param1);
static void ov14_022212A0(BattleSystem * param0, BattleContext * param1);
static void ov14_02221394(BattleSystem * param0, BattleContext * param1);
static void ov14_0222140C(BattleSystem * param0, BattleContext * param1);
static void ov14_02221444(BattleSystem * param0, BattleContext * param1);
static void ov14_0222147C(BattleSystem * param0, BattleContext * param1);
static void ov14_022214D0(BattleSystem * param0, BattleContext * param1);
static void ov14_02221524(BattleSystem * param0, BattleContext * param1);
static void ov14_02221578(BattleSystem * param0, BattleContext * param1);
static void ov14_022215CC(BattleSystem * param0, BattleContext * param1);
static void ov14_022216F8(BattleSystem * param0, BattleContext * param1);
static void ov14_02221824(BattleSystem * param0, BattleContext * param1);
static void ov14_022218E4(BattleSystem * param0, BattleContext * param1);
static void ov14_022219A4(BattleSystem * param0, BattleContext * param1);
static void ov14_02221A48(BattleSystem * param0, BattleContext * param1);
static void ov14_02221AEC(BattleSystem * param0, BattleContext * param1);
static void ov14_02221B5C(BattleSystem * param0, BattleContext * param1);
static void ov14_02221BCC(BattleSystem * param0, BattleContext * param1);
static void ov14_02221BE8(BattleSystem * param0, BattleContext * param1);
static void ov14_02221BEC(BattleSystem * param0, BattleContext * param1);
static void ov14_02221BF0(BattleSystem * param0, BattleContext * param1);
static void ov14_02221C24(BattleSystem * param0, BattleContext * param1);
static void ov14_02222844(BattleSystem * param0, BattleContext * param1);
static void ov14_0222287C(BattleSystem * param0, BattleContext * param1);
static void ov14_022228C8(BattleSystem * param0, BattleContext * param1);
static void ov14_02222900(BattleSystem * param0, BattleContext * param1);
static void ov14_02222918(BattleSystem * param0, BattleContext * param1);
static void ov14_0222294C(BattleSystem * param0, BattleContext * param1);
static void ov14_0222296C(BattleSystem * param0, BattleContext * param1);
static void ov14_0222298C(BattleSystem * param0, BattleContext * param1);
static void ov14_022229AC(BattleSystem * param0, BattleContext * param1);
static void ov14_02222A08(BattleSystem * param0, BattleContext * param1);
static void ov14_02222A28(BattleSystem * param0, BattleContext * param1);
static void ov14_02222A44(BattleSystem * param0, BattleContext * param1);
static void ov14_02222A6C(BattleSystem * param0, BattleContext * param1);
static void ov14_02222B10(BattleSystem * param0, BattleContext * param1);
static void ov14_02222B48(BattleSystem * param0, BattleContext * param1);
static void ov14_02222B80(BattleSystem * param0, BattleContext * param1);
static void ov14_02220AB4(BattleSystem * param0, BattleContext * param1);
static void ov14_02220F88(BattleSystem * param0, BattleContext * param1);
static void ov14_02222BB4(BattleSystem * param0, BattleContext * param1);
static void ov14_02221C88(BattleSystem * param0, BattleContext * param1);
static void ov14_02221CF0(BattleSystem * param0, BattleContext * param1);
static void ov14_02221D20(BattleSystem * param0, BattleContext * param1);
static void ov14_02221D88(BattleSystem * param0, BattleContext * param1);
static void ov14_02221E18(BattleSystem * param0, BattleContext * param1);
static void ov14_02221EBC(BattleSystem * param0, BattleContext * param1);
static void ov14_02221EEC(BattleSystem * param0, BattleContext * param1);
static void ov14_02221F1C(BattleSystem * param0, BattleContext * param1);
static void ov14_02221F78(BattleSystem * param0, BattleContext * param1);
static void ov14_02221F9C(BattleSystem * param0, BattleContext * param1);
static void ov14_02221FCC(BattleSystem * param0, BattleContext * param1);
static void ov14_02222090(BattleSystem * param0, BattleContext * param1);
static void ov14_022220CC(BattleSystem * param0, BattleContext * param1);
static void ov14_02222260(BattleSystem * param0, BattleContext * param1);
static void ov14_02222298(BattleSystem * param0, BattleContext * param1);
static void ov14_022223B0(BattleSystem * param0, BattleContext * param1);
static void ov14_02222400(BattleSystem * param0, BattleContext * param1);
static void ov14_02222450(BattleSystem * param0, BattleContext * param1);
static void ov14_022224A4(BattleSystem * param0, BattleContext * param1);
static void ov14_022224F8(BattleSystem * param0, BattleContext * param1);
static void ov14_02222648(BattleSystem * param0, BattleContext * param1);
static void ov14_022227A4(BattleSystem * param0, BattleContext * param1);
static void ov14_022227F4(BattleSystem * param0, BattleContext * param1);
static void ov14_02222BF8(BattleSystem * param0, BattleContext * param1);

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
static BOOL TrainerAI_ShouldUseItem(BattleSystem * param0, int param1);

static const AICommandFunc sAICommandTable[] = {
    ov14_02220184,
    ov14_022201C4,
    ov14_02220204,
    ov14_02220244,
    ov14_02220284,
    ov14_022202B8,
    ov14_02220310,
    ov14_02220368,
    ov14_022203C0,
    ov14_02220418,
    ov14_02220464,
    ov14_022204B0,
    ov14_022204FC,
    ov14_02220548,
    ov14_02220590,
    ov14_022205D8,
    ov14_02220628,
    ov14_02220678,
    ov14_022206A8,
    ov14_022206D8,
    ov14_02220708,
    ov14_02220738,
    ov14_02220768,
    ov14_02220798,
    ov14_022207C8,
    ov14_022207F8,
    ov14_0222084C,
    ov14_0222089C,
    ov14_02220900,
    ov14_02220964,
    ov14_02220980,
    ov14_02220B10,
    ov14_02220B34,
    ov14_02220C70,
    ov14_02220CA4,
    ov14_02220CD4,
    ov14_02220D04,
    ov14_02220D48,
    ov14_02220D8C,
    ov14_02220E68,
    ov14_02220E84,
    ov14_02220EA8,
    ov14_02221060,
    ov14_02221114,
    ov14_022211AC,
    ov14_022212A0,
    ov14_02221394,
    ov14_0222140C,
    ov14_02221444,
    ov14_0222147C,
    ov14_022214D0,
    ov14_02221524,
    ov14_02221578,
    ov14_022215CC,
    ov14_022216F8,
    ov14_02221824,
    ov14_022218E4,
    ov14_022219A4,
    ov14_02221A48,
    ov14_02221AEC,
    ov14_02221B5C,
    ov14_02221BCC,
    ov14_02221BE8,
    ov14_02221BEC,
    ov14_02221BF0,
    ov14_02221C24,
    ov14_02222844,
    ov14_0222287C,
    ov14_022228C8,
    ov14_02222900,
    ov14_02222918,
    ov14_0222294C,
    ov14_0222296C,
    ov14_0222298C,
    ov14_022229AC,
    ov14_02222A08,
    ov14_02222A28,
    ov14_02222A44,
    ov14_02222A6C,
    ov14_02222B10,
    ov14_02222B48,
    ov14_02222B80,
    ov14_02220AB4,
    ov14_02220F88,
    ov14_02222BB4,
    ov14_02221C88,
    ov14_02221CF0,
    ov14_02221D20,
    ov14_02221D88,
    ov14_02221E18,
    ov14_02221EBC,
    ov14_02221EEC,
    ov14_02221F1C,
    ov14_02221F78,
    ov14_02221F9C,
    ov14_02221FCC,
    ov14_02222090,
    ov14_022220CC,
    ov14_02222260,
    ov14_02222298,
    ov14_022223B0,
    ov14_02222400,
    ov14_02222450,
    ov14_022224A4,
    ov14_022224F8,
    ov14_02222648,
    ov14_022227A4,
    ov14_022227F4,
    ov14_02222BF8
};

void TrainerAI_Init(BattleSystem *battleSys, BattleContext *battleCtx, u8 battler, u8 initScore)
{
    // must declare these up here to match
    int i;
    u8 invalidMoves;

    // explicit memset
    u8 *adrs = (u8*)&AI_CONTEXT;
    for (i = 0; i < XtOffset(AIContext*, battlerMoves); i++) {
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
        AI_CONTEXT.thinkingMask = battleSys->trainers[battler].aiMask;
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
            if (battleCtx->battleMons[AI_CONTEXT.attacker].moves[i]) {    // Attacker has a move in this slot
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

static void ov14_02220184 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if ((BattleSystem_RandNext(param0) % 256) < v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_022201C4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if ((BattleSystem_RandNext(param0) % 256) > v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220204 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if ((BattleSystem_RandNext(param0) % 256) == v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220244 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if ((BattleSystem_RandNext(param0) % 256) != v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220284 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    param1->aiContext.moveScore[param1->aiContext.moveSlot] += v0;

    if (param1->aiContext.moveScore[param1->aiContext.moveSlot] < 0) {
        param1->aiContext.moveScore[param1->aiContext.moveSlot] = 0;
    }
}

static void ov14_022202B8 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    u32 v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v2);
    v1 = param1->battleMons[v0].curHP * 100 / param1->battleMons[v0].maxHP;

    if (v1 < v3) {
        AIScript_Iter(param1, v4);
    }
}

static void ov14_02220310 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    u32 v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v2);
    v1 = param1->battleMons[v0].curHP * 100 / param1->battleMons[v0].maxHP;

    if (v1 > v3) {
        AIScript_Iter(param1, v4);
    }
}

static void ov14_02220368 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    u32 v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v2);
    v1 = param1->battleMons[v0].curHP * 100 / param1->battleMons[v0].maxHP;

    if (v1 == v3) {
        AIScript_Iter(param1, v4);
    }
}

static void ov14_022203C0 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    u32 v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v2);
    v1 = param1->battleMons[v0].curHP * 100 / param1->battleMons[v0].maxHP;

    if (v1 != v3) {
        AIScript_Iter(param1, v4);
    }
}

static void ov14_02220418 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    u32 v2;
    int v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].status & v2) {
        AIScript_Iter(param1, v3);
    }
}

static void ov14_02220464 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    u32 v2;
    int v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if ((param1->battleMons[v0].status & v2) == 0) {
        AIScript_Iter(param1, v3);
    }
}

static void ov14_022204B0 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    u32 v2;
    int v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].statusVolatile & v2) {
        AIScript_Iter(param1, v3);
    }
}

static void ov14_022204FC (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    u32 v2;
    int v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if ((param1->battleMons[v0].statusVolatile & v2) == 0) {
        AIScript_Iter(param1, v3);
    }
}

static void ov14_02220548 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    u32 v2;
    int v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].moveEffectsMask & v2) {
        AIScript_Iter(param1, v3);
    }
}

static void ov14_02220590 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    u32 v2;
    int v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if ((param1->battleMons[v0].moveEffectsMask & v2) == 0) {
        AIScript_Iter(param1, v3);
    }
}

static void ov14_022205D8 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    u32 v2;
    int v3;
    u8 v4;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);
    v4 = Battler_Side(param0, v0);

    if (param1->sideConditionsMask[v4] & v2) {
        AIScript_Iter(param1, v3);
    }
}

static void ov14_02220628 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    u32 v2;
    int v3;
    u8 v4;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);
    v4 = Battler_Side(param0, v0);

    if ((param1->sideConditionsMask[v4] & v2) == 0) {
        AIScript_Iter(param1, v3);
    }
}

static void ov14_02220678 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->aiContext.calcTemp < v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_022206A8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->aiContext.calcTemp > v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_022206D8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->aiContext.calcTemp == v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220708 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->aiContext.calcTemp != v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220738 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->aiContext.calcTemp & v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220768 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if ((param1->aiContext.calcTemp & v0) == 0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220798 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->aiContext.move == v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_022207C8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->aiContext.move != v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_022207F8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    while ((v2 = AIScript_ReadOffset(param1, v0)) != 0xffffffff) {
        if (param1->aiContext.calcTemp == v2) {
            AIScript_Iter(param1, v1);
            break;
        }

        v0++;
    }
}

static void ov14_0222084C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    while ((v2 = AIScript_ReadOffset(param1, v0)) != 0xffffffff) {
        if (param1->aiContext.calcTemp == v2) {
            return;
        }

        v0++;
    }

    AIScript_Iter(param1, v1);
}

static void ov14_0222089C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);
    v1 = AIScript_Read(param1);

    for (v0 = 0; v0 < 4; v0++) {
        if ((param1->battleMons[param1->aiContext.attacker].moves[v0] != 0) && (param1->aiContext.moveTable[param1->battleMons[param1->aiContext.attacker].moves[v0]].power)) {
            break;
        }
    }

    if (v0 < 4) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220900 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);
    v1 = AIScript_Read(param1);

    for (v0 = 0; v0 < 4; v0++) {
        if ((param1->battleMons[param1->aiContext.attacker].moves[v0] != 0) && (param1->aiContext.moveTable[param1->battleMons[param1->aiContext.attacker].moves[v0]].power)) {
            break;
        }
    }

    if (v0 == 4) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220964 (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->totalTurns;
}

static void ov14_02220980 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);

    switch (v0) {
    case 1:
        param1->aiContext.calcTemp = BattleMon_Get(param1, param1->aiContext.attacker, 27, NULL);
        break;
    case 0:
        param1->aiContext.calcTemp = BattleMon_Get(param1, param1->aiContext.defender, 27, NULL);
        break;
    case 3:
        param1->aiContext.calcTemp = BattleMon_Get(param1, param1->aiContext.attacker, 28, NULL);
        break;
    case 2:
        param1->aiContext.calcTemp = BattleMon_Get(param1, param1->aiContext.defender, 28, NULL);
        break;
    case 4:
        param1->aiContext.calcTemp = param1->aiContext.moveTable[param1->aiContext.move].type;
        break;
    case 6:
        v1 = BattleSystem_Partner(param0, param1->aiContext.attacker);
        param1->aiContext.calcTemp = BattleMon_Get(param1, v1, 27, NULL);
        break;
    case 5:
        v1 = BattleSystem_Partner(param0, param1->aiContext.defender);
        param1->aiContext.calcTemp = BattleMon_Get(param1, v1, 27, NULL);
        break;
    case 8:
        v1 = BattleSystem_Partner(param0, param1->aiContext.attacker);
        param1->aiContext.calcTemp = BattleMon_Get(param1, v1, 28, NULL);
        break;
    case 7:
        v1 = BattleSystem_Partner(param0, param1->aiContext.defender);
        param1->aiContext.calcTemp = BattleMon_Get(param1, v1, 27, NULL);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov14_02220AB4 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if ((BattleMon_Get(param1, v0, 27, NULL) == v2) || (BattleMon_Get(param1, v0, 28, NULL) == v2)) {
        param1->aiContext.calcTemp = 1;
    } else {
        param1->aiContext.calcTemp = 0;
    }
}

static void ov14_02220B10 (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->aiContext.moveTable[param1->aiContext.move].power;
}

static void ov14_02220B34 (BattleSystem * param0, BattleContext * param1)
{
    int v0 = 0, v1, v2;
    s32 v3[4];
    int v4;
    u8 v5[6];

    AIScript_Iter(param1, 1);

    v4 = AIScript_Read(param1);
    v1 = 0;

    while (sRiskyMoves[v1] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == sRiskyMoves[v1]) {
            break;
        }

        v1++;
    }

    v2 = 0;

    while (sAltPowerCalcMoves[v2] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == sAltPowerCalcMoves[v2]) {
            break;
        }

        v2++;
    }

    if ((sAltPowerCalcMoves[v2] != 0xffff) || ((param1->aiContext.moveTable[param1->aiContext.move].power > 1) && (sRiskyMoves[v1] == 0xffff))) {
        for (v0 = 0; v0 < 6; v0++) {
            v5[v0] = BattleMon_Get(param1, param1->aiContext.attacker, 10 + v0, NULL);
        }

        TrainerAI_CalcAllDamage(param0, param1, param1->aiContext.attacker, &param1->battleMons[param1->aiContext.attacker].moves[0], &v3[0], param1->battleMons[param1->aiContext.attacker].heldItem, &v5[0], Battler_Ability(param1, param1->aiContext.attacker), param1->battleMons[param1->aiContext.attacker].moveEffectsData.embargoTurns, v4);

        for (v0 = 0; v0 < 4; v0++) {
            if (v3[v0] > v3[param1->aiContext.moveSlot]) {
                break;
            }
        }

        if (v0 == 4) {
            param1->aiContext.calcTemp = 2;
        } else {
            param1->aiContext.calcTemp = 1;
        }
    } else {
        param1->aiContext.calcTemp = 0;
    }
}

static void ov14_02220C70 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    param1->aiContext.calcTemp = param1->movePrevByBattler[v0];
}

static void ov14_02220CA4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (v0 == param1->aiContext.calcTemp) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220CD4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (v0 != param1->aiContext.calcTemp) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220D04 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (BattleSystem_CompareBattlerSpeed(param0, param1, param1->aiContext.attacker, param1->aiContext.defender, 1) == v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220D48 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (BattleSystem_CompareBattlerSpeed(param0, param1, param1->aiContext.attacker, param1->aiContext.defender, 1) != v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02220D8C (BattleSystem * param0, BattleContext * param1)
{
    Party * v0;
    Pokemon * v1;
    int v2;
    u8 v3;
    u8 v4, v5;
    int v6;

    AIScript_Iter(param1, 1);

    v6 = AIScript_Read(param1);

    param1->aiContext.calcTemp = 0;

    v3 = AIScript_Battler(param1, v6);
    v0 = BattleSystem_Party(param0, v3);

    if (param0->battleType & 0x2) {
        v4 = param1->selectedPartySlot[v3];
        v5 = param1->selectedPartySlot[BattleSystem_Partner(param0, v3)];
    } else {
        v4 = v5 = param1->selectedPartySlot[v3];
    }

    for (v2 = 0; v2 < BattleSystem_PartyCount(param0, v3); v2++) {
        v1 = Party_GetPokemonBySlotIndex(v0, v2);

        if ((v2 != v4) && (v2 != v5) && (Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v1, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v1, MON_DATA_SPECIES_EGG, NULL) != 494)) {
            param1->aiContext.calcTemp++;
        }
    }
}

static void ov14_02220E68 (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->aiContext.move;
}

static void ov14_02220E84 (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->aiContext.moveTable[param1->aiContext.move].effect;
}

static void ov14_02220EA8 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2, v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].moveEffectsMask & 0x200000) {
        param1->aiContext.calcTemp = 0;
    } else if ((param1->aiContext.attacker != v0) && (v1 != 3)) {
        if (param1->aiContext.battlerAbilities[v0]) {
            param1->aiContext.calcTemp = param1->aiContext.battlerAbilities[v0];
        } else {
            if ((param1->battleMons[v0].ability == 23) || (param1->battleMons[v0].ability == 42) || (param1->battleMons[v0].ability == 71)) {
                param1->aiContext.calcTemp = param1->battleMons[v0].ability;
            } else {
                v2 = PokemonPersonalData_GetSpeciesValue(param1->battleMons[v0].species, 24);
                v3 = PokemonPersonalData_GetSpeciesValue(param1->battleMons[v0].species, 25);

                if ((v2) && (v3)) {
                    if (BattleSystem_RandNext(param0) & 1) {
                        param1->aiContext.calcTemp = v2;
                    } else {
                        param1->aiContext.calcTemp = v3;
                    }
                } else if (v2) {
                    param1->aiContext.calcTemp = v2;
                } else {
                    param1->aiContext.calcTemp = v3;
                }
            }
        }
    } else {
        param1->aiContext.calcTemp = param1->battleMons[v0].ability;
    }
}

static void ov14_02220F88 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;
    int v3;
    int v4, v5;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].moveEffectsMask & 0x200000) {
        v3 = 0;
    } else if ((v1 == 0) || (v1 == 2)) {
        if (param1->aiContext.battlerAbilities[v0]) {
            v3 = param1->aiContext.battlerAbilities[v0];
            param1->aiContext.calcTemp = param1->aiContext.battlerAbilities[v0];
        } else {
            if ((param1->battleMons[v0].ability == 23) || (param1->battleMons[v0].ability == 42) || (param1->battleMons[v0].ability == 71)) {
                v3 = param1->battleMons[v0].ability;
            } else {
                v4 = PokemonPersonalData_GetSpeciesValue(param1->battleMons[v0].species, 24);
                v5 = PokemonPersonalData_GetSpeciesValue(param1->battleMons[v0].species, 25);

                if ((v4) && (v5)) {
                    if ((v4 != v2) && (v5 != v2)) {
                        v3 = v4;
                    } else {
                        v3 = 0;
                    }
                } else if (v4) {
                    v3 = v4;
                } else {
                    v3 = v5;
                }
            }
        }
    } else {
        v3 = param1->battleMons[v0].ability;
    }

    if (v3 == 0) {
        param1->aiContext.calcTemp = 2;
    } else if (v3 == v2) {
        param1->aiContext.calcTemp = 1;
    } else {
        param1->aiContext.calcTemp = 0;
    }
}

static void ov14_02221060 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u32 v1;
    u32 v2;
    u16 v3;
    int v4;

    AIScript_Iter(param1, 1);

    param1->aiContext.calcTemp = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v1 = 40;
        v2 = 0;
        v3 = param1->battleMons[param1->aiContext.attacker].moves[v0];
        v4 = TrainerAI_MoveType(param0, param1, param1->aiContext.attacker, v3);

        if (v3) {
            v1 = BattleSystem_ApplyTypeChart(param0, param1, v3, v4, param1->aiContext.attacker, param1->aiContext.defender, v1, &v2);

            if (v1 == 60 * 2) {
                v1 = 80;
            } else if (v1 == 60 * 4) {
                v1 = 160;
            } else if (v1 == 60 / 2) {
                v1 = 20;
            } else if (v1 == 60 / 4) {
                v1 = 10;
            }

            if (v2 & (0x8 | 0x800 | 0x100000 | 0x40000)) {
                v1 = 0;
            }

            if (param1->aiContext.calcTemp < v1) {
                param1->aiContext.calcTemp = v1;
            }
        }
    }
}

static void ov14_02221114 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2;
    u32 v3;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);
    v2 = 40;
    v3 = 0;
    v2 = BattleSystem_ApplyTypeChart(param0, param1, param1->aiContext.move, TrainerAI_MoveType(param0, param1, param1->aiContext.attacker, param1->aiContext.move), param1->aiContext.attacker, param1->aiContext.defender, v2, &v3);

    if (v2 == 60 * 2) {
        v2 = 80;
    } else if (v2 == 60 * 4) {
        v2 = 160;
    } else if (v2 == 60 / 2) {
        v2 = 20;
    } else if (v2 == 60 / 4) {
        v2 = 10;
    }

    if (v3 & (0x8 | 0x800 | 0x100000 | 0x40000)) {
        v2 = 0;
    }

    if (v2 == v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_022211AC (BattleSystem * param0, BattleContext * param1)
{
    Party * v0;
    Pokemon * v1;
    int v2;
    u8 v3;
    u8 v4, v5;
    int v6;
    u32 v7;
    int v8;

    AIScript_Iter(param1, 1);

    v6 = AIScript_Read(param1);
    v7 = AIScript_Read(param1);
    v8 = AIScript_Read(param1);
    v3 = AIScript_Battler(param1, v6);

    if (param0->battleType & 0x2) {
        v4 = param1->selectedPartySlot[v3];
        v5 = param1->selectedPartySlot[BattleSystem_Partner(param0, v3)];
    } else {
        v4 = v5 = param1->selectedPartySlot[v3];
    }

    v0 = BattleSystem_Party(param0, v3);

    for (v2 = 0; v2 < BattleSystem_PartyCount(param0, v3); v2++) {
        v1 = Party_GetPokemonBySlotIndex(v0, v2);

        if ((v2 != v4) && (v2 != v5) && (Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v1, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v1, MON_DATA_SPECIES_EGG, NULL) != 494) && (Pokemon_GetValue(v1, MON_DATA_STATUS_CONDITION, NULL) & v7)) {
            AIScript_Iter(param1, v8);
            return;
        }
    }
}

static void ov14_022212A0 (BattleSystem * param0, BattleContext * param1)
{
    Party * v0;
    Pokemon * v1;
    int v2;
    u8 v3;
    u8 v4, v5;
    int v6;
    u32 v7;
    int v8;

    AIScript_Iter(param1, 1);

    v6 = AIScript_Read(param1);
    v7 = AIScript_Read(param1);
    v8 = AIScript_Read(param1);
    v3 = AIScript_Battler(param1, v6);

    if (param0->battleType & 0x2) {
        v4 = param1->selectedPartySlot[v3];
        v5 = param1->selectedPartySlot[BattleSystem_Partner(param0, v3)];
    } else {
        v4 = v5 = param1->selectedPartySlot[v3];
    }

    v0 = BattleSystem_Party(param0, v3);

    for (v2 = 0; v2 < BattleSystem_PartyCount(param0, v3); v2++) {
        v1 = Party_GetPokemonBySlotIndex(v0, v2);

        if ((v2 != v4) && (v2 != v5) && (Pokemon_GetValue(v1, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v1, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v1, MON_DATA_SPECIES_EGG, NULL) != 494) && ((Pokemon_GetValue(v1, MON_DATA_STATUS_CONDITION, NULL) & v7) == 0)) {
            AIScript_Iter(param1, v8);
            return;
        }
    }
}

static void ov14_02221394 (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);

    param1->aiContext.calcTemp = 0x0;

    if (param1->fieldConditionsMask & 0x3) {
        param1->aiContext.calcTemp = 0x2;
    }

    if (param1->fieldConditionsMask & 0xc) {
        param1->aiContext.calcTemp = 0x3;
    }

    if (param1->fieldConditionsMask & 0x30) {
        param1->aiContext.calcTemp = 0x1;
    }

    if (param1->fieldConditionsMask & 0xc0) {
        param1->aiContext.calcTemp = 0x4;
    }

    if (param1->fieldConditionsMask & 0x8000) {
        param1->aiContext.calcTemp = 0x5;
    }
}

static void ov14_0222140C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->aiContext.moveTable[param1->aiContext.move].effect == v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02221444 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->aiContext.moveTable[param1->aiContext.move].effect != v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_0222147C (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].statBoosts[v2] < v3) {
        AIScript_Iter(param1, v4);
    }
}

static void ov14_022214D0 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].statBoosts[v2] > v3) {
        AIScript_Iter(param1, v4);
    }
}

static void ov14_02221524 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].statBoosts[v2] == v3) {
        AIScript_Iter(param1, v4);
    }
}

static void ov14_02221578 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].statBoosts[v2] != v3) {
        AIScript_Iter(param1, v4);
    }
}

static void ov14_022215CC (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4, v5;
    u32 v6;
    u8 v7[6];

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);

    if (v1 == 1) {
        v3 = param1->aiContext.moveDamageRolls[param1->aiContext.moveSlot];
    } else {
        v3 = 100;
    }

    v4 = 0;

    while (sRiskyMoves[v4] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == sRiskyMoves[v4]) {
            break;
        }

        v4++;
    }

    v5 = 0;

    while (sAltPowerCalcMoves[v5] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == sAltPowerCalcMoves[v5]) {
            break;
        }

        v5++;
    }

    if ((sAltPowerCalcMoves[v5] != 0xffff) || ((param1->aiContext.moveTable[param1->aiContext.move].power > 1) && (sRiskyMoves[v4] == 0xffff))) {
        for (v0 = 0; v0 < 6; v0++) {
            v7[v0] = BattleMon_Get(param1, param1->aiContext.attacker, 10 + v0, NULL);
        }

        v6 = TrainerAI_CalcDamage(param0, param1, param1->aiContext.move, param1->battleMons[param1->aiContext.attacker].heldItem, &v7[0], param1->aiContext.attacker, Battler_Ability(param1, param1->aiContext.attacker), param1->battleMons[param1->aiContext.attacker].moveEffectsData.embargoTurns, v3);

        if (param1->battleMons[param1->aiContext.defender].curHP <= v6) {
            AIScript_Iter(param1, v2);
        }
    }
}

static void ov14_022216F8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4, v5;
    u32 v6;
    u8 v7[6];

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);

    if (v1 == 1) {
        v3 = param1->aiContext.moveDamageRolls[param1->aiContext.moveSlot];
    } else {
        v3 = 100;
    }

    v4 = 0;

    while (sRiskyMoves[v4] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == sRiskyMoves[v4]) {
            break;
        }

        v4++;
    }

    v5 = 0;

    while (sAltPowerCalcMoves[v5] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == sAltPowerCalcMoves[v5]) {
            break;
        }

        v5++;
    }

    if ((sAltPowerCalcMoves[v5] != 0xffff) || ((param1->aiContext.moveTable[param1->aiContext.move].power > 1) && (sRiskyMoves[v4] == 0xffff))) {
        for (v0 = 0; v0 < 6; v0++) {
            v7[v0] = BattleMon_Get(param1, param1->aiContext.attacker, 10 + v0, NULL);
        }

        v6 = TrainerAI_CalcDamage(param0, param1, param1->aiContext.move, param1->battleMons[param1->aiContext.attacker].heldItem, &v7[0], param1->aiContext.attacker, Battler_Ability(param1, param1->aiContext.attacker), param1->battleMons[param1->aiContext.attacker].moveEffectsData.embargoTurns, v3);

        if (param1->battleMons[param1->aiContext.defender].curHP > v6) {
            AIScript_Iter(param1, v2);
        }
    }
}

static void ov14_02221824 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u8 v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v1 = AIScript_Battler(param1, v2);

    switch (v2) {
    case 1:
        for (v0 = 0; v0 < 4; v0++) {
            if (param1->battleMons[v1].moves[v0] == v3) {
                break;
            }
        }

        if (v0 < 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    case 3:
        if (param1->battleMons[v1].curHP == 0) {
            break;
        }

        for (v0 = 0; v0 < 4; v0++) {
            if (param1->battleMons[v1].moves[v0] == v3) {
                break;
            }
        }

        if (v0 < 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    case 0:
        for (v0 = 0; v0 < 4; v0++) {
            if (param1->aiContext.battlerMoves[v1][v0] == v3) {
                break;
            }
        }

        if (v0 < 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    default:
        break;
    }
}

static void ov14_022218E4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u8 v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v1 = AIScript_Battler(param1, v2);

    switch (v2) {
    case 1:
        for (v0 = 0; v0 < 4; v0++) {
            if (param1->battleMons[v1].moves[v0] == v3) {
                break;
            }
        }

        if (v0 == 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    case 3:
        if (param1->battleMons[v1].curHP == 0) {
            break;
        }

        for (v0 = 0; v0 < 4; v0++) {
            if (param1->battleMons[v1].moves[v0] == v3) {
                break;
            }
        }

        if (v0 == 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    case 0:
        for (v0 = 0; v0 < 4; v0++) {
            if (param1->aiContext.battlerMoves[v1][v0] == v3) {
                break;
            }
        }

        if (v0 == 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    default:
        break;
    }
}

static void ov14_022219A4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u8 v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v1 = AIScript_Battler(param1, v2);

    switch (v2) {
    case 1:
        for (v0 = 0; v0 < 4; v0++) {
            if ((param1->battleMons[v1].moves[v0]) && (param1->aiContext.moveTable[param1->battleMons[v1].moves[v0]].effect == v3)) {
                break;
            }
        }

        if (v0 < 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    case 0:
        for (v0 = 0; v0 < 4; v0++) {
            if ((param1->aiContext.battlerMoves[v1][v0]) && (param1->aiContext.moveTable[param1->aiContext.battlerMoves[v1][v0]].effect == v3)) {
                break;
            }
        }

        if (v0 < 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    default:
        break;
    }
}

static void ov14_02221A48 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u8 v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v1 = AIScript_Battler(param1, v2);

    switch (v2) {
    case 1:
        for (v0 = 0; v0 < 4; v0++) {
            if ((param1->battleMons[v1].moves[v0]) && (param1->aiContext.moveTable[param1->battleMons[v1].moves[v0]].effect == v3)) {
                break;
            }
        }

        if (v0 == 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    case 0:
        for (v0 = 0; v0 < 4; v0++) {
            if ((param1->aiContext.battlerMoves[v1][v0]) && (param1->aiContext.moveTable[param1->aiContext.battlerMoves[v1][v0]].effect == v3)) {
                break;
            }
        }

        if (v0 == 4) {
            AIScript_Iter(param1, v4);
        }
        break;
    default:
        break;
    }
}

static void ov14_02221AEC (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;
    int v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    switch (v2) {
    case 0x0:
        if (param1->battleMons[v0].moveEffectsData.disabledTurns) {
            AIScript_Iter(param1, v3);
        }
        break;
    case 0x1:
        if (param1->battleMons[v0].moveEffectsData.encoredTurns) {
            AIScript_Iter(param1, v3);
        }
        break;
    default:
        break;
    }
}

static void ov14_02221B5C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    switch (v0) {
    case 0x0:
        if (param1->battleMons[param1->aiContext.attacker].moveEffectsData.disabledMove == param1->aiContext.move) {
            AIScript_Iter(param1, v1);
        }
        break;
    case 0x1:
        if (param1->battleMons[param1->aiContext.attacker].moveEffectsData.encoredMove == param1->aiContext.move) {
            AIScript_Iter(param1, v1);
        }
        break;
    default:
        break;
    }
}

static void ov14_02221BCC (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.stateFlags |= (0x1 | 0x2 | 0x8);
}

static void ov14_02221BE8 (BattleSystem * param0, BattleContext * param1)
{
    return;
}

static void ov14_02221BEC (BattleSystem * param0, BattleContext * param1)
{
    return;
}

static void ov14_02221BF0 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    param1->aiContext.calcTemp = param1->battleMons[v0].heldItem;
}

static void ov14_02221C24 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->aiContext.attacker != v0) {
        param1->aiContext.calcTemp = BattleSystem_GetItemData(param1, param1->aiContext.battlerHeldItems[v0], 1);
    } else {
        param1->aiContext.calcTemp = BattleSystem_GetItemData(param1, param1->battleMons[v0].heldItem, 1);
    }
}

static void ov14_02221C88 (BattleSystem * param0, BattleContext * param1)
{
    u16 v0;
    u8 v1;
    int v2;
    int v3;
    int v4;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = AIScript_Read(param1);
    v1 = AIScript_Battler(param1, v2);

    if ((v1 & 1) == (param1->aiContext.attacker & 1)) {
        v0 = param1->battleMons[v1].heldItem;
    } else {
        v0 = param1->aiContext.battlerHeldItems[v1];
    }

    if (v0 == v3) {
        AIScript_Iter(param1, v4);
    }
}

static void ov14_02221CF0 (BattleSystem * param0, BattleContext * param1)
{
    u32 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    if (param1->fieldConditionsMask & v0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02221D20 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    u32 v2;
    u8 v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);
    v3 = Battler_Side(param0, v0);

    switch (v2) {
    case 0x4:
        param1->aiContext.calcTemp = param1->sideConditions[v3].spikesLayers;
        break;
    case 0x400:
        param1->aiContext.calcTemp = param1->sideConditions[v3].toxicSpikesLayers;
        break;
    }
}

static void ov14_02221D88 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;
    int v3;
    Pokemon * v4;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    for (v3 = 0; v3 < BattleSystem_PartyCount(param0, v0); v3++) {
        v4 = BattleSystem_PartyPokemon(param0, v0, v3);

        if (v3 != param1->selectedPartySlot[v0]) {
            if (Pokemon_GetValue(v4, MON_DATA_CURRENT_HP, NULL) != Pokemon_GetValue(v4, MON_DATA_MAX_HP, NULL)) {
                AIScript_Iter(param1, v2);
                break;
            }
        }
    }
}

static void ov14_02221E18 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;
    int v3, v4;
    Pokemon * v5;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    for (v3 = 0; v3 < BattleSystem_PartyCount(param0, v0); v3++) {
        v5 = BattleSystem_PartyPokemon(param0, v0, v3);

        if (v3 != param1->selectedPartySlot[v0]) {
            for (v4 = 0; v4 < 4; v4++) {
                if (Pokemon_GetValue(v5, MON_DATA_MOVE1_CUR_PP + v4, NULL) != Pokemon_GetValue(v5, MON_DATA_MOVE1_MAX_PP + v4, NULL)) {
                    AIScript_Iter(param1, v2);
                    break;
                }
            }

            if (v4 != 4) {
                break;
            }
        }
    }
}

static void ov14_02221EBC (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    param1->aiContext.calcTemp = Battler_ItemFlingPower(param1, v0);
}

static void ov14_02221EEC (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->battleMons[param1->aiContext.attacker].ppCur[param1->aiContext.moveSlot];
}

static void ov14_02221F1C (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;
    int v3;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);
    v3 = Battler_CountMoves(param0, param1, v0);

    if ((param1->battleMons[v0].moveEffectsData.lastResortCount >= (v3 - 1)) && (v3 > 1)) {
        AIScript_Iter(param1, v2);
    }
}

static void ov14_02221F78 (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->aiContext.moveTable[param1->aiContext.move].class;
}

static void ov14_02221F9C (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->aiContext.moveTable[param1->movePrevByBattler[param1->aiContext.defender]].class;
}

static void ov14_02221FCC (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;
    int v2[4];
    int v3, v4;
    int v5;
    int v6;
    int v7;

    AIScript_Iter(param1, 1);

    v7 = AIScript_Read(param1);
    v6 = AIScript_Battler(param1, v7);
    v5 = BattleSystem_MaxBattlers(param0);

    for (v0 = 0; v0 < v5; v0++) {
        v2[v0] = v0;
    }

    for (v0 = 0; v0 < v5 - 1; v0++) {
        for (v1 = v0 + 1; v1 < v5; v1++) {
            v3 = v2[v0];
            v4 = v2[v1];

            if (BattleSystem_CompareBattlerSpeed(param0, param1, v3, v4, 1)) {
                v2[v0] = v4;
                v2[v1] = v3;
            }
        }
    }

    for (v0 = 0; v0 < v5; v0++) {
        if (v2[v0] == v6) {
            param1->aiContext.calcTemp = v0;
            break;
        }
    }
}

static void ov14_02222090 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    param1->aiContext.calcTemp = param1->totalTurns - param1->battleMons[v0].moveEffectsData.fakeOutTurnNumber;
}

static void ov14_022220CC (BattleSystem * param0, BattleContext * param1)
{
    int v0, v1;
    int v2;
    int v3;
    int v4;
    s32 v5;
    s32 v6;
    s32 v7[4];
    u16 v8[4];
    u8 v9[6];
    Pokemon * v10;

    AIScript_Iter(param1, 1);

    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);
    v4 = param1->aiContext.attacker;

    for (v0 = 0; v0 < 6; v0++) {
        v9[v0] = BattleMon_Get(param1, v4, 10 + v0, NULL);
    }

    v5 = TrainerAI_CalcAllDamage(param0, param1, param1->aiContext.attacker, &param1->battleMons[v4].moves[0], &v7[0], param1->battleMons[v4].heldItem, &v9[0], Battler_Ability(param1, v4), param1->battleMons[v4].moveEffectsData.embargoTurns, v2);

    for (v0 = 0; v0 < BattleSystem_PartyCount(param0, v4); v0++) {
        if (v0 != param1->selectedPartySlot[v4]) {
            v10 = BattleSystem_PartyPokemon(param0, v4, v0);

            if ((Pokemon_GetValue(v10, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v10, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v10, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                for (v1 = 0; v1 < 4; v1++) {
                    v8[v1] = Pokemon_GetValue(v10, MON_DATA_MOVE1 + v1, NULL);
                }

                for (v1 = 0; v1 < 6; v1++) {
                    v9[v1] = Pokemon_GetValue(v10, MON_DATA_HP_IV + v1, NULL);
                }

                v6 = TrainerAI_CalcAllDamage(param0, param1, param1->aiContext.attacker, &v8[0], &v7[0], Pokemon_GetValue(v10, MON_DATA_HELD_ITEM, NULL), &v9[0], Pokemon_GetValue(v10, MON_DATA_ABILITY, NULL), MON_DATA_PERSONALITY, v2);

                if (v6 > v5) {
                    AIScript_Iter(param1, v3);
                    break;
                }
            }
        }
    }
}

static void ov14_02222260 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);

    if (AI_HasSuperEffectiveMove(param0, param1, param1->aiContext.attacker, 1) == 1) {
        AIScript_Iter(param1, v0);
    }
}

static void ov14_02222298 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    s32 v6;
    s32 v7;
    s32 v8[4];
    u8 v9[6];

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Read(param1);

    for (v0 = 0; v0 < 6; v0++) {
        v9[v0] = BattleMon_Get(param1, param1->aiContext.attacker, 10 + v0, NULL);
    }

    v6 = TrainerAI_CalcAllDamage(param0, param1, param1->aiContext.attacker, &param1->battleMons[param1->aiContext.attacker].moves[0], &v8[0], param1->battleMons[param1->aiContext.attacker].heldItem, &v9[0], Battler_Ability(param1, param1->aiContext.attacker), param1->battleMons[param1->aiContext.attacker].moveEffectsData.embargoTurns, v2);
    v4 = AIScript_Battler(param1, v1);

    if (v2 == 1) {
        v5 = param1->aiContext.moveDamageRolls[param1->aiContext.moveSlot];
    } else {
        v5 = 100;
    }

    v7 = TrainerAI_CalcDamage(param0, param1, param1->movePrevByBattler[v4], param1->battleMons[v4].heldItem, &v9[0], v4, Battler_Ability(param1, v4), param1->battleMons[v4].moveEffectsData.embargoTurns, v5);

    if (v7 > v6) {
        AIScript_Iter(param1, v3);
    }
}

static void ov14_022223B0 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Battler(param1, v1);

    param1->aiContext.calcTemp = 0;

    for (v0 = 0x0; v0 < 0x8; v0++) {
        if (param1->battleMons[v2].statBoosts[v0] > 6) {
            param1->aiContext.calcTemp += param1->battleMons[v2].statBoosts[v0] - 6;
        }
    }
}

static void ov14_02222400 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);
    v2 = AIScript_Battler(param1, v0);

    param1->aiContext.calcTemp = param1->battleMons[v2].statBoosts[v1] - param1->battleMons[param1->aiContext.attacker].statBoosts[v1];
}

static void ov14_02222450 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Battler(param1, v0);

    TrainerAI_GetStats(param1, v3, &v4, &v5, v1);

    if (v4 < v5) {
        AIScript_Iter(param1, v2);
    }
}

static void ov14_022224A4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Battler(param1, v0);

    TrainerAI_GetStats(param1, v3, &v4, &v5, v1);

    if (v4 > v5) {
        AIScript_Iter(param1, v2);
    }
}

static void ov14_022224F8 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v3 = AIScript_Battler(param1, v0);

    TrainerAI_GetStats(param1, v3, &v4, &v5, v1);

    if (v4 == v5) {
        AIScript_Iter(param1, v2);
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

static void ov14_02222648 (BattleSystem * param0, BattleContext * param1)
{
    int v0 = 0, v1, v2;
    s32 v3;
    s32 v4[4];
    int v5;
    u8 v6[6];
    int v7;

    AIScript_Iter(param1, 1);

    v5 = AIScript_Read(param1);
    v1 = 0;

    while (sRiskyMoves[v1] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == sRiskyMoves[v1]) {
            break;
        }

        v1++;
    }

    v2 = 0;

    while (sAltPowerCalcMoves[v2] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == sAltPowerCalcMoves[v2]) {
            break;
        }

        v2++;
    }

    if ((sAltPowerCalcMoves[v2] != 0xffff) || ((param1->aiContext.moveTable[param1->aiContext.move].power > 1) && (sRiskyMoves[v1] == 0xffff))) {
        v7 = param1->aiContext.attacker;

        for (v1 = 0; v1 < 2; v1++) {
            for (v0 = 0; v0 < 6; v0++) {
                v6[v0] = BattleMon_Get(param1, v7, 10 + v0, NULL);
            }

            TrainerAI_CalcAllDamage(param0, param1, v7, &param1->battleMons[v7].moves[0], &v4[0], param1->battleMons[v7].heldItem, &v6[0], Battler_Ability(param1, v7), param1->battleMons[v7].moveEffectsData.embargoTurns, v5);

            v7 = BattleSystem_Partner(param0, param1->aiContext.attacker);

            if (v1 == 0) {
                v3 = v4[param1->aiContext.moveSlot];
            }

            for (v0 = 0; v0 < 4; v0++) {
                if (v4[v0] > v3) {
                    break;
                }
            }

            if (v0 == 4) {
                param1->aiContext.calcTemp = 2;
            } else {
                param1->aiContext.calcTemp = 1;
                break;
            }
        }
    } else {
        param1->aiContext.calcTemp = 0;
    }
}

static void ov14_022227A4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    GF_ASSERT(v0 != 1);
    GF_ASSERT(v0 != 0);

    v2 = AIScript_Battler(param1, v0);

    if (param1->battlersSwitchingMask & FlagIndex(v2)) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_022227F4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    GF_ASSERT(v0 != 1);
    GF_ASSERT(v0 != 0);

    v2 = AIScript_Battler(param1, v0);

    if ((param1->battlersSwitchingMask & FlagIndex(v2)) == 0) {
        AIScript_Iter(param1, v1);
    }
}

static void ov14_02222844 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    param1->aiContext.calcTemp = param1->battleMons[v0].gender;
}

static void ov14_0222287C (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].moveEffectsData.fakeOutTurnNumber < param1->totalTurns) {
        param1->aiContext.calcTemp = 0;
    } else {
        param1->aiContext.calcTemp = 1;
    }
}

static void ov14_022228C8 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    param1->aiContext.calcTemp = param1->battleMons[v0].moveEffectsData.stockpileCount;
}

static void ov14_02222900 (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param0->battleType;
}

static void ov14_02222918 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    param1->aiContext.calcTemp = param1->recycleItem[v0];
}

static void ov14_0222294C (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->aiContext.moveTable[param1->aiContext.calcTemp].type;
}

static void ov14_0222296C (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->aiContext.moveTable[param1->aiContext.calcTemp].power;
}

static void ov14_0222298C (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);
    param1->aiContext.calcTemp = param1->aiContext.moveTable[param1->aiContext.calcTemp].effect;
}

static void ov14_022229AC (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if ((param1->moveProtect[v0] != 182) && (param1->moveProtect[v0] != 197) && (param1->moveProtect[v0] != 203)) {
        param1->aiContext.calcTemp = 0;
    } else {
        param1->aiContext.calcTemp = param1->battleMons[v0].moveEffectsData.protectSuccessTurns;
    }
}

static void ov14_02222A08 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    AIScript_Iter(param1, 1);
    v0 = AIScript_Read(param1);
    AIScript_PushCursor(param0, param1, v0);
}

static void ov14_02222A28 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    AIScript_Iter(param1, 1);
    v0 = AIScript_Read(param1);
    AIScript_Iter(param1, v0);
}

static void ov14_02222A44 (BattleSystem * param0, BattleContext * param1)
{
    AIScript_Iter(param1, 1);

    if (AIScript_PopCursor(param0, param1) == 1) {
        return;
    }

    param1->aiContext.stateFlags |= 0x1;
}

static void ov14_02222A6C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);
    v1 = AIScript_Read(param1);

    switch (v0) {
    case 0x0:
        if (param1->battleMons[param1->aiContext.attacker].level > param1->battleMons[param1->aiContext.defender].level) {
            AIScript_Iter(param1, v1);
        }
        break;
    case 0x1:
        if (param1->battleMons[param1->aiContext.attacker].level < param1->battleMons[param1->aiContext.defender].level) {
            AIScript_Iter(param1, v1);
        }
        break;
    case 0x2:
        if (param1->battleMons[param1->aiContext.attacker].level == param1->battleMons[param1->aiContext.defender].level) {
            AIScript_Iter(param1, v1);
        }
        break;
    default:
        break;
    }
}

static void ov14_02222B10 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    AIScript_Iter(param1, 1);
    v0 = AIScript_Read(param1);

    if (param1->battleMons[param1->aiContext.defender].moveEffectsData.tauntedTurns) {
        AIScript_Iter(param1, v0);
    }
}

static void ov14_02222B48 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);

    if (param1->battleMons[param1->aiContext.defender].moveEffectsData.tauntedTurns == 0) {
        AIScript_Iter(param1, v0);
    }
}

static void ov14_02222B80 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    AIScript_Iter(param1, 1);

    v0 = AIScript_Read(param1);

    if ((param1->aiContext.attacker & 1) == (param1->aiContext.defender & 1)) {
        AIScript_Iter(param1, v0);
    }
}

static void ov14_02222BB4 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;
    int v2;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v2 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    if (param1->battleMons[v0].moveEffectsData.flashFire) {
        AIScript_Iter(param1, v2);
    }
}

static void ov14_02222BF8 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;
    int v1;

    AIScript_Iter(param1, 1);

    v1 = AIScript_Read(param1);
    v0 = AIScript_Battler(param1, v1);

    param1->aiContext.calcTemp = Battler_Ability(param1, v0);
}

/**
 * @brief Push an address for the AI script onto the cursor stack.
 * 
 * @param battleSys 
 * @param battleCtx 
 * @param address   Address to be pushed onto the cursor stack.
 */
static void AIScript_PushCursor(BattleSystem *battleSys, BattleContext *battleCtx, int address)
{
    AI_CONTEXT.scriptStackPointer[AI_CONTEXT.scriptStackSize++] = battleCtx->aiScriptCursor;
    AIScript_Iter(battleCtx, address);

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
 * @param embargo       TRUE if the attacker is under Embargo; FALSE otherwise.
 * @param varyDamage    If TRUE, apply random damage variance to each calculation.
 * @return              The highest damage value among all considered moves.
 */
static s32 TrainerAI_CalcAllDamage(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, u16 *moves, s32 *damageVals, u16 heldItem, u8 *ivs, int ability, BOOL embargo, BOOL varyDamage)
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

            damageVals[i] = TrainerAI_CalcDamage(battleSys, battleCtx, moves[i], heldItem, ivs, attacker, ability, embargo, damageRoll);
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
 * @param move      The move being used
 * @param heldItem  The attacker's held item.
 * @param ivs       The attacker's IVs. Used for Hidden Power calculation.  
 * @param attacker  The attacker's ID.
 * @param ability   The attacker's ability.
 * @param embargo   Flag representing if the attacker is under Embargo or not.
 * @param variance  Variance factor applied to the damage value. This is presumed
 *                  to be a value in the range [85..100].
 * @return Calculated damage value.
 */
static s32 TrainerAI_CalcDamage(BattleSystem *battleSys, BattleContext *battleCtx, u16 move, u16 heldItem, u8 *ivs, int attacker, int ability, BOOL embargo, u8 variance)
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
        if (ability != ABILITY_KLUTZ && embargo == FALSE) {
            power = BattleSystem_GetItemData(battleCtx, heldItem, ITEM_PARAM_NATURAL_GIFT_POWER);

            if (power) {
                type = BattleSystem_GetItemData(battleCtx, heldItem, ITEM_PARAM_NATURAL_GIFT_TYPE);
            } else {
                type = TYPE_NORMAL;
            }
        }
        break;

    case MOVE_JUDGMENT:
        if (ability != ABILITY_KLUTZ && embargo == FALSE) {
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

            if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != 0
                    && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_NONE
                    && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_EGG
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
        defender1 = BATTLER_PLAYER_SLOT_1;
        defender2 = BATTLER_PLAYER_SLOT_2;
    } else {
        defender1 = BATTLER_PLAYER_SLOT_1;
        defender2 = BATTLER_PLAYER_SLOT_1;
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

        if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != 0
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_NONE
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_EGG
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

        if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != 0
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_NONE
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_EGG
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

        if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != 0
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_NONE
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_EGG
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

        if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != 0
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_NONE
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_EGG
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

        if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != 0
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_NONE
                && Pokemon_GetValue(mon, MON_DATA_SPECIES_EGG, NULL) != SPECIES_EGG
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
    BattleContext *battleCtx;

    battleCtx = battleSys->battleCtx;
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

                        if (Pokemon_GetValue(mon, MON_DATA_CURRENT_HP, NULL) != 0
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

static BOOL TrainerAI_ShouldUseItem (BattleSystem * param0, int param1)
{
    int v0;
    u8 v1 = 0;
    u16 v2;
    u8 v3;
    BOOL v4;
    u8 * v5;
    Party * v6;
    Pokemon * v7;
    BattleContext * v8;

    v8 = param0->battleCtx;
    v8->aiContext.usedItemCondition[param1 >> 1] = 0;

    v4 = 0;

    if (((param0->battleType & ((0x2 | 0x1) | 0x8 | 0x40)) == ((0x2 | 0x1) | 0x8 | 0x40)) && (BattleSystem_BattlerSlot(param0, param1) == 4)) {
        return v4;
    }

    if (v8->battleMons[param1].moveEffectsMask & 0x4000000) {
        return v4;
    }

    v6 = BattleSystem_Party(param0, param1);

    for (v0 = 0; v0 < Party_GetCurrentCount(v6); v0++) {
        v7 = Party_GetPokemonBySlotIndex(v6, v0);

        if ((Pokemon_GetValue(v7, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 494)) {
            v1++;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if ((v0 == 0) || (v1 <= v8->aiContext.trainerItemCounts[param1 >> 1] - v0 + 1)) {
            v2 = v8->aiContext.trainerItems[param1 >> 1][v0];

            if (v2 == 0) {
                continue;
            }

            if (v2 == 23) {
                if ((v8->battleMons[param1].curHP < (v8->battleMons[param1].maxHP / 4)) && (v8->battleMons[param1].curHP)) {
                    v8->aiContext.usedItemType[param1 >> 1] = 0;
                    v4 = 1;
                }
            } else if (BattleSystem_GetItemData(v8, v2, 38)) {
                v3 = BattleSystem_GetItemData(v8, v2, 54);

                if (v3) {
                    if ((v8->battleMons[param1].curHP) && ((v8->battleMons[param1].curHP < (v8->battleMons[param1].maxHP / 4)) || ((v8->battleMons[param1].maxHP - v8->battleMons[param1].curHP) > v3))) {
                        v8->aiContext.usedItemType[param1 >> 1] = 1;
                        v4 = 1;
                    }
                }
            } else if (BattleSystem_GetItemData(v8, v2, 15)) {
                if (v8->battleMons[param1].status & 0x7) {
                    v8->aiContext.usedItemCondition[param1 >> 1] |= FlagIndex(5);
                    v8->aiContext.usedItemType[param1 >> 1] = 2;
                    v4 = 1;
                }
            } else if (BattleSystem_GetItemData(v8, v2, 16)) {
                if ((v8->battleMons[param1].status & 0x8) || (v8->battleMons[param1].status & 0x80)) {
                    v8->aiContext.usedItemCondition[param1 >> 1] |= FlagIndex(4);
                    v8->aiContext.usedItemType[param1 >> 1] = 2;
                    v4 = 1;
                }
            } else if (BattleSystem_GetItemData(v8, v2, 17)) {
                if (v8->battleMons[param1].status & 0x10) {
                    v8->aiContext.usedItemCondition[param1 >> 1] |= FlagIndex(3);
                    v8->aiContext.usedItemType[param1 >> 1] = 2;
                    v4 = 1;
                }
            } else if (BattleSystem_GetItemData(v8, v2, 18)) {
                if (v8->battleMons[param1].status & 0x20) {
                    v8->aiContext.usedItemCondition[param1 >> 1] |= FlagIndex(2);
                    v8->aiContext.usedItemType[param1 >> 1] = 2;
                    v4 = 1;
                }
            } else if (BattleSystem_GetItemData(v8, v2, 19)) {
                if (v8->battleMons[param1].status & 0x40) {
                    v8->aiContext.usedItemCondition[param1 >> 1] |= FlagIndex(1);
                    v8->aiContext.usedItemType[param1 >> 1] = 2;
                    v4 = 1;
                }
            } else if (BattleSystem_GetItemData(v8, v2, 20)) {
                if (v8->battleMons[param1].statusVolatile & 0x7) {
                    v8->aiContext.usedItemCondition[param1 >> 1] |= FlagIndex(0);
                    v8->aiContext.usedItemType[param1 >> 1] = 2;
                    v4 = 1;
                }
            } else if ((v8->battleMons[param1].moveEffectsData.fakeOutTurnNumber - v8->totalTurns) >= 0) {
                if (BattleSystem_GetItemData(v8, v2, 27)) {
                    v8->aiContext.usedItemCondition[param1 >> 1] = 0x1;
                    v8->aiContext.usedItemType[param1 >> 1] = 3;
                    v4 = 1;
                } else if (BattleSystem_GetItemData(v8, v2, 28)) {
                    v8->aiContext.usedItemCondition[param1 >> 1] = 0x2;
                    v8->aiContext.usedItemType[param1 >> 1] = 3;
                    v4 = 1;
                } else if (BattleSystem_GetItemData(v8, v2, 29)) {
                    v8->aiContext.usedItemCondition[param1 >> 1] = 0x4;
                    v8->aiContext.usedItemType[param1 >> 1] = 3;
                    v4 = 1;
                } else if (BattleSystem_GetItemData(v8, v2, 30)) {
                    v8->aiContext.usedItemCondition[param1 >> 1] = 0x5;
                    v8->aiContext.usedItemType[param1 >> 1] = 3;
                    v4 = 1;
                } else if (BattleSystem_GetItemData(v8, v2, 31)) {
                    v8->aiContext.usedItemCondition[param1 >> 1] = 0x3;
                    v8->aiContext.usedItemType[param1 >> 1] = 3;
                    v4 = 1;
                } else if (BattleSystem_GetItemData(v8, v2, 32)) {
                    v8->aiContext.usedItemCondition[param1 >> 1] = 0x6;
                    v8->aiContext.usedItemType[param1 >> 1] = 3;
                    v4 = 1;
                } else if ((BattleSystem_GetItemData(v8, v2, 22)) && ((v8->sideConditionsMask[1] & 0x40) == 0)) {
                    v8->aiContext.usedItemType[param1 >> 1] = 4;
                    v4 = 1;
                }
            } else {
                v8->aiContext.usedItemType[param1 >> 1] = 5;
            }

            if (v4 == 1) {
                v8->aiContext.usedItem[param1 >> 1] = v2;
                v8->aiContext.trainerItems[param1 >> 1][v0] = 0;
            }
        }
    }

    return v4;
}
