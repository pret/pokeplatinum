#include <nitro.h>
#include <string.h>

#include "constants/abilities.h"
#include "constants/battle.h"
#include "constants/heap.h"
#include "constants/items.h"
#include "constants/moves.h"
#include "constants/narc.h"
#include "constants/pokemon.h"
#include "constants/sdat.h"
#include "constants/trainer.h"
#include "constants/battle/battle_effects.h"
#include "constants/battle/condition.h"
#include "constants/battle/message_tags.h"
#include "constants/battle/moves.h"
#include "constants/battle/system_control.h"
#include "constants/narc_files/battle_skill_subseq.h"

#include "trainer_info.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/battle_system.h"
#include "pokemon.h"
#include "struct_defs/trainer_data.h"

#include "battle/common.h"
#include "battle/ai_context.h"
#include "battle/battle_context.h"
#include "battle/battle_controller.h"
#include "battle/battle_message.h"

#include "overlay016/struct_ov16_0225BFFC_decl.h"
#include "overlay016/struct_ov16_0224DDA8.h"

#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "heap.h"
#include "trainer_info.h"
#include "unk_02034198.h"
#include "pokemon.h"
#include "move_table.h"
#include "party.h"
#include "item.h"
#include "unk_0207D3B8.h"
#include "flags.h"
#include "overlay016/ov16_0223B140.h"
#include "overlay016/ov16_0223DF00.h"
#include "overlay016/ov16_022405FC.h"
#include "overlay016/ov16_0225177C.h"
#include "overlay016/ov16_0225CBB8.h"
#include "overlay016/ov16_0226485C.h"

enum MachineState {
    STATE_PROCESSING = 0,
    STATE_BREAK_OUT,
    STATE_DONE
};

typedef void (*BattleControlFunc)(BattleSystem*, BattleContext*);

