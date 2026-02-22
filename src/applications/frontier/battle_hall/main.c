#include "applications/frontier/battle_hall/main.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "constants/scrcmd.h"

#include "applications/frontier/battle_hall/sprite_manager.h"
#include "applications/frontier/battle_hall/sprites.h"
#include "applications/frontier/battle_hall/windows.h"
#include "applications/pokemon_summary_screen/main.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223AF58.h"
#include "overlay104/struct_ov104_02235208.h"

#include "bg_window.h"
#include "communication_system.h"
#include "dexmode_checker.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "narc_frontier_bg.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "render_oam.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_util.h"
#include "string_gf.h"
#include "string_list.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02030108.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

#include "constdata/const_020F410C.h"
#include "res/text/bank/battle_hall_scene.h"

// States of the overall app
enum BattleHallAppState {
    STATE_FADE_IN = 0,
    STATE_MON_SUMMARY,
    STATE_SELECT_BATTLE,
    STATE_MULTI_CONFIRM,
    STATE_SYNC_BEFORE_EXIT,
    STATE_FADE_OUT,
    STATE_CLOSE_MESSAGE,
};

// Substates of the STATE_SELECT_BATTLE state
enum BattleHallAppSelectBattleSubState {
    SELECT_STATE_INIT = 0,
    SELECT_STATE_MAKE_PICK,
    SELECT_STATE_OPEN_YES_NO,
    SELECT_STATE_PROCESS_YES_NO,
    SELECT_STATE_PRINT_MATRON_MSG,
    SELECT_STATE_HIGHLIGHT_MATRON_CELL,
    SELECT_STATE_OPEN_MON_SUMMARY,
};

// Substates of the STATE_MULTI_CONFIRM state
enum BattleHallAppMultiConfirmSubState {
    MCONFIRM_STATE_SEND_COMM,
    MCONFIRM_STATE_WAIT_FOR_PARTNER_ACK,
    MCONFIRM_STATE_OPEN_YES_NO,
    MCONFIRM_STATE_PARTNER_IS_CHOOSING,
    MCONFIRM_STATE_HANDLE_PARTNERS_DECISION,
    MCONFIRM_STATE_PROCESS_YES_NO,
    MCONFIRM_STATE_SEND_CONFIRM_COMM,
    MCONFIRM_STATE_SEND_CANCELED_COMM,
};

#define PARTNER_DECISION_PENDING 0
#define PARTNER_DECISION_CONFIRM 1
#define PARTNER_DECISION_CANCEL  2

#define MAX_RANK 10

#define WINDOW_MSG_BOX     0
#define WINDOW_YES_NO_MENU 1
#define WINDOW_MON_NAME    2
#define WINDOW_TYPE_INFO   3

#define GRID_WIDTH       4
#define GRID_HEIGHT      5
#define GRID_TOTAL_CELLS (GRID_WIDTH * GRID_HEIGHT)
#define COL_WIDTH        64
#define ROW_HEIGHT       36

#define CELL_BACKGROUND_NORMAL           0
#define CELL_BACKGROUND_SELECTED         1
#define CELL_BACKGROUND_PARTNER_SELECTED 2
#define CELL_BACKGROUND_UNSELECTABLE     3

#define COMM_CMD_DUMMY            4
#define COMM_CMD_TYPE_SELECTION   5
#define COMM_CMD_PARTNER_DECISION 6

FS_EXTERN_OVERLAY(overlay104);

typedef struct BattleHallApp {
    ApplicationManager *unused;
    ApplicationManager *monSummaryAppMan;
    u8 subState;
    u8 challengeType;
    u8 printerID;
    u8 summaryScreenOpened;
    u8 prevCursorPos;
    u8 cursorPos;
    u8 unused2;
    u8 yesNoMenuOpen;
    u16 summaryScreenOpen;
    u16 isSynced;
    u16 openMenuDelay;
    u8 numSelectionMsgsReceived;
    u8 startMultiSelectionConfirm;
    u8 selectionID;
    u8 selectionCanceled;
    u8 selectedCursorPos;
    u8 fadeOutDelay;
    u16 currentStreak;
    u8 matronBattleAvailable;
    u8 savedCursorPos;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    String *yesNoStrs[2];
    u16 unused3[8];
    BgConfig *bgConfig;
    Window windows[4];
    MenuTemplate yesNoMenuTemplate;
    Menu *yesNoMenu;
    StringList yesNoStrList[2];
    PaletteData *plttData;
    FontSpecialCharsContext *specialChars;
    Options *options;
    SaveData *saveData;
    PokemonSummary *monSummary;
    BattleHallAppSpriteManager spriteMan;
    BattleHallAppSprite *cursorSprite;
    BattleHallAppSprite *monSprite;
    int monIndex;
    u16 *selectedCellPtr;
    Party *party;
    u8 *typeRanks;
    u16 *partnersLevel;
    NARC *narc;
    u16 commPayload[44];
    u8 partnersSelectedCell;
    u8 partnersDecision;
    u8 unused4;
    u32 unused5;
} BattleHallApp;

static BOOL State_FadeInApp(BattleHallApp *app);
static BOOL State_RunMonSummaryApp(BattleHallApp *app);
static BOOL State_SelectNextBattle(BattleHallApp *app);
static BOOL State_MultiplayerConfirmSelection(BattleHallApp *app);
static BOOL State_SyncBeforeExit(BattleHallApp *app);
static BOOL State_FadeOutApp(BattleHallApp *app);
static BOOL State_CloseMessageBox(BattleHallApp *app);
static void ChangeState(BattleHallApp *app, int *state, enum BattleHallAppState nextState);

static void ReInitApp(BattleHallApp *app);
static void VBlankCallback(void *data);
static void InitGraphicsPlane(void);
static void SetGXBanks(void);
static void InitBackgrounds(BgConfig *bgConfig);
static void LoadAssets(BattleHallApp *app);
static void FreeAssets(BattleHallApp *app);
static void LoadBackgrounds(BattleHallApp *app);
static void FreeBackgrounds(BgConfig *bgConfig);
static void LoadMainScreenBackground(BattleHallApp *app, enum BgLayer bgLayer);
static void LoadPalette(void);
static void LoadSubScreenBackground(BattleHallApp *app, enum BgLayer bgLayer);
static void InitSpriteManager(BattleHallApp *app);

