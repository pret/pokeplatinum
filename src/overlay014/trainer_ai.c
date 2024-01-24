#include <nitro.h>
#include <string.h>

#include "pch/global_pch.h"
#include "assert.h"

#include "consts/generated/c/abilities.h"
#include "constants/battle.h"
#include "constants/items.h"
#include "constants/battle/trainer_ai.h"

#include "struct_decls/struct_party_decl.h"
#include "struct_decls/battle_system.h"

#include "struct_defs/battle_system.h"
#include "battle/ai_context.h"
#include "battle/battle_context.h"
#include "battle/battle_controller.h"

#include "flags.h"
#include "pokemon.h"
#include "party.h"
#include "battle/trainer_ai.h"
#include "overlay016/ov16_0223DF00.h"
#include "battle/battle_lib.h"

static const u16 Unk_ov14_0222EE90[] = {
	0x7,
	0x8,
	0x27,
	0x4B,
	0x50,
	0x91,
	0x97,
	0xA1,
	0xAA,
	0xB6,
	0xBE,
	0xF8,
	0x10D,
	0xffff
};

static const u16 Unk_ov14_0222EE78[] = {
	0x87,
	0xDB,
	0xDE,
	0x10C,
	0x29,
	0x57,
	0x58,
	0x79,
	0x7B,
	0x82,
	0xC4,
	0xffff
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

static s32 ov14_02222D7C(BattleSystem * param0, BattleContext * param1, int param2, u16 * param3, s32 * param4, u16 param5, u8 * param6, int param7, int param8, int param9);
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
static s32 TrainerAI_CalcDamage(BattleSystem * param0, BattleContext * param1, u16 param2, u16 param3, u8 * param4, int param5, int param6, int param7, u8 param8);
static int ov14_0222327C(BattleSystem * param0, BattleContext * param1, int param2, int param3);
static void ov14_0222254C(BattleContext * param0, int param1, int * param2, int * param3, int param4);
static BOOL ov14_022233F4(BattleContext * param0, int param1);
static BOOL ov14_0222342C(BattleSystem * param0, BattleContext * param1, int param2);
static BOOL ov14_022235F0(BattleSystem * param0, BattleContext * param1, int param2);
static BOOL ov14_02223B34(BattleSystem * param0, BattleContext * param1, int param2, u8 param3);
static BOOL ov14_02223C8C(BattleSystem * param0, BattleContext * param1, int param2);
static BOOL ov14_02223E10(BattleSystem * param0, BattleContext * param1, int param2, u32 param3, u8 param4);
static BOOL ov14_02224070(BattleSystem * param0, BattleContext * param1, int param2);
static BOOL ov14_0222416C(BattleSystem * param0, BattleContext * param1, int param2);
static BOOL TrainerAI_ShouldSwitch(BattleSystem * param0, BattleContext * param1, int param2);
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

    while (Unk_ov14_0222EE90[v1] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == Unk_ov14_0222EE90[v1]) {
            break;
        }

        v1++;
    }

    v2 = 0;

    while (Unk_ov14_0222EE78[v2] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == Unk_ov14_0222EE78[v2]) {
            break;
        }

        v2++;
    }

    if ((Unk_ov14_0222EE78[v2] != 0xffff) || ((param1->aiContext.moveTable[param1->aiContext.move].power > 1) && (Unk_ov14_0222EE90[v1] == 0xffff))) {
        for (v0 = 0; v0 < 6; v0++) {
            v5[v0] = BattleMon_Get(param1, param1->aiContext.attacker, 10 + v0, NULL);
        }

        ov14_02222D7C(param0, param1, param1->aiContext.attacker, &param1->battleMons[param1->aiContext.attacker].moves[0], &v3[0], param1->battleMons[param1->aiContext.attacker].heldItem, &v5[0], Battler_Ability(param1, param1->aiContext.attacker), param1->battleMons[param1->aiContext.attacker].moveEffectsData.embargoTurns, v4);

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
        v4 = ov14_0222327C(param0, param1, param1->aiContext.attacker, v3);

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
    v2 = BattleSystem_ApplyTypeChart(param0, param1, param1->aiContext.move, ov14_0222327C(param0, param1, param1->aiContext.attacker, param1->aiContext.move), param1->aiContext.attacker, param1->aiContext.defender, v2, &v3);

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

    while (Unk_ov14_0222EE90[v4] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == Unk_ov14_0222EE90[v4]) {
            break;
        }

        v4++;
    }

    v5 = 0;

    while (Unk_ov14_0222EE78[v5] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == Unk_ov14_0222EE78[v5]) {
            break;
        }

        v5++;
    }

    if ((Unk_ov14_0222EE78[v5] != 0xffff) || ((param1->aiContext.moveTable[param1->aiContext.move].power > 1) && (Unk_ov14_0222EE90[v4] == 0xffff))) {
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

    while (Unk_ov14_0222EE90[v4] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == Unk_ov14_0222EE90[v4]) {
            break;
        }

        v4++;
    }

    v5 = 0;

    while (Unk_ov14_0222EE78[v5] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == Unk_ov14_0222EE78[v5]) {
            break;
        }

        v5++;
    }

    if ((Unk_ov14_0222EE78[v5] != 0xffff) || ((param1->aiContext.moveTable[param1->aiContext.move].power > 1) && (Unk_ov14_0222EE90[v4] == 0xffff))) {
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

    v5 = ov14_02222D7C(param0, param1, param1->aiContext.attacker, &param1->battleMons[v4].moves[0], &v7[0], param1->battleMons[v4].heldItem, &v9[0], Battler_Ability(param1, v4), param1->battleMons[v4].moveEffectsData.embargoTurns, v2);

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

                v6 = ov14_02222D7C(param0, param1, param1->aiContext.attacker, &v8[0], &v7[0], Pokemon_GetValue(v10, MON_DATA_HELD_ITEM, NULL), &v9[0], Pokemon_GetValue(v10, MON_DATA_ABILITY, NULL), MON_DATA_PERSONALITY, v2);

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

    if (ov14_02223B34(param0, param1, param1->aiContext.attacker, 1) == 1) {
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

    v6 = ov14_02222D7C(param0, param1, param1->aiContext.attacker, &param1->battleMons[param1->aiContext.attacker].moves[0], &v8[0], param1->battleMons[param1->aiContext.attacker].heldItem, &v9[0], Battler_Ability(param1, param1->aiContext.attacker), param1->battleMons[param1->aiContext.attacker].moveEffectsData.embargoTurns, v2);
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

    ov14_0222254C(param1, v3, &v4, &v5, v1);

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

    ov14_0222254C(param1, v3, &v4, &v5, v1);

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

    ov14_0222254C(param1, v3, &v4, &v5, v1);

    if (v4 == v5) {
        AIScript_Iter(param1, v2);
    }
}

static void ov14_0222254C (BattleContext * param0, int param1, int * param2, int * param3, int param4)
{
    switch (param4) {
    case 0x0:
        param2[0] = param0->battleMons[param0->aiContext.attacker].curHP;
        param3[0] = param0->battleMons[param1].curHP;
        break;
    case 0x1:
        param2[0] = param0->battleMons[param0->aiContext.attacker].attack;
        param3[0] = param0->battleMons[param1].attack;
        break;
    case 0x2:
        param2[0] = param0->battleMons[param0->aiContext.attacker].defense;
        param3[0] = param0->battleMons[param1].defense;
        break;
    case 0x4:
        param2[0] = param0->battleMons[param0->aiContext.attacker].spAttack;
        param3[0] = param0->battleMons[param1].spAttack;
        break;
    case 0x5:
        param2[0] = param0->battleMons[param0->aiContext.attacker].spDefense;
        param3[0] = param0->battleMons[param1].spDefense;
        break;
    case 0x3:
        param2[0] = param0->battleMons[param0->aiContext.attacker].speed;
        param3[0] = param0->battleMons[param1].speed;
        break;
    default:
        GF_ASSERT(0);
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

    while (Unk_ov14_0222EE90[v1] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == Unk_ov14_0222EE90[v1]) {
            break;
        }

        v1++;
    }

    v2 = 0;

    while (Unk_ov14_0222EE78[v2] != 0xffff) {
        if (param1->aiContext.moveTable[param1->aiContext.move].effect == Unk_ov14_0222EE78[v2]) {
            break;
        }

        v2++;
    }

    if ((Unk_ov14_0222EE78[v2] != 0xffff) || ((param1->aiContext.moveTable[param1->aiContext.move].power > 1) && (Unk_ov14_0222EE90[v1] == 0xffff))) {
        v7 = param1->aiContext.attacker;

        for (v1 = 0; v1 < 2; v1++) {
            for (v0 = 0; v0 < 6; v0++) {
                v6[v0] = BattleMon_Get(param1, v7, 10 + v0, NULL);
            }

            ov14_02222D7C(param0, param1, v7, &param1->battleMons[v7].moves[0], &v4[0], param1->battleMons[v7].heldItem, &v6[0], Battler_Ability(param1, v7), param1->battleMons[v7].moveEffectsData.embargoTurns, v5);

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

static s32 ov14_02222D7C (BattleSystem * param0, BattleContext * param1, int param2, u16 * param3, s32 * param4, u16 param5, u8 * param6, int param7, int param8, int param9)
{
    int v0, v1;
    int v2;
    int v3;
    int v4, v5;
    u32 v6;
    s32 v7;
    u8 v8;

    v7 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v1 = 0;

        while (Unk_ov14_0222EE90[v1] != 0xffff) {
            if (param1->aiContext.moveTable[param3[v0]].effect == Unk_ov14_0222EE90[v1]) {
                break;
            }

            v1++;
        }

        v2 = 0;

        while (Unk_ov14_0222EE78[v2] != 0xffff) {
            if (param1->aiContext.moveTable[param3[v0]].effect == Unk_ov14_0222EE78[v2]) {
                break;
            }

            v2++;
        }

        if ((Unk_ov14_0222EE78[v2] != 0xffff) || ((param3[v0] != 0) && (Unk_ov14_0222EE90[v1] == 0xffff) && (param1->aiContext.moveTable[param3[v0]].power > 1))) {
            if (param9 == 1) {
                v8 = param1->aiContext.moveDamageRolls[v0];
            } else {
                v8 = 100;
            }

            param4[v0] = TrainerAI_CalcDamage(param0, param1, param3[v0], param5, param6, param2, param7, param8, v8);
        } else {
            param4[v0] = 0;
        }
    }

    for (v0 = 0; v0 < 4; v0++) {
        if (v7 < param4[v0]) {
            v7 = param4[v0];
        }
    }

    return v7;
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

static int ov14_0222327C (BattleSystem * param0, BattleContext * param1, int param2, int param3)
{
    int v0;

    switch (param3) {
    case 363:
        v0 = Battler_NaturalGiftType(param1, param2);
        break;
    case 449:
        switch (Battler_HeldItemEffect(param1, param2)) {
        case 131:
            v0 = 1;
            break;
        case 134:
            v0 = 2;
            break;
        case 132:
            v0 = 3;
            break;
        case 133:
            v0 = 4;
            break;
        case 137:
            v0 = 5;
            break;
        case 136:
            v0 = 6;
            break;
        case 138:
            v0 = 7;
            break;
        case 141:
            v0 = 8;
            break;
        case 126:
            v0 = 10;
            break;
        case 127:
            v0 = 11;
            break;
        case 129:
            v0 = 12;
            break;
        case 128:
            v0 = 13;
            break;
        case 135:
            v0 = 14;
            break;
        case 130:
            v0 = 15;
            break;
        case 139:
            v0 = 16;
            break;
        case 140:
            v0 = 17;
            break;
        default:
            v0 = 0;
            break;
        }
        break;
    case 237:
        v0 = ((param1->battleMons[param2].hpIV & 1) >> 0) | ((param1->battleMons[param2].attackIV & 1) << 1) | ((param1->battleMons[param2].defenseIV & 1) << 2) | ((param1->battleMons[param2].speedIV & 1) << 3) | ((param1->battleMons[param2].spAttackIV & 1) << 4) | ((param1->battleMons[param2].spDefenseIV & 1) << 5);
        v0 = (v0 * 15 / 63) + 1;

        if (v0 >= 9) {
            v0++;
        }
        break;
    case 311:
        if ((BattleSystem_CountAbility(param0, param1, 8, 0, 13) == 0) && (BattleSystem_CountAbility(param0, param1, 8, 0, 76) == 0)) {
            if (param1->fieldConditionsMask & (0x3 | 0xc | 0x30 | 0xc0 | 0x8000)) {
                if (param1->fieldConditionsMask & 0x3) {
                    v0 = 11;
                }

                if (param1->fieldConditionsMask & 0xc) {
                    v0 = 5;
                }

                if (param1->fieldConditionsMask & 0x30) {
                    v0 = 10;
                }

                if (param1->fieldConditionsMask & 0xc0) {
                    v0 = 15;
                }
            }
        }
        break;
    default:
        v0 = 0;
        break;
    }

    return v0;
}

static BOOL ov14_022233F4 (BattleContext * param0, int param1)
{
    if ((param0->battleMons[param1].moveEffectsMask & 0x20) && (param0->battleMons[param1].moveEffectsData.perishSongTurns == 0)) {
        param0->aiSwitchedPartySlot[param1] = 6;
        return 1;
    }

    return 0;
}

static BOOL ov14_0222342C (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0, v1;
    u16 v2;
    int v3;
    u32 v4;
    Pokemon * v5;

    if (BattleSystem_BattleType(param0) & 0x2) {
        return 0;
    }

    if (param1->battleMons[param2 ^ 1].ability == 25) {
        for (v0 = 0; v0 < 4; v0++) {
            v2 = param1->battleMons[param2].moves[v0];
            v3 = ov14_0222327C(param0, param1, param2, v2);

            if (v2) {
                v4 = 0;
                BattleSystem_ApplyTypeChart(param0, param1, v2, v3, param2, param2 ^ 1, 0, &v4);

                if (v4 & 0x2) {
                    return 0;
                }
            }
        }

        for (v0 = 0; v0 < BattleSystem_PartyCount(param0, param2); v0++) {
            v5 = BattleSystem_PartyPokemon(param0, param2, v0);

            if ((Pokemon_GetValue(v5, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v5, MON_DATA_SPECIES_EGG, NULL) != 494) && (v0 != param1->selectedPartySlot[param2])) {
                for (v1 = 0; v1 < 4; v1++) {
                    v2 = Pokemon_GetValue(v5, MON_DATA_MOVE1 + v1, NULL);
                    v3 = Move_CalcVariableType(param0, param1, v5, v2);

                    if (v2) {
                        v4 = 0;
                        BattleSystem_CalcEffectiveness(param1, v2, v3, Pokemon_GetValue(v5, MON_DATA_ABILITY, NULL), Battler_Ability(param1, param2 ^ 1), Battler_HeldItemEffect(param1, param2 ^ 1), BattleMon_Get(param1, param2 ^ 1, 27, NULL), BattleMon_Get(param1, param2 ^ 1, 28, NULL), &v4);

                        if (v4 & 0x2) {
                            if ((BattleSystem_RandNext(param0) % 3) < 2) {
                                param1->aiSwitchedPartySlot[param2] = v0;
                                return 1;
                            }
                        }
                    }
                }
            }
        }
    }

    return 0;
}

static BOOL ov14_022235F0 (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0, v1;
    u8 v2, v3;
    u8 v4, v5;
    u16 v6;
    int v7;
    u32 v8;
    int v9, v10;
    int v11;
    Pokemon * v12;

    if (BattleSystem_BattleType(param0) & 0x2) {
        v2 = 0;
        v3 = 2;
    } else {
        v2 = 0;
        v3 = 0;
    }

    v11 = 0;

    for (v0 = 0; v0 < 4; v0++) {
        v6 = param1->battleMons[param2].moves[v0];
        v7 = ov14_0222327C(param0, param1, param2, v6);

        if ((v6) && (param1->aiContext.moveTable[v6].power)) {
            v11++;
            v8 = 0;

            if (param1->battleMons[v2].curHP) {
                BattleSystem_ApplyTypeChart(param0, param1, v6, v7, param2, v2, 0, &v8);
            }

            if ((v8 & 0x8) == 0) {
                return 0;
            }

            v8 = 0;

            if (param1->battleMons[v3].curHP) {
                BattleSystem_ApplyTypeChart(param0, param1, v6, v7, param2, v3, 0, &v8);
            }

            if ((v8 & 0x8) == 0) {
                return 0;
            }
        }
    }

    if (v11 < 2) {
        return 0;
    }

    v4 = param2;

    if ((BattleSystem_BattleType(param0) & 0x10) || (BattleSystem_BattleType(param0) & 0x8)) {
        v5 = v4;
    } else {
        v5 = BattleSystem_Partner(param0, param2);
    }

    v9 = 0;
    v10 = BattleSystem_PartyCount(param0, param2);

    for (v0 = v9; v0 < v10; v0++) {
        v12 = BattleSystem_PartyPokemon(param0, param2, v0);

        if ((Pokemon_GetValue(v12, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v12, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v12, MON_DATA_SPECIES_EGG, NULL) != 494) && (v0 != param1->selectedPartySlot[v4]) && (v0 != param1->selectedPartySlot[v5]) && (v0 != param1->aiSwitchedPartySlot[v4]) && (v0 != param1->aiSwitchedPartySlot[v5])) {
            for (v1 = 0; v1 < 4; v1++) {
                v6 = Pokemon_GetValue(v12, MON_DATA_MOVE1 + v1, NULL);
                v7 = Move_CalcVariableType(param0, param1, v12, v6);

                if ((v6) && (param1->aiContext.moveTable[v6].power)) {
                    v8 = 0;

                    if (param1->battleMons[v2].curHP) {
                        BattleSystem_CalcEffectiveness(param1, v6, v7, Pokemon_GetValue(v12, MON_DATA_ABILITY, NULL), Battler_Ability(param1, v2), Battler_HeldItemEffect(param1, v2), BattleMon_Get(param1, v2, 27, NULL), BattleMon_Get(param1, v2, 28, NULL), &v8);
                    }

                    if (v8 & 0x2) {
                        if ((BattleSystem_RandNext(param0) % 3) < 2) {
                            param1->aiSwitchedPartySlot[param2] = v0;
                            return 1;
                        }
                    }

                    v8 = 0;

                    if (param1->battleMons[v3].curHP) {
                        BattleSystem_CalcEffectiveness(param1, v6, v7, Pokemon_GetValue(v12, MON_DATA_ABILITY, NULL), Battler_Ability(param1, v3), Battler_HeldItemEffect(param1, v3), BattleMon_Get(param1, v3, 27, NULL), BattleMon_Get(param1, v3, 28, NULL), &v8);
                    }

                    if (v8 & 0x2) {
                        if ((BattleSystem_RandNext(param0) % 3) < 2) {
                            param1->aiSwitchedPartySlot[param2] = v0;
                            return 1;
                        }
                    }
                }
            }
        }
    }

    for (v0 = v9; v0 < v10; v0++) {
        v12 = BattleSystem_PartyPokemon(param0, param2, v0);

        if ((Pokemon_GetValue(v12, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v12, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v12, MON_DATA_SPECIES_EGG, NULL) != 494) && (v0 != param1->selectedPartySlot[v4]) && (v0 != param1->selectedPartySlot[v5]) && (v0 != param1->aiSwitchedPartySlot[v4]) && (v0 != param1->aiSwitchedPartySlot[v5])) {
            for (v1 = 0; v1 < 4; v1++) {
                v6 = Pokemon_GetValue(v12, MON_DATA_MOVE1 + v1, NULL);
                v7 = Move_CalcVariableType(param0, param1, v12, v6);

                if ((v6) && (param1->aiContext.moveTable[v6].power)) {
                    v8 = 0;

                    if (param1->battleMons[v2].curHP) {
                        BattleSystem_CalcEffectiveness(param1, v6, v7, Pokemon_GetValue(v12, MON_DATA_ABILITY, NULL), Battler_Ability(param1, v2), Battler_HeldItemEffect(param1, v2), BattleMon_Get(param1, v2, 27, NULL), BattleMon_Get(param1, v2, 28, NULL), &v8);
                    }

                    if (v8 == 0) {
                        if ((BattleSystem_RandNext(param0) % 2) == 0) {
                            param1->aiSwitchedPartySlot[param2] = v0;
                            return 1;
                        }
                    }

                    v8 = 0;

                    if (param1->battleMons[v3].curHP) {
                        BattleSystem_CalcEffectiveness(param1, v6, v7, Pokemon_GetValue(v12, MON_DATA_ABILITY, NULL), Battler_Ability(param1, v3), Battler_HeldItemEffect(param1, v3), BattleMon_Get(param1, v3, 27, NULL), BattleMon_Get(param1, v3, 28, NULL), &v8);
                    }

                    if (v8 == 0) {
                        if ((BattleSystem_RandNext(param0) % 2) == 0) {
                            param1->aiSwitchedPartySlot[param2] = v0;
                            return 1;
                        }
                    }
                }
            }
        }
    }

    return 0;
}

static BOOL ov14_02223B34 (BattleSystem * param0, BattleContext * param1, int param2, u8 param3)
{
    int v0;
    u32 v1;
    u8 v2;
    u8 v3;
    u16 v4;
    int v5;

    v3 = BattleSystem_BattlerSlot(param0, param2) ^ 1;
    v2 = BattleSystem_BattlerOfType(param0, v3);

    if ((param1->battlersSwitchingMask & FlagIndex(v2)) == 0) {
        for (v0 = 0; v0 < 4; v0++) {
            v4 = param1->battleMons[param2].moves[v0];
            v5 = ov14_0222327C(param0, param1, param2, v4);

            if (v4) {
                v1 = 0;
                BattleSystem_ApplyTypeChart(param0, param1, v4, v5, param2, v2, 0, &v1);

                if (v1 & 0x2) {
                    if (param3) {
                        return 1;
                    } else {
                        if (BattleSystem_RandNext(param0) % 10 != 0) {
                            return 1;
                        }
                    }
                }
            }
        }
    }

    if ((BattleSystem_BattleType(param0) & 0x2) == 0) {
        return 0;
    }

    v2 = BattleSystem_Partner(param0, v2);

    if ((param1->battlersSwitchingMask & FlagIndex(v2)) == 0) {
        for (v0 = 0; v0 < 4; v0++) {
            v4 = param1->battleMons[param2].moves[v0];
            v5 = ov14_0222327C(param0, param1, param2, v4);

            if (v4) {
                v1 = 0;
                BattleSystem_ApplyTypeChart(param0, param1, v4, v5, param2, v2, 0, &v1);

                if (v1 & 0x2) {
                    if (param3) {
                        return 1;
                    } else {
                        if (BattleSystem_RandNext(param0) % 10 != 0) {
                            return 1;
                        }
                    }
                }
            }
        }
    }

    return 0;
}

static BOOL ov14_02223C8C (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    u8 v1, v2;
    u8 v3;
    u8 v4;
    u8 v5;
    int v6, v7;
    Pokemon * v8;

    if ((ov14_02223B34(param0, param1, param2, 1)) && (BattleSystem_RandNext(param0) % 3 != 0)) {
        return 0;
    }

    if (param1->moveHit[param2] == 0) {
        return 0;
    }

    if (param1->aiContext.moveTable[param1->moveHit[param2]].power == 0) {
        return 0;
    }

    v3 = param1->aiContext.moveTable[param1->moveHit[param2]].type;

    if (v3 == 10) {
        v5 = 18;
    } else if (v3 == 11) {
        v5 = 11;
    } else if (v3 == 13) {
        v5 = 10;
    } else {
        return 0;
    }

    if (Battler_Ability(param1, param2) == v5) {
        return 0;
    }

    v1 = param2;

    if ((BattleSystem_BattleType(param0) & 0x10) || (BattleSystem_BattleType(param0) & 0x8)) {
        v2 = v1;
    } else {
        v2 = BattleSystem_Partner(param0, param2);
    }

    v6 = 0;
    v7 = BattleSystem_PartyCount(param0, param2);

    for (v0 = v6; v0 < v7; v0++) {
        v8 = BattleSystem_PartyPokemon(param0, param2, v0);

        if ((Pokemon_GetValue(v8, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v8, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v8, MON_DATA_SPECIES_EGG, NULL) != 494) && (v0 != param1->selectedPartySlot[v1]) && (v0 != param1->selectedPartySlot[v2]) && (v0 != param1->aiSwitchedPartySlot[v1]) && (v0 != param1->aiSwitchedPartySlot[v2])) {
            v4 = Pokemon_GetValue(v8, MON_DATA_ABILITY, NULL);

            if ((v5 == v4) && (BattleSystem_RandNext(param0) & 1)) {
                param1->aiSwitchedPartySlot[param2] = v0;
                return 1;
            }
        }
    }

    return 0;
}

static BOOL ov14_02223E10 (BattleSystem * param0, BattleContext * param1, int param2, u32 param3, u8 param4)
{
    int v0, v1;
    u8 v2, v3;
    u16 v4;
    int v5;
    u32 v6;
    int v7, v8;
    Pokemon * v9;

    if ((param1->moveHit[param2] == 0) || (param1->moveHitBattler[param2] == 0xff)) {
        return 0;
    }

    if (param1->aiContext.moveTable[param1->moveHit[param2]].power == 0) {
        return 0;
    }

    v2 = param2;

    if ((BattleSystem_BattleType(param0) & 0x10) || (BattleSystem_BattleType(param0) & 0x8)) {
        v3 = v2;
    } else {
        v3 = BattleSystem_Partner(param0, param2);
    }

    v7 = 0;
    v8 = BattleSystem_PartyCount(param0, param2);

    for (v0 = v7; v0 < v8; v0++) {
        v9 = BattleSystem_PartyPokemon(param0, param2, v0);

        if ((Pokemon_GetValue(v9, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v9, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v9, MON_DATA_SPECIES_EGG, NULL) != 494) && (v0 != param1->selectedPartySlot[v2]) && (v0 != param1->selectedPartySlot[v3]) && (v0 != param1->aiSwitchedPartySlot[v2]) && (v0 != param1->aiSwitchedPartySlot[v3])) {
            v6 = 0;
            v5 = ov14_0222327C(param0, param1, param1->moveHitBattler[param2], param1->moveHit[param2]);

            BattleSystem_CalcEffectiveness(param1, param1->moveHit[param2], v5, Battler_Ability(param1, param1->moveHitBattler[param2]), Pokemon_GetValue(v9, MON_DATA_ABILITY, NULL), BattleSystem_GetItemData(param1, Pokemon_GetValue(v9, MON_DATA_HELD_ITEM, NULL), 1), Pokemon_GetValue(v9, MON_DATA_TYPE_1, NULL), Pokemon_GetValue(v9, MON_DATA_TYPE_2, NULL), &v6);

            if (v6 & param3) {
                for (v1 = 0; v1 < 4; v1++) {
                    v4 = Pokemon_GetValue(v9, MON_DATA_MOVE1 + v1, NULL);
                    v5 = Move_CalcVariableType(param0, param1, v9, v4);

                    if (v4) {
                        v6 = 0;
                        BattleSystem_CalcEffectiveness(param1, v4, v5, Pokemon_GetValue(v9, MON_DATA_ABILITY, NULL), Battler_Ability(param1, param1->moveHitBattler[param2]), Battler_HeldItemEffect(param1, param1->moveHitBattler[param2]), BattleMon_Get(param1, param1->moveHitBattler[param2], 27, NULL), BattleMon_Get(param1, param1->moveHitBattler[param2], 28, NULL), &v6);

                        if (v6 & 0x2) {
                            if ((BattleSystem_RandNext(param0) % param4) == 0) {
                                param1->aiSwitchedPartySlot[param2] = v0;
                                return 1;
                            }
                        }
                    }
                }
            }
        }
    }

    return 0;
}

static BOOL ov14_02224070 (BattleSystem * param0, BattleContext * param1, int param2)
{
    if (((param1->battleMons[param2].status & 0x7) == 0) || (Battler_Ability(param1, param2) != 30) || (param1->battleMons[param2].curHP < (param1->battleMons[param2].maxHP / 2))) {
        return 0;
    }

    if (param1->moveHit[param2] == 0) {
        if (BattleSystem_RandNext(param0) & 1) {
            param1->aiSwitchedPartySlot[param2] = 6;
            return 1;
        }
    }

    if (param1->aiContext.moveTable[param1->moveHit[param2]].power == 0) {
        if (BattleSystem_RandNext(param0) & 1) {
            param1->aiSwitchedPartySlot[param2] = 6;
            return 1;
        }
    }

    if (ov14_02223E10(param0, param1, param2, 0x8, 1)) {
        return 1;
    }

    if (ov14_02223E10(param0, param1, param2, 0x4, 1)) {
        return 1;
    }

    if (BattleSystem_RandNext(param0) & 1) {
        param1->aiSwitchedPartySlot[param2] = 6;
        return 1;
    }

    return 0;
}

static BOOL ov14_0222416C (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    u8 v1;

    v1 = 0;

    for (v0 = 0x0; v0 < 0x8; v0++) {
        if (param1->battleMons[param2].statBoosts[v0] > 6) {
            v1 += param1->battleMons[param2].statBoosts[v0] - 6;
        }
    }

    return v1 >= 4;
}

static BOOL TrainerAI_ShouldSwitch (BattleSystem * param0, BattleContext * param1, int param2)
{
    int v0;
    int v1;
    u8 v2, v3, v4;
    int v5, v6;
    Pokemon * v7;

    if ((param1->battleMons[param2].statusVolatile & (0xe000 | 0x4000000)) || (param1->battleMons[param2].moveEffectsMask & 0x400) || (BattleSystem_CountAbility(param0, param1, 2, param2, 23)) || (BattleSystem_CountAbility(param0, param1, 2, param2, 71)) || ((BattleSystem_CountAbility(param0, param1, 6, param2, 42) && ((BattleMon_Get(param1, param2, 27, NULL) == 8) || ((BattleMon_Get(param1, param2, 28, NULL) == 8)))))) {
        return 0;
    }

    v1 = 0;
    v2 = param2;

    if ((BattleSystem_BattleType(param0) & 0x10) || (BattleSystem_BattleType(param0) & 0x8)) {
        v3 = v2;
    } else {
        v3 = BattleSystem_Partner(param0, param2);
    }

    v5 = 0;
    v6 = BattleSystem_PartyCount(param0, param2);

    for (v0 = v5; v0 < v6; v0++) {
        v7 = BattleSystem_PartyPokemon(param0, param2, v0);

        if ((Pokemon_GetValue(v7, MON_DATA_CURRENT_HP, NULL) != 0) && (Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 494) && (v0 != param1->selectedPartySlot[v2]) && (v0 != param1->selectedPartySlot[v3]) && (v0 != param1->aiSwitchedPartySlot[v2]) && (v0 != param1->aiSwitchedPartySlot[v3])) {
            v1++;
        }
    }

    if (v1) {
        if (ov14_022233F4(param1, param2)) {
            return 1;
        }

        if (ov14_0222342C(param0, param1, param2)) {
            return 1;
        }

        if (ov14_022235F0(param0, param1, param2)) {
            return 1;
        }

        if (ov14_02223C8C(param0, param1, param2)) {
            return 1;
        }

        if (ov14_02224070(param0, param1, param2)) {
            return 1;
        }

        if (ov14_02223B34(param0, param1, param2, 0)) {
            return 0;
        }

        if (ov14_0222416C(param0, param1, param2)) {
            return 0;
        }

        if (ov14_02223E10(param0, param1, param2, 0x8, 2)) {
            return 1;
        }

        if (ov14_02223E10(param0, param1, param2, 0x4, 3)) {
            return 1;
        }
    }

    return 0;
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
            // Make sure that this is not a post-KO switch
            if (battleCtx->aiSwitchedPartySlot[battler] == 6) {
                // But use the post-KO switch logic to determine who to switch in
                // If there is no strong switch score, pick the first valid battler
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
