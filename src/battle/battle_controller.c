#include "battle/battle_controller.h"

#include "nitro/types.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/narc.h"
#include "constants/pokemon.h"
#include "constants/species.h"
#include "generated/abilities.h"
#include "generated/game_records.h"
#include "generated/trainer_classes.h"

#include "struct_decls/battle_system.h"
#include "struct_defs/trainer.h"

#include "battle/ai_context.h"
#include "battle/battle_context.h"
#include "battle/battle_display.h"
#include "battle/battle_io.h"
#include "battle/battle_lib.h"
#include "battle/battle_message.h"
#include "battle/battle_script.h"
#include "battle/common.h"
#include "battle/ov16_0223B140.h"
#include "battle/ov16_0223DF00.h"
#include "battle/struct_ov16_0224DDA8.h"
#include "battle/struct_ov16_0225BFFC_decl.h"

#include "bag.h"
#include "communication_system.h"
#include "flags.h"
#include "heap.h"
#include "item.h"
#include "move_table.h"
#include "party.h"
#include "pokemon.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "trainer_info.h"

#include "res/battle/scripts/sub_seq.naix.h"

enum BattleControllerState {
    STATE_PROCESSING = 0,
    STATE_BREAK_OUT,
    STATE_DONE
};

typedef void (*BattleControlFunc)(BattleSystem *, BattleContext *);

