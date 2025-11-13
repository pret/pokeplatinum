#include "applications/move_reminder.h"

#include <nitro.h>
#include <string.h>

#include "constants/pokemon.h"
#include "generated/pokemon_types.h"

#include "struct_defs/struct_02099F80.h"

#include "applications/pokemon_summary_screen/main.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "move_reminder_data.h"
#include "move_table.h"
#include "narc.h"
#include "overlay_manager.h"
#include "pokemon.h"
#include "render_text.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "type_icon.h"
#include "unk_0208C098.h"
#include "unk_02094EDC.h"
#include "vram_transfer.h"

#include "constdata/const_020F410C.h"
#include "res/text/bank/move_reminder.h"

enum {
    MOVE_REMINDER_WIN_LABEL_BATTLE_MOVES = 0,
    MOVE_REMINDER_WIN_LABEL_CONTEST_MOVES,
    MOVE_REMINDER_WIN_LABEL_CATEGORY,
    MOVE_REMINDER_WIN_LABEL_POWER,
    MOVE_REMINDER_WIN_LABEL_ACCURACY,
    MOVE_REMINDER_WIN_LABEL_PP,
    MOVE_REMINDER_WIN_LABEL_APPEAL_PTS,
    MOVE_REMINDER_WIN_MOVE_POWER,
    MOVE_REMINDER_WIN_MOVE_ACCURACY,
    MOVE_REMINDER_WIN_MOVE_PP,
    MOVE_REMINDER_WIN_MOVE_BATTLE_DESCRIPTION,
    MOVE_REMINDER_WIN_MOVE_CONTEST_DESCRIPTION,
    MOVE_REMINDER_WIN_MESSAGE_BOX,
    MOVE_REMINDER_WIN_MOVES_NAMES,
    MOVE_REMINDER_WIN_YES_NO_MENU,
    MAX_MOVE_REMINDER_WIN
};

enum {
    MOVE_REMINDER_SPRITE_SIDE_ARROW_LEFT = 0,
    MOVE_REMINDER_SPRITE_SIDE_ARROW_RIGHT,
    MOVE_REMINDER_SPRITE_SCROLL_ARROW_UP,
    MOVE_REMINDER_SPRITE_SCROLL_ARROW_DOWN,
    MOVE_REMINDER_SPRITE_MOVE_SELECTOR,
    MOVE_REMINDER_SPRITE_CATEGORY,
    MOVE_REMINDER_SPRITE_TYPE_MOVE_0,
    MOVE_REMINDER_SPRITE_TYPE_MOVE_1,
    MOVE_REMINDER_SPRITE_TYPE_MOVE_2,
    MOVE_REMINDER_SPRITE_TYPE_MOVE_3,
    MOVE_REMINDER_SPRITE_TYPE_MOVE_4,
    MOVE_REMINDER_SPRITE_TYPE_MOVE_5,
    MOVE_REMINDER_SPRITE_TYPE_MOVE_6,
    MAX_MOVE_REMINDER_SPRITE
};

typedef struct MoveReminderController {
    MoveReminderData *data;
    BgConfig *bgConfig;
    Window windows[MAX_MOVE_REMINDER_WIN];
    MessageLoader *messageLoader;
    StringTemplate *stringTemplate;
    Strbuf *strbuf;
    ListMenu *listMenu;
    StringList *stringList;
    Menu *yesNoMenu;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    ManagedSprite *managedSprites[MAX_MOVE_REMINDER_SPRITE];
    PokemonSummary summary;
    ApplicationManager *appMan;
    int nextState;
    u8 numMoves;
    u8 textPrinterID;
    u8 yesNoCallback;
} MoveReminderController;

static void MoveReminder_Setup(MoveReminderController *controller);
static void MoveReminder_Free(MoveReminderController *controller);
static void MoveReminder_VBlankCallback(void *data);
static void MoveReminder_SetGXBanks(void);
static void MoveReminder_InitBgs(BgConfig *bgConfig);
static void MoveReminder_FreeBgs(BgConfig *bgConfig);
static void MoveReminder_LoadBgResources(MoveReminderController *controller, NARC *narc);
static void MoveReminder_InitWindows(MoveReminderController *controller);
static void MoveReminder_FreeWindows(MoveReminderController *controller);
static void MoveReminder_InitText(MoveReminderController *controller);
static void MoveReminder_FreeText(MoveReminderController *controller);
static int MoveReminder_State_Init(MoveReminderController *controller);
static int MoveReminder_State_ProcessMainInput(MoveReminderController *controller);
static int MoveReminder_State_PrintMessageBoxText(MoveReminderController *controller);
static int MoveReminder_State_DrawYesNoMenu(MoveReminderController *controller);
static int MoveReminder_State_ProcessYesNoInput(MoveReminderController *controller);
static int MoveReminder_State_ReplaceOldMove(MoveReminderController *controller);
static int MoveReminder_State_PlayFanfare(MoveReminderController *controller);
static int MoveReminder_State_ConfirmSelection(MoveReminderController *controller);
static int MoveReminder_State_FadeToExit(MoveReminderController *controller);
static int MoveReminder_State_FadeToSummaryScreen(MoveReminderController *controller);
static int MoveReminder_State_RunSummaryScreen(MoveReminderController *controller);
static int MoveReminder_State_ProcessSummaryScreenInput(MoveReminderController *controller);
static void MoveReminder_DrawText(MoveReminderController *controller, u32 windowID, u32 fontID, TextColor color, u32 align);
static void MoveReminder_DrawMovesInfo(MoveReminderController *controller);
static void MoveReminder_DrawLabelText(MoveReminderController *controller);
static void MoveReminder_InitListMenu(MoveReminderController *controller);
static void MoveReminder_FreeListMenu(MoveReminderController *controller);
static void MoveReminder_ListMenuCursorCallback(ListMenu *menu, u32 move, u8 onInit);
static void MoveReminder_ListMenuPrintCallback(ListMenu *menu, u32 move, u8 yOffset);
static void MoveReminder_DrawBattleMovesText(MoveReminderController *controller, u32 move);
static void MoveReminder_DrawContestMovesText(MoveReminderController *controller, u32 move);
static void MoveReminder_DrawAppealPointHearts(MoveReminderController *controller, u16 move);
static void MoveReminder_SetStringTemplate(MoveReminderController *controller, u32 str);
static void MoveReminder_SetMessageBoxText(MoveReminderController *controller, u32 str);
static BOOL MoveReminder_TextPrinterCallback(TextPrinterTemplate *printer, u16 param1);
static u16 MoveReminder_GetSelectedMove(MoveReminderController *controller);
static u16 MoveReminder_GetForgottenMove(MoveReminderController *controller);
static u8 MoveReminder_GetEmptyMoveSlot(MoveReminderController *controller);
static int MoveReminder_ShouldTeachMove_Yes(MoveReminderController *controller);
static int MoveReminder_ShouldTeachMove_No(MoveReminderController *controller);
static int MoveReminder_GiveUpTeachingMon_Yes(MoveReminderController *controller);
static int MoveReminder_GiveUpTeachingMon_No(MoveReminderController *controller);
static int MoveReminder_MoreThanFourMovesDelete_Yes(MoveReminderController *controller);
static int MoveReminder_MoreThanFourMovesDelete_No(MoveReminderController *controller);
static int MoveReminder_StopTryingToTeachMove_Yes(MoveReminderController *controller);
static int MoveReminder_StopTryingToTeachMove_No(MoveReminderController *controller);
static int MoveReminder_ForgetThisMove_Yes(MoveReminderController *controller);
static int MoveReminder_ForgetThisMove_No(MoveReminderController *controller);
static void MoveReminder_InitSprites(MoveReminderController *controller, NARC *narc);
static void MoveReminder_FreeSpriteSystem(MoveReminderController *controller);
static void MoveReminder_UpdateSpritesAnim(MoveReminderController *controller);
static void MoveReminder_DrawTypeIcons(MoveReminderController *controller);
static void MoveReminder_Scroll(MoveReminderController *controller, u16 prevListPos, u16 listPos);
static void MoveReminder_DrawCategoryIcon(MoveReminderController *controller, u16 move);
static void MoveReminder_DrawMoveSelector(MoveReminderController *controller, u8 cursorPos, u8 palette);
static void MoveReminder_DrawSideArrows(MoveReminderController *controller, u8 draw);
static void MoveReminder_DrawArrows(MoveReminderController *controller);
static void MoveReminder_HideScrollArrows(MoveReminderController *controller);

