#include "overlay013/battle_party.h"

#include "constants/moves.h"
#include "constants/pokemon.h"

#include "struct_decls/battle_system.h"

#include "applications/pokemon_summary_screen/main.h"
#include "battle/ov16_0223DF00.h"
#include "overlay013/battle_party.h"
#include "overlay013/battle_party_text.h"
#include "overlay013/ov13_02224500.h"
#include "overlay013/ov13_02225710.h"

#include "bag.h"
#include "bg_window.h"
#include "font.h"
#include "font_special_chars.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "item.h"
#include "message.h"
#include "move_table.h"
#include "narc.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task_manager.h"
#include "system.h"
#include "text.h"
#include "touch_screen.h"
#include "unk_0200679C.h"
#include "unk_0208C098.h"
#include "unk_02094EDC.h"

#include "res/text/bank/battle_party.h"

#define TASK_STATE_INITIALIZE                          0
#define TASK_STATE_PARTY_POKEMON_SCREEN                1
#define TASK_STATE_SELECT_POKEMON_SCREEN               2
#define TASK_STATE_POKEMON_SUMMARY_SCREEN              3
#define TASK_STATE_POKEMON_MOVES_SCREEN                4
#define TASK_STATE_MOVE_SUMMARY_SCREEN                 5
#define TASK_STATE_SETUP_PARTY_POKEMON_SCREEN          6
#define TASK_STATE_SETUP_SELECT_POKEMON_SCREEN         7
#define TASK_STATE_SETUP_POKEMON_SUMMARY_SCREEN        8
#define TASK_STATE_SETUP_POKEMON_MOVES_SCREEN          9
#define TASK_STATE_SETUP_MOVE_SUMMARY_SCREEN           10
#define TASK_STATE_SETUP_LEARN_MOVE_SCREEN             11
#define TASK_STATE_SETUP_CONFIRM_LEARN_MOVE_SCREEN     12
#define TASK_STATE_SETUP_RESTORE_MOVE_PP_SCREEN        13
#define TASK_STATE_REFRESH_POKEMON_DETAILS_SCREENS     14
#define TASK_STATE_DISPLAY_CANT_SWITCH_POKEMON_MESSAGE 15
#define TASK_STATE_CLEAR_ERROR_MESSAGE                 16
#define TASK_STATE_AWAITING_TEXT_FINISH                17
#define TASK_STATE_AWAITING_INPUT                      18
#define TASK_STATE_LEARN_MOVE_SCREEN                   19
#define TASK_STATE_CONFIRM_LEARN_MOVE_SCREEN           20
#define TASK_STATE_RESTORE_MOVE_PP_SCREEN              21
#define TASK_STATE_SCREEN_TRANSITION                   22
#define TASK_STATE_USE_RESTORATION_ITEM                23
#define TASK_STATE_USE_ALL_MOVES_PP_RESTORATION_ITEM   24
#define TASK_STATE_EXIT                                25
#define TASK_STATE_FINISH_TASK                         26

#define NO_SELECTION_PARTY_SLOT MAX_PARTY_SIZE

#define NO_BUTTON_PRESSED     255
#define NO_PARTY_INDEX_CHANGE 255

#define PARTY_NEXT_POKEMON 1
#define PARTY_PREV_POKEMON -1

#define EXP_BAR_NUM_SEGMENTS   8
#define EXP_BAR_SEGMENT_PIXELS 8
#define EXP_BAR_MAX_PIXELS     EXP_BAR_NUM_SEGMENTS *EXP_BAR_SEGMENT_PIXELS

#define CONTEST_EFFECT_PER_APPEAL_PT 10
#define MAX_APPEAL_PTS               6

enum PartyPokemonScreenButton {
    PARTY_POKEMON_SCREEN_BUTTON_POKEMON_1 = 0,
    PARTY_POKEMON_SCREEN_BUTTON_POKEMON_2,
    PARTY_POKEMON_SCREEN_BUTTON_POKEMON_3,
    PARTY_POKEMON_SCREEN_BUTTON_POKEMON_4,
    PARTY_POKEMON_SCREEN_BUTTON_POKEMON_5,
    PARTY_POKEMON_SCREEN_BUTTON_POKEMON_6,
    PARTY_POKEMON_SCREEN_BUTTON_CANCEL,
};

enum SelectPokemonScreenButton {
    SELECT_POKEMON_SCREEN_BUTTON_SHIFT = 0,
    SELECT_POKEMON_SCREEN_BUTTON_SUMMARY,
    SELECT_POKEMON_SCREEN_BUTTON_CHECK_MOVES,
    SELECT_POKEMON_SCREEN_BUTTON_CANCEL,
};

enum PokemonSummaryScreenButton {
    POKEMON_SUMMARY_SCREEN_BUTTON_PREV_POKEMON = 0,
    POKEMON_SUMMARY_SCREEN_BUTTON_NEXT_POKEMON,
    POKEMON_SUMMARY_SCREEN_BUTTON_CHECK_MOVES,
    POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL,
};

enum PokemonMovesScreenButton {
    POKEMON_MOVES_SCREEN_BUTTON_MOVE_1 = 0,
    POKEMON_MOVES_SCREEN_BUTTON_MOVE_2,
    POKEMON_MOVES_SCREEN_BUTTON_MOVE_3,
    POKEMON_MOVES_SCREEN_BUTTON_MOVE_4,
    POKEMON_MOVES_SCREEN_BUTTON_PREV_POKEMON,
    POKEMON_MOVES_SCREEN_BUTTON_NEXT_POKEMON,
    POKEMON_MOVES_SCREEN_BUTTON_SUMMARY,
    POKEMON_MOVES_SCREEN_BUTTON_CANCEL,
};

enum MoveSummaryScreenButton {
    MOVE_SUMMARY_SCREEN_BUTTON_MOVE_1 = 0,
    MOVE_SUMMARY_SCREEN_BUTTON_MOVE_2,
    MOVE_SUMMARY_SCREEN_BUTTON_MOVE_3,
    MOVE_SUMMARY_SCREEN_BUTTON_MOVE_4,
    MOVE_SUMMARY_SCREEN_BUTTON_CANCEL,
};

enum LearnMoveScreenButton {
    LEARN_MOVE_SCREEN_BUTTON_MOVE_1 = 0,
    LEARN_MOVE_SCREEN_BUTTON_MOVE_2,
    LEARN_MOVE_SCREEN_BUTTON_MOVE_3,
    LEARN_MOVE_SCREEN_BUTTON_MOVE_4,
    LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN,
    LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
    LEARN_MOVE_SCREEN_BUTTON_CANCEL,
};

enum ConfirmLearnMoveScreenButton {
    CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM = 0,
    CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS,
    CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL,
};

enum RestoreMovePPScreenButton {
    RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_1 = 0,
    RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_2,
    RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_3,
    RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_4,
    RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL,
};

enum BattlePartyUseRestorationItemState {
    BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_INITIALISING = 0,
    BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_RESTORING_HP,
    BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_RESTORING_PP,
    BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_FINISHING,
    BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_START_RESTORING_HP,
};

enum BattlePartyUseAllMovePPRestorationItemState {
    BATTLE_PARTY_USE_ALL_MOVE_PP_RESTORATION_ITEM_STATE_INTIALISING = 0,
    BATTLE_PARTY_USE_ALL_MOVE_PP_RESTORATION_ITEM_STATE_RESTORING_PP,
    BATTLE_PARTY_USE_ALL_MOVE_PP_RESTORATION_ITEM_STATE_FINISHING,
};

static void BattlePartyTask_Tick(SysTask *task, void *taskParam);
static u8 BattlePartyTask_Initialize(BattleParty *battleParty);
static u8 BattlePartyTask_PartyPokemonScreen(BattleParty *battleParty);
static u8 BattlePartyTask_SelectPokemonScreen(BattleParty *battleParty);
static u8 BattlePartyTask_PokemonSummaryScreen(BattleParty *battleParty);
static u8 BattlePartyTask_DisplayCantSwitchMessage(BattleParty *battleParty);
static u8 BattlePartyTask_ClearErrorMessage(BattleParty *battleParty);
static u8 BattlePartyTask_AwaitingTextFinish(BattleParty *battleParty);
static u8 BattlePartyTask_AwaitingInput(BattleParty *battleParty);
static u8 BattlePartyTask_RefreshPokemonDetailsScreens(BattleParty *battleParty);
static u8 BattlePartyTask_MoveSummaryScreen(BattleParty *battleParty);
static u8 BattlePartyTask_LearnMoveScreen(BattleParty *battleParty);
static u8 BattlePartyTask_ConfirmLearnMoveScreen(BattleParty *battleParty);
static u8 BattlePartyTask_RestoreMovePPScreen(BattleParty *battleParty);
static u8 BattlePartyTask_ScreenTransition(BattleParty *battleParty);
static u8 BattlePartyTask_SetupPartyPokemonScreen(BattleParty *battleParty);
static u8 BattlePartyTask_SetupSelectPokemonScreen(BattleParty *battleParty);
static u8 BattlePartyTask_SetupPokemonMovesScreen(BattleParty *battleParty);
static u8 BattlePartyTask_SetupPokemonSummaryScreen(BattleParty *battleParty);
static u8 BattlePartyTask_SetupMoveSummaryScreen(BattleParty *battleParty);
static u8 BattlePartyTask_SetupLearnMoveScreen(BattleParty *battleParty);
static u8 BattlePartyTask_SetupConfirmLearnMoveScreen(BattleParty *battleParty);
static u8 BattlePartyTask_SetupRestoreMovePPScreen(BattleParty *battleParty);
static u8 BattlePartyTask_UseRestorationItem(BattleParty *battleParty);
static u8 BattlePartyTask_UseAllMovePPRestorationItem(BattleParty *battleParty);
static u8 BattlePartyTask_Exit(BattleParty *battleParty);
static BOOL BattlePartyTask_FinishTask(SysTask *task, BattleParty *battleParty);
static u8 BattlePartyTask_PokemonMovesScreen(BattleParty *battleParty);
static u8 PartyUseItemScreen(BattleParty *battleParty);
static void InitializeBackground(BattleParty *battleParty);
static void CleanupBackground(BgConfig *background);
static void LoadGraphicsData(BattleParty *battleParty);
static void InitializeMessageLoader(BattleParty *battleParty);
static void CleanupMessageLoader(BattleParty *battleParty);
static void InitialisePartyPokemon(BattleParty *battleParty);
static BOOL CheckPartyPokemonScreenButtonPressed(BattleParty *battleParty);
static enum SelectPokemonScreenButton CheckSelectPokemonScreenButtonsPressed(BattleParty *battleParty);
static enum PokemonSummaryScreenButton CheckPokemonSummaryScreenButtonsPressed(BattleParty *battleParty);
static enum MoveSummaryScreenButton CheckMoveSummaryScreenButtonsPressed(BattleParty *battleParty);
static enum PokemonMovesScreenButton CheckPokemonMovesScreenButtonsPressed(BattleParty *battleParty);
static int CheckTouchRectIsPressed(BattleParty *battleParty, const TouchScreenRect *rect);
static void ChangeBattlePartyScreen(BattleParty *battleParty, u8 screen);
static void DrawScreenBackground(BattleParty *battleParty, enum BattlePartyScreen screen);
static BOOL CheckCanSwitchPokemon(BattleParty *battleParty);
static u8 UpdateSelectedPartyIndex(BattleParty *battleParty, s32 selectedPartyIndex, s32 indexChange);
static void DrawXPBar(BattleParty *battleParty, u8 screen);
static void DrawXPBarSegment(BattleParty *battleParty, u16 fillVal, u16 x, u16 y);
static void DrawMoveContestStats(BattleParty *battleParty, u8 screen);
static BOOL CheckSelectedMoveIsHM(BattleParty *battleParty);
static void ClearMoveStats(BattleParty *battleParty);
static void ClearMoveContestStats(BattleParty *battleParty);
static u8 CheckSelectedPokemonIsEgg(BattleParty *battleParty);
static void UseBagItem(BattleSystem *battleSys, u16 item, u16 category, u32 heapID);