static void BattleController_GetBattleMon(BattleSystem *battleSys, BattleContext *battleCtx);
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
static void BattleController_RunCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_SafariBallCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_SafariBaitCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_SafariRockCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_SafariRunCommand(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_ExecScript(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_BeforeMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_TryMove(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_PrimaryEffect(BattleSystem *battleSys, BattleContext *battleCtx);
static void BattleController_CheckMoveFailure(BattleSystem *battleSys, BattleContext *battleCtx);
static void ov16_0224F8D4(BattleSystem * param0, BattleContext * param1);
static void ov16_0224F8EC(BattleSystem * param0, BattleContext * param1);
static void ov16_0224FD00(BattleSystem * param0, BattleContext * param1);
static void ov16_0224FEE0(BattleSystem * param0, BattleContext * param1);
static void ov16_0224FEE4(BattleSystem * param0, BattleContext * param1);
static void ov16_02250170(BattleSystem * param0, BattleContext * param1);
static void ov16_0225016C(BattleSystem * param0, BattleContext * param1);
static void ov16_02250270(BattleSystem * param0, BattleContext * param1);
static void ov16_02250298(BattleSystem * param0, BattleContext * param1);
static void ov16_02250438(BattleSystem * param0, BattleContext * param1);
static void ov16_02250480(BattleSystem * param0, BattleContext * param1);
static void ov16_02250494(BattleSystem * param0, BattleContext * param1);
static void ov16_02250498(BattleSystem * param0, BattleContext * param1);
static void ov16_022505C4(BattleSystem * param0, BattleContext * param1);
static void ov16_022506A4(BattleSystem * param0, BattleContext * param1);
static void ov16_022506C0(BattleSystem * param0, BattleContext * param1);
static void ov16_0225074C(BattleSystem * param0, BattleContext * param1);
static void ov16_02250760(BattleSystem * param0, BattleContext * param1);
static void ov16_02250798(BattleSystem * param0, BattleContext * param1);

static int BattleController_CheckObedience(BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq);
static BOOL BattleController_DecrementPP(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_HasNoTarget(BattleSystem *battleSys, BattleContext *battleCtx);
static int BattleController_CheckTypeChart(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_CheckStatusDisruption(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_TriggerImmunityAbilities(BattleSystem *battleSys, BattleContext *battleCtx);
static BOOL BattleController_CheckQuickClaw(BattleSystem *battleSys, BattleContext *battleCtx);
static int BattleController_CheckMoveHit(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move);
static int BattleController_CheckMoveHitOverrides(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move);
static BOOL BattleController_MoveStolen(BattleSystem *battleSys, BattleContext * battleCtx);
static BOOL BattleController_CheckAnySwitches(BattleSystem * param0, BattleContext * param1);
static BOOL BattleController_CheckBattleOver(BattleSystem * param0, BattleContext * param1);
static BOOL BattleController_CheckRange(BattleSystem *battleSys, BattleContext *battleCtx, u8 battler, u32 battleType, int *range, int moveSlot, u32 *target);
static void ov16_02250E8C(BattleSystem * param0, BattleContext * param1);
static BOOL BattleController_CheckAnyFainted(BattleContext * param0, int param1, int param2, int param3);
static BOOL BattleController_CheckExpPayout(BattleContext * param0, int param1, int param2);
static void ov16_02250FF4(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0225143C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022511FC(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_02251218(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_0225126C(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022512F8(BattleSystem * param0, BattleContext * param1);
static BOOL ov16_022513B0(BattleSystem * param0, BattleContext * param1);
static void BattleController_InitAI(BattleSystem * param0, BattleContext * param1);
static void BattleSystem_RecordCommand(BattleSystem *battleSys, BattleContext *battleCtx);

extern u32 Unk_ov14_022248A4[];

static const BattleControlFunc BattleControlCommands[] = {
    BattleController_GetBattleMon,
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
    BattleController_RunCommand,
    BattleController_SafariBallCommand,
    BattleController_SafariBaitCommand,
    BattleController_SafariRockCommand,
    BattleController_SafariRunCommand,
    BattleController_ExecScript,
    BattleController_BeforeMove,
    BattleController_TryMove,
    BattleController_PrimaryEffect,
    BattleController_CheckMoveFailure,
    ov16_0224F8D4,
    ov16_0224F8EC,
    ov16_0224FD00,
    ov16_0224FEE0,
    ov16_0224FEE4,
    ov16_02250170,
    ov16_0225016C,
    ov16_02250270,
    ov16_02250298,
    ov16_02250438,
    ov16_02250480,
    ov16_02250494,
    ov16_02250498,
    ov16_022505C4,
    ov16_022506A4,
    ov16_022506C0,
    ov16_0225074C,
    ov16_02250760,
    ov16_02250798
};

void* BattleContext_New (BattleSystem *battleSys)
{
    BattleContext *battleContext = Heap_AllocFromHeap(HEAP_ID_BATTLE, sizeof(BattleContext));

    MI_CpuClearFast(battleContext, sizeof(BattleContext));

    BattleContext_Init(battleContext);
    BattleContext_InitCounters(battleSys, battleContext);
    BattleController_InitAI(battleSys, battleContext);

    MoveTable_Load(&battleContext->aiContext.moveTable);
    battleContext->aiContext.itemTable = ItemTable_Load(HEAP_ID_BATTLE);

    return battleContext;
}

int BattleController_Main(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (battleCtx->battleEndFlag == FALSE
            && BattleSystem_ResultMask(battleSys)
            && (BattleSystem_ResultMask(battleSys) & BATTLE_RESULT_TRY_FLEE_WAIT) == FALSE) {
        battleCtx->command = BATTLE_CONTROL_RESULT;
    }

    BattleControlCommands[battleCtx->command](battleSys, battleCtx);

    if (battleCtx->command == BATTLE_CONTROL_END_WAIT) {
        return 1;
    }

    return 0;
}

void BattleContext_Free(BattleContext *battleCtx)
{
    Heap_FreeToHeap(battleCtx->aiContext.itemTable);
    Heap_FreeToHeap(battleCtx);
}

void BattleController_CheckMoveHitEffect(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move)
{
    BattleController_CheckMoveHit(battleSys, battleCtx, attacker, defender, move);
    BattleController_CheckMoveHitOverrides(battleSys, battleCtx, attacker, defender, move);
}

static void BattleController_GetBattleMon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    for (int i = 0; i < maxBattlers; i++) {
        BattleSystem_InitBattleMon(battleSys, battleCtx, i, battleCtx->selectedPartySlot[i]);
    }

    battleCtx->hpTemp = battleCtx->battleMons[1].curHP;
    battleCtx->command = BATTLE_CONTROL_START_ENCOUNTER;
}

static void BattleController_StartEncounter(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(BATTLE_SUBSEQ_START_ENCOUNTER);
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_TRAINER_MESSAGE;
}

static void BattleController_TrainerMessage(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if (BattleSystem_CheckTrainerMessage(battleSys, battleCtx)) {
        LOAD_SUBSEQ(BATTLE_SUBSEQ_TRAINER_MESSAGE);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_SHOW_BATTLE_MON;
    } else {
        battleCtx->command = BATTLE_CONTROL_SHOW_BATTLE_MON;
    }

    BattleSystem_SortMonsBySpeed(battleSys, battleCtx);
}

static void BattleController_ShowBattleMon(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int scriptToRun = BattleSystem_ShowMonChecks(battleSys, battleCtx);

    if (scriptToRun) {
        LOAD_SUBSEQ(scriptToRun);

        // Come back to this one after finishing the interjecting script
        battleCtx->commandNext = battleCtx->command;
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    } else {
        BattleSystem_SortMonsBySpeed(battleSys, battleCtx);
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
    BattleSystem_LoadFightOverlay(battleSys, 1);

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

enum PlayerInputCommand {
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

static inline BOOL SingleControllerForSide(BattleContext *battleCtx, int battler, int side)
{
    return (battler == side + 2 && battleCtx->curCommandState[side] != COMMAND_SELECTION_END);
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
                    && (battleType & BATTLE_TYPE_2vs2) == 0
                    && (SingleControllerForSide(battleCtx, i, BATTLE_SIDE_PLAYER)
                        || SingleControllerForSide(battleCtx, i, BATTLE_SIDE_ENEMY))) {
                break;
            }

            if (battleCtx->battlersSwitchingMask & FlagIndex(i)) {
                battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
                battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] = BATTLE_CONTROL_MOVE_END;
                break;
            } else if (BattleSystem_CanPickCommand(battleCtx, i) == FALSE) {
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
                if (j == i) {
                    continue;
                }

                if (Battler_BootState(BattleSystem_BattlerData(battleSys, j)) != BATTLER_BOOT_STATE_AI) {
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
                    if (BattleSystem_CheckStruggling(battleSys, battleCtx, i, 0, STRUGGLE_CHECK_ALL) == STRUGGLING_ALL) {
                        // Don't let the player select a move if they are out of PP on all moves
                        battleCtx->turnFlags[i].struggling = 1;

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
                        msg.id = 593;
                        msg.tags = 0;
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
                        battleCtx->curCommandState[BattleSystem_Partner(battleSys, i)] = 0;
                    } else if ((battleType & BATTLE_TYPE_DOUBLES) && i == BATTLER_PLAYER_SLOT_2) {
                        BattleIO_StopGaugeAnimation(battleSys, i);
                        battleCtx->curCommandState[BATTLER_PLAYER_SLOT_1] = BATTLE_CONTROL_GET_BATTLE_MON;
                        battleCtx->curCommandState[BATTLER_PLAYER_SLOT_2] = BATTLE_CONTROL_GET_BATTLE_MON;
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
                } else {
                    if (BattleSystem_CanUseMove(battleSys, battleCtx, i, battleCtx->ioBuffer[i][0] - 1, &msg) == FALSE) {
                        if (BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_RECORDING) {
                            BattleSystem_SetStopRecording(battleSys, 1);
                            BattleSystem_RecordingStopped(battleSys, BattleSystem_Context(battleSys));
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
            }
            break;

        case COMMAND_SELECTION_TARGET_SELECT_INIT:
            int target;
            if (BattleController_CheckRange(battleSys, battleCtx, i, battleType, &target, battleCtx->moveSlot[i], &battleCtx->battlerActions[i][1])) {
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
                u32 *data;

                data = (u32 *)&battleCtx->ioBuffer[i][0];
                battleCtx->battlerActions[i][BATTLE_ACTION_TEMP_VALUE] = *data;
                battleCtx->curCommandState[i] = COMMAND_SELECTION_WAIT;
            }
            break;

        case COMMAND_SELECTION_PARTY_SELECT_INIT:
            int doublesSelection = 6;
            BOOL canSwitch = BattleSystem_CanSwitch(battleSys, battleCtx, i);

            // Check the partner's selection in a double battle
            if ((BattleSystem_BattlerSlot(battleSys, i) == BATTLER_DOUBLES_PLAYER_SLOT_2 || BattleSystem_BattlerSlot(battleSys, i) == BATTLER_DOUBLES_ENEMY_SLOT_2)
                    && (battleType == BATTLE_TYPE_TRAINER_DOUBLES
                        || battleType == BATTLE_TYPE_LINK_DOUBLES
                        || battleType == BATTLE_TYPE_FRONTIER_DOUBLES
                        || (battleType == BATTLE_TYPE_TAG_DOUBLES && BattleSystem_BattlerSlot(battleSys, i) == BATTLER_DOUBLES_PLAYER_SLOT_2))) {
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
                BattleIO_ShowYesNoScreen(battleSys, battleCtx, i, 955, 0, NULL, NULL);
                battleCtx->curCommandState[i] = 12;
            } else if ((battleType & BATTLE_TYPE_TRAINER) && (battleType & BATTLE_TYPE_LINK) == FALSE) {
                if (BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_RECORDING) {
                    BattleSystem_SetStopRecording(battleSys, 1);
                    BattleSystem_RecordingStopped(battleSys, BattleSystem_Context(battleSys));
                } else {
                    msg.tags = 0;
                    msg.id = 793;
                    BattleIO_SetAlertMessage(battleSys, i, msg);

                    battleCtx->curCommandState[i] = COMMAND_SELECTION_ALERT_MESSAGE_WAIT;
                    battleCtx->nextCommandState[i] = COMMAND_SELECTION_INIT;
                }
            } else if (BattleSystem_Trapped(battleSys, battleCtx, i, &msg)) {
                if (BattleSystem_BattleStatus(battleSys) & BATTLE_STATUS_RECORDING) {
                    BattleSystem_SetStopRecording(battleSys, 1);
                    BattleSystem_RecordingStopped(battleSys, BattleSystem_Context(battleSys));
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
            msg.tags = 2;
            msg.id = 608;
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
        BattleSystem_LoadFightOverlay(battleSys, 0);

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
            if (battleCtx->battlerActions[0][BATTLE_ACTION_SELECTED_COMMAND] == PLAYER_INPUT_RUN) {
                battler = 0;
                order = 5;
            }

            if (battleCtx->battlerActions[2][BATTLE_ACTION_SELECTED_COMMAND] == PLAYER_INPUT_RUN) {
                battler = 2;
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

enum PreMoveAction {
    PRE_MOVE_ACTION_TIGHTEN_FOCUS = 0,
    PRE_MOVE_ACTION_CHECK_RAGE_FLAG,
    PRE_MOVE_ACTION_SPEED_RNG,

    PRE_MOVE_ACTION_END
};

static void BattleController_CheckPreMoveActions(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int state = STATE_PROCESSING;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);
    int battler;

    do {
        switch (battleCtx->turnStartCheckState) {
        case PRE_MOVE_ACTION_TIGHTEN_FOCUS:
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

                    LOAD_SUBSEQ(BATTLE_SUBSEQ_TIGHTEN_FOCUS);
                    battleCtx->commandNext = battleCtx->command;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                    return;
                }
            }

            battleCtx->turnStartCheckTemp = 0;
            battleCtx->turnStartCheckState++;
            break;

        case PRE_MOVE_ACTION_CHECK_RAGE_FLAG:
            for (battler = 0; battler < maxBattlers; battler++) {
                if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_RAGE)
                        && Battler_SelectedMove(battleCtx, battler) != MOVE_RAGE) {
                    battleCtx->battleMons[battler].statusVolatile &= VOLATILE_CONDITION_RAGE;
                }
            }

            battleCtx->turnStartCheckState++;
            break;

        case PRE_MOVE_ACTION_SPEED_RNG:
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

    if (BattleSystem_RecordingStopped(battleSys, battleCtx)) {
        return;
    }

    battleCtx->waitingBattlers = 0;
    for (int i = 0; i < maxBattlers; i++) {
        if (battleCtx->battlerActions[i][BATTLE_ACTION_PICK_COMMAND] != BATTLE_CONTROL_MOVE_END) {
            battleCtx->waitingBattlers++;
        }
    }

    BattleSystem_SortMonsBySpeed(battleSys, battleCtx);
    if (battleCtx->turnOrderCounter == maxBattlers) {
        battleCtx->turnOrderCounter = 0;
        battleCtx->command = BATTLE_CONTROL_CHECK_FIELD_CONDITIONS;
    } else {
        battleCtx->command = battleCtx->battlerActions[battleCtx->battlerActionOrder[battleCtx->turnOrderCounter]][BATTLE_ACTION_PICK_COMMAND];
    }
}

enum FieldConditionCheckState {
    FIELD_COND_CHECK_START = 0,

    FIELD_COND_CHECK_REFLECT = FIELD_COND_CHECK_START,
    FIELD_COND_CHECK_LIGHT_SCREEN,
    FIELD_COND_CHECK_MIST,
    FIELD_COND_CHECK_SAFEGUARD,
    FIELD_COND_CHECK_TAILWIND,
    FIELD_COND_CHECK_LUCKY_CHANT,
    FIELD_COND_CHECK_WISH,
    FIELD_COND_CHECK_RAINING,
    FIELD_COND_CHECK_SANDSTORM,
    FIELD_COND_CHECK_SUNNY,
    FIELD_COND_CHECK_HAILING,
    FIELD_COND_CHECK_DEEP_FOG,
    FIELD_COND_CHECK_GRAVITY,

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
        if (BattleController_CheckAnyFainted(battleCtx, battleCtx->command, battleCtx->command, 1) == TRUE
                || BattleController_CheckExpPayout(battleCtx, battleCtx->command, battleCtx->command) == TRUE
                || BattleController_CheckBattleOver(battleSys, battleCtx) == TRUE) {
            return;
        }

        switch (battleCtx->fieldConditionCheckState) {
        case FIELD_COND_CHECK_REFLECT:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_REFLECT
                        && --battleCtx->sideConditions[side].reflectTurns == 0) {
                    battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_REFLECT;
                    battleCtx->msgMoveTemp = MOVE_REFLECT;

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_MOVE_EFFECT_END);
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

        case FIELD_COND_CHECK_LIGHT_SCREEN:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_LIGHT_SCREEN
                        && --battleCtx->sideConditions[side].lightScreenTurns == 0) {
                    battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_LIGHT_SCREEN;
                    battleCtx->msgMoveTemp = MOVE_LIGHT_SCREEN;

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_MOVE_EFFECT_END);
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

        case FIELD_COND_CHECK_MIST:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_MIST
                        && --battleCtx->sideConditions[side].mistTurns == 0) {
                    battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_MIST;
                    battleCtx->msgMoveTemp = MOVE_MIST;

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_MOVE_EFFECT_END);
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

        case FIELD_COND_CHECK_SAFEGUARD:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_SAFEGUARD
                        && --battleCtx->sideConditions[side].safeguardTurns == 0) {
                    battleCtx->sideConditionsMask[side] &= ~SIDE_CONDITION_SAFEGUARD;
                    battleCtx->msgBattlerTemp = battleCtx->sideConditions[side].safeguardUser;

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_SAFEGUARD_END);
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

        case FIELD_COND_CHECK_TAILWIND:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_TAILWIND) {
                    battleCtx->sideConditionsMask[side] -= SIDE_CONDITION_TAILWIND_SHIFT;

                    if ((battleCtx->sideConditionsMask[side] & SIDE_CONDITION_TAILWIND) == FALSE) {
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_TAILWIND_END);
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

        case FIELD_COND_CHECK_LUCKY_CHANT:
            while (battleCtx->fieldConditionCheckTemp < NUM_BATTLE_SIDES) {
                side = battleCtx->fieldConditionCheckTemp;

                if (battleCtx->sideConditionsMask[side] & SIDE_CONDITION_LUCKY_CHANT) {
                    battleCtx->sideConditionsMask[side] -= SIDE_CONDITION_LUCKY_CHANT_SHIFT;

                    if ((battleCtx->sideConditionsMask[side] & SIDE_CONDITION_LUCKY_CHANT) == FALSE) {
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_LUCKY_CHANT_END);
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

        case FIELD_COND_CHECK_WISH:
            while (battleCtx->fieldConditionCheckTemp < maxBattlers) {
                side = battleCtx->monSpeedOrder[battleCtx->fieldConditionCheckTemp];

                if (battleCtx->fieldConditions.wishTurns[side]
                        && --battleCtx->fieldConditions.wishTurns[side] == 0
                        && battleCtx->battleMons[side].curHP) {
                    battleCtx->msgBattlerTemp = side;

                    battleCtx->msgBuffer.tags = TAG_NICKNAME;
                    battleCtx->msgBuffer.id = 533;
                    battleCtx->msgBuffer.params[0] = side | (battleCtx->fieldConditions.wishTarget[side] << 8);

                    battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[side].maxHP, 2);

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WISH_HEAL);
                    state = STATE_BREAK_OUT;
                }

                battleCtx->fieldConditionCheckTemp++;
                if (state) {
                    break;
                }
            }

            StepFieldConditionCheck(battleCtx, state);
            break;

        case FIELD_COND_CHECK_RAINING:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_RAINING) {
                if (battleCtx->fieldConditionsMask & FIELD_CONDITION_RAINING_PERM) {
                    battleCtx->msgBuffer.id = 801;
                    battleCtx->msgBuffer.tags = TAG_NONE;

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WEATHER_CONTINUES);
                } else {
                    if (--battleCtx->fieldConditions.weatherTurns == 0) {
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_RAINING_END);
                    } else {
                        battleCtx->msgBuffer.id = 801;
                        battleCtx->msgBuffer.tags = TAG_NONE;

                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WEATHER_CONTINUES);
                    }
                }

                battleCtx->scriptTemp = 19;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_SANDSTORM:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_SANDSTORM) {
                if (battleCtx->fieldConditionsMask & FIELD_CONDITION_SANDSTORM_PERM) {
                    battleCtx->msgBuffer.id = 805;
                    battleCtx->msgBuffer.tags = TAG_NONE;
                    
                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WEATHER_CONTINUES);
                } else {
                    if (--battleCtx->fieldConditions.weatherTurns == 0) {
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_SANDSTORM_END);
                    } else {
                        battleCtx->msgBuffer.id = 805;
                        battleCtx->msgBuffer.tags = TAG_NONE;
                        
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WEATHER_CONTINUES);
                    }
                }

                battleCtx->scriptTemp = 21;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_SUNNY:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_SUNNY) {
                if (battleCtx->fieldConditionsMask & FIELD_CONDITION_SUNNY_PERM) {
                    battleCtx->msgBuffer.id = 808;
                    battleCtx->msgBuffer.tags = TAG_NONE;
                    
                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WEATHER_CONTINUES);
                } else {
                    if (--battleCtx->fieldConditions.weatherTurns == 0) {
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_SUNNY_END);
                    } else {
                        battleCtx->msgBuffer.id = 808;
                        battleCtx->msgBuffer.tags = TAG_NONE;
                        
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WEATHER_CONTINUES);
                    }
                }

                battleCtx->scriptTemp = 22;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_HAILING:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_HAILING) {
                if (battleCtx->fieldConditionsMask & FIELD_CONDITION_HAILING_PERM) {
                    battleCtx->msgBuffer.id = 811;
                    battleCtx->msgBuffer.tags = TAG_NONE;
                    
                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WEATHER_CONTINUES);
                } else {
                    if (--battleCtx->fieldConditions.weatherTurns == 0) {
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_HAILING_END);
                    } else {
                        battleCtx->msgBuffer.id = 811;
                        battleCtx->msgBuffer.tags = TAG_NONE;
                        
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WEATHER_CONTINUES);
                    }
                }

                battleCtx->scriptTemp = 20;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_DEEP_FOG:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_DEEP_FOG) {
                battleCtx->msgBuffer.id = 813;
                battleCtx->msgBuffer.tags = TAG_NONE;
                
                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WEATHER_CONTINUES);

                battleCtx->scriptTemp = 18;
                state = STATE_BREAK_OUT;
            }

            battleCtx->fieldConditionCheckState++;
            break;

        case FIELD_COND_CHECK_GRAVITY:
            if (battleCtx->fieldConditionsMask & FIELD_CONDITION_GRAVITY) {
                battleCtx->fieldConditionsMask -= (1 << FIELD_CONDITION_GRAVITY_SHIFT);

                if ((battleCtx->fieldConditionsMask & FIELD_CONDITION_GRAVITY) == 0) {
                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_GRAVITY_END);
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

enum MonConditionCheckState {
    MON_COND_CHECK_START = 0,

    MON_COND_CHECK_INGRAIN = MON_COND_CHECK_START,
    MON_COND_CHECK_AQUA_RING,
    MON_COND_CHECK_ABILITY,
    MON_COND_CHECK_USE_ITEM,
    MON_COND_CHECK_LEFTOVERS,
    MON_COND_CHECK_LEECH_SEED,
    MON_COND_CHECK_POISON,
    MON_COND_CHECK_TOXIC,
    MON_COND_CHECK_BURN,
    MON_COND_CHECK_NIGHTMARE,
    MON_COND_CHECK_CURSE,
    MON_COND_CHECK_BIND,
    MON_COND_CHECK_BAD_DREAMS,
    MON_COND_CHECK_UPROAR,
    MON_COND_CHECK_THRASH,
    MON_COND_CHECK_DISABLE,
    MON_COND_CHECK_ENCORE,
    MON_COND_CHECK_LOCK_ON,
    MON_COND_CHECK_CHARGE,
    MON_COND_CHECK_TAUNT,
    MON_COND_CHECK_MAGNET_RISE,
    MON_COND_CHECK_HEAL_BLOCK,
    MON_COND_CHECK_EMBARGO,
    MON_COND_CHECK_YAWN,
    MON_COND_CHECK_ITEM_CONDITION,
    MON_COND_CHECK_ITEM_DETRIMENTAL_EFFECT,

    MON_COND_CHECK_END
};

static void BattleController_CheckMonConditions(BattleSystem *battleSys, BattleContext *battleCtx)
{
    u8 state = STATE_PROCESSING;
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    // Explicit `== TRUE` is needed to match on these.
    if (BattleController_CheckAnyFainted(battleCtx, battleCtx->command, battleCtx->command, 1) == TRUE
            || BattleController_CheckExpPayout(battleCtx, battleCtx->command, battleCtx->command) == TRUE
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
        case MON_COND_CHECK_INGRAIN:
            if ((battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_INGRAIN)
                    && battleCtx->battleMons[battler].curHP != battleCtx->battleMons[battler].maxHP
                    && battleCtx->battleMons[battler].curHP) {
                if (battleCtx->battleMons[battler].moveEffectsData.healBlockTurns) {
                    battleCtx->msgBattlerTemp = battler;
                    LOAD_SUBSEQ(BATTLE_SUBSEQ_CANNOT_HEAL);
                } else {
                    battleCtx->msgBattlerTemp = battler;
                    LOAD_SUBSEQ(BATTLE_SUBSEQ_INGRAIN_HEAL);
                }

                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_AQUA_RING:
            if ((battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_AQUA_RING)
                    && battleCtx->battleMons[battler].curHP != battleCtx->battleMons[battler].maxHP
                    && battleCtx->battleMons[battler].curHP) {
                if (battleCtx->battleMons[battler].moveEffectsData.healBlockTurns) {
                    battleCtx->msgBattlerTemp = battler;
                    LOAD_SUBSEQ(BATTLE_SUBSEQ_CANNOT_HEAL);
                } else {
                    battleCtx->msgBattlerTemp = battler;
                    battleCtx->msgMoveTemp = MOVE_AQUA_RING;
                    battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP, 16);
                    LOAD_SUBSEQ(BATTLE_SUBSEQ_AQUA_RING_HEAL);
                }

                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;
        case MON_COND_CHECK_ABILITY:
            if (BattleSystem_TriggerTurnEndAbility(battleSys, battleCtx, battler) == TRUE) {
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_USE_ITEM:
            if (BattleSystem_TriggerHeldItem(battleSys, battleCtx, battler) == TRUE) {
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_LEFTOVERS:
            if (BattleSystem_TriggerLeftovers(battleSys, battleCtx, battler) == TRUE) {
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_LEECH_SEED:
            if ((battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_LEECH_SEED)
                    && battleCtx->battleMons[battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_LEECH_SEED_RECIPIENT].curHP
                    && Battler_Ability(battleCtx, battler) != ABILITY_MAGIC_GUARD
                    && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgAttacker = battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_LEECH_SEED_RECIPIENT;
                battleCtx->msgDefender = battler;

                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_LEECH_SEED_EFFECT);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_POISON:
            if ((battleCtx->battleMons[battler].status & MON_CONDITION_POISON) && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgBattlerTemp = battler;
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, 8);

                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_POISON_DAMAGE);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_TOXIC:
            if ((battleCtx->battleMons[battler].status & MON_CONDITION_TOXIC) && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgBattlerTemp = battler;
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP, 16);

                // If we're not already at the maximum Toxic stage, increment the counter
                if ((battleCtx->battleMons[battler].status & MON_CONDITION_TOXIC_COUNTER) != MON_CONDITION_TOXIC_COUNTER) {
                    battleCtx->battleMons[battler].status += MON_CONDITION_TOXIC_COUNT_INC;
                }

                battleCtx->hpCalcTemp *= ((battleCtx->battleMons[battler].status & MON_CONDITION_TOXIC_COUNTER) >> 8);
                battleCtx->hpCalcTemp *= -1;

                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_POISON_DAMAGE);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_BURN:
            if ((battleCtx->battleMons[battler].status & MON_CONDITION_BURN) && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgBattlerTemp = battler;
                
                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_BURN_DAMAGE);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_NIGHTMARE:
            if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_NIGHTMARE) && battleCtx->battleMons[battler].curHP) {
                if (battleCtx->battleMons[battler].status & MON_CONDITION_SLEEP) {
                    battleCtx->msgBattlerTemp = battler;

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_NIGHTMARE_EFFECT);
                    state = STATE_BREAK_OUT;
                } else {
                    battleCtx->battleMons[battler].statusVolatile &= ~VOLATILE_CONDITION_NIGHTMARE;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_CURSE:
            if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_CURSE) && battleCtx->battleMons[battler].curHP) {
                battleCtx->msgBattlerTemp = battler;

                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_CURSE_DAMAGE);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_BIND:
            if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_BIND) && battleCtx->battleMons[battler].curHP) {
                battleCtx->battleMons[battler].statusVolatile -= (1 << VOLATILE_CONDITION_BIND_SHIFT);

                if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_BIND) {
                    battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, 16);
                    LOAD_SUBSEQ(BATTLE_SUBSEQ_BIND_EFFECT);
                } else {
                    LOAD_SUBSEQ(BATTLE_SUBSEQ_BIND_END);
                }

                battleCtx->msgMoveTemp = battleCtx->battleMons[battler].moveEffectsData.bindingMove;
                battleCtx->msgBattlerTemp = battler;
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_BAD_DREAMS:
            battleCtx->scriptTemp = BattleSystem_CountAbility(battleSys, battleCtx, 4, battler, ABILITY_BAD_DREAMS);

            if ((battleCtx->battleMons[battler].status & MON_CONDITION_SLEEP)
                    && Battler_Ability(battleCtx, battler) != ABILITY_MAGIC_GUARD
                    && battleCtx->battleMons[battler].curHP
                    && battleCtx->scriptTemp) {
                battleCtx->hpCalcTemp = BattleSystem_Divide(battleCtx->battleMons[battler].maxHP * -1, 8);

                BattleSystem_LoadScript(battleCtx, 1, BATTLE_SUBSEQ_BAD_DREAMS);

                battleCtx->battleStatusMask |= SYSCTL_SKIP_SPRITE_BLINK;
                battleCtx->msgBattlerTemp = battler;
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_UPROAR:
            if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_UPROAR) {
                u8 j;
                for (j = 0; j < maxBattlers; j++) {
                    if ((battleCtx->battleMons[j].status & MON_CONDITION_SLEEP)
                            && battleCtx->battleMons[j].curHP
                            && Battler_Ability(battleCtx, j) != ABILITY_SOUNDPROOF) {
                        battleCtx->msgBattlerTemp = j;
                        PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_WAKE_UP);
                        break;
                    }
                }

                if (j != maxBattlers) {
                    state = STATE_DONE;
                    break;
                }

                battleCtx->battleMons[battler].statusVolatile -= (1 << VOLATILE_CONDITION_UPROAR_SHIFT);

                if (BattleContext_MoveFailed(battleCtx, battler)) {
                    i = BATTLE_SUBSEQ_UPROAR_END;
                    battleCtx->battleMons[battler].statusVolatile &= ~VOLATILE_CONDITION_UPROAR;
                    battleCtx->fieldConditionsMask &= ((FlagIndex(battler) << FIELD_CONDITION_UPROAR_SHIFT) ^ 0xFFFFFFFF);
                } else if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_UPROAR) {
                    i = BATTLE_SUBSEQ_UPROAR_CONTINUES;
                } else {
                    i = BATTLE_SUBSEQ_UPROAR_END;
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

        case MON_COND_CHECK_THRASH:
            if (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_THRASH) {
                battleCtx->battleMons[battler].statusVolatile -= (1 << VOLATILE_CONDITION_THRASH_SHIFT);

                if (BattleContext_MoveFailed(battleCtx, battler)) {
                    battleCtx->battleMons[battler].statusVolatile &= ~VOLATILE_CONDITION_THRASH;
                } else if ((battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_THRASH) == FALSE
                        && (battleCtx->battleMons[battler].statusVolatile & VOLATILE_CONDITION_CONFUSION) == FALSE) {
                    battleCtx->sideEffectMon = battler;
                    
                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_THRASH_END);
                    state = STATE_BREAK_OUT;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_DISABLE:
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

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_DISABLE_END);
                    state = STATE_BREAK_OUT;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_ENCORE:
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

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_ENCORE_END);
                    state = STATE_BREAK_OUT;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_LOCK_ON:
            if (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_LOCK_ON) {
                battleCtx->battleMons[battler].moveEffectsMask -= (1 << MOVE_EFFECT_LOCK_ON_SHIFT);
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_CHARGE:
            if (battleCtx->battleMons[battler].moveEffectsData.chargedTurns
                    && --battleCtx->battleMons[battler].moveEffectsData.chargedTurns == 0) {
                battleCtx->battleMons[battler].moveEffectsMask &= ~MOVE_EFFECT_CHARGE;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_TAUNT:
            if (battleCtx->battleMons[battler].moveEffectsData.tauntedTurns
                    && --battleCtx->battleMons[battler].moveEffectsData.tauntedTurns == 0) {
                battleCtx->msgBattlerTemp = battler;
                
                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_TAUNT_END);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_MAGNET_RISE:
            if (battleCtx->battleMons[battler].moveEffectsData.magnetRiseTurns
                    && --battleCtx->battleMons[battler].moveEffectsData.magnetRiseTurns == 0) {
                battleCtx->msgBattlerTemp = battler;
                
                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_MAGNET_RISE_END);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_HEAL_BLOCK:
            if (battleCtx->battleMons[battler].moveEffectsData.healBlockTurns
                    && --battleCtx->battleMons[battler].moveEffectsData.healBlockTurns == 0) {
                battleCtx->msgBattlerTemp = battler;
                
                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_HEAL_BLOCK_END);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_EMBARGO:
            if (battleCtx->battleMons[battler].moveEffectsData.embargoTurns
                    && --battleCtx->battleMons[battler].moveEffectsData.embargoTurns == 0) {
                battleCtx->msgBattlerTemp = battler;
                
                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_EMBARGO_END);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_YAWN:
            if (battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_YAWN) {
                battleCtx->battleMons[battler].moveEffectsMask -= (1 << MOVE_EFFECT_YAWN_SHIFT);

                if ((battleCtx->battleMons[battler].moveEffectsMask & MOVE_EFFECT_YAWN) == FALSE) {
                    battleCtx->sideEffectMon = battler;
                    battleCtx->sideEffectType = 4;

                    PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_FALL_ASLEEP);
                    state = STATE_BREAK_OUT;
                }
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_ITEM_CONDITION:
            int seqNum;
            if (BattleSystem_TriggerHeldItemOnStatus(battleSys, battleCtx, battler, &seqNum) == TRUE) {
                battleCtx->msgBattlerTemp = battler;
                
                PrepareSubroutineSequence(battleCtx, seqNum);
                state = STATE_BREAK_OUT;
            }

            battleCtx->monConditionCheckState++;
            break;

        case MON_COND_CHECK_ITEM_DETRIMENTAL_EFFECT:
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

enum SideConditionCheckState {
    SIDE_COND_CHECK_START = 0,

    SIDE_COND_CHECK_FUTURE_SIGHT = SIDE_COND_CHECK_START,
    SIDE_COND_CHECK_PERISH_SONG,
    SIDE_COND_CHECK_TRICK_ROOM,

    SIDE_COND_CHECK_END
};

static void BattleController_CheckSideConditions(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int maxBattlers = BattleSystem_MaxBattlers(battleSys);

    if (BattleController_CheckAnyFainted(battleCtx, battleCtx->command, battleCtx->command, 1) == TRUE) {
        return;
    }

    BattleIO_ClearMessageBox(battleSys);

    int battler;
    switch (battleCtx->sideConditionCheckState) {
    case SIDE_COND_CHECK_FUTURE_SIGHT:
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

                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_FUTURE_SIGHT_DAMAGE);
                return;
            }
        }

        battleCtx->sideConditionCheckState++;
        battleCtx->sideConditionCheckTemp = 0;
    case SIDE_COND_CHECK_PERISH_SONG:
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
                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_CONTINUE_PERISH_SONG);
                return;
            }
        }

        battleCtx->sideConditionCheckState++;
        battleCtx->sideConditionCheckTemp = 0;
    case SIDE_COND_CHECK_TRICK_ROOM:
        if (battleCtx->fieldConditionsMask & FIELD_CONDITION_TRICK_ROOM) {
            battleCtx->fieldConditionsMask -= (1 << FIELD_CONDITION_TRICK_ROOM_SHIFT);
            if ((battleCtx->fieldConditionsMask & FIELD_CONDITION_TRICK_ROOM) == FALSE) {
                PrepareSubroutineSequence(battleCtx, BATTLE_SUBSEQ_TRICK_ROOM_END);
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
    // Explicit `== TRUE` is needed to match on these.
    if (BattleController_CheckExpPayout(battleCtx, battleCtx->command, battleCtx->command) == TRUE
            || BattleController_CheckBattleOver(battleSys, battleCtx) == TRUE
            || BattleController_CheckAnySwitches(battleSys, battleCtx) == TRUE) {
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
    BOOL overrideMoveChoice = FALSE;
    battleCtx->attacker = battleCtx->battlerActionOrder[battleCtx->turnOrderCounter];

    if (battleCtx->turnFlags[battleCtx->attacker].struggling) {
        battleCtx->moveTemp = MOVE_STRUGGLE;
        overrideMoveChoice = TRUE;
    } else if (ATTACKING_MON.moveEffectsData.encoredMove
            && ATTACKING_MON.moveEffectsData.encoredMove == ATTACKING_MON.moves[ATTACKING_MON.moveEffectsData.encoredMoveSlot]) {
        // Attacker is locked into one of its moves by Encore
        battleCtx->moveTemp = ATTACKING_MON.moveEffectsData.encoredMove;
        overrideMoveChoice = TRUE;
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
        overrideMoveChoice = TRUE;
    } else if (BattleSystem_CanPickCommand(battleCtx, battleCtx->attacker) == FALSE) {
        // Relock the attacker into its move. There should be no override here, as the attacker
        // should not have been able to choose any input.
        battleCtx->moveTemp = battleCtx->moveLockedInto[battleCtx->attacker];
    } else if (battleCtx->moveSelected[battleCtx->attacker] != ATTACKING_MON.moves[battleCtx->moveSlot[battleCtx->attacker]]) {
        // If the attacker somehow selected a move that it does not know, prefer the move that's
        // actually in the chosen slot.
        battleCtx->moveTemp = ATTACKING_MON.moves[battleCtx->moveSlot[battleCtx->attacker]];
        overrideMoveChoice = TRUE;
    } else {
        battleCtx->moveTemp = ATTACKING_MON.moves[battleCtx->moveSlot[battleCtx->attacker]];
    }

    battleCtx->moveCur = battleCtx->moveTemp;
    battleCtx->command = BATTLE_CONTROL_BEFORE_MOVE;
    battleCtx->defender = BattleSystem_Defender(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveTemp, overrideMoveChoice, 0);

    BattleIO_ClearMessageBox(battleSys);
}

static void BattleController_ItemCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    battleCtx->attacker = battleCtx->battlerActionOrder[battleCtx->turnOrderCounter];
    battleCtx->defender = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);

    BattleItemUse *used = (BattleItemUse *)&battleCtx->battlerActions[battleCtx->attacker][BATTLE_ACTION_TEMP_VALUE];
    int nextScript;
    if (Battler_Side(battleSys, battleCtx->attacker)) {
        switch (battleCtx->aiContext.usedItemType[battleCtx->attacker >> 1]) {
        case ITEM_TYPE_FULL_RESTORE:
            nextScript = BATTLE_SUBSEQ_USE_FULL_RESTORE;
            break;
        case ITEM_TYPE_RECOVER_HP:
            nextScript = BATTLE_SUBSEQ_USE_POTION;
            break;
        case ITEM_TYPE_RECOVER_STATUS:
            if ((battleCtx->aiContext.usedItemCondition[battleCtx->attacker >> 1] & ITEM_RECOVER_CONFUSION)
                    && (battleCtx->aiContext.usedItemCondition[battleCtx->attacker >> 1] & ITEM_RECOVER_FULL)) {
                battleCtx->msgTemp = 6;
            } else {
                battleCtx->msgTemp = LowestBit(battleCtx->aiContext.usedItemCondition[battleCtx->attacker >> 1]);
            }

            nextScript = BATTLE_SUBSEQ_USE_STATUS_RECOVERY;
            break;
        case ITEM_TYPE_STAT_BOOSTER:
            battleCtx->msgTemp = battleCtx->aiContext.usedItemCondition[battleCtx->attacker >> 1];
            nextScript = BATTLE_SUBSEQ_USE_STAT_BOOSTER;
            break;
        case ITEM_TYPE_GUARD_SPEC:
            nextScript = BATTLE_SUBSEQ_USE_GUARD_SPEC;
            break;
        }

        battleCtx->msgItemTemp = battleCtx->aiContext.usedItem[battleCtx->attacker >> 1];
    } else {
        switch (used->pocket) {
        case BATTLE_POCKET_RECOVER_STATUS:
        case BATTLE_POCKET_RECOVER_HP:
        case BATTLE_POCKET_BATTLE_ITEMS:
            if (used->item == ITEM_POKE_DOLL || used->item == ITEM_FLUFFY_TAIL) {
                nextScript = BATTLE_SUBSEQ_ESCAPE_ITEM;
            } else {
                nextScript = BATTLE_SUBSEQ_BATTLE_ITEM;
            }

            break;
        case BATTLE_POCKET_POKE_BALLS:
            nextScript = BATTLE_SUBSEQ_THROW_POKEBALL;
            if ((BattleSystem_BattleType(battleSys) & BATTLE_TYPE_TRAINER) == FALSE
                    && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) == FALSE) {
                Bag_SubtractItem(BattleSystem_Bag(battleSys), used->item, 1, HEAP_ID_BATTLE);
                Bag_SetLastItemUsed(BattleSystem_BagCursor(battleSys), used->item, used->pocket);
            }

            break;
        }

        battleCtx->msgItemTemp = used->item;
    }

    LOAD_SUBSEQ(nextScript);
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
    battleCtx->moveStatusFlags |= MOVE_STATUS_NO_MORE_WORK;
}