static const WindowTemplate sWindowTemplates[] = {
    [MOVE_REMINDER_WIN_LABEL_BATTLE_MOVES] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 19,
        .tilemapTop = 0,
        .width = 11,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0x28,
    },
    [MOVE_REMINDER_WIN_LABEL_CONTEST_MOVES] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 19,
        .tilemapTop = 0,
        .width = 11,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0x3E,
    },
    [MOVE_REMINDER_WIN_LABEL_CATEGORY] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 0,
        .width = 6,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0x54,
    },
    [MOVE_REMINDER_WIN_LABEL_POWER] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 2,
        .width = 6,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0x60,
    },
    [MOVE_REMINDER_WIN_LABEL_ACCURACY] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 4,
        .width = 8,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0x6C,
    },
    [MOVE_REMINDER_WIN_LABEL_PP] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 6,
        .width = 3,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0x7C,
    },
    [MOVE_REMINDER_WIN_LABEL_APPEAL_PTS] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 2,
        .tilemapTop = 2,
        .width = 12,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0x82,
    },
    [MOVE_REMINDER_WIN_MOVE_POWER] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 13,
        .tilemapTop = 2,
        .width = 3,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0x9A,
    },
    [MOVE_REMINDER_WIN_MOVE_ACCURACY] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 13,
        .tilemapTop = 4,
        .width = 3,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0xA0,
    },
    [MOVE_REMINDER_WIN_MOVE_PP] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 11,
        .tilemapTop = 6,
        .width = 5,
        .height = 2,
        .palette = PLTT_15,
        .baseTile = 0xA6,
    },
    [MOVE_REMINDER_WIN_MOVE_BATTLE_DESCRIPTION] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 8,
        .width = 15,
        .height = 10,
        .palette = PLTT_15,
        .baseTile = 0xB0,
    },
    [MOVE_REMINDER_WIN_MOVE_CONTEST_DESCRIPTION] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 1,
        .tilemapTop = 9,
        .width = 15,
        .height = 6,
        .palette = PLTT_15,
        .baseTile = 0x146,
    },
    [MOVE_REMINDER_WIN_MESSAGE_BOX] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 2,
        .tilemapTop = 19,
        .width = 27,
        .height = 4,
        .palette = PLTT_14,
        .baseTile = 0x1A0,
    },
    [MOVE_REMINDER_WIN_MOVES_NAMES] = {
        .bgLayer = BG_LAYER_MAIN_1,
        .tilemapLeft = 21,
        .tilemapTop = 3,
        .width = 11,
        .height = 14,
        .palette = PLTT_15,
        .baseTile = 0x20C,
    },
    [MOVE_REMINDER_WIN_YES_NO_MENU] = {
        .bgLayer = BG_LAYER_MAIN_0,
        .tilemapLeft = 23,
        .tilemapTop = 13,
        .width = 7,
        .height = 4,
        .palette = PLTT_14,
        .baseTile = 0x2A6,
    }
};

static const ListMenuTemplate sListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = MoveReminder_ListMenuCursorCallback,
    .printCallback = MoveReminder_ListMenuPrintCallback,
    .window = NULL,
    .count = 0,
    .maxDisplay = 7,
    .headerXOffset = 0,
    .textXOffset = 2,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 0,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 16,
    .pagerMode = PAGER_MODE_NONE,
    .fontID = FONT_SYSTEM,
    .cursorType = 1,
    .parent = NULL,
};

enum {
    MOVE_REMINDER_STR_ASK_TEACH_WHICH_TO_MON = 0,
    MOVE_REMINDER_STR_ASK_SHOULD_TEACH_MOVE,
    MOVE_REMINDER_STR_ASK_GIVE_UP_TEACHING_MON,
    MOVE_REMINDER_STR_LEARNED_MOVE_NO_FANFARE,
    MOVE_REMINDER_STR_ASK_MORE_THAN_FOUR_MOVES,
    MOVE_REMINDER_STR_1_2_AND_POOF,
    MOVE_REMINDER_STR_LEARNED_MOVE_FANFARE,
    MOVE_REMINDER_STR_ASK_STOP_TRYING_TO_TEACH_MOVE,
    MOVE_REMINDER_STR_MON_DID_NOT_LEARN_MOVE,
    MOVE_REMINDER_STR_PAYMENT,
    MOVE_REMINDER_STR_ASK_FORGET_THIS_MOVE,
    MAX_MOVE_REMINDER_STR
};

static const u32 sMessageEntryIDs[][MAX_MOVE_REMINDER_STR] = {
    {
        MoveReminder_Text_Reminder_AskTeachWhichToMon,
        MoveReminder_Text_Reminder_AskShouldTeachMove,
        MoveReminder_Text_Reminder_AskGiveUpTeachingMon,
        MoveReminder_Text_Reminder_LearnedMoveNoFanfare,
        MoveReminder_Text_Reminder_AskMoreThanFourMoves,
        MoveReminder_Text_Reminder_12AndPoof,
        MoveReminder_Text_Reminder_LearnedMoveFanfare,
        MoveReminder_Text_Reminder_AskStopTryingToTeachMove,
        MoveReminder_Text_Reminder_MonDidNotLearnMove,
        MoveReminder_Text_Reminder_Payment,
        MoveReminder_Text_Reminder_AskForgetThisMove,
    },
    {
        MoveReminder_Text_Tutor_AskTeachWhichToMon,
        MoveReminder_Text_Tutor_AskShouldTeachMove,
        MoveReminder_Text_Tutor_AskGiveUpTeachingMon,
        MoveReminder_Text_Tutor_LearnedMoveNoFanfare,
        MoveReminder_Text_Tutor_AskMoreThanFourMoves,
        MoveReminder_Text_Tutor_12AndPoof,
        MoveReminder_Text_Tutor_LearnedMoveFanfare,
        MoveReminder_Text_Tutor_AskStopTryingToTeachMove,
        MoveReminder_Text_Tutor_MonDidNotLearnMove,
        MoveReminder_Text_Tutor_Payment,
        MoveReminder_Text_Tutor_AskForgetThisMove,
    },
};

enum {
    MOVE_REMINDER_YES_NO_SHOULD_TEACH_MOVE = 0,
    MOVE_REMINDER_YES_NO_GIVE_UP_TEACHING_MON,
    MOVE_REMINDER_YES_NO_MORE_THAN_FOUR_MOVES_DELETE,
    MOVE_REMINDER_YES_NO_STOP_TRYING_TO_TEACH_MOVE,
    MOVE_REMINDER_YES_NO_FORGET_THIS_MOVE,
};

static const struct {
    int (*yesCallback)(MoveReminderController *);
    int (*noCallback)(MoveReminderController *);
} sYesNoCallbacks[] = {
    { MoveReminder_ShouldTeachMove_Yes, MoveReminder_ShouldTeachMove_No },
    { MoveReminder_GiveUpTeachingMon_Yes, MoveReminder_GiveUpTeachingMon_No },
    { MoveReminder_MoreThanFourMovesDelete_Yes, MoveReminder_MoreThanFourMovesDelete_No },
    { MoveReminder_StopTryingToTeachMove_Yes, MoveReminder_StopTryingToTeachMove_No },
    { MoveReminder_ForgetThisMove_Yes, MoveReminder_ForgetThisMove_No },
};