static const TouchScreenRect sPartyPokemonScreenTouchRects[] = {
    [PARTY_POKEMON_SCREEN_BUTTON_POKEMON_1] = { .rect.top = 0, .rect.bottom = 47, .rect.left = 0, .rect.right = 127 },
    [PARTY_POKEMON_SCREEN_BUTTON_POKEMON_2] = { .rect.top = 8, .rect.bottom = 55, .rect.left = 128, .rect.right = 255 },
    [PARTY_POKEMON_SCREEN_BUTTON_POKEMON_3] = { .rect.top = 48, .rect.bottom = 95, .rect.left = 0, .rect.right = 127 },
    [PARTY_POKEMON_SCREEN_BUTTON_POKEMON_4] = { .rect.top = 56, .rect.bottom = 103, .rect.left = 128, .rect.right = 255 },
    [PARTY_POKEMON_SCREEN_BUTTON_POKEMON_5] = { .rect.top = 96, .rect.bottom = 143, .rect.left = 0, .rect.right = 127 },
    [PARTY_POKEMON_SCREEN_BUTTON_POKEMON_6] = { .rect.top = 104, .rect.bottom = 151, .rect.left = 128, .rect.right = 255 },
    [PARTY_POKEMON_SCREEN_BUTTON_CANCEL] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 216, .rect.right = 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sSelectPokemonScreenTouchRects[] = {
    [SELECT_POKEMON_SCREEN_BUTTON_SHIFT] = { .rect.top = 8, .rect.bottom = 143, .rect.left = 8, .rect.right = 247 },
    [SELECT_POKEMON_SCREEN_BUTTON_SUMMARY] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 0, .rect.right = 103 },
    [SELECT_POKEMON_SCREEN_BUTTON_CHECK_MOVES] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 104, .rect.right = 207 },
    [SELECT_POKEMON_SCREEN_BUTTON_CANCEL] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 216, .rect.right = 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sPokemonSummaryScreenTouchRects[] = {
    [POKEMON_SUMMARY_SCREEN_BUTTON_PREV_POKEMON] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 0, .rect.right = 39 },
    [POKEMON_SUMMARY_SCREEN_BUTTON_NEXT_POKEMON] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 40, .rect.right = 79 },
    [POKEMON_SUMMARY_SCREEN_BUTTON_CHECK_MOVES] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 96, .rect.right = 199 },
    [POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 216, .rect.right = 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sPokemonMovesScreenTouchRects[] = {
    [POKEMON_MOVES_SCREEN_BUTTON_MOVE_1] = { .rect.top = 48, .rect.bottom = 95, .rect.left = 0, .rect.right = 127 },
    [POKEMON_MOVES_SCREEN_BUTTON_MOVE_2] = { .rect.top = 48, .rect.bottom = 95, .rect.left = 128, .rect.right = 255 },
    [POKEMON_MOVES_SCREEN_BUTTON_MOVE_3] = { .rect.top = 96, .rect.bottom = 143, .rect.left = 0, .rect.right = 127 },
    [POKEMON_MOVES_SCREEN_BUTTON_MOVE_4] = { .rect.top = 96, .rect.bottom = 143, .rect.left = 128, .rect.right = 255 },
    [POKEMON_MOVES_SCREEN_BUTTON_PREV_POKEMON] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 0, .rect.right = 39 },
    [POKEMON_MOVES_SCREEN_BUTTON_NEXT_POKEMON] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 40, .rect.right = 79 },
    [POKEMON_MOVES_SCREEN_BUTTON_SUMMARY] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 96, .rect.right = 199 },
    [POKEMON_MOVES_SCREEN_BUTTON_CANCEL] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 216, .rect.right = 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sMoveSummaryScreenTouchRects[] = {
    [MOVE_SUMMARY_SCREEN_BUTTON_MOVE_1] = { .rect.top = 152, .rect.bottom = 167, .rect.left = 88, .rect.right = 127 },
    [MOVE_SUMMARY_SCREEN_BUTTON_MOVE_2] = { .rect.top = 152, .rect.bottom = 167, .rect.left = 128, .rect.right = 167 },
    [MOVE_SUMMARY_SCREEN_BUTTON_MOVE_3] = { .rect.top = 168, .rect.bottom = 183, .rect.left = 88, .rect.right = 127 },
    [MOVE_SUMMARY_SCREEN_BUTTON_MOVE_4] = { .rect.top = 168, .rect.bottom = 183, .rect.left = 128, .rect.right = 167 },
    [MOVE_SUMMARY_SCREEN_BUTTON_CANCEL] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 216, .rect.right = 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sLearnMoveScreenTouchRects[] = {
    [LEARN_MOVE_SCREEN_BUTTON_MOVE_1] = { .rect.top = 48, .rect.bottom = 95, .rect.left = 0, .rect.right = 127 },
    [LEARN_MOVE_SCREEN_BUTTON_MOVE_2] = { .rect.top = 48, .rect.bottom = 95, .rect.left = 128, .rect.right = 255 },
    [LEARN_MOVE_SCREEN_BUTTON_MOVE_3] = { .rect.top = 96, .rect.bottom = 143, .rect.left = 0, .rect.right = 127 },
    [LEARN_MOVE_SCREEN_BUTTON_MOVE_4] = { .rect.top = 96, .rect.bottom = 143, .rect.left = 128, .rect.right = 255 },
    [LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN] = { .rect.top = 144, .rect.bottom = 191, .rect.left = 64, .rect.right = 191 },
    [LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS] = { .rect.top = 0, .rect.bottom = 39, .rect.left = 184, .rect.right = 255 },
    [LEARN_MOVE_SCREEN_BUTTON_CANCEL] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 216, .rect.right = 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sConfirmLearnMoveScreenTouchRects[] = {
    [CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 0, .rect.right = 207 },
    [CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS] = { .rect.top = 0, .rect.bottom = 39, .rect.left = 184, .rect.right = 255 },
    [CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 216, .rect.right = 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

static const TouchScreenRect sRestoreMovePPScreenTouchRects[] = {
    [RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_1] = { .rect.top = 48, .rect.bottom = 95, .rect.left = 0, .rect.right = 127 },
    [RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_2] = { .rect.top = 48, .rect.bottom = 95, .rect.left = 128, .rect.right = 255 },
    [RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_3] = { .rect.top = 96, .rect.bottom = 143, .rect.left = 0, .rect.right = 127 },
    [RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_4] = { .rect.top = 96, .rect.bottom = 143, .rect.left = 128, .rect.right = 255 },
    [RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL] = { .rect.top = 152, .rect.bottom = 191, .rect.left = 216, .rect.right = 255 },
    { TOUCHSCREEN_TABLE_TERMINATOR, 0, 0, 0 }
};

void BattlePartyTask_Start(BattlePartyContext *context)
{
    BattleParty *battleParty;

    if (context->selectedPartyIndex > 5) {
        context->selectedPartyIndex = 0;
    }

    battleParty = SysTask_GetParam(SysTask_StartAndAllocateParam(BattlePartyTask_Tick, sizeof(BattleParty), 0, context->heapID));
    memset(battleParty, 0, sizeof(BattleParty));

    battleParty->context = context;
    battleParty->background = BattleSystem_BGL(context->battleSystem);
    battleParty->palette = BattleSystem_PaletteSys(context->battleSystem);
    battleParty->currentState = TASK_STATE_INITIALIZE;
    battleParty->partySlotLearningMove = context->selectedPartyIndex;
    battleParty->hasVisitedContestHall = ov16_0223F1F8(context->battleSystem);
    battleParty->battlerSlot = BattleSystem_BattlerSlot(context->battleSystem, context->battler);
}

static void BattlePartyTask_Tick(SysTask *task, void *taskParam)
{
    BattleParty *battleParty = (BattleParty *)taskParam;

    switch (battleParty->currentState) {
    case TASK_STATE_INITIALIZE:
        battleParty->currentState = BattlePartyTask_Initialize(battleParty);
        break;
    case TASK_STATE_PARTY_POKEMON_SCREEN:
        battleParty->currentState = BattlePartyTask_PartyPokemonScreen(battleParty);
        break;
    case TASK_STATE_SELECT_POKEMON_SCREEN:
        battleParty->currentState = BattlePartyTask_SelectPokemonScreen(battleParty);
        break;
    case TASK_STATE_POKEMON_SUMMARY_SCREEN:
        battleParty->currentState = BattlePartyTask_PokemonSummaryScreen(battleParty);
        break;
    case TASK_STATE_POKEMON_MOVES_SCREEN:
        battleParty->currentState = BattlePartyTask_PokemonMovesScreen(battleParty);
        break;
    case TASK_STATE_MOVE_SUMMARY_SCREEN:
        battleParty->currentState = BattlePartyTask_MoveSummaryScreen(battleParty);
        break;
    case TASK_STATE_SETUP_PARTY_POKEMON_SCREEN:
        battleParty->currentState = BattlePartyTask_SetupPartyPokemonScreen(battleParty);
        break;
    case TASK_STATE_SETUP_SELECT_POKEMON_SCREEN:
        battleParty->currentState = BattlePartyTask_SetupSelectPokemonScreen(battleParty);
        break;
    case TASK_STATE_SETUP_POKEMON_SUMMARY_SCREEN:
        battleParty->currentState = BattlePartyTask_SetupPokemonSummaryScreen(battleParty);
        break;
    case TASK_STATE_SETUP_POKEMON_MOVES_SCREEN:
        battleParty->currentState = BattlePartyTask_SetupPokemonMovesScreen(battleParty);
        break;
    case TASK_STATE_SETUP_MOVE_SUMMARY_SCREEN:
        battleParty->currentState = BattlePartyTask_SetupMoveSummaryScreen(battleParty);
        break;
    case TASK_STATE_SETUP_LEARN_MOVE_SCREEN:
        battleParty->currentState = BattlePartyTask_SetupLearnMoveScreen(battleParty);
        break;
    case TASK_STATE_SETUP_CONFIRM_LEARN_MOVE_SCREEN:
        battleParty->currentState = BattlePartyTask_SetupConfirmLearnMoveScreen(battleParty);
        break;
    case TASK_STATE_SETUP_RESTORE_MOVE_PP_SCREEN:
        battleParty->currentState = BattlePartyTask_SetupRestoreMovePPScreen(battleParty);
        break;
    case TASK_STATE_REFRESH_POKEMON_DETAILS_SCREENS:
        battleParty->currentState = BattlePartyTask_RefreshPokemonDetailsScreens(battleParty);
        break;
    case TASK_STATE_DISPLAY_CANT_SWITCH_POKEMON_MESSAGE:
        battleParty->currentState = BattlePartyTask_DisplayCantSwitchMessage(battleParty);
        break;
    case TASK_STATE_CLEAR_ERROR_MESSAGE:
        battleParty->currentState = BattlePartyTask_ClearErrorMessage(battleParty);
        break;
    case TASK_STATE_AWAITING_TEXT_FINISH:
        battleParty->currentState = BattlePartyTask_AwaitingTextFinish(battleParty);
        break;
    case TASK_STATE_AWAITING_INPUT:
        battleParty->currentState = BattlePartyTask_AwaitingInput(battleParty);
        break;
    case TASK_STATE_LEARN_MOVE_SCREEN:
        battleParty->currentState = BattlePartyTask_LearnMoveScreen(battleParty);
        break;
    case TASK_STATE_CONFIRM_LEARN_MOVE_SCREEN:
        battleParty->currentState = BattlePartyTask_ConfirmLearnMoveScreen(battleParty);
        break;
    case TASK_STATE_RESTORE_MOVE_PP_SCREEN:
        battleParty->currentState = BattlePartyTask_RestoreMovePPScreen(battleParty);
        break;
    case TASK_STATE_SCREEN_TRANSITION:
        battleParty->currentState = BattlePartyTask_ScreenTransition(battleParty);
        break;
    case TASK_STATE_USE_RESTORATION_ITEM:
        battleParty->currentState = BattlePartyTask_UseRestorationItem(battleParty);
        break;
    case TASK_STATE_USE_ALL_MOVES_PP_RESTORATION_ITEM:
        battleParty->currentState = BattlePartyTask_UseAllMovePPRestorationItem(battleParty);
        break;
    case TASK_STATE_EXIT:
        battleParty->currentState = BattlePartyTask_Exit(battleParty);
        break;

    case TASK_STATE_FINISH_TASK:
        if (BattlePartyTask_FinishTask(task, battleParty) == TRUE) {
            return;
        }
    }

    ov13_0222537C(battleParty);
    SpriteSystem_DrawSprites(battleParty->spriteMan);
    ov13_0222601C(battleParty);
}

static u8 BattlePartyTask_Initialize(BattleParty *battleParty)
{
    u8 nextState;

    G2S_BlendNone();

    if (battleParty->context->battlePartyMode == BATTLE_PARTY_MODE_LEARN_MOVE) {
        battleParty->currentScreen = BATTLE_PARTY_SCREEN_LEARN_MOVE;
        nextState = TASK_STATE_LEARN_MOVE_SCREEN;
    } else {
        battleParty->currentScreen = BATTLE_PARTY_SCREEN_PARTY_POKEMON;
        nextState = TASK_STATE_PARTY_POKEMON_SCREEN;
    }

    battleParty->cursor = MakeBattleSubMenuCursor(battleParty->context->heapID);

    InitialisePartyPokemon(battleParty);
    InitializeBackground(battleParty);
    LoadGraphicsData(battleParty);
    InitializeMessageLoader(battleParty);

    Font_InitManager(FONT_SUBSCREEN, battleParty->context->heapID);

    DrawScreenBackground(battleParty, battleParty->currentScreen);
    ov13_022260EC(battleParty, battleParty->currentScreen);
    ov13_02226444(battleParty, battleParty->currentScreen);
    ov13_02224500(battleParty);
    ov13_02224B7C(battleParty, battleParty->currentScreen);
    BattlePartyText_InitializeWindows(battleParty);
    BattlePartyText_ChangeScreen(battleParty, battleParty->currentScreen);

    if (battleParty->context->isCursorEnabled != FALSE) {
        SetBattleSubMenuCursorVisibility(battleParty->cursor, TRUE);
    }

    if (battleParty->currentScreen == BATTLE_PARTY_SCREEN_PARTY_POKEMON && BattlePartyTask_CheckIfSwitchingWithPartnersPokemon(battleParty, 0) == TRUE) {
        battleParty->context->selectedPartyIndex = 1;
    }

    ov13_0222563C(battleParty, battleParty->currentScreen);
    DrawXPBar(battleParty, battleParty->currentScreen);

    PaletteData_StartFade(battleParty->palette, PLTTBUF_SUB_BG_F | PLTTBUF_SUB_OBJ_F, 0xffff, -8, 16, 0, 0);

    return nextState;
}

static u8 BattlePartyTask_PartyPokemonScreen(BattleParty *battleParty)
{
    if (PaletteData_GetSelectedBuffersMask(battleParty->palette) != 0) {
        return TASK_STATE_PARTY_POKEMON_SCREEN;
    }

    if (CheckPartyPokemonScreenButtonPressed(battleParty) == TRUE) {
        if (battleParty->context->selectedPartyIndex == NO_SELECTION_PARTY_SLOT) {
            if (battleParty->context->battlePartyMode != BATTLE_PARTY_MODE_SELECT_POKEMON_NO_CANCEL) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                ov13_02225FCC(battleParty, NO_SELECTION_PARTY_SLOT);
                return TASK_STATE_EXIT;
            }
        } else {
            Sound_PlayEffect(SEQ_SE_DP_DECIDE);
            ov13_02225FCC(battleParty, battleParty->context->selectedPartyIndex);

            if (battleParty->context->battlePartyMode == BATTLE_PARTY_MODE_USE_ITEM) {
                return PartyUseItemScreen(battleParty);
            } else {
                battleParty->queuedState = TASK_STATE_SETUP_SELECT_POKEMON_SCREEN;
            }

            return TASK_STATE_SCREEN_TRANSITION;
        }
    }

    return TASK_STATE_PARTY_POKEMON_SCREEN;
}

static u8 PartyUseItemScreen(BattleParty *battleParty)
{
    BattlePartyContext *context = battleParty->context;

    if (context->selectedPartyIndex == 0 && context->embargoRemainingTurns[0] != 0 || context->selectedPartyIndex == 1 && context->embargoRemainingTurns[1] != 0) {
        BattlePartyText_PrintEmbargoPreventingItemUse(battleParty);
        BattlePartyText_DisplayErrorMessage(battleParty);
        battleParty->context->selectedPartyIndex = NO_SELECTION_PARTY_SLOT;
        battleParty->queuedState = TASK_STATE_EXIT;
        return TASK_STATE_AWAITING_TEXT_FINISH;
    }

    if (Item_LoadParam(context->selectedBattleBagItem, ITEM_PARAM_PP_RESTORE, context->heapID) != FALSE
        && Item_LoadParam(context->selectedBattleBagItem, ITEM_PARAM_PP_RESTORE_ALL, context->heapID) == FALSE
        && battleParty->partyPokemon[context->selectedPartyIndex].isEgg == FALSE) {
        battleParty->queuedState = TASK_STATE_SETUP_RESTORE_MOVE_PP_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    }

    if (BattleSystem_UseBagItem(context->battleSystem, context->battler, context->pokemonPartySlots[context->selectedPartyIndex], 0, context->selectedBattleBagItem) == TRUE) {
        if (Item_LoadParam(context->selectedBattleBagItem, ITEM_PARAM_PP_RESTORE_ALL, context->heapID) != FALSE) {
            battleParty->queuedState = TASK_STATE_SETUP_RESTORE_MOVE_PP_SCREEN;
        } else {
            if (BattlePartyTask_CheckCanPartySlotBeSelected(battleParty, context->selectedPartyIndex) == PARTY_SLOT_SELECTABLE_IN_BATTLE && Item_LoadParam(context->selectedBattleBagItem, ITEM_PARAM_REVIVE, context->heapID) == FALSE) {
                UseBagItem(context->battleSystem, context->selectedBattleBagItem, context->selectedBattleBagPocket, context->heapID);
                battleParty->partyPokemon[context->selectedPartyIndex].pokemon = BattleSystem_PartyPokemon(context->battleSystem, context->battler, context->pokemonPartySlots[context->selectedPartyIndex]);
                context->currentDamage = Pokemon_GetValue(battleParty->partyPokemon[context->selectedPartyIndex].pokemon, MON_DATA_HP, NULL);
                context->currentDamage -= battleParty->partyPokemon[context->selectedPartyIndex].curHP;
                battleParty->queuedState = TASK_STATE_EXIT;
            } else {
                battleParty->queuedState = TASK_STATE_USE_RESTORATION_ITEM;
            }
        }

        battleParty->useItemState = BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_INITIALISING;
        return TASK_STATE_SCREEN_TRANSITION;
    } else {
        MessageLoader_GetStrbuf(battleParty->messageLoader, BattleParty_Text_ItemWontHaveAnyEffect, battleParty->strbuf);
        BattlePartyText_DisplayErrorMessage(battleParty);
        battleParty->context->selectedPartyIndex = NO_SELECTION_PARTY_SLOT;
        battleParty->queuedState = TASK_STATE_EXIT;
        return TASK_STATE_AWAITING_TEXT_FINISH;
    }

    return TASK_STATE_AWAITING_TEXT_FINISH;
}

static u8 BattlePartyTask_SelectPokemonScreen(BattleParty *battleParty)
{
    enum SelectPokemonScreenButton selectPokemonScreenButtonPressed = CheckSelectPokemonScreenButtonsPressed(battleParty);

    switch (selectPokemonScreenButtonPressed) {
    case SELECT_POKEMON_SCREEN_BUTTON_SHIFT:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 7);

        if (CheckCanSwitchPokemon(battleParty) == TRUE) {
            return TASK_STATE_EXIT;
        }

        battleParty->queuedState = TASK_STATE_DISPLAY_CANT_SWITCH_POKEMON_MESSAGE;
        return TASK_STATE_SCREEN_TRANSITION;
    case SELECT_POKEMON_SCREEN_BUTTON_SUMMARY:
        if (CheckSelectedPokemonIsEgg(battleParty) == TRUE) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 8);
        battleParty->queuedState = TASK_STATE_SETUP_POKEMON_SUMMARY_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    case SELECT_POKEMON_SCREEN_BUTTON_CHECK_MOVES:
        if (CheckSelectedPokemonIsEgg(battleParty) == TRUE) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 10);
        battleParty->queuedState = TASK_STATE_SETUP_POKEMON_MOVES_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    case SELECT_POKEMON_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 6);
        battleParty->queuedState = TASK_STATE_SETUP_PARTY_POKEMON_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_SELECT_POKEMON_SCREEN;
}