static void BattleController_SwitchCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(BATTLE_SUBSEQ_SWITCH_POKEMON);

    battleCtx->attacker = battleCtx->battlerActionOrder[battleCtx->turnOrderCounter];
    battleCtx->switchedMon = battleCtx->attacker;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_AFTER_SWITCH;
    battleCtx->scriptTemp = 0;
    battleCtx->moveStatusFlags |= MOVE_STATUS_NO_MORE_WORK;
}

static void BattleController_RunCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    battleCtx->attacker = battleCtx->battlerActionOrder[battleCtx->turnOrderCounter];

    if (Battler_Side(battleSys, battleCtx->attacker)
            && (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_LINK) == FALSE) {
        if (ATTACKING_MON.statusVolatile & (VOLATILE_CONDITION_BIND | VOLATILE_CONDITION_MEAN_LOOK)) {
            LOAD_SUBSEQ(BATTLE_SUBSEQ_ENEMY_ESCAPE_FAILED);
            battleCtx->scriptCursor = 0;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
        } else {
            LOAD_SUBSEQ(BATTLE_SUBSEQ_ENEMY_ESCAPE);
            battleCtx->scriptCursor = 0;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_FIGHT_END;
        }
    } else {
        if (BattleSystem_TryEscape(battleSys, battleCtx, battleCtx->attacker)) {
            LOAD_SUBSEQ(BATTLE_SUBSEQ_ESCAPE);
            battleCtx->scriptCursor = 0;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_FIGHT_END;
        } else {
            LOAD_SUBSEQ(BATTLE_SUBSEQ_ESCAPE_FAILED);
            battleCtx->scriptCursor = 0;
            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
            battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
        }
    }
}