static const SpriteTemplate sSpriteTemplates[] = {
    [MOVE_REMINDER_SPRITE_SIDE_ARROW_LEFT] = {
        .x = 146,
        .y = 8,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47272, 47272, 47272, 47272, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_SIDE_ARROW_RIGHT] = {
        .x = 246,
        .y = 8,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47272, 47272, 47272, 47272, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_SCROLL_ARROW_UP] = {
        .x = 196,
        .y = 20,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47273, 47272, 47273, 47273, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_SCROLL_ARROW_DOWN] = {
        .x = 196,
        .y = 140,
        .z = 0,
        .animIdx = 1,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47273, 47272, 47273, 47273, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_MOVE_SELECTOR] = {
        .x = 196,
        .y = 32,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47274, 47272, 47274, 47274, 0, 0 },
        .bgPriority = 1,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_CATEGORY] = {
        .x = 116,
        .y = 8,
        .z = 0,
        .animIdx = 0,
        .priority = 0,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47275, 47272, 47275, 47275, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_TYPE_MOVE_0] = {
        .x = 152,
        .y = 32,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47276, 47272, 47275, 47275, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_TYPE_MOVE_1] = {
        .x = 152,
        .y = 48,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47277, 47272, 47275, 47275, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_TYPE_MOVE_2] = {
        .x = 152,
        .y = 64,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47278, 47272, 47275, 47275, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_TYPE_MOVE_3] = {
        .x = 152,
        .y = 80,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47279, 47272, 47275, 47275, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_TYPE_MOVE_4] = {
        .x = 152,
        .y = 96,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47280, 47272, 47275, 47275, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_TYPE_MOVE_5] = {
        .x = 152,
        .y = 112,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47281, 47272, 47275, 47275, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
    [MOVE_REMINDER_SPRITE_TYPE_MOVE_6] = {
        .x = 152,
        .y = 128,
        .z = 0,
        .animIdx = 0,
        .priority = 1,
        .plttIdx = 2,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = { 47282, 47272, 47275, 47275, 0, 0 },
        .bgPriority = 2,
        .vramTransfer = 0,
    },
};

enum {
    ALIGN_LEFT = 0,
    ALIGN_RIGHT,
    ALIGN_CENTER,
};

enum {
    MOVE_REMINDER_STATE_INIT = 0,
    MOVE_REMINDER_STATE_PROCESS_MAIN_INPUT,
    MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT,
    MOVE_REMINDER_STATE_DRAW_YES_NO_MENU,
    MOVE_REMINDER_STATE_PROCESS_YES_NO_INPUT,
    MOVE_REMINDER_STATE_REPLACE_OLD_MOVE,
    MOVE_REMINDER_STATE_PLAY_FANFARE,
    MOVE_REMINDER_STATE_CONFIRM_SELECTION,
    MOVE_REMINDER_STATE_FADE_TO_EXIT,
    MOVE_REMINDER_STATE_EXIT,
    MOVE_REMINDER_STATE_FADE_TO_SUMMARY_SCREEN,
    MOVE_REMINDER_STATE_RUN_SUMMARY_SCREEN,
    MOVE_REMINDER_STATE_PROCESS_SUMMARY_SCREEN_INPUT,
};

BOOL MoveReminder_Init(ApplicationManager *appMan, int *state)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_MOVE_REMINDER, 0x20000);

    MoveReminderController *controller = ApplicationManager_NewData(appMan, sizeof(MoveReminderController), HEAP_ID_MOVE_REMINDER);
    memset(controller, 0, sizeof(MoveReminderController));
    controller->data = ApplicationManager_Args(appMan);

    MoveReminder_Setup(controller);
    MoveReminder_DrawMoveSelector(controller, controller->data->cursorPos, 0);
    MoveReminder_SetStringTemplate(controller, MOVE_REMINDER_STR_ASK_TEACH_WHICH_TO_MON);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_MESSAGE_BOX, FONT_MESSAGE, TEXT_COLOR(1, 2, 15), ALIGN_LEFT);

    controller->nextState = MOVE_REMINDER_STATE_PROCESS_MAIN_INPUT;

    Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MESSAGE_BOX]);
    MoveReminder_DrawArrows(controller);
    SetVBlankCallback(MoveReminder_VBlankCallback, controller);

    return TRUE;
}

BOOL MoveReminder_Main(ApplicationManager *appMan, int *state)
{
    MoveReminderController *controller = ApplicationManager_Data(appMan);

    switch (*state) {
    case MOVE_REMINDER_STATE_INIT:
        *state = MoveReminder_State_Init(controller);
        break;
    case MOVE_REMINDER_STATE_PROCESS_MAIN_INPUT:
        *state = MoveReminder_State_ProcessMainInput(controller);
        break;
    case MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT:
        *state = MoveReminder_State_PrintMessageBoxText(controller);
        break;
    case MOVE_REMINDER_STATE_DRAW_YES_NO_MENU:
        *state = MoveReminder_State_DrawYesNoMenu(controller);
        break;
    case MOVE_REMINDER_STATE_PROCESS_YES_NO_INPUT:
        *state = MoveReminder_State_ProcessYesNoInput(controller);
        break;
    case MOVE_REMINDER_STATE_REPLACE_OLD_MOVE:
        *state = MoveReminder_State_ReplaceOldMove(controller);
        break;
    case MOVE_REMINDER_STATE_PLAY_FANFARE:
        *state = MoveReminder_State_PlayFanfare(controller);
        break;
    case MOVE_REMINDER_STATE_CONFIRM_SELECTION:
        *state = MoveReminder_State_ConfirmSelection(controller);
        break;
    case MOVE_REMINDER_STATE_FADE_TO_EXIT:
        *state = MoveReminder_State_FadeToExit(controller);
        break;
    case MOVE_REMINDER_STATE_EXIT:
        return TRUE;
    case MOVE_REMINDER_STATE_FADE_TO_SUMMARY_SCREEN:
        *state = MoveReminder_State_FadeToSummaryScreen(controller);
        break;
    case MOVE_REMINDER_STATE_RUN_SUMMARY_SCREEN:
        *state = MoveReminder_State_RunSummaryScreen(controller);
        return FALSE;
    case MOVE_REMINDER_STATE_PROCESS_SUMMARY_SCREEN_INPUT:
        *state = MoveReminder_State_ProcessSummaryScreenInput(controller);
        return FALSE;
    }

    MoveReminder_UpdateSpritesAnim(controller);
    SpriteSystem_DrawSprites(controller->spriteManager);

    return FALSE;
}

BOOL MoveReminder_Exit(ApplicationManager *appMan, int *state)
{
    MoveReminder_Free(ApplicationManager_Data(appMan));

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_MOVE_REMINDER);

    return TRUE;
}

static void MoveReminder_Setup(MoveReminderController *controller)
{
    SetVBlankCallback(NULL, NULL);
    DisableHBlank();

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);

    controller->bgConfig = BgConfig_New(HEAP_ID_MOVE_REMINDER);

    App_StartScreenFade(FALSE, HEAP_ID_MOVE_REMINDER);

    NARC *narc = NARC_ctor(NARC_INDEX_GRAPHIC__WAZA_OSHIE_GRA, HEAP_ID_MOVE_REMINDER);

    MoveReminder_SetGXBanks();
    MoveReminder_InitBgs(controller->bgConfig);
    MoveReminder_LoadBgResources(controller, narc);
    MoveReminder_InitSprites(controller, narc);
    MoveReminder_InitText(controller);
    MoveReminder_InitWindows(controller);
    MoveReminder_InitListMenu(controller);
    MoveReminder_DrawMovesInfo(controller);

    SetVBlankCallback(MoveReminder_VBlankCallback, controller);
    NARC_dtor(narc);
}

static void MoveReminder_Free(MoveReminderController *controller)
{
    MoveReminder_FreeListMenu(controller);
    MoveReminder_FreeWindows(controller);
    MoveReminder_FreeBgs(controller->bgConfig);
    MoveReminder_FreeText(controller);
    MoveReminder_FreeSpriteSystem(controller);

    VramTransfer_Free();
    SetVBlankCallback(NULL, NULL);
}

static void MoveReminder_VBlankCallback(void *data)
{
    Bg_RunScheduledUpdates(((MoveReminderController *)data)->bgConfig);
    VramTransfer_Process();
    SpriteSystem_TransferOam();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void MoveReminder_SetGXBanks(void)
{
    UnkStruct_02099F80 banks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_128_B,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_NONE,
        GX_VRAM_TEXPLTT_NONE
    };

    GXLayers_SetBanks(&banks);
}

static void MoveReminder_InitBgs(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D,
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgMain0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf800,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &bgMain0, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate bgMain1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x00000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgMain1, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate bgMain2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x1000,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xe000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgMain2, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_MOVE_REMINDER);
}

static void MoveReminder_FreeBgs(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_OBJ, FALSE);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Heap_FreeExplicit(HEAP_ID_MOVE_REMINDER, bgConfig);
}