static u8 BattlePartyTask_PokemonSummaryScreen(BattleParty *battleParty)
{
    enum PokemonSummaryScreenButton pokemonSummaryScreenButtonPressed = CheckPokemonSummaryScreenButtonsPressed(battleParty);

    switch (pokemonSummaryScreenButtonPressed) {
    case POKEMON_SUMMARY_SCREEN_BUTTON_PREV_POKEMON: {
        u8 newPartyIndex = UpdateSelectedPartyIndex(battleParty, battleParty->context->selectedPartyIndex, PARTY_PREV_POKEMON);

        if (newPartyIndex == NO_PARTY_INDEX_CHANGE) {
            break;
        }

        battleParty->context->selectedPartyIndex = newPartyIndex;
    }
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 12);
        battleParty->queuedState = TASK_STATE_REFRESH_POKEMON_DETAILS_SCREENS;
        return TASK_STATE_SCREEN_TRANSITION;
    case POKEMON_SUMMARY_SCREEN_BUTTON_NEXT_POKEMON: {
        u8 newPartyIndex = UpdateSelectedPartyIndex(battleParty, battleParty->context->selectedPartyIndex, PARTY_NEXT_POKEMON);

        if (newPartyIndex == NO_PARTY_INDEX_CHANGE) {
            break;
        }

        battleParty->context->selectedPartyIndex = newPartyIndex;
    }
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 13);
        battleParty->queuedState = TASK_STATE_REFRESH_POKEMON_DETAILS_SCREENS;
        return TASK_STATE_SCREEN_TRANSITION;
    case POKEMON_SUMMARY_SCREEN_BUTTON_CHECK_MOVES:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 11);
        battleParty->queuedState = TASK_STATE_SETUP_POKEMON_MOVES_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    case POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 6);
        battleParty->selectPokemonPreviousScreenButton = SELECT_POKEMON_SCREEN_BUTTON_SUMMARY;
        battleParty->queuedState = TASK_STATE_SETUP_SELECT_POKEMON_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_POKEMON_SUMMARY_SCREEN;
}