static void BattleController_InitBattleMons(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_StartEncounter(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_TrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_ShowBattleMon(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_InitCommandSelection(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_CommandSelectionInput(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_CalcTurnOrder(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_CheckPreMoveActions(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_BranchActions(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_CheckFieldConditions(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_CheckMonConditions(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_CheckSideConditions(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_TurnEnd(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_FightCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_ItemCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_SwitchCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_FleeCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_SafariBallCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_SafariBaitCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_SafariRockCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_SafariFleeCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_ExecScript(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_BeforeMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_TryMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_PrimaryEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_CheckMoveFailure(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_UseMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_UpdateHP(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_AfterMoveMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_LeftoverState29(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_AfterMoveEffects(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_LoopMultiHit(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_LeftoverState32(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_LoopWhileFainted(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_LoopSpreadMoves(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_FaintAfterSelfdestruct(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_TriggerAfterHitEffects(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_LeftoverState37(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_UpdateMoveBuffers(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_MoveEnd(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_CheckAnyFainted(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_HandleResult(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_ScreenWipe(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_EndFight(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_EndWait(BattleSystem *battleSys, BattleContext *battleCtx);

static int BattleController_CheckObedience(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq);
static BOOL BattleController_DecrementPP(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_HasNoTarget(BattleSystem *battleSys, BattleContext *battleCtx);
static int BattleController_CheckTypeChart(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_CheckStatusDisruption(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_TriggerImmunityAbilities(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_LoadQuickClawCheck(BattleSystem *battleSys, BattleContext *battleCtx);
static int BattleController_CheckMoveHitAccuracy(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move);
static int BattleController_CheckMoveHitOverrides(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move);
static BOOL BattleController_MoveStolen(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_ReplaceFainted(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_CheckBattleOver(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_MustSelectTarget(BattleSystem *battleSys, BattleContext *battleCtx, u8 battler, u32 battleType, int *range, int moveSlot, u32 *target);
static void BattleController_ClearFlags(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_AnyFainted(BattleContext *battleCtx, int nextCmd, int nextCmdNoFainted, BOOL onlyFaint);
static BOOL BattleController_AnyExpPayout(BattleContext *battleCtx, int nextCmd, int nextCmdNoExp);
static void BattleController_UpdateFlagsWhenHit(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_TriggerAfterMoveHitEffects(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_CriticalMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_FollowupMessage(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_RageBuilding(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_CheckExtraFlinch(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_ToggleSemiInvulnMons(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_InitAI(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleSystem_RecordCommand(BattleSystem *battleSys, BattleContext *battleCtx);

extern u32 gTrainerAITable[];

static const BattleControlFunc sBattleControlCommands[] = {
    BattleController_InitBattleMons,
    BattleController_StartEncounter,
    BattleController_TrainerMessage,
    BattleController_ShowBattleMon,
    BattleController_InitCommandSelection,
    BattleController_CommandSelectionInput,
    BattleController_CalcTurnOrder,
    BattleController_CheckPreMoveActions,
    BattleController_BranchActions,
    BattleController_CheckFieldConditions,
    BattleController_CheckMonConditions,
    BattleController_CheckSideConditions,
    BattleController_TurnEnd,
    BattleController_FightCommand,
    BattleController_ItemCommand,
    BattleController_SwitchCommand,
    BattleController_FleeCommand,
    BattleController_SafariBallCommand,
    BattleController_SafariBaitCommand,
    BattleController_SafariRockCommand,
    BattleController_SafariFleeCommand,
    BattleController_ExecScript,
    BattleController_BeforeMove,
    BattleController_TryMove,
    BattleController_PrimaryEffect,
    BattleController_CheckMoveFailure,
    BattleController_UseMove,
    BattleController_UpdateHP,
    BattleController_AfterMoveMessage,
    BattleController_LeftoverState29,
    BattleController_AfterMoveEffects,
    BattleController_LoopMultiHit,
    BattleController_LeftoverState32,
    BattleController_LoopWhileFainted,
    BattleController_LoopSpreadMoves,
    BattleController_FaintAfterSelfdestruct,
    BattleController_TriggerAfterHitEffects,
    BattleController_LeftoverState37,
    BattleController_UpdateMoveBuffers,
    BattleController_MoveEnd,
    BattleController_CheckAnyFainted,
    BattleController_HandleResult,
    BattleController_ScreenWipe,
    BattleController_EndFight,
    BattleController_EndWait
};

void *BattleContext_New(BattleSystem *battleSys)
{
    BattleContext *battleContext = Heap_Alloc(HEAP_ID_BATTLE, sizeof(BattleContext));

    MI_CpuClearFast(battleContext, sizeof(BattleContext));

    BattleContext_Init(battleContext);
    BattleContext_InitCounters(battleSys, battleContext);
    BattleController_InitAI(battleSys, battleContext);

    MoveTable_Load(&battleContext->aiContext.moveTable);
    battleContext->aiContext.itemTable = ItemTable_Load(HEAP_ID_BATTLE);

    return battleContext;
}

BOOL BattleController_Main(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->battleEndFlag == FALSE
        && BattleSystem_ResultMask(battleSys)
        && (BattleSystem_ResultMask(battleSys) & BATTLE_RESULT_TRY_FLEE_WAIT) == FALSE) {
        battleCtx->command = BATTLE_CONTROL_RESULT;
    }

    sBattleControlCommands[battleCtx->command](battleSys, battleCtx);

    if (battleCtx->command == BATTLE_CONTROL_END_WAIT) {
        return TRUE;
    }

    return FALSE;
}

void BattleContext_Free(BattleContext *battleCtx)
{
    Heap_Free(battleCtx->aiContext.itemTable);
    Heap_Free(battleCtx);
}

void BattleController_CheckMoveHit(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move)
{
    BattleController_CheckMoveHitAccuracy(battleSys, battleCtx, attacker, defender, move);
    BattleController_CheckMoveHitOverrides(battleSys, battleCtx, attacker, defender, move);
}

static void BattleController_InitBattleMons(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    for (int i = 0; i < maxBattlers; i++) {
        BattleSystem_InitBattleMon(battleSys, battleCtx, i, battleCtx->selectedPartySlot[i]);
    }

    battleCtx->hpTemp = battleCtx->battleMons[BATTLER_THEM].curHP;
    battleCtx->command = BATTLE_CONTROL_START_ENCOUNTER;
}

static void BattleController_StartEncounter(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(subscript_start_encounter);
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_TRAINER_MESSAGE;
}

static void BattleController_TrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (BattleSystem_CheckTrainerMessage(battleSys, battleCtx)) {
        LOAD_SUBSEQ(subscript_trainer_message);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_SHOW_BATTLE_MON;
    } else {
        battleCtx->command = BATTLE_CONTROL_SHOW_BATTLE_MON;
    }

    BattleSystem_SortMonSpeedOrder(battleSys, battleCtx);
}

static void BattleController_ShowBattleMon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int nextSeq = BattleSystem_TriggerEffectOnSwitch(battleSys, battleCtx);

    if (nextSeq) {
        LOAD_SUBSEQ(nextSeq);
        battleCtx->commandNext = battleCtx->command;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    } else {
        BattleSystem_SortMonSpeedOrder(battleSys, battleCtx);
        BattleSystem_ShowStopPlaybackButton(battleSys);
        battleCtx->command = BATTLE_CONTROL_INIT_COMMAND_SELECTION;
    }
}

static void BattleController_InitCommandSelection(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i; // this has to be declared up here to match
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    for (i = 0; i < maxBattlers; i++) {
        battleCtx->curCommandState[i] = 0;
        battleCtx->battleMons[i].moveEffectsTemp = battleCtx->battleMons[i].moveEffectsMask;
        battleCtx->recordedCommandFlags[i] = 0;
    }

    BattleSystem_SetCommandSelectionFlags(battleSys, 0);
    BattleSystem_LoadFightOverlay(battleSys, TRUE);

    battleCtx->command = BATTLE_CONTROL_COMMAND_SELECTION_INPUT;
}

enum CommandSelectionState {
    COMMAND_SELECTION_INIT = 0,
    COMMAND_SELECTION_SELECT,
    COMMAND_SELECTION_SELECT2,
    COMMAND_SELECTION_MOVE_SELECT_INIT,
    COMMAND_SELECTION_MOVE_SELECT,
    COMMAND_SELECTION_TARGET_SELECT_INIT,
    COMMAND_SELECTION_TARGET_SELECT,
    COMMAND_SELECTION_ITEM_SELECT_INIT,
    COMMAND_SELECTION_ITEM_SELECT,
    COMMAND_SELECTION_PARTY_SELECT_INIT,
    COMMAND_SELECTION_PARTY_SELECT,
    COMMAND_SELECTION_RUN_SELECT_INIT,
    COMMAND_SELECTION_RUN_SELECT,
    COMMAND_SELECTION_WAIT,
    COMMAND_SELECTION_END,
    COMMAND_SELECTION_ALERT_MESSAGE_WAIT,
    COMMAND_SELECTION_STRUGGLE_MESSAGE,
    COMMAND_SELECTION_CLEAR_TOUCH_SCREEN,
};

static inline BOOL SingleControllerForSide(BattleContext *battleCtx, int battler, int side)
{
    return battler == side + 2 && battleCtx->curCommandState[side] != COMMAND_SELECTION_END;
}

static void BattleController_CommandSelectionInput(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    int battleType = BattleSystem_BattleType(battleSys);
    int battlersDone = 0;
    BattleMessage msg;

    for (int i = 0; i < maxBattlers; i++) {
        switch (battleCtx->curCommandState[i]) {
        case COMMAND_SELECTION_INIT:
            // No need to reinitialize if the same controller acts for both battlers on a side.
            if ((battleType & BATTLE_TYPE_DOUBLES)
                && (battleType & BATTLE_TYPE_2vs2) == FALSE
                && (SingleControllerForSide(battleCtx, i, BATTLE_SIDE_PLAYER)
                    || SingleControllerForSide(battleCtx, i, BATTLE_SIDE_ENEMY))) {
                break;
            }

            if (battleCtx->battlersSwitchingMask & FlagIndex(i)) {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
                battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_MOVE_END;
                break;
            } else if (Battler_CanPickCommand(battleCtx, i) == FALSE) {
                battleCtx->turnFlags[i].ppDecremented = TRUE;
                battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
                battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_FIGHT;
                break;
            }

            // Don't let slow AI processing delay the player from picking their action for the turn
            if (Battler_BootState(BattleSystem_BattlerData(battleSys, i)) == BATTLER_BOOT_STATE_AI || battleCtx->totalTurns) {
                BattleIO_SetCommandSelection(battleSys, battleCtx, i, battleCtx->selectedPartySlot[i]);
                battleCtx->curCommandState[i] = COMMAND_SELECTION_SELECT;
            } else {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_SELECT2;
            }

            break;

        case COMMAND_SELECTION_SELECT2:
            int j;
            for (j = 0; j < maxBattlers; j++) {
                if (j == i || Battler_BootState(BattleSystem_BattlerData(battleSys, j)) != BATTLER_BOOT_STATE_AI) {
                    continue;
                }

                if (battleCtx->curCommandState[j] != COMMAND_SELECTION_END) {
                    break;
                }
            }

            if (j == maxBattlers) {
                BattleIO_SetCommandSelection(battleSys, battleCtx, i, battleCtx->selectedPartySlot[i]);
                battleCtx->curCommandState[i] = COMMAND_SELECTION_SELECT;
            } else {
                break;
            }
            // fall-through

        case COMMAND_SELECTION_SELECT:
            if (BattleContext_IOBufferVal(battleCtx, i)) {
                battleCtx->battlerActions[i][BATTLE_ACTION_SELECTED_COMMAND] = battleCtx->ioBuffer[i][0];

                if (battleType & BATTLE_TYPE_PAL_PARK) {
                    switch (BattleContext_IOBufferVal(battleCtx, i)) {
                    case PLAYER_INPUT_PAL_PARK_BALL:
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_CLEAR_TOUCH_SCREEN;
                        battleCtx->nextCommandState[i] = BATTLE_CONTROL_FIGHT;
                        battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_SAFARI_BALL;
                        break;

                    case PLAYER_INPUT_PAL_PARK_RUN:
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_CLEAR_TOUCH_SCREEN;
                        battleCtx->nextCommandState[i] = BATTLE_CONTROL_FIGHT;
                        battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_RUN;
                        break;
                    }

                    break;
                } else if (battleType & BATTLE_TYPE_SAFARI) {
                    switch (BattleContext_IOBufferVal(battleCtx, i)) {
                    case PLAYER_INPUT_SAFARI_BALL:
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_CLEAR_TOUCH_SCREEN;
                        battleCtx->nextCommandState[i] = COMMAND_SELECTION_WAIT;
                        battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_SAFARI_BALL;
                        break;

                    case PLAYER_INPUT_SAFARI_BAIT:
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_CLEAR_TOUCH_SCREEN;
                        battleCtx->nextCommandState[i] = COMMAND_SELECTION_WAIT;
                        battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_SAFARI_BAIT;
                        break;

                    case PLAYER_INPUT_SAFARI_ROCK:
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_CLEAR_TOUCH_SCREEN;
                        battleCtx->nextCommandState[i] = COMMAND_SELECTION_WAIT;
                        battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_SAFARI_ROCK;
                        break;

                    case PLAYER_INPUT_SAFARI_RUN:
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_CLEAR_TOUCH_SCREEN;
                        battleCtx->nextCommandState[i] = COMMAND_SELECTION_WAIT;
                        battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_RUN;
                        break;

                    case PLAYER_INPUT_SAFARI_WAIT:
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_CLEAR_TOUCH_SCREEN;
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
                        battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_SAFARI_WAIT;
                        break;
                    }

                    break;
                }

                if (BattleContext_IOBufferVal(battleCtx, i) != PLAYER_INPUT_CANCEL) {
                    battleCtx->recordedCommandFlags[i] |= 0x1; // TODO: Constant
                }

                switch (BattleContext_IOBufferVal(battleCtx, i)) {
                case PLAYER_INPUT_FIGHT:
                    if (BattleSystem_CheckInvalidMoves(battleSys, battleCtx, i, 0, CHECK_INVALID_ALL) == STRUGGLING_ALL) {
                        // Don't let the player select a move if they are out of PP on all moves
                        battleCtx->turnFlags[i].struggling = TRUE;

                        if (BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_RECORDING) {
                            battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
                        } else {
                            battleCtx->curCommandState[i] = COMMAND_SELECTION_CLEAR_TOUCH_SCREEN;
                            battleCtx->nextCommandState[i] = COMMAND_SELECTION_STRUGGLE_MESSAGE;
                        }
                    } else if (battleCtx->battleMons[i].moveEffectsData.encoredMove) {
                        // Don't let the player select a move if they are under the effect of Encore
                        battleCtx->moveSlot[i] = battleCtx->battleMons[i].moveEffectsData.encoredMoveSlot;
                        battleCtx->moveSelected[i] = battleCtx->battleMons[i].moveEffectsData.encoredMove;
                        battleCtx->battlerActions[i][BATTLE_ACTION_TEMP_VALUE] = 0;

                        if (BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_RECORDING) {
                            battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
                        } else {
                            battleCtx->curCommandState[i] = COMMAND_SELECTION_CLEAR_TOUCH_SCREEN;
                            battleCtx->nextCommandState[i] = COMMAND_SELECTION_WAIT;
                        }
                    } else {
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_MOVE_SELECT_INIT;
                    }

                    battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_FIGHT;
                    break;

                case PLAYER_INPUT_ITEM:
                    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_NO_ITEMS) {
                        msg.id = 593; // "Items can’t be used here."
                        msg.tags = TAG_NONE;
                        BattleIO_SetAlertMessage(battleSys, i, msg);

                        battleCtx->curCommandState[i] = COMMAND_SELECTION_ALERT_MESSAGE_WAIT;
                        battleCtx->nextCommandState[i] = COMMAND_SELECTION_INIT;
                    } else {
                        battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_ITEM;
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_ITEM_SELECT_INIT;
                    }
                    break;

                case PLAYER_INPUT_PARTY:
                    battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_PARTY;
                    battleCtx->curCommandState[i] = COMMAND_SELECTION_PARTY_SELECT_INIT;
                    break;

                case PLAYER_INPUT_RUN:
                    battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_RUN;
                    battleCtx->curCommandState[i] = COMMAND_SELECTION_RUN_SELECT_INIT;
                    break;

                case PLAYER_INPUT_CANCEL:
                    if (battleType & BATTLE_TYPE_LINK) {
                        BattleIO_StopGaugeAnimation(battleSys, i);
                        battleCtx->curCommandState[i] = BATTLE_CONTROL_GET_BATTLE_MON;
                        battleCtx->curCommandState[BattleSystem_Partner(battleSys, i)] = BATTLE_CONTROL_GET_BATTLE_MON;
                    } else if ((battleType & BATTLE_TYPE_DOUBLES) && i == BATTLER_PLAYER_2) {
                        BattleIO_StopGaugeAnimation(battleSys, i);
                        battleCtx->curCommandState[BATTLER_PLAYER_1] = BATTLE_CONTROL_GET_BATTLE_MON;
                        battleCtx->curCommandState[BATTLER_PLAYER_2] = BATTLE_CONTROL_GET_BATTLE_MON;
                    }

                    break;
                }
            }
            break;

        case COMMAND_SELECTION_MOVE_SELECT_INIT:
            BattleIO_ShowMoveSelectScreen(battleSys, battleCtx, i);
            battleCtx->curCommandState[i] = COMMAND_SELECTION_MOVE_SELECT;
            // fall-through

        case COMMAND_SELECTION_MOVE_SELECT:
            if (BattleContext_IOBufferVal(battleCtx, i) == PLAYER_INPUT_CANCEL) {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_INIT;
            } else if (BattleContext_IOBufferVal(battleCtx, i)) {
                if ((battleCtx->ioBuffer[i][0] - 1) == 4) {
                    battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_RUN;
                    battleCtx->curCommandState[i] = COMMAND_SELECTION_RUN_SELECT_INIT;
                    break;
                } else if (BattleSystem_CanUseMove(battleSys, battleCtx, i, battleCtx->ioBuffer[i][0] - 1, &msg) == FALSE) {
                    if (BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_RECORDING) {
                        BattleSystem_SetStopRecording(battleSys, 1);
                        Battle_RecordingStopped(battleSys, BattleSystem_Context(battleSys));
                    } else {
                        BattleIO_SetAlertMessage(battleSys, i, msg);
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_ALERT_MESSAGE_WAIT;
                        battleCtx->nextCommandState[i] = COMMAND_SELECTION_MOVE_SELECT_INIT;
                    }
                } else {
                    battleCtx->battlerActions[i][2] = battleCtx->ioBuffer[i][0];
                    battleCtx->moveSlot[i] = battleCtx->ioBuffer[i][0] - 1;
                    battleCtx->moveSelected[i] = battleCtx->battleMons[i].moves[battleCtx->moveSlot[i]];
                    battleCtx->curCommandState[i] = COMMAND_SELECTION_TARGET_SELECT_INIT;
                    battleCtx->recordedCommandFlags[i] |= 0x2;
                }
            }
            break;

        case COMMAND_SELECTION_TARGET_SELECT_INIT:
            int target;
            if (BattleController_MustSelectTarget(battleSys, battleCtx, i, battleType, &target, battleCtx->moveSlot[i], &battleCtx->battlerActions[i][1])) {
                BattleIO_ShowTargetSelection(battleSys, battleCtx, target, i);
                battleCtx->curCommandState[i] = COMMAND_SELECTION_TARGET_SELECT;
            } else {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
            }
            break;

        case COMMAND_SELECTION_TARGET_SELECT:
            if (BattleContext_IOBufferVal(battleCtx, i) == PLAYER_INPUT_CANCEL) {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_MOVE_SELECT_INIT;
            } else if (BattleContext_IOBufferVal(battleCtx, i)) {
                battleCtx->battlerActions[i][1] = battleCtx->ioBuffer[i][0] - 1;
                battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;

                battleCtx->recordedCommandFlags[i] |= 0x4;
            }
            break;

        case COMMAND_SELECTION_ITEM_SELECT_INIT:
            BattleIO_ShowBagScreen(battleSys, battleCtx, i);
            battleCtx->curCommandState[i] = COMMAND_SELECTION_ITEM_SELECT;
            // fall-through

        case COMMAND_SELECTION_ITEM_SELECT:
            if (BattleContext_IOBufferVal(battleCtx, i) == PLAYER_INPUT_CANCEL) {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_INIT;
            } else if (BattleContext_IOBufferVal(battleCtx, i)) {
                u32 *data = &battleCtx->ioBuffer[i][0];
                battleCtx->battlerActions[i][BATTLE_ACTION_TEMP_VALUE] = *data;
                battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
            }
            break;

        case COMMAND_SELECTION_PARTY_SELECT_INIT:
            int doublesSelection = 6;
            BOOL canSwitch = Battler_IsTrapped(battleSys, battleCtx, i);

            // Check the partner's selection in a double battle
            if ((BattleSystem_BattlerSlot(battleSys, i) == BATTLER_TYPE_PLAYER_SIDE_SLOT_2 || BattleSystem_BattlerSlot(battleSys, i) == BATTLER_TYPE_ENEMY_SIDE_SLOT_2)
                && (battleType == BATTLE_TYPE_TRAINER_DOUBLES
                    || battleType == BATTLE_TYPE_LINK_DOUBLES
                    || battleType == BATTLE_TYPE_FRONTIER_DOUBLES
                    || (battleType == BATTLE_TYPE_TAG_DOUBLES && BattleSystem_BattlerSlot(battleSys, i) == BATTLER_TYPE_PLAYER_SIDE_SLOT_2))) {
                int partner = BattleSystem_Partner(battleSys, i);

                if (battleCtx->battlerActions[partner][BATTLE_ACTION_PICK_COMMAND] == BATTLE_CONTROL_PARTY) {
                    doublesSelection = battleCtx->battlerActions[partner][2];
                }
            }

            BattleIO_ShowPartyScreen(battleSys, battleCtx, i, 0, canSwitch, doublesSelection);
            battleCtx->curCommandState[i] = COMMAND_SELECTION_PARTY_SELECT;
            // fall-through

        case COMMAND_SELECTION_PARTY_SELECT:
            if (BattleContext_IOBufferVal(battleCtx, i) == PLAYER_INPUT_CANCEL) {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_INIT;
            } else if (BattleContext_IOBufferVal(battleCtx, i)) {
                battleCtx->battlerActions[i][BATTLE_ACTION_TEMP_VALUE] = battleCtx->ioBuffer[i][0] - 1;
                battleCtx->switchedPartySlot[i] = battleCtx->ioBuffer[i][0] - 1;
                battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
            }
            break;

        case COMMAND_SELECTION_RUN_SELECT_INIT:
            if (battleType & BATTLE_TYPE_FRONTIER) {
                // "Would you like to forfeit the match and quit now?"
                BattleIO_ShowYesNoScreen(battleSys, battleCtx, i, 955, 0, NULL, NULL);
                battleCtx->curCommandState[i] = COMMAND_SELECTION_RUN_SELECT;
            } else if ((battleType & BATTLE_TYPE_TRAINER) && (battleType & BATTLE_TYPE_LINK) == FALSE) {
                if (BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_RECORDING) {
                    BattleSystem_SetStopRecording(battleSys, 1);
                    Battle_RecordingStopped(battleSys, BattleSystem_Context(battleSys));
                } else {
                    msg.tags = 0;
                    msg.id = 793;
                    BattleIO_SetAlertMessage(battleSys, i, msg);

                    battleCtx->curCommandState[i] = COMMAND_SELECTION_ALERT_MESSAGE_WAIT;
                    battleCtx->nextCommandState[i] = COMMAND_SELECTION_INIT;
                }
            } else if (Battler_IsTrappedMsg(battleSys, battleCtx, i, &msg)) {
                if (BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_RECORDING) {
                    BattleSystem_SetStopRecording(battleSys, 1);
                    Battle_RecordingStopped(battleSys, BattleSystem_Context(battleSys));
                } else {
                    BattleIO_SetAlertMessage(battleSys, i, msg);
                    battleCtx->curCommandState[i] = COMMAND_SELECTION_ALERT_MESSAGE_WAIT;
                    battleCtx->nextCommandState[i] = COMMAND_SELECTION_INIT;
                }
            } else {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_RUN_SELECT;
            }
            break;

        case COMMAND_SELECTION_RUN_SELECT:
            if (battleType & BATTLE_TYPE_FRONTIER) {
                if (BattleContext_IOBufferVal(battleCtx, i)) {
                    if (BattleContext_IOBufferVal(battleCtx, i) == PLAYER_INPUT_CANCEL) {
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_INIT;
                    } else {
                        battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
                    }
                }
            } else {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
            }

            if ((battleType & BATTLE_TYPE_DOUBLES)
                && (battleType & BATTLE_TYPE_2vs2) == FALSE
                && (battleCtx->curCommandState[i] == COMMAND_SELECTION_WAIT)) {
                battleCtx->curCommandState[BattleSystem_Partner(battleSys, i)] = COMMAND_SELECTION_WAIT;
            }
            break;

        case COMMAND_SELECTION_WAIT:
            BattleIO_StopGaugeAnimation(battleSys, i);

            if (battleType == BATTLE_TYPE_LINK_DOUBLES) {
                if (battleCtx->curCommandState[BattleSystem_Partner(battleSys, i)] == COMMAND_SELECTION_END) {
                    BattleIO_LinkWaitMessage(battleSys, i);
                }
            } else {
                BattleIO_LinkWaitMessage(battleSys, i);
            }

            battleCtx->curCommandState[i] = COMMAND_SELECTION_END;
            // fall-through

        case COMMAND_SELECTION_END:
            battlersDone++;
            break;

        case COMMAND_SELECTION_ALERT_MESSAGE_WAIT:
            if (BattleContext_IOBufferVal(battleCtx, i)) {
                BattleIO_ClearBuffer(battleCtx, i);
                battleCtx->curCommandState[i] = battleCtx->nextCommandState[i];
            }
            break;

        case COMMAND_SELECTION_STRUGGLE_MESSAGE:
            msg.tags = TAG_NICKNAME;
            msg.id = 608; // "{0} has no moves left!"
            msg.params[0] = BattleSystem_NicknameTag(battleCtx, i);
            BattleIO_SetAlertMessage(battleSys, i, msg);

            battleCtx->curCommandState[i] = COMMAND_SELECTION_ALERT_MESSAGE_WAIT;
            battleCtx->nextCommandState[i] = COMMAND_SELECTION_WAIT;
            break;

        case COMMAND_SELECTION_CLEAR_TOUCH_SCREEN:
            BattleIO_ClearTouchScreen(battleSys, i);
            battleCtx->curCommandState[i] = battleCtx->nextCommandState[i];
            break;
        }
    }

    if (battlersDone == maxBattlers) {
        BattleSystem_RecordCommand(battleSys, battleCtx);
        BattleSystem_LoadFightOverlay(battleSys, FALSE);

        battleCtx->command = BATTLE_CONTROL_CALC_TURN_ORDER;
        for (int i = 0; i < maxBattlers; i++) {
            if (battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] == BATTLE_CONTROL_PARTY) {
                BattleSystem_SwitchSlots(battleSys, battleCtx, i, battleCtx->switchedPartySlot[i]);
            }
        }
    }
}

static void BattleController_CalcTurnOrder(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int battler, i, j; // Must declare these here to match.

    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    u32 battleType = BattleSystem_BattleType(battleSys);
    int order = 0;

    if (battleType & (BATTLE_TYPE_SAFARI | BATTLE_TYPE_PAL_PARK)) {
        // The player always acts before a wild mon encountered in the Safari Zone or the Pal Park.
        for (battler = 0; battler < maxBattlers; battler++) {
            battleCtx->battlerActionOrder[battler] = battler;
        }
    } else {
        if (battleType & BATTLE_TYPE_LINK) {
            // Check if any battler decided to forfeit. If so, break out and process the forfeit first.
            for (battler = 0; battler < maxBattlers; battler++) {
                if (battleCtx->battlerActions[battler][BATTLE_ACTION_SELECTED_COMMAND] == PLAYER_INPUT_RUN) {
                    order = 5;
                    break;
                }
            }
        } else {
            // If the player decided to Run using either of their mons, process that first.
            if (battleCtx->battlerActions[BATTLER_PLAYER_1][BATTLE_ACTION_SELECTED_COMMAND] == PLAYER_INPUT_RUN) {
                battler = BATTLER_PLAYER_1;
                order = 5;
            }

            if (battleCtx->battlerActions[BATTLER_PLAYER_2][BATTLE_ACTION_SELECTED_COMMAND] == PLAYER_INPUT_RUN) {
                battler = BATTLER_PLAYER_2;
                order = 5;
            }
        }

        if (order == 5) {
            battleCtx->battlerActionOrder[0] = battler;
            order = 1;

            // All other battlers should be defaulted to a position after the one running/forfeiting.
            for (i = 0; i < maxBattlers; i++) {
                if (i != battler) {
                    battleCtx->battlerActionOrder[order] = i;
                    order++;
                }
            }
        } else {
            // Items and switching are processed next.
            for (battler = 0; battler < maxBattlers; battler++) {
                if (battleCtx->battlerActions[battler][BATTLE_ACTION_SELECTED_COMMAND] == PLAYER_INPUT_ITEM
                    || battleCtx->battlerActions[battler][BATTLE_ACTION_SELECTED_COMMAND] == PLAYER_INPUT_PARTY) {
                    battleCtx->battlerActionOrder[order] = battler;
                    order++;
                }
            }

            // Fight is always processed last.
            for (battler = 0; battler < maxBattlers; battler++) {
                if (battleCtx->battlerActions[battler][BATTLE_ACTION_SELECTED_COMMAND] != PLAYER_INPUT_ITEM
                    && battleCtx->battlerActions[battler][BATTLE_ACTION_SELECTED_COMMAND] != PLAYER_INPUT_PARTY) {
                    battleCtx->battlerActionOrder[order] = battler;
                    order++;
                }
            }

            // Reorder battlers that chose to Fight according to their speed and priority.
            for (i = 0; i < maxBattlers - 1; i++) {
                for (j = i + 1; j < maxBattlers; j++) {
                    int battler1 = battleCtx->battlerActionOrder[i];
                    int battler2 = battleCtx->battlerActionOrder[j];

                    if (battleCtx->battlerActions[battler1][BATTLE_ACTION_SELECTED_COMMAND] == battleCtx->battlerActions[battler2][BATTLE_ACTION_SELECTED_COMMAND]) {
                        BOOL skipPriority = battleCtx->battlerActions[battler1][BATTLE_ACTION_SELECTED_COMMAND] != PLAYER_INPUT_FIGHT;
                        if (BattleSystem_CompareBattlerSpeed(battleSys, battleCtx, battler1, battler2, skipPriority)) {
                            battleCtx->battlerActionOrder[i] = battler2;
                            battleCtx->battlerActionOrder[j] = battler1;
                        }
                    }
                }
            }
        }
    }

    battleCtx->command = BATTLE_CONTROL_CHECK_PRE_MOVE_ACTIONS;
}

enum PreMoveActionState {
    PRE_MOVE_ACTION_START = 0,

    PRE_MOVE_ACTION_STATE_TIGHTEN_FOCUS = PRE_MOVE_ACTION_START,
    PRE_MOVE_ACTION_STATE_CHECK_RAGE_FLAG,
    PRE_MOVE_ACTION_STATE_SPEED_RNG,

    PRE_MOVE_ACTION_END
};

static void BattleController_CheckPreMoveActions(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int state = STATE_PROCESSING;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    int battler;

    do {
        switch (battleCtx->turnStartCheckState) {
        case PRE_MOVE_ACTION_STATE_TIGHTEN_FOCUS:
            while (battleCtx->turnStartCheckTemp < maxBattlers) {
                battler = battleCtx->battlerActionOrder[battleCtx->turnStartCheckTemp];

                if (battleCtx->battlersSwitchingMask & FlagIndex(battler)) {
                    battleCtx->turnStartCheckTemp++;
                    continue;
                }

                battleCtx->turnStartCheckTemp++;

                if ((battleCtx->battleMons[battler].status & MON_CONDITION_SLEEP) == FALSE
                    && Battler_SelectedMove(battleCtx, battler) == MOVE_FOCUS_PUNCH
                    && Battler_CheckTruant(battleCtx, battler) == FALSE
                    && battleCtx->turnFlags[battler].struggling == FALSE) {
                    BattleIO_ClearMessageBox(battleSys);
                    battleCtx->msgBattlerTemp = battler;

                    LOAD_SUBSEQ(subscript_tighten_focus);
                    battleCtx->commandNext = battleCtx->command;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                    return;
                }
            }

            battleCtx->turnStartCheckTemp = 0;
            battleCtx->turnStartCheckState++;
            break;

        case PRE_MOVE_ACTION_STATE_CHECK_RAGE_FLAG:
            for (battler = 0; battler < maxBattlers; battler++) {
                if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_RAGE)
                    && Battler_SelectedMove(battleCtx, battler) != MOVE_RAGE) {
                    battleCtx->battleMons[battler].statusVolatile &= VOLATILE_CONDITION_RAGE;
                }
            }

            battleCtx->turnStartCheckState++;
            break;

        case PRE_MOVE_ACTION_STATE_SPEED_RNG:
            for (battler = 0; battler < MAX_BATTLERS; battler++) {
                battleCtx->speedRand[battler] = BattleSystem_RandNext(battleSys);
            }

            battleCtx->turnStartCheckState++;
            break;

        case PRE_MOVE_ACTION_END:
            battleCtx->turnStartCheckState = 0;
            state = STATE_DONE;
            break;
        }
    } while (state == STATE_PROCESSING);

    if (state == STATE_DONE) {
        battleCtx->command = BATTLE_CONTROL_BRANCH_ACTIONS;
    }
}

static void BattleController_BranchActions(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    if (Battle_RecordingStopped(battleSys, battleCtx)) {
        return;
    }

    battleCtx->waitingBattlers = 0;
    for (int i = 0; i < maxBattlers; i++) {
        if (battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] != BATTLE_CONTROL_MOVE_END) {
            battleCtx->waitingBattlers++;
        }
    }

    BattleSystem_SortMonSpeedOrder(battleSys, battleCtx);
    if (battleCtx->turnOrderCounter == maxBattlers) {
        battleCtx->turnOrderCounter = 0;
        battleCtx->command = BATTLE_CONTROL_CHECK_FIELD_CONDITIONS;
    } else {
        battleCtx->command = battleCtx->battlerActions[battleCtx->battlerActionOrder[battleCtx->turnOrderCounter]][BATTLE_ACTION_PICK_COMMAND];
    }
}

enum FieldCondCheckState {
    FIELD_COND_CHECK_START = 0,

    FIELD_COND_CHECK_STATE_REFLECT = FIELD_COND_CHECK_START,
    FIELD_COND_CHECK_STATE_LIGHT_SCREEN,
    FIELD_COND_CHECK_STATE_MIST,
    FIELD_COND_CHECK_STATE_SAFEGUARD,
    FIELD_COND_CHECK_STATE_TAILWIND,
    FIELD_COND_CHECK_STATE_LUCKY_CHANT,
    FIELD_COND_CHECK_STATE_WISH,
    FIELD_COND_CHECK_STATE_RAINING,
    FIELD_COND_CHECK_STATE_SANDSTORM,
    FIELD_COND_CHECK_STATE_SUNNY,
    FIELD_COND_CHECK_STATE_HAILING,
    FIELD_COND_CHECK_STATE_DEEP_FOG,
    FIELD_COND_CHECK_STATE_GRAVITY,

    FIELD_COND_CHECK_END
};

static inline void PrepareSubroutineSequence(BattleContext *battleCtx, int script)
{
    LOAD_SUBSEQ(script);
    battleCtx->commandNext = battleCtx->command;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
}

static inline void StepFieldConditionCheck(BattleContext *battleCtx, int state)
{
    if (state == STATE_PROCESSING) {
        battleCtx->fieldConditionCheckState++;
        battleCtx->fieldConditionCheckTemp = 0;
    }
}

static void BattleController_CheckFieldConditions(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int state = STATE_PROCESSING;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    int side;

    do {
        // Explicit `== TRUE` is needed to match on these
        if (BattleController_AnyFainted(battleCtx, battleCtx->command, battleCtx->command, 1) == TRUE
            || BattleController_AnyExpPayout(battleCtx, battleCtx->command, battleCtx->command) == TRUE
            || BattleController_CheckBattleOver(battleSys, battleCtx) == TRUE) {
            return;
        }

        switch (battleCtx->fieldConditionCheckState) {
        case FIELD_COND_CHECK_STATE_REFLECT:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_REFLECT
                    && --battleCtx->sideConditions[side].reflectTurns == 0) {
                    battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_REFLECT;
                    battleCtx->msgMoveTemp = MOVE_REFLECT;

                    PrepareSubroutineSequence(battleCtx, subscript_move_effect_end);
                    battleCtx->msgBattlerTemp = BattleSystem_SideToBattler(battleSys, battleCtx, side);
                    state = STATE_BREAK_OUT;
                }

                battleCtx->fieldConditionCheckTemp++;
                if (state) {
                    break;
                }
            }

            StepFieldConditionCheck(battleCtx, state);
            break;

        case FIELD_COND_CHECK_STATE_LIGHT_SCREEN:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_LIGHT_SCREEN
                    && --battleCtx->sideConditions[side].lightScreenTurns == 0) {
                    battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_LIGHT_SCREEN;
                    battleCtx->msgMoveTemp = MOVE_LIGHT_SCREEN;

                    PrepareSubroutineSequence(battleCtx, subscript_move_effect_end);
                    battleCtx->msgBattlerTemp = BattleSystem_SideToBattler(battleSys, battleCtx, side);
                    state = STATE_BREAK_OUT;
                }

                battleCtx->fieldConditionCheckTemp++;
                if (state) {
                    break;
                }
            }

            StepFieldConditionCheck(battleCtx, state);
            break;

        case FIELD_COND_CHECK_STATE_MIST:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_MIST
                    && --battleCtx->sideConditions[side].mistTurns == 0) {
                    battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_MIST;
                    battleCtx->msgMoveTemp = MOVE_MIST;

                    PrepareSubroutineSequence(battleCtx, subscript_move_effect_end);
                    battleCtx->msgBattlerTemp = BattleSystem_SideToBattler(battleSys, battleCtx, side);
                    state = STATE_BREAK_OUT;
                }

                battleCtx->fieldConditionCheckTemp++;
                if (state) {
                    break;
                }
            }

            StepFieldConditionCheck(battleCtx, state);
            break;

        case FIELD_COND_CHECK_STATE_SAFEGUARD:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_SAFEGUARD
                    && --battleCtx->sideConditions[side].safeguardTurns == 0) {
                    battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_SAFEGUARD;
                    battleCtx->msgBattlerTemp = battleCtx->sideConditions[side].safeguardUser;

                    PrepareSubroutineSequence(battleCtx, subscript_safeguard_end);
                    battleCtx->msgBattlerTemp = BattleSystem_SideToBattler(battleSys, battleCtx, side);
                    state = STATE_BREAK_OUT;
                }

                battleCtx->fieldConditionCheckTemp++;
                if (state) {
                    break;
                }
            }

            StepFieldConditionCheck(battleCtx, state);
            break;

        case FIELD_COND_CHECK_STATE_TAILWIND:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_TAILWIND) {
                    battleCtx->sideConditionsMask[side] -= SIDE_CONDITION_TAILWIND_SHIFT;

                    if ((battleCtx->sideConditionsMask[side] & SIDE_CONDITION_TAILWIND) == FALSE) {
                        PrepareSubroutineSequence(battleCtx, subscript_tailwind_end);
                        battleCtx->msgBattlerTemp = BattleSystem_SideToBattler(battleSys, battleCtx, side);
                        state = STATE_BREAK_OUT;
                    }
                }

                battleCtx->fieldConditionCheckTemp++;
                if (state) {
                    break;
                }
            }

            StepFieldConditionCheck(battleCtx, state);
            break;

        case FIELD_COND_CHECK_STATE_LUCKY_CHANT:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_LUCKY_CHANT) {
                    battleCtx->sideConditionsMask[side] -= SIDE_CONDITION_LUCKY_CHANT_SHIFT;

                    if ((battleCtx->sideConditionsMask[side] & SIDE_CONDITION_LUCKY_CHANT) == FALSE) {
                        PrepareSubroutineSequence(battleCtx, subscript_lucky_chant_end);
                        battleCtx->msgBattlerTemp = BattleSystem_SideToBattler(battleSys, battleCtx, side);
                        state = STATE_BREAK_OUT;
                    }
                }

                battleCtx->fieldConditionCheckTemp++;
                if (state) {
                    break;
                }
            }

            StepFieldConditionCheck(battleCtx, state);
            break;

        case FIELD_COND_CHECK_STATE_WISH:
            while (battleCtx->fieldConditionCheckTemp < maxBattlers) {
                side = battleCtx->monSpeedOrder[battleCtx->fieldConditionCheckTemp]; // actually a battler, but must reuse side var to match

                if (battleCtx->fieldConditions.wishTurns[side]
                    && --battleCtx->fieldConditions.wishTurns[side] == 0
                    && battleCtx->battleMons[side].curHP) {
                    battleCtx->msgBattlerTemp = side;

                    battleCtx->msgBuffer.tags = TAG_NICKNAME;
                    battleCtx->msgBuffer.id = 533; // "{0}'s wish came true!"
                    battleCtx->msgBuffer.params[0] = side | (battleCtx->fieldConditions.wishTarget[side] << 8);

                    battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[side].maxHP, 2);

                    PrepareSubroutineSequence(battleCtx, subscript_wish_heal);
                    state = STATE_BREAK_OUT;
                }

                battleCtx->fieldConditionCheckTemp++;
                if (state) {
                    break;
                }
            }

            StepFieldConditionCheck(battleCtx, state);
            break;

        case FIELD_COND_CHECK_STATE_RAINING:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_RAINING) {
                if (battleCtx->fieldConditionsMask & FIELD_CONDITION_RAINING_PERM) {
                    battleCtx->msgBuffer.id = 801; // "Rain continues to fall."
                    battleCtx->msgBuffer.tags = TAG_NONE;

                    PrepareSubroutineSequence(battleCtx, subscript_weather_continues);
                } else {
                    if (--battleCtx->fieldConditions.weatherTurns == 0) {
                        PrepareSubroutineSequence(battleCtx, subscript_raining_end);
                    } else {
                        battleCtx->msgBuffer.id = 801; // "Rain continues to fall."
                        battleCtx->msgBuffer.tags = TAG_NONE;

                        PrepareSubroutineSequence(battleCtx, subscript_weather_continues);
                    }
                }

                battleCtx->scriptTemp = BATTLE_ANIMATION_WEATHER_RAIN;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_STATE_SANDSTORM:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_SANDSTORM) {
                if (battleCtx->fieldConditionsMask & FIELD_CONDITION_SANDSTORM_PERM) {
                    battleCtx->msgBuffer.id = 805; // "The sandstorm rages."
                    battleCtx->msgBuffer.tags = TAG_NONE;

                    PrepareSubroutineSequence(battleCtx, subscript_weather_continues);
                } else {
                    if (--battleCtx->fieldConditions.weatherTurns == 0) {
                        PrepareSubroutineSequence(battleCtx, subscript_sandstorm_end);
                    } else {
                        battleCtx->msgBuffer.id = 805; // "The sandstorm rages."
                        battleCtx->msgBuffer.tags = TAG_NONE;

                        PrepareSubroutineSequence(battleCtx, subscript_weather_continues);
                    }
                }

                battleCtx->scriptTemp = BATTLE_ANIMATION_WEATHER_SAND;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_STATE_SUNNY:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_SUNNY) {
                if (battleCtx->fieldConditionsMask & FIELD_CONDITION_SUNNY_PERM) {
                    battleCtx->msgBuffer.id = 808; // "The sunlight is strong."
                    battleCtx->msgBuffer.tags = TAG_NONE;

                    PrepareSubroutineSequence(battleCtx, subscript_weather_continues);
                } else {
                    if (--battleCtx->fieldConditions.weatherTurns == 0) {
                        PrepareSubroutineSequence(battleCtx, subscript_sunny_end);
                    } else {
                        battleCtx->msgBuffer.id = 808; // "The sunlight is strong."
                        battleCtx->msgBuffer.tags = TAG_NONE;

                        PrepareSubroutineSequence(battleCtx, subscript_weather_continues);
                    }
                }

                battleCtx->scriptTemp = BATTLE_ANIMATION_WEATHER_SUN;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_STATE_HAILING:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_HAILING) {
                if (battleCtx->fieldConditionsMask & FIELD_CONDITION_HAILING_PERM) {
                    battleCtx->msgBuffer.id = 811; // "Hail continues to fall."
                    battleCtx->msgBuffer.tags = TAG_NONE;

                    PrepareSubroutineSequence(battleCtx, subscript_weather_continues);
                } else {
                    if (--battleCtx->fieldConditions.weatherTurns == 0) {
                        PrepareSubroutineSequence(battleCtx, subscript_hailing_end);
                    } else {
                        battleCtx->msgBuffer.id = 811; // "Hail continues to fall."
                        battleCtx->msgBuffer.tags = TAG_NONE;

                        PrepareSubroutineSequence(battleCtx, subscript_weather_continues);
                    }
                }

                battleCtx->scriptTemp = BATTLE_ANIMATION_WEATHER_HAIL;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_STATE_DEEP_FOG:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_DEEP_FOG) {
                battleCtx->msgBuffer.id = 813; // "The fog is deep..."
                battleCtx->msgBuffer.tags = TAG_NONE;

                PrepareSubroutineSequence(battleCtx, subscript_weather_continues);

                battleCtx->scriptTemp = BATTLE_ANIMATION_WEATHER_FOG;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_STATE_GRAVITY:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_GRAVITY) {
                battleCtx->fieldConditionsMask -= (1 << FIELD_CONDITION_GRAVITY_SHIFT);

                if ((battleCtx->fieldConditionsMask & FIELD_CONDITION_GRAVITY) == 0) {
                    PrepareSubroutineSequence(battleCtx, subscript_gravity_end);
                    state = STATE_BREAK_OUT;
                }
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_END:
            state = STATE_DONE;
            break;
        }
    } while (state == STATE_PROCESSING);

    if (state == STATE_BREAK_OUT) {
        BattleIO_ClearMessageBox(battleSys);
    }

    if (state == STATE_DONE) {
        battleCtx->fieldConditionCheckState = FIELD_COND_CHECK_START;
        battleCtx->command = BATTLE_CONTROL_CHECK_MON_CONDITIONS;
    }
}

enum MonCondCheckState {
    MON_COND_CHECK_START = 0,

    MON_COND_CHECK_STATE_INGRAIN = MON_COND_CHECK_START,
    MON_COND_CHECK_STATE_AQUA_RING,
    MON_COND_CHECK_STATE_ABILITY,
    MON_COND_CHECK_STATE_USE_ITEM,
    MON_COND_CHECK_STATE_LEFTOVERS,
    MON_COND_CHECK_STATE_LEECH_SEED,
    MON_COND_CHECK_STATE_POISON,
    MON_COND_CHECK_STATE_TOXIC,
    MON_COND_CHECK_STATE_BURN,
    MON_COND_CHECK_STATE_NIGHTMARE,
    MON_COND_CHECK_STATE_CURSE,
    MON_COND_CHECK_STATE_BIND,
    MON_COND_CHECK_STATE_BAD_DREAMS,
    MON_COND_CHECK_STATE_UPROAR,
    MON_COND_CHECK_STATE_THRASH,
    MON_COND_CHECK_STATE_DISABLE,
    MON_COND_CHECK_STATE_ENCORE,
    MON_COND_CHECK_STATE_LOCK_ON,
    MON_COND_CHECK_STATE_CHARGE,
    MON_COND_CHECK_STATE_TAUNT,
    MON_COND_CHECK_STATE_MAGNET_RISE,
    MON_COND_CHECK_STATE_HEAL_BLOCK,
    MON_COND_CHECK_STATE_EMBARGO,
    MON_COND_CHECK_STATE_YAWN,
    MON_COND_CHECK_STATE_ITEM_CONDITION,
    MON_COND_CHECK_STATE_ITEM_DETRIMENTAL_EFFECT,

    MON_COND_CHECK_END
};

static void BattleController_CheckMonConditions(BattleSystem *battleSys, BattleContext *battleCtx)
{
    u8 state = STATE_PROCESSING;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    // Explicit `== TRUE` is needed to match on these.
    if (BattleController_AnyFainted(battleCtx, battleCtx->command, battleCtx->command, 1) == TRUE
        || BattleController_AnyExpPayout(battleCtx, battleCtx->command, battleCtx->command) == TRUE
        || BattleController_CheckBattleOver(battleSys, battleCtx) == TRUE) {
        return;
    }

    int i, battler;
    while (battleCtx->monConditionCheckTemp < maxBattlers) {
        battler = battleCtx->monSpeedOrder[battleCtx->monConditionCheckTemp];

        if (battleCtx->battlersSwitchingMask & FlagIndex(battler)) {
            battleCtx->monConditionCheckTemp++;
            continue;
        }

        switch (battleCtx->monConditionCheckState) {
        case MON_COND_CHECK_STATE_INGRAIN:
            if ((battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_INGRAIN)
                && battleCtx->battleMons[battler].curHP != battleCtx->battleMons[battler].maxHP
                && battleCtx->battleMons[battler].curHP) {
                if (battleCtx->battleMons[battler].moveEffectsData.healBlockTurns) {
                    battleCtx->msgBattlerTemp = battler;
                    LOAD_SUBSEQ(subscript_cannot_heal);
                } else {
                    battleCtx->msgBattlerTemp = battler;
                    LOAD_SUBSEQ(subscript_ingrain_heal);
                }

                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_AQUA_RING:
            if ((battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_AQUA_RING)
                && battleCtx->battleMons[battler].curHP != battleCtx->battleMons[battler].maxHP
                && battleCtx->battleMons[battler].curHP) {
                if (battleCtx->battleMons[battler].moveEffectsData.healBlockTurns) {
                    battleCtx->msgBattlerTemp = battler;
                    LOAD_SUBSEQ(subscript_cannot_heal);
                } else {
                    battleCtx->msgBattlerTemp = battler;
                    battleCtx->msgMoveTemp = MOVE_AQUA_RING;
                    battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP, 16);
                    LOAD_SUBSEQ(subscript_aqua_ring_heal);
                }

                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;
        case MON_COND_CHECK_STATE_ABILITY:
            if (BattleSystem_TriggerTurnEndAbility(battleSys, battleCtx, battler) == TRUE) {
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_USE_ITEM:
            if (BattleSystem_TriggerHeldItem(battleSys, battleCtx, battler) == TRUE) {
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_LEFTOVERS:
            if (BattleSystem_TriggerLeftovers(battleSys, battleCtx, battler) == TRUE) {
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_LEECH_SEED:
            if ((battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_LEECH_SEED)
                && battleCtx->battleMons[battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_LEECH_SEED_RECIPIENT].curHP
                && Battler_Ability(battleCtx, battler) != ABILITY_MAGIC_GUARD
                && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgAttacker = battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_LEECH_SEED_RECIPIENT;
                battleCtx->msgDefender = battler;

                PrepareSubroutineSequence(battleCtx, subscript_leech_seed_effect);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_POISON:
            if ((battleCtx->battleMons[battler].status & MON_CONDITION_POISON) && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgBattlerTemp = battler;
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, 8);

                PrepareSubroutineSequence(battleCtx, subscript_poison_damage);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_TOXIC:
            if ((battleCtx->battleMons[battler].status & MON_CONDITION_TOXIC) && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgBattlerTemp = battler;
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP, 16);

                // If we're not already at the maximum Toxic stage, increment the counter
                if ((battleCtx->battleMons[battler].status & MON_CONDITION_TOXIC_COUNTER) != MON_CONDITION_TOXIC_COUNTER) {
                    battleCtx->battleMons[battler].status += MON_CONDITION_TOXIC_COUNT_INC;
                }

                battleCtx->hpCalcTemp *= ((battleCtx->battleMons[battler].status & MON_CONDITION_TOXIC_COUNTER) >> 8);
                battleCtx->hpCalcTemp *= -1;

                PrepareSubroutineSequence(battleCtx, subscript_poison_damage);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_BURN:
            if ((battleCtx->battleMons[battler].status & MON_CONDITION_BURN) && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgBattlerTemp = battler;

                PrepareSubroutineSequence(battleCtx, subscript_burn_damage);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_NIGHTMARE:
            if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_NIGHTMARE) && battleCtx->battleMons[battler].curHP) {
                if (battleCtx->battleMons[battler].status & MON_CONDITION_SLEEP) {
                    battleCtx->msgBattlerTemp = battler;

                    PrepareSubroutineSequence(battleCtx, subscript_nightmare_effect);
                    state = STATE_BREAK_OUT;
                } else {
                    battleCtx->battleMons[battler].statusVolatile &= ~VOLATILE_CONDITION_NIGHTMARE;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_CURSE:
            if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_CURSE) && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgBattlerTemp = battler;

                PrepareSubroutineSequence(battleCtx, subscript_curse_damage);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_BIND:
            if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_BIND) && battleCtx->battleMons[battler].curHP) {
                battleCtx->battleMons[battler].statusVolatile -= (1 << VOLATILE_CONDITION_BIND_SHIFT);

                if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_BIND) {
                    battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, 16);
                    LOAD_SUBSEQ(subscript_bind_effect);
                } else {
                    LOAD_SUBSEQ(subscript_bind_end);
                }

                battleCtx->msgMoveTemp = battleCtx->battleMons[battler].moveEffectsData.bindingMove;
                battleCtx->msgBattlerTemp = battler;
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_BAD_DREAMS:
            battleCtx->scriptTemp = BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS_THEIR_SIDE_FLAG, battler, ABILITY_BAD_DREAMS);

            if ((battleCtx->battleMons[battler].status & MON_CONDITION_SLEEP)
                && Battler_Ability(battleCtx, battler) != ABILITY_MAGIC_GUARD
                && battleCtx->battleMons[battler].curHP
                && battleCtx->scriptTemp) {
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, 8);

                LOAD_SUBSEQ(subscript_bad_dreams);
                battleCtx->battleStatusMask |= SYSCTL_SKIP_SPRITE_BLINK;
                battleCtx->msgBattlerTemp = battler;
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_UPROAR:
            if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_UPROAR) {
                u8 j;
                for (j = 0; j < maxBattlers; j++) {
                    if ((battleCtx->battleMons[j].status & MON_CONDITION_SLEEP)
                        && battleCtx->battleMons[j].curHP
                        && Battler_Ability(battleCtx, j) != ABILITY_SOUNDPROOF) {
                        battleCtx->msgBattlerTemp = j;
                        PrepareSubroutineSequence(battleCtx, subscript_wake_up);
                        break;
                    }
                }

                if (j != maxBattlers) {
                    state = STATE_DONE;
                    break;
                }

                battleCtx->battleMons[battler].statusVolatile -= (1 << VOLATILE_CONDITION_UPROAR_SHIFT);

                if (BattleContext_MoveFailed(battleCtx, battler)) {
                    i = subscript_uproar_end;
                    battleCtx->battleMons[battler].statusVolatile &= ~VOLATILE_CONDITION_UPROAR;
                    battleCtx->fieldConditionsMask &= ((FlagIndex(battler) << FIELD_CONDITION_UPROAR_SHIFT) ^ 0xFFFFFFFF);
                } else if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_UPROAR) {
                    i = subscript_uproar_continues;
                } else {
                    i = subscript_uproar_end;
                    battleCtx->battleMons[battler].statusVolatile &= ~VOLATILE_CONDITION_UPROAR;
                    battleCtx->fieldConditionsMask &= ((FlagIndex(battler) << FIELD_CONDITION_UPROAR_SHIFT) ^ 0xFFFFFFFF);
                }

                battleCtx->msgBattlerTemp = battler;
                PrepareSubroutineSequence(battleCtx, i);
                state = STATE_BREAK_OUT;
            }

            if (state != STATE_DONE) {
                battleCtx->monConditionCheckState++;
            }
            break;

        case MON_COND_CHECK_STATE_THRASH:
            if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_THRASH) {
                battleCtx->battleMons[battler].statusVolatile -= (1 << VOLATILE_CONDITION_THRASH_SHIFT);

                if (BattleContext_MoveFailed(battleCtx, battler)) {
                    battleCtx->battleMons[battler].statusVolatile &= ~VOLATILE_CONDITION_THRASH;
                } else if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_THRASH) == FALSE
                    && (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_CONFUSION) == FALSE) {
                    battleCtx->sideEffectMon = battler;

                    PrepareSubroutineSequence(battleCtx, subscript_thrash_end);
                    state = STATE_BREAK_OUT;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_DISABLE:
            if (battleCtx->battleMons[battler].moveEffectsData.disabledMove) {
                for (i = 0; i < MAX_BATTLERS; i++) {
                    if (battleCtx->battleMons[battler].moveEffectsData.disabledMove == battleCtx->battleMons[battler].moves[i]) {
                        break;
                    }
                }

                if (i == MAX_BATTLERS) {
                    battleCtx->battleMons[battler].moveEffectsData.disabledTurns = 0;
                }

                if (battleCtx->battleMons[battler].moveEffectsData.disabledTurns) {
                    battleCtx->battleMons[battler].moveEffectsData.disabledTurns--;
                } else {
                    battleCtx->battleMons[battler].moveEffectsData.disabledMove = 0;
                    battleCtx->msgBattlerTemp = battler;

                    PrepareSubroutineSequence(battleCtx, subscript_disable_end);
                    state = STATE_BREAK_OUT;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_ENCORE:
            if (battleCtx->battleMons[battler].moveEffectsData.encoredMove) {
                for (i = 0; i < MAX_BATTLERS; i++) {
                    if (battleCtx->battleMons[battler].moveEffectsData.encoredMove == battleCtx->battleMons[battler].moves[i]) {
                        break;
                    }
                }

                // this chain is kind of ugly, but it does not match unless it is structured this way
                if (i == MAX_BATTLERS || (i != MAX_BATTLERS && battleCtx->battleMons[battler].ppCur[i] == 0)) {
                    battleCtx->battleMons[battler].moveEffectsData.encoredTurns = 0;
                }

                if (battleCtx->battleMons[battler].moveEffectsData.encoredTurns) {
                    battleCtx->battleMons[battler].moveEffectsData.encoredTurns--;
                } else {
                    battleCtx->battleMons[battler].moveEffectsData.encoredMove = 0;
                    battleCtx->msgBattlerTemp = battler;

                    PrepareSubroutineSequence(battleCtx, subscript_encore_end);
                    state = STATE_BREAK_OUT;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_LOCK_ON:
            if (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_LOCK_ON) {
                battleCtx->battleMons[battler].moveEffectsMask -= (1 << MOVE_EFFECT_LOCK_ON_SHIFT);
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_CHARGE:
            if (battleCtx->battleMons[battler].moveEffectsData.chargedTurns
                && --battleCtx->battleMons[battler].moveEffectsData.chargedTurns == 0) {
                battleCtx->battleMons[battler].moveEffectsMask &= ~MOVE_EFFECT_CHARGE;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_TAUNT:
            if (battleCtx->battleMons[battler].moveEffectsData.tauntedTurns
                && --battleCtx->battleMons[battler].moveEffectsData.tauntedTurns == 0) {
                battleCtx->msgBattlerTemp = battler;

                PrepareSubroutineSequence(battleCtx, subscript_taunt_end);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_MAGNET_RISE:
            if (battleCtx->battleMons[battler].moveEffectsData.magnetRiseTurns
                && --battleCtx->battleMons[battler].moveEffectsData.magnetRiseTurns == 0) {
                battleCtx->msgBattlerTemp = battler;

                PrepareSubroutineSequence(battleCtx, subscript_magnet_rise_end);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_HEAL_BLOCK:
            if (battleCtx->battleMons[battler].moveEffectsData.healBlockTurns
                && --battleCtx->battleMons[battler].moveEffectsData.healBlockTurns == 0) {
                battleCtx->msgBattlerTemp = battler;

                PrepareSubroutineSequence(battleCtx, subscript_heal_block_end);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_EMBARGO:
            if (battleCtx->battleMons[battler].moveEffectsData.embargoTurns
                && --battleCtx->battleMons[battler].moveEffectsData.embargoTurns == 0) {
                battleCtx->msgBattlerTemp = battler;

                PrepareSubroutineSequence(battleCtx, subscript_embargo_end);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_YAWN:
            if (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_YAWN) {
                battleCtx->battleMons[battler].moveEffectsMask -= (1 << MOVE_EFFECT_YAWN_SHIFT);

                if ((battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_YAWN) == FALSE) {
                    battleCtx->sideEffectMon = battler;
                    battleCtx->sideEffectType = SIDE_EFFECT_TYPE_MOVE_EFFECT;

                    PrepareSubroutineSequence(battleCtx, subscript_fall_asleep);
                    state = STATE_BREAK_OUT;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_ITEM_CONDITION:
            int nextSeq;
            if (BattleSystem_TriggerHeldItemOnStatus(battleSys, battleCtx, battler, &nextSeq) == TRUE) {
                battleCtx->msgBattlerTemp = battler;

                PrepareSubroutineSequence(battleCtx, nextSeq);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_STATE_ITEM_DETRIMENTAL_EFFECT:
            if (BattleSystem_TriggerDetrimentalHeldItem(battleSys, battleCtx, battler) == TRUE) {
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_END:
            battleCtx->monConditionCheckState = MON_COND_CHECK_START;
            battleCtx->monConditionCheckTemp++;
            break;
        }

        if (state) {
            BattleIO_ClearMessageBox(battleSys);
            return;
        }
    }

    battleCtx->monConditionCheckState = MON_COND_CHECK_START;
    battleCtx->monConditionCheckTemp = 0;
    battleCtx->command = BATTLE_CONTROL_CHECK_SIDE_CONDITIONS;
}

enum SideCondCheckState {
    SIDE_COND_CHECK_START = 0,

    SIDE_COND_CHECK_STATE_FUTURE_SIGHT = SIDE_COND_CHECK_START,
    SIDE_COND_CHECK_STATE_PERISH_SONG,
    SIDE_COND_CHECK_STATE_TRICK_ROOM,

    SIDE_COND_CHECK_END
};

static void BattleController_CheckSideConditions(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    if (BattleController_AnyFainted(battleCtx, battleCtx->command, battleCtx->command, 1) == TRUE) {
        return;
    }

    BattleIO_ClearMessageBox(battleSys);

    int battler;
    switch (battleCtx->sideConditionCheckState) {
    case SIDE_COND_CHECK_STATE_FUTURE_SIGHT:
        while (battleCtx->sideConditionCheckTemp < maxBattlers) {
            battler = battleCtx->monSpeedOrder[battleCtx->sideConditionCheckTemp];
            if (battleCtx->battlersSwitchingMask & FlagIndex(battler)) {
                battleCtx->sideConditionCheckTemp++;
                continue;
            }

            battleCtx->sideConditionCheckTemp++;
            if (battleCtx->fieldConditions.futureSightTurns[battler]
                && --battleCtx->fieldConditions.futureSightTurns[battler] == FALSE
                && battleCtx->battleMons[battler].curHP) {
                battleCtx->sideConditionsMask[Battler_Side(battleSys, battler)] &= ~SIDE_CONDITION_FUTURE_SIGHT;

                battleCtx->msgBuffer.id = 475;
                battleCtx->msgBuffer.tags = TAG_NICKNAME_MOVE;
                battleCtx->msgBuffer.params[0] = BattleSystem_NicknameTag(battleCtx, battler);
                battleCtx->msgBuffer.params[1] = battleCtx->fieldConditions.futureSightMove[battler];

                battleCtx->msgBattlerTemp = battler;
                battleCtx->msgAttacker = battleCtx->fieldConditions.futureSightAttacker[battler];
                battleCtx->msgMoveTemp = battleCtx->fieldConditions.futureSightMove[battler];
                battleCtx->hpCalcTemp = battleCtx->fieldConditions.futureSightDamage[battler];

                PrepareSubroutineSequence(battleCtx, subscript_future_sight_damage);
                return;
            }
        }

        battleCtx->sideConditionCheckState++;
        battleCtx->sideConditionCheckTemp = 0;
        // fall-through

    case SIDE_COND_CHECK_STATE_PERISH_SONG:
        while (battleCtx->sideConditionCheckTemp < maxBattlers) {
            battler = battleCtx->monSpeedOrder[battleCtx->sideConditionCheckTemp];
            if (battleCtx->battlersSwitchingMask & FlagIndex(battler)) {
                battleCtx->sideConditionCheckTemp++;
                continue;
            }

            battleCtx->sideConditionCheckTemp++;
            if (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_PERISH_SONG) {
                if (battleCtx->battleMons[battler].moveEffectsData.perishSongTurns == 0) {
                    battleCtx->battleMons[battler].moveEffectsMask &= ~MOVE_EFFECT_PERISH_SONG;

                    battleCtx->msgTemp = battleCtx->battleMons[battler].moveEffectsData.perishSongTurns;
                    battleCtx->hpCalcTemp = battleCtx->battleMons[battler].curHP * -1;
                    battleCtx->battleStatusMask |= SYSCTL_SKIP_SPRITE_BLINK;
                } else {
                    battleCtx->msgTemp = battleCtx->battleMons[battler].moveEffectsData.perishSongTurns;
                    battleCtx->battleMons[battler].moveEffectsData.perishSongTurns--;
                }

                battleCtx->msgBattlerTemp = battler;
                PrepareSubroutineSequence(battleCtx, subscript_continue_perish_song);
                return;
            }
        }

        battleCtx->sideConditionCheckState++;
        battleCtx->sideConditionCheckTemp = 0;
        // fall-through

    case SIDE_COND_CHECK_STATE_TRICK_ROOM:
        if (battleCtx->fieldConditionsMask & FIELD_CONDITION_TRICK_ROOM) {
            battleCtx->fieldConditionsMask -= (1 << FIELD_CONDITION_TRICK_ROOM_SHIFT);
            if ((battleCtx->fieldConditionsMask & FIELD_CONDITION_TRICK_ROOM) == FALSE) {
                PrepareSubroutineSequence(battleCtx, subscript_trick_room_end);
                return;
            }
        }

        battleCtx->sideConditionCheckState++;
        battleCtx->sideConditionCheckTemp = 0;
        break;

    default:
        break;
    }

    battleCtx->sideConditionCheckState = SIDE_COND_CHECK_START;
    battleCtx->sideConditionCheckTemp = 0;
    battleCtx->command = BATTLE_CONTROL_TURN_END;
}

static void BattleController_TurnEnd(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (BattleController_AnyExpPayout(battleCtx, battleCtx->command, battleCtx->command) == TRUE
        || BattleController_CheckBattleOver(battleSys, battleCtx) == TRUE
        || BattleController_ReplaceFainted(battleSys, battleCtx) == TRUE) {
        return;
    }

    battleCtx->totalTurns++;
    battleCtx->meFirstTurnOrder++;

    BattleContext_Init(battleCtx);
    BattleSystem_SetupNextTurn(battleSys, battleCtx);

    battleCtx->command = BATTLE_CONTROL_TRAINER_MESSAGE;
}

static void BattleController_FightCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL randomizeTarget = FALSE;
    battleCtx->attacker = battleCtx->battlerActionOrder[battleCtx->turnOrderCounter];

    if (ATTACKER_TURN_FLAGS.struggling) {
        battleCtx->moveTemp = MOVE_STRUGGLE;
        randomizeTarget = TRUE;
    } else if (ATTACKING_MON.moveEffectsData.encoredMove
        && ATTACKING_MON.moveEffectsData.encoredMove == ATTACKING_MON.moves[ATTACKING_MON.moveEffectsData.encoredMoveSlot]) {
        // Attacker is locked into one of its moves by Encore
        battleCtx->moveTemp = ATTACKING_MON.moveEffectsData.encoredMove;
        randomizeTarget = TRUE;
    } else if (ATTACKING_MON.moveEffectsData.encoredMove
        && ATTACKING_MON.moveEffectsData.encoredMove != ATTACKING_MON.moves[ATTACKING_MON.moveEffectsData.encoredMoveSlot]) {
        // Attacker is Encored, but does not actually know the move in the Encored slot. This can
        // happen if the attacker is Encored into something like Metronome. Note that this means
        // that if the attacker is Encored into a Metronome'd move that it knows, it will not be
        // forced to use that move the following turn.
        battleCtx->moveTemp = ATTACKING_MON.moves[ATTACKING_MON.moveEffectsData.encoredMoveSlot];
        ATTACKING_MON.moveEffectsData.encoredMove = MOVE_NONE;
        ATTACKING_MON.moveEffectsData.encoredMoveSlot = 0;
        ATTACKING_MON.moveEffectsData.encoredTurns = 0;
        randomizeTarget = TRUE;
    } else if (Battler_CanPickCommand(battleCtx, battleCtx->attacker) == FALSE) {
        // Relock the attacker into its move. There should be no override here, as the attacker
        // should not have been able to choose any input.
        battleCtx->moveTemp = battleCtx->moveLockedInto[battleCtx->attacker];
    } else if (battleCtx->moveSelected[battleCtx->attacker] != ATTACKING_MON.moves[battleCtx->moveSlot[battleCtx->attacker]]) {
        // If the attacker somehow selected a move that it does not know, prefer the move that's
        // actually in the chosen slot.
        battleCtx->moveTemp = ATTACKING_MON.moves[battleCtx->moveSlot[battleCtx->attacker]];
        randomizeTarget = TRUE;
    } else {
        battleCtx->moveTemp = ATTACKING_MON.moves[battleCtx->moveSlot[battleCtx->attacker]];
    }

    battleCtx->moveCur = battleCtx->moveTemp;
    battleCtx->command = BATTLE_CONTROL_BEFORE_MOVE;
    battleCtx->defender = BattleSystem_Defender(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveTemp, randomizeTarget, 0);

    BattleIO_ClearMessageBox(battleSys);
}

static void BattleController_ItemCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    battleCtx->attacker = battleCtx->battlerActionOrder[battleCtx->turnOrderCounter];
    battleCtx->defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);

    BattleItemUse *used = (BattleItemUse *)&battleCtx->battlerActions[battleCtx->attacker][BATTLE_ACTION_TEMP_VALUE];
    int nextSeq;
    if (Battler_Side(battleSys, battleCtx->attacker)) {
        switch (battleCtx->aiContext.usedItemType[battleCtx->attacker >> 1]) {
        case ITEM_AI_CATEGORY_FULL_RESTORE:
            nextSeq = subscript_use_full_restore;
            break;

        case ITEM_AI_CATEGORY_RECOVER_HP:
            nextSeq = subscript_use_potion;
            break;

        case ITEM_AI_CATEGORY_RECOVER_STATUS:
            if ((battleCtx->aiContext.usedItemCondition[battleCtx->attacker >> 1] & ITEM_RECOVER_CONFUSION)
                && (battleCtx->aiContext.usedItemCondition[battleCtx->attacker >> 1] & ITEM_RECOVER_FULL)) {
                battleCtx->msgTemp = 6;
            } else {
                battleCtx->msgTemp = LowestBit(battleCtx->aiContext.usedItemCondition[battleCtx->attacker >> 1]);
            }

            nextSeq = subscript_use_status_recovery;
            break;

        case ITEM_AI_CATEGORY_STAT_BOOSTER:
            battleCtx->msgTemp = battleCtx->aiContext.usedItemCondition[battleCtx->attacker >> 1];
            nextSeq = subscript_use_stat_booster;
            break;

        case ITEM_AI_CATEGORY_GUARD_SPEC:
            nextSeq = subscript_use_guard_spec;
            break;
        }

        battleCtx->msgItemTemp = battleCtx->aiContext.usedItem[battleCtx->attacker >> 1];
    } else {
        switch (used->category) {
        case ITEM_BATTLE_CATEGORY_RECOVER_STATUS:
        case ITEM_BATTLE_CATEGORY_RECOVER_HP:
        case ITEM_BATTLE_CATEGORY_BATTLE_ITEMS:
            if (used->item == ITEM_POKE_DOLL || used->item == ITEM_FLUFFY_TAIL) {
                nextSeq = subscript_escape_item;
            } else {
                nextSeq = subscript_battle_item;
            }

            break;

        case ITEM_BATTLE_CATEGORY_POKE_BALLS:
            nextSeq = subscript_throw_pokeball;
            if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TRAINER) == FALSE
                && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) == FALSE) {
                Bag_TryRemoveItem(BattleSystem_Bag(battleSys), used->item, 1, HEAP_ID_BATTLE);
                Bag_SetLastBattleItemUsed(BattleSystem_BagCursor(battleSys), used->item, used->category);
            }

            break;
        }

        battleCtx->msgItemTemp = used->item;
    }

    LOAD_SUBSEQ(nextSeq);
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
    battleCtx->moveStatusFlags |= MOVE_STATUS_NO_MORE_WORK;
}

static void BattleController_SwitchCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(subscript_switch_pokemon);

    battleCtx->attacker = battleCtx->battlerActionOrder[battleCtx->turnOrderCounter];
    battleCtx->switchedMon = battleCtx->attacker;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_CHECK_ANY_FAINTED;
    battleCtx->scriptTemp = 0;
    battleCtx->moveStatusFlags |= MOVE_STATUS_NO_MORE_WORK;
}

static void BattleController_FleeCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    battleCtx->attacker = battleCtx->battlerActionOrder[battleCtx->turnOrderCounter];

    if (Battler_Side(battleSys, battleCtx->attacker)
        && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE) {
        if (ATTACKING_MON.statusVolatile & (VOLATILE_CONDITION_BIND | VOLATILE_CONDITION_MEAN_LOOK)) {
            LOAD_SUBSEQ(subscript_enemy_escape_failed);
            battleCtx->scriptCursor = 0;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
        } else {
            LOAD_SUBSEQ(subscript_enemy_escape);
            battleCtx->scriptCursor = 0;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_FIGHT_END;
        }
    } else {
        if (Battler_CanEscape(battleSys, battleCtx, battleCtx->attacker)) {
            LOAD_SUBSEQ(subscript_escape);
            battleCtx->scriptCursor = 0;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_FIGHT_END;
        } else {
            LOAD_SUBSEQ(subscript_escape_failed);
            battleCtx->scriptCursor = 0;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
        }
    }
}

static void BattleController_SafariBallCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(subscript_throw_safari_ball);

    battleCtx->attacker = BATTLER_US;
    battleCtx->defender = BATTLER_THEM;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
    battleCtx->msgItemTemp = ITEM_SAFARI_BALL;

    int balls = BattleSystem_NumSafariBalls(battleSys) - 1;
    BattleSystem_SetSafariBalls(battleSys, balls);
    BattleIO_RefreshHPGauge(battleSys, battleCtx, BATTLER_US);
}

static void BattleController_SafariBaitCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(subscript_safari_throw_bait);

    battleCtx->attacker = BATTLER_US;
    battleCtx->defender = BATTLER_THEM;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
    battleCtx->scriptTemp = BattleSystem_RandNext(battleSys) % 10;

    // TODO: This 12 could use with a constant
    if (battleCtx->safariCatchStage < 12) {
        battleCtx->safariCatchStage++;
    }

    if (battleCtx->scriptTemp != 0) {
        if (battleCtx->safariEscapeCount < 12) {
            battleCtx->safariEscapeCount++;
        }
    }
}

static void BattleController_SafariRockCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(subscript_safari_throw_rock);

    battleCtx->attacker = BATTLER_US;
    battleCtx->defender = BATTLER_THEM;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
    battleCtx->scriptTemp = BattleSystem_RandNext(battleSys) % 10;

    if (battleCtx->safariEscapeCount) {
        battleCtx->safariEscapeCount--;
    }

    if (battleCtx->scriptTemp != 0) {
        battleCtx->msgTemp = 1;

        if (battleCtx->safariCatchStage) {
            battleCtx->safariCatchStage--;
        }
    }
}

static void BattleController_SafariFleeCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(subscript_safari_escape);

    battleCtx->attacker = BATTLER_US;
    battleCtx->defender = BATTLER_THEM;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
}

enum ObedienceCheckResult {
    OBEY_CHECK_SUCCESS = 0,
    OBEY_CHECK_DO_NOTHING,
    OBEY_CHECK_DIFFERENT_MOVE,
    OBEY_CHECK_HIT_SELF
};

/**
 * @brief Check if the attacking battler obeys its trainer.
 *
 * If the obedience check is failed, then nextSeq will be populated with an
 * interjecting subroutine sequence that should be invoked instead of the
 * move that its trainer chose.
 *
 * @param battleSys
 * @param battleCtx
 * @param[out] nextSeq  A subroutine sequence to override the chosen move
 * @return A value from enum ObedienceCheckResult describing the check result
 */
static int BattleController_CheckObedience(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq)
{
    int rand1, rand2; // must be defined up here to match
    u8 maxLevel = 0;
    u32 battleType = BattleSystem_BattleType(battleSys);
    TrainerInfo *trInfo = BattleSystem_TrainerInfo(battleSys, 0);

    // These separate sentinels do not match if chained into a single sentinel
    if (battleType & BATTLE_TYPE_NO_OBEDIENCE_CHECK) {
        return OBEY_CHECK_SUCCESS;
    }
    if (Battler_Side(battleSys, battleCtx->attacker)) {
        return OBEY_CHECK_SUCCESS;
    }
    if ((battleType & BATTLE_TYPE_AI)
        && BattleSystem_BattlerSlot(battleSys, battleCtx->attacker) == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
        return OBEY_CHECK_SUCCESS;
    }
    if (BattleSystem_TrainerIsOT(battleSys, battleCtx) == TRUE) {
        return OBEY_CHECK_SUCCESS;
    }
    if (Battler_CanPickCommand(battleCtx, battleCtx->attacker) == FALSE) {
        return OBEY_CHECK_SUCCESS;
    }
    if (battleCtx->moveCur == MOVE_BIDE && (battleCtx->battleStatusMask & SYSCTL_LAST_OF_MULTI_TURN)) {
        return OBEY_CHECK_SUCCESS;
    }
    if (TrainerInfo_BadgeCount(trInfo) >= 8) {
        return OBEY_CHECK_SUCCESS;
    }

    maxLevel = 10;
    if (TrainerInfo_BadgeCount(trInfo) >= 2) {
        maxLevel = 30;
    }
    if (TrainerInfo_BadgeCount(trInfo) >= 4) {
        maxLevel = 50;
    }
    if (TrainerInfo_BadgeCount(trInfo) >= 6) {
        maxLevel = 70;
    }

    if (ATTACKING_MON.level <= maxLevel) {
        return OBEY_CHECK_SUCCESS;
    }

    rand1 = ((BattleSystem_RandNext(battleSys) & 0xFF) * (ATTACKING_MON.level + maxLevel)) >> 8;
    if (rand1 < maxLevel) {
        return OBEY_CHECK_SUCCESS;
    }

    if (battleCtx->moveCur == MOVE_RAGE) {
        ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_RAGE;
    }

    if ((ATTACKING_MON.status & MON_CONDITION_SLEEP)
        && (battleCtx->moveCur == MOVE_SNORE || battleCtx->moveCur == MOVE_SLEEP_TALK)) {
        *nextSeq = subscript_disobey_while_asleep;
        return OBEY_CHECK_DO_NOTHING;
    }

    rand1 = ((BattleSystem_RandNext(battleSys) & 0xFF) * (ATTACKING_MON.level + maxLevel)) >> 8;
    if (rand1 < maxLevel) {
        rand1 = BattleSystem_CheckInvalidMoves(battleSys, battleCtx, battleCtx->attacker, FlagIndex(ATTACKER_MOVE_SLOT), CHECK_INVALID_ALL);

        if (rand1 == STRUGGLING_ALL) {
            *nextSeq = subscript_disobey_do_nothing;
            return OBEY_CHECK_DO_NOTHING;
        }

        do {
            rand2 = BattleSystem_RandNext(battleSys) & 3;
        } while (rand1 & FlagIndex(rand2));

        ATTACKER_MOVE_SLOT = rand2;
        battleCtx->moveTemp = ATTACKING_MON.moves[ATTACKER_MOVE_SLOT];
        battleCtx->moveCur = battleCtx->moveTemp;
        battleCtx->defender = BattleSystem_Defender(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveTemp, TRUE, 0);

        if (battleCtx->defender == BATTLER_NONE) {
            ATTACKER_ACTION[BATTLE_ACTION_CHOOSE_TARGET] = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);
        } else {
            ATTACKER_ACTION[BATTLE_ACTION_CHOOSE_TARGET] = battleCtx->defender;
        }

        *nextSeq = subscript_disobey_orders;
        battleCtx->multiHitCheckFlags |= SYSCTL_SKIP_OBEDIENCE_CHECK;
        return OBEY_CHECK_DIFFERENT_MOVE;
    }

    maxLevel = ATTACKING_MON.level - maxLevel;
    rand1 = BattleSystem_RandNext(battleSys) & 0xFF;
    if ((rand1 < maxLevel && (ATTACKING_MON.status & MON_CONDITION_ANY) == FALSE)
        && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_VITAL_SPIRIT
        && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_INSOMNIA
        && (battleCtx->fieldConditionsMask & FIELD_CONDITION_UPROAR) == FALSE) {
        *nextSeq = subscript_disobey_sleep;
        return OBEY_CHECK_DO_NOTHING;
    }

    rand1 -= maxLevel;
    if (rand1 < maxLevel) {
        battleCtx->defender = battleCtx->attacker;
        battleCtx->msgBattlerTemp = battleCtx->defender;

        battleCtx->hpCalcTemp = CALC_SELF_HIT(MOVE_POUND, 40);
        battleCtx->hpCalcTemp = BattleSystem_CalcDamageVariance(battleSys, battleCtx, battleCtx->hpCalcTemp);
        battleCtx->hpCalcTemp *= -1;

        *nextSeq = subscript_disobey_hit_self;
        battleCtx->battleStatusMask |= SYSCTL_CHECK_LOOP_ONLY_ONCE;
        return OBEY_CHECK_HIT_SELF;
    }

    *nextSeq = subscript_disobey_do_nothing;
    return OBEY_CHECK_DO_NOTHING;
}

/**
 * @brief Determine the PP cost for a particular move (depending on its target(s))
 * and decucts that amount from the used move.
 *
 * @param battleSys
 * @param battleCtx
 * @return Always FALSE.
 */
static BOOL BattleController_DecrementPP(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int ppCost = 1;
    if (ATTACKER_SELF_TURN_FLAGS.skipPressureCheck == FALSE && battleCtx->defender != BATTLER_NONE) {
        if (battleCtx->moveTemp == MOVE_IMPRISON) {
            ppCost += BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS_THEIR_SIDE, battleCtx->attacker, ABILITY_PRESSURE);
        } else {
            switch (battleCtx->aiContext.moveTable[battleCtx->moveTemp].range) {
            case RANGE_ALL_ADJACENT:
            case RANGE_FIELD:
                // Number of mons on the field with Pressure
                ppCost += BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS_EXCEPT_ME, battleCtx->attacker, ABILITY_PRESSURE);
                break;

            case RANGE_ADJACENT_OPPONENTS:
            case RANGE_OPPONENT_SIDE:
                // Number of mons on the enemy side with Pressure
                ppCost += BattleSystem_CountAbility(battleSys, battleCtx, COUNT_ALIVE_BATTLERS_THEIR_SIDE, battleCtx->attacker, ABILITY_PRESSURE);
                break;

            case RANGE_USER_SIDE:
            case RANGE_USER:
            case RANGE_USER_OR_ALLY:
            case RANGE_ALLY:
                break;

            default:
                if (battleCtx->attacker != battleCtx->defender
                    && Battler_Ability(battleCtx, battleCtx->defender) == ABILITY_PRESSURE) {
                    ppCost++;
                }

                break;
            }
        }
    }

    int moveSlot = Battler_SlotForMove(&ATTACKING_MON, battleCtx->moveTemp);
    if (ATTACKER_TURN_FLAGS.ppDecremented == FALSE && ATTACKER_TURN_FLAGS.struggling == FALSE) {
        ATTACKER_TURN_FLAGS.ppDecremented = 1;

        if (ATTACKING_MON.ppCur[moveSlot] && moveSlot < LEARNED_MOVES_MAX) {
            if (ATTACKING_MON.ppCur[moveSlot] > ppCost) {
                ATTACKING_MON.ppCur[moveSlot] -= ppCost;
            } else {
                ATTACKING_MON.ppCur[moveSlot] = 0;
            }

            BattleMon_CopyToParty(battleSys, battleCtx, battleCtx->attacker);
        } else {
            battleCtx->moveStatusFlags |= MOVE_STATUS_NO_PP;
        }
    } else if (ATTACKING_MON.ppCur[moveSlot] == 0
        && (battleCtx->battleStatusMask & SYSCTL_LAST_OF_MULTI_TURN) == FALSE
        && (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_MOVE_LOCKED) == FALSE
        && (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_THRASH) == FALSE
        && MON_IS_UPROARING(battleCtx->attacker) == FALSE
        && moveSlot < LEARNED_MOVES_MAX) {
        battleCtx->moveStatusFlags |= MOVE_STATUS_NO_PP;
    }

    return FALSE;
}

/**
 * @brief Determine if the currently-used move still has a valid target.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the move should now fail due to having no target; FALSE otherwise.
 */
static BOOL BattleController_HasNoTarget(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result = FALSE;
    BOOL solarMove = FALSE;

    if (NO_TARGET) {
        LOAD_SUBSEQ(subscript_no_target);
        battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

        result = TRUE;
    }

    // need this if-statement to match, even though it's a single assignment
    if (NO_CLOUD_NINE
        && CURRENT_MOVE_DATA.effect == BATTLE_EFFECT_SKIP_CHARGE_TURN_IN_SUN
        && (battleCtx->fieldConditionsMask & FIELD_CONDITION_SUNNY)) {
        solarMove = TRUE;
    }

    // Don't alter the target for charge-turn moves that are just charging up this turn
    if (battleCtx->defender == BATTLER_NONE
        && Move_IsMultiTurn(battleCtx, battleCtx->moveCur) == TRUE
        && result == FALSE
        && solarMove == FALSE
        && Battler_HeldItemEffect(battleCtx, battleCtx->attacker) != HOLD_EFFECT_CHARGE_SKIP
        && (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_MOVE_LOCKED) == FALSE) {
        battleCtx->defender = battleCtx->attacker;
    }

    return result;
}

/**
 * @brief Invoke the type-effectiveness chart to determine the current move's
 * effectiveness on its target.
 *
 * Note: Levitate is included in the type-effectiveness chart as a functional
 * immunity to Ground-type attacks.
 *
 * @param battleSys
 * @param battleCtx
 * @return Always 0.
 */
static int BattleController_CheckTypeChart(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if ((CURRENT_MOVE_DATA.range != RANGE_USER
            && CURRENT_MOVE_DATA.range != RANGE_USER_SIDE
            && CURRENT_MOVE_DATA.power
            && (battleCtx->battleStatusMask & SYSCTL_IGNORE_IMMUNITIES) == FALSE
            && (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) == FALSE)
        || battleCtx->moveCur == MOVE_THUNDER_WAVE) {
        battleCtx->damage = BattleSystem_ApplyTypeChart(battleSys,
            battleCtx,
            battleCtx->moveCur,
            battleCtx->moveType,
            battleCtx->attacker,
            battleCtx->defender,
            battleCtx->damage,
            &battleCtx->moveStatusFlags);

        if (battleCtx->moveStatusFlags & MOVE_STATUS_INEFFECTIVE) {
            battleCtx->moveFailFlags[battleCtx->attacker].noEffect = TRUE;
        }
    }

    return 0;
}

enum CheckStatusState {
    CHECK_STATUS_START = 0,

    CHECK_STATUS_STATE_SLEEP,
    CHECK_STATUS_STATE_FREEZE,
    CHECK_STATUS_STATE_TRUANT,
    CHECK_STATUS_STATE_RECHARGING,
    CHECK_STATUS_STATE_FLINCH,
    CHECK_STATUS_STATE_DISABLE,
    CHECK_STATUS_STATE_TAUNT,
    CHECK_STATUS_STATE_IMPRISON,
    CHECK_STATUS_STATE_GRAVITY,
    CHECK_STATUS_STATE_HEAL_BLOCK,
    CHECK_STATUS_STATE_CONFUSION,
    CHECK_STATUS_STATE_PARALYSIS,
    CHECK_STATUS_STATE_ATTRACT,
    CHECK_STATUS_STATE_BIDE,
    CHECK_STATUS_STATE_SELF_THAW,

    CHECK_STATUS_END,
};

enum CheckStatusAction {
    CHECK_STATUS_LOOP_BACK = 0,
    CHECK_STATUS_DISRUPT_MOVE, // wholly disrupt the move; attacker does not get a turn
    CHECK_STATUS_GO_TO_SCRIPT, // execute a given script, then proceed with the chosen move
    CHECK_STATUS_DONE,
};

/**
 * @brief Determine if status should disrupt the attacker's current turn.
 *
 * "Disruption" is defined as the attacker functionally wasting a turn, e.g.,
 * continuing to sleep, or being fully paralyzed. Some status conditions have a
 * "partial disruption," where an interjecting subroutine will be run before
 * the attacker executes its move, e.g. confusion or infatuation.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if there is a disruption effect to apply or an interjecting
 * script to invoke before the attacker executes its move for turn.
 */
static BOOL BattleController_CheckStatusDisruption(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int moveEffect = battleCtx->aiContext.moveTable[battleCtx->moveCur].effect;
    int result = CHECK_STATUS_LOOP_BACK;

    do {
        switch (battleCtx->statusCheckState) {
        case CHECK_STATUS_START:
            ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_DESTINY_BOND;
            ATTACKING_MON.moveEffectsMask &= ~MOVE_EFFECT_GRUDGE;
            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_SLEEP:
            if (ATTACKING_MON.status & MON_CONDITION_SLEEP) {
                if ((battleCtx->fieldConditionsMask & FIELD_CONDITION_UPROAR)
                    && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_SOUNDPROOF) {
                    battleCtx->msgBattlerTemp = battleCtx->attacker;

                    LOAD_SUBSEQ(subscript_wake_up);
                    battleCtx->commandNext = battleCtx->command;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                    result = CHECK_STATUS_GO_TO_SCRIPT;
                } else if ((battleCtx->moveCur != MOVE_SLEEP_TALK && battleCtx->moveTemp == MOVE_SLEEP_TALK) == FALSE) {
                    int sleepDec;
                    if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_EARLY_BIRD) {
                        sleepDec = 2;
                    } else {
                        sleepDec = 1;
                    }

                    if ((ATTACKING_MON.status & MON_CONDITION_SLEEP) < sleepDec) {
                        ATTACKING_MON.status &= ~MON_CONDITION_SLEEP;
                    } else {
                        ATTACKING_MON.status -= sleepDec;
                    }

                    if (ATTACKING_MON.status & MON_CONDITION_SLEEP) {
                        if (battleCtx->moveCur != MOVE_SNORE && battleCtx->moveTemp != MOVE_SLEEP_TALK) {
                            LOAD_SUBSEQ(subscript_sleeping);

                            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                            battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                            result = CHECK_STATUS_GO_TO_SCRIPT;
                        }
                    } else {
                        battleCtx->msgBattlerTemp = battleCtx->attacker;

                        LOAD_SUBSEQ(subscript_wake_up);
                        battleCtx->commandNext = battleCtx->command;
                        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                        result = CHECK_STATUS_GO_TO_SCRIPT;
                    }
                }
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_FREEZE:
            if (ATTACKING_MON.status & MON_CONDITION_FREEZE) {
                if (BattleSystem_RandNext(battleSys) % 5 != 0) {
                    if (moveEffect != BATTLE_EFFECT_THAW_AND_BURN_HIT
                        && moveEffect != BATTLE_EFFECT_RECOIL_BURN_HIT) {
                        LOAD_SUBSEQ(subscript_frozen);
                        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                        battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                        result = CHECK_STATUS_DISRUPT_MOVE;
                    }
                } else {
                    battleCtx->msgBattlerTemp = battleCtx->attacker;

                    LOAD_SUBSEQ(subscript_thaw_out);
                    battleCtx->commandNext = battleCtx->command;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                    result = CHECK_STATUS_GO_TO_SCRIPT;
                }
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_TRUANT:
            if (Battler_CheckTruant(battleCtx, battleCtx->attacker) == TRUE) {
                LOAD_SUBSEQ(subscript_loafing_around);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_RECHARGING:
            if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_RECHARGING) {
                ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_RECHARGING;

                LOAD_SUBSEQ(subscript_recharging);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_FLINCH:
            if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_FLINCH) {
                ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_FLINCH;
                battleCtx->moveFailFlags[battleCtx->attacker].flinched = TRUE;

                LOAD_SUBSEQ(subscript_flinched);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_DISABLE:
            if (ATTACKING_MON.moveEffectsData.disabledMove == battleCtx->moveTemp) {
                battleCtx->moveFailFlags[battleCtx->attacker].disabled = TRUE;

                LOAD_SUBSEQ(subscript_move_is_disabled);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_TAUNT:
            if (ATTACKING_MON.moveEffectsData.tauntedTurns
                && battleCtx->aiContext.moveTable[battleCtx->moveCur].power == 0) {
                battleCtx->moveFailFlags[battleCtx->attacker].taunted = TRUE;

                LOAD_SUBSEQ(subscript_move_fail_taunted);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_IMPRISON:
            if (Move_Imprisoned(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur)) {
                battleCtx->moveFailFlags[battleCtx->attacker].imprisoned = TRUE;

                LOAD_SUBSEQ(subscript_move_is_imprisoned);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_GRAVITY:
            if (Move_FailsInHighGravity(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur)) {
                battleCtx->moveFailFlags[battleCtx->attacker].gravity = TRUE;

                LOAD_SUBSEQ(subscript_move_fail_gravity);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_HEAL_BLOCK:
            if (Move_HealBlocked(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur)) {
                battleCtx->moveFailFlags[battleCtx->attacker].healBlocked = TRUE;

                LOAD_SUBSEQ(subscript_move_is_heal_blocked);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_CONFUSION:
            battleCtx->statusCheckState++;

            if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_CONFUSION) {
                ATTACKING_MON.statusVolatile -= (1 << VOLATILE_CONDITION_CONFUSION_SHIFT);

                if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_CONFUSION) {
                    if (BattleSystem_RandNext(battleSys) & 1) {
                        LOAD_SUBSEQ(subscript_confused);
                        battleCtx->commandNext = battleCtx->command;
                        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                        result = CHECK_STATUS_GO_TO_SCRIPT;
                    } else {
                        battleCtx->moveFailFlags[battleCtx->attacker].confused = TRUE;
                        battleCtx->defender = battleCtx->attacker;
                        battleCtx->msgBattlerTemp = battleCtx->defender;

                        battleCtx->hpCalcTemp = CALC_SELF_HIT(MOVE_STRUGGLE, 40);
                        battleCtx->hpCalcTemp = BattleSystem_CalcDamageVariance(battleSys, battleCtx, battleCtx->hpCalcTemp);
                        battleCtx->hpCalcTemp *= -1;

                        LOAD_SUBSEQ(subscript_hurt_self_in_confusion);
                        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                        battleCtx->commandNext = BATTLE_CONTROL_LOOP_FAINTED;

                        result = CHECK_STATUS_DISRUPT_MOVE;
                    }
                } else {
                    LOAD_SUBSEQ(subscript_snap_out_of_confusion);
                    battleCtx->commandNext = battleCtx->command;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                    result = CHECK_STATUS_GO_TO_SCRIPT;
                }
            }
            break;

        case CHECK_STATUS_STATE_PARALYSIS:
            if ((ATTACKING_MON.status & MON_CONDITION_PARALYSIS)
                && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_MAGIC_GUARD) {
                if (BattleSystem_RandNext(battleSys) % 4 == 0) {
                    battleCtx->moveFailFlags[battleCtx->attacker].paralyzed = TRUE;

                    LOAD_SUBSEQ(subscript_fully_paralyzed);
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                    battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                    result = CHECK_STATUS_DISRUPT_MOVE;
                }
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_ATTRACT:
            if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_ATTRACT) {
                battleCtx->msgBattlerTemp = LowestBit(
                    (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_ATTRACT) >> VOLATILE_CONDITION_ATTRACT_SHIFT);

                if (BattleSystem_RandNext(battleSys) & 1) {
                    LOAD_SUBSEQ(subscript_infatuated);
                    battleCtx->commandNext = battleCtx->command;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                    result = CHECK_STATUS_GO_TO_SCRIPT;
                } else {
                    battleCtx->moveFailFlags[battleCtx->attacker].infatuated = TRUE;

                    LOAD_SUBSEQ(subscript_immobilized_by_love);
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                    battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                    result = CHECK_STATUS_DISRUPT_MOVE;
                }
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_STATE_BIDE:
            battleCtx->statusCheckState++;

            if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_BIDE) {
                ATTACKING_MON.statusVolatile -= (1 << VOLATILE_CONDITION_BIDE_SHIFT);

                if ((ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_BIDE) == FALSE
                    && battleCtx->storedDamage[battleCtx->attacker]) {
                    battleCtx->damage = battleCtx->storedDamage[battleCtx->attacker] * 2;

                    if (battleCtx->battleMons[battleCtx->lastHitByBattler[battleCtx->attacker]].curHP) {
                        battleCtx->defender = battleCtx->lastHitByBattler[battleCtx->attacker];
                    } else {
                        battleCtx->defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);

                        if (DEFENDING_MON.curHP == 0) {
                            LOAD_SUBSEQ(subscript_bide_no_target);
                            battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
                            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                            result = CHECK_STATUS_GO_TO_SCRIPT;
                            break;
                        }
                    }
                }

                LOAD_SUBSEQ(subscript_bide_end);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                result = CHECK_STATUS_GO_TO_SCRIPT;
            }
            break;

        case CHECK_STATUS_STATE_SELF_THAW:
            if ((ATTACKING_MON.status & MON_CONDITION_FREEZE)
                && (moveEffect == BATTLE_EFFECT_THAW_AND_BURN_HIT || moveEffect == BATTLE_EFFECT_RECOIL_BURN_HIT)) {
                LOAD_SUBSEQ(subscript_defrosted_by_move);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                result = CHECK_STATUS_GO_TO_SCRIPT;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_END:
            battleCtx->statusCheckState = CHECK_STATUS_START;
            result = CHECK_STATUS_DONE;
            break;
        }
    } while (result == CHECK_STATUS_LOOP_BACK);

    BattleMon_CopyToParty(battleSys, battleCtx, battleCtx->attacker);

    if (result == CHECK_STATUS_DISRUPT_MOVE) {
        battleCtx->battleStatusMask |= SYSCTL_CHECK_LOOP_ONLY_ONCE;
        battleCtx->moveStatusFlags |= MOVE_STATUS_NO_MORE_WORK;
    }

    return result != CHECK_STATUS_DONE;
}

enum ImmunityAbilityState {
    IMMUNITY_ABILITY_STATE_START = 0,

    IMMUNITY_ABILITY_STATE_CHECK = IMMUNITY_ABILITY_STATE_START,

    IMMUNITY_ABILITY_STATE_END
};

/**
 * @brief Trigger any applicable immunity abilities.
 *
 * Immunity abilities include (but are not limited to) those similar to:
 * - Volt Absorb
 * - Flash Fire
 * - Soundproof
 *
 * Of note: Levitate is *not* checked here; it is checked as part of the type-
 * effectiveness chart.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if there is an interjecting subroutine to execute instead of
 * the rest of the user's move.
 */
static BOOL BattleController_TriggerImmunityAbilities(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int result = STATE_PROCESSING;

    do {
        switch (battleCtx->abilityCheckState) {
        case IMMUNITY_ABILITY_STATE_CHECK:
            int nextSeq = BattleSystem_TriggerImmunityAbility(battleCtx, battleCtx->attacker, battleCtx->defender);

            if ((nextSeq && (battleCtx->moveStatusFlags & MOVE_STATUS_DID_NOT_HIT) == FALSE)
                || nextSeq == subscript_blocked_by_soundproof) {
                LOAD_SUBSEQ(nextSeq);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->moveStatusFlags |= MOVE_STATUS_NO_MORE_WORK;

                result = STATE_BREAK_OUT;
            }

            battleCtx->abilityCheckState++;
            break;

        case IMMUNITY_ABILITY_STATE_END:
            battleCtx->abilityCheckState = IMMUNITY_ABILITY_STATE_START;
            result = STATE_DONE;
            break;
        }
    } while (result == STATE_PROCESSING);

    return result != STATE_DONE;
}

/**
 * @brief Load the Quick Claw effect subroutine sequence.
 *
 * Activation checks are all handled within the loaded subroutine sequence.
 *
 * @param battleSys
 * @param battleCtx
 * @return Always TRUE.
 */
static BOOL BattleController_LoadQuickClawCheck(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(subscript_check_quick_claw);

    battleCtx->commandNext = battleCtx->command;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

    return TRUE;
}

#include "data/hit_rate_stages.h"

static inline int CalcMoveType(BattleContext *battleCtx, int attacker, int move)
{
    if (Battler_Ability(battleCtx, attacker) == ABILITY_NORMALIZE) {
        return TYPE_NORMAL;
    } else if (battleCtx->moveType) {
        return battleCtx->moveType;
    }

    return MOVE_DATA(move).type;
}

/**
 * @brief Check if an attacker's specified move will hit a defender.
 *
 * This is the basic Accuracy formula. It does NOT handle special cases such as:
 * - OHKO moves
 * - perfectly-accurate moves (e.g. Aerial Ace, Vital Throw)
 * - moves which become perfectly-accurate in certain weather conditions
 * - effects which override the standard accuracy formula (e.g. No Guard)
 *
 * If the move is deemed to miss its target, then the move status flags will be
 * updated with MOVE_STATUS_MISSED.
 *
 * @param battleSys
 * @param battleCtx
 * @param attacker  The attacking battler
 * @param defender  The defending battler
 * @param move      The attacker's move
 * @return Always 0.
 */
static int BattleController_CheckMoveHitAccuracy(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move)
{
    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) {
        return 0;
    }

    u8 moveType = CalcMoveType(battleCtx, attacker, move);
    u8 moveClass = MOVE_DATA(move).class;
    s8 accStages = battleCtx->battleMons[attacker].statBoosts[BATTLE_STAT_ACCURACY] - 6;
    s8 evaStages = 6 - battleCtx->battleMons[defender].statBoosts[BATTLE_STAT_EVASION];

    if (Battler_Ability(battleCtx, attacker) == ABILITY_SIMPLE) {
        accStages *= 2;
    }
    if (Battler_IgnorableAbility(battleCtx, attacker, defender, ABILITY_SIMPLE) == TRUE) {
        evaStages *= 2;
    }
    if (Battler_IgnorableAbility(battleCtx, attacker, defender, ABILITY_UNAWARE) == TRUE) {
        accStages = 0;
    }
    if (Battler_Ability(battleCtx, attacker) == ABILITY_UNAWARE) {
        evaStages = 0;
    }
    if (MON_IS_IDENTIFIED(defender) && evaStages < 0) {
        evaStages = 0;
    }

    s8 sumStages = 6 + evaStages + accStages;
    if (sumStages < 0) {
        sumStages = 0;
    }
    if (sumStages > 12) {
        sumStages = 12;
    }

    u16 hitRate = MOVE_DATA(move).accuracy;
    if (hitRate == 0) {
        return 0;
    }

    // Charge-up moves don't consider accuracy on their first turn
    if (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) {
        return 0;
    }

    // These moves shouldn't use this formula
    if (battleCtx->battleStatusMask & SYSCTL_NONSTANDARD_ACC_CHECK) {
        return 0;
    }

    if (NO_CLOUD_NINE && WEATHER_IS_SUN && MOVE_DATA(move).effect == BATTLE_EFFECT_THUNDER) {
        hitRate = 50;
    }

    hitRate *= HitRateByStage[sumStages].numerator;
    hitRate /= HitRateByStage[sumStages].denominator;

    if (Battler_Ability(battleCtx, attacker) == ABILITY_COMPOUND_EYES) {
        hitRate = hitRate * 130 / 100;
    }

    if (NO_CLOUD_NINE) {
        if (WEATHER_IS_SAND && Battler_IgnorableAbility(battleCtx, attacker, defender, ABILITY_SAND_VEIL) == TRUE) {
            hitRate = hitRate * 80 / 100;
        }

        if (WEATHER_IS_HAIL && Battler_IgnorableAbility(battleCtx, attacker, defender, ABILITY_SNOW_CLOAK) == TRUE) {
            hitRate = hitRate * 80 / 100;
        }

        if (battleCtx->fieldConditionsMask & FIELD_CONDITION_DEEP_FOG) {
            hitRate = hitRate * 6 / 10;
        }
    }

    if (Battler_Ability(battleCtx, attacker) == ABILITY_HUSTLE && moveClass == CLASS_PHYSICAL) {
        hitRate = hitRate * 80 / 100;
    }

    if (Battler_IgnorableAbility(battleCtx, attacker, defender, ABILITY_TANGLED_FEET) == TRUE
        && (battleCtx->battleMons[defender].statusVolatile & VOLATILE_CONDITION_CONFUSION)) {
        hitRate = hitRate * 50 / 100;
    }

    int itemEffect = Battler_HeldItemEffect(battleCtx, defender);
    int itemPower = Battler_HeldItemPower(battleCtx, defender, 0);

    if (itemEffect == HOLD_EFFECT_ACC_REDUCE) {
        hitRate = hitRate * (100 - itemPower) / 100;
    }

    itemEffect = Battler_HeldItemEffect(battleCtx, attacker);
    itemPower = Battler_HeldItemPower(battleCtx, attacker, 0);

    if (itemEffect == HOLD_EFFECT_ACCURACY_UP) {
        hitRate = hitRate * (100 + itemPower) / 100;
    }

    if (itemEffect == HOLD_EFFECT_ACCURACY_UP_SLOWER && Battler_MovedThisTurn(battleCtx, defender) == TRUE) {
        hitRate = hitRate * (100 + itemPower) / 100;
    }

    if (battleCtx->battleMons[attacker].moveEffectsData.micleBerry) {
        battleCtx->battleMons[attacker].moveEffectsData.micleBerry = FALSE;
        hitRate = hitRate * 120 / 100;
    }

    if (battleCtx->fieldConditionsMask & FIELD_CONDITION_GRAVITY) {
        hitRate = hitRate * 10 / 6;
    }

    if ((BattleSystem_RandNext(battleSys) % 100) + 1 > hitRate) {
        battleCtx->moveStatusFlags |= MOVE_STATUS_MISSED;
    }

    return 0;
}

/**
 * @brief Check if any effects will override an attacker's move hitting its
 * target.
 *
 * This is where the following effects are checked:
 * - Protect
 * - Lock-On / Mind Reader
 * - No Guard
 * - Thunder / Blizzard (in rain / hail, respectively)
 * - Semi-invulnerability (Fly, Bounce, Dig, Dive, Shadow Force)
 *
 * @param battleSys
 * @param battleCtx
 * @param attacker  The attacking battler
 * @param defender  The defending battler
 * @param move      The attacker's move
 * @return Always 0.
 */
static int BattleController_CheckMoveHitOverrides(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move)
{
    if (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) {
        return 0;
    }

    if (battleCtx->turnFlags[defender].protecting
        && (MOVE_DATA(move).flags & MOVE_FLAG_CAN_PROTECT)
        && (move != MOVE_CURSE || Move_IsGhostCurse(battleCtx, move, attacker) == TRUE) // Ghost-Curse can be Protected
        && (Move_IsMultiTurn(battleCtx, move) == FALSE || (battleCtx->battleStatusMask & SYSCTL_LAST_OF_MULTI_TURN))) {
        Battler_UnlockMoveChoice(battleSys, battleCtx, attacker);
        battleCtx->moveStatusFlags |= MOVE_STATUS_PROTECTED;
        return 0;
    }

    if ((battleCtx->battleStatusMask & SYSCTL_NONSTANDARD_ACC_CHECK) == FALSE
        && (MON_IS_LOCKED_ONTO(attacker, defender)
            || Battler_Ability(battleCtx, attacker) == ABILITY_NO_GUARD
            || Battler_Ability(battleCtx, defender) == ABILITY_NO_GUARD)) {
        battleCtx->moveStatusFlags &= ~MOVE_STATUS_MISSED;
        return 0;
    }

    if (NO_CLOUD_NINE) {
        if (WEATHER_IS_RAIN && MOVE_DATA(move).effect == BATTLE_EFFECT_THUNDER) {
            battleCtx->moveStatusFlags &= ~MOVE_STATUS_MISSED;
        }

        if (WEATHER_IS_HAIL && MOVE_DATA(move).effect == BATTLE_EFFECT_BLIZZARD) {
            battleCtx->moveStatusFlags &= ~MOVE_STATUS_MISSED;
        }
    }

    if ((battleCtx->moveStatusFlags & MOVE_STATUS_BYPASSED_ACCURACY) == FALSE
        && CURRENT_MOVE_DATA.range != RANGE_OPPONENT_SIDE
        && (((battleCtx->battleStatusMask & SYSCTL_HIT_DURING_FLY) == FALSE && (battleCtx->battleMons[defender].moveEffectsMask & MOVE_EFFECT_AIRBORNE))
            || ((battleCtx->battleStatusMask & SYSCTL_HIT_DURING_SHADOW_FORCE) == FALSE && (battleCtx->battleMons[defender].moveEffectsMask & MOVE_EFFECT_SHADOW_FORCE))
            || ((battleCtx->battleStatusMask & SYSCTL_HIT_DURING_DIG) == FALSE && (battleCtx->battleMons[defender].moveEffectsMask & MOVE_EFFECT_UNDERGROUND))
            || ((battleCtx->battleStatusMask & SYSCTL_HIT_DURING_DIVE) == FALSE && (battleCtx->battleMons[defender].moveEffectsMask & MOVE_EFFECT_UNDERWATER)))) {
        battleCtx->moveStatusFlags |= MOVE_STATUS_SEMI_INVULNERABLE;
    }

    return 0;
}

/**
 * @brief Check if the attacker's move for the turn has been stolen.
 *
 * A move can be stolen either by targeting a battler which used Magic Coat
 * or by using a move which can be affected by Snatch. If a move is stolen
 * in this way, then an interjecting subroutine will be loaded into the
 * sequence buffer for execution.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the move should be stolen and its targets updated, FALSE
 * otherwise.
 */
static BOOL BattleController_MoveStolen(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i, battler; // must declare up here to match
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    if (battleCtx->defender == BATTLER_NONE) {
        return FALSE;
    }

    if ((battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
        && DEFENDER_TURN_FLAGS.magicCoat
        && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_CAN_MAGIC_COAT)) {
        DEFENDER_TURN_FLAGS.magicCoat = FALSE;

        battleCtx->moveProtect[battleCtx->attacker] = FALSE;
        battleCtx->movePrevByBattler[battleCtx->attacker] = battleCtx->moveTemp;
        battleCtx->movePrev = battleCtx->moveTemp;

        battleCtx->battleStatusMask |= SYSCTL_REUSE_LAST_MOVE;

        LOAD_SUBSEQ(subscript_magic_coat);
        battleCtx->commandNext = battleCtx->command;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

        BattleSystem_DecPPForPressure(battleCtx, battleCtx->defender, battleCtx->attacker);
        return TRUE;
    }

    for (i = 0; i < maxBattlers; i++) {
        battler = battleCtx->monSpeedOrder[i];
        if ((battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
            && battleCtx->turnFlags[battler].snatching
            && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_CAN_SNATCH)) {
            battleCtx->msgBattlerTemp = battler;
            battleCtx->turnFlags[battler].snatching = FALSE;

            if ((battleCtx->battleStatusMask & SYSCTL_REUSE_LAST_MOVE) == FALSE) {
                battleCtx->moveProtect[battleCtx->attacker] = 0;
                battleCtx->movePrevByBattler[battleCtx->attacker] = battleCtx->moveTemp;
                battleCtx->movePrev = battleCtx->moveTemp;

                battleCtx->battleStatusMask |= SYSCTL_REUSE_LAST_MOVE;
            }

            LOAD_SUBSEQ(subscript_snatch);
            battleCtx->commandNext = battleCtx->command;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

            BattleSystem_DecPPForPressure(battleCtx, battler, battleCtx->attacker);
            return TRUE;
        }
    }

    return FALSE;
}

static void BattleController_ExecScript(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (BattleScript_Exec(battleSys, battleCtx) == TRUE) {
        battleCtx->scriptCursor = 0;
        battleCtx->command = battleCtx->commandNext;
    }
}

enum BeforeMoveState {
    BEFORE_MOVE_START = 0,

    BEFORE_MOVE_STATE_QUICK_CLAW = BEFORE_MOVE_START,
    BEFORE_MOVE_STATE_STATUS_DISRUPTION,
    BEFORE_MOVE_STATE_CHECK_OBEDIENCE,
    BEFORE_MOVE_STATE_DECREMENT_PP,
    BEFORE_MOVE_STATE_CHECK_TARGET_EXISTS,
    BEFORE_MOVE_STATE_CHECK_STOLEN,
    BEFORE_MOVE_STATE_REDIRECT_TARGET,

    BEFORE_MOVE_END,
};

static void BattleController_BeforeMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    switch (battleCtx->beforeMoveCheckState) {
    case BEFORE_MOVE_STATE_QUICK_CLAW:
        BattleController_LoadQuickClawCheck(battleSys, battleCtx);
        battleCtx->beforeMoveCheckState++;
        return;

    case BEFORE_MOVE_STATE_STATUS_DISRUPTION:
        if ((battleCtx->multiHitCheckFlags & SYSCTL_SKIP_STATUS_CHECK) == FALSE
            && BattleController_CheckStatusDisruption(battleSys, battleCtx) == TRUE) {
            return;
        }
        battleCtx->beforeMoveCheckState++;

    case BEFORE_MOVE_STATE_CHECK_OBEDIENCE:
        int result;
        int nextSeq;

        if ((battleCtx->multiHitCheckFlags & SYSCTL_SKIP_OBEDIENCE_CHECK) == FALSE) {
            result = BattleController_CheckObedience(battleSys, battleCtx, &nextSeq);

            if (result) {
                switch (result) {
                case OBEY_CHECK_DO_NOTHING:
                    battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
                    break;
                case OBEY_CHECK_DIFFERENT_MOVE:
                    battleCtx->commandNext = battleCtx->command;
                    break;
                case OBEY_CHECK_HIT_SELF:
                    battleCtx->commandNext = BATTLE_CONTROL_LOOP_FAINTED;
                    break;
                }

                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                LOAD_SUBSEQ(nextSeq);

                return;
            }
        }

        battleCtx->beforeMoveCheckState++;

    case BEFORE_MOVE_STATE_DECREMENT_PP:
        if ((battleCtx->multiHitCheckFlags & SYSCTL_SKIP_PP_DECREMENT) == FALSE
            && BattleController_DecrementPP(battleSys, battleCtx) == TRUE) {
            return;
        }

        battleCtx->beforeMoveCheckState++;

    case BEFORE_MOVE_STATE_CHECK_TARGET_EXISTS:
        if (BattleController_HasNoTarget(battleSys, battleCtx) == TRUE) {
            return;
        }

        battleCtx->beforeMoveCheckState++;

    case BEFORE_MOVE_STATE_CHECK_STOLEN:
        if ((battleCtx->multiHitCheckFlags & SYSCTL_SKIP_STOLEN_CHECK) == FALSE
            && BattleController_MoveStolen(battleSys, battleCtx) == 1) {
            return;
        }

        battleCtx->beforeMoveCheckState++;

    case BEFORE_MOVE_STATE_REDIRECT_TARGET:
        BattleSystem_CheckRedirectionAbilities(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur);
        battleCtx->beforeMoveCheckState = BEFORE_MOVE_START;
    }

    if (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) {
        battleCtx->command = BATTLE_CONTROL_MOVE_FAILED;
    } else {
        battleCtx->battleStatusMask2 |= SYSCTL_MOVE_SUCCEEDED;

        BattleSystem_LoadScript(battleCtx, 0, battleCtx->moveCur);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_TRY_MOVE;

        BattleSystem_UpdateLastResort(battleSys, battleCtx);
    }

    BattleSystem_UpdateMetronomeCount(battleSys, battleCtx);
}

enum TryMoveState {
    TRY_MOVE_START = 0,

    TRY_MOVE_STATE_CHECK_VALID_TARGET = TRY_MOVE_START,
    TRY_MOVE_STATE_TRIGGER_REDIRECTION_ABILITIES,
    TRY_MOVE_STATE_CHECK_MOVE_HITS,
    TRY_MOVE_STATE_CHECK_MOVE_HIT_OVERRIDES,
    TRY_MOVE_STATE_CHECK_TYPE_CHART,
    TRY_MOVE_STATE_TRIGGER_IMMUNITY_ABILITIES,

    TRY_MOVE_END,
};

static void BattleController_TryMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    switch (battleCtx->tryMoveCheckState) {
    case TRY_MOVE_STATE_CHECK_VALID_TARGET:
        battleCtx->tryMoveCheckState++;

        if (BattleController_HasNoTarget(battleSys, battleCtx) == TRUE) {
            return;
        }

    case TRY_MOVE_STATE_TRIGGER_REDIRECTION_ABILITIES:
        battleCtx->tryMoveCheckState++;

        if (BattleSystem_TriggerRedirectionAbilities(battleSys, battleCtx) == TRUE) {
            return;
        }

    case TRY_MOVE_STATE_CHECK_MOVE_HITS:
        if ((battleCtx->multiHitCheckFlags & SYSCTL_SKIP_ACCURACY_CHECK) == FALSE
            && battleCtx->defender != BATTLER_NONE
            && BattleController_CheckMoveHitAccuracy(battleSys, battleCtx, battleCtx->attacker, battleCtx->defender, battleCtx->moveCur) == 1) {
            return;
        }

        battleCtx->tryMoveCheckState++;

    case TRY_MOVE_STATE_CHECK_MOVE_HIT_OVERRIDES:
        if ((battleCtx->multiHitCheckFlags & SYSCTL_SKIP_ACCURACY_OVERRIDES) == FALSE
            && battleCtx->defender != BATTLER_NONE
            && BattleController_CheckMoveHitOverrides(battleSys, battleCtx, battleCtx->attacker, battleCtx->defender, battleCtx->moveCur) == 1) {
            return;
        }

        battleCtx->tryMoveCheckState++;

    case TRY_MOVE_STATE_CHECK_TYPE_CHART:
        if ((battleCtx->multiHitCheckFlags & SYSCTL_SKIP_TYPE_CHART_CHECK) == FALSE
            && battleCtx->defender != BATTLER_NONE
            && BattleController_CheckTypeChart(battleSys, battleCtx) == 1) {
            return;
        }

        battleCtx->tryMoveCheckState++;

    case TRY_MOVE_STATE_TRIGGER_IMMUNITY_ABILITIES:
        if ((battleCtx->multiHitCheckFlags & SYSCTL_SKIP_IMMUNITY_TRIGGERS) == FALSE
            && battleCtx->defender != BATTLER_NONE
            && BattleController_TriggerImmunityAbilities(battleSys, battleCtx) == 1) {
            return;
        }

        battleCtx->tryMoveCheckState++;

    case TRY_MOVE_END:
        battleCtx->tryMoveCheckState = TRY_MOVE_START;
        break;
    }

    battleCtx->command = BATTLE_CONTROL_PRIMARY_EFFECT;
}

static void BattleController_PrimaryEffect(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int nextSeq;
    if (BattleSystem_TriggerPrimaryEffect(battleSys, battleCtx, &nextSeq) == TRUE) {
        LOAD_SUBSEQ(nextSeq);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_MOVE_FAILED;

        return;
    }

    battleCtx->command = BATTLE_CONTROL_MOVE_FAILED;
}

static void BattleController_CheckMoveFailure(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->moveStatusFlags & MOVE_STATUS_NO_MORE_WORK) {
        battleCtx->command = BATTLE_CONTROL_LOOP_SPREAD_MOVES;
    } else if (battleCtx->moveStatusFlags & MOVE_STATUS_NO_PP) {
        LOAD_SUBSEQ(subscript_no_pp);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
    } else if (battleCtx->multiHitLoop && (battleCtx->moveStatusFlags & MOVE_STATUS_MISSED)) {
        // Thrashing moves have a special status flag.
        battleCtx->moveStatusFlags &= ~MOVE_STATUS_MISSED;
        battleCtx->moveStatusFlags |= MOVE_STATUS_MULTI_HIT_DISRUPTED;
        battleCtx->command = BATTLE_CONTROL_AFTER_MOVE_MESSAGE;
    } else if (battleCtx->moveStatusFlags & MOVE_STATUS_DID_NOT_HIT) {
        LOAD_SUBSEQ(subscript_missed);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_LOOP_FAINTED; // crash damage can kill
    } else {
        battleCtx->command = BATTLE_CONTROL_USE_MOVE;
    }
}

static void BattleController_UseMove(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(subscript_use_move);
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_UPDATE_HP;
}

static void BattleController_UpdateHP(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->moveStatusFlags & MOVE_STATUS_ONE_HIT_KO) {
        battleCtx->damage = DEFENDING_MON.maxHP * -1;
    }

    if (battleCtx->damage) {
        int itemEffect = Battler_HeldItemEffect(battleCtx, battleCtx->defender);
        int itemPower = Battler_HeldItemPower(battleCtx, battleCtx->defender, 0);

        GF_ASSERT(battleCtx->damage < 0);

        if (Battler_Side(battleSys, battleCtx->attacker) == Battler_Side(battleSys, battleCtx->defender)) {
            BattleIO_IncrementRecord(battleSys, battleCtx->attacker, 0, RECORD_ATTACKED_ALLY);
        }

        battleCtx->lastHitByBattler[battleCtx->defender] = battleCtx->attacker;

        if ((DEFENDING_MON.statusVolatile & VOLATILE_CONDITION_SUBSTITUTE) && battleCtx->damage < 0) {
            if (DEFENDING_MON.moveEffectsData.substituteHP + battleCtx->damage <= 0) {
                ATTACKER_SELF_TURN_FLAGS.shellBellDamageDealt += DEFENDING_MON.moveEffectsData.substituteHP * -1;
                DEFENDING_MON.statusVolatile &= ~VOLATILE_CONDITION_SUBSTITUTE;
                battleCtx->hitDamage = DEFENDING_MON.moveEffectsData.substituteHP * -1;
                DEFENDING_MON.moveEffectsData.substituteHP = 0;
            } else {
                ATTACKER_SELF_TURN_FLAGS.shellBellDamageDealt += battleCtx->damage;
                DEFENDING_MON.moveEffectsData.substituteHP += battleCtx->damage;
                battleCtx->hitDamage = battleCtx->damage;
            }

            DEFENDER_SELF_TURN_FLAGS.statusFlags |= SELF_TURN_FLAG_SUBSTITUTE_HIT;
            battleCtx->msgBattlerTemp = battleCtx->defender;

            LOAD_SUBSEQ(subscript_hit_substitute);
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_AFTER_MOVE_MESSAGE;

            return;
        }

        if (CURRENT_MOVE_DATA.effect == BATTLE_EFFECT_LEAVE_WITH_1_HP
            && DEFENDING_MON.curHP + battleCtx->damage <= 0) {
            battleCtx->damage = (DEFENDING_MON.curHP - 1) * -1;
        }

        if (DEFENDER_TURN_FLAGS.enduring == 0) {
            if (itemEffect == HOLD_EFFECT_MAYBE_ENDURE && (BattleSystem_RandNext(battleSys) % 100) < itemPower) {
                DEFENDER_SELF_TURN_FLAGS.focusItemActivated = TRUE;
            }

            if (itemEffect == HOLD_EFFECT_ENDURE && DEFENDING_MON.curHP == DEFENDING_MON.maxHP) {
                DEFENDER_SELF_TURN_FLAGS.focusItemActivated = TRUE;
            }
        }

        if ((DEFENDER_TURN_FLAGS.enduring || DEFENDER_SELF_TURN_FLAGS.focusItemActivated)
            && DEFENDING_MON.curHP + battleCtx->damage <= 0) {
            battleCtx->damage = (DEFENDING_MON.curHP - 1) * -1;

            if (DEFENDER_TURN_FLAGS.enduring) {
                battleCtx->moveStatusFlags |= MOVE_STATUS_ENDURED;
            } else {
                battleCtx->moveStatusFlags |= MOVE_STATUS_ENDURED_ITEM;
            }
        }

        battleCtx->storedDamage[battleCtx->defender] += battleCtx->damage;

        if (battleCtx->battleMons[battleCtx->defender].timesDamaged < 0xFF) {
            battleCtx->battleMons[battleCtx->defender].timesDamaged++;
        }

        if (CURRENT_MOVE_DATA.class == CLASS_PHYSICAL) {
            DEFENDER_TURN_FLAGS.physicalDamageTakenFrom[battleCtx->attacker] = battleCtx->damage;
            DEFENDER_TURN_FLAGS.physicalDamageLastAttacker = battleCtx->attacker;
            DEFENDER_TURN_FLAGS.physicalDamageAttackerMask |= FlagIndex(battleCtx->attacker);
            DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken = battleCtx->damage;
            DEFENDER_SELF_TURN_FLAGS.physicalDamageLastAttacker = battleCtx->attacker;
        } else if (CURRENT_MOVE_DATA.class == CLASS_SPECIAL) {
            DEFENDER_TURN_FLAGS.specialDamageTakenFrom[battleCtx->attacker] = battleCtx->damage;
            DEFENDER_TURN_FLAGS.specialDamageLastAttacker = battleCtx->attacker;
            DEFENDER_TURN_FLAGS.specialDamageAttackerMask |= FlagIndex(battleCtx->attacker);
            DEFENDER_SELF_TURN_FLAGS.specialDamageTaken = battleCtx->damage;
            DEFENDER_SELF_TURN_FLAGS.specialDamageLastAttacker = battleCtx->attacker;
        }

        if (DEFENDING_MON.curHP + battleCtx->damage <= 0) {
            ATTACKER_SELF_TURN_FLAGS.shellBellDamageDealt += DEFENDING_MON.curHP * -1;
        } else {
            ATTACKER_SELF_TURN_FLAGS.shellBellDamageDealt += battleCtx->damage;
        }

        DEFENDER_TURN_FLAGS.lastDamageTaken = battleCtx->damage;
        DEFENDER_TURN_FLAGS.lastAttacker = battleCtx->attacker;
        battleCtx->msgBattlerTemp = battleCtx->defender;
        battleCtx->hpCalcTemp = battleCtx->damage;

        LOAD_SUBSEQ(subscript_update_hp);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_AFTER_MOVE_MESSAGE;
        battleCtx->battleStatusMask |= SYSCTL_MOVE_HIT;
    } else {
        battleCtx->command = BATTLE_CONTROL_AFTER_MOVE_MESSAGE;
    }
}

enum AfterMoveMessageState {
    AFTER_MOVE_MESSAGE_START = 0,

    ONE_HIT_CRITICAL = 0,
    ONE_HIT_STATUS,
    ONE_HIT_TRIGGER_SECONDARY,
    ONE_HIT_FORM_CHANGE,
    ONE_HIT_RAGE,
    ONE_HIT_TRIGGER_ABILITY,
    ONE_HIT_EXTRA_FLINCH,

    MULTI_HIT_CRITICAL = 0,
    MULTI_HIT_TRIGGER_SECONDARY,
    MULTI_HIT_FORM_CHANGE,
    MULTI_HIT_RAGE,
    MULTI_HIT_TRIGGER_ABILITY,
    MULTI_HIT_STATUS,
    MULTI_HIT_EXTRA_FLINCH,
};

static void BattleController_AfterMoveMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    switch (battleCtx->afterMoveMessageType) {
    case AFTER_MOVE_MESSAGE_ONE_HIT:
        switch (battleCtx->afterMoveMessageState) {
        case ONE_HIT_CRITICAL:
            battleCtx->afterMoveMessageState++;
            if (BattleController_CriticalMessage(battleSys, battleCtx) == TRUE) {
                return;
            }

        case ONE_HIT_STATUS:
            battleCtx->afterMoveMessageState++;
            if (BattleController_FollowupMessage(battleSys, battleCtx) == TRUE) {
                return;
            }

        case ONE_HIT_TRIGGER_SECONDARY:
            int secondaryEffSeq;

            battleCtx->afterMoveMessageState++;
            if (BattleSystem_TriggerSecondaryEffect(battleSys, battleCtx, &secondaryEffSeq) == TRUE
                && (battleCtx->moveStatusFlags & MOVE_STATUS_DID_NOT_HIT) == FALSE) {
                LOAD_SUBSEQ(secondaryEffSeq);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                return;
            }

        case ONE_HIT_FORM_CHANGE:
            battleCtx->afterMoveMessageState++;

            // Shaymin changes forms from Sky to Land whenever it is Frozen.
            LOAD_SUBSEQ(subscript_check_shaymin_form);
            battleCtx->commandNext = battleCtx->command;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

            return;

        case ONE_HIT_RAGE:
            battleCtx->afterMoveMessageState++;
            if (BattleController_RageBuilding(battleSys, battleCtx) == TRUE) {
                return;
            }

        case ONE_HIT_TRIGGER_ABILITY:
            int abilitySeq;

            battleCtx->afterMoveMessageState++;
            if (BattleSystem_TriggerAbilityOnHit(battleSys, battleCtx, &abilitySeq) == TRUE) {
                LOAD_SUBSEQ(abilitySeq);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                return;
            }

        case ONE_HIT_EXTRA_FLINCH:
            battleCtx->afterMoveMessageState++;
            if (BattleController_CheckExtraFlinch(battleSys, battleCtx) == TRUE) {
                return;
            }

        default:
            break;
        }
        break;

    case AFTER_MOVE_MESSAGE_MULTI_HIT:
        switch (battleCtx->afterMoveMessageState) {
        case MULTI_HIT_CRITICAL:
            battleCtx->afterMoveMessageState++;
            if (BattleController_CriticalMessage(battleSys, battleCtx) == TRUE) {
                return;
            }

        case MULTI_HIT_TRIGGER_SECONDARY:
            int secondaryEffSeq;

            battleCtx->afterMoveMessageState++;
            if (BattleSystem_TriggerSecondaryEffect(battleSys, battleCtx, &secondaryEffSeq) == TRUE
                && (battleCtx->moveStatusFlags & MOVE_STATUS_DID_NOT_HIT) == FALSE) {
                LOAD_SUBSEQ(secondaryEffSeq);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                return;
            }

        case MULTI_HIT_FORM_CHANGE:
            battleCtx->afterMoveMessageState++;

            // Shaymin changes forms from Sky to Land whenever it is Frozen.
            LOAD_SUBSEQ(subscript_check_shaymin_form);
            battleCtx->commandNext = battleCtx->command;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

            return;

        case MULTI_HIT_RAGE:
            battleCtx->afterMoveMessageState++;
            if (BattleController_RageBuilding(battleSys, battleCtx) == TRUE) {
                return;
            }

        case MULTI_HIT_TRIGGER_ABILITY:
            int abilitySeq;

            battleCtx->afterMoveMessageState++;
            if (BattleSystem_TriggerAbilityOnHit(battleSys, battleCtx, &abilitySeq) == TRUE) {
                LOAD_SUBSEQ(abilitySeq);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                return;
            }

        case MULTI_HIT_STATUS:
            battleCtx->afterMoveMessageState++;
            if (BattleController_FollowupMessage(battleSys, battleCtx) == TRUE) {
                return;
            }

        case MULTI_HIT_EXTRA_FLINCH:
            battleCtx->afterMoveMessageState++;
            if (BattleController_CheckExtraFlinch(battleSys, battleCtx) == TRUE) {
                return;
            }

        default:
            break;
        }
        break;
    }

    battleCtx->afterMoveMessageState = AFTER_MOVE_MESSAGE_START;
    battleCtx->command = BATTLE_CONTROL_AFTER_MOVE_EFFECT;
}

static void BattleController_LeftoverState29(BattleSystem *battleSys, BattleContext *battleCtx)
{
    return;
}

static inline int CalcCurrentMoveType(BattleContext *battleCtx)
{
    if (Battler_Ability(battleCtx, battleCtx->attacker) == ABILITY_NORMALIZE) {
        return TYPE_NORMAL;
    } else if (battleCtx->moveType) {
        return battleCtx->moveType;
    }

    return CURRENT_MOVE_DATA.type;
}

enum AfterMoveEffectState {
    AFTER_MOVE_EFFECT_START = 0,

    AFTER_MOVE_EFFECT_TOGGLE_VANISH_FLAG = AFTER_MOVE_EFFECT_START,
    AFTER_MOVE_EFFECT_SYNCHRONIZE_STATUS,
    AFTER_MOVE_EFFECT_TRIGGER_SWITCH_IN_EFFECTS,
    AFTER_MOVE_EFFECT_ATTACKER_ITEM,
    AFTER_MOVE_EFFECT_DEFENDER_ITEM,
    AFTER_MOVE_EFFECT_TRIGGER_ITEMS_ON_HIT,
    AFTER_MOVE_EFFECT_THAW_DEFENDER,
    AFTER_MOVE_EFFECT_HELD_ITEM_STATUS,

    AFTER_MOVE_EFFECT_END
};

static void BattleController_AfterMoveEffects(BattleSystem *battleSys, BattleContext *battleCtx)
{
    switch (battleCtx->afterMoveEffectState) {
    case AFTER_MOVE_EFFECT_TOGGLE_VANISH_FLAG:
        BOOL anyFlipped = FALSE;
        while (battleCtx->afterMoveEffectTemp < BattleSystem_MaxBattlers(battleSys)) {
            if ((battleCtx->battleMons[battleCtx->afterMoveEffectTemp].moveEffectsMask & MOVE_EFFECT_SEMI_INVULNERABLE) == FALSE
                && (battleCtx->battleMons[battleCtx->afterMoveEffectTemp].moveEffectsTemp & MOVE_EFFECT_SEMI_INVULNERABLE)) {
                battleCtx->battleMons[battleCtx->afterMoveEffectTemp].moveEffectsTemp &= ~MOVE_EFFECT_SEMI_INVULNERABLE;

                LOAD_SUBSEQ(subscript_vanish_off);
                battleCtx->msgBattlerTemp = battleCtx->afterMoveEffectTemp;
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                anyFlipped = TRUE;
            }

            battleCtx->afterMoveEffectTemp++;

            if (anyFlipped) {
                return;
            }
        }

        battleCtx->afterMoveEffectState++;
        battleCtx->afterMoveEffectTemp = 0;

    case AFTER_MOVE_EFFECT_SYNCHRONIZE_STATUS:
        battleCtx->afterMoveEffectState++;

        if (BattleSystem_SynchronizeStatus(battleSys, battleCtx, battleCtx->command) == TRUE) {
            return;
        }

    case AFTER_MOVE_EFFECT_TRIGGER_SWITCH_IN_EFFECTS:
        int switchinSeq = BattleSystem_TriggerEffectOnSwitch(battleSys, battleCtx);
        if (switchinSeq) {
            LOAD_SUBSEQ(switchinSeq);
            battleCtx->commandNext = battleCtx->command;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

            return;
        }

        battleCtx->afterMoveEffectState++;

    case AFTER_MOVE_EFFECT_ATTACKER_ITEM:
        battleCtx->afterMoveEffectState++;

        if (BattleSystem_TriggerHeldItem(battleSys, battleCtx, battleCtx->attacker) == TRUE) {
            return;
        }

    case AFTER_MOVE_EFFECT_DEFENDER_ITEM:
        battleCtx->afterMoveEffectState++;

        if (battleCtx->defender != BATTLER_NONE && BattleSystem_TriggerHeldItem(battleSys, battleCtx, battleCtx->defender) == TRUE) {
            return;
        }

    case AFTER_MOVE_EFFECT_TRIGGER_ITEMS_ON_HIT:
        battleCtx->afterMoveEffectState++;

        int itemSeq;
        if (BattleSystem_TriggerHeldItemOnHit(battleSys, battleCtx, &itemSeq) == TRUE) {
            LOAD_SUBSEQ(itemSeq);
            battleCtx->commandNext = battleCtx->command;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

            return;
        }

    case AFTER_MOVE_EFFECT_THAW_DEFENDER:
        int moveType = CalcCurrentMoveType(battleCtx);
        battleCtx->afterMoveEffectState++;

        if (battleCtx->defender != BATTLER_NONE
            && (DEFENDING_MON.status & MON_CONDITION_FREEZE)
            && (battleCtx->moveStatusFlags & MOVE_STATUS_MULTI_HIT_DISRUPTED) == FALSE
            && battleCtx->defender != battleCtx->attacker
            && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
            && DEFENDING_MON.curHP
            && moveType == TYPE_FIRE) {
            battleCtx->msgBattlerTemp = battleCtx->defender;

            LOAD_SUBSEQ(subscript_thaw_out);
            battleCtx->commandNext = battleCtx->command;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

            return;
        }

    case AFTER_MOVE_EFFECT_HELD_ITEM_STATUS:
        int battler;
        BOOL result = FALSE;
        int nextSeq;

        while (battleCtx->afterMoveEffectTemp < BattleSystem_MaxBattlers(battleSys)) {
            battler = battleCtx->monSpeedOrder[battleCtx->afterMoveEffectTemp];

            if (battleCtx->battlersSwitchingMask & FlagIndex(battler)) {
                battleCtx->afterMoveEffectTemp++;
                continue;
            }

            battleCtx->afterMoveEffectTemp++;

            if (BattleSystem_TriggerHeldItemOnStatus(battleSys, battleCtx, battler, &nextSeq) == TRUE) {
                battleCtx->msgBattlerTemp = battler;

                LOAD_SUBSEQ(nextSeq);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                result = TRUE;
                break;
            }
        }

        if (result == FALSE) {
            battleCtx->afterMoveEffectState++;
            battleCtx->afterMoveEffectTemp = 0;
        }
        break;

    default:
        break;
    }

    battleCtx->afterMoveEffectState = AFTER_MOVE_EFFECT_START;
    battleCtx->afterMoveEffectTemp = 0;
    battleCtx->command = BATTLE_CONTROL_LOOP_MULTI_HIT;
}

static void BattleController_LeftoverState32(BattleSystem *battleSys, BattleContext *battleCtx)
{
    return;
}

static void BattleController_LoopMultiHit(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->multiHitNumHits) {
        if (battleCtx->faintedMon == BATTLER_NONE
            && (ATTACKING_MON.status & MON_CONDITION_SLEEP) == FALSE // e.g., Effect Spore
            && (battleCtx->moveStatusFlags & MOVE_STATUS_MULTI_HIT_DISRUPTED) == FALSE) {
            if (--battleCtx->multiHitCounter) {
                battleCtx->multiHitLoop = TRUE;
                BattleSystem_SetupLoop(battleSys, battleCtx);

                battleCtx->battleStatusMask &= ~SYSCTL_PLAYED_MOVE_ANIMATION; // force the animation to play again
                battleCtx->multiHitCheckFlags = battleCtx->multiHitAccuracyCheck;

                BattleSystem_LoadScript(battleCtx, 0, battleCtx->moveCur); // reload the move's script
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_TRY_MOVE;
            } else {
                battleCtx->msgTemp = battleCtx->multiHitNumHits;

                LOAD_SUBSEQ(subscript_hit_x_times);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_LOOP_FAINTED;
            }
        } else {
            if (battleCtx->faintedMon != BATTLER_NONE || (ATTACKING_MON.status & MON_CONDITION_SLEEP)) {
                // If an effect (such as Effect Spore) puts the attacker to sleep or the target faints
                // during the multi-hit loop, immediately terminate it.
                battleCtx->msgTemp = battleCtx->multiHitNumHits - battleCtx->multiHitCounter + 1;
            } else {
                battleCtx->msgTemp = battleCtx->multiHitNumHits - battleCtx->multiHitCounter;
            }

            LOAD_SUBSEQ(subscript_hit_x_times);
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_LOOP_FAINTED;
        }

        BattleIO_ClearMessageBox(battleSys);
    } else {
        battleCtx->command = BATTLE_CONTROL_LOOP_FAINTED;
    }
}

static void BattleController_LoopWhileFainted(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->battleStatusMask & SYSCTL_MON_FAINTED) {
        BattleController_AnyFainted(battleCtx, BATTLE_CONTROL_LOOP_FAINTED, BATTLE_CONTROL_LOOP_FAINTED, FALSE);
    } else {
        battleCtx->command = BATTLE_CONTROL_LOOP_SPREAD_MOVES;
    }
}

static void BattleController_LoopSpreadMoves(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->battleStatusMask2 & SYSCTL_MAGIC_COAT_REFLECTED) {
        battleCtx->battleStatusMask2 &= ~SYSCTL_MAGIC_COAT_REFLECTED;
        battleCtx->defender = battleCtx->attacker;
        battleCtx->attacker = battleCtx->magicCoatMon;
    }

    BattleController_UpdateFlagsWhenHit(battleSys, battleCtx);

    if (CURRENT_MOVE_DATA.range == RANGE_ADJACENT_OPPONENTS
        && (battleCtx->battleStatusMask & SYSCTL_CHECK_LOOP_ONLY_ONCE) == FALSE
        && battleCtx->battlerCounter < BattleSystem_MaxBattlers(battleSys)) {
        battleCtx->multiHitCheckFlags = SYSCTL_HIT_MULTIPLE_TARGETS;

        int maxBattlers = BattleSystem_MaxBattlers(battleSys); // unused, but must stay to match
        BattlerData *battlerData = BattleSystem_BattlerData(battleSys, battleCtx->attacker);
        u8 battlerType = Battler_Type(battlerData);

        do {
            int battler = battleCtx->monSpeedOrder[battleCtx->battlerCounter++];
            if ((battleCtx->battlersSwitchingMask & FlagIndex(battler)) == FALSE && battleCtx->battleMons[battler].curHP) {
                battlerData = BattleSystem_BattlerData(battleSys, battler);

                // Loop back to the start of the move if battlers are on opposite sides
                if (((battlerType & BATTLER_THEM) && (Battler_Type(battlerData) & BATTLER_THEM) == FALSE)
                    || ((battlerType & BATTLER_THEM) == FALSE && (Battler_Type(battlerData) & BATTLER_THEM))) {
                    BattleSystem_SetupLoop(battleSys, battleCtx);
                    battleCtx->defender = battler;
                    battleCtx->command = BATTLE_CONTROL_BEFORE_MOVE;
                    break;
                }
            }
        } while (battleCtx->battlerCounter < BattleSystem_MaxBattlers(battleSys));

        BattleIO_ClearMessageBox(battleSys);
    } else if (CURRENT_MOVE_DATA.range == RANGE_ALL_ADJACENT
        && (battleCtx->battleStatusMask & SYSCTL_CHECK_LOOP_ONLY_ONCE) == FALSE
        && battleCtx->battlerCounter < BattleSystem_MaxBattlers(battleSys)) {
        battleCtx->multiHitCheckFlags = SYSCTL_HIT_MULTIPLE_TARGETS;
        int maxBattlers = BattleSystem_MaxBattlers(battleSys); // unused, but must stay to match.

        do {
            int battler = battleCtx->monSpeedOrder[battleCtx->battlerCounter++];
            if ((battleCtx->battlersSwitchingMask & FlagIndex(battler)) == FALSE
                && battleCtx->battleMons[battler].curHP
                && battler != battleCtx->attacker) {
                BattleSystem_SetupLoop(battleSys, battleCtx);
                battleCtx->defender = battler;
                battleCtx->command = BATTLE_CONTROL_BEFORE_MOVE;
                break;
            }
        } while (battleCtx->battlerCounter < BattleSystem_MaxBattlers(battleSys));

        BattleIO_ClearMessageBox(battleSys);
    } else {
        battleCtx->command = BATTLE_CONTROL_FAINT_AFTER_SELFDESTRUCT;
    }
}

static void BattleController_FaintAfterSelfdestruct(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->battleStatusMask & SYSCTL_MON_SELFDESTRUCTED) {
        battleCtx->faintedMon = LowestBit((battleCtx->battleStatusMask & SYSCTL_MON_SELFDESTRUCTED) >> SYSCTL_MON_SELFDESTRUCTED_SHIFT);
        battleCtx->battleStatusMask &= ~SYSCTL_MON_SELFDESTRUCTED;

        LOAD_SUBSEQ(subscript_after_selfdestruct);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_TRIGGER_AFTER_HIT_EFFECTS;
    } else {
        battleCtx->command = BATTLE_CONTROL_TRIGGER_AFTER_HIT_EFFECTS;
    }
}

static void BattleController_TriggerAfterHitEffects(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (BattleController_TriggerAfterMoveHitEffects(battleSys, battleCtx) == TRUE) {
        return;
    }

    battleCtx->command = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
}

static void BattleController_LeftoverState37(BattleSystem *battleSys, BattleContext *battleCtx)
{
    return;
}

static void BattleController_UpdateMoveBuffers(BattleSystem *battleSys, BattleContext *battleCtx)
{
    u8 itemEffect = Battler_HeldItemEffect(battleCtx, battleCtx->attacker);

    if ((battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN)
        || (battleCtx->battleStatusMask2 & SYSCTL_ATTACK_MESSAGE_SHOWN)) {
        if (itemEffect == HOLD_EFFECT_CHOICE_ATK
            || itemEffect == HOLD_EFFECT_CHOICE_SPEED
            || itemEffect == HOLD_EFFECT_CHOICE_SPATK) {
            if (battleCtx->moveTemp != MOVE_STRUGGLE
                && (battleCtx->moveTemp != MOVE_U_TURN || (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE)
                && (battleCtx->moveTemp != MOVE_BATON_PASS || (battleCtx->battleStatusMask2 & SYSCTL_MOVE_SUCCEEDED) == FALSE)) {
                ATTACKING_MON.moveEffectsData.choiceLockedMove = battleCtx->moveTemp;
            }
        } else {
            ATTACKING_MON.moveEffectsData.choiceLockedMove = MOVE_NONE;
        }
    }

    if ((battleCtx->battleStatusMask & SYSCTL_REUSE_LAST_MOVE) == FALSE) {
        if (battleCtx->battleStatusMask2 & SYSCTL_ATTACK_MESSAGE_SHOWN) {
            battleCtx->moveProtect[battleCtx->attacker] = battleCtx->moveCur;
            battleCtx->movePrev = battleCtx->moveTemp;
        } else {
            battleCtx->moveProtect[battleCtx->attacker] = MOVE_NONE;
            battleCtx->movePrev = MOVE_NONE;
        }

        if (battleCtx->battleStatusMask2 & SYSCTL_MOVE_SUCCEEDED) {
            battleCtx->movePrevByBattler[battleCtx->attacker] = battleCtx->moveTemp;
        } else {
            battleCtx->movePrevByBattler[battleCtx->attacker] = MOVE_NONE;
        }
    }

    if (battleCtx->battleStatusMask2 & SYSCTL_ATTACK_MESSAGE_SHOWN) {
        battleCtx->moveSketched[battleCtx->attacker] = battleCtx->moveTemp;
    }

    BattleController_UpdateFlagsWhenHit(battleSys, battleCtx);
    BattleSystem_VerifyMetronomeCount(battleSys, battleCtx);

    battleCtx->command = BATTLE_CONTROL_MOVE_END;
}

static void BattleController_MoveEnd(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_NO_MOVES) == FALSE) {
        if (BattleSystem_RecoverStatusByAbility(battleSys, battleCtx, battleCtx->attacker, FALSE) == TRUE
            || (battleCtx->defender != BATTLER_NONE
                && BattleSystem_RecoverStatusByAbility(battleSys, battleCtx, battleCtx->defender, FALSE) == TRUE)
            || BattleController_AnyExpPayout(battleCtx, battleCtx->command, battleCtx->command) == TRUE
            || BattleController_CheckBattleOver(battleSys, battleCtx) == TRUE) {
            return;
        }

        int nextSeq = BattleSystem_TriggerEffectOnSwitch(battleSys, battleCtx);
        if (nextSeq) {
            LOAD_SUBSEQ(nextSeq);
            battleCtx->commandNext = battleCtx->command;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

            return;
        }

        if (BattleController_ToggleSemiInvulnMons(battleSys, battleCtx) == TRUE) {
            return;
        }

        BattleController_ClearFlags(battleSys, battleCtx);
    }

    battleCtx->battlerActions[battleCtx->battlerActionOrder[battleCtx->turnOrderCounter]][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_MOVE_END;
    if (ATTACKER_SELF_TURN_FLAGS.trickRoomActivated) {
        BattleSystem_SortMonActionOrder(battleSys, battleCtx);
        BattleSystem_SortMonSpeedOrder(battleSys, battleCtx);
        battleCtx->turnOrderCounter = 0;
    } else {
        battleCtx->turnOrderCounter++;
    }

    BattleContext_Init(battleCtx);
    battleCtx->command = BATTLE_CONTROL_BRANCH_ACTIONS;
}

static void BattleController_CheckAnyFainted(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (BattleController_AnyFainted(battleCtx, battleCtx->command, battleCtx->command, TRUE) == TRUE) {
        return;
    }

    battleCtx->command = BATTLE_CONTROL_MOVE_END;
}

static void BattleController_HandleResult(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (BattleSystem_ResultMask(battleSys) & BATTLE_RESULT_TRY_FLEE) {
        battleCtx->command = BATTLE_CONTROL_FIGHT_END;
    } else if (BattleSystem_ResultMask(battleSys) == BATTLE_RESULT_LOSE
        || BattleSystem_ResultMask(battleSys) == BATTLE_RESULT_DRAW) {
        LOAD_SUBSEQ(subscript_battle_lost);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_FIGHT_END;
    } else if (BattleSystem_ResultMask(battleSys) == BATTLE_RESULT_WIN) {
        LOAD_SUBSEQ(subscript_battle_won);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_FIGHT_END;
    } else if (BattleSystem_ResultMask(battleSys) == BATTLE_RESULT_CAPTURED_MON) {
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_FIGHT_END;
    } else if (BattleSystem_ResultMask(battleSys) == BATTLE_RESULT_PLAYER_FLED) {
        battleCtx->command = BATTLE_CONTROL_FIGHT_END;
    }

    battleCtx->battleEndFlag = TRUE;
}

static void BattleController_ScreenWipe(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (IsScreenFadeDone() == TRUE) {
        battleCtx->command = BATTLE_CONTROL_FIGHT_END;
    }
}

static void BattleController_EndFight(BattleSystem *battleSys, BattleContext *battleCtx)
{
    u32 battleType = BattleSystem_BattleType(battleSys);

    if ((battleType & BATTLE_TYPE_LINK) == FALSE) {
        Party *playerParty = BattleSystem_Party(battleSys, BATTLER_US);
        Pokemon_ApplyPokerus(playerParty);
        Pokemon_ValidatePokerus(playerParty);
    }

    if (battleType & BATTLE_TYPE_LINK) {
        Link_Message(22);
    }

    battleCtx->command = BATTLE_CONTROL_END_WAIT;
}

static void BattleController_EndWait(BattleSystem *battleSys, BattleContext *battleCtx)
{
    return;
}

/**
 * @brief Try to replace any and all fainted battlers.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if an interjecting subroutine should be executed.
 */
static BOOL BattleController_ReplaceFainted(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result = FALSE;
    int i; // must be declared here to match
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    u32 battleType = BattleSystem_BattleType(battleSys);
    int retCommand = battleCtx->command;

    for (i = 0; i < maxBattlers; i++) {
        battleCtx->battlerStatusFlags[i] &= ~BATTLER_STATUS_SWITCHING;

        if (((battleType & BATTLE_TYPE_DOUBLES) && (battleType & BATTLE_TYPE_2vs2_TAG) == FALSE)
            || ((battleType & BATTLE_TYPE_TAG) && Battler_Side(battleSys, i) == FALSE)) {
            // If both of this side's mons have been defeated, replace slot 1 first.
            if (battleCtx->battleMons[i].curHP == 0 && battleCtx->battleMons[i ^ 2].curHP == 0 && (i & 2)) {
                continue;
            }

            if (battleCtx->battleMons[i].curHP == 0) {
                int j;
                int curHP;
                int totalHP = 0;
                int monsAlive = 0;
                Party *party = BattleSystem_Party(battleSys, i);
                BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i); // this has to go here, even though it's unused

                // Check that there are still living mons in the party.
                for (j = 0; j < Party_GetCurrentCount(party); j++) {
                    Pokemon *pokemon = Party_GetPokemonBySlotIndex(party, j);
                    if (Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != FALSE
                        && Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG
                        && (curHP = Pokemon_GetValue(pokemon, MON_DATA_HP, NULL))) {
                        monsAlive++;
                        if (battleCtx->selectedPartySlot[i ^ 2] != j) {
                            totalHP += curHP;
                        }
                    }
                }

                if (totalHP == 0) {
                    battleCtx->battlersSwitchingMask |= FlagIndex(i); // TODO: rename this field
                    battleCtx->selectedPartySlot[i] = 6;
                } else {
                    battleCtx->commandNext = retCommand;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                    battleCtx->battlerStatusFlags[i] |= BATTLER_STATUS_SWITCHING;
                }
            }
        } else if (battleCtx->battleMons[i].curHP == 0) {
            int j;
            int curHP = 0;
            Party *party = BattleSystem_Party(battleSys, i);
            BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i);

            for (j = 0; j < Party_GetCurrentCount(party); j++) {
                Pokemon *pokemon = Party_GetPokemonBySlotIndex(party, j);

                if (Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != FALSE
                    && Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
                    curHP += Pokemon_GetValue(pokemon, MON_DATA_HP, NULL);
                }
            }

            if (curHP == 0) {
                battleCtx->battlersSwitchingMask |= FlagIndex(i);
                battleCtx->selectedPartySlot[i] = 6;
            } else {
                battleCtx->commandNext = retCommand;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->battlerStatusFlags[i] |= BATTLER_STATUS_SWITCHING;
            }
        }
    }

    if (battleCtx->command == BATTLE_CONTROL_EXEC_SCRIPT) {
        if ((battleType & BATTLE_TYPE_FORCED_SET_MODE) == FALSE
            && BattleSystem_Ruleset(battleSys) == 0 // switch mode
            && ((battleCtx->battlerStatusFlags[0] & BATTLER_STATUS_SWITCHING) == FALSE
                || (battleCtx->battlerStatusFlags[1] & BATTLER_STATUS_SWITCHING) == FALSE)
            && BattleSystem_AnyReplacementMons(battleSys, battleCtx, BATTLER_US)) {
            // If the player is flagged as replacing a fainted mon, then inform the script
            // to skip ahead to showing the party list without prompt.
            if (battleCtx->battlerStatusFlags[0] & BATTLER_STATUS_SWITCHING) {
                battleCtx->scriptTemp = FALSE;
            } else {
                battleCtx->scriptTemp = TRUE;
            }

            LOAD_SUBSEQ(subscript_replace_fainted);
        } else {
            LOAD_SUBSEQ(subscript_show_party_list);
        }

        result = TRUE;
    }

    return result;
}

/**
 * @brief Check if the battle is over.
 *
 * Battle result flags will be updated as part of this routine according to the
 * final state. Additionally, victory music will be loaded according to the
 * defeated trainer's class.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the battle is over (regardless of the result); FALSE if the
 * battle is still in-progress.
 */
static BOOL BattleController_CheckBattleOver(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    u32 battleType = BattleSystem_BattleType(battleSys);
    u8 battleResult = BATTLE_IN_PROGRESS;

    for (i = 0; i < maxBattlers; i++) {
        if ((battleType == BATTLE_TYPE_TRAINER_WITH_AI_PARTNER || battleType == BATTLE_TYPE_AI_PARTNER)
            && Battler_Side(battleSys, i) == BATTLER_US) {
            // If the player has no more usable Pokemon in a tag battle with an AI-controlled partner,
            // flag the battle as lost.
            if (BattleSystem_BattlerSlot(battleSys, i) == BATTLER_TYPE_PLAYER_SIDE_SLOT_1
                && battleCtx->battleMons[i].curHP == 0) {
                int totalPartyHP = 0;
                Party *party = BattleSystem_Party(battleSys, i);
                BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i);

                for (int j = 0; j < Party_GetCurrentCount(party); j++) {
                    Pokemon *pokemon = Party_GetPokemonBySlotIndex(party, j);
                    if (Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
                        && Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
                        totalPartyHP += Pokemon_GetValue(pokemon, MON_DATA_HP, NULL);
                    }
                }

                if (totalPartyHP == 0) {
                    battleResult |= BATTLE_RESULT_LOSE;
                }
            }
        } else if ((battleType & BATTLE_TYPE_2vs2) || ((battleType & BATTLE_TYPE_TAG) && Battler_Side(battleSys, i))) {
            if (battleCtx->battleMons[i].curHP == 0) {
                int totalPartyHP = 0;
                Party *party = BattleSystem_Party(battleSys, i);
                Party *partnerParty = BattleSystem_Party(battleSys, BattleSystem_Partner(battleSys, i));
                BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i);

                for (int j = 0; j < Party_GetCurrentCount(party); j++) {
                    Pokemon *pokemon = Party_GetPokemonBySlotIndex(party, j);
                    if (Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
                        && Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
                        totalPartyHP += Pokemon_GetValue(pokemon, MON_DATA_HP, NULL);
                    }
                }

                for (int j = 0; j < Party_GetCurrentCount(partnerParty); j++) {
                    Pokemon *pokemon = Party_GetPokemonBySlotIndex(partnerParty, j);
                    if (Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
                        && Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
                        totalPartyHP += Pokemon_GetValue(pokemon, MON_DATA_HP, NULL);
                    }
                }

                if (totalPartyHP == 0) {
                    if (Battler_Type(battlerData) & BATTLER_THEM) {
                        battleResult |= BATTLE_RESULT_WIN;
                    } else {
                        battleResult |= BATTLE_RESULT_LOSE;
                    }
                }
            }
        } else if (battleCtx->battleMons[i].curHP == 0) {
            int totalPartyHP = 0;
            Party *party = BattleSystem_Party(battleSys, i);
            BattlerData *battlerData = BattleSystem_BattlerData(battleSys, i);

            for (int j = 0; j < Party_GetCurrentCount(party); j++) {
                Pokemon *pokemon = Party_GetPokemonBySlotIndex(party, j);
                if (Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_NONE
                    && Pokemon_GetValue(pokemon, MON_DATA_SPECIES_OR_EGG, NULL) != SPECIES_EGG) {
                    totalPartyHP += Pokemon_GetValue(pokemon, MON_DATA_HP, NULL);
                }
            }

            if (totalPartyHP == 0) {
                if (Battler_Type(battlerData) & BATTLER_THEM) {
                    battleResult |= BATTLE_RESULT_WIN;
                } else {
                    battleResult |= BATTLE_RESULT_LOSE;
                }
            }
        }
    }

    // Have to keep this ugly double-chain in order to match. Simplified: we win a trainer/frontier battle and it's not
    // a link battle.
    if ((battleResult == BATTLE_RESULT_WIN && (battleType & BATTLE_TYPE_TRAINER) && (battleType & BATTLE_TYPE_LINK) == FALSE)
        || (battleResult == BATTLE_RESULT_WIN && (battleType & BATTLE_TYPE_FRONTIER) && (battleType & BATTLE_TYPE_LINK) == FALSE)) {
        Trainer *trainer = BattleSystem_GetTrainer(battleSys, BATTLER_ENEMY_1);

        switch (trainer->header.trainerType) {
        case TRAINER_CLASS_LEADER_ROARK:
        case TRAINER_CLASS_LEADER_GARDENIA:
        case TRAINER_CLASS_LEADER_WAKE:
        case TRAINER_CLASS_LEADER_MAYLENE:
        case TRAINER_CLASS_LEADER_FANTINA:
        case TRAINER_CLASS_LEADER_CANDICE:
        case TRAINER_CLASS_LEADER_BYRON:
        case TRAINER_CLASS_LEADER_VOLKNER:
            Sound_PlayBGM(SEQ_VICTORY_GYM_LEADER);
            break;

        case TRAINER_CLASS_TOWER_TYCOON:
        case TRAINER_CLASS_HALL_MATRON:
        case TRAINER_CLASS_FACTORY_HEAD:
        case TRAINER_CLASS_ARCADE_STAR:
        case TRAINER_CLASS_CASTLE_VALET:
            Sound_PlayBGM(SEQ_VICTORY_FRONTIER_BRAIN);
            break;

        case TRAINER_CLASS_CHAMPION_CYNTHIA:
            Sound_PlayBGM(SEQ_VICTORY_CHAMPION);
            break;

        case TRAINER_CLASS_COMMANDER_MARS:
        case TRAINER_CLASS_COMMANDER_JUPITER:
        case TRAINER_CLASS_COMMANDER_SATURN:
        case TRAINER_CLASS_GALACTIC_GRUNT_MALE:
        case TRAINER_CLASS_GALACTIC_GRUNT_FEMALE:
            Sound_PlayBGM(SEQ_VICTORY_GALACTIC_GRUNT);
            break;

        case TRAINER_CLASS_GALACTIC_BOSS:
            Sound_PlayBGM(SEQ_VICTORY_CYRUS);
            break;

        case TRAINER_CLASS_ELITE_FOUR_AARON:
        case TRAINER_CLASS_ELITE_FOUR_BERTHA:
        case TRAINER_CLASS_ELITE_FOUR_FLINT:
        case TRAINER_CLASS_ELITE_FOUR_LUCIAN:
            Sound_PlayBGM(SEQ_VICTORY_ELITE_FOUR);
            break;

        default:
            Sound_PlayBGM(SEQ_VICTORY_TRAINER);
            break;
        }

        BattleSystem_SetRedHPSoundFlag(battleSys, 2);
    }

    if (battleResult) {
        BattleSystem_SetResultFlag(battleSys, battleResult);
    }

    return battleResult != 0;
}

/**
 * @brief Determine if the battler must select its target according to the move
 * selected.
 *
 * @param battleSys
 * @param battleCtx
 * @param battler       The battler choosing its move.
 * @param battleType
 * @param[out] range    Outputs the range of the move being used.
 * @param moveSlot      The slot in the battler's move-pool.
 * @param[out] target   Outputs where to initialize the target selection cursor.
 * @return TRUE if the user must select a target for its move; FALSE otherwise.
 */
static BOOL BattleController_MustSelectTarget(BattleSystem *battleSys, BattleContext *battleCtx, u8 battler, u32 battleType, int *range, int moveSlot, u32 *target)
{
    if (battleCtx->battleMons[battler].moves[moveSlot] == MOVE_CURSE
        && Move_IsGhostCurse(battleCtx, battleCtx->battleMons[battler].moves[moveSlot], battler) == FALSE) {
        *range = RANGE_USER;
    } else {
        *range = MOVE_DATA(battleCtx->battleMons[battler].moves[moveSlot]).range;
    }

    if (battleType & BATTLE_TYPE_DOUBLES) {
        if (*range == RANGE_ALLY) {
            if ((battleCtx->battlersSwitchingMask & FlagIndex(BattleSystem_Partner(battleSys, battler))) == FALSE) {
                return TRUE;
            }

            return FALSE;
        }

        return TRUE;
    }

    if (*range & RANGE_MY_SIDE) {
        *target = battler;
    } else {
        *target = battler ^ 1;
    }

    return FALSE;
}

/**
 * @brief Clear flags which dissipate at the end of the turn and any volatile
 * condition flags as requested.
 *
 * @param battleSys
 * @param battleCtx
 */
static void BattleController_ClearFlags(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int i;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    for (i = 0; i < maxBattlers; i++) {
        battleCtx->battleMons[i].statusVolatile &= (battleCtx->clearVolatileStatus[i] ^ 0xFFFFFFFF);
        battleCtx->clearVolatileStatus[i] = VOLATILE_CONDITION_NONE;
    }

    battleCtx->moveHit[battleCtx->attacker] = MOVE_NONE;
    battleCtx->conversion2Move[battleCtx->attacker] = MOVE_NONE;
}

/**
 * @brief Check if there are any fainted battlers and load the appropriate
 * subroutine.
 *
 * If a battler is fainted, then its command will be re-assigned so as to flag
 * it as functionally done for the turn.
 *
 * @param battleCtx
 * @param nextCmd           The next command to queue if a battler has fainted.
 * @param nextCmdNoFainted  The next command to queue if no battler has fainted.
 * @param onlyFaint         If TRUE, then standard FAINT_MON subroutine will be
 *                          loaded if any battler has fainted. If FALSE, then the
 *                          subroutine which checks for on-faint triggers will be
 *                          loaded instead (e.g., Destiny Bond, Grudge).
 * @return TRUE if any battler has fainted; FALSE if none have fainted.
 */
static BOOL BattleController_AnyFainted(BattleContext *battleCtx, int nextCmd, int nextCmdNoFainted, BOOL onlyFaint)
{
    int i = 0;
    int battlerBit = FlagIndex(battleCtx->monSpeedOrder[i]) << SYSCTL_MON_FAINTED_SHIFT;
    if (battleCtx->battleStatusMask & SYSCTL_MON_FAINTED) {
        // Faint battlers in speed order
        while ((battleCtx->battleStatusMask & battlerBit) == FALSE) {
            i++;
            battlerBit = FlagIndex(battleCtx->monSpeedOrder[i]) << SYSCTL_MON_FAINTED_SHIFT;
        }

        battleCtx->battleStatusMask &= (battlerBit ^ 0xFFFFFFFF);
        battleCtx->faintedMon = LowestBit(battlerBit >> SYSCTL_MON_FAINTED_SHIFT);

        if (onlyFaint == TRUE) {
            LOAD_SUBSEQ(subscript_faint_mon);
        } else {
            LOAD_SUBSEQ(subscript_faint_check_destiny_bond);
        }

        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = nextCmd;
        battleCtx->battlerActions[battleCtx->faintedMon][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_MOVE_END;

        return TRUE;
    }

    battleCtx->command = nextCmdNoFainted;
    return FALSE;
}

/**
 * @brief Check if any battlers should be paid experience points and load the
 * appropriate subroutine.
 *
 * @param battleCtx
 * @param nextCmd       The next command to queue if a battler has fainted.
 * @param nextCmdNoExp  The next command to queue if no battler has fainted.
 * @return TRUE if the exp payout subroutine should be invoked; FALSE otherwise.
 */
static BOOL BattleController_AnyExpPayout(BattleContext *battleCtx, int nextCmd, int nextCmdNoExp)
{
    if (battleCtx->battleStatusMask2 & SYSCTL_PAYOUT_EXP) {
        int battler = 1 << SYSCTL_PAYOUT_EXP_SHIFT;
        while ((battleCtx->battleStatusMask2 & battler) == FALSE) {
            battler = battler << 1;
        }

        battleCtx->battleStatusMask2 &= (battler ^ 0xFFFFFFFF);
        battleCtx->faintedMon = LowestBit(battler >> SYSCTL_PAYOUT_EXP_SHIFT);

        LOAD_SUBSEQ(subscript_grant_exp);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = nextCmd;

        return TRUE;
    }

    battleCtx->command = nextCmdNoExp;
    return FALSE;
}

/**
 * @brief Update any and all flags appropriate to being hit by a move.
 *
 * @param battleSys
 * @param battleCtx
 */
static void BattleController_UpdateFlagsWhenHit(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int moveType = CalcCurrentMoveType(battleCtx);
    if ((MOVE_DATA(battleCtx->moveTemp).flags & MOVE_FLAG_CAN_MIRROR_MOVE)
        && (battleCtx->battleStatusMask & SYSCTL_REUSE_LAST_MOVE) == FALSE
        && battleCtx->defender != BATTLER_NONE
        && battleCtx->battleStatusMask2 & SYSCTL_ATTACK_MESSAGE_SHOWN) {
        battleCtx->moveCopied[battleCtx->defender] = battleCtx->moveTemp;
        battleCtx->moveCopiedHit[battleCtx->defender][battleCtx->attacker] = battleCtx->moveTemp;
    }

    if (battleCtx->defender != BATTLER_NONE) {
        u8 itemEffect = Battler_HeldItemEffect(battleCtx, battleCtx->defender);
        if (((battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN)
                || (battleCtx->battleStatusMask2 & SYSCTL_ATTACK_MESSAGE_SHOWN))
            && (itemEffect != HOLD_EFFECT_CHOICE_ATK
                && itemEffect != HOLD_EFFECT_CHOICE_SPEED
                && itemEffect != HOLD_EFFECT_CHOICE_SPATK)) {
            DEFENDING_MON.moveEffectsData.choiceLockedMove = MOVE_NONE;
        }

        if ((battleCtx->battleStatusMask & SYSCTL_REUSE_LAST_MOVE) == FALSE) {
            if (battleCtx->battleStatusMask2 & SYSCTL_ATTACK_MESSAGE_SHOWN) {
                battleCtx->moveHit[battleCtx->defender] = battleCtx->moveCur;
                battleCtx->moveHitBattler[battleCtx->defender] = battleCtx->attacker;
                battleCtx->moveHitType[battleCtx->defender] = moveType;
                battleCtx->movePrev = battleCtx->moveTemp;
            } else {
                battleCtx->moveHit[battleCtx->defender] = MOVE_NONE;
                battleCtx->moveHitBattler[battleCtx->defender] = BATTLER_NONE;
                battleCtx->moveHitType[battleCtx->defender] = TYPE_NORMAL;
                battleCtx->movePrev = MOVE_NONE;
            }

            if ((battleCtx->battleStatusMask2 & SYSCTL_MOVE_SUCCEEDED)
                && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE) {
                switch (CURRENT_MOVE_DATA.range) {
                case RANGE_USER:
                case RANGE_USER_SIDE:
                case RANGE_FIELD:
                case RANGE_OPPONENT_SIDE:
                case RANGE_ALLY:
                case RANGE_USER_OR_ALLY:
                    battleCtx->conversion2Move[battleCtx->defender] = MOVE_NONE;
                    battleCtx->conversion2Battler[battleCtx->defender] = BATTLER_NONE;
                    battleCtx->conversion2Type[battleCtx->defender] = TYPE_NORMAL;
                    break;

                default:
                    battleCtx->conversion2Move[battleCtx->defender] = battleCtx->moveCur;
                    battleCtx->conversion2Battler[battleCtx->defender] = battleCtx->attacker;
                    battleCtx->conversion2Type[battleCtx->defender] = moveType;
                    break;
                }
            } else {
                battleCtx->conversion2Move[battleCtx->defender] = MOVE_NONE;
                battleCtx->conversion2Battler[battleCtx->defender] = BATTLER_NONE;
                battleCtx->conversion2Type[battleCtx->defender] = TYPE_NORMAL;
            }
        }
    }
}

/**
 * @brief Load the Critical Hit message subroutine.
 *
 * @param battleSys
 * @param battleCtx
 * @return Always TRUE.
 */
static BOOL BattleController_CriticalMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(subscript_critical_hit);
    battleCtx->commandNext = battleCtx->command;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

    return TRUE;
}

/**
 * @brief Load the follow-up message subroutine.
 *
 * This subroutine is responsible for displaying messages such as the "But
 * nothing happened!" message for Splash, "It's a one-hit KO!" for OHKO moves,
 * and the effectiveness-messages that display after a move hits.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the follow-up subroutine should be executed; FALSE otherwise.
 */
static BOOL BattleController_FollowupMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result = FALSE;
    if (battleCtx->moveStatusFlags) {
        if (battleCtx->multiHitNumHits) {
            if (battleCtx->faintedMon != BATTLER_NONE
                || battleCtx->multiHitCounter == 1
                || (battleCtx->moveStatusFlags & MOVE_STATUS_MULTI_HIT_DISRUPTED)) {
                result = TRUE;
            }
        } else {
            result = TRUE;
        }
    }

    if (result == TRUE) {
        LOAD_SUBSEQ(subscript_move_followup_message);
        battleCtx->commandNext = battleCtx->command;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    }

    return result;
}

/**
 * @brief Load the Rage Is Building subroutine sequence, if applicable.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the subroutine was loaded for execution; FALSE otherwise.
 */
static BOOL BattleController_RageBuilding(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result = FALSE;
    if (battleCtx->defender == BATTLER_NONE) {
        return result;
    }

    if ((DEFENDING_MON.statusVolatile & VOLATILE_CONDITION_RAGE)
        && (battleCtx->moveStatusFlags & MOVE_STATUS_MULTI_HIT_DISRUPTED) == FALSE
        && battleCtx->defender != battleCtx->attacker
        && DEFENDING_MON.curHP
        && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
        && DEFENDING_MON.statBoosts[BATTLE_STAT_ATTACK] < 12) {
        DEFENDING_MON.statBoosts[BATTLE_STAT_ATTACK]++;

        LOAD_SUBSEQ(subscript_rage_is_building);
        battleCtx->commandNext = battleCtx->command;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        result = TRUE;
    }

    return result;
}

/**
 * @brief Check if an additional flinch effect should be applied due to King's
 * Rock.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if the flinch should be applied; FALSE otherwise.
 */
static BOOL BattleController_CheckExtraFlinch(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result = FALSE;
    int itemEffect = Battler_HeldItemEffect(battleCtx, battleCtx->attacker);
    int itemPower = Battler_HeldItemPower(battleCtx, battleCtx->attacker, 0);

    if (battleCtx->defender != BATTLER_NONE
        && itemEffect == HOLD_EFFECT_SOMETIMES_FLINCH
        && (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) == FALSE
        && (DEFENDER_SELF_TURN_FLAGS.physicalDamageTaken || DEFENDER_SELF_TURN_FLAGS.specialDamageTaken)
        && (BattleSystem_RandNext(battleSys) % 100) < itemPower
        && (CURRENT_MOVE_DATA.flags & MOVE_FLAG_TRIGGERS_KINGS_ROCK)
        && DEFENDING_MON.curHP) {
        battleCtx->sideEffectMon = battleCtx->defender;
        battleCtx->sideEffectType = SIDE_EFFECT_TYPE_INDIRECT;

        LOAD_SUBSEQ(subscript_flinch_mon);
        battleCtx->commandNext = battleCtx->command;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

        result = TRUE;
    }

    return result;
}

/**
 * @brief Toggles the visibility of a semi-invulnerable battler off.
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if a semi-invulnerable battler should be made visible; FALSE
 * otherwise.
 */
static BOOL BattleController_ToggleSemiInvulnMons(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result = FALSE;
    while (battleCtx->vanishedCheckTemp < BattleSystem_MaxBattlers(battleSys)) {
        if ((battleCtx->battleMons[battleCtx->vanishedCheckTemp].moveEffectsMask & MOVE_EFFECT_SEMI_INVULNERABLE) == FALSE
            && (battleCtx->battleMons[battleCtx->vanishedCheckTemp].moveEffectsTemp & MOVE_EFFECT_SEMI_INVULNERABLE)) {
            battleCtx->battleMons[battleCtx->vanishedCheckTemp].moveEffectsTemp &= ~MOVE_EFFECT_SEMI_INVULNERABLE;

            LOAD_SUBSEQ(subscript_vanish_off);
            battleCtx->msgBattlerTemp = battleCtx->vanishedCheckTemp;
            battleCtx->commandNext = battleCtx->command;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

            result = TRUE;
        }

        battleCtx->vanishedCheckTemp++;
        if (result == TRUE) {
            break;
        }
    }

    if (result == FALSE) {
        battleCtx->vanishedCheckTemp = 0;
    }

    return result;
}

enum AfterMoveHitState {
    AFTER_MOVE_HIT_START = 0,

    AFTER_MOVE_HIT_STATE_RAGE = AFTER_MOVE_HIT_START,
    AFTER_MOVE_HIT_STATE_SHELL_BELL,
    AFTER_MOVE_HIT_STATE_LIFE_ORB,

    AFTER_MOVE_HIT_STATE_END
};

/**
 * @brief Trigger effects which apply after a move hits its target.
 *
 * This handles:
 * - turning off the Rage flag if the attacker did not use Rage again
 * - granting Shell Bell HP restoration
 * - deducting HP due to Life Orb
 *
 * @param battleSys
 * @param battleCtx
 * @return TRUE if any interjecting subroutine must be executed; FALSE otherwise.
 */
static BOOL BattleController_TriggerAfterMoveHitEffects(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int machineState = STATE_PROCESSING;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys); // unused, but must remain to match
    int itemEffect = Battler_HeldItemEffect(battleCtx, battleCtx->attacker);
    int itemPower = Battler_HeldItemPower(battleCtx, battleCtx->attacker, 0);

    if (BattleController_AnyFainted(battleCtx, battleCtx->command, battleCtx->command, TRUE) == TRUE) {
        return TRUE;
    }

    do {
        switch (battleCtx->afterMoveHitCheckState) {
        case AFTER_MOVE_HIT_STATE_RAGE:
            if ((ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_RAGE) && battleCtx->moveCur != MOVE_RAGE) {
                ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_RAGE;
            }

            battleCtx->afterMoveHitCheckState++;
            break;

        case AFTER_MOVE_HIT_STATE_SHELL_BELL:
            if (battleCtx->defender != BATTLER_NONE
                && itemEffect == HOLD_EFFECT_HP_RESTORE_ON_DMG
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && (battleCtx->battleStatusMask & SYSCTL_MOVE_HIT)
                && ATTACKER_SELF_TURN_FLAGS.shellBellDamageDealt
                && battleCtx->attacker != battleCtx->defender
                && ATTACKING_MON.curHP < ATTACKING_MON.maxHP
                && ATTACKING_MON.curHP) {
                battleCtx->hpCalcTemp = BattleSystem_Divide(ATTACKER_SELF_TURN_FLAGS.shellBellDamageDealt * -1, itemPower);
                battleCtx->msgBattlerTemp = battleCtx->attacker;

                LOAD_SUBSEQ(subscript_restore_a_little_hp);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                machineState = STATE_BREAK_OUT;
            }

            battleCtx->afterMoveHitCheckState++;
            break;

        case AFTER_MOVE_HIT_STATE_LIFE_ORB:
            if (itemEffect == HOLD_EFFECT_HP_DRAIN_ON_ATK
                && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_MAGIC_GUARD
                && (battleCtx->battleStatusMask2 & SYSCTL_UTURN_ACTIVE) == FALSE
                && (battleCtx->battleStatusMask & SYSCTL_MOVE_HIT)
                && CURRENT_MOVE_DATA.class != CLASS_STATUS
                && ATTACKING_MON.curHP) {
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battleCtx->attacker].maxHP * -1, 10);
                battleCtx->msgBattlerTemp = battleCtx->attacker;

                LOAD_SUBSEQ(subscript_lose_hp_from_item);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                machineState = STATE_BREAK_OUT;
            }

            battleCtx->afterMoveHitCheckState++;
            break;

        case AFTER_MOVE_HIT_STATE_END:
            battleCtx->afterMoveHitCheckState = 0;
            battleCtx->afterMoveHitCheckTemp = 0;
            machineState = STATE_DONE;
            break;
        }
    } while (machineState == STATE_PROCESSING);

    return machineState == STATE_BREAK_OUT;
}

/**
 * @brief Initialize the battle AI with appropriate items from loaded trainer
 * data.
 *
 * @param battleSys
 * @param battleCtx
 */
static void BattleController_InitAI(BattleSystem *battleSys, BattleContext *battleCtx)
{
    u32 battleType = BattleSystem_BattleType(battleSys);
    MI_CpuClear32(&battleCtx->aiContext, sizeof(AIContext));

    if ((battleType & BATTLE_TYPE_TRAINER) && (battleType & BATTLE_TYPE_NO_AI_ITEMS) == FALSE) {
        for (int battler = 0; battler < MAX_BATTLERS; battler++) {
            if (battler & BATTLER_THEM) {
                // Only enemy AI can use items
                for (int i = 0; i < MAX_TRAINER_ITEMS; i++) {
                    u16 item = BattleSystem_TrainerItems(battleSys, battler, i);
                    if (item != ITEM_NONE) {
                        battleCtx->aiContext.trainerItems[battler >> 1][battleCtx->aiContext.trainerItemCounts[battler >> 1]] = item;
                        battleCtx->aiContext.trainerItemCounts[battler >> 1]++;
                    }
                }
            }
        }
    }

    battleCtx->aiScriptTemp = gTrainerAITable;
}

static void BattleSystem_RecordCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int v0;
    int v1;
    u8 v2;

    v1 = BattleSystem_MaxBattlers(battleSys);

    for (v0 = 0; v0 < v1; v0++) {
        if (battleCtx->battlerActions[v0][0] != 39) {
            if (battleCtx->recordedCommandFlags[v0] & 0x1) {
                v2 = (battleCtx->battlerActions[v0][0] - 13) + 1;
                BattleSystem_Record(battleSys, v0, v2);
            }

            switch (battleCtx->battlerActions[v0][0]) {
            case 13:
                if (battleCtx->recordedCommandFlags[v0] & 0x2) {
                    v2 = battleCtx->battlerActions[v0][2];
                    BattleSystem_Record(battleSys, v0, v2);
                }

                if (battleCtx->recordedCommandFlags[v0] & 0x4) {
                    v2 = battleCtx->battlerActions[v0][1] + 1;
                    BattleSystem_Record(battleSys, v0, v2);
                }
                break;
            case 14:
                v2 = battleCtx->battlerActions[v0][2] & 0xff;
                BattleSystem_Record(battleSys, v0, v2);
                v2 = (battleCtx->battlerActions[v0][2] & 0xff00) >> 16;
                BattleSystem_Record(battleSys, v0, v2);
                break;
            case 15:
                v2 = battleCtx->battlerActions[v0][2] + 1;
                BattleSystem_Record(battleSys, v0, v2);
                break;
            case 16:
                BattleSystem_Record(battleSys, v0, 1);
                break;
            default:
                break;
            }
        }
    }
}