static void MoveReminder_LoadBgResources(MoveReminderController *controller, NARC *narc)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 10, controller->bgConfig, BG_LAYER_MAIN_2, 0, 0, 0, HEAP_ID_MOVE_REMINDER);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 11, controller->bgConfig, BG_LAYER_MAIN_2, 0, 0, 0, HEAP_ID_MOVE_REMINDER);
    Graphics_LoadPaletteFromOpenNARC(narc, 12, 0, 0, 0, HEAP_ID_MOVE_REMINDER);
    Font_LoadScreenIndicatorsPalette(0, 14 * 32, HEAP_ID_MOVE_REMINDER);
    LoadStandardWindowGraphics(controller->bgConfig, BG_LAYER_MAIN_0, 1, PLTT_12, 0, HEAP_ID_MOVE_REMINDER);
    LoadMessageBoxGraphics(controller->bgConfig, BG_LAYER_MAIN_0, 1 + 9, PLTT_13, Options_Frame(controller->data->options), HEAP_ID_MOVE_REMINDER);
}

static void MoveReminder_InitWindows(MoveReminderController *controller)
{
    for (u32 i = 0; i < NELEMS(controller->windows); i++) {
        Window_AddFromTemplate(controller->bgConfig, &controller->windows[i], &sWindowTemplates[i]);
        Window_FillTilemap(&controller->windows[i], 0);
    }

    MoveReminder_DrawLabelText(controller);

    Window_FillTilemap(&controller->windows[MOVE_REMINDER_WIN_MESSAGE_BOX], 15);
    Window_DrawMessageBoxWithScrollCursor(&controller->windows[MOVE_REMINDER_WIN_MESSAGE_BOX], 0, 10, PLTT_13);
}

static void MoveReminder_FreeWindows(MoveReminderController *controller)
{
    for (u32 i = 0; i < NELEMS(controller->windows); i++) {
        Window_Remove(&controller->windows[i]);
    }
}

static void MoveReminder_InitText(MoveReminderController *controller)
{
    controller->messageLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_REMINDER, HEAP_ID_MOVE_REMINDER);
    controller->stringTemplate = StringTemplate_Default(HEAP_ID_MOVE_REMINDER);
    controller->strbuf = Strbuf_Init(256, HEAP_ID_MOVE_REMINDER);
}

static void MoveReminder_FreeText(MoveReminderController *controller)
{
    MessageLoader_Free(controller->messageLoader);
    StringTemplate_Free(controller->stringTemplate);
    Strbuf_Free(controller->strbuf);
}

static int MoveReminder_State_Init(MoveReminderController *controller)
{
    if (IsScreenFadeDone() == TRUE) {
        return controller->nextState;
    }

    return MOVE_REMINDER_STATE_INIT;
}

static int MoveReminder_State_ProcessMainInput(MoveReminderController *controller)
{
    if (JOY_NEW(PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        controller->data->showingContest ^= 1;
        MoveReminder_DrawMovesInfo(controller);
        return MOVE_REMINDER_STATE_PROCESS_MAIN_INPUT;
    }

    u16 prevListPos, prevCursorPos;
    ListMenu_GetListAndCursorPos(controller->listMenu, &prevListPos, &prevCursorPos);
    u32 input = ListMenu_ProcessInput(controller->listMenu);
    ListMenu_GetListAndCursorPos(controller->listMenu, &controller->data->listPos, &controller->data->cursorPos);
    MoveReminder_Scroll(controller, prevListPos, controller->data->listPos);

    if (controller->data->cursorPos != prevCursorPos) {
        MoveReminder_DrawMoveSelector(controller, controller->data->cursorPos, 0);
    }

    MoveReminder_DrawArrows(controller);

    switch (input) {
    case LIST_NOTHING_CHOSEN:
        break;

    case LIST_CANCEL:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        MoveReminder_DrawMoveSelector(controller, controller->data->cursorPos, 1);
        MoveReminder_HideScrollArrows(controller);
        MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_ASK_GIVE_UP_TEACHING_MON);
        controller->yesNoCallback = MOVE_REMINDER_YES_NO_GIVE_UP_TEACHING_MON;
        controller->nextState = MOVE_REMINDER_STATE_DRAW_YES_NO_MENU;
        return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;

    default:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        MoveReminder_DrawMoveSelector(controller, controller->data->cursorPos, 1);
        MoveReminder_HideScrollArrows(controller);
        if (MoveReminder_GetEmptyMoveSlot(controller) < LEARNED_MOVES_MAX) {
            MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_ASK_SHOULD_TEACH_MOVE);
            controller->yesNoCallback = MOVE_REMINDER_YES_NO_SHOULD_TEACH_MOVE;
            controller->nextState = MOVE_REMINDER_STATE_DRAW_YES_NO_MENU;
        } else {
            MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_ASK_MORE_THAN_FOUR_MOVES);
            controller->yesNoCallback = MOVE_REMINDER_YES_NO_MORE_THAN_FOUR_MOVES_DELETE;
            controller->nextState = MOVE_REMINDER_STATE_DRAW_YES_NO_MENU;
        }
        return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;
    }

    return MOVE_REMINDER_STATE_PROCESS_MAIN_INPUT;
}

static int MoveReminder_State_PrintMessageBoxText(MoveReminderController *controller)
{
    if (Text_IsPrinterActive(controller->textPrinterID) == FALSE) {
        return controller->nextState;
    }

    return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;
}

static int MoveReminder_State_DrawYesNoMenu(MoveReminderController *controller)
{
    controller->yesNoMenu = Menu_MakeYesNoChoice(controller->bgConfig, &sWindowTemplates[MOVE_REMINDER_WIN_YES_NO_MENU], 1, PLTT_12, HEAP_ID_MOVE_REMINDER);
    return MOVE_REMINDER_STATE_PROCESS_YES_NO_INPUT;
}

static int MoveReminder_State_ProcessYesNoInput(MoveReminderController *controller)
{
    switch (Menu_ProcessInputAndHandleExit(controller->yesNoMenu, HEAP_ID_MOVE_REMINDER)) {
    case 0:
        return sYesNoCallbacks[controller->yesNoCallback].yesCallback(controller);
    case LIST_CANCEL:
        return sYesNoCallbacks[controller->yesNoCallback].noCallback(controller);
    }

    return MOVE_REMINDER_STATE_PROCESS_YES_NO_INPUT;
}

static int MoveReminder_State_ReplaceOldMove(MoveReminderController *controller)
{
    u32 value = MoveReminder_GetSelectedMove(controller);
    Pokemon_SetValue(controller->data->mon, MON_DATA_MOVE1 + controller->data->moveSlot, &value);

    value = 0;
    Pokemon_SetValue(controller->data->mon, MON_DATA_MOVE1_PP_UPS + controller->data->moveSlot, &value);

    value = MoveTable_CalcMaxPP(MoveReminder_GetSelectedMove(controller), 0);
    Pokemon_SetValue(controller->data->mon, MON_DATA_MOVE1_PP + controller->data->moveSlot, &value);

    controller->data->keepOldMove = FALSE;

    return MOVE_REMINDER_STATE_FADE_TO_EXIT;
}

static int MoveReminder_State_PlayFanfare(MoveReminderController *controller)
{
    MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_LEARNED_MOVE_FANFARE);
    controller->nextState = MOVE_REMINDER_STATE_REPLACE_OLD_MOVE;
    return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;
}

static int MoveReminder_State_ConfirmSelection(MoveReminderController *controller)
{
    if (controller->data->moveSlot < LEARNED_MOVES_MAX) {
        MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_ASK_FORGET_THIS_MOVE);
        controller->yesNoCallback = MOVE_REMINDER_YES_NO_FORGET_THIS_MOVE;
    } else {
        MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_ASK_STOP_TRYING_TO_TEACH_MOVE);
        controller->yesNoCallback = MOVE_REMINDER_YES_NO_STOP_TRYING_TO_TEACH_MOVE;
    }

    controller->nextState = MOVE_REMINDER_STATE_DRAW_YES_NO_MENU;

    return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;
}

static int MoveReminder_State_FadeToExit(MoveReminderController *controller)
{
    App_StartScreenFade(TRUE, HEAP_ID_MOVE_REMINDER);
    controller->nextState = MOVE_REMINDER_STATE_EXIT;
    return MOVE_REMINDER_STATE_INIT;
}