static u8 BattlePartyTask_PokemonMovesScreen(BattleParty *battleParty)
{
    enum PokemonMovesScreenButton pokemonMovesScreenButtonPressed = CheckPokemonMovesScreenButtonsPressed(battleParty);

    switch (pokemonMovesScreenButtonPressed) {
    case POKEMON_MOVES_SCREEN_BUTTON_MOVE_1:
    case POKEMON_MOVES_SCREEN_BUTTON_MOVE_2:
    case POKEMON_MOVES_SCREEN_BUTTON_MOVE_3:
    case POKEMON_MOVES_SCREEN_BUTTON_MOVE_4:
        if (battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[pokemonMovesScreenButtonPressed].move == MOVE_NONE) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 14 + pokemonMovesScreenButtonPressed);
        battleParty->context->selectedMoveSlot = pokemonMovesScreenButtonPressed;
        battleParty->queuedState = TASK_STATE_SETUP_MOVE_SUMMARY_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    case POKEMON_MOVES_SCREEN_BUTTON_PREV_POKEMON: {
        u8 newPartyIndex = UpdateSelectedPartyIndex(battleParty, battleParty->context->selectedPartyIndex, PARTY_PREV_POKEMON);

        if (newPartyIndex == NO_PARTY_INDEX_CHANGE) {
            break;
        }

        battleParty->context->selectedPartyIndex = newPartyIndex;
    }
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 12);
        battleParty->queuedState = TASK_STATE_REFRESH_POKEMON_DETAILS_SCREENS;
        return TASK_STATE_SCREEN_TRANSITION;

    case POKEMON_MOVES_SCREEN_BUTTON_NEXT_POKEMON: {
        u8 newPartyIndex = UpdateSelectedPartyIndex(battleParty, battleParty->context->selectedPartyIndex, PARTY_NEXT_POKEMON);

        if (newPartyIndex == NO_PARTY_INDEX_CHANGE) {
            break;
        }

        battleParty->context->selectedPartyIndex = newPartyIndex;
    }
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 13);
        battleParty->queuedState = TASK_STATE_REFRESH_POKEMON_DETAILS_SCREENS;
        return TASK_STATE_SCREEN_TRANSITION;
    case POKEMON_MOVES_SCREEN_BUTTON_SUMMARY:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 9);
        battleParty->queuedState = TASK_STATE_SETUP_POKEMON_SUMMARY_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    case POKEMON_MOVES_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 6);
        battleParty->selectPokemonPreviousScreenButton = SELECT_POKEMON_SCREEN_BUTTON_CHECK_MOVES;
        battleParty->queuedState = TASK_STATE_SETUP_SELECT_POKEMON_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_POKEMON_MOVES_SCREEN;
}

static u8 BattlePartyTask_MoveSummaryScreen(BattleParty *battleParty)
{
    enum MoveSummaryScreenButton moveSummaryScreenButtonPressed = CheckMoveSummaryScreenButtonsPressed(battleParty);

    switch (moveSummaryScreenButtonPressed) {
    case MOVE_SUMMARY_SCREEN_BUTTON_MOVE_1:
    case MOVE_SUMMARY_SCREEN_BUTTON_MOVE_2:
    case MOVE_SUMMARY_SCREEN_BUTTON_MOVE_3:
    case MOVE_SUMMARY_SCREEN_BUTTON_MOVE_4:
        if (battleParty->context->selectedMoveSlot != moveSummaryScreenButtonPressed && battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[moveSummaryScreenButtonPressed].move == MOVE_NONE) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        battleParty->context->selectedMoveSlot = moveSummaryScreenButtonPressed;
        return TASK_STATE_SETUP_MOVE_SUMMARY_SCREEN;
    case MOVE_SUMMARY_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 6);
        battleParty->queuedState = TASK_STATE_SETUP_POKEMON_MOVES_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_MOVE_SUMMARY_SCREEN;
}

static u8 BattlePartyTask_LearnMoveScreen(BattleParty *battleParty)
{
    int learnMoveScreenButtonPressed = CheckTouchRectIsPressed(battleParty, sLearnMoveScreenTouchRects);

    if (learnMoveScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        learnMoveScreenButtonPressed = BattleSubMenuCursorTick(battleParty->cursor);

        if (learnMoveScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            learnMoveScreenButtonPressed = LEARN_MOVE_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattlePartyCursor(battleParty);
    }

    switch (learnMoveScreenButtonPressed) {
    case LEARN_MOVE_SCREEN_BUTTON_MOVE_1:
    case LEARN_MOVE_SCREEN_BUTTON_MOVE_2:
    case LEARN_MOVE_SCREEN_BUTTON_MOVE_3:
    case LEARN_MOVE_SCREEN_BUTTON_MOVE_4:
    case LEARN_MOVE_SCREEN_BUTTON_MOVE_TO_LEARN:
        battleParty->context->selectedMoveSlot = (u8)learnMoveScreenButtonPressed;
        battleParty->learnMovePreviousScreenButton = (u8)learnMoveScreenButtonPressed;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 23 + learnMoveScreenButtonPressed);
        battleParty->queuedState = TASK_STATE_SETUP_CONFIRM_LEARN_MOVE_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    case LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS:
        if (battleParty->hasVisitedContestHall == FALSE) {
            break;
        }

        battleParty->displayingContestStats ^= TRUE;
        battleParty->learnMovePreviousScreenButton = (u8)learnMoveScreenButtonPressed;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 18);
        battleParty->queuedState = TASK_STATE_SETUP_LEARN_MOVE_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    case LEARN_MOVE_SCREEN_BUTTON_CANCEL:
        battleParty->context->selectedMoveSlot = MOVE_TO_LEARN_SLOT;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 6);
        battleParty->queuedState = TASK_STATE_EXIT;
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_LEARN_MOVE_SCREEN;
}

static u8 BattlePartyTask_ConfirmLearnMoveScreen(BattleParty *battleParty)
{
    int confirmLearnMovesScreenButtonPressed = CheckTouchRectIsPressed(battleParty, sConfirmLearnMoveScreenTouchRects);

    if (confirmLearnMovesScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        confirmLearnMovesScreenButtonPressed = BattleSubMenuCursorTick(battleParty->cursor);

        if (confirmLearnMovesScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            confirmLearnMovesScreenButtonPressed = CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattlePartyCursor(battleParty);
    }

    switch (confirmLearnMovesScreenButtonPressed) {
    case CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONFIRM:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);

        if (battleParty->displayingContestStats == FALSE) {
            ov13_02225FCC(battleParty, 28);
        } else {
            ov13_02225FCC(battleParty, 29);
        }

        if (CheckSelectedMoveIsHM(battleParty) == TRUE) {
            BattlePartyText_PrintHMMovesCantBeForgottenText(battleParty);

            if (battleParty->displayingContestStats == FALSE) {
                ClearMoveStats(battleParty);
            } else {
                ClearMoveContestStats(battleParty);
            }

            battleParty->queuedState = TASK_STATE_CONFIRM_LEARN_MOVE_SCREEN;
        } else {
            battleParty->queuedState = TASK_STATE_EXIT;
        }

        return TASK_STATE_SCREEN_TRANSITION;
    case CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CONTEST_STATS:
        if (battleParty->hasVisitedContestHall == FALSE) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 18);
        battleParty->displayingContestStats ^= TRUE;
        battleParty->confirmLearnMovePreviousScreenButton = (u8)confirmLearnMovesScreenButtonPressed;
        battleParty->queuedState = TASK_STATE_SETUP_CONFIRM_LEARN_MOVE_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    case CONFIRM_LEARN_MOVE_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 6);
        battleParty->confirmLearnMovePreviousScreenButton = 0;
        battleParty->queuedState = TASK_STATE_SETUP_LEARN_MOVE_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_CONFIRM_LEARN_MOVE_SCREEN;
}