static void BattleController_SafariBallCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(BATTLE_SUBSEQ_THROW_SAFARI_BALL);

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
    LOAD_SUBSEQ(BATTLE_SUBSEQ_SAFARI_THROW_BAIT);

    battleCtx->attacker = BATTLER_US;
    battleCtx->defender = BATTLER_THEM;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
    battleCtx->scriptTemp = BattleSystem_RandNext(battleSys) % 10;

    // TODO: This 12 could use with a constant
    if (battleCtx->safariCatchCount < 12) {
        battleCtx->safariCatchCount++;
    }

    if (battleCtx->scriptTemp != 0) {
        if (battleCtx->safariEscapeCount < 12) {
            battleCtx->safariEscapeCount++;
        }
    }
}

static void BattleController_SafariRockCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(BATTLE_SUBSEQ_SAFARI_THROW_ROCK);

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

        if (battleCtx->safariCatchCount) {
            battleCtx->safariCatchCount--;
        }
    }
}

static void BattleController_SafariRunCommand(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(BATTLE_SUBSEQ_SAFARI_ESCAPE);

    battleCtx->attacker = BATTLER_US;
    battleCtx->defender = BATTLER_THEM;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
    battleCtx->commandNext = BATTLE_CONTROL_MOVE_END;
}

enum {
    OBEY_CHECK_SUCCESS = 0,
    OBEY_CHECK_DO_NOTHING,
    OBEY_CHECK_DIFFERENT_MOVE,
    OBEY_CHECK_HIT_SELF
};