static void MoveReminder_DrawMovesInfo(MoveReminderController *controller)
{
    u16 move = MoveReminder_GetSelectedMove(controller);

    if (controller->data->showingContest == 0) {
        Bg_ScheduleScroll(controller->bgConfig, BG_LAYER_MAIN_2, 0, 0);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_CONTEST_MOVES]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_APPEAL_PTS]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_CONTEST_DESCRIPTION]);
        Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_BATTLE_MOVES]);

        if (move != LEVEL_UP_MOVESET_TERMINATOR) {
            MoveReminder_DrawBattleMovesText(controller, move);
        } else {
            MoveReminder_DrawBattleMovesText(controller, LIST_CANCEL);
        }
    } else {
        Bg_ScheduleScroll(controller->bgConfig, BG_LAYER_MAIN_2, 0, 256);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_BATTLE_MOVES]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_CATEGORY]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_POWER]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_ACCURACY]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_PP]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_BATTLE_DESCRIPTION]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_POWER]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_ACCURACY]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_PP]);
        Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_CONTEST_MOVES]);

        if (move != LEVEL_UP_MOVESET_TERMINATOR) {
            MoveReminder_DrawContestMovesText(controller, move);
        } else {
            MoveReminder_DrawContestMovesText(controller, LIST_CANCEL);
        }

        ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_CATEGORY], FALSE);
    }

    MoveReminder_DrawTypeIcons(controller);
}

static void MoveReminder_DrawText(MoveReminderController *controller, u32 windowID, u32 fontID, TextColor color, u32 align)
{
    u8 strWidth, winWidth;
    u8 xOffset;

    switch (align) {
    case ALIGN_LEFT:
        xOffset = 0;
        break;

    case ALIGN_RIGHT:
        strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, controller->strbuf, 0);
        winWidth = Window_GetWidth(&controller->windows[windowID]) * 8;
        xOffset = winWidth - strWidth;
        break;

    case ALIGN_CENTER:
        strWidth = Font_CalcStrbufWidth(FONT_SYSTEM, controller->strbuf, 0);
        winWidth = Window_GetWidth(&controller->windows[windowID]) * 8;
        xOffset = (winWidth - strWidth) / 2;
        break;
    }

    Text_AddPrinterWithParamsAndColor(&controller->windows[windowID], fontID, controller->strbuf, xOffset, 0, TEXT_SPEED_NO_TRANSFER, color, NULL);
}

static void MoveReminder_FormatNumber(MoveReminderController *controller, u32 entryID, u32 num, u8 maxDigits, u8 paddingMode)
{
    Strbuf *strbuf = MessageLoader_GetNewStrbuf(controller->messageLoader, entryID);
    StringTemplate_SetNumber(controller->stringTemplate, 0, num, maxDigits, paddingMode, CHARSET_MODE_EN);
    StringTemplate_Format(controller->stringTemplate, controller->strbuf, strbuf);
    Strbuf_Free(strbuf);
}

static void MoveReminder_DrawLabelText(MoveReminderController *controller)
{
    MessageLoader_GetStrbuf(controller->messageLoader, MoveReminder_Text_BattleMoves, controller->strbuf);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_LABEL_BATTLE_MOVES, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), ALIGN_CENTER);

    MessageLoader_GetStrbuf(controller->messageLoader, MoveReminder_Text_ContestMoves, controller->strbuf);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_LABEL_CONTEST_MOVES, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), ALIGN_CENTER);

    MessageLoader_GetStrbuf(controller->messageLoader, MoveReminder_Text_Category, controller->strbuf);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_LABEL_CATEGORY, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), ALIGN_LEFT);

    MessageLoader_GetStrbuf(controller->messageLoader, MoveReminder_Text_Power, controller->strbuf);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_LABEL_POWER, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), ALIGN_LEFT);

    MessageLoader_GetStrbuf(controller->messageLoader, MoveReminder_Text_Accuracy, controller->strbuf);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_LABEL_ACCURACY, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), ALIGN_LEFT);

    MessageLoader_GetStrbuf(controller->messageLoader, MoveReminder_Text_Pp, controller->strbuf);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_LABEL_PP, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), ALIGN_LEFT);

    MessageLoader_GetStrbuf(controller->messageLoader, MoveReminder_Text_AppealPts, controller->strbuf);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_LABEL_APPEAL_PTS, FONT_SYSTEM, TEXT_COLOR(15, 14, 0), ALIGN_CENTER);
}

static u32 MoveReminder_GetNumMoves(MoveReminderController *controller)
{
    u32 i;

    for (i = 0; i < 256; i++) {
        if (controller->data->moves[i] == LEVEL_UP_MOVESET_TERMINATOR) {
            break;
        }
    }

    return i;
}

static void MoveReminder_InitListMenu(MoveReminderController *controller)
{
    controller->numMoves = (u8)MoveReminder_GetNumMoves(controller) + 1;
    controller->stringList = StringList_New(controller->numMoves, HEAP_ID_MOVE_REMINDER);

    MessageLoader *moveNamesLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_NAMES, HEAP_ID_MOVE_REMINDER);

    for (u32 i = 0; i < controller->numMoves; i++) {
        if (controller->data->moves[i] != LEVEL_UP_MOVESET_TERMINATOR) {
            StringList_AddFromMessageBank(controller->stringList, moveNamesLoader, controller->data->moves[i], controller->data->moves[i]);
        } else {
            StringList_AddFromMessageBank(controller->stringList, controller->messageLoader, MoveReminder_Text_Cancel, LIST_CANCEL);
            break;
        }
    }

    MessageLoader_Free(moveNamesLoader);

    ListMenuTemplate template = sListMenuTemplate;
    template.choices = controller->stringList;
    template.window = &controller->windows[MOVE_REMINDER_WIN_MOVES_NAMES];
    template.count = controller->numMoves;
    template.parent = (void *)controller;

    controller->listMenu = ListMenu_New(&template, controller->data->listPos, controller->data->cursorPos, HEAP_ID_MOVE_REMINDER);

    Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVES_NAMES]);
}

static void MoveReminder_FreeListMenu(MoveReminderController *controller)
{
    ListMenu_Free(controller->listMenu, &controller->data->listPos, &controller->data->cursorPos);
    StringList_Free(controller->stringList);
}

static void MoveReminder_ListMenuCursorCallback(ListMenu *menu, u32 move, u8 onInit)
{
    MoveReminderController *controller = (MoveReminderController *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (onInit != TRUE) {
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
    }

    if (controller->data->showingContest == 0) {
        MoveReminder_DrawBattleMovesText(controller, move);
    } else {
        MoveReminder_DrawContestMovesText(controller, move);
    }
}

static void MoveReminder_ListMenuPrintCallback(ListMenu *menu, u32 index, u8 yOffset)
{
    return;
}

static void MoveReminder_DrawBattleMovesText(MoveReminderController *controller, u32 move)
{
    Window_FillTilemap(&controller->windows[MOVE_REMINDER_WIN_MOVE_BATTLE_DESCRIPTION], 0);
    Window_FillTilemap(&controller->windows[MOVE_REMINDER_WIN_MOVE_POWER], 0);
    Window_FillTilemap(&controller->windows[MOVE_REMINDER_WIN_MOVE_ACCURACY], 0);
    Window_FillTilemap(&controller->windows[MOVE_REMINDER_WIN_MOVE_PP], 0);
    ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_CATEGORY], FALSE);

    if (move != LIST_CANCEL) {
        u32 power = MoveTable_LoadParam(move, MOVEATTRIBUTE_POWER);
        if (power <= 1) {
            MessageLoader_GetStrbuf(controller->messageLoader, MoveReminder_Text_Dashes, controller->strbuf);
        } else {
            MoveReminder_FormatNumber(controller, MoveReminder_Text_PowerValue, power, 3, PADDING_MODE_SPACES);
        }
        MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_MOVE_POWER, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), ALIGN_CENTER);

        u32 accuracy = MoveTable_LoadParam(move, MOVEATTRIBUTE_ACCURACY);
        if (accuracy == 0) {
            MessageLoader_GetStrbuf(controller->messageLoader, MoveReminder_Text_Dashes, controller->strbuf);
        } else {
            MoveReminder_FormatNumber(controller, MoveReminder_Text_AccuracyValue, accuracy, 3, PADDING_MODE_SPACES);
        }
        MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_MOVE_ACCURACY, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), ALIGN_CENTER);

        u32 pp = MoveTable_CalcMaxPP(move, 0);
        MoveReminder_FormatNumber(controller, MoveReminder_Text_PpValue, pp, 2, PADDING_MODE_NONE);
        MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_MOVE_PP, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), ALIGN_CENTER);

        MessageLoader *moveDescLoader = MessageLoader_Init(MESSAGE_LOADER_NARC_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MOVE_DESCRIPTIONS, HEAP_ID_MOVE_REMINDER);
        MessageLoader_GetStrbuf(moveDescLoader, move, controller->strbuf);
        MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_MOVE_BATTLE_DESCRIPTION, FONT_SYSTEM, TEXT_COLOR(1, 2, 0), ALIGN_LEFT);

        MessageLoader_Free(moveDescLoader);
        MoveReminder_DrawCategoryIcon(controller, move);
        ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_CATEGORY], TRUE);
        Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_CATEGORY]);
        Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_POWER]);
        Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_ACCURACY]);
        Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_PP]);
    } else {
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_CATEGORY]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_POWER]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_ACCURACY]);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_PP]);
    }

    Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_BATTLE_DESCRIPTION]);
    Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_POWER]);
    Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_ACCURACY]);
    Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_PP]);
}