static void PrintAppStrings(BattleHallApp *app);
static void PrintPokemonsName(BattleHallApp *app, Window *window, u32 x, u32 y, u8 textColor, u8 shadowColor, u8 bgColor, u8 fontID);
static void PrintTypeStrings(BattleHallApp *app, Window *window, u8 textColor, u8 shadowColor, u8 bgColor, u8 fontID);
static u8 PrintMessage(BattleHallApp *app, Window *window, int messageID, u32 x, u32 y, u32 renderDelay, u8 textColor, u8 shadowColor, u8 bgColor, u8 fontID);
static u8 PrintMessageAndCopyToVRAM(BattleHallApp *app, int messageID, u8 fontID);
static void PrintRank(BattleHallApp *app, Window *window, u8 rank, u32 x, u32 y);
static void PrintTypesRanks(BattleHallApp *app, Window *window);
static void SetStringTemplateNumber(BattleHallApp *app, u32 idx, s32 num);
static void DrawMonSpriteAndName(BattleHallApp *app);
static void ChangeCellBackground(BgConfig *bgConfig, u8 boxIdx, u8 background);
static void GrayOutUnselectableCells(BattleHallApp *app, BgConfig *bgConfig);
static void DeselectCell(BattleHallApp *app);

static void InitYesNoMenu(BattleHallApp *app, Window *window, u8 numOptions);
static void AddStringToYesNoMenu(BattleHallApp *app, u8 strIndex, u8 listIndex, int messageID);
static void OpenYesNoMenu(BattleHallApp *app);
static void DrawMessageWithYesNoMenu(BattleHallApp *app);
static void FreeYesNoMenu(BattleHallApp *app);

static void UpdateCursorPosition(BattleHallApp *app, int _);
static u8 GetCursorPos(u8 cursorPos);
static u16 GetCursorX(BattleHallApp *app);
static u16 GetCursorY(BattleHallApp *app);

static void SetupMonSummaryApp(BattleHallApp *app);
static BOOL NextOpponentIsHallMatron(BattleHallApp *app);
static BOOL IsHallMatronBattleAvailable(BattleHallApp *app);

static BOOL SendCommMessage(BattleHallApp *app, u16 cmd, u16 arg);
static void DummyCreatePayload(BattleHallApp *app, u16 dummy);
static void CreateTypeSelectionPayload(BattleHallApp *app, u16 cmd, u16 cursorPos);
static void CreateDecisionPayload(BattleHallApp *app, u16 cmd, u16 decision);

static const u8 sSummaryPages[] = {
    SUMMARY_PAGE_INFO,
    SUMMARY_PAGE_MEMO,
    SUMMARY_PAGE_SKILLS,
    SUMMARY_PAGE_CONDITION,
    SUMMARY_PAGE_BATTLE_MOVES,
    SUMMARY_PAGE_CONTEST_MOVES,
    SUMMARY_PAGE_RIBBONS,
    SUMMARY_PAGE_EXIT,
    SUMMARY_PAGE_MAX,
};

BOOL BattleHallApp_Init(ApplicationManager *appMan, int *state)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), OVERLAY_LOAD_ASYNC);
    InitGraphicsPlane();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE_HALL_APP, HEAP_SIZE_BATTLE_HALL_APP);

    BattleHallApp *app = ApplicationManager_NewData(appMan, sizeof(BattleHallApp), HEAP_ID_BATTLE_HALL_APP);
    memset(app, 0, sizeof(BattleHallApp));

    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_HALL_APP);
    app->unused = appMan;

    UnkStruct_ov104_02235208 *v2 = ApplicationManager_Args(appMan);

    app->saveData = v2->saveData;
    app->challengeType = v2->unk_04;
    app->selectedCellPtr = &v2->unk_06;
    app->options = SaveData_GetOptions(app->saveData);
    app->party = v2->party;
    app->typeRanks = v2->unk_08;
    app->partnersLevel = v2->unk_14;
    app->currentStreak = v2->unk_18 + 1;
    app->cursorPos = v2->unk_05;
    app->partnersSelectedCell = 0xff;
    app->selectionID = 0xff;
    app->savedCursorPos = 0x75;

    LoadAssets(app);

    if (BattleHall_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        sub_0209BA80(app);
    }

    *state = 0;

    return TRUE;
}

BOOL BattleHallApp_Main(ApplicationManager *appMan, int *state)
{
    BattleHallApp *app = ApplicationManager_Data(appMan);

    if (app->selectionID != 0xff && *state == STATE_SELECT_BATTLE && !app->summaryScreenOpen) {
        FreeYesNoMenu(app);
        ChangeState(app, state, STATE_MULTI_CONFIRM);
    }

    switch (*state) {
    case STATE_MON_SUMMARY:
        if (State_RunMonSummaryApp(app) == TRUE) {
            ChangeState(app, state, STATE_FADE_IN);
        } else {
            return FALSE;
        }
    case STATE_FADE_IN:
        if (State_FadeInApp(app) == TRUE) {
            ChangeState(app, state, STATE_SELECT_BATTLE);
        }
        break;
    case STATE_SELECT_BATTLE:
        if (State_SelectNextBattle(app) == TRUE) {
            if (app->startMultiSelectionConfirm == TRUE) {
                ChangeState(app, state, STATE_MULTI_CONFIRM);
            } else if (app->summaryScreenOpened == TRUE) {
                ChangeState(app, state, STATE_MON_SUMMARY);
                return FALSE;
            } else if (BattleHall_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
                ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
            } else {
                ChangeState(app, state, STATE_FADE_OUT);
            }
        }
        break;
    case STATE_MULTI_CONFIRM:
        if (State_MultiplayerConfirmSelection(app) == TRUE) {
            if (app->selectionCanceled == TRUE) {
                app->selectionCanceled = FALSE;
                ChangeState(app, state, STATE_SELECT_BATTLE);
            } else if (BattleHall_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
                ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
            } else {
                ChangeState(app, state, STATE_FADE_OUT);
            }
        }
        break;
    case STATE_SYNC_BEFORE_EXIT:
        if (State_SyncBeforeExit(app) == TRUE) {
            ChangeState(app, state, STATE_FADE_OUT);
        }
        break;
    case STATE_FADE_OUT:
        if (State_FadeOutApp(app) == TRUE) {
            return TRUE;
        }
        break;
    case STATE_CLOSE_MESSAGE:
        if (State_CloseMessageBox(app) == TRUE) {
            ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
        }
        break;
    }

    SpriteList_Update(app->spriteMan.spriteList);
    return FALSE;
}

BOOL BattleHallApp_Exit(ApplicationManager *appMan, int *state)
{
    BattleHallApp *app = ApplicationManager_Data(appMan);

    *app->selectedCellPtr = app->cursorPos;

    FreeAssets(app);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BATTLE_HALL_APP);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return TRUE;
}