static u8 BattlePartyTask_RestoreMovePPScreen(BattleParty *battleParty)
{
    BattlePartyContext *context = battleParty->context;
    int restoreMovePPScreenButtonPressed = CheckTouchRectIsPressed(battleParty, sRestoreMovePPScreenTouchRects);

    if (restoreMovePPScreenButtonPressed == TOUCHSCREEN_INPUT_NONE) {
        restoreMovePPScreenButtonPressed = BattleSubMenuCursorTick(battleParty->cursor);

        if (restoreMovePPScreenButtonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            restoreMovePPScreenButtonPressed = RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL;
        }
    } else {
        DisableBattlePartyCursor(battleParty);
    }

    switch (restoreMovePPScreenButtonPressed) {
    case RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_1:
    case RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_2:
    case RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_3:
    case RESTORE_MOVE_PP_SCREEN_BUTTON_MOVE_4:
        if (battleParty->partyPokemon[context->selectedPartyIndex].moves[restoreMovePPScreenButtonPressed].move == MOVE_NONE) {
            break;
        }

        battleParty->context->selectedMoveSlot = (u8)restoreMovePPScreenButtonPressed;
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 19 + restoreMovePPScreenButtonPressed);

        if (BattleSystem_UseBagItem(context->battleSystem, context->battler, context->pokemonPartySlots[context->selectedPartyIndex], restoreMovePPScreenButtonPressed, context->selectedBattleBagItem) == TRUE) {
            battleParty->useItemState = BATTLE_PARTY_USE_ALL_MOVE_PP_RESTORATION_ITEM_STATE_INTIALISING;
            battleParty->queuedState = TASK_STATE_USE_RESTORATION_ITEM;
            return TASK_STATE_SCREEN_TRANSITION;
        } else {
            MessageLoader_GetStrbuf(battleParty->messageLoader, BattleParty_Text_ItemWontHaveAnyEffect, battleParty->strbuf);
            BattlePartyText_DisplayErrorMessage(battleParty);
            battleParty->context->selectedPartyIndex = NO_SELECTION_PARTY_SLOT;
            battleParty->queuedState = TASK_STATE_EXIT;
            return TASK_STATE_AWAITING_TEXT_FINISH;
        }
        break;
    case RESTORE_MOVE_PP_SCREEN_BUTTON_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        ov13_02225FCC(battleParty, 6);
        battleParty->queuedState = TASK_STATE_SETUP_PARTY_POKEMON_SCREEN;
        return TASK_STATE_SCREEN_TRANSITION;
    }

    return TASK_STATE_RESTORE_MOVE_PP_SCREEN;
}

static u8 BattlePartyTask_SetupPartyPokemonScreen(BattleParty *battleParty)
{
    ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_PARTY_POKEMON);
    return TASK_STATE_PARTY_POKEMON_SCREEN;
}

static u8 BattlePartyTask_SetupSelectPokemonScreen(BattleParty *battleParty)
{
    ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_SELECT_POKEMON);
    return TASK_STATE_SELECT_POKEMON_SCREEN;
}

static u8 BattlePartyTask_SetupPokemonSummaryScreen(BattleParty *battleParty)
{
    ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_POKEMON_SUMMARY);
    return TASK_STATE_POKEMON_SUMMARY_SCREEN;
}

static u8 BattlePartyTask_SetupPokemonMovesScreen(BattleParty *battleParty)
{
    ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_POKEMON_MOVES);
    return TASK_STATE_POKEMON_MOVES_SCREEN;
}

static u8 BattlePartyTask_SetupMoveSummaryScreen(BattleParty *battleParty)
{
    ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_MOVE_SUMMARY);
    return TASK_STATE_MOVE_SUMMARY_SCREEN;
}

static u8 BattlePartyTask_SetupLearnMoveScreen(BattleParty *battleParty)
{
    if (battleParty->displayingContestStats == FALSE) {
        ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_LEARN_MOVE);
    } else {
        ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS);
    }

    return TASK_STATE_LEARN_MOVE_SCREEN;
}

static u8 BattlePartyTask_SetupConfirmLearnMoveScreen(BattleParty *battleParty)
{
    ov13_022252E8(battleParty);

    if (battleParty->displayingContestStats == FALSE) {
        ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE);
    } else {
        ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS);
    }

    return TASK_STATE_CONFIRM_LEARN_MOVE_SCREEN;
}

static u8 BattlePartyTask_SetupRestoreMovePPScreen(BattleParty *battleParty)
{
    ChangeBattlePartyScreen(battleParty, BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP);

    if (Item_LoadParam(battleParty->context->selectedBattleBagItem, ITEM_PARAM_PP_RESTORE_ALL, battleParty->context->heapID) != FALSE) {
        return TASK_STATE_USE_ALL_MOVES_PP_RESTORATION_ITEM;
    }

    return TASK_STATE_RESTORE_MOVE_PP_SCREEN;
}

static u8 BattlePartyTask_RefreshPokemonDetailsScreens(BattleParty *battleParty)
{
    ov13_02224B7C(battleParty, battleParty->currentScreen);
    BattlePartyText_ChangeScreen(battleParty, battleParty->currentScreen);
    ov13_022260EC(battleParty, battleParty->currentScreen);
    DrawXPBar(battleParty, battleParty->currentScreen);

    if (battleParty->currentScreen == BATTLE_PARTY_SCREEN_POKEMON_SUMMARY) {
        return TASK_STATE_POKEMON_SUMMARY_SCREEN;
    }

    return TASK_STATE_POKEMON_MOVES_SCREEN;
}

static u8 BattlePartyTask_DisplayCantSwitchMessage(BattleParty *battleParty)
{
    BattlePartyText_DisplayErrorMessage(battleParty);
    battleParty->queuedState = TASK_STATE_CLEAR_ERROR_MESSAGE;
    return TASK_STATE_AWAITING_TEXT_FINISH;
}

static u8 BattlePartyTask_ClearErrorMessage(BattleParty *battleParty)
{
    Window_EraseMessageBox(&battleParty->messageBoxWindows[1], FALSE);
    return TASK_STATE_SELECT_POKEMON_SCREEN;
}

static u8 BattlePartyTask_AwaitingTextFinish(BattleParty *battleParty)
{
    if (Text_IsPrinterActive(battleParty->textPrinterID) == FALSE) {
        return TASK_STATE_AWAITING_INPUT;
    }

    return TASK_STATE_AWAITING_TEXT_FINISH;
}

static u8 BattlePartyTask_AwaitingInput(BattleParty *battleParty)
{
    if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B) || TouchScreen_Tapped() == TRUE) {
        return battleParty->queuedState;
    }

    return TASK_STATE_AWAITING_INPUT;
}

static u8 BattlePartyTask_ScreenTransition(BattleParty *battleParty)
{
    if (battleParty->unk_1F9F_7 == 0) {
        return battleParty->queuedState;
    }

    return TASK_STATE_SCREEN_TRANSITION;
}

static u8 BattlePartyTask_UseRestorationItem(BattleParty *battleParty)
{
    BattlePartyContext *context = battleParty->context;

    switch (battleParty->useItemState) {
    case BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_INITIALISING:
        battleParty->partyPokemon[context->selectedPartyIndex].pokemon = BattleSystem_PartyPokemon(context->battleSystem, context->battler, context->pokemonPartySlots[context->selectedPartyIndex]);
        BattlePartyText_PrintUseItemEffect(battleParty);

        if (battleParty->currentScreen == BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP) {
            battleParty->selectedPokemonCurrentMovePPs[0] = (u16)Pokemon_GetValue(battleParty->partyPokemon[context->selectedPartyIndex].pokemon, MON_DATA_MOVE1_PP + context->selectedMoveSlot, NULL);
            battleParty->useItemState = BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_RESTORING_PP;
        } else {
            battleParty->partyPokemon[context->selectedPartyIndex].summaryStatus = PokemonSummaryScreen_StatusIconAnimIdx(battleParty->partyPokemon[context->selectedPartyIndex].pokemon);

            if (battleParty->partyPokemon[context->selectedPartyIndex].summaryStatus == SUMMARY_CONDITION_NONE) {
                ManagedSprite_SetDrawFlag(battleParty->unk_1FB4[13 + context->selectedPartyIndex], FALSE);
                BattlePartyText_PrintPartyPokemonLevel(battleParty, context->selectedPartyIndex);
            }

            battleParty->selectedPokemonCurrentHP = Pokemon_GetValue(battleParty->partyPokemon[context->selectedPartyIndex].pokemon, MON_DATA_HP, NULL);
            battleParty->useItemState = BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_START_RESTORING_HP;
        }

        Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
        break;
    case BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_RESTORING_HP:
        if (battleParty->partyPokemon[context->selectedPartyIndex].curHP != battleParty->selectedPokemonCurrentHP) {
            battleParty->partyPokemon[context->selectedPartyIndex].curHP++;
            BattlePartyText_RenderPartyPokemonStats(battleParty, context->selectedPartyIndex);
            break;
        }

        battleParty->useItemState = BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_FINISHING;
        break;
    case BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_RESTORING_PP:
        if (battleParty->partyPokemon[context->selectedPartyIndex].moves[context->selectedMoveSlot].currentPP != battleParty->selectedPokemonCurrentMovePPs[0]) {
            battleParty->partyPokemon[context->selectedPartyIndex].moves[context->selectedMoveSlot].currentPP++;
            BattlePartyText_PrintSelectedMoveCurrentPP(battleParty, 1 + context->selectedMoveSlot, context->selectedMoveSlot);
            break;
        }

        battleParty->useItemState = BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_FINISHING;
        break;
    case BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_FINISHING:
        UseBagItem(context->battleSystem, context->selectedBattleBagItem, context->selectedBattleBagPocket, context->heapID);
        BattlePartyText_DisplayErrorMessage(battleParty);
        battleParty->queuedState = TASK_STATE_EXIT;
        return TASK_STATE_AWAITING_TEXT_FINISH;
    case BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_START_RESTORING_HP:
        if (battleParty->partyPokemon[context->selectedPartyIndex].curHP != battleParty->selectedPokemonCurrentHP) {
            battleParty->partyPokemon[context->selectedPartyIndex].curHP++;
            BattlePartyText_RenderPartyPokemonStats(battleParty, context->selectedPartyIndex);
            ov13_022264C4(battleParty);
        }

        battleParty->useItemState = BATTLE_PARTY_USE_RESTORATION_ITEM_STATE_RESTORING_HP;
        break;
    }

    return TASK_STATE_USE_RESTORATION_ITEM;
}