static void MoveReminder_DrawContestMovesText(MoveReminderController *controller, u32 move)
{
    Window_FillTilemap(&controller->windows[MOVE_REMINDER_WIN_MOVE_CONTEST_DESCRIPTION], 0);

    if (move != LIST_CANCEL) {
        u32 entryID = sub_0209577C(MoveTable_LoadParam(move, MOVEATTRIBUTE_CONTEST_EFFECT));
        MessageLoader *moveDescLoader = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_EFFECTS, HEAP_ID_MOVE_REMINDER);

        MessageLoader_GetStrbuf(moveDescLoader, entryID, controller->strbuf);
        Text_AddPrinterWithParamsAndColor(&controller->windows[MOVE_REMINDER_WIN_MOVE_CONTEST_DESCRIPTION], FONT_SYSTEM, controller->strbuf, 0, 0, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);
        MessageLoader_Free(moveDescLoader);
        MoveReminder_DrawAppealPointHearts(controller, (u16)move);
        Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_APPEAL_PTS]);
    } else {
        MoveReminder_DrawAppealPointHearts(controller, LEVEL_UP_MOVESET_TERMINATOR);
        Window_ClearAndScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_LABEL_APPEAL_PTS]);
    }

    Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MOVE_CONTEST_DESCRIPTION]);
}

static void MoveReminder_DrawHeart(MoveReminderController *controller, u16 tile, u8 index)
{
    Bg_FillTilemapRect(controller->bgConfig, BG_LAYER_MAIN_2, tile, 34 + index * 2, 5, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(controller->bgConfig, BG_LAYER_MAIN_2, tile + 1, 34 + index * 2 + 1, 5, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(controller->bgConfig, BG_LAYER_MAIN_2, tile + 32, 34 + index * 2, 5 + 1, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
    Bg_FillTilemapRect(controller->bgConfig, BG_LAYER_MAIN_2, tile + 33, 34 + index * 2 + 1, 5 + 1, 1, 1, TILEMAP_FILL_VAL_KEEP_PALETTE);
}

static void MoveReminder_DrawEmptyHearts(MoveReminderController *controller)
{
    for (u16 i = 0; i < 6; i++) {
        MoveReminder_DrawHeart(controller, 18, i);
    }

    Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_MAIN_2);
}

static void MoveReminder_DrawAppealPointHearts(MoveReminderController *controller, u16 move)
{
    MoveReminder_DrawEmptyHearts(controller);

    if (move != LEVEL_UP_MOVESET_TERMINATOR) {
        s8 appealPoints = sub_02095734(MoveTable_LoadParam(move, MOVEATTRIBUTE_CONTEST_EFFECT)) / 10;

        for (u16 i = 0; i < appealPoints; i++) {
            MoveReminder_DrawHeart(controller, 14, i);
        }
    }

    Bg_ScheduleTilemapTransfer(controller->bgConfig, BG_LAYER_MAIN_2);
}

static void MoveReminder_SetStringTemplate(MoveReminderController *controller, u32 str)
{
    switch (str) {
    case MOVE_REMINDER_STR_ASK_TEACH_WHICH_TO_MON:
        StringTemplate_SetNickname(controller->stringTemplate, 0, Pokemon_GetBoxPokemon(controller->data->mon));
        break;

    case MOVE_REMINDER_STR_ASK_SHOULD_TEACH_MOVE:
        StringTemplate_SetMoveName(controller->stringTemplate, 1, MoveReminder_GetSelectedMove(controller));
        break;

    case MOVE_REMINDER_STR_ASK_GIVE_UP_TEACHING_MON:
        StringTemplate_SetNickname(controller->stringTemplate, 0, Pokemon_GetBoxPokemon(controller->data->mon));
        break;

    case MOVE_REMINDER_STR_LEARNED_MOVE_NO_FANFARE:
        StringTemplate_SetNickname(controller->stringTemplate, 0, Pokemon_GetBoxPokemon(controller->data->mon));
        StringTemplate_SetMoveName(controller->stringTemplate, 1, MoveReminder_GetSelectedMove(controller));
        break;

    case MOVE_REMINDER_STR_ASK_MORE_THAN_FOUR_MOVES:
        StringTemplate_SetNickname(controller->stringTemplate, 0, Pokemon_GetBoxPokemon(controller->data->mon));
        StringTemplate_SetMoveName(controller->stringTemplate, 1, MoveReminder_GetSelectedMove(controller));
        break;

    case MOVE_REMINDER_STR_1_2_AND_POOF:
        StringTemplate_SetNickname(controller->stringTemplate, 0, Pokemon_GetBoxPokemon(controller->data->mon));
        StringTemplate_SetMoveName(controller->stringTemplate, 1, MoveReminder_GetForgottenMove(controller));
        break;

    case MOVE_REMINDER_STR_LEARNED_MOVE_FANFARE:
        StringTemplate_SetNickname(controller->stringTemplate, 0, Pokemon_GetBoxPokemon(controller->data->mon));
        StringTemplate_SetMoveName(controller->stringTemplate, 1, MoveReminder_GetSelectedMove(controller));
        break;

    case MOVE_REMINDER_STR_ASK_STOP_TRYING_TO_TEACH_MOVE:
        StringTemplate_SetMoveName(controller->stringTemplate, 1, MoveReminder_GetSelectedMove(controller));
        break;

    case MOVE_REMINDER_STR_MON_DID_NOT_LEARN_MOVE:
        StringTemplate_SetNickname(controller->stringTemplate, 0, Pokemon_GetBoxPokemon(controller->data->mon));
        StringTemplate_SetMoveName(controller->stringTemplate, 1, MoveReminder_GetSelectedMove(controller));
        break;

    case MOVE_REMINDER_STR_PAYMENT:
        StringTemplate_SetPlayerName(controller->stringTemplate, 2, controller->data->trainerInfo);
        break;

    case MOVE_REMINDER_STR_ASK_FORGET_THIS_MOVE:
        StringTemplate_SetMoveName(controller->stringTemplate, 0, MoveReminder_GetForgottenMove(controller));
        break;
    }

    Strbuf *strbuf = MessageLoader_GetNewStrbuf(controller->messageLoader, sMessageEntryIDs[controller->data->isMoveTutor][str]);
    StringTemplate_Format(controller->stringTemplate, controller->strbuf, strbuf);
    Strbuf_Free(strbuf);
}

static u16 MoveReminder_GetSelectedMove(MoveReminderController *controller)
{
    return controller->data->moves[controller->data->listPos + controller->data->cursorPos];
}

static u16 MoveReminder_GetForgottenMove(MoveReminderController *controller)
{
    return (u16)Pokemon_GetValue(controller->data->mon, MON_DATA_MOVE1 + controller->data->moveSlot, NULL);
}

static void MoveReminder_SetMessageBoxText(MoveReminderController *controller, u32 str)
{
    Window_FillTilemap(&controller->windows[MOVE_REMINDER_WIN_MESSAGE_BOX], 15);
    MoveReminder_SetStringTemplate(controller, str);
    RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);

    controller->textPrinterID = Text_AddPrinterWithParams(&controller->windows[MOVE_REMINDER_WIN_MESSAGE_BOX], FONT_MESSAGE, controller->strbuf, 0, 0, Options_TextFrameDelay(controller->data->options), MoveReminder_TextPrinterCallback);
}

static BOOL MoveReminder_TextPrinterCallback(TextPrinterTemplate *printer, u16 param1)
{
    switch (param1) {
    case 1:
        return Sound_IsAnyEffectPlaying();

    case 2:
        return Sound_IsBGMPausedByFanfare();

    case 3:
        Sound_PlayEffect(SEQ_SE_DP_KON);
        break;

    case 4:
        Sound_PlayFanfare(SEQ_FANFA1);
        break;

    case 5:
        return Sound_IsEffectPlaying(SEQ_SE_DP_KON);
    }

    return FALSE;
}

static u8 MoveReminder_GetEmptyMoveSlot(MoveReminderController *controller)
{
    u8 i;
    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        if (Pokemon_GetValue(controller->data->mon, MON_DATA_MOVE1 + i, NULL) == MOVE_NONE) {
            break;
        }
    }
    return i;
}