static BOOL State_FadeInApp(BattleHallApp *app)
{
    switch (app->subState) {
    case 0:
        if (!app->isSynced && BattleHall_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(112);
        }

        app->subState++;
        break;
    case 1:
        if (!app->isSynced && BattleHall_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (CommTiming_IsSyncState(112) == TRUE) {
                CommTool_ClearReceivedTempDataAllPlayers();
                app->isSynced = TRUE;
                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 2:
        PrintAppStrings(app);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_HALL_APP);
        app->subState++;
        break;
    case 3:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void PrintAppStrings(BattleHallApp *app)
{
    PrintTypeStrings(app, &app->windows[WINDOW_TYPE_INFO], 1, 2, 0, FONT_SYSTEM);
    PrintTypesRanks(app, &app->windows[WINDOW_TYPE_INFO]);
    PrintPokemonsName(app, &app->windows[WINDOW_MON_NAME], 0, 0, 1, 2, 0, FONT_SYSTEM);
}

static BOOL State_RunMonSummaryApp(BattleHallApp *app)
{
    if (app->subState == 0) {
        if (ApplicationManager_Exec(app->monSummaryAppMan) == TRUE) {
            app->monIndex = app->monSummary->monIndex;
            Heap_Free(app->monSummary);
            Heap_Free(app->monSummaryAppMan);
            app->monSummaryAppMan = NULL;
            ReInitApp(app);
            app->summaryScreenOpen = FALSE;
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL State_SelectNextBattle(BattleHallApp *app)
{
    switch (app->subState) {
    case SELECT_STATE_INIT:
        app->summaryScreenOpened = FALSE;
        app->subState = SELECT_STATE_MAKE_PICK;
        break;
    case SELECT_STATE_MAKE_PICK:
        UpdateCursorPosition(app, gSystem.pressedKeys);

        if (JOY_NEW(PAD_BUTTON_A)) {
            if (BattleHall_CursorPosToType(app->cursorPos) == BATTLE_HALL_MON_SUMMARY) {
                Sound_PlayEffect(SEQ_SE_DP_DECIDE);
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_HALL_APP);

                app->summaryScreenOpen = TRUE;
                app->subState = SELECT_STATE_OPEN_MON_SUMMARY;
            } else {
                if (IsHallMatronBattleAvailable(app) == TRUE) {
                    if (BattleHall_CursorPosToType(app->cursorPos) != TYPE_MYSTERY) {
                        Sound_PlayEffect(SEQ_SE_DP_BOX03);
                        return FALSE;
                    }
                } else {
                    if (BattleHall_GetRankOfType(GetCursorPos(app->cursorPos), app->typeRanks) >= MAX_RANK) {
                        Sound_PlayEffect(SEQ_SE_DP_BOX03);

                        return FALSE;
                    }

                    if (BattleHall_CursorPosToType(app->cursorPos) == TYPE_MYSTERY) {
                        Sound_PlayEffect(SEQ_SE_DP_BOX03);
                        return FALSE;
                    }
                }

                Sound_PlayEffect(SEQ_SE_DP_DECIDE);

                if (!BattleHall_IsMultiPlayerChallenge(app->challengeType)) {
                    ChangeCellBackground(app->bgConfig, app->cursorPos, CELL_BACKGROUND_SELECTED);
                    Bg_ScheduleTilemapTransfer(app->bgConfig, BG_LAYER_MAIN_3);
                }

                app->openMenuDelay = 8;
                app->subState = SELECT_STATE_OPEN_YES_NO;
            }
        }
        break;
    case SELECT_STATE_OPEN_YES_NO:
        app->openMenuDelay--;

        if (app->openMenuDelay == 0) {
            if (!BattleHall_IsMultiPlayerChallenge(app->challengeType)) {
                DrawMessageWithYesNoMenu(app);
                app->subState = SELECT_STATE_PROCESS_YES_NO;
                break;
            } else {
                BattleHallApp_DrawMessageBox(&app->windows[WINDOW_MSG_BOX], Options_Frame(app->options));
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleHallScene_Text_PleaseWait, FONT_MESSAGE);
                app->selectedCursorPos = app->cursorPos;
                app->startMultiSelectionConfirm = TRUE;
                return TRUE;
            }
        }
        break;
    case SELECT_STATE_PROCESS_YES_NO:
        switch (Menu_ProcessInput(app->yesNoMenu)) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            FreeYesNoMenu(app);

            if (NextOpponentIsHallMatron(app) == TRUE && !IsHallMatronBattleAvailable(app)) {
                app->savedCursorPos = app->cursorPos;
                app->subState = SELECT_STATE_PRINT_MATRON_MSG;
            } else {
                Sound_StopEffect(SEQ_SE_CONFIRM, 0);
                Sound_PlayEffect(SEQ_SE_DP_UG_020);

                if (app->savedCursorPos != 0x75) {
                    app->cursorPos = app->savedCursorPos;
                }

                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCELED:
            FreeYesNoMenu(app);
            DeselectCell(app);
            app->subState = SELECT_STATE_MAKE_PICK;
            break;
        }
        break;
    case SELECT_STATE_PRINT_MATRON_MSG:
        BattleHallApp_DrawMessageBox(&app->windows[WINDOW_MSG_BOX], Options_Frame(app->options));
        app->printerID = PrintMessage(app, &app->windows[WINDOW_MSG_BOX], BattleHallScene_Text_HallMatronApproaching, 1, 1, Options_TextFrameDelay(SaveData_GetOptions(app->saveData)), 1, 2, 15, FONT_MESSAGE);
        Window_CopyToVRAM(&app->windows[WINDOW_MSG_BOX]);
        app->subState = SELECT_STATE_HIGHLIGHT_MATRON_CELL;
        break;
    case SELECT_STATE_HIGHLIGHT_MATRON_CELL:
        if (!Text_IsPrinterActive(app->printerID)) {
            app->matronBattleAvailable = TRUE;
            DrawMonSpriteAndName(app);
            BattleHallAppSprite_SetAnim(app->cursorSprite, 1);
            ChangeCellBackground(app->bgConfig, GRID_TOTAL_CELLS - 1, CELL_BACKGROUND_NORMAL);
            GrayOutUnselectableCells(app, app->bgConfig);
            app->cursorPos = GRID_TOTAL_CELLS - 1;
            BattleHallAppSprite_SetPosition(app->cursorSprite, GetCursorX(app), GetCursorY(app));
            app->subState = SELECT_STATE_INIT;
        }
        break;
    case SELECT_STATE_OPEN_MON_SUMMARY:
        if (IsScreenFadeDone() == TRUE) {
            SetupMonSummaryApp(app);
            FreeAssets(app);
            app->monSummaryAppMan = ApplicationManager_New(&gPokemonSummaryScreenApp, app->monSummary, HEAP_ID_BATTLE_HALL_APP);
            app->summaryScreenOpened = TRUE;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_MultiplayerConfirmSelection(BattleHallApp *app)
{
    switch (app->subState) {
    case MCONFIRM_STATE_SEND_COMM:
        // After the first player sends this message the second player will move
        // to this state and send the same message. After the exchange, both
        // games' app->selectionID will contain the first player's selected
        // cursorPos if the Host made the selection, otherwise it will contain
        // cursorPos + 20. This distinction is used in MCONFIRM_STATE_WAIT_FOR_PARTNER_ACK
        // to determine which game gets to confirm the selection and which has to wait.
        if (SendCommMessage(app, COMM_CMD_TYPE_SELECTION, GetCursorPos(app->selectedCursorPos)) == TRUE) {
            app->fadeOutDelay = 0;
            app->selectedCursorPos = 0;
            app->startMultiSelectionConfirm = FALSE;
            app->subState = MCONFIRM_STATE_WAIT_FOR_PARTNER_ACK;
        }
        break;
    case MCONFIRM_STATE_WAIT_FOR_PARTNER_ACK:
        if (app->fadeOutDelay > 0) {
            app->fadeOutDelay--;
            break;
        }

        // Wait until both players have acknowledged the pending selection
        if (app->numSelectionMsgsReceived < 2) {
            break;
        }
        app->numSelectionMsgsReceived = 0;

        if (app->selectionID < GRID_TOTAL_CELLS) {
            if (CommSys_CurNetId() == 0) {
                app->subState = MCONFIRM_STATE_OPEN_YES_NO;
            } else {
                app->subState = MCONFIRM_STATE_PARTNER_IS_CHOOSING;
            }
        } else {
            if (CommSys_CurNetId() == 0) {
                app->subState = MCONFIRM_STATE_PARTNER_IS_CHOOSING;
            } else {
                app->subState = MCONFIRM_STATE_OPEN_YES_NO;
            }
        }
        break;
    case MCONFIRM_STATE_PARTNER_IS_CHOOSING:
        BattleHallAppSprite_SetDrawFlag(app->monSprite, FALSE);
        BattleHallApp_DrawMessageBox(&app->windows[WINDOW_MSG_BOX], Options_Frame(app->options));
        BattleFrontier_SetPartnerInStrTemplate(app->strTemplate, 0);

        app->printerID = PrintMessageAndCopyToVRAM(app, BattleHallScene_Text_PartnerIsChoosing, FONT_MESSAGE);
        app->fadeOutDelay = 10;

        ChangeCellBackground(app->bgConfig, app->partnersSelectedCell, CELL_BACKGROUND_PARTNER_SELECTED);
        Bg_ScheduleTilemapTransfer(app->bgConfig, BG_LAYER_MAIN_3);

        app->subState = MCONFIRM_STATE_HANDLE_PARTNERS_DECISION;
        break;
    case MCONFIRM_STATE_HANDLE_PARTNERS_DECISION:
        if (app->partnersDecision == PARTNER_DECISION_PENDING) {
            break;
        }

        if (app->partnersDecision == PARTNER_DECISION_CONFIRM) {
            app->cursorPos = app->partnersSelectedCell;
            return TRUE;
        } else {
            DrawMonSpriteAndName(app);
            ChangeCellBackground(app->bgConfig, app->partnersSelectedCell, CELL_BACKGROUND_NORMAL);

            Bg_ScheduleTilemapTransfer(app->bgConfig, BG_LAYER_MAIN_3);

            app->partnersSelectedCell = 0xff;
            app->partnersDecision = PARTNER_DECISION_PENDING;
            app->selectionID = 0xff;
            app->selectionCanceled = TRUE;

            return TRUE;
        }
        break;
    case MCONFIRM_STATE_OPEN_YES_NO:
        ChangeCellBackground(app->bgConfig, app->cursorPos, CELL_BACKGROUND_SELECTED);
        Bg_ScheduleTilemapTransfer(app->bgConfig, BG_LAYER_MAIN_3);
        DrawMessageWithYesNoMenu(app);
        app->subState = MCONFIRM_STATE_PROCESS_YES_NO;
        break;
    case MCONFIRM_STATE_PROCESS_YES_NO:
        switch (Menu_ProcessInput(app->yesNoMenu)) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            Sound_StopEffect(SEQ_SE_CONFIRM, 0);
            Sound_PlayEffect(SEQ_SE_DP_UG_020);
            FreeYesNoMenu(app);
            app->subState = MCONFIRM_STATE_SEND_CONFIRM_COMM;
            break;
        case MENU_NO:
        case MENU_CANCELED:
            FreeYesNoMenu(app);
            app->subState = MCONFIRM_STATE_SEND_CANCELED_COMM;
            break;
        }
        break;
    case MCONFIRM_STATE_SEND_CONFIRM_COMM:
        if (SendCommMessage(app, COMM_CMD_PARTNER_DECISION, PARTNER_DECISION_CONFIRM) == TRUE) {
            return TRUE;
        }
        break;
    case MCONFIRM_STATE_SEND_CANCELED_COMM:
        if (SendCommMessage(app, COMM_CMD_PARTNER_DECISION, PARTNER_DECISION_CANCEL) == TRUE) {
            DeselectCell(app);
            app->partnersSelectedCell = 0xff;
            app->selectionID = 0xff;
            app->selectionCanceled = TRUE;
            return TRUE;
        }
        break;
    // These last two cases are never reached.
    case 8:
        CommTool_ClearReceivedTempDataAllPlayers();
        CommTiming_StartSync(104);
        app->subState = 9;
        break;
    case 9:
        if (CommTiming_IsSyncState(104) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTool_Init(HEAP_ID_BATTLE_HALL_APP);
            app->selectionID = 0xff;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_SyncBeforeExit(BattleHallApp *app)
{
    switch (app->subState) {
    case 0:
        CommTool_ClearReceivedTempDataAllPlayers();
        CommTiming_StartSync(104);
        app->subState++;
        break;
    case 1:
        if (CommTiming_IsSyncState(104) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_FadeOutApp(BattleHallApp *app)
{
    switch (app->subState) {
    case 0:
        app->fadeOutDelay = 10;
        app->subState++;
        break;
    case 1:
        app->fadeOutDelay--;

        if (app->fadeOutDelay == 0) {
            DrawMonSpriteAndName(app);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_HALL_APP);
            app->subState++;
        }
        break;
    case 2:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_CloseMessageBox(BattleHallApp *app)
{
    switch (app->subState) {
    case 0:
        FreeYesNoMenu(app);
        BattleHallAppSprite_SetDrawFlag(app->monSprite, TRUE);
        Window_EraseMessageBox(&app->windows[WINDOW_MSG_BOX], FALSE);

        app->subState++;
        break;
    case 1:
        return TRUE;
    }

    return FALSE;
}

static void FreeAssets(BattleHallApp *app)
{
    if (app->cursorSprite != NULL) {
        BattleHallAppSprite_Free(app->cursorSprite);
    }

    if (app->monSprite != NULL) {
        BattleHallAppSprite_Free(app->monSprite);
    }

    NetworkIcon_Destroy();
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;

    BattleHallApp_FreeSprites(&app->spriteMan);

    MessageLoader_Free(app->msgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);
    FontSpecialChars_Free(app->specialChars);

    for (int i = 0; i < 2; i++) {
        String_Free(app->yesNoStrs[i]);
    }

    BattleHallApp_FreeWindows(app->windows);
    FreeBackgrounds(app->bgConfig);
    NARC_dtor(app->narc);
}

static void ReInitApp(BattleHallApp *app)
{
    InitGraphicsPlane();
    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_HALL_APP);
    LoadAssets(app);

    if (BattleHall_CursorPosToType(app->cursorPos) == BATTLE_HALL_MON_SUMMARY) {
        BattleHallAppSprite_SetAnim(app->cursorSprite, 2);
        BattleHallAppSprite_SetPosition(app->cursorSprite, 128, 168);
    }
}

static void InitGraphicsPlane(void)
{
    SetVBlankCallback(NULL, NULL);
    SetHBlankCallback(NULL, NULL);

    GXLayers_DisableEngineALayers();
    GXLayers_DisableEngineBLayers();

    GX_SetVisiblePlane(0);
    GXS_SetVisiblePlane(0);
}

static void LoadAssets(BattleHallApp *app)
{
    app->narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_BATTLE_HALL_APP);

    LoadBackgrounds(app);
    InitSpriteManager(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_HALL_SCENE, HEAP_ID_BATTLE_HALL_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_BATTLE_HALL_APP);
    app->displayStr = String_Init(600, HEAP_ID_BATTLE_HALL_APP);
    app->fmtStr = String_Init(600, HEAP_ID_BATTLE_HALL_APP);

    for (int i = 0; i < 2; i++) {
        app->yesNoStrs[i] = String_Init(32, HEAP_ID_BATTLE_HALL_APP);
    }

    Font_LoadTextPalette(0, 13 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_HALL_APP);
    Font_LoadScreenIndicatorsPalette(0, 12 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_HALL_APP);

    app->specialChars = FontSpecialChars_Init(15, 14, 0, HEAP_ID_BATTLE_HALL_APP);

    BattleHallApp_InitWindows(app->bgConfig, app->windows);
    GrayOutUnselectableCells(app, app->bgConfig);

    GXLayers_TurnBothDispOn();

    app->cursorSprite = BattleHallAppSprite_New(&app->spriteMan, 0, 1, GetCursorX(app), GetCursorY(app), NULL);
    app->monSprite = BattleHallAppSprite_New(&app->spriteMan, 1, 1, 160, 160, NULL);

    BattleHallAppSprite_UpdatePalette(app->monSprite, Party_GetPokemonBySlotIndex(app->party, 0));

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetVBlankCallback(VBlankCallback, app);
}

static void LoadBackgrounds(BattleHallApp *app)
{
    SetGXBanks();
    InitBackgrounds(app->bgConfig);

    app->plttData = PaletteData_New(HEAP_ID_BATTLE_HALL_APP);

    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_HALL_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_HALL_APP);

    LoadMainScreenBackground(app, BG_LAYER_MAIN_3);
    LoadPalette();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    LoadSubScreenBackground(app, BG_LAYER_SUB_0);
}

static void InitSpriteManager(BattleHallApp *app)
{
    BattleHallApp_InitSpriteManager(&app->spriteMan, Party_GetPokemonBySlotIndex(app->party, 0));
}

static void FreeBackgrounds(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Heap_Free(bgConfig);
}

static void VBlankCallback(void *data)
{
    BattleHallApp *app = data;

    if (app->monSummaryAppMan != NULL) {
        return;
    }

    if (app->plttData != NULL) {
        PaletteData_CommitFadedBuffers(app->plttData);
    }

    Bg_RunScheduledUpdates(app->bgConfig);
    VramTransfer_Process();
    RenderOam_Transfer();

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void SetGXBanks(void)
{
    GXBanks banks = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_01_FG
    };

    GXLayers_SetBanks(&banks);
}

static void InitBackgrounds(BgConfig *bgConfig)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate bgTemplate0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &bgTemplate0, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_BATTLE_HALL_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate bgTemplate1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0800,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplate1, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_BATTLE_HALL_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate bgTemplate3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x2000,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplate3, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_3);

    BgTemplate bgTemplateSub0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x3000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &bgTemplateSub0, BG_TYPE_STATIC);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
}

static void LoadMainScreenBackground(BattleHallApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_HALL_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_HALL_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_HALL_APP_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_HALL_APP);
}

static void LoadPalette(void)
{
    NNSG2dPaletteData *plttData;

    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_HALL_APP_PLTT, &plttData, HEAP_ID_BATTLE_HALL_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 6);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 6);
    Heap_Free(pltt);
}

static void LoadSubScreenBackground(BattleHallApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_HALL_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_HALL_APP);
    Graphics_LoadPaletteFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_PLTT, PAL_LOAD_SUB_BG, 0, 0x20, HEAP_ID_BATTLE_HALL_APP);
}

static u8 PrintMessage(BattleHallApp *app, Window *window, int messageID, u32 x, u32 y, u32 renderDelay, u8 textColor, u8 shadowColor, u8 bgColor, u8 fontID)
{
    Window_FillTilemap(window, bgColor);
    MessageLoader_GetString(app->msgLoader, messageID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    return Text_AddPrinterWithParamsAndColor(window, fontID, app->displayStr, x, y, renderDelay, TEXT_COLOR(textColor, shadowColor, bgColor), NULL);
}

static u8 PrintMessageAndCopyToVRAM(BattleHallApp *app, int messageID, u8 fontID)
{
    u8 printerID = PrintMessage(app, &app->windows[WINDOW_MSG_BOX], messageID, 1, 1, TEXT_SPEED_INSTANT, 1, 2, 15, fontID);
    Window_CopyToVRAM(&app->windows[WINDOW_MSG_BOX]);

    return printerID;
}

static void InitYesNoMenu(BattleHallApp *app, Window *window, u8 numOptions)
{
    for (int i = 0; i < 2; i++) {
        app->yesNoStrList[i].entry = NULL;
        app->yesNoStrList[i].index = 0;
    }

    app->yesNoMenuTemplate.choices = app->yesNoStrList;
    app->yesNoMenuTemplate.window = window;
    app->yesNoMenuTemplate.fontID = FONT_SYSTEM;
    app->yesNoMenuTemplate.xSize = 1;
    app->yesNoMenuTemplate.ySize = numOptions;
    app->yesNoMenuTemplate.lineSpacing = 0;
    app->yesNoMenuTemplate.suppressCursor = FALSE;
    app->yesNoMenuTemplate.loopAround = TRUE;
}

static void AddStringToYesNoMenu(BattleHallApp *app, u8 strIndex, u8 listIndex, int messageID)
{
    MessageLoader_GetString(app->msgLoader, messageID, app->yesNoStrs[strIndex]);

    app->yesNoStrList[strIndex].entry = app->yesNoStrs[strIndex];
    app->yesNoStrList[strIndex].index = listIndex;
}

static void OpenYesNoMenu(BattleHallApp *app)
{
    app->yesNoMenuOpen = TRUE;

    BattleHallApp_DrawWindow(app->bgConfig, &app->windows[WINDOW_YES_NO_MENU]);
    InitYesNoMenu(app, &app->windows[WINDOW_YES_NO_MENU], 2);
    AddStringToYesNoMenu(app, 0, 0, BattleHallScene_Text_Yes);
    AddStringToYesNoMenu(app, 1, 1, BattleHallScene_Text_No);

    app->yesNoMenu = Menu_NewAndCopyToVRAM(&app->yesNoMenuTemplate, 8, 0, 0, HEAP_ID_BATTLE_HALL_APP, PAD_BUTTON_B);
}

static void SetStringTemplateNumber(BattleHallApp *app, u32 idx, s32 num)
{
    StringTemplate_SetNumber(app->strTemplate, idx, num, 2, PADDING_MODE_NONE, CHARSET_MODE_EN);
}

static void PrintPokemonsName(BattleHallApp *app, Window *window, u32 x, u32 y, u8 textColor, u8 shadowColor, u8 bgColor, u8 fontID)
{
    u16 name[11];

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, 0);
    Pokemon_GetValue(mon, MON_DATA_SPECIES_NAME, name);
    Window_FillTilemap(window, bgColor);

    String *strBuf = String_Init(11, HEAP_ID_BATTLE_HALL_APP);
    String_CopyChars(strBuf, name);
    Text_AddPrinterWithParamsAndColor(window, fontID, strBuf, x, y, TEXT_SPEED_INSTANT, TEXT_COLOR(textColor, shadowColor, bgColor), NULL);
    String_Free(strBuf);
    Window_CopyToVRAM(window);
}

static void PrintTypeStrings(BattleHallApp *app, Window *window, u8 textColor, u8 shadowColor, u8 bgColor, u8 fontID)
{
    int row, col;

    Window_FillTilemap(window, bgColor);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEMON_TYPE_NAMES, HEAP_ID_BATTLE_HALL_APP);
    String *strBuf = String_Init(11, HEAP_ID_BATTLE_HALL_APP);

    for (row = 0; row < GRID_HEIGHT; row++) {
        for (col = 0; col < GRID_WIDTH; col++) {
            if (BattleHall_CursorPosToType(row * GRID_WIDTH + col) != BATTLE_HALL_MON_SUMMARY) {
                String_Clear(strBuf);
                MessageLoader_GetString(loader, BattleHall_CursorPosToType(row * GRID_WIDTH + col), strBuf);
                Text_AddPrinterWithParamsAndColor(window, fontID, strBuf, 1 + (COL_WIDTH * col), 16 + (ROW_HEIGHT * row), TEXT_SPEED_INSTANT, TEXT_COLOR(textColor, shadowColor, bgColor), NULL);
            }
        }
    }

    String_Free(strBuf);
    MessageLoader_Free(loader);
    Window_CopyToVRAM(window);
}

static void PrintRank(BattleHallApp *app, Window *window, u8 rank, u32 x, u32 y)
{
    FontSpecialChars_DrawPartyScreenHPText(app->specialChars, rank, 2, PADDING_MODE_NONE, window, x, y);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintTypesRanks(BattleHallApp *app, Window *window)
{
    for (int r = 0; r < GRID_HEIGHT; r++) {
        for (int c = 0; c < GRID_WIDTH; c++) {
            u8 type = BattleHall_CursorPosToType(r * GRID_WIDTH + c);

            if (type != BATTLE_HALL_MON_SUMMARY && type != TYPE_MYSTERY) {
                u8 v3 = r * GRID_WIDTH + c;
                u8 rank = BattleHall_GetRankOfType(GetCursorPos(v3), app->typeRanks) + 1;

                if (rank > MAX_RANK) {
                    rank = MAX_RANK;
                }

                PrintRank(app, window, rank, 18 + (COL_WIDTH * c), 4 + (ROW_HEIGHT * r));
            }
        }
    }
}

static void SetupMonSummaryApp(BattleHallApp *app)
{
    app->monSummary = Heap_Alloc(HEAP_ID_BATTLE_HALL_APP, sizeof(PokemonSummary));
    memset(app->monSummary, 0, sizeof(PokemonSummary));

    app->monSummary->monData = app->party;
    app->monSummary->dataType = SUMMARY_DATA_PARTY_MON;
    app->monSummary->options = app->options;
    app->monSummary->mode = SUMMARY_MODE_LOCK_MOVES;
    app->monSummary->monMax = Party_GetCurrentCount(app->party);
    app->monSummary->monIndex = 0;
    app->monSummary->move = 0;
    app->monSummary->dexMode = SaveData_GetDexMode(app->saveData);
    app->monSummary->showContest = PokemonSummaryScreen_ShowContestData(app->saveData);

    PokemonSummaryScreen_FlagVisiblePages(app->monSummary, sSummaryPages);
    PokemonSummaryScreen_SetPlayerProfile(app->monSummary, SaveData_GetTrainerInfo(app->saveData));
}

static void ChangeState(BattleHallApp *app, int *state, enum BattleHallAppState nextState)
{
    app->subState = 0;
    *state = nextState;
}

static void UpdateCursorPosition(BattleHallApp *app, int _)
{
    BOOL updateMade = FALSE;

    if (JOY_NEW(PAD_KEY_LEFT)) {
        if (BattleHall_CursorPosToType(app->cursorPos) != BATTLE_HALL_MON_SUMMARY) {
            app->prevCursorPos = app->cursorPos;
        }

        if (app->cursorPos % GRID_WIDTH == 0) {
            app->cursorPos += GRID_WIDTH - 1;
        } else if (BattleHall_CursorPosToType(app->cursorPos) == BATTLE_HALL_MON_SUMMARY) {
            app->cursorPos = 16;
        } else {
            app->cursorPos--;
        }

        updateMade = TRUE;
    }

    if (JOY_NEW(PAD_KEY_RIGHT)) {
        if (BattleHall_CursorPosToType(app->cursorPos) != BATTLE_HALL_MON_SUMMARY) {
            app->prevCursorPos = app->cursorPos;
        }

        if (app->cursorPos % GRID_WIDTH == GRID_WIDTH - 1) {
            app->cursorPos -= GRID_WIDTH - 1;
        } else if (BattleHall_CursorPosToType(app->cursorPos) == BATTLE_HALL_MON_SUMMARY) {
            app->cursorPos = 19;
        } else {
            app->cursorPos++;
        }

        updateMade = TRUE;
    }

    if (JOY_NEW(PAD_KEY_UP)) {
        if (BattleHall_CursorPosToType(app->cursorPos) != BATTLE_HALL_MON_SUMMARY) {
            app->prevCursorPos = app->cursorPos;
        }

        if (app->cursorPos < GRID_WIDTH) {
            app->cursorPos += GRID_WIDTH * (GRID_HEIGHT - 1);
        } else if (BattleHall_CursorPosToType(app->cursorPos) == BATTLE_HALL_MON_SUMMARY) {
            if (app->prevCursorPos == 16) {
                app->cursorPos = 13;
            } else if (app->prevCursorPos == 19) {
                app->cursorPos = 14;
            } else if (app->prevCursorPos == 13 || app->prevCursorPos == 1) {
                app->cursorPos = 13;
            } else if (app->prevCursorPos == 14 || app->prevCursorPos == 2) {
                app->cursorPos = 14;
            }
        } else {
            app->cursorPos -= GRID_WIDTH;
        }

        updateMade = TRUE;
    }

    if (JOY_NEW(PAD_KEY_DOWN)) {
        if (BattleHall_CursorPosToType(app->cursorPos) != BATTLE_HALL_MON_SUMMARY) {
            app->prevCursorPos = app->cursorPos;
        }

        if (app->cursorPos >= GRID_WIDTH * (GRID_HEIGHT - 1)) {
            app->cursorPos -= GRID_WIDTH * (GRID_HEIGHT - 1);
        } else if (BattleHall_CursorPosToType(app->cursorPos) == BATTLE_HALL_MON_SUMMARY) {
            if (app->prevCursorPos == 16) {
                app->cursorPos = 1;
            } else if (app->prevCursorPos == 19) {
                app->cursorPos = 2;
            } else if (app->prevCursorPos == 13 || app->prevCursorPos == 1) {
                app->cursorPos = 1;
            } else if (app->prevCursorPos == 14 || app->prevCursorPos == 2) {
                app->cursorPos = 2;
            }
        } else {
            app->cursorPos += GRID_WIDTH;
        }

        updateMade = TRUE;
    }

    if (updateMade == TRUE) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        BattleHallAppSprite_SetPosition(app->cursorSprite, GetCursorX(app), GetCursorY(app));
    }

    if (BattleHall_CursorPosToType(app->cursorPos) == BATTLE_HALL_MON_SUMMARY) {
        BattleHallAppSprite_SetAnim(app->cursorSprite, 2);
        BattleHallAppSprite_SetPosition(app->cursorSprite, 128, 168);
    } else {
        BattleHallAppSprite_SetAnim(app->cursorSprite, 1);
    }
}

static u16 GetCursorX(BattleHallApp *app)
{
    return (app->cursorPos % GRID_WIDTH) * COL_WIDTH + 32;
}

static u16 GetCursorY(BattleHallApp *app)
{
    return (app->cursorPos / GRID_WIDTH) * ROW_HEIGHT + 16;
}

static void GrayOutUnselectableCells(BattleHallApp *app, BgConfig *bgConfig)
{
    if (IsHallMatronBattleAvailable(app) == TRUE) {
        for (int i = 0; i < GRID_TOTAL_CELLS - 3; i++) {
            ChangeCellBackground(bgConfig, i, CELL_BACKGROUND_UNSELECTABLE);
        }
    } else {
        for (int i = 0; i < (NUM_POKEMON_TYPES - 1); i++) {
            if (BattleHall_GetRankOfType(i, app->typeRanks) >= 10) {
                ChangeCellBackground(bgConfig, i, CELL_BACKGROUND_UNSELECTABLE);
            }
        }

        ChangeCellBackground(bgConfig, GRID_TOTAL_CELLS - 1, CELL_BACKGROUND_UNSELECTABLE);
    }

    Bg_ScheduleTilemapTransfer(bgConfig, BG_LAYER_MAIN_3);
}

static void ChangeCellBackground(BgConfig *bgConfig, u8 boxIdx, u8 background)
{
    u8 x, y, height, palette;

    if (background == CELL_BACKGROUND_NORMAL) {
        palette = 0;
    } else if (background == CELL_BACKGROUND_SELECTED) {
        palette = 5;
    } else if (background == CELL_BACKGROUND_PARTNER_SELECTED) {
        palette = 4;
    } else {
        palette = 3;
    }

    u8 width = 8;
    x = (boxIdx % GRID_WIDTH) * width;

    if (boxIdx % (2 * GRID_WIDTH) < GRID_WIDTH) {
        height = 5;
    } else {
        height = 4;
    }

    if (boxIdx < GRID_WIDTH) {
        y = 0;
    } else if (boxIdx < GRID_WIDTH * 2) {
        y = 5;
    } else if (boxIdx < GRID_WIDTH * 3) {
        y = 9;
    } else if (boxIdx < GRID_WIDTH * 4) {
        y = 14;
    } else {
        y = 18;
    }

    Bg_ChangeTilemapRectPalette(bgConfig, BG_LAYER_MAIN_3, x, y, width, height, palette);

    // Update the color strip
    if (background == 0) {
        palette = 0;
        width = 1;
        x = (boxIdx % GRID_WIDTH) * 8;

        if (boxIdx % (2 * GRID_WIDTH) < 4) {
            height = 2;
        } else {
            height = 3;
        }

        if (boxIdx < GRID_WIDTH) {
            y = 2;
        } else if (boxIdx < (GRID_WIDTH * 2)) {
            y = 6;
        } else if (boxIdx < (GRID_WIDTH * 3)) {
            y = 11;
        } else if (boxIdx < (GRID_WIDTH * 4)) {
            y = 15;
        } else {
            y = 20;
        }

        if (boxIdx < 9) {
            Bg_ChangeTilemapRectPalette(bgConfig, BG_LAYER_MAIN_3, x, y, width, height, 1);
        } else {
            Bg_ChangeTilemapRectPalette(bgConfig, BG_LAYER_MAIN_3, x, y, width, height, 2);
        }
    }
}

static u8 GetCursorPos(u8 cursorPos)
{
    if (cursorPos >= 17) {
        return 17;
    }

    return cursorPos;
}

static BOOL NextOpponentIsHallMatron(BattleHallApp *app)
{
    if (app->challengeType == FRONTIER_CHALLENGE_SINGLE) {
        if (app->currentStreak == 50 || app->currentStreak == 170) {
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL IsHallMatronBattleAvailable(BattleHallApp *app)
{
    return app->matronBattleAvailable;
}

BOOL SendCommMessage(BattleHallApp *app, u16 cmd, u16 arg)
{
    if (!BattleHall_IsMultiPlayerChallenge(app->challengeType)) {
        return FALSE;
    }

    int commCmd;
    switch (cmd) {
    case COMM_CMD_DUMMY:
        commCmd = 39;
        DummyCreatePayload(app, cmd);
        break;
    case COMM_CMD_TYPE_SELECTION:
        commCmd = 40;
        CreateTypeSelectionPayload(app, cmd, arg);
        break;
    case COMM_CMD_PARTNER_DECISION:
        commCmd = 41;
        CreateDecisionPayload(app, cmd, arg);
        break;
    }

    return CommSys_SendData(commCmd, app->commPayload, 44) == TRUE;
}

static void DummyCreatePayload(BattleHallApp *app, u16 dummy)
{
    TrainerInfo *info = SaveData_GetTrainerInfo(app->saveData);
    app->commPayload[0] = dummy;
}

void BattleHall_DummyCommCommand(int netID, int unused, void *unused2, void *unused3)
{
    if (CommSys_CurNetId() == netID) {
        return;
    }
}

static void CreateTypeSelectionPayload(BattleHallApp *app, u16 cmd, u16 cursorPos)
{
    app->commPayload[0] = cmd;
    app->commPayload[1] = cursorPos;

    if (CommSys_CurNetId() == 0) {
        if (app->selectionID == 0xff) {
            app->selectionID = cursorPos;
        }
    }

    app->commPayload[2] = app->selectionID;
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, 0);
    app->commPayload[3] = Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL);
}

void BattleHall_HandleTypeSelectionMsg(int netID, int unused, void *data, void *context)
{
    BattleHallApp *app = context;
    const u16 *payload = data;

    app->numSelectionMsgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->partnersSelectedCell = payload[1];

    if (CommSys_CurNetId() == 0) {
        if (app->selectionID != 0xff) {
            app->partnersSelectedCell = 0;
        } else {
            app->selectionID = app->partnersSelectedCell + (4 * 5);
        }
    } else {
        app->selectionID = payload[2];
    }

    *app->partnersLevel = payload[3];
}

static void CreateDecisionPayload(BattleHallApp *app, u16 cmd, u16 decision)
{
    app->commPayload[0] = cmd;
    app->commPayload[1] = decision;
}

void BattleHall_HandlePartnerDecisionCmd(int netID, int unused, void *data, void *context)
{
    BattleHallApp *app = context;
    const u16 *payload = data;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    if (payload[1] == PARTNER_DECISION_PENDING) {
        return;
    }

    app->partnersDecision = payload[1];
}

static void FreeYesNoMenu(BattleHallApp *app)
{
    if (app->yesNoMenuOpen == TRUE) {
        app->yesNoMenuOpen = FALSE;
        Menu_Free(app->yesNoMenu, NULL);
        Window_EraseStandardFrame(app->yesNoMenuTemplate.window, FALSE);
    }
}

static void DrawMessageWithYesNoMenu(BattleHallApp *app)
{

    BattleHallAppSprite_SetDrawFlag(app->monSprite, FALSE);
    BattleHallApp_DrawMessageBox(&app->windows[WINDOW_MSG_BOX], Options_Frame(app->options));
    StringTemplate_SetPokemonTypeName(app->strTemplate, 0, BattleHall_CursorPosToType(app->cursorPos));

    u8 rank = BattleHall_GetRankOfType(GetCursorPos(app->cursorPos), app->typeRanks) + 1;

    if (rank > MAX_RANK) {
        rank = MAX_RANK;
    }

    SetStringTemplateNumber(app, 1, rank);

    int messageID = IsHallMatronBattleAvailable(app) == TRUE ? BattleHallScene_Text_BattleHallMatron : BattleHallScene_Text_ConfirmSelection;
    app->printerID = PrintMessageAndCopyToVRAM(app, messageID, FONT_MESSAGE);

    BattleHallAppSprite_SetAnim(app->cursorSprite, 0);
    OpenYesNoMenu(app);
}

static void DeselectCell(BattleHallApp *app)
{
    DrawMonSpriteAndName(app);
    ChangeCellBackground(app->bgConfig, app->cursorPos, CELL_BACKGROUND_NORMAL);

    Bg_ScheduleTilemapTransfer(app->bgConfig, BG_LAYER_MAIN_3);
    BattleHallAppSprite_SetAnim(app->cursorSprite, 1);
}

static void DrawMonSpriteAndName(BattleHallApp *app)
{
    BattleHallAppSprite_SetDrawFlag(app->monSprite, TRUE);
    Window_EraseMessageBox(&app->windows[WINDOW_MSG_BOX], FALSE);

    PrintPokemonsName(app, &app->windows[WINDOW_MON_NAME], 0, 0, 1, 2, 0, FONT_SYSTEM);
}