static u8 BattlePartyTask_UseAllMovePPRestorationItem(BattleParty *battleParty)
{
    BattlePartyContext *context = battleParty->context;
    u32 i;

    switch (battleParty->useItemState) {
    case BATTLE_PARTY_USE_ALL_MOVE_PP_RESTORATION_ITEM_STATE_INTIALISING:
        battleParty->partyPokemon[context->selectedPartyIndex].pokemon = BattleSystem_PartyPokemon(context->battleSystem, context->battler, context->pokemonPartySlots[context->selectedPartyIndex]);

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (battleParty->partyPokemon[context->selectedPartyIndex].moves[i].move == MOVE_NONE) {
                continue;
            }

            battleParty->selectedPokemonCurrentMovePPs[i] = (u16)Pokemon_GetValue(battleParty->partyPokemon[context->selectedPartyIndex].pokemon, MON_DATA_MOVE1_PP + i, NULL);
        }

        BattlePartyText_PrintUseItemEffect(battleParty);
        Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
        battleParty->useItemState = BATTLE_PARTY_USE_ALL_MOVE_PP_RESTORATION_ITEM_STATE_RESTORING_PP;
        break;
    case BATTLE_PARTY_USE_ALL_MOVE_PP_RESTORATION_ITEM_STATE_RESTORING_PP: {
        u32 restoredMoves = 0;

        for (i = 0; i < LEARNED_MOVES_MAX; i++) {
            if (battleParty->partyPokemon[context->selectedPartyIndex].moves[i].move == MOVE_NONE) {
                restoredMoves++;
                continue;
            }

            if (battleParty->partyPokemon[context->selectedPartyIndex].moves[i].currentPP != battleParty->selectedPokemonCurrentMovePPs[i]) {
                battleParty->partyPokemon[context->selectedPartyIndex].moves[i].currentPP++;
                BattlePartyText_PrintSelectedMoveCurrentPP(battleParty, 1 + i, i);
            } else {
                restoredMoves++;
            }
        }

        if (restoredMoves == LEARNED_MOVES_MAX) {
            battleParty->useItemState = BATTLE_PARTY_USE_ALL_MOVE_PP_RESTORATION_ITEM_STATE_FINISHING;
        }
    } break;
    case BATTLE_PARTY_USE_ALL_MOVE_PP_RESTORATION_ITEM_STATE_FINISHING:
        UseBagItem(context->battleSystem, context->selectedBattleBagItem, context->selectedBattleBagPocket, context->heapID);
        BattlePartyText_DisplayErrorMessage(battleParty);
        battleParty->queuedState = TASK_STATE_EXIT;
        return TASK_STATE_AWAITING_TEXT_FINISH;
    }

    return TASK_STATE_USE_ALL_MOVES_PP_RESTORATION_ITEM;
}

static u8 BattlePartyTask_Exit(BattleParty *battleParty)
{
    PaletteData_StartFade(battleParty->palette, (0x2 | 0x8), 0xffff, -8, 0, 16, 0);
    return TASK_STATE_FINISH_TASK;
}

static BOOL BattlePartyTask_FinishTask(SysTask *task, BattleParty *battleParty)
{
    if (PaletteData_GetSelectedBuffersMask(battleParty->palette) != 0) {
        return FALSE;
    }

    CleanupMessageLoader(battleParty);
    ov13_02224970(battleParty);
    BattlePartyText_ClearWindows(battleParty);
    CleanupBackground(battleParty->background);

    battleParty->context->isCursorEnabled = IsBattleSubMenuCursorVisible(battleParty->cursor);

    DeleteBattleSubMenuCursor(battleParty->cursor);
    Font_Free(FONT_SUBSCREEN);

    battleParty->context->battlePartyExited = TRUE;
    SysTask_FinishAndFreeParam(task);

    return TRUE;
}

static void InitializeBackground(BattleParty *battleParty)
{
    {
        GraphicsModes graphicsMode = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D,
        };

        SetScreenGraphicsModes(&graphicsMode, DS_SCREEN_SUB);
    }

    {
        BgTemplate background = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0000,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE
        };

        Bg_InitFromTemplate(battleParty->background, BG_LAYER_SUB_3, &background, BG_TYPE_STATIC);
    }

    {
        BgTemplate background = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x0800,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_23,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE
        };

        Bg_InitFromTemplate(battleParty->background, BG_LAYER_SUB_2, &background, BG_TYPE_STATIC);
    }

    {
        BgTemplate background = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1000,
            .charBase = GX_BG_CHARBASE_0x10000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE
        };

        Bg_InitFromTemplate(battleParty->background, BG_LAYER_SUB_1, &background, BG_TYPE_STATIC);
        Bg_ClearTilemap(battleParty->background, BG_LAYER_SUB_1);
    }

    {
        BgTemplate background = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .screenSize = BG_SCREEN_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x1800,
            .charBase = GX_BG_CHARBASE_0x18000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE
        };

        Bg_InitFromTemplate(battleParty->background, BG_LAYER_SUB_0, &background, BG_TYPE_STATIC);
        Bg_ClearTilemap(battleParty->background, BG_LAYER_SUB_0);
    }

    Bg_ClearTilesRange(BG_LAYER_SUB_1, PALETTE_SIZE_BYTES, 0, battleParty->context->heapID);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, PALETTE_SIZE_BYTES, 0, battleParty->context->heapID);
    Bg_ScheduleTilemapTransfer(battleParty->background, BG_LAYER_SUB_1);
    Bg_ScheduleTilemapTransfer(battleParty->background, BG_LAYER_SUB_0);
}

static void CleanupBackground(BgConfig *battleParty)
{
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    Bg_FreeTilemapBuffer(battleParty, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(battleParty, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(battleParty, BG_LAYER_SUB_2);
    Bg_FreeTilemapBuffer(battleParty, BG_LAYER_SUB_3);
}

static void LoadGraphicsData(BattleParty *battleParty)
{
    NARC *narc = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, battleParty->context->heapID);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 22, battleParty->background, BG_LAYER_SUB_3, 0, 0, FALSE, battleParty->context->heapID);

    NNSG2dScreenData *screenData;
    void *buffer = NARC_AllocAndReadWholeMember(narc, 20, battleParty->context->heapID);
    NNS_G2dGetUnpackedScreenData(buffer, &screenData);
    ov13_02225710(battleParty, (u16 *)screenData->rawData);
    Heap_Free(buffer);

    buffer = NARC_AllocAndReadWholeMember(narc, 21, battleParty->context->heapID);
    NNS_G2dGetUnpackedScreenData(buffer, &screenData);

    ov13_02225A3C(battleParty, (u16 *)screenData->rawData);
    Heap_Free(buffer);

    PaletteData_LoadBufferFromFileStart(battleParty->palette, NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, 23, battleParty->context->heapID, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES * 16, 0);
    NARC_dtor(narc);

    u16 *swappedPaletteData = PaletteData_GetUnfadedBuffer(battleParty->palette, PLTTBUF_SUB_BG);
    memcpy(battleParty->unk_1F5C, &swappedPaletteData[192], PALETTE_SIZE_BYTES * 2);

    PaletteData_LoadBufferFromFileStart(battleParty->palette, NARC_INDEX_GRAPHIC__PL_FONT, 6, battleParty->context->heapID, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, 208);
    PaletteData_LoadBufferFromFileStart(battleParty->palette, NARC_INDEX_GRAPHIC__PL_FONT, 7, battleParty->context->heapID, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, 240);

    int optionsFrame = ov16_0223EDE0(battleParty->context->battleSystem);

    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxTilesNARCMember(optionsFrame), battleParty->background, BG_LAYER_SUB_0, 1, 0, FALSE, battleParty->context->heapID);
    PaletteData_LoadBufferFromFileStart(battleParty->palette, NARC_INDEX_GRAPHIC__PL_WINFRAME, GetMessageBoxPaletteNARCMember(optionsFrame), battleParty->context->heapID, PLTTBUF_SUB_BG, PALETTE_SIZE_BYTES, 224);

    u16 *rawPaletteData = PaletteData_GetUnfadedBuffer(battleParty->palette, PLTTBUF_SUB_BG);
    u16 *paletteData = Heap_Alloc(battleParty->context->heapID, PALETTE_SIZE_BYTES);

    memcpy(paletteData, &rawPaletteData[208], PALETTE_SIZE_BYTES);
    memcpy(&paletteData[7], &rawPaletteData[154], 4);
    memcpy(&paletteData[3], &rawPaletteData[156], 4);

    PaletteData_LoadBuffer(battleParty->palette, paletteData, PLTTBUF_SUB_BG, 208, PALETTE_SIZE_BYTES);
    Heap_Free(paletteData);
}

static void InitializeMessageLoader(BattleParty *battleParty)
{
    battleParty->messageLoader = MessageLoader_Init(MSG_LOADER_PRELOAD_ENTIRE_BANK, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_PARTY, battleParty->context->heapID);
    battleParty->unk_1FA0 = FontSpecialChars_Init(15, 14, 0, battleParty->context->heapID);
    battleParty->stringTemplate = StringTemplate_Default(battleParty->context->heapID);
    battleParty->strbuf = Strbuf_Init(512, battleParty->context->heapID);
}

static void CleanupMessageLoader(BattleParty *battleParty)
{
    MessageLoader_Free(battleParty->messageLoader);
    FontSpecialChars_Free(battleParty->unk_1FA0);
    StringTemplate_Free(battleParty->stringTemplate);
    Strbuf_Free(battleParty->strbuf);
}