static int MoveReminder_ShouldTeachMove_Yes(MoveReminderController *controller)
{
    MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_LEARNED_MOVE_NO_FANFARE);

    controller->data->moveSlot = MoveReminder_GetEmptyMoveSlot(controller);
    controller->nextState = MOVE_REMINDER_STATE_REPLACE_OLD_MOVE;

    return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;
}

static int MoveReminder_ShouldTeachMove_No(MoveReminderController *controller)
{
    Window_FillTilemap(&controller->windows[MOVE_REMINDER_WIN_MESSAGE_BOX], 15);

    MoveReminder_SetStringTemplate(controller, MOVE_REMINDER_STR_ASK_TEACH_WHICH_TO_MON);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_MESSAGE_BOX, FONT_MESSAGE, TEXT_COLOR(1, 2, 15), ALIGN_LEFT);

    Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MESSAGE_BOX]);

    MoveReminder_DrawMoveSelector(controller, controller->data->cursorPos, 0);
    MoveReminder_DrawSideArrows(controller, TRUE);

    return MOVE_REMINDER_STATE_PROCESS_MAIN_INPUT;
}

static int MoveReminder_GiveUpTeachingMon_Yes(MoveReminderController *controller)
{
    controller->data->keepOldMove = TRUE;
    return MOVE_REMINDER_STATE_FADE_TO_EXIT;
}

static int MoveReminder_GiveUpTeachingMon_No(MoveReminderController *controller)
{
    Window_FillTilemap(&controller->windows[MOVE_REMINDER_WIN_MESSAGE_BOX], 15);

    MoveReminder_SetStringTemplate(controller, MOVE_REMINDER_STR_ASK_TEACH_WHICH_TO_MON);
    MoveReminder_DrawText(controller, MOVE_REMINDER_WIN_MESSAGE_BOX, FONT_MESSAGE, TEXT_COLOR(1, 2, 15), ALIGN_LEFT);

    Window_ScheduleCopyToVRAM(&controller->windows[MOVE_REMINDER_WIN_MESSAGE_BOX]);

    MoveReminder_DrawMoveSelector(controller, controller->data->cursorPos, 0);
    MoveReminder_DrawSideArrows(controller, TRUE);

    return MOVE_REMINDER_STATE_PROCESS_MAIN_INPUT;
}

static int MoveReminder_MoreThanFourMovesDelete_Yes(MoveReminderController *controller)
{
    controller->nextState = MOVE_REMINDER_STATE_FADE_TO_SUMMARY_SCREEN;
    return MOVE_REMINDER_STATE_INIT;
}

static int MoveReminder_MoreThanFourMovesDelete_No(MoveReminderController *controller)
{
    MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_ASK_STOP_TRYING_TO_TEACH_MOVE);
    controller->yesNoCallback = MOVE_REMINDER_YES_NO_STOP_TRYING_TO_TEACH_MOVE;
    controller->nextState = MOVE_REMINDER_STATE_DRAW_YES_NO_MENU;
    return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;
}

static int MoveReminder_StopTryingToTeachMove_Yes(MoveReminderController *controller)
{
    MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_MON_DID_NOT_LEARN_MOVE);
    controller->nextState = MOVE_REMINDER_STATE_FADE_TO_EXIT;
    controller->data->keepOldMove = TRUE;
    return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;
}

static int MoveReminder_StopTryingToTeachMove_No(MoveReminderController *controller)
{
    MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_ASK_MORE_THAN_FOUR_MOVES);
    controller->yesNoCallback = MOVE_REMINDER_YES_NO_MORE_THAN_FOUR_MOVES_DELETE;
    controller->nextState = MOVE_REMINDER_STATE_DRAW_YES_NO_MENU;
    return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;
}

static int MoveReminder_ForgetThisMove_Yes(MoveReminderController *controller)
{
    MoveReminder_SetMessageBoxText(controller, MOVE_REMINDER_STR_1_2_AND_POOF);
    controller->nextState = MOVE_REMINDER_STATE_PLAY_FANFARE;
    return MOVE_REMINDER_STATE_PRINT_MESSAGE_BOX_TEXT;
}

static int MoveReminder_ForgetThisMove_No(MoveReminderController *controller)
{
    controller->nextState = MOVE_REMINDER_STATE_FADE_TO_SUMMARY_SCREEN;
    return MOVE_REMINDER_STATE_INIT;
}

static void MoveReminder_InitSpriteSystem(MoveReminderController *controller)
{
    SpriteResourceCapacities capacities = {
        .asStruct = {
            .charCapacity = 11,
            .plttCapacity = 2,
            .cellCapacity = 4,
            .animCapacity = 4,
            .mcellCapacity = 0,
            .manimCapacity = 0,
        },
    };

    VramTransfer_New(64, HEAP_ID_MOVE_REMINDER);

    controller->spriteSystem = SpriteSystem_Alloc(HEAP_ID_MOVE_REMINDER);
    controller->spriteManager = SpriteManager_New(controller->spriteSystem);

    RenderOamTemplate renderOamTemplate = {
        .mainOamStart = 0,
        .mainOamCount = 128,
        .mainAffineOamStart = 0,
        .mainAffineOamCount = 32,
        .subOamStart = 0,
        .subOamCount = 128,
        .subAffineOamStart = 0,
        .subAffineOamCount = 32,
    };

    CharTransferTemplateWithModes charTransferTemplate = {
        .maxTasks = 13,
        .sizeMain = 1024 * 128,
        .sizeSub = 1024 * 16,
        .modeMain = GX_OBJVRAMMODE_CHAR_1D_32K,
        .modeSub = GX_OBJVRAMMODE_CHAR_1D_32K,
    };

    SpriteSystem_Init(controller->spriteSystem, &renderOamTemplate, &charTransferTemplate, 32);
    SpriteSystem_InitSprites(controller->spriteSystem, controller->spriteManager, NELEMS(controller->managedSprites));
    SpriteSystem_InitManagerWithCapacities(controller->spriteSystem, controller->spriteManager, &capacities);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, TRUE);
}

static void MoveReminder_FreeSpriteSystem(MoveReminderController *controller)
{
    for (u32 i = 0; i < NELEMS(controller->managedSprites); i++) {
        Sprite_DeleteAndFreeResources(controller->managedSprites[i]);
    }

    SpriteSystem_FreeResourcesAndManager(controller->spriteSystem, controller->spriteManager);
    SpriteSystem_Free(controller->spriteSystem);
}

static void MoveReminder_UpdateSpritesAnim(MoveReminderController *controller)
{
    for (u16 i = 0; i < NELEMS(controller->managedSprites); i++) {
        Sprite_UpdateAnim(controller->managedSprites[i]->sprite, FX32_ONE);
    }
}

static void MoveReminder_LoadSpriteResources(MoveReminderController *controller, NARC *narc)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 5, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 47272);
    SpriteSystem_LoadCharResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 8, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 47273);
    SpriteSystem_LoadCharResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 2, FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 47274);

    for (u32 i = 47276; i <= 47282; i++) {
        TypeIcon_LoadChar(controller->spriteSystem, controller->spriteManager, NNS_G2D_VRAM_TYPE_2DMAIN, TYPE_NORMAL, i);
    }

    CategoryIcon_LoadChar(controller->spriteSystem, controller->spriteManager, NNS_G2D_VRAM_TYPE_2DMAIN, 0, 47275);
    SpriteSystem_LoadPlttResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 9, FALSE, 2, NNS_G2D_VRAM_TYPE_2DMAIN, 47272);
    TypeIcon_LoadPlttSrc(controller->spriteSystem, controller->spriteManager, NNS_G2D_VRAM_TYPE_2DMAIN, 47273);
    SpriteSystem_LoadCellResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 4, FALSE, 47272);
    SpriteSystem_LoadCellResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 7, FALSE, 47273);
    SpriteSystem_LoadCellResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 1, FALSE, 47274);
    SpriteSystem_LoadAnimResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 3, FALSE, 47272);
    SpriteSystem_LoadAnimResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 6, FALSE, 47273);
    SpriteSystem_LoadAnimResObjFromOpenNarc(controller->spriteSystem, controller->spriteManager, narc, 0, FALSE, 47274);
    TypeIcon_LoadAnim(controller->spriteSystem, controller->spriteManager, 47275, 47275);
}