static int BattleController_CheckObedience (BattleSystem *battleSys, BattleContext *battleCtx, int *nextSeq)
{
    int rand1, rand2; // must be defined up here to match
    u8 maxLevel = 0;
    u32 battleType = BattleSystem_BattleType(battleSys);
    TrainerInfo *trInfo = BattleSystem_TrainerInfo(battleSys, 0);

    if (battleType & BATTLE_TYPE_NO_OBEDIENCE_CHECK) {
        return OBEY_CHECK_SUCCESS;
    }

    if (Battler_Side(battleSys, battleCtx->attacker)) {
        return OBEY_CHECK_SUCCESS;
    }

    if ((battleType & BATTLE_TYPE_AI)
            && BattleSystem_BattlerSlot(battleSys, battleCtx->attacker) == 4) {
        return OBEY_CHECK_SUCCESS;
    }

    if (BattleSystem_TrainerIsOT(battleSys, battleCtx) == TRUE) {
        return OBEY_CHECK_SUCCESS;
    }

    if (BattleSystem_CanPickCommand(battleCtx, battleCtx->attacker) == FALSE) {
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

    if (battleCtx->battleMons[battleCtx->attacker].level <= maxLevel) {
        return OBEY_CHECK_SUCCESS;
    }

    rand1 = ((BattleSystem_RandNext(battleSys) & 0xFF) * (ATTACKING_MON.level + maxLevel)) >> 8;
    if (rand1 < maxLevel) {
        return OBEY_CHECK_SUCCESS;
    }

    if (battleCtx->moveCur == MOVE_RAGE) {
        battleCtx->battleMons[battleCtx->attacker].statusVolatile &= ~VOLATILE_CONDITION_RAGE;
    }

    if ((ATTACKING_MON.status & MON_CONDITION_SLEEP)
            && (battleCtx->moveCur == MOVE_SNORE || battleCtx->moveCur == MOVE_SLEEP_TALK)) {
        *nextSeq = BATTLE_SUBSEQ_DISOBEY_WHILE_ASLEEP;
        return OBEY_CHECK_DO_NOTHING;
    }

    rand1 = ((BattleSystem_RandNext(battleSys) & 0xFF) * (ATTACKING_MON.level + maxLevel)) >> 8;
    if (rand1 < maxLevel) {
        rand1 = BattleSystem_CheckStruggling(battleSys, battleCtx, battleCtx->attacker, FlagIndex(ATTACKING_MOVE), 0xFFFFFFFF);

        if (rand1 == 0xF) {
            *nextSeq = BATTLE_SUBSEQ_DISOBEY_DO_NOTHING;
            return OBEY_CHECK_DO_NOTHING;
        }

        do {
            rand2 = BattleSystem_RandNext(battleSys) & 3;
        } while (rand1 & FlagIndex(rand2));

        ATTACKING_MOVE = rand2;
        battleCtx->moveTemp = ATTACKING_MON.moves[ATTACKING_MOVE];
        battleCtx->moveCur = battleCtx->moveTemp;
        battleCtx->defender = BattleSystem_Defender(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveTemp, 1, 0);

        if (battleCtx->defender == BATTLER_NONE) {
            ATTACKER_ACTION[BATTLE_ACTION_CHOOSE_TARGET] = BattleSystem_RandomOpponent(battleSys, battleCtx, battleCtx->attacker);
        } else {
            ATTACKER_ACTION[BATTLE_ACTION_CHOOSE_TARGET] = battleCtx->defender;
        }

        *nextSeq = BATTLE_SUBSEQ_DISOBEY_ORDERS;
        battleCtx->multiHitCheckFlags |= SYSCTL_SKIP_OBEDIENCE_CHECK;
        return OBEY_CHECK_DIFFERENT_MOVE;
    }

    maxLevel = ATTACKING_MON.level - maxLevel;
    rand1 = BattleSystem_RandNext(battleSys) & 0xFF;
    if ((rand1 < maxLevel && (ATTACKING_MON.status & MON_CONDITION_ANY) == FALSE)
            && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_VITAL_SPIRIT
            && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_INSOMNIA
            && (battleCtx->fieldConditionsMask & FIELD_CONDITION_UPROAR) == FALSE) {
        *nextSeq = BATTLE_SUBSEQ_DISOBEY_SLEEP;
        return OBEY_CHECK_DO_NOTHING;
    }

    rand1 -= maxLevel;
    if (rand1 < maxLevel) {
        battleCtx->defender = battleCtx->attacker;
        battleCtx->msgBattlerTemp = battleCtx->defender;

        battleCtx->hpCalcTemp = CALC_SELF_HIT(MOVE_POUND, 40);
        battleCtx->hpCalcTemp = BattleSystem_CalcDamageVariance(battleSys, battleCtx, battleCtx->hpCalcTemp);
        battleCtx->hpCalcTemp *= -1;

        *nextSeq = BATTLE_SUBSEQ_DISOBEY_HIT_SELF;
        battleCtx->battleStatusMask |= SYSCTL_CHECK_LOOP_ONLY_ONCE;
        return OBEY_CHECK_HIT_SELF;
    }

    *nextSeq = BATTLE_SUBSEQ_DISOBEY_DO_NOTHING;
    return OBEY_CHECK_DO_NOTHING;
}

static BOOL BattleController_DecrementPP (BattleSystem *battleSys, BattleContext *battleCtx)
{
    int ppCost = 1;
    if (battleCtx->selfTurnFlags[battleCtx->attacker].skipPressureCheck == FALSE
            && battleCtx->defender != BATTLER_NONE) {
        if (battleCtx->moveTemp == MOVE_IMPRISON) {
            ppCost += BattleSystem_CountAbility(battleSys, battleCtx, 3, battleCtx->attacker, ABILITY_PRESSURE);
        } else {
            switch (battleCtx->aiContext.moveTable[battleCtx->moveTemp].range) {
            case RANGE_ALL_ADJACENT:
            case RANGE_FIELD:
                // Number of mons on the field with Pressure
                ppCost += BattleSystem_CountAbility(battleSys, battleCtx, 9, battleCtx->attacker, ABILITY_PRESSURE);
                break;

            case RANGE_ADJACENT_OPPONENTS:
            case RANGE_OPPONENT_SIDE:
                // Number of mons on the enemy side with Pressure
                ppCost += BattleSystem_CountAbility(battleSys, battleCtx, 3, battleCtx->attacker, ABILITY_PRESSURE);
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
            && (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_CHARGE_TURN) == FALSE
            && (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_THRASH) == FALSE
            && MON_IS_UPROARING(battleCtx->attacker) == FALSE
            && moveSlot < LEARNED_MOVES_MAX) {
        battleCtx->moveStatusFlags |= MOVE_STATUS_NO_PP;
    }

    return FALSE;
}

static BOOL BattleController_HasNoTarget(BattleSystem *battleSys, BattleContext *battleCtx)
{
    BOOL result = FALSE;
    BOOL solarMove = FALSE;

    if (NO_TARGET) {
        LOAD_SUBSEQ(BATTLE_SUBSEQ_NO_TARGET);
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
            && BattleMove_IsMultiTurn(battleCtx, battleCtx->moveCur) == TRUE
            && result == FALSE
            && solarMove == FALSE
            && Battler_HeldItemEffect(battleCtx, battleCtx->attacker) != HOLD_EFFECT_CHARGE_SKIP
            && (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_CHARGE_TURN) == FALSE) {
        battleCtx->defender = battleCtx->attacker;
    }

    return result;
}

static int BattleController_CheckTypeChart(BattleSystem *battleSys, BattleContext *battleCtx)
{
    if ((CURRENT_MOVE_DATA.range != RANGE_USER
            && CURRENT_MOVE_DATA.range != RANGE_USER_SIDE
            && CURRENT_MOVE_DATA.power
            && (battleCtx->battleStatusMask & SYSCTL_SKIP_TYPE_CHECK) == FALSE
            && (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) == FALSE)
            || battleCtx->moveCur == MOVE_THUNDER_WAVE) {
        battleCtx->damage = BattleSystem_CheckTypeChart(battleSys,
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

enum {
    CHECK_STATUS_START = 0,

    CHECK_STATUS_SLEEP,
    CHECK_STATUS_FREEZE,
    CHECK_STATUS_TRUANT,
    CHECK_STATUS_RECHARGING,
    CHECK_STATUS_FLINCH,
    CHECK_STATUS_DISABLE,
    CHECK_STATUS_TAUNT,
    CHECK_STATUS_IMPRISON,
    CHECK_STATUS_GRAVITY,
    CHECK_STATUS_HEAL_BLOCK,
    CHECK_STATUS_CONFUSION,
    CHECK_STATUS_PARALYSIS,
    CHECK_STATUS_ATTRACT,
    CHECK_STATUS_BIDE,
    CHECK_STATUS_SELF_THAW,

    CHECK_STATUS_END,
};

enum {
    CHECK_STATUS_LOOP_BACK = 0,
    CHECK_STATUS_DISRUPT_MOVE, // wholly disrupt the move; attacker does not get a turn
    CHECK_STATUS_GO_TO_SCRIPT, // execute a given script, then proceed with the chosen move
    CHECK_STATUS_DONE,
};

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

        case CHECK_STATUS_SLEEP:
            if (ATTACKING_MON.status & MON_CONDITION_SLEEP) {
                if ((battleCtx->fieldConditionsMask & FIELD_CONDITION_UPROAR) 
                        && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_SOUNDPROOF) {
                    battleCtx->msgBattlerTemp = battleCtx->attacker;

                    LOAD_SUBSEQ(BATTLE_SUBSEQ_WAKE_UP);
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
                            LOAD_SUBSEQ(BATTLE_SUBSEQ_SLEEPING);

                            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                            battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                            result = CHECK_STATUS_GO_TO_SCRIPT;
                        }
                    } else {
                        battleCtx->msgBattlerTemp = battleCtx->attacker;

                        LOAD_SUBSEQ(BATTLE_SUBSEQ_WAKE_UP);
                        battleCtx->commandNext = battleCtx->command;
                        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                        result = CHECK_STATUS_GO_TO_SCRIPT;
                    }
                }
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_FREEZE:
            if (ATTACKING_MON.status & MON_CONDITION_FREEZE) {
                if (BattleSystem_RandNext(battleSys) % 5 != 0) {
                    if (moveEffect != BATTLE_EFFECT_THAW_AND_BURN_HIT
                            && moveEffect != BATTLE_EFFECT_RECOIL_BURN_HIT) {
                        LOAD_SUBSEQ(BATTLE_SUBSEQ_FROZEN);
                        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                        battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                        result = CHECK_STATUS_DISRUPT_MOVE;
                    }
                } else {
                    battleCtx->msgBattlerTemp = battleCtx->attacker;
                    
                    LOAD_SUBSEQ(BATTLE_SUBSEQ_THAW_OUT);
                    battleCtx->commandNext = battleCtx->command;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                    result = CHECK_STATUS_GO_TO_SCRIPT;
                }
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_TRUANT:
            if (Battler_CheckTruant(battleCtx, battleCtx->attacker) == TRUE) {
                LOAD_SUBSEQ(BATTLE_SUBSEQ_LOAFING_AROUND);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_RECHARGING:
            if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_RECHARGING) {
                ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_RECHARGING;

                LOAD_SUBSEQ(BATTLE_SUBSEQ_RECHARGING);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_FLINCH:
            if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_FLINCH) {
                ATTACKING_MON.statusVolatile &= ~VOLATILE_CONDITION_FLINCH;
                battleCtx->moveFailFlags[battleCtx->attacker].flinched = TRUE;

                LOAD_SUBSEQ(BATTLE_SUBSEQ_FLINCHED);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_DISABLE:
            if (ATTACKING_MON.moveEffectsData.disabledMove == battleCtx->moveTemp) {
                battleCtx->moveFailFlags[battleCtx->attacker].disabled = TRUE;

                LOAD_SUBSEQ(BATTLE_SUBSEQ_MOVE_IS_DISABLED);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_TAUNT:
            if (ATTACKING_MON.moveEffectsData.tauntedTurns
                    && battleCtx->aiContext.moveTable[battleCtx->moveCur].power == 0) {
                battleCtx->moveFailFlags[battleCtx->attacker].taunted = TRUE;

                LOAD_SUBSEQ(BATTLE_SUBSEQ_MOVE_FAIL_TAUNTED);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_IMPRISON:
            if (BattleSystem_Imprisoned(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur)) {
                battleCtx->moveFailFlags[battleCtx->attacker].imprisoned = TRUE;

                LOAD_SUBSEQ(BATTLE_SUBSEQ_MOVE_IS_IMPRISONED);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_GRAVITY:
            if (BattleSystem_FailsInHighGravity(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur)) {
                battleCtx->moveFailFlags[battleCtx->attacker].gravity = TRUE;

                LOAD_SUBSEQ(BATTLE_SUBSEQ_MOVE_FAIL_GRAVITY);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_HEAL_BLOCK:
            if (BattleSystem_HealBlocked(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur)) {
                battleCtx->moveFailFlags[battleCtx->attacker].healBlocked = TRUE;

                LOAD_SUBSEQ(BATTLE_SUBSEQ_MOVE_IS_HEAL_BLOCKED);
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                result = CHECK_STATUS_DISRUPT_MOVE;
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_CONFUSION:
            battleCtx->statusCheckState++;

            if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_CONFUSION) {
                ATTACKING_MON.statusVolatile -= (1 << VOLATILE_CONDITION_CONFUSION_SHIFT);

                if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_CONFUSION) {
                    if (BattleSystem_RandNext(battleSys) & 1) {
                        LOAD_SUBSEQ(BATTLE_SUBSEQ_CONFUSED);
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
                        
                        LOAD_SUBSEQ(BATTLE_SUBSEQ_HURT_SELF_IN_CONFUSION);
                        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                        battleCtx->commandNext = BATTLE_CONTROL_CHECK_FAINTED;

                        result = CHECK_STATUS_DISRUPT_MOVE;
                    }
                } else {
                    LOAD_SUBSEQ(BATTLE_SUBSEQ_SNAP_OUT_OF_CONFUSION);
                    battleCtx->commandNext = battleCtx->command;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                    result = CHECK_STATUS_GO_TO_SCRIPT;
                }
            }
            break;

        case CHECK_STATUS_PARALYSIS:
            if ((ATTACKING_MON.status & MON_CONDITION_PARALYSIS)
                    && Battler_Ability(battleCtx, battleCtx->attacker) != ABILITY_MAGIC_GUARD) {
                if (BattleSystem_RandNext(battleSys) % 4 == 0) {
                    battleCtx->moveFailFlags[battleCtx->attacker].paralyzed = TRUE;

                    LOAD_SUBSEQ(BATTLE_SUBSEQ_FULLY_PARALYZED);
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                    battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                    result = CHECK_STATUS_DISRUPT_MOVE;
                }
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_ATTRACT:
            if (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_ATTRACT) {
                battleCtx->msgBattlerTemp = LowestBit(
                    (ATTACKING_MON.statusVolatile & VOLATILE_CONDITION_ATTRACT) >> VOLATILE_CONDITION_ATTRACT_SHIFT
                );

                if (BattleSystem_RandNext(battleSys) & 1) {
                    LOAD_SUBSEQ(BATTLE_SUBSEQ_INFATUATED);
                    battleCtx->commandNext = battleCtx->command;
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                    result = CHECK_STATUS_GO_TO_SCRIPT;
                } else {
                    battleCtx->moveFailFlags[battleCtx->attacker].infatuated = TRUE;

                    LOAD_SUBSEQ(BATTLE_SUBSEQ_IMMOBILIZED_BY_LOVE);
                    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                    battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;

                    result = CHECK_STATUS_DISRUPT_MOVE;
                }
            }

            battleCtx->statusCheckState++;
            break;

        case CHECK_STATUS_BIDE:
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
                            LOAD_SUBSEQ(BATTLE_SUBSEQ_BIDE_NO_TARGET);
                            battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
                            battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                            result = CHECK_STATUS_GO_TO_SCRIPT;
                            break;
                        }
                    }
                }

                LOAD_SUBSEQ(BATTLE_SUBSEQ_BIDE_END);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

                result = CHECK_STATUS_GO_TO_SCRIPT;
            }
            break;

        case CHECK_STATUS_SELF_THAW:
            if ((ATTACKING_MON.status & MON_CONDITION_FREEZE)
                    && (moveEffect == BATTLE_EFFECT_THAW_AND_BURN_HIT || moveEffect == BATTLE_EFFECT_RECOIL_BURN_HIT)) {
                LOAD_SUBSEQ(BATTLE_SUBSEQ_DEFROSTED_BY_MOVE);
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

enum {
    IMMUNITY_ABILITY_STATE_START = 0,

    IMMUNITY_ABILITY_STATE_CHECK = IMMUNITY_ABILITY_STATE_START,

    IMMUNITY_ABILITY_STATE_END
};

enum {
    IMMUNITY_ABILITY_LOOP_BACK,
    IMMUNITY_ABILITY_EXEC_SCRIPT,
    IMMUNITY_ABILITY_DONE,
};

static BOOL BattleController_TriggerImmunityAbilities(BattleSystem *battleSys, BattleContext *battleCtx)
{
    int result = IMMUNITY_ABILITY_LOOP_BACK;

    do {
        switch (battleCtx->abilityCheckState) {
        case IMMUNITY_ABILITY_STATE_CHECK:
            int nextSeq = BattleSystem_CheckImmunityAbilities(battleCtx, battleCtx->attacker, battleCtx->defender);

            if ((nextSeq && (battleCtx->moveStatusFlags & MOVE_STATUS_DID_NOT_HIT) == FALSE)
                    || nextSeq == BATTLE_SUBSEQ_BLOCKED_BY_SOUNDPROOF) {
                LOAD_SUBSEQ(nextSeq);
                battleCtx->commandNext = battleCtx->command;
                battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
                battleCtx->moveStatusFlags |= MOVE_STATUS_NO_MORE_WORK;

                result = IMMUNITY_ABILITY_EXEC_SCRIPT;
            }

            battleCtx->abilityCheckState++;
            break;

        case IMMUNITY_ABILITY_STATE_END:
            battleCtx->abilityCheckState = IMMUNITY_ABILITY_STATE_START;
            result = IMMUNITY_ABILITY_DONE;
            break;
        }
    } while (result == IMMUNITY_ABILITY_LOOP_BACK);

    return result != IMMUNITY_ABILITY_DONE;
}

static BOOL BattleController_CheckQuickClaw(BattleSystem *battleSys, BattleContext *battleCtx)
{
    LOAD_SUBSEQ(BATTLE_SUBSEQ_CHECK_QUICK_CLAW);

    battleCtx->commandNext = battleCtx->command;
    battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;

    return TRUE;
}

typedef struct {
    u8 numerator;
    u8 denominator;
} Fraction;

static const Fraction HitRateByStage[] = {
    {  33, 100 },
    {  36, 100 },
    {  43, 100 },
    {  50, 100 },
    {  60, 100 },
    {  75, 100 },
    {   1,   1 },
    { 133, 100 },
    { 166, 100 },
    {   2,   1 },
    { 233, 100 },
    { 133,  50 },
    {   3,   1 }
};

static int BattleController_CheckMoveHit(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move)
{
    if (BattleSystem_BattleType(battleSys) & BATTLE_TYPE_CATCH_TUTORIAL) {
        return 0;
    }

    u8 moveType;
    if (Battler_Ability(battleCtx, attacker) == ABILITY_NORMALIZE) {
        moveType = TYPE_NORMAL;
    } else if (battleCtx->moveType) {
        moveType = battleCtx->moveType;
    } else {
        moveType = MOVE_DATA(move).type;
    }

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

static int BattleController_CheckMoveHitOverrides(BattleSystem *battleSys, BattleContext *battleCtx, int attacker, int defender, int move)
{
    if (battleCtx->battleStatusMask & SYSCTL_FIRST_OF_MULTI_TURN) {
        return 0;
    }

    if (battleCtx->turnFlags[defender].protecting
            && (MOVE_DATA(move).flags & MOVE_FLAG_CAN_PROTECT)
            && (move != MOVE_CURSE || BattleSystem_IsGhostCurse(battleCtx, move, attacker) == TRUE) // Ghost-Curse can be Protected
            && (BattleMove_IsMultiTurn(battleCtx, move) == FALSE || (battleCtx->battleStatusMask & SYSCTL_LAST_OF_MULTI_TURN))) {
        BattleSystem_BreakMultiTurn(battleSys, battleCtx, attacker);
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

static BOOL BattleController_MoveStolen(BattleSystem *battleSys, BattleContext * battleCtx)
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

        LOAD_SUBSEQ(BATTLE_SUBSEQ_MAGIC_COAT);
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

            LOAD_SUBSEQ(BATTLE_SUBSEQ_SNATCH);
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
    if (BattleScriptEngine_Poll(battleSys, battleCtx) == TRUE) {
        battleCtx->scriptCursor = 0;
        battleCtx->command = battleCtx->commandNext;
    }
}

enum {
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
        BattleController_CheckQuickClaw(battleSys, battleCtx);
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
                    battleCtx->commandNext = BATTLE_CONTROL_CHECK_FAINTED;
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
        BattleSystem_RedirectTarget(battleSys, battleCtx, battleCtx->attacker, battleCtx->moveCur);
        battleCtx->beforeMoveCheckState = BEFORE_MOVE_START;
    }

    if (battleCtx->moveStatusFlags & MOVE_STATUS_NO_EFFECTS) {
        battleCtx->command = BATTLE_CONTROL_MOVE_FAILED;
    } else {
        battleCtx->battleStatusMask2 |= 0x40;

        BattleSystem_LoadScript(battleCtx, 0, battleCtx->moveCur);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_TRY_MOVE;
        
        BattleSystem_UpdateLastResort(battleSys, battleCtx);
    }

    BattleSystem_UpdateMetronomeCount(battleSys, battleCtx);
}

enum {
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

        if (BattleMove_TriggerRedirectionAbilities(battleSys, battleCtx) == TRUE) {
            return;
        }

    case TRY_MOVE_STATE_CHECK_MOVE_HITS:
        if ((battleCtx->multiHitCheckFlags & SYSCTL_SKIP_ACCURACY_CHECK) == FALSE
                && battleCtx->defender != BATTLER_NONE
                && BattleController_CheckMoveHit(battleSys, battleCtx, battleCtx->attacker, battleCtx->defender, battleCtx->moveCur) == 1) {
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

    if (BattleSystem_CheckPrimaryEffect(battleSys, battleCtx, &nextSeq) == TRUE) {
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
        battleCtx->command = BATTLE_CONTROL_CHECK_MULTI_TARGET;
    } else if (battleCtx->moveStatusFlags & MOVE_STATUS_NO_PP) {
        LOAD_SUBSEQ(BATTLE_SUBSEQ_NO_PP);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_UPDATE_MOVE_BUFFERS;
    } else if (battleCtx->multiHitLoop && (battleCtx->moveStatusFlags & MOVE_STATUS_MISSED)) {
        // Thrashing moves have a special status flag.
        battleCtx->moveStatusFlags &= ~MOVE_STATUS_MISSED;
        battleCtx->moveStatusFlags |= MOVE_STATUS_THRASH_DISRUPTED;
        battleCtx->command = BATTLE_CONTROL_AFTER_MOVE_MESSAGE;
    } else if (battleCtx->moveStatusFlags & MOVE_STATUS_DID_NOT_HIT) {
        LOAD_SUBSEQ(BATTLE_SUBSEQ_MISSED);
        battleCtx->command = BATTLE_CONTROL_EXEC_SCRIPT;
        battleCtx->commandNext = BATTLE_CONTROL_CHECK_FAINTED; // crash damage can kill
    } else {
        battleCtx->command = BATTLE_CONTROL_USE_MOVE;
    }
}

static void ov16_0224F8D4 (BattleSystem * param0, BattleContext * param1)
{
    BattleSystem_LoadScript(param1, 1, (0 + 1));
    param1->command = 21;
    param1->commandNext = 27;
}

static void ov16_0224F8EC (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    if (param1->moveStatusFlags & 0x20) {
        param1->damage = param1->battleMons[param1->defender].maxHP * -1;
    }

    if (param1->damage) {
        v0 = Battler_HeldItemEffect(param1, param1->defender);
        v1 = Battler_HeldItemPower(param1, param1->defender, 0);

        GF_ASSERT(param1->damage < 0);

        if (Battler_Side(param0, param1->attacker) == Battler_Side(param0, param1->defender)) {
            ov16_022666BC(param0, param1->attacker, 0, (((70 + 1)) + 26));
        }

        param1->lastHitByBattler[param1->defender] = param1->attacker;

        if ((param1->battleMons[param1->defender].statusVolatile & 0x1000000) && (param1->damage < 0)) {
            if ((param1->battleMons[param1->defender].moveEffectsData.substituteHP + param1->damage) <= 0) {
                param1->selfTurnFlags[param1->attacker].shellBellDamageDealt += (param1->battleMons[param1->defender].moveEffectsData.substituteHP * -1);
                param1->battleMons[param1->defender].statusVolatile &= (0x1000000 ^ 0xffffffff);
                param1->hitDamage = param1->battleMons[param1->defender].moveEffectsData.substituteHP * -1;
                param1->battleMons[param1->defender].moveEffectsData.substituteHP = 0;
            } else {
                param1->selfTurnFlags[param1->attacker].shellBellDamageDealt += param1->damage;
                param1->battleMons[param1->defender].moveEffectsData.substituteHP += param1->damage;
                param1->hitDamage = param1->damage;
            }

            param1->selfTurnFlags[param1->defender].statusFlags |= 0x8;
            param1->msgBattlerTemp = param1->defender;

            BattleSystem_LoadScript(param1, 1, (0 + 90));

            param1->command = 21;
            param1->commandNext = 28;
        } else {
            if (param1->aiContext.moveTable[param1->moveCur].effect == 101) {
                if ((param1->battleMons[param1->defender].curHP + param1->damage) <= 0) {
                    param1->damage = (param1->battleMons[param1->defender].curHP - 1) * -1;
                }
            }

            if (param1->turnFlags[param1->defender].enduring == 0) {
                if ((v0 == 65) && ((BattleSystem_RandNext(param0) % 100) < v1)) {
                    param1->selfTurnFlags[param1->defender].focusItemActivated = 1;
                }

                if ((v0 == 103) && (param1->battleMons[param1->defender].curHP == param1->battleMons[param1->defender].maxHP)) {
                    param1->selfTurnFlags[param1->defender].focusItemActivated = 1;
                }
            }

            if ((param1->turnFlags[param1->defender].enduring) || (param1->selfTurnFlags[param1->defender].focusItemActivated)) {
                if ((param1->battleMons[param1->defender].curHP + param1->damage) <= 0) {
                    param1->damage = (param1->battleMons[param1->defender].curHP - 1) * -1;

                    if (param1->turnFlags[param1->defender].enduring) {
                        param1->moveStatusFlags |= 0x80;
                    } else {
                        param1->moveStatusFlags |= 0x100;
                    }
                }
            }

            param1->storedDamage[param1->defender] += param1->damage;

            if (param1->battleMons[param1->defender].timesDamaged < 255) {
                param1->battleMons[param1->defender].timesDamaged++;
            }

            if (param1->aiContext.moveTable[param1->moveCur].class == 0) {
                param1->turnFlags[param1->defender].physicalDamageTakenFrom[param1->attacker] = param1->damage;
                param1->turnFlags[param1->defender].physicalDamageLastAttacker = param1->attacker;
                param1->turnFlags[param1->defender].physicalDamageAttackerMask |= FlagIndex(param1->attacker);
                param1->selfTurnFlags[param1->defender].physicalDamageTaken = param1->damage;
                param1->selfTurnFlags[param1->defender].physicalDamageLastAttacker = param1->attacker;
            } else if (param1->aiContext.moveTable[param1->moveCur].class == 1) {
                param1->turnFlags[param1->defender].specialDamageTakenFrom[param1->attacker] = param1->damage;
                param1->turnFlags[param1->defender].specialDamageLastAttacker = param1->attacker;
                param1->turnFlags[param1->defender].specialDamageAttackerMask |= FlagIndex(param1->attacker);
                param1->selfTurnFlags[param1->defender].specialDamageTaken = param1->damage;
                param1->selfTurnFlags[param1->defender].specialDamageLastAttacker = param1->attacker;
            }

            if ((param1->battleMons[param1->defender].curHP + param1->damage) <= 0) {
                param1->selfTurnFlags[param1->attacker].shellBellDamageDealt += (param1->battleMons[param1->defender].curHP * -1);
            } else {
                param1->selfTurnFlags[param1->attacker].shellBellDamageDealt += param1->damage;
            }

            param1->turnFlags[param1->defender].lastDamageTaken = param1->damage;
            param1->turnFlags[param1->defender].lastAttacker = param1->attacker;
            param1->msgBattlerTemp = param1->defender;
            param1->hpCalcTemp = param1->damage;

            BattleSystem_LoadScript(param1, 1, (0 + 2));

            param1->command = 21;
            param1->commandNext = 28;
            param1->battleStatusMask |= 0x2000;
        }
    } else {
        param1->command = 28;
    }
}

static void ov16_0224FD00 (BattleSystem * param0, BattleContext * param1)
{
    switch (param1->afterMoveMessageType) {
    case 0:
        switch (param1->afterMoveMessageState) {
        case 0:
            param1->afterMoveMessageState++;

            if (ov16_022511FC(param0, param1) == 1) {
                return;
            }
        case 1:
            param1->afterMoveMessageState++;

            if (ov16_02251218(param0, param1) == 1) {
                return;
            }
        case 2:
        {
            int v0;

            param1->afterMoveMessageState++;

            if ((ov16_02253710(param0, param1, &v0) == 1) && ((param1->moveStatusFlags & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) == 0)) {
                BattleSystem_LoadScript(param1, 1, v0);
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
        case 3:
            param1->afterMoveMessageState++;
            BattleSystem_LoadScript(param1, 1, (0 + 293));
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        case 4:
            param1->afterMoveMessageState++;

            if (ov16_0225126C(param0, param1) == 1) {
                return;
            }
        case 5:
        {
            int v1;

            param1->afterMoveMessageState++;

            if (ov16_0225708C(param0, param1, &v1) == 1) {
                BattleSystem_LoadScript(param1, 1, v1);
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
        case 6:
            param1->afterMoveMessageState++;

            if (ov16_022512F8(param0, param1) == 1) {
                return;
            }
        default:
            break;
        }
        break;
    case 1:
        switch (param1->afterMoveMessageState) {
        case 0:
            param1->afterMoveMessageState++;

            if (ov16_022511FC(param0, param1) == 1) {
                return;
            }
        case 1:
        {
            int v2;

            param1->afterMoveMessageState++;

            if ((ov16_02253710(param0, param1, &v2) == 1) && ((param1->moveStatusFlags & (1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576)) == 0)) {
                BattleSystem_LoadScript(param1, 1, v2);
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
        case 2:
            param1->afterMoveMessageState++;
            BattleSystem_LoadScript(param1, 1, (0 + 293));
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        case 3:
            param1->afterMoveMessageState++;

            if (ov16_0225126C(param0, param1) == 1) {
                return;
            }
        case 4:
        {
            int v3;

            param1->afterMoveMessageState++;

            if (ov16_0225708C(param0, param1, &v3) == 1) {
                BattleSystem_LoadScript(param1, 1, v3);
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
        case 5:
            param1->afterMoveMessageState++;

            if (ov16_02251218(param0, param1) == 1) {
                return;
            }
        case 6:
            param1->afterMoveMessageState++;

            if (ov16_022512F8(param0, param1) == 1) {
                return;
            }
        default:
            break;
        }
        break;
    }

    param1->afterMoveMessageState = 0;
    param1->command = 30;
}

static void ov16_0224FEE0 (BattleSystem * param0, BattleContext * param1)
{
    return;
}

static void ov16_0224FEE4 (BattleSystem * param0, BattleContext * param1)
{
    switch (param1->afterMoveEffectState) {
    case 0:
    {
        int v0 = 0;

        while (param1->afterMoveEffectTemp < BattleSystem_MaxBattlers(param0)) {
            if (((param1->battleMons[param1->afterMoveEffectTemp].moveEffectsMask & (0x40 | 0x80 | 0x40000 | 0x20000000)) == 0) && (param1->battleMons[param1->afterMoveEffectTemp].moveEffectsTemp & (0x40 | 0x80 | 0x40000 | 0x20000000))) {
                param1->battleMons[param1->afterMoveEffectTemp].moveEffectsTemp &= ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff));
                BattleSystem_LoadScript(param1, 1, (0 + 287));
                param1->msgBattlerTemp = param1->afterMoveEffectTemp;
                param1->commandNext = param1->command;
                param1->command = 21;
                v0 = 1;
            }

            param1->afterMoveEffectTemp++;

            if (v0) {
                return;
            }
        }
    }
        param1->afterMoveEffectState++;
        param1->afterMoveEffectTemp = 0;
    case 1:
        param1->afterMoveEffectState++;

        if (ov16_02257808(param0, param1, param1->command) == 1) {
            return;
        }
    case 2:
    {
        int v1;

        v1 = BattleSystem_ShowMonChecks(param0, param1);

        if (v1) {
            BattleSystem_LoadScript(param1, 1, v1);
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        }
    }
        param1->afterMoveEffectState++;
    case 3:
        param1->afterMoveEffectState++;

        if (BattleSystem_TriggerHeldItem(param0, param1, param1->attacker) == 1) {
            return;
        }
    case 4:
        param1->afterMoveEffectState++;

        if (param1->defender != 0xff) {
            if (BattleSystem_TriggerHeldItem(param0, param1, param1->defender) == 1) {
                return;
            }
        }
    case 5:
    {
        int v2;

        param1->afterMoveEffectState++;

        if (ov16_022588BC(param0, param1, &v2) == 1) {
            BattleSystem_LoadScript(param1, 1, v2);
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        }
    }
    case 6:
    {
        int v3;

        if (Battler_Ability(param1, param1->attacker) == 96) {
            v3 = 0;
        } else if (param1->moveType) {
            v3 = param1->moveType;
        } else {
            v3 = param1->aiContext.moveTable[param1->moveCur].type;
        }

        param1->afterMoveEffectState++;

        if (param1->defender != 0xff) {
            if ((param1->battleMons[param1->defender].status & 0x20) && ((param1->moveStatusFlags & 0x4000) == 0) && (param1->defender != param1->attacker) && ((param1->selfTurnFlags[param1->defender].physicalDamageTaken) || (param1->selfTurnFlags[param1->defender].specialDamageTaken)) && (param1->battleMons[param1->defender].curHP) && (v3 == 10)) {
                param1->msgBattlerTemp = param1->defender;
                BattleSystem_LoadScript(param1, 1, (0 + 29));
                param1->commandNext = param1->command;
                param1->command = 21;
                return;
            }
        }
    }
    case 7:
    {
        int v4;
        int v5 = 0;
        int v6;

        while (param1->afterMoveEffectTemp < BattleSystem_MaxBattlers(param0)) {
            v4 = param1->monSpeedOrder[param1->afterMoveEffectTemp];

            if (param1->battlersSwitchingMask & FlagIndex(v4)) {
                param1->afterMoveEffectTemp++;
                continue;
            }

            param1->afterMoveEffectTemp++;

            if (BattleSystem_TriggerHeldItemOnStatus(param0, param1, v4, &v6) == 1) {
                param1->msgBattlerTemp = v4;
                BattleSystem_LoadScript(param1, 1, v6);

                param1->commandNext = param1->command;
                param1->command = 21;

                v5 = 1;
                break;
            }
        }

        if (v5 == 0) {
            param1->afterMoveEffectState++;
            param1->afterMoveEffectTemp = 0;
        }
    }
    break;
    default:
        break;
    }

    param1->afterMoveEffectState = 0;
    param1->afterMoveEffectTemp = 0;
    param1->command = 31;
}

static void ov16_0225016C (BattleSystem * param0, BattleContext * param1)
{
    return;
}

static void ov16_02250170 (BattleSystem * param0, BattleContext * param1)
{
    if (param1->multiHitNumHits) {
        if ((param1->faintedMon == 0xff) && ((param1->battleMons[param1->attacker].status & 0x7) == 0) && ((param1->moveStatusFlags & 0x4000) == 0)) {
            if (--param1->multiHitCounter) {
                param1->multiHitLoop = 1;
                ov16_02255F94(param0, param1);

                param1->battleStatusMask &= (0x4000 ^ 0xffffffff);
                param1->multiHitCheckFlags = param1->multiHitAccuracyCheck;

                BattleSystem_LoadScript(param1, 0, param1->moveCur);

                param1->command = 21;
                param1->commandNext = 23;
            } else {
                param1->msgTemp = param1->multiHitNumHits;
                BattleSystem_LoadScript(param1, 1, (0 + 17));

                param1->command = 21;
                param1->commandNext = 33;
            }
        } else {
            if ((param1->faintedMon != 0xff) || (param1->battleMons[param1->attacker].status & 0x7)) {
                param1->msgTemp = param1->multiHitNumHits - param1->multiHitCounter + 1;
            } else {
                param1->msgTemp = param1->multiHitNumHits - param1->multiHitCounter;
            }

            BattleSystem_LoadScript(param1, 1, (0 + 17));
            param1->command = 21;
            param1->commandNext = 33;
        }

        BattleIO_ClearMessageBox(param0);
    } else {
        param1->command = 33;
    }
}

static void ov16_02250270 (BattleSystem * param0, BattleContext * param1)
{
    if (param1->battleStatusMask & 0xf000000) {
        BattleController_CheckAnyFainted(param1, 33, 33, 0);
    } else {
        param1->command = 34;
    }
}

static void ov16_02250298 (BattleSystem * param0, BattleContext * param1)
{
    if (param1->battleStatusMask2 & 0x8) {
        param1->battleStatusMask2 &= (0x8 ^ 0xffffffff);
        param1->defender = param1->attacker;
        param1->attacker = param1->magicCoatMon;
    }

    ov16_02250FF4(param0, param1);

    if ((param1->aiContext.moveTable[param1->moveCur].range == 0x4) && ((param1->battleStatusMask & 0x2) == 0) && (param1->battlerCounter < BattleSystem_MaxBattlers(param0))) {
        param1->multiHitCheckFlags = (0x1 | 0x4 | 0x8);
        {
            int v0;
            int v1 = BattleSystem_MaxBattlers(param0);
            UnkStruct_ov16_0225BFFC * v2 = BattleSystem_BattlerData(param0, param1->attacker);
            u8 v3 = ov16_02263AE4(v2);

            do {
                v0 = param1->monSpeedOrder[param1->battlerCounter++];

                if (((param1->battlersSwitchingMask & FlagIndex(v0)) == 0) && (param1->battleMons[v0].curHP)) {
                    v2 = BattleSystem_BattlerData(param0, v0);

                    if (((v3 & 0x1) && ((ov16_02263AE4(v2) & 0x1) == 0)) || ((v3 & 0x1) == 0) && (ov16_02263AE4(v2) & 0x1)) {
                        ov16_02255F94(param0, param1);
                        param1->defender = v0;
                        param1->command = 22;
                        break;
                    }
                }
            } while (param1->battlerCounter < BattleSystem_MaxBattlers(param0));
        }
        BattleIO_ClearMessageBox(param0);
    } else if ((param1->aiContext.moveTable[param1->moveCur].range == 0x8) && ((param1->battleStatusMask & 0x2) == 0) && (param1->battlerCounter < BattleSystem_MaxBattlers(param0))) {
        param1->multiHitCheckFlags = (0x1 | 0x4 | 0x8);
        {
            int v4;
            int v5 = BattleSystem_MaxBattlers(param0);

            do {
                v4 = param1->monSpeedOrder[param1->battlerCounter++];

                if (((param1->battlersSwitchingMask & FlagIndex(v4)) == 0) && (param1->battleMons[v4].curHP)) {
                    if (v4 != param1->attacker) {
                        ov16_02255F94(param0, param1);
                        param1->defender = v4;
                        param1->command = 22;
                        break;
                    }
                }
            } while (param1->battlerCounter < BattleSystem_MaxBattlers(param0));
        }
        BattleIO_ClearMessageBox(param0);
    } else {
        param1->command = 35;
    }
}

static void ov16_02250438 (BattleSystem * param0, BattleContext * param1)
{
    if (param1->battleStatusMask & 0xf0000000) {
        param1->faintedMon = LowestBit((param1->battleStatusMask & 0xf0000000) >> 28);
        param1->battleStatusMask &= (0xf0000000 ^ 0xffffffff);

        BattleSystem_LoadScript(param1, 1, (0 + 277));

        param1->command = 21;
        param1->commandNext = 36;
    } else {
        param1->command = 36;
    }
}

static void ov16_02250480 (BattleSystem * param0, BattleContext * param1)
{
    if (ov16_0225143C(param0, param1) == 1) {
        return;
    }

    param1->command = 38;
}

static void ov16_02250494 (BattleSystem * param0, BattleContext * param1)
{
    return;
}

static void ov16_02250498 (BattleSystem * param0, BattleContext * param1)
{
    u8 v0;

    v0 = Battler_HeldItemEffect(param1, param1->attacker);

    if ((param1->battleStatusMask & 0x20) || (param1->battleStatusMask2 & 0x4)) {
        if ((v0 == 55) || (v0 == 115) || (v0 == 125)) {
            if ((param1->moveTemp == 165) || ((param1->moveTemp == 369) && (param1->battleStatusMask2 & 0x10)) || ((param1->moveTemp == 226) && (param1->battleStatusMask2 & 0x40))) {
                (void)0;
            } else {
                param1->battleMons[param1->attacker].moveEffectsData.choiceLockedMove = param1->moveTemp;
            }
        } else {
            param1->battleMons[param1->attacker].moveEffectsData.choiceLockedMove = 0;
        }
    }

    if ((param1->battleStatusMask & 0x100000) == 0) {
        if (param1->battleStatusMask2 & 0x4) {
            param1->moveProtect[param1->attacker] = param1->moveCur;
            param1->movePrev = param1->moveTemp;
        } else {
            param1->moveProtect[param1->attacker] = 0;
            param1->movePrev = 0;
        }

        if (param1->battleStatusMask2 & 0x40) {
            param1->movePrevByBattler[param1->attacker] = param1->moveTemp;
        } else {
            param1->movePrevByBattler[param1->attacker] = 0;
        }
    }

    if (param1->battleStatusMask2 & 0x4) {
        param1->moveSketched[param1->attacker] = param1->moveTemp;
    }

    ov16_02250FF4(param0, param1);
    ov16_0225991C(param0, param1);

    param1->command = 39;
}

static void ov16_022505C4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    u32 v1;

    v1 = BattleSystem_BattleType(param0);

    if ((v1 & (0x20 | 0x200)) == 0) {
        if (ov16_02257628(param0, param1, param1->attacker, 0) == 1) {
            return;
        }

        if ((param1->defender != 0xff) && (ov16_02257628(param0, param1, param1->defender, 0) == 1)) {
            return;
        }

        if (BattleController_CheckExpPayout(param1, param1->command, param1->command) == 1) {
            return;
        }

        if (BattleController_CheckBattleOver(param0, param1) == 1) {
            return;
        }

        v0 = BattleSystem_ShowMonChecks(param0, param1);

        if (v0) {
            BattleSystem_LoadScript(param1, 1, v0);
            param1->commandNext = param1->command;
            param1->command = 21;
            return;
        }

        if (ov16_022513B0(param0, param1) == 1) {
            return;
        }

        ov16_02250E8C(param0, param1);
    }

    param1->battlerActions[param1->battlerActionOrder[param1->turnOrderCounter]][0] = 39;

    if (param1->selfTurnFlags[param1->attacker].trickRoomActivated) {
        ov16_0225B148(param0, param1);
        BattleSystem_SortMonsBySpeed(param0, param1);
        param1->turnOrderCounter = 0;
    } else {
        param1->turnOrderCounter++;
    }

    BattleContext_Init(param1);

    param1->command = 8;
}

static void ov16_022506A4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;

    if (BattleController_CheckAnyFainted(param1, param1->command, param1->command, 1) == 1) {
        return;
    }

    param1->command = 39;
}

static void ov16_022506C0 (BattleSystem * param0, BattleContext * param1)
{
    if (BattleSystem_ResultMask(param0) & 0x80) {
        param1->command = 43;
    } else if ((BattleSystem_ResultMask(param0) == 0x2) || (BattleSystem_ResultMask(param0) == 0x3)) {
        BattleSystem_LoadScript(param1, 1, (0 + 5));
        param1->command = 21;
        param1->commandNext = 43;
    } else if (BattleSystem_ResultMask(param0) == 0x1) {
        BattleSystem_LoadScript(param1, 1, (0 + 4));
        param1->command = 21;
        param1->commandNext = 43;
    } else if (BattleSystem_ResultMask(param0) == 0x4) {
        param1->command = 21;
        param1->commandNext = 43;
    } else if (BattleSystem_ResultMask(param0) == 0x5) {
        param1->command = 43;
    }

    param1->battleEndFlag = 1;
}

static void ov16_0225074C (BattleSystem * param0, BattleContext * param1)
{
    if (sub_0200F2AC() == 1) {
        param1->command = 43;
    }
}

static void ov16_02250760 (BattleSystem * param0, BattleContext * param1)
{
    Party * v0;
    u32 v1;

    v1 = BattleSystem_BattleType(param0);

    if ((v1 & 0x4) == 0) {
        v0 = ov16_0223DF20(param0, 0);
        sub_020776B0(v0);
        sub_0207782C(v0);
    }

    if (v1 & 0x4) {
        sub_020360DC(22);
    }

    param1->command = 44;
}

static void ov16_02250798 (BattleSystem * param0, BattleContext * param1)
{
    return;
}

static BOOL BattleController_CheckAnySwitches (BattleSystem * param0, BattleContext * param1)
{
    BOOL v0 = 0;
    int v1;
    int v2;
    u32 v3;
    int v4;

    v2 = BattleSystem_MaxBattlers(param0);
    v3 = BattleSystem_BattleType(param0);
    v4 = param1->command;

    for (v1 = 0; v1 < v2; v1++) {
        param1->battlerStatusFlags[v1] &= 0x1 ^ 0xffffffff;

        if (((v3 & 0x2) && ((v3 & (0x8 | 0x10)) == 0)) || ((v3 & 0x10) && ((Battler_Side(param0, v1)) == 0))) {
            if ((param1->battleMons[v1].curHP == 0) && (param1->battleMons[v1 ^ 2].curHP == 0) && (v1 & 2)) {
                continue;
            }

            if (param1->battleMons[v1].curHP == 0) {
                {
                    int v5;
                    int v6;
                    int v7 = 0;
                    int v8 = 0;
                    Party * v9;
                    Pokemon * v10;
                    UnkStruct_ov16_0225BFFC * v11;

                    v9 = ov16_0223DF20(param0, v1);
                    v11 = BattleSystem_BattlerData(param0, v1);

                    for (v5 = 0; v5 < Party_GetCurrentCount(v9); v5++) {
                        v10 = Party_GetPokemonBySlotIndex(v9, v5);

                        if ((Pokemon_GetValue(v10, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v10, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            if (v6 = Pokemon_GetValue(v10, MON_DATA_CURRENT_HP, NULL)) {
                                v8++;

                                if (param1->selectedPartySlot[v1 ^ 2] != v5) {
                                    v7 += v6;
                                }
                            }
                        }
                    }

                    if (v7 == 0) {
                        param1->battlersSwitchingMask |= FlagIndex(v1);
                        param1->selectedPartySlot[v1] = 6;
                    } else {
                        param1->commandNext = v4;
                        param1->command = 21;
                        param1->battlerStatusFlags[v1] |= 0x1;
                    }
                }
            }
        } else {
            if (param1->battleMons[v1].curHP == 0) {
                {
                    int v12;
                    int v13 = 0;
                    Party * v14;
                    Pokemon * v15;
                    UnkStruct_ov16_0225BFFC * v16;

                    v14 = ov16_0223DF20(param0, v1);
                    v16 = BattleSystem_BattlerData(param0, v1);

                    for (v12 = 0; v12 < Party_GetCurrentCount(v14); v12++) {
                        v15 = Party_GetPokemonBySlotIndex(v14, v12);

                        if ((Pokemon_GetValue(v15, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v15, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            v13 += Pokemon_GetValue(v15, MON_DATA_CURRENT_HP, NULL);
                        }
                    }

                    if (v13 == 0) {
                        param1->battlersSwitchingMask |= FlagIndex(v1);
                        param1->selectedPartySlot[v1] = 6;
                    } else {
                        param1->commandNext = v4;
                        param1->command = 21;
                        param1->battlerStatusFlags[v1] |= 0x1;
                    }
                }
            }
        }
    }

    if (param1->command == 21) {
        if (((v3 & (0x4 | 0x2 | 0x80)) == 0) && (ov16_0223EE18(param0) == 0) && (((param1->battlerStatusFlags[0] & 0x1) == 0) || ((param1->battlerStatusFlags[1] & 0x1) == 0)) && (ov16_02255B10(param0, param1, 0))) {
            if (param1->battlerStatusFlags[0] & 0x1) {
                param1->scriptTemp = 0;
            } else {
                param1->scriptTemp = 1;
            }

            BattleSystem_LoadScript(param1, 1, (0 + 231));
        } else {
            BattleSystem_LoadScript(param1, 1, (0 + 10));
        }

        v0 = 1;
    }

    return v0;
}

static BOOL BattleController_CheckBattleOver (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2;
    u8 v3;

    v1 = BattleSystem_MaxBattlers(param0);
    v2 = BattleSystem_BattleType(param0);
    v3 = 0;

    for (v0 = 0; v0 < v1; v0++) {
        if (((v2 == ((0x2 | 0x1) | 0x8 | 0x40)) || (v2 == (0x2 | 0x8 | 0x40))) && (Battler_Side(param0, v0) == 0)) {
            if (BattleSystem_BattlerSlot(param0, v0) == 2) {
                if (param1->battleMons[v0].curHP == 0) {
                    {
                        int v4;
                        int v5 = 0;
                        Party * v6;
                        Pokemon * v7;
                        UnkStruct_ov16_0225BFFC * v8;

                        v6 = ov16_0223DF20(param0, v0);
                        v8 = BattleSystem_BattlerData(param0, v0);

                        for (v4 = 0; v4 < Party_GetCurrentCount(v6); v4++) {
                            v7 = Party_GetPokemonBySlotIndex(v6, v4);

                            if ((Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v7, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                                v5 += Pokemon_GetValue(v7, MON_DATA_CURRENT_HP, NULL);
                            }
                        }

                        if (v5 == 0) {
                            v3 |= 0x2;
                        }
                    }
                }
            }
        } else if ((v2 & 0x8) || ((v2 & 0x10) && (Battler_Side(param0, v0)))) {
            if (param1->battleMons[v0].curHP == 0) {
                {
                    int v9;
                    int v10 = 0;
                    Party * v11;
                    Party * v12;
                    Pokemon * v13;
                    UnkStruct_ov16_0225BFFC * v14;

                    v11 = ov16_0223DF20(param0, v0);
                    v12 = ov16_0223DF20(param0, BattleSystem_Partner(param0, v0));
                    v14 = BattleSystem_BattlerData(param0, v0);

                    for (v9 = 0; v9 < Party_GetCurrentCount(v11); v9++) {
                        v13 = Party_GetPokemonBySlotIndex(v11, v9);

                        if ((Pokemon_GetValue(v13, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v13, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            v10 += Pokemon_GetValue(v13, MON_DATA_CURRENT_HP, NULL);
                        }
                    }

                    for (v9 = 0; v9 < Party_GetCurrentCount(v12); v9++) {
                        v13 = Party_GetPokemonBySlotIndex(v12, v9);

                        if ((Pokemon_GetValue(v13, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v13, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            v10 += Pokemon_GetValue(v13, MON_DATA_CURRENT_HP, NULL);
                        }
                    }

                    if (v10 == 0) {
                        if (ov16_02263AE4(v14) & 0x1) {
                            v3 |= 0x1;
                        } else {
                            v3 |= 0x2;
                        }
                    }
                }
            }
        } else {
            if (param1->battleMons[v0].curHP == 0) {
                {
                    int v15;
                    int v16 = 0;
                    Party * v17;
                    Pokemon * v18;
                    UnkStruct_ov16_0225BFFC * v19;

                    v17 = ov16_0223DF20(param0, v0);
                    v19 = BattleSystem_BattlerData(param0, v0);

                    for (v15 = 0; v15 < Party_GetCurrentCount(v17); v15++) {
                        v18 = Party_GetPokemonBySlotIndex(v17, v15);

                        if ((Pokemon_GetValue(v18, MON_DATA_SPECIES_EGG, NULL) != 0) && (Pokemon_GetValue(v18, MON_DATA_SPECIES_EGG, NULL) != 494)) {
                            v16 += Pokemon_GetValue(v18, MON_DATA_CURRENT_HP, NULL);
                        }
                    }

                    if (v16 == 0) {
                        if (ov16_02263AE4(v19) & 0x1) {
                            v3 |= 0x1;
                        } else {
                            v3 |= 0x2;
                        }
                    }
                }
            }
        }
    }

    if (((v3 == 0x1) && (v2 & 0x1) && ((v2 & 0x4) == 0)) || ((v3 == 0x1) && (v2 & 0x80) && ((v2 & 0x4) == 0))) {
        {
            TrainerData *v20 = ov16_0223E120(param0, 1);

            switch (v20->class) {
                case TRAINER_CLASS_LEADER_ROARK:
                case TRAINER_CLASS_LEADER_GARDENIA:
                case TRAINER_CLASS_LEADER_WAKE:
                case TRAINER_CLASS_LEADER_MAYLENE:
                case TRAINER_CLASS_LEADER_FANTINA:
                case TRAINER_CLASS_LEADER_CANDICE:
                case TRAINER_CLASS_LEADER_BYRON:
                case TRAINER_CLASS_LEADER_VOLKNER:
                    sub_0200549C(SEQ_VICTORY_GYM_LEADER);
                    break;
                case TRAINER_CLASS_TOWER_TYCOON:
                case TRAINER_CLASS_HALL_MATRON:
                case TRAINER_CLASS_FACTORY_HEAD:
                case TRAINER_CLASS_ARCADE_STAR:
                case TRAINER_CLASS_CASTLE_VALET:
                    sub_0200549C(SEQ_VICTORY_FRONTIER_BRAIN);
                    break;
                case TRAINER_CLASS_CHAMPION_CYNTHIA:
                    sub_0200549C(SEQ_VICTORY_CHAMPION);
                    break;
                case TRAINER_CLASS_COMMANDER_MARS:
                case TRAINER_CLASS_COMMANDER_JUPITER:
                case TRAINER_CLASS_COMMANDER_SATURN:
                case TRAINER_CLASS_GALACTIC_GRUNT_MALE:
                case TRAINER_CLASS_GALACTIC_GRUNT_FEMALE:
                    sub_0200549C(SEQ_VICTORY_GALACTIC_GRUNT);
                    break;
                case TRAINER_CLASS_GALACTIC_BOSS:
                    sub_0200549C(SEQ_VICTORY_CYRUS);
                    break;
                case TRAINER_CLASS_ELITE_FOUR_AARON:
                case TRAINER_CLASS_ELITE_FOUR_BERTHA:
                case TRAINER_CLASS_ELITE_FOUR_FLINT:
                case TRAINER_CLASS_ELITE_FOUR_LUCIAN:
                    sub_0200549C(SEQ_VICTORY_ELITE_FOUR);
                    break;
                default:
                    sub_0200549C(SEQ_VICTORY_TRAINER);
                    break;
            }
        }
        ov16_0223F460(param0, 2);
    }

    if (v3) {
        ov16_0223F444(param0, v3);
    }

    return v3 != 0;
}

static BOOL BattleController_CheckRange (BattleSystem *battleSys, BattleContext *battleCtx, u8 battler, u32 battleType, int *range, int moveSlot, u32 *target)
{
    if ((battleCtx->battleMons[battler].moves[moveSlot] == 174) && (BattleSystem_IsGhostCurse(battleCtx, battleCtx->battleMons[battler].moves[moveSlot], battler) == 0)) {
        *range = 0x10;
    } else {
        *range = battleCtx->aiContext.moveTable[battleCtx->battleMons[battler].moves[moveSlot]].range;
    }

    if (battleType & 0x2) {
        if (*range == 0x100) {
            if ((battleCtx->battlersSwitchingMask & FlagIndex(BattleSystem_Partner(battleSys, battler))) == 0) {
                return 1;
            } else {
                return 0;
            }
        } else {
            return 1;
        }
    } else {
        if (*range & (0x1 | 0x10 | 0x40 | 0x200)) {
            *target = battler;
        } else {
            *target = battler ^ 1;
        }

        return 0;
    }
}

static void ov16_02250E8C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;

    v1 = BattleSystem_MaxBattlers(param0);

    for (v0 = 0; v0 < v1; v0++) {
        param1->battleMons[v0].statusVolatile &= (param1->clearVolatileStatus[v0] ^ 0xffffffff);
        param1->clearVolatileStatus[v0] = 0;
    }

    param1->moveHit[param1->attacker] = 0;
    param1->conversion2Move[param1->attacker] = 0;
}

static BOOL BattleController_CheckAnyFainted (BattleContext * param0, int param1, int param2, int param3)
{
    int v0;
    int v1;

    v0 = 0;
    v1 = FlagIndex(param0->monSpeedOrder[v0]) << 24;

    if (param0->battleStatusMask & 0xf000000) {
        while ((param0->battleStatusMask & v1) == 0) {
            v0++;
            v1 = FlagIndex(param0->monSpeedOrder[v0]) << 24;
        }

        param0->battleStatusMask &= (v1 ^ 0xffffffff);
        param0->faintedMon = LowestBit(v1 >> 24);

        if (param3 == 1) {
            BattleSystem_LoadScript(param0, 1, (0 + 6));
        } else {
            BattleSystem_LoadScript(param0, 1, (0 + 83));
        }

        param0->command = 21;
        param0->commandNext = param1;
        param0->battlerActions[param0->faintedMon][0] = 39;

        return 1;
    } else {
        param0->command = param2;
        return 0;
    }
}

static BOOL BattleController_CheckExpPayout (BattleContext * param0, int param1, int param2)
{
    if (param0->battleStatusMask2 & 0xf0000000) {
        {
            int v0;

            v0 = 1 << 28;

            while ((param0->battleStatusMask2 & v0) == 0) {
                v0 = v0 << 1;
            }

            param0->battleStatusMask2 &= (v0 ^ 0xffffffff);
            param0->faintedMon = LowestBit(v0 >> 28);

            BattleSystem_LoadScript(param0, 1, (0 + 276));

            param0->command = 21;
            param0->commandNext = param1;
        }
        return 1;
    } else {
        param0->command = param2;
        return 0;
    }
}

static void ov16_02250FF4 (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u8 v2;

    if (Battler_Ability(param1, param1->attacker) == 96) {
        v1 = 0;
    } else if (param1->moveType) {
        v1 = param1->moveType;
    } else {
        v1 = param1->aiContext.moveTable[param1->moveCur].type;
    }

    v0 = param1->aiContext.moveTable[param1->moveTemp].flags;

    if ((v0 & 0x10) && ((param1->battleStatusMask & 0x100000) == 0) && (param1->defender != 0xff) && (param1->battleStatusMask2 & 0x4)) {
        param1->moveCopied[param1->defender] = param1->moveTemp;
        param1->moveCopiedHit[param1->defender][param1->attacker] = param1->moveTemp;
    }

    if (param1->defender != 0xff) {
        v2 = Battler_HeldItemEffect(param1, param1->defender);

        if ((param1->battleStatusMask & 0x20) || (param1->battleStatusMask2 & 0x4)) {
            if ((v2 != 55) && (v2 != 115) && (v2 != 125)) {
                param1->battleMons[param1->defender].moveEffectsData.choiceLockedMove = 0;
            }
        }

        if ((param1->battleStatusMask & 0x100000) == 0) {
            if (param1->battleStatusMask2 & 0x4) {
                param1->moveHit[param1->defender] = param1->moveCur;
                param1->moveHitBattler[param1->defender] = param1->attacker;
                param1->moveHitType[param1->defender] = v1;
                param1->movePrev = param1->moveTemp;
            } else {
                param1->moveHit[param1->defender] = 0;
                param1->moveHitBattler[param1->defender] = 0xff;
                param1->moveHitType[param1->defender] = 0;
                param1->movePrev = 0;
            }

            if ((param1->battleStatusMask2 & 0x40) && ((param1->moveStatusFlags & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0)) {
                switch (param1->aiContext.moveTable[param1->moveCur].range) {
                case 0x10:
                case 0x20:
                case 0x40:
                case 0x80:
                case 0x100:
                case 0x200:
                    param1->conversion2Move[param1->defender] = 0;
                    param1->conversion2Battler[param1->defender] = 0xff;
                    param1->conversion2Type[param1->defender] = 0;
                    break;
                default:
                    param1->conversion2Move[param1->defender] = param1->moveCur;
                    param1->conversion2Battler[param1->defender] = param1->attacker;
                    param1->conversion2Type[param1->defender] = v1;
                    break;
                }
            } else {
                param1->conversion2Move[param1->defender] = 0;
                param1->conversion2Battler[param1->defender] = 0xff;
                param1->conversion2Type[param1->defender] = 0;
            }
        }
    }
}

static BOOL ov16_022511FC (BattleSystem * param0, BattleContext * param1)
{
    BattleSystem_LoadScript(param1, 1, (0 + 16));

    param1->commandNext = param1->command;
    param1->command = 21;

    return 1;
}

static BOOL ov16_02251218 (BattleSystem * param0, BattleContext * param1)
{
    BOOL v0;

    v0 = 0;

    if (param1->moveStatusFlags) {
        if (param1->multiHitNumHits) {
            if ((param1->faintedMon != 0xff) || (param1->multiHitCounter == 1) || (param1->moveStatusFlags & 0x4000)) {
                v0 = 1;
            }
        } else {
            v0 = 1;
        }
    }

    if (v0 == 1) {
        BattleSystem_LoadScript(param1, 1, (0 + 21));

        param1->commandNext = param1->command;
        param1->command = 21;
    }

    return v0;
}

static BOOL ov16_0225126C (BattleSystem * param0, BattleContext * param1)
{
    BOOL v0;

    v0 = 0;

    if (param1->defender == 0xff) {
        return v0;
    }

    if ((param1->battleMons[param1->defender].statusVolatile & 0x800000) && ((param1->moveStatusFlags & 0x4000) == 0) && (param1->defender != param1->attacker) && (param1->battleMons[param1->defender].curHP) && ((param1->selfTurnFlags[param1->defender].physicalDamageTaken) || (param1->selfTurnFlags[param1->defender].specialDamageTaken))) {
        if (param1->battleMons[param1->defender].statBoosts[0x1] < 12) {
            param1->battleMons[param1->defender].statBoosts[0x1]++;
            BattleSystem_LoadScript(param1, 1, (0 + 245));
            param1->commandNext = param1->command;
            param1->command = 21;
            v0 = 1;
        }
    }

    return v0;
}

static BOOL ov16_022512F8 (BattleSystem * param0, BattleContext * param1)
{
    BOOL v0 = 0;
    int v1;
    int v2;

    v1 = Battler_HeldItemEffect(param1, param1->attacker);
    v2 = Battler_HeldItemPower(param1, param1->attacker, 0);

    if (param1->defender != 0xff) {
        if ((v1 == 56) && ((param1->moveStatusFlags & ((1 | 8 | 64 | 2048 | 4096 | 16384 | 32768 | 65536 | 131072 | 262144 | 524288 | 1048576) | 512 | 0x80000000)) == 0) && ((param1->selfTurnFlags[param1->defender].physicalDamageTaken) || (param1->selfTurnFlags[param1->defender].specialDamageTaken)) && ((BattleSystem_RandNext(param0) % 100) < v2) && (param1->aiContext.moveTable[param1->moveCur].flags & 0x20) && (param1->battleMons[param1->defender].curHP)) {
            param1->sideEffectMon = param1->defender;
            param1->sideEffectType = 2;

            BattleSystem_LoadScript(param1, 1, (0 + 14));

            param1->commandNext = param1->command;
            param1->command = 21;

            v0 = 1;
        }
    }

    return v0;
}

static BOOL ov16_022513B0 (BattleSystem * param0, BattleContext * param1)
{
    BOOL v0 = 0;

    while (param1->vanishedCheckTemp < BattleSystem_MaxBattlers(param0)) {
        if (((param1->battleMons[param1->vanishedCheckTemp].moveEffectsMask & (0x40 | 0x80 | 0x40000 | 0x20000000)) == 0) && (param1->battleMons[param1->vanishedCheckTemp].moveEffectsTemp & (0x40 | 0x80 | 0x40000 | 0x20000000))) {
            param1->battleMons[param1->vanishedCheckTemp].moveEffectsTemp &= ((0x40 ^ 0xffffffff) & (0x80 ^ 0xffffffff) & (0x40000 ^ 0xffffffff) & (0x20000000 ^ 0xffffffff));
            BattleSystem_LoadScript(param1, 1, (0 + 287));

            param1->msgBattlerTemp = param1->vanishedCheckTemp;
            param1->commandNext = param1->command;
            param1->command = 21;

            v0 = 1;
        }

        param1->vanishedCheckTemp++;

        if (v0 == 1) {
            break;
        }
    }

    if (v0 == 0) {
        param1->vanishedCheckTemp = 0;
    }

    return v0;
}

static BOOL ov16_0225143C (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    int v2;
    int v3;
    int v4;

    v0 = 0;
    v2 = BattleSystem_MaxBattlers(param0);
    v3 = Battler_HeldItemEffect(param1, param1->attacker);
    v4 = Battler_HeldItemPower(param1, param1->attacker, 0);

    if (BattleController_CheckAnyFainted(param1, param1->command, param1->command, 1) == 1) {
        return 1;
    }

    do {
        switch (param1->afterMoveHitCheckState) {
        case 0:
            if ((param1->battleMons[param1->attacker].statusVolatile & 0x800000) && (param1->moveCur != 99)) {
                param1->battleMons[param1->attacker].statusVolatile &= (0x800000 ^ 0xffffffff);
            }

            param1->afterMoveHitCheckState++;
            break;
        case 1:
            if (param1->defender != 0xff) {
                if ((v3 == 88) && ((param1->battleStatusMask2 & 0x10) == 0) && (param1->battleStatusMask & 0x2000) && (param1->selfTurnFlags[param1->attacker].shellBellDamageDealt) && (param1->attacker != param1->defender) && (param1->battleMons[param1->attacker].curHP < param1->battleMons[param1->attacker].maxHP) && (param1->battleMons[param1->attacker].curHP)) {
                    param1->hpCalcTemp = BattleSystem_Divide(param1->selfTurnFlags[param1->attacker].shellBellDamageDealt * -1, v4);
                    param1->msgBattlerTemp = param1->attacker;
                    BattleSystem_LoadScript(param1, 1, (0 + 213));
                    param1->commandNext = param1->command;
                    param1->command = 21;
                    v0 = 1;
                }
            }

            param1->afterMoveHitCheckState++;
            break;
        case 2:
            if ((v3 == 98) && (Battler_Ability(param1, param1->attacker) != 98) && ((param1->battleStatusMask2 & 0x10) == 0) && (param1->battleStatusMask & 0x2000) && (param1->aiContext.moveTable[param1->moveCur].class != 2) && (param1->battleMons[param1->attacker].curHP)) {
                param1->hpCalcTemp = BattleSystem_Divide(param1->battleMons[param1->attacker].maxHP * -1, 10);
                param1->msgBattlerTemp = param1->attacker;
                BattleSystem_LoadScript(param1, 1, (0 + 214));
                param1->commandNext = param1->command;
                param1->command = 21;
                v0 = 1;
            }

            param1->afterMoveHitCheckState++;
            break;
        case 3:
            param1->afterMoveHitCheckState = 0;
            param1->afterMoveHitCheckTemp = 0;
            v0 = 2;
            break;
        }
    } while (v0 == 0);

    return v0 == 1;
}

static void BattleController_InitAI (BattleSystem * param0, BattleContext * param1)
{
    int v0;
    int v1;
    u32 v2 = BattleSystem_BattleType(param0);
    u16 v3;

    MI_CpuClear32(&param1->aiContext, sizeof(AIContext));

    if ((v2 & 0x1) && ((v2 & (0x4 | 0x80 | 0x20 | 0x40 | 0x200)) == 0)) {
        for (v1 = 0; v1 < 4; v1++) {
            if (v1 & 1) {
                for (v0 = 0; v0 < 4; v0++) {
                    v3 = ov16_0223F700(param0, v1, v0);

                    if (v3 != 0) {
                        param1->aiContext.trainerItems[v1 >> 1][param1->aiContext.trainerItemCounts[v1 >> 1]] = v3;
                        param1->aiContext.trainerItemCounts[v1 >> 1]++;
                    }
                }
            }
        }
    }

    param1->aiScriptTemp = Unk_ov14_022248A4;
}

static void BattleSystem_RecordCommand (BattleSystem *battleSys, BattleContext *battleCtx)
{
    int v0;
    int v1;
    u8 v2;

    v1 = BattleSystem_MaxBattlers(battleSys);

    for (v0 = 0; v0 < v1; v0++) {
        if (battleCtx->battlerActions[v0][0] != 39) {
            if (battleCtx->recordedCommandFlags[v0] & 0x1) {
                v2 = (battleCtx->battlerActions[v0][0] - 13) + 1;
                ov16_0223F500(battleSys, v0, v2);
            }

            switch (battleCtx->battlerActions[v0][0]) {
            case 13:
                if (battleCtx->recordedCommandFlags[v0] & 0x2) {
                    v2 = battleCtx->battlerActions[v0][2];
                    ov16_0223F500(battleSys, v0, v2);
                }

                if (battleCtx->recordedCommandFlags[v0] & 0x4) {
                    v2 = battleCtx->battlerActions[v0][1] + 1;
                    ov16_0223F500(battleSys, v0, v2);
                }
                break;
            case 14:
                v2 = battleCtx->battlerActions[v0][2] & 0xff;
                ov16_0223F500(battleSys, v0, v2);
                v2 = (battleCtx->battlerActions[v0][2] & 0xff00) >> 16;
                ov16_0223F500(battleSys, v0, v2);
                break;
            case 15:
                v2 = battleCtx->battlerActions[v0][2] + 1;
                ov16_0223F500(battleSys, v0, v2);
                break;
            case 16:
                ov16_0223F500(battleSys, v0, 1);
                break;
            default:
                break;
            }
        }
    }
}