static void InitialisePartyPokemon(BattleParty *battleParty)
{
    u16 i, l;

    for (i = 0; i < Party_GetCurrentCount(battleParty->context->party); i++) {
        battleParty->partyPokemon[i].pokemon = Party_GetPokemonBySlotIndex(battleParty->context->party, i);
        battleParty->partyPokemon[i].species = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_SPECIES, NULL);

        if (battleParty->partyPokemon[i].species == SPECIES_NONE) {
            continue;
        }

        battleParty->partyPokemon[i].attack = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_ATK, NULL);
        battleParty->partyPokemon[i].defence = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_DEF, NULL);
        battleParty->partyPokemon[i].speed = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_SPEED, NULL);
        battleParty->partyPokemon[i].spAtk = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_SP_ATK, NULL);
        battleParty->partyPokemon[i].spDef = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_SP_DEF, NULL);
        battleParty->partyPokemon[i].curHP = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_HP, NULL);
        battleParty->partyPokemon[i].maxHP = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_MAX_HP, NULL);
        battleParty->partyPokemon[i].type_1 = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_TYPE_1, NULL);
        battleParty->partyPokemon[i].type_2 = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_TYPE_2, NULL);
        battleParty->partyPokemon[i].level = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_LEVEL, NULL);

        if (Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_NO_PRINT_GENDER, NULL) == TRUE) {
            battleParty->partyPokemon[i].displayNidoranGender = FALSE;
        } else {
            battleParty->partyPokemon[i].displayNidoranGender = TRUE;
        }

        battleParty->partyPokemon[i].gender = Pokemon_GetGender(battleParty->partyPokemon[i].pokemon);
        battleParty->partyPokemon[i].summaryStatus = PokemonSummaryScreen_StatusIconAnimIdx(battleParty->partyPokemon[i].pokemon);
        battleParty->partyPokemon[i].isEgg = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_IS_EGG, NULL);
        battleParty->partyPokemon[i].ability = (u16)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_ABILITY, NULL);
        battleParty->partyPokemon[i].heldItem = (u16)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_HELD_ITEM, NULL);
        battleParty->partyPokemon[i].exp = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_EXPERIENCE, NULL);
        battleParty->partyPokemon[i].currentLevelBaseExp = Pokemon_GetSpeciesBaseExpAt(battleParty->partyPokemon[i].species, battleParty->partyPokemon[i].level);

        if (battleParty->partyPokemon[i].level == MAX_POKEMON_LEVEL) {
            battleParty->partyPokemon[i].nextLevelExp = battleParty->partyPokemon[i].currentLevelBaseExp;
        } else {
            battleParty->partyPokemon[i].nextLevelExp = Pokemon_GetSpeciesBaseExpAt(battleParty->partyPokemon[i].species, battleParty->partyPokemon[i].level + 1);
        }

        battleParty->partyPokemon[i].cool = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_COOL, NULL);
        battleParty->partyPokemon[i].beauty = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_BEAUTY, NULL);
        battleParty->partyPokemon[i].cute = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_CUTE, NULL);
        battleParty->partyPokemon[i].smart = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_SMART, NULL);
        battleParty->partyPokemon[i].tough = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_TOUGH, NULL);
        battleParty->partyPokemon[i].mail = (u16)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_BALL_CAPSULE_ID, NULL);
        battleParty->partyPokemon[i].form = (u8)Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_FORM, NULL);

        for (l = 0; l < LEARNED_MOVES_MAX; l++) {
            BattlePartyPokemonMove *move = &battleParty->partyPokemon[i].moves[l];

            move->move = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_MOVE1 + l, NULL);

            if (move->move == MOVE_NONE) {
                continue;
            }

            move->currentPP = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_MOVE1_PP + l, NULL);
            move->maxPP = Pokemon_GetValue(battleParty->partyPokemon[i].pokemon, MON_DATA_MOVE1_PP_UPS + l, NULL);
            move->maxPP = MoveTable_CalcMaxPP(move->move, move->maxPP);
            move->type = MoveTable_LoadParam(move->move, MOVEATTRIBUTE_TYPE);
            move->class = MoveTable_LoadParam(move->move, MOVEATTRIBUTE_CLASS);
            move->accuracy = MoveTable_LoadParam(move->move, MOVEATTRIBUTE_ACCURACY);
            move->power = MoveTable_LoadParam(move->move, MOVEATTRIBUTE_POWER);
        }
    }
}

static BOOL CheckPartyPokemonScreenButtonPressed(BattleParty *battleParty)
{
    enum PartyPokemonScreenButton buttonPressed = CheckTouchRectIsPressed(battleParty, sPartyPokemonScreenTouchRects);

    if (buttonPressed == TOUCHSCREEN_INPUT_NONE) {
        buttonPressed = BattleSubMenuCursorTick(battleParty->cursor);

        if (buttonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            buttonPressed = PARTY_POKEMON_SCREEN_BUTTON_CANCEL;
        } else if (buttonPressed == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return FALSE;
        }

        if (buttonPressed == PARTY_POKEMON_SCREEN_BUTTON_CANCEL || BattlePartyTask_CheckCanPartySlotBeSelected(battleParty, buttonPressed) != FALSE) {
            battleParty->context->selectedPartyIndex = (u8)buttonPressed;
            return TRUE;
        }
    } else {
        if (buttonPressed == PARTY_POKEMON_SCREEN_BUTTON_CANCEL || BattlePartyTask_CheckCanPartySlotBeSelected(battleParty, buttonPressed) != FALSE) {
            battleParty->context->selectedPartyIndex = (u8)buttonPressed;

            DisableBattlePartyCursor(battleParty);
            return TRUE;
        }
    }

    return FALSE;
}

static enum SelectPokemonScreenButton CheckSelectPokemonScreenButtonsPressed(BattleParty *battleParty)
{
    int buttonPressed = CheckTouchRectIsPressed(battleParty, sSelectPokemonScreenTouchRects);

    if (buttonPressed == TOUCHSCREEN_INPUT_NONE) {
        buttonPressed = BattleSubMenuCursorTick(battleParty->cursor);

        if (buttonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            buttonPressed = SELECT_POKEMON_SCREEN_BUTTON_CANCEL;
        } else if (buttonPressed == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return NO_BUTTON_PRESSED;
        }
    } else {
        DisableBattlePartyCursor(battleParty);
    }

    return (u8)buttonPressed;
}

static enum PokemonSummaryScreenButton CheckPokemonSummaryScreenButtonsPressed(BattleParty *battleParty)
{
    int buttonPressed = CheckTouchRectIsPressed(battleParty, sPokemonSummaryScreenTouchRects);

    if (buttonPressed == TOUCHSCREEN_INPUT_NONE) {
        buttonPressed = BattleSubMenuCursorTick(battleParty->cursor);

        if (buttonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            buttonPressed = POKEMON_SUMMARY_SCREEN_BUTTON_CANCEL;
        } else if (buttonPressed == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return NO_BUTTON_PRESSED;
        }
    } else {
        DisableBattlePartyCursor(battleParty);
    }

    return (u8)buttonPressed;
}

static enum PokemonMovesScreenButton CheckPokemonMovesScreenButtonsPressed(BattleParty *battleParty)
{
    int buttonPressed = CheckTouchRectIsPressed(battleParty, sPokemonMovesScreenTouchRects);

    if (buttonPressed == TOUCHSCREEN_INPUT_NONE) {
        buttonPressed = BattleSubMenuCursorTick(battleParty->cursor);

        if (buttonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            buttonPressed = POKEMON_MOVES_SCREEN_BUTTON_CANCEL;
        } else if (buttonPressed == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return NO_BUTTON_PRESSED;
        }
    } else {
        DisableBattlePartyCursor(battleParty);
    }

    return (u8)buttonPressed;
}

static enum MoveSummaryScreenButton CheckMoveSummaryScreenButtonsPressed(BattleParty *battleParty)
{
    int buttonPressed = CheckTouchRectIsPressed(battleParty, sMoveSummaryScreenTouchRects);

    if (buttonPressed == TOUCHSCREEN_INPUT_NONE) {
        buttonPressed = BattleSubMenuCursorTick(battleParty->cursor);

        if (buttonPressed == BATTLE_SUB_MENU_CURSOR_BACK_INDEX) {
            buttonPressed = MOVE_SUMMARY_SCREEN_BUTTON_CANCEL;
        } else if (buttonPressed == BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX) {
            return NO_BUTTON_PRESSED;
        }
    } else {
        DisableBattlePartyCursor(battleParty);
    }

    return (u8)buttonPressed;
}

static int CheckTouchRectIsPressed(BattleParty *battleParty, const TouchScreenRect *rect)
{
    return TouchScreen_CheckRectanglePressed(rect);
}

u8 BattlePartyTask_CheckCanPartySlotBeSelected(BattleParty *battleParty, s32 partySlot)
{
    if (battleParty->partyPokemon[partySlot].species == SPECIES_NONE) {
        return FALSE;
    }

    if (partySlot == 0 || (BattlePartyTask_CheckIfPartnerBattle(battleParty) || BattlePartyTask_CheckIf2V2Battle(battleParty)) && partySlot == 1) {
        return PARTY_SLOT_SELECTABLE_IN_BATTLE;
    }

    return PARTY_SLOT_SELECTABLE_NOT_IN_BATTLE;
}

static u8 UpdateSelectedPartyIndex(BattleParty *battleParty, s32 selectedPartyIndex, s32 indexChange)
{
    s32 prevPartyIndex = selectedPartyIndex;

    if (BattlePartyTask_CheckIf2V2Battle(battleParty) == TRUE) {
        u8 partyIndexes2v2[] = { 0, 2, 4, 1, 3, 5 };

        for (selectedPartyIndex = 0; selectedPartyIndex < MAX_PARTY_SIZE; selectedPartyIndex++) {
            if (prevPartyIndex == partyIndexes2v2[selectedPartyIndex]) {
                break;
            }
        }

        while (TRUE) {
            selectedPartyIndex += indexChange;

            if (selectedPartyIndex < 0) {
                selectedPartyIndex = 5;
            } else if (selectedPartyIndex >= MAX_PARTY_SIZE) {
                selectedPartyIndex = 0;
            }

            if (prevPartyIndex == partyIndexes2v2[selectedPartyIndex]) {
                break;
            }

            if (BattlePartyTask_CheckCanPartySlotBeSelected(battleParty, partyIndexes2v2[selectedPartyIndex]) != FALSE) {
                if (battleParty->partyPokemon[partyIndexes2v2[selectedPartyIndex]].isEgg == FALSE) {
                    return partyIndexes2v2[selectedPartyIndex];
                }
            }
        }
    } else {
        while (TRUE) {
            selectedPartyIndex += indexChange;

            if (selectedPartyIndex < 0) {
                selectedPartyIndex = 5;
            } else if (selectedPartyIndex >= MAX_PARTY_SIZE) {
                selectedPartyIndex = 0;
            }

            if (prevPartyIndex == selectedPartyIndex) {
                break;
            }

            if (BattlePartyTask_CheckCanPartySlotBeSelected(battleParty, selectedPartyIndex) != FALSE) {
                if (battleParty->partyPokemon[selectedPartyIndex].isEgg == FALSE) {
                    return (u8)selectedPartyIndex;
                }
            }
        }
    }

    return NO_PARTY_INDEX_CHANGE;
}

static void DrawXPBar(BattleParty *battleParty, u8 screen)
{
    BattlePartyPokemon *pokemon;
    u32 expFromCurrentToNextLevel;
    u32 expTowardsNextLevel;
    u16 fillVal;
    u8 expBarFilledPixels;
    u8 i;

    if (screen != BATTLE_PARTY_SCREEN_POKEMON_SUMMARY) {
        return;
    }

    pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    if (pokemon->level < MAX_POKEMON_LEVEL) {
        expFromCurrentToNextLevel = pokemon->nextLevelExp - pokemon->currentLevelBaseExp;
        expTowardsNextLevel = pokemon->exp - pokemon->currentLevelBaseExp;
    } else {
        expFromCurrentToNextLevel = 0;
        expTowardsNextLevel = 0;
    }

    expBarFilledPixels = App_PixelCount(expTowardsNextLevel, expFromCurrentToNextLevel, EXP_BAR_MAX_PIXELS);

    for (i = 0; i < EXP_BAR_NUM_SEGMENTS; i++) {
        if (expBarFilledPixels >= EXP_BAR_SEGMENT_PIXELS) {
            fillVal = 22 + EXP_BAR_SEGMENT_PIXELS;
        } else {
            fillVal = 22 + expBarFilledPixels;
        }

        DrawXPBarSegment(battleParty, fillVal, 10 + i, 8);

        if (expBarFilledPixels < EXP_BAR_SEGMENT_PIXELS) {
            expBarFilledPixels = 0;
        } else {
            expBarFilledPixels -= EXP_BAR_SEGMENT_PIXELS;
        }
    }

    Bg_ScheduleTilemapTransfer(battleParty->background, BG_LAYER_SUB_3);
}