static void MoveReminder_DrawTypeIcon(MoveReminderController *controller, u16 move, u16 index)
{
    u32 type = (controller->data->showingContest == 0)
        ? MoveTable_LoadParam(move, MOVEATTRIBUTE_TYPE)
        : MoveTable_LoadParam(move, MOVEATTRIBUTE_CONTEST_TYPE) + 18;

    SpriteSystem_ReplaceCharResObj(controller->spriteSystem, controller->spriteManager, TypeIcon_GetNARC(), TypeIcon_GetChar(type), 1, 47276 + index);
    ManagedSprite_SetExplicitPalette(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + index], TypeIcon_GetPltt(type) + 2);
}

static void MoveReminder_DrawTypeIcons(MoveReminderController *controller)
{
    for (u32 i = 0; i < sListMenuTemplate.maxDisplay; i++) {
        ManagedSprite_SetPositionXY(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], 152, 32 + 16 * i);

        if (controller->data->listPos + i >= controller->numMoves - 1) {
            ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], FALSE);
        } else {
            ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], TRUE);
            MoveReminder_DrawTypeIcon(controller, controller->data->moves[controller->data->listPos + i], i);
        }
    }
}

static void MoveReminder_Scroll(MoveReminderController *controller, u16 prevListPos, u16 listPos)
{
    u32 i;
    s16 x, y;

    if (prevListPos < listPos) {
        // scroll down
        for (i = 0; i < sListMenuTemplate.maxDisplay; i++) {
            ManagedSprite_GetPositionXY(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], &x, &y);

            if (y == 32) {
                y = 128;

                if (controller->data->moves[listPos + 6] != LEVEL_UP_MOVESET_TERMINATOR) {
                    MoveReminder_DrawTypeIcon(controller, controller->data->moves[listPos + 6], i);
                }
            } else {
                y -= 16;
            }

            ManagedSprite_SetPositionXY(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], x, y);
        }
    } else if (prevListPos > listPos) {
        // scroll up
        for (i = 0; i < sListMenuTemplate.maxDisplay; i++) {
            ManagedSprite_GetPositionXY(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], &x, &y);

            if (y == 128) {
                y = 32;

                if (controller->data->moves[listPos] != LEVEL_UP_MOVESET_TERMINATOR) {
                    MoveReminder_DrawTypeIcon(controller, controller->data->moves[listPos], i);
                }
            } else {
                y += 16;
            }

            ManagedSprite_SetPositionXY(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], x, y);
        }
    } else {
        return;
    }

    for (i = 0; i < sListMenuTemplate.maxDisplay; i++) {
        ManagedSprite_GetPositionXY(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], &x, &y);
        y = (y - 32) / 16;

        if (listPos + y >= controller->numMoves - 1) {
            ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], FALSE);
        } else {
            ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_TYPE_MOVE_0 + i], TRUE);
        }
    }
}

static void MoveReminder_DrawCategoryIcon(MoveReminderController *controller, u16 move)
{
    u32 category = MoveTable_LoadParam(move, MOVEATTRIBUTE_CLASS);

    SpriteSystem_ReplaceCharResObj(controller->spriteSystem, controller->spriteManager, CategoryIcon_GetNARC(), CategoryIcon_GetChar(category), 1, 47275);
    ManagedSprite_SetExplicitPalette(controller->managedSprites[MOVE_REMINDER_SPRITE_CATEGORY], CategoryIcon_GetPltt(category) + 2);
}

static void MoveReminder_InitSprites(MoveReminderController *controller, NARC *narc)
{
    MoveReminder_InitSpriteSystem(controller);
    MoveReminder_LoadSpriteResources(controller, narc);

    for (u32 i = 0; i < NELEMS(controller->managedSprites); i++) {
        controller->managedSprites[i] = SpriteSystem_NewSprite(controller->spriteSystem, controller->spriteManager, &sSpriteTemplates[i]);
    }
}

static void MoveReminder_DrawMoveSelector(MoveReminderController *controller, u8 cursorPos, u8 palette)
{
    ManagedSprite_SetPositionXY(controller->managedSprites[MOVE_REMINDER_SPRITE_MOVE_SELECTOR], 196, 32 + 16 * cursorPos);
    ManagedSprite_SetExplicitPalette(controller->managedSprites[MOVE_REMINDER_SPRITE_MOVE_SELECTOR], palette);
}

static void MoveReminder_DrawSideArrows(MoveReminderController *controller, u8 draw)
{
    ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_SIDE_ARROW_LEFT], draw);
    ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_SIDE_ARROW_RIGHT], draw);
}

static void MoveReminder_DrawArrows(MoveReminderController *controller)
{
    if (controller->data->listPos != 0) {
        ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_SCROLL_ARROW_UP], TRUE);
    } else {
        ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_SCROLL_ARROW_UP], FALSE);
    }

    if (controller->data->listPos + sListMenuTemplate.maxDisplay < controller->numMoves) {
        ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_SCROLL_ARROW_DOWN], TRUE);
    } else {
        ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_SCROLL_ARROW_DOWN], FALSE);
    }
}

static void MoveReminder_HideScrollArrows(MoveReminderController *controller)
{
    ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_SCROLL_ARROW_UP], FALSE);
    ManagedSprite_SetDrawFlag(controller->managedSprites[MOVE_REMINDER_SPRITE_SCROLL_ARROW_DOWN], FALSE);
}

static int MoveReminder_State_FadeToSummaryScreen(MoveReminderController *controller)
{
    App_StartScreenFade(TRUE, HEAP_ID_MOVE_REMINDER);
    controller->nextState = MOVE_REMINDER_STATE_RUN_SUMMARY_SCREEN;
    return MOVE_REMINDER_STATE_INIT;
}

static int MoveReminder_State_RunSummaryScreen(MoveReminderController *controller)
{
    u8 summaryPages[] = {
        SUMMARY_PAGE_BATTLE_MOVES,
        SUMMARY_PAGE_CONTEST_MOVES,
        SUMMARY_PAGE_MAX
    };

    MoveReminder_Free(controller);

    controller->summary.monData = controller->data->mon;
    controller->summary.options = controller->data->options;
    controller->summary.dataType = SUMMARY_DATA_MON;
    controller->summary.monIndex = 0;
    controller->summary.monMax = 1;
    controller->summary.move = MoveReminder_GetSelectedMove(controller);
    controller->summary.mode = SUMMARY_MODE_SELECT_MOVE;
    controller->summary.showContest = TRUE;
    controller->summary.chatotCry = NULL;

    PokemonSummaryScreen_FlagVisiblePages(&controller->summary, summaryPages);

    controller->appMan = ApplicationManager_New(&gPokemonSummaryScreenApp, &controller->summary, HEAP_ID_MOVE_REMINDER);
    return MOVE_REMINDER_STATE_PROCESS_SUMMARY_SCREEN_INPUT;
}

static int MoveReminder_State_ProcessSummaryScreenInput(MoveReminderController *controller)
{
    if (ApplicationManager_Exec(controller->appMan)) {
        ApplicationManager_Free(controller->appMan);
        MoveReminder_Setup(controller);
        MoveReminder_DrawMoveSelector(controller, controller->data->cursorPos, 1);
        MoveReminder_DrawSideArrows(controller, FALSE);
        MoveReminder_HideScrollArrows(controller);
        controller->data->moveSlot = controller->summary.selectedMoveSlot;
        controller->nextState = MOVE_REMINDER_STATE_CONFIRM_SELECTION;
        return MOVE_REMINDER_STATE_INIT;
    }

    return MOVE_REMINDER_STATE_PROCESS_SUMMARY_SCREEN_INPUT;
}