static void DrawXPBarSegment(BattleParty *battleParty, u16 fillVal, u16 x, u16 y)
{
    Bg_FillTilemapRect(battleParty->background, BG_LAYER_SUB_3, fillVal, x, y, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
}

static void DrawAppealPt(BattleParty *battleParty, u16 fillVal, u8 pointSlot)
{
    Bg_FillTilemapRect(battleParty->background, BG_LAYER_SUB_3, fillVal, 2 + pointSlot * 2, 14, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(battleParty->background, BG_LAYER_SUB_3, fillVal + 1, 3 + pointSlot * 2, 14, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(battleParty->background, BG_LAYER_SUB_3, fillVal + TILE_SIZE_4BPP, 2 + pointSlot * 2, 15, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(battleParty->background, BG_LAYER_SUB_3, fillVal + TILE_SIZE_4BPP + 1, 3 + pointSlot * 2, 15, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
}

static void DrawEmptyAppealPts(BattleParty *battleParty)
{
    for (u16 i = 0; i < MAX_APPEAL_PTS; i++) {
        DrawAppealPt(battleParty, 293, i);
    }
}

static void DrawMoveContestStats(BattleParty *battleParty, u8 screen)
{
    u32 contestEffect;
    u16 i;
    u16 selectedMove;
    s8 appealPts;

    if (screen != BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS) {
        return;
    }

    DrawEmptyAppealPts(battleParty);

    if (battleParty->context->selectedMoveSlot < MOVE_TO_LEARN_SLOT) {
        BattlePartyPokemonMove *move = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[battleParty->context->selectedMoveSlot];

        selectedMove = move->move;
    } else {
        selectedMove = battleParty->context->moveToLearn;
    }

    contestEffect = MoveTable_LoadParam(selectedMove, MOVEATTRIBUTE_CONTEST_EFFECT);
    appealPts = sub_02095734(contestEffect) / CONTEST_EFFECT_PER_APPEAL_PT;

    for (i = 0; i < appealPts; i++) {
        DrawAppealPt(battleParty, 320, i);
    }

    Bg_ScheduleTilemapTransfer(battleParty->background, BG_LAYER_SUB_3);
}

static void ChangeBattlePartyScreen(BattleParty *battleParty, u8 screen)
{
    DrawScreenBackground(battleParty, screen);

    Bg_ScheduleFillTilemap(battleParty->background, BG_LAYER_SUB_0, 0);
    Bg_ScheduleFillTilemap(battleParty->background, BG_LAYER_SUB_1, 0);

    ov13_02224B7C(battleParty, screen);
    BattlePartyText_ClearScreenWindows(battleParty);
    BattlePartyText_InitializeScreenWindows(battleParty, screen);
    BattlePartyText_ChangeScreen(battleParty, screen);
    DrawXPBar(battleParty, screen);
    DrawMoveContestStats(battleParty, screen);
    ov13_0222563C(battleParty, screen);
    ov13_022260EC(battleParty, screen);
    ov13_02226444(battleParty, screen);

    battleParty->currentScreen = screen;
}

static const u32 ScreenBackgroundDataMemberIndexes[][2] = {
    [BATTLE_PARTY_SCREEN_PARTY_POKEMON] = { 1, 0 },
    [BATTLE_PARTY_SCREEN_SELECT_POKEMON] = { 19, 18 },
    [BATTLE_PARTY_SCREEN_POKEMON_SUMMARY] = { 5, 4 },
    [BATTLE_PARTY_SCREEN_POKEMON_MOVES] = { 3, 2 },
    [BATTLE_PARTY_SCREEN_MOVE_SUMMARY] = { 7, 6 },
    [BATTLE_PARTY_SCREEN_RESTORE_MOVE_PP] = { 9, 8 },
    [BATTLE_PARTY_SCREEN_LEARN_MOVE] = { 11, 10 },
    [BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE] = { 15, 14 },
    [BATTLE_PARTY_SCREEN_LEARN_MOVE_CONTEST_STATS] = { 13, 12 },
    [BATTLE_PARTY_SCREEN_CONFIRM_LEARN_MOVE_CONTEST_STATS] = { 17, 16 }
};

static void DrawScreenBackground(BattleParty *battleParty, enum BattlePartyScreen screen)
{
    NNSG2dScreenData *screenData;
    void *buffer;

    for (u32 i = 0; i < 2; i++) {
        buffer = NARC_AllocAndReadWholeMemberByIndexPair(NARC_INDEX_BATTLE__GRAPHIC__PL_B_PLIST_GRA, ScreenBackgroundDataMemberIndexes[screen][i], battleParty->context->heapID);
        NNS_G2dGetUnpackedScreenData(buffer, &screenData);
        Bg_LoadToTilemapRect(battleParty->background, BG_LAYER_SUB_2 + i, (u16 *)screenData->rawData, 0, 0, 32, 24);
        Bg_ScheduleTilemapTransfer(battleParty->background, BG_LAYER_SUB_2 + i);
        Heap_Free(buffer);
    }
}

static BOOL CheckCanSwitchPokemon(BattleParty *battleParty)
{
    Strbuf *strbuf;
    BattlePartyPokemon *pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];

    if (BattlePartyTask_CheckIfSwitchingWithPartnersPokemon(battleParty, battleParty->context->selectedPartyIndex) == TRUE) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_CantSwitchWithPartnersPokemon);

        int trainerSlot = BattleSystem_Partner(battleParty->context->battleSystem, battleParty->context->battler);
        StringTemplate_SetTrainerNameBattle(battleParty->stringTemplate, 0, BattleSystem_GetTrainer(battleParty->context->battleSystem, trainerSlot));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
        return FALSE;
    }

    if (pokemon->curHP == 0) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_CantSwitchWithFaintedPokemon);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon->pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
        return FALSE;
    }

    if (battleParty->context->pokemonPartySlots[battleParty->context->selectedPartyIndex] == battleParty->context->playerPokemonPartySlot || battleParty->context->pokemonPartySlots[battleParty->context->selectedPartyIndex] == battleParty->context->partnerPokemonPartySlot) {
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_CantSwitchWithPokemonAlreadyInBattle);
        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon->pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
        return FALSE;
    }

    if (CheckSelectedPokemonIsEgg(battleParty) == TRUE) {
        MessageLoader_GetStrbuf(battleParty->messageLoader, BattleParty_Text_CantSwitchWithEgg, battleParty->strbuf);
        return FALSE;
    }

    if (battleParty->context->doubleBattleFirstSelectedPartySlot != NO_SELECTION_PARTY_SLOT && battleParty->context->pokemonPartySlots[battleParty->context->selectedPartyIndex] == battleParty->context->doubleBattleFirstSelectedPartySlot) {
        pokemon = &battleParty->partyPokemon[battleParty->context->selectedPartyIndex];
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_CantSwitchWithAlreadySelectedPokemon);

        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon->pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
        return FALSE;
    }

    if (battleParty->context->moveToLearn != MOVE_NONE) {
        pokemon = &battleParty->partyPokemon[battleParty->partySlotLearningMove];
        strbuf = MessageLoader_GetNewStrbuf(battleParty->messageLoader, BattleParty_Text_CantSwitchPokemon);

        StringTemplate_SetNickname(battleParty->stringTemplate, 0, Pokemon_GetBoxPokemon(pokemon->pokemon));
        StringTemplate_Format(battleParty->stringTemplate, battleParty->strbuf, strbuf);
        Strbuf_Free(strbuf);
        return FALSE;
    }

    return TRUE;
}

static u8 CheckSelectedPokemonIsEgg(BattleParty *battleParty)
{
    return battleParty->partyPokemon[battleParty->context->selectedPartyIndex].isEgg != FALSE;
}

BOOL BattlePartyTask_CheckIfPartnerBattle(BattleParty *battleParty)
{
    u32 battleType = BattleSystem_BattleType(battleParty->context->battleSystem);

    if (battleType != BATTLE_TYPE_AI_PARTNER
        && battleType != (BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI)
        && battleType & (BATTLE_TYPE_DOUBLES | BATTLE_TYPE_TAG)) {
        return TRUE;
    }

    return FALSE;
}

BOOL BattlePartyTask_CheckIf2V2Battle(BattleParty *battleParty)
{
    u32 battleType = BattleSystem_BattleType(battleParty->context->battleSystem);

    if (battleType != BATTLE_TYPE_AI_PARTNER
        && battleType != (BATTLE_TYPE_TRAINER_DOUBLES | BATTLE_TYPE_2vs2 | BATTLE_TYPE_AI)
        && battleType & BATTLE_TYPE_2vs2) {
        return TRUE;
    }

    return FALSE;
}

BOOL BattlePartyTask_CheckIfSwitchingWithPartnersPokemon(BattleParty *battleParty, u8 partySlot)
{
    if (BattlePartyTask_CheckIf2V2Battle(battleParty) == TRUE) {
        if (battleParty->battlerSlot == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
            if ((partySlot & 1) != 0) {
                return TRUE;
            }
        } else {
            if ((partySlot & 1) == 0) {
                return TRUE;
            }
        }
    }

    return FALSE;
}

static BOOL CheckSelectedMoveIsHM(BattleParty *battleParty)
{
    u16 move;

    if (battleParty->context->selectedMoveSlot == MOVE_TO_LEARN_SLOT) {
        move = battleParty->context->moveToLearn;
    } else {
        move = battleParty->partyPokemon[battleParty->context->selectedPartyIndex].moves[battleParty->context->selectedMoveSlot].move;
    }

    return Item_IsHMMove(move);
}

static void ClearMoveStats(BattleParty *battleParty)
{
    ManagedSprite_SetDrawFlag(battleParty->unk_1FB4[26], FALSE);
    Window_ClearAndScheduleCopyToVRAM(&battleParty->windows[10]);
    Window_ClearAndScheduleCopyToVRAM(&battleParty->windows[6]);
    Window_ClearAndScheduleCopyToVRAM(&battleParty->windows[7]);
}

static void ClearMoveContestStats(BattleParty *battleParty)
{
    DrawEmptyAppealPts(battleParty);
    Bg_ScheduleTilemapTransfer(battleParty->background, BG_LAYER_SUB_3);
}

static void UseBagItem(BattleSystem *battleSys, u16 item, u16 category, u32 heapID)
{
    if (item != ITEM_BLUE_FLUTE && item != ITEM_RED_FLUTE && item != ITEM_YELLOW_FLUTE) {
        Bag_TryRemoveItem(BattleSystem_Bag(battleSys), item, 1, heapID);
    }

    Bag_SetLastBattleItemUsed(BattleSystem_BagCursor(battleSys), item, category);
}
