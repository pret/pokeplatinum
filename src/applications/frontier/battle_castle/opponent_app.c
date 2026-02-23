#include "applications/frontier/battle_castle/opponent_app.h"

#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/scrcmd.h"

#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_defs/battle_frontier.h"

#include "applications/frontier/battle_castle/helpers.h"
#include "applications/frontier/battle_castle/sprite_manager.h"
#include "applications/frontier/battle_castle/sprites.h"
#include "applications/frontier/battle_castle/windows.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/struct_ov104_0223597C.h"

#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "font.h"
#include "font_special_chars.h"
#include "game_options.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "narc_frontier_bg.h"
#include "overlay_manager.h"
#include "palette.h"
#include "party.h"
#include "pokemon.h"
#include "pokemon_icon.h"
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
#include "unk_020302D0.h"
#include "unk_0203061C.h"
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0205DFC4.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

#include "res/text/bank/battle_castle_opponent_app.h"

FS_EXTERN_OVERLAY(overlay104);

#define NUM_MONS_MAX 4

#define LEVEL_ADJUSTMENT_NONE   0
#define LEVEL_ADJUSTMENT_UP_5   1
#define LEVEL_ADJUSTMENT_DOWN_5 2

#define CP_COST_CHECK_IDENTITY 1
#define CP_COST_LEVEL_UP       1
#define CP_COST_LEVEL_DOWN     15
#define CP_COST_SHOW_STATS     2
#define CP_COST_SHOW_MOVES     5
#define CP_COST_RANK_UP        50

#define MENU_ENTRY_CHECK           0
#define MENU_ENTRY_LEVEL           1
#define MENU_ENTRY_SUMMARY         2
#define MENU_ENTRY_STATS           3
#define MENU_ENTRY_MOVES           4
#define MENU_ENTRY_RANK_UP_SUMMARY 5

#define COMM_CMD_PLAYER_INFO   20
#define COMM_CMD_PURCHASE_INFO 21
#define COMM_CMD_UPDATE_CURSOR 22
#define COMM_CMD_EXIT_APP      23

enum BattleCastleAppState {
    STATE_FADE_IN = 0,
    STATE_MAIN_FLOW,
    STATE_SYNC_PURCHASE,
    STATE_SYNC_BEFORE_EXIT,
    STATE_FADE_OUT
};

enum BattleCastleAppMainSubState {
    MAIN_SUBSTATE_INIT = 0,
    MAIN_SUBSTATE_SELECT_MON,
    MAIN_SUBSTATE_MON_OPTIONS_MENU,
    MAIN_SUBSTATE_REVEAL_MON_SLOT_YES_NO,
    MAIN_SUBSTATE_CHANGE_LEVEL_MENU,
    MAIN_SUBSTATE_CHANGE_LEVEL_YES_NO,
    MAIN_SUBSTATE_SUMMARY_MENU,
    MAIN_SUBSTATE_UNLOCK_MONS_STATS_YES_NO,
    MAIN_SUBSTATE_UNLOCK_MONS_MOVES_YES_NO,
    MAIN_SUBSTATE_RANK_UP_SUMMARY_YES_NO,
    MAIN_SUBSTATE_WAIT_RANK_UP_SUMMARY_MSG,
    MAIN_SUBSTATE_UPDATE_AFTER_OPTION_PURCHASE,
    MAIN_SUBSTATE_UPDATE_AFTER_SUMMARY_PURCHASE,
    MAIN_SUBSTATE_SHOW_SUMMARY_DISPLAY,
    MAIN_SUBSTATE_WAIT_RETURN_TO_SUMMARY_MENU,
    MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION,
    MAIN_SUBSTATE_SHOW_STATS_DISPLAY,
    MAIN_SUBSTATE_SHOW_MOVES_DISPLAY,
};

typedef struct BattleCastleOpponentApp {
    ApplicationManager *appMan;
    BattleFrontier *frontier;
    u8 subState;
    u8 challengeType;
    u8 printerID;
    u8 unused;
    u8 previousSlot;
    u8 selectedMonSlot;
    u8 levelAdjustment;
    u8 arrowSpriteVisible : 1;
    u8 listMenuIsOpen : 1;
    u8 simpleMenuIsOpen : 1;
    u8 syncPurchaseState : 5;
    u8 syncPurchaseAction;
    u8 slotID;
    u8 selectedLevelAdjustment;
    u8 selectedMenuEntry;
    u8 numSlots;
    u8 exitSlot;
    u8 syncDelay;
    u8 msgsReceived;
    u16 menuPos;
    u16 unused2;
    u16 monMenuListPos;
    u16 monMenuCursorPos;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    String *simpleMenuStr[3];
    u16 unused3[8];
    BgConfig *bgConfig;
    Window windows[NUM_OPPONENT_APP_WINDOWS];
    MenuTemplate simpleMenuTemplate;
    Menu *simpleMenu;
    StringList simpleStrList[3];
    ListMenu *listMenu;
    StringList *listMenuStrList;
    PaletteData *plttData;
    FontSpecialCharsContext *specialChars;
    Options *options;
    SaveData *saveData;
    UnkStruct_020302DC *unk_150;
    UnkStruct_0203041C *unk_154;
    BattleCastleAppSpriteManager spriteMan;
    BattleCastleAppSprite *monSprites[NUM_MONS_MAX];
    BattleCastleAppSprite *ballSprites[NUM_MONS_MAX];
    BattleCastleAppSprite *arrowSprite;
    BattleCastleAppSprite *cursorSprite;
    BattleCastleAppSprite *partnerCursorSprite;
    BattleCastleAppSprite *barSprites[NUM_MONS_MAX];
    BattleCastleAppSprite *flagSprites[NUM_MONS_MAX][2];
    BattleCastleAppSprite *sparklesSprite;
    u16 *selectedMonSlotPtr;
    u8 *identityUnlockedForSlot;
    u8 *levelAdjustmentForSlot;
    u8 *statsUnlockedForSlot;
    u8 *movesUnlockedForSlot;
    Party *opponentsParty;
    NARC *narc;
    u16 commPayload[40];
    u8 partnersSelectedSlot;
    u8 partnerSlot;
    u8 partnerIsExiting;
    u8 partnersRanks[BATTLE_CASTLE_NUM_RANK_TYPES];
    u16 partnersCP;
    u32 unused4;
} BattleCastleOpponentApp;

static BOOL State_FadeInApp(BattleCastleOpponentApp *app);
static BOOL State_MainAppFlow(BattleCastleOpponentApp *app);
static BOOL State_SyncPurchase(BattleCastleOpponentApp *app);
static BOOL State_SyncBeforeExit(BattleCastleOpponentApp *app);
static BOOL State_FadeOutApp(BattleCastleOpponentApp *app);
static void ChangeState(BattleCastleOpponentApp *app, int *state, enum BattleCastleAppState newState);

static void LoadAssets(BattleCastleOpponentApp *app);
static void InitGraphicsPlane(void);
static void InitSpriteManager(BattleCastleOpponentApp *app);
static void InitBackgrounds(BgConfig *bgConfig);
static void LoadBackgrounds(BattleCastleOpponentApp *app);
static void LoadMainBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer);
static void LoadPalette(void);
static void LoadSummaryBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer);
static void LoadMovesListBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer);
static void LoadPalette2(void);
static void LoadSubScreenBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer);
static void SetGXBanks(void);
static void VBlankCallback(void *data);
static void ShowAppMainDisplay(BattleCastleOpponentApp *app);

static void FreeAssets(BattleCastleOpponentApp *app);
static void FreeBackgrounds(BgConfig *bgConfig);

static u8 PrintLeftAlignedMessageWithBg(BattleCastleOpponentApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font);
static u8 PrintMessageWithBg(BattleCastleOpponentApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, enum TextAlignment alignment);
static u8 PrintLeftAlignedMessage(BattleCastleOpponentApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font);
static u8 PrintMessage(BattleCastleOpponentApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, enum TextAlignment alignment);
static u8 PrintMessageAndCopyToVRAM(BattleCastleOpponentApp *app, int entryID, u8 font);
static void PrintPokemonSummary(BattleCastleOpponentApp *app, Window *window, Pokemon *mon);
static void PrintStaticMessage(BattleCastleOpponentApp *app, Window *window, int entryID, u16 xOffset, u16 yOffset, enum TextAlignment alignment);
static void PrintAllMoves(BattleCastleOpponentApp *app, Window *window, Pokemon *mon);
static void PrintMoveInfo(BattleCastleOpponentApp *app, Window *window, u8 idx, u32 moveNameEntryID, u32 ppEntryID, Pokemon *mon, u32 moveParam, u32 ppParam, u32 maxPpParam);
static void PrintAllMonsHP(BattleCastleOpponentApp *app, Window *window);
static void PrintAllMonsLevelAndGender(BattleCastleOpponentApp *app, Window *window);
static void SetStringTemplateNumber(BattleCastleOpponentApp *app, u32 idx, s32 num, u32 maxDigits, enum PaddingMode paddingMode);
static void SetStringTemplateSpecies(BattleCastleOpponentApp *app, u32 idx, BoxPokemon *boxMon);
static void PrintPlayerName(BattleCastleOpponentApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font);
static void PrintPartnersName(BattleCastleOpponentApp *app, Window *window, u32 xOffset, u32 yOffset, u8 unused);
static void PrintGenderSymbol(BattleCastleOpponentApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font, u8 gender);
static void PrintMonSelectionStrings(BattleCastleOpponentApp *app);
static void PrintPlayersAndPartnersCastlePoints(BattleCastleOpponentApp *app, Window *window);
static void PrintCostOfLevelAdjustment(BattleCastleOpponentApp *app, u8 adjustment);
static void PrintPlayersAndPartnersNames(BattleCastleOpponentApp *app, Window *window);

static void InitSimpleMenu(BattleCastleOpponentApp *app, Window *window, u8 numOptions);
static void AddStringToSimpleMenu(BattleCastleOpponentApp *app, u8 strIndex, u8 listIndex, int entryID);
static void OpenYesNoMenu(BattleCastleOpponentApp *app);
static void OpenLevelMenu(BattleCastleOpponentApp *app);
static void InitMonOptionsMenu(BattleCastleOpponentApp *app);
static void UpdateMonMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit);
static void InitSummaryMenu(BattleCastleOpponentApp *app);
static void UpdateSummaryMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit);
static void SetSummaryMenuEntryColor(ListMenu *menu, u32 item, u8 yOffset);
static void SetStringTemplatePlayerName(BattleCastleOpponentApp *app, u32 idx);
static void CloseMonSelectionMessageBox(BattleCastleOpponentApp *app);
static void OpenMonOptionsMenu(BattleCastleOpponentApp *app);
static void OpenSummaryMenu(BattleCastleOpponentApp *app);

static void CloseListMenu(BattleCastleOpponentApp *app);
static void FreeListMenu2(BattleCastleOpponentApp *app);

static void UpdateSelectedMon(BattleCastleOpponentApp *app, int unused);
static void UpdateCursorPosition(BattleCastleOpponentApp *app);
static void UpdateCursorSprite(BattleCastleOpponentApp *app, u8 slot, u8 isPartners);
static void GetCursorSpritePos(BattleCastleOpponentApp *app, u32 *x, u32 *y, u8 slot);
static void GetOffsetsForPlayerInfo(BattleCastleOpponentApp *app, u16 *playerX, u16 *playerY, u16 *partnerX, u16 *partnerY);
static BOOL UpdateAfterPurchase(BattleCastleOpponentApp *app, u8 selectedSlot, u8 menuOption);
static BOOL UpdateAfterSyncPurchase(BattleCastleOpponentApp *app, u8 selectedSlot, u8 menuOption);
static u16 GetCostOfLevelAdjustment(u8 adjustment);
static void ChangeSelectedMonOnSummaryDisplay(BattleCastleOpponentApp *app, s8 step);
static void ChangeSelectedMonOnMoveDisplay(BattleCastleOpponentApp *app, s8 step);
static void CloseAllSubDisplays(BattleCastleOpponentApp *app);
static void CloseMessageBox(Window *window);
static void CloseSummaryScreen(BattleCastleOpponentApp *app);
static BOOL SendCommMessage(BattleCastleOpponentApp *app, u16 cmd, u16 slot);
static void CreatePlayerInfoPayload(BattleCastleOpponentApp *app, u16 cmd);
static void CreatePurchaseInfoPayload(BattleCastleOpponentApp *app, u16 cmd, u16 slot);
static void CreateUpdateCursorPayload(BattleCastleOpponentApp *app, u16 cmd);
static void CreateExitAppPayload(BattleCastleOpponentApp *app);
static void ShowMonSummary(BattleCastleOpponentApp *app, u8 slot);
static void UnlockStatsForSlot(BattleCastleOpponentApp *app, u8 slot);
static void BuyStatsDisplay(BattleCastleOpponentApp *app, u8 slot);
static void ShowMovesList(BattleCastleOpponentApp *app, u8 slot);
static void UnlockMovesForSlot(BattleCastleOpponentApp *app, u8 slot);
static void BuyMovesListDisplay(BattleCastleOpponentApp *app, u8 slot);
static void FreeSimpleMenu(BattleCastleOpponentApp *app);
static void DrawMessageBox(BattleCastleOpponentApp *app);
static void SpendCastlePointsInSync(BattleCastleOpponentApp *app, u8 slotID, u8 menuOption);
static void RevealPokemonInSlot(BattleCastleOpponentApp *app, u8 slot);
static void UpdateLevelAdjustment(BattleCastleOpponentApp *app, u8 slot, u8 adjustment);
static void FreeListMenu(BattleCastleOpponentApp *app);
static void UpdatePokemonGraphics(BattleCastleOpponentApp *app);
static BOOL TryToBuySummaryScreen(BattleCastleOpponentApp *app, u16 cost, u16 failureEntryID);
static void IncreaseRank(BattleCastleOpponentApp *app, u8 slot, u8 menuOption);
static void UpdateAllFlagSprites(BattleCastleOpponentApp *app);
static void UpdateFlagSprites(BattleCastleOpponentApp *app, u8 slot);
static void GetFlagSpritesOffsets(BattleCastleOpponentApp *app, u32 *x, u32 *y);

BOOL BattleCastleOpponentApp_Init(ApplicationManager *appMan, int *state)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), OVERLAY_LOAD_ASYNC);
    InitGraphicsPlane();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE_CASTLE_APP, 0x20000);

    BattleCastleOpponentApp *app = ApplicationManager_NewData(appMan, sizeof(BattleCastleOpponentApp), HEAP_ID_BATTLE_CASTLE_APP);
    memset(app, 0, sizeof(BattleCastleOpponentApp));

    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_CASTLE_APP);
    app->appMan = appMan;

    UnkStruct_ov104_0223597C *v2 = ApplicationManager_Args(appMan);

    app->saveData = v2->saveData;
    app->unk_150 = sub_020302DC(app->saveData);
    app->unk_154 = sub_0203041C(app->saveData);
    app->challengeType = v2->unk_04;
    app->selectedMonSlotPtr = &v2->unk_20;
    app->options = SaveData_GetOptions(app->saveData);
    app->opponentsParty = v2->unk_1C;
    app->identityUnlockedForSlot = &v2->unk_08[0];
    app->levelAdjustmentForSlot = &v2->unk_0C[0];
    app->statsUnlockedForSlot = &v2->unk_10[0];
    app->movesUnlockedForSlot = &v2->unk_14[0];
    app->slotID = 0xff;
    app->partnersCP = v2->unk_28;
    app->frontier = SaveData_GetBattleFrontier(app->saveData);

    for (int i = 0; i < BATTLE_CASTLE_NUM_RANK_TYPES; i++) {
        app->partnersRanks[i] = 1;
    }

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == FALSE) {
        app->numSlots = 3;
    } else {
        app->numSlots = 4;
    }

    app->exitSlot = app->numSlots;
    app->previousSlot = app->exitSlot - 1;
    app->partnersSelectedSlot = 0;

    LoadAssets(app);

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        sub_0209BA80(app);
    }

    *state = 0;

    return TRUE;
}

BOOL BattleCastleOpponentApp_Main(ApplicationManager *appMan, int *state)
{
    BattleCastleOpponentApp *app = ApplicationManager_Data(appMan);

    if (app->partnerIsExiting == TRUE) {
        switch (*state) {
        case STATE_MAIN_FLOW:
            app->partnerIsExiting = FALSE;
            CloseAllSubDisplays(app);
            CloseSummaryScreen(app);

            if (app->arrowSprite != NULL) {
                BattleCastleAppSprite_Free(app->arrowSprite);
                app->arrowSpriteVisible = FALSE;
            }

            BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
            BattleFrontier_SetPartnerInStrTemplate(app->strTemplate, 0);
            app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_PartnerChoseToExit, FONT_MESSAGE);
            ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
            break;
        }
    } else if (app->slotID != 0xff) {
        switch (*state) {
        case STATE_MAIN_FLOW:
        case STATE_SYNC_BEFORE_EXIT:
            app->partnerIsExiting = FALSE;
            CloseAllSubDisplays(app);
            CloseSummaryScreen(app);
            ChangeState(app, state, STATE_SYNC_PURCHASE);
            break;
        }
    }

    switch (*state) {
    case STATE_FADE_IN:
        if (State_FadeInApp(app) == TRUE) {
            ChangeState(app, state, STATE_MAIN_FLOW);
        }
        break;
    case STATE_MAIN_FLOW:
        if (State_MainAppFlow(app) == TRUE) {
            if (app->syncPurchaseAction == TRUE) {
                ChangeState(app, state, STATE_SYNC_PURCHASE);
            } else {
                if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
                    ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
                } else {
                    ChangeState(app, state, STATE_FADE_OUT);
                }
            }
        }
        break;
    case STATE_SYNC_PURCHASE:
        if (State_SyncPurchase(app) == TRUE) {
            ChangeState(app, state, STATE_MAIN_FLOW);
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
    }

    UpdatePokemonGraphics(app);
    SpriteList_Update(app->spriteMan.spriteList);

    return FALSE;
}

BOOL BattleCastleOpponentApp_Exit(ApplicationManager *appMan, int *state)
{
    BattleCastleOpponentApp *app = ApplicationManager_Data(appMan);

    *app->selectedMonSlotPtr = app->selectedMonSlot;

    VramTransfer_Free();
    FreeAssets(app);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BATTLE_CASTLE_APP);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return TRUE;
}

static BOOL State_FadeInApp(BattleCastleOpponentApp *app)
{
    switch (app->subState) {
    case 0:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(216);
        }

        app->subState++;
        break;
    case 1:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (CommTiming_IsSyncState(216) == TRUE) {
                CommTool_ClearReceivedTempDataAllPlayers();
                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 2:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (SendCommMessage(app, COMM_CMD_PLAYER_INFO, 0) == TRUE) {
                app->subState++;
            }
        } else {
            ShowAppMainDisplay(app);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_CASTLE_APP);
            app->subState++;
        }
        break;
    case 3:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (app->msgsReceived >= 2) {
                app->msgsReceived = 0;

                ShowAppMainDisplay(app);
                StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_CASTLE_APP);

                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 4:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void ShowAppMainDisplay(BattleCastleOpponentApp *app)
{
    u16 unused, unusd2, unused3, unused4;

    GetOffsetsForPlayerInfo(app, &unused, &unusd2, &unused3, &unused4);
    Window *window = &app->windows[OPPONENT_APP_WINDOW_HEADER];

    Window_FillTilemap(window, 0);

    PrintPlayersAndPartnersNames(app, window);
    PrintPlayersAndPartnersCastlePoints(app, window);
    PrintAllMonsHP(app, &app->windows[OPPONENT_APP_WINDOW_HP_BARS]);
    PrintAllMonsLevelAndGender(app, &app->windows[OPPONENT_APP_WINDOW_LEVELS]);
    PrintMonSelectionStrings(app);
    GXLayers_TurnBothDispOn();
}

static BOOL State_MainAppFlow(BattleCastleOpponentApp *app)
{
    u16 currentCP, cost;
    u32 rank, input;

    switch (app->subState) {
    case MAIN_SUBSTATE_INIT:
        app->unused = 0;
        app->subState = MAIN_SUBSTATE_SELECT_MON;

        if (app->syncPurchaseState == 1) {
            CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
            PrintMonSelectionStrings(app);
        } else if (app->syncPurchaseState == 2) {
            CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
            OpenSummaryMenu(app);
            BattleCastleAppSprite_PlaySparkleAnim(app->sparklesSprite, 211, 105);

            app->subState = MAIN_SUBSTATE_SUMMARY_MENU;
        } else if (app->syncPurchaseState == 3) {
            app->subState = MAIN_SUBSTATE_SHOW_SUMMARY_DISPLAY;
        }

        app->syncPurchaseState = 0;
        break;
    case MAIN_SUBSTATE_SELECT_MON:
        UpdateSelectedMon(app, gSystem.pressedKeys);

        if (JOY_NEW(PAD_BUTTON_A)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (app->selectedMonSlot >= app->exitSlot) {
                return TRUE;
            } else {
                CloseMonSelectionMessageBox(app);
                OpenMonOptionsMenu(app);
                app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
            }
        } else if (JOY_NEW(PAD_BUTTON_B)) {
            if (app->selectedMonSlot != app->exitSlot) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                app->selectedMonSlot = app->exitSlot;
                UpdateCursorPosition(app);
            }
        }
        break;
    case MAIN_SUBSTATE_MON_OPTIONS_MENU:
        input = ListMenu_ProcessInput(app->listMenu);
        BattleCastleApp_PlaySound(input, SEQ_SE_CONFIRM);
        ListMenu_CalcTrueCursorPos(app->listMenu, &app->menuPos);

        switch (input) {
        case LIST_NOTHING_CHOSEN:
            break;
        case LIST_CANCEL:
            CloseListMenu(app);
            PrintMonSelectionStrings(app);
            app->subState = MAIN_SUBSTATE_INIT;
            break;
        case MENU_ENTRY_CHECK:
            app->selectedMenuEntry = input;

            if (!app->identityUnlockedForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot)]) {
                CloseListMenu(app);

                DrawMessageBox(app);
                SetStringTemplateNumber(app, 0, CP_COST_CHECK_IDENTITY, 4, PADDING_MODE_NONE);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_IdentifyForCP, FONT_MESSAGE);
                OpenYesNoMenu(app);
                app->subState = MAIN_SUBSTATE_REVEAL_MON_SLOT_YES_NO;
            } else {
                CloseListMenu(app);

                Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot));
                DrawMessageBox(app);
                SetStringTemplateSpecies(app, 0, Pokemon_GetBoxPokemon(mon));

                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_IdentityRevealed, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION;
            }
            break;
        case MENU_ENTRY_LEVEL:
            app->selectedMenuEntry = input;
            CloseListMenu(app);

            Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot));

            DrawMessageBox(app);
            SetStringTemplateSpecies(app, 0, Pokemon_GetBoxPokemon(mon));

            app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_MayChangeLevel, FONT_MESSAGE);
            OpenLevelMenu(app);
            app->subState = MAIN_SUBSTATE_CHANGE_LEVEL_MENU;
            break;
        case MENU_ENTRY_SUMMARY:
            CloseListMenu(app);
            OpenSummaryMenu(app);
            app->subState = MAIN_SUBSTATE_SUMMARY_MENU;
            break;
        case 6:
            CloseListMenu(app);
            PrintMonSelectionStrings(app);
            app->subState = MAIN_SUBSTATE_INIT;
            break;
        }
        break;
    case MAIN_SUBSTATE_REVEAL_MON_SLOT_YES_NO:
        input = Menu_ProcessInput(app->simpleMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            FreeSimpleMenu(app);
            CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);

            currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));

            if (currentCP < CP_COST_CHECK_IDENTITY) {
                DrawMessageBox(app);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_NotEnoughCP3, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION;
                break;
            }

            if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
                ov104_0223BC2C(app->frontier, app->challengeType, CP_COST_CHECK_IDENTITY);
                PrintPlayersAndPartnersCastlePoints(app, &app->windows[OPPONENT_APP_WINDOW_HEADER]);
                RevealPokemonInSlot(app, app->selectedMonSlot);
                app->subState = MAIN_SUBSTATE_UPDATE_AFTER_OPTION_PURCHASE;
            } else {
                app->syncPurchaseAction = TRUE;
                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCELED:
            FreeSimpleMenu(app);
            CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
            OpenMonOptionsMenu(app);
            app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
            break;
        }
        break;
    case MAIN_SUBSTATE_CHANGE_LEVEL_MENU:
        input = Menu_ProcessInput(app->simpleMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case 0:
            FreeSimpleMenu(app);
            currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));

            if (app->levelAdjustmentForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot)] == LEVEL_ADJUSTMENT_UP_5) {
                DrawMessageBox(app);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_LevelCantGoHigher, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION;
                break;
            } else {
                PrintCostOfLevelAdjustment(app, LEVEL_ADJUSTMENT_UP_5);
                app->subState = MAIN_SUBSTATE_CHANGE_LEVEL_YES_NO;
            }
            break;
        case 1:
            FreeSimpleMenu(app);
            currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));

            if (app->levelAdjustmentForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot)] == LEVEL_ADJUSTMENT_DOWN_5) {
                DrawMessageBox(app);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_LevelCantGoLower, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION;
                break;
            } else {
                PrintCostOfLevelAdjustment(app, LEVEL_ADJUSTMENT_DOWN_5);
                app->subState = MAIN_SUBSTATE_CHANGE_LEVEL_YES_NO;
            }
            break;
        case 2:
        case MENU_CANCELED:
            FreeSimpleMenu(app);
            CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
            OpenMonOptionsMenu(app);
            app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
            break;
        }
        break;
    case MAIN_SUBSTATE_CHANGE_LEVEL_YES_NO:
        input = Menu_ProcessInput(app->simpleMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            FreeSimpleMenu(app);

            currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));
            cost = GetCostOfLevelAdjustment(app->levelAdjustment);

            if (currentCP < cost) {
                DrawMessageBox(app);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_NotEnoughCP3, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION;
                return FALSE;
            }

            app->selectedLevelAdjustment = app->levelAdjustment;

            if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
                CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
                ov104_0223BC2C(app->frontier, app->challengeType, GetCostOfLevelAdjustment(app->levelAdjustment));
                PrintPlayersAndPartnersCastlePoints(app, &app->windows[OPPONENT_APP_WINDOW_HEADER]);
                UpdateLevelAdjustment(app, app->selectedMonSlot, app->levelAdjustment);
                app->subState = MAIN_SUBSTATE_UPDATE_AFTER_OPTION_PURCHASE;
            } else {
                app->syncPurchaseAction = TRUE;
                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCELED:
            FreeSimpleMenu(app);
            CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
            OpenMonOptionsMenu(app);
            app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
            break;
        }
        break;
    case MAIN_SUBSTATE_SUMMARY_MENU:
        input = ListMenu_ProcessInput(app->listMenu);
        BattleCastleApp_PlaySound(input, SEQ_SE_CONFIRM);
        ListMenu_CalcTrueCursorPos(app->listMenu, &app->menuPos);

        switch (input) {
        case LIST_NOTHING_CHOSEN:
            break;
        case LIST_CANCEL:
            CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
            FreeListMenu2(app);
            OpenMonOptionsMenu(app);
            app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
            break;
        case MENU_ENTRY_STATS:
            app->selectedMenuEntry = input;
            FreeListMenu2(app);

            if (!app->statsUnlockedForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot)]) {
                DrawMessageBox(app);
                SetStringTemplateNumber(app, 0, CP_COST_SHOW_STATS, 4, PADDING_MODE_NONE);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_CanCheckStats, FONT_MESSAGE);
                OpenYesNoMenu(app);
                app->subState = MAIN_SUBSTATE_UNLOCK_MONS_STATS_YES_NO;
            } else {
                ShowMonSummary(app, app->selectedMonSlot);
                app->subState = MAIN_SUBSTATE_SHOW_STATS_DISPLAY;
            }
            break;
        case MENU_ENTRY_MOVES:
            app->selectedMenuEntry = input;
            FreeListMenu2(app);

            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_OPPONENT_SUMMARY);

            if (rank == 1) {
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_TooLowForMoveList, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_SUMMARY_MENU;
                return FALSE;
            }

            if (!app->movesUnlockedForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot)]) {
                DrawMessageBox(app);
                SetStringTemplateNumber(app, 0, CP_COST_SHOW_MOVES, 4, PADDING_MODE_NONE);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_MayCheckMoveList, FONT_MESSAGE);
                OpenYesNoMenu(app);
                app->subState = MAIN_SUBSTATE_UNLOCK_MONS_MOVES_YES_NO;
            } else {
                ShowMovesList(app, app->selectedMonSlot);
                app->subState = MAIN_SUBSTATE_SHOW_MOVES_DISPLAY;
            }
            break;
        case MENU_ENTRY_RANK_UP_SUMMARY:
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_OPPONENT_SUMMARY);

            if (rank == 2) {
                Sound_StopEffect(SEQ_SE_CONFIRM, 0);
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            } else {
                app->selectedMenuEntry = input;
                FreeListMenu2(app);

                currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));

                SetStringTemplateNumber(app, 0, CP_COST_RANK_UP, 4, PADDING_MODE_NONE);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_RankUpForCP, FONT_MESSAGE);

                OpenYesNoMenu(app);
                app->subState = MAIN_SUBSTATE_RANK_UP_SUMMARY_YES_NO;
            }
            break;
        }
        break;
    case MAIN_SUBSTATE_UNLOCK_MONS_STATS_YES_NO:
        input = Menu_ProcessInput(app->simpleMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            if (TryToBuySummaryScreen(app, CP_COST_SHOW_STATS, BattleCastleOpponentApp_Text_NotEnoughCP) == TRUE) {
                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCELED:
            FreeSimpleMenu(app);
            OpenSummaryMenu(app);
            app->subState = MAIN_SUBSTATE_SUMMARY_MENU;
            break;
        }
        break;
    case MAIN_SUBSTATE_UNLOCK_MONS_MOVES_YES_NO:
        input = Menu_ProcessInput(app->simpleMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            if (TryToBuySummaryScreen(app, CP_COST_SHOW_MOVES, BattleCastleOpponentApp_Text_NotEnoughCP2) == TRUE) {
                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCELED:
            FreeSimpleMenu(app);
            OpenSummaryMenu(app);
            app->subState = MAIN_SUBSTATE_SUMMARY_MENU;
            break;
        }
        break;
    case MAIN_SUBSTATE_RANK_UP_SUMMARY_YES_NO:
        input = Menu_ProcessInput(app->simpleMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            FreeSimpleMenu(app);

            currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_OPPONENT_SUMMARY);

            if (currentCP < CP_COST_RANK_UP) {
                FreeSimpleMenu(app);
                BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_NotEnoughCP2, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_SUMMARY_MENU;
                break;
            }

            if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
                IncreaseRank(app, app->selectedMonSlot, MENU_ENTRY_RANK_UP_SUMMARY);
                app->subState = MAIN_SUBSTATE_WAIT_RANK_UP_SUMMARY_MSG;
                break;
            } else {
                app->syncPurchaseAction = TRUE;
                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCELED:
            FreeSimpleMenu(app);
            OpenSummaryMenu(app);
            app->subState = MAIN_SUBSTATE_SUMMARY_MENU;
            break;
        }
        break;
    case MAIN_SUBSTATE_WAIT_RANK_UP_SUMMARY_MSG:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            FreeSimpleMenu(app);
            OpenSummaryMenu(app);
            BattleCastleAppSprite_PlaySparkleAnim(app->sparklesSprite, 211, 105);
            app->subState = MAIN_SUBSTATE_SUMMARY_MENU;
        }
        break;
    case MAIN_SUBSTATE_UPDATE_AFTER_OPTION_PURCHASE:
        if (UpdateAfterPurchase(app, app->selectedMonSlot, app->selectedMenuEntry) == TRUE) {
            app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION;
        }
        break;
    case MAIN_SUBSTATE_UPDATE_AFTER_SUMMARY_PURCHASE:
        if (UpdateAfterPurchase(app, app->selectedMonSlot, app->selectedMenuEntry) == TRUE) {
            app->subState = MAIN_SUBSTATE_SHOW_SUMMARY_DISPLAY;
        }
        break;
    case MAIN_SUBSTATE_SHOW_SUMMARY_DISPLAY:
        if (app->selectedMenuEntry == MENU_ENTRY_STATS) {
            app->subState = MAIN_SUBSTATE_SHOW_STATS_DISPLAY;
        } else {
            app->subState = MAIN_SUBSTATE_SHOW_MOVES_DISPLAY;
        }
        break;
    case MAIN_SUBSTATE_WAIT_RETURN_TO_SUMMARY_MENU:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            OpenSummaryMenu(app);
            app->subState = MAIN_SUBSTATE_SUMMARY_MENU;
        }
        break;
    case MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
            PrintMonSelectionStrings(app);
            app->subState = MAIN_SUBSTATE_INIT;
        }
        break;
    case MAIN_SUBSTATE_SHOW_STATS_DISPLAY:
        if (JOY_NEW(PAD_KEY_LEFT)) {
            ChangeSelectedMonOnSummaryDisplay(app, -1);
        } else if (JOY_NEW(PAD_KEY_RIGHT)) {
            ChangeSelectedMonOnSummaryDisplay(app, 1);
        } else if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseSummaryScreen(app);
            OpenMonOptionsMenu(app);
            app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
        }
        break;
    case MAIN_SUBSTATE_SHOW_MOVES_DISPLAY:
        if (JOY_NEW(PAD_KEY_LEFT)) {
            ChangeSelectedMonOnMoveDisplay(app, -1);
        } else if (JOY_NEW(PAD_KEY_RIGHT)) {
            ChangeSelectedMonOnMoveDisplay(app, 1);
        } else if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseSummaryScreen(app);
            OpenMonOptionsMenu(app);
            app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
        }
        break;
    }

    return FALSE;
}

static BOOL State_SyncPurchase(BattleCastleOpponentApp *app)
{
    u8 slot;

    switch (app->subState) {
    case 0:
        app->syncPurchaseState = 1;

        if (SendCommMessage(app, COMM_CMD_PURCHASE_INFO, app->selectedMonSlot) == TRUE) {
            app->syncPurchaseAction = FALSE;
            app->subState++;
        }
        break;
    case 1:
        if (app->slotID == 0xff) {
            break;
        }

        app->msgsReceived = 0;

        if (app->selectedMenuEntry == MENU_ENTRY_RANK_UP_SUMMARY) {
            IncreaseRank(app, app->slotID, MENU_ENTRY_RANK_UP_SUMMARY);
        } else {
            SpendCastlePointsInSync(app, app->slotID, app->selectedMenuEntry);
        }

        app->subState++;
        break;
    case 2:
        slot = BattleCastleApp_GetSlotFromSlotID(app->exitSlot, app->slotID);

        if (UpdateAfterPurchase(app, slot, app->selectedMenuEntry) == TRUE) {
            app->syncDelay = 30;
            app->subState++;
        }
        break;
    case 3:
        app->syncDelay--;

        if (app->syncDelay == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(133);
            app->subState++;
            break;
        }
        break;
    case 4:
        if (CommTiming_IsSyncState(133) == TRUE) {
            app->subState++;
        }
        break;
    case 5:
        slot = BattleCastleApp_GetSlotFromSlotID(app->exitSlot, app->slotID);

        if (UpdateAfterSyncPurchase(app, slot, app->selectedMenuEntry) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTool_Init(100);
            app->slotID = 0xff;
            app->partnerIsExiting = FALSE;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_SyncBeforeExit(BattleCastleOpponentApp *app)
{
    switch (app->subState) {
    case 0:
        if (SendCommMessage(app, COMM_CMD_EXIT_APP, 0) == TRUE) {
            app->syncDelay = 30;
            app->subState++;
        }
        break;
    case 1:
        if (app->syncDelay > 0) {
            app->syncDelay--;
        }

        if (app->syncDelay == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(134);
            app->subState++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(134) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_FadeOutApp(BattleCastleOpponentApp *app)
{
    switch (app->subState) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_CASTLE_APP);
        app->subState++;
        break;
    case 1:
        if (IsScreenFadeDone() == TRUE) {
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void FreeAssets(BattleCastleOpponentApp *app)
{
    int i, j;

    BattleCastleAppSprite_Free(app->cursorSprite);
    BattleCastleAppSprite_Free(app->partnerCursorSprite);
    BattleCastleAppSprite_Free(app->sparklesSprite);

    for (i = 0; i < NUM_MONS_MAX; i++) {
        for (j = 0; j < 2; j++) {
            BattleCastleAppSprite_Free(app->flagSprites[i][j]);
        }
    }

    u8 numMons = ov104_0223B7DC(app->challengeType, 1);

    for (i = 0; i < numMons; i++) {
        BattleCastleAppSprite_Free(app->ballSprites[i]);
        BattleCastleAppSprite_Free(app->monSprites[i]);
        BattleCastleAppSprite_Free(app->barSprites[i]);
    }

    NetworkIcon_Destroy();

    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;

    BattleCastleApp_FreeSprites(&app->spriteMan);

    MessageLoader_Free(app->msgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);
    FontSpecialChars_Free(app->specialChars);

    for (i = 0; i < 3; i++) {
        String_Free(app->simpleMenuStr[i]);
    }

    BattleCastleApp_FreeWindows(app->windows, TRUE);
    FreeBackgrounds(app->bgConfig);
    NARC_dtor(app->narc);
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

static void LoadAssets(BattleCastleOpponentApp *app)
{
    u16 unused1, unused2, unused3, unused4, xOffset, ballXOffset;
    int i, j;

    app->narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_BATTLE_CASTLE_APP);

    LoadBackgrounds(app);
    InitSpriteManager(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_CASTLE_OPPONENT_APP, HEAP_ID_BATTLE_CASTLE_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_BATTLE_CASTLE_APP);
    app->displayStr = String_Init(600, HEAP_ID_BATTLE_CASTLE_APP);
    app->fmtStr = String_Init(600, HEAP_ID_BATTLE_CASTLE_APP);

    for (i = 0; i < 3; i++) {
        app->simpleMenuStr[i] = String_Init(32, HEAP_ID_BATTLE_CASTLE_APP);
    }

    Font_LoadTextPalette(0, 13 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);
    Font_LoadScreenIndicatorsPalette(0, 12 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);

    app->specialChars = FontSpecialChars_Init(1, 2, 0, HEAP_ID_BATTLE_CASTLE_APP);

    BattleCastleApp_InitWindows(app->bgConfig, app->windows, TRUE);
    GetOffsetsForPlayerInfo(app, &unused1, &unused2, &unused3, &unused4);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        xOffset = 64;
        ballXOffset = 60;
    } else {
        xOffset = 32;
        ballXOffset = 28;
    }

    u8 numMons = ov104_0223B7DC(app->challengeType, 1);

    for (i = 0; i < numMons; i++) {
        app->ballSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_SHAKING_POKE_BALL, 64 * i + ballXOffset, 62, 2, NULL);
        app->barSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_GREEN_BAR, 64 * i + xOffset, 58 + 20, 3, NULL);
        app->monSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 3 + i, 3, 3, POKEICON_ANIM_HP_MAX, 64 * i + xOffset, 58, 2, NULL);

        BattleCastleAppSprite_UpdatePalette(app->monSprites[i], Party_GetPokemonBySlotIndex(app->opponentsParty, i));

        if (app->identityUnlockedForSlot[i] == 0) {
            BattleCastleAppSprite_SetDrawFlag(app->ballSprites[i], TRUE);
            BattleCastleAppSprite_SetDrawFlag(app->monSprites[i], FALSE);
            BattleCastleAppSprite_SetDrawFlag(app->barSprites[i], FALSE);
        } else {
            BattleCastleAppSprite_SetDrawFlag(app->ballSprites[i], FALSE);
            BattleCastleAppSprite_SetDrawFlag(app->monSprites[i], TRUE);
            BattleCastleAppSprite_SetDrawFlag(app->barSprites[i], TRUE);
        }
    }

    u32 x, y;
    GetCursorSpritePos(app, &x, &y, 0);

    app->cursorSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_MON_CURSOR, x, y, 2, NULL);
    app->partnerCursorSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_PARTNER_MON_CURSOR, x, y, 2, NULL);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        BattleCastleAppSprite_SetDrawFlag(app->partnerCursorSprite, FALSE);
    }

    for (i = 0; i < NUM_MONS_MAX; i++) {
        for (j = 0; j < 2; j++) {
            GetFlagSpritesOffsets(app, &x, &y);
            app->flagSprites[i][j] = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_FLAG, x + (64 * i), y + (12 * j), 2, NULL);
            BattleCastleAppSprite_SetDrawFlag(app->flagSprites[i][j], FALSE);
        }
    }

    UpdateAllFlagSprites(app);
    app->sparklesSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_OPEN_SUMMARY_SPARKLES, 20, 20, 0, NULL);
    BattleCastleAppSprite_SetDrawFlag(app->sparklesSprite, FALSE);

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetVBlankCallback(VBlankCallback, app);
}

static void LoadBackgrounds(BattleCastleOpponentApp *app)
{
    SetGXBanks();
    InitBackgrounds(app->bgConfig);

    app->plttData = PaletteData_New(HEAP_ID_BATTLE_CASTLE_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_CASTLE_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_CASTLE_APP);

    LoadMainBackground(app, BG_LAYER_MAIN_3);
    LoadPalette();
    LoadSummaryBackground(app, BG_LAYER_MAIN_2);
    LoadPalette2();

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    LoadSubScreenBackground(app, BG_LAYER_SUB_0);
}

static void InitSpriteManager(BattleCastleOpponentApp *app)
{
    BattleCastleApp_InitSpriteManager(&app->spriteMan, app->opponentsParty, BattleCastle_IsMultiPlayerChallenge(app->challengeType));
}

static void FreeBackgrounds(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Heap_Free(bgConfig);
}

static void VBlankCallback(void *data)
{
    BattleCastleOpponentApp *app = data;

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

    BgTemplate bgTemplate1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &bgTemplate1, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_BATTLE_CASTLE_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_1);

    BgTemplate bgTemplate0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0800,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &bgTemplate0, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_BATTLE_CASTLE_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate bgTemplate2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x1000,
        .charBase = GX_BG_CHARBASE_0x14000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_2, &bgTemplate2, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_BATTLE_CASTLE_APP);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_2);

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
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_3, &bgTemplate3, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_BATTLE_CASTLE_APP);
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
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
}

static void LoadMainBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_SOLO_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_MULTI_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    }
}

static void LoadPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_CASTLE_OPPONENT_APP_PLTT, &plttData, HEAP_ID_BATTLE_CASTLE_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 4);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 4);
    Heap_Free(pltt);
}

static void LoadSummaryBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_SUMMARY_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadPalette2(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_CASTLE_OPPONENT_APP_PLTT, &plttData, HEAP_ID_BATTLE_CASTLE_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 4);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 4);
    Heap_Free(pltt);
}

static void LoadMovesListBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_OPPONENT_APP_MOVES_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadSubScreenBackground(BattleCastleOpponentApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadPaletteFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_PLTT, PAL_LOAD_SUB_BG, 0, 0x20, HEAP_ID_BATTLE_CASTLE_APP);
}

static u8 PrintLeftAlignedMessageWithBg(BattleCastleOpponentApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font)
{
    return PrintMessageWithBg(app, window, entryID, xOffset, yOffset, renderDelay, fgColor, shadowColor, bgColor, font, TEXT_ALIGN_LEFT);
}

static u8 PrintMessageWithBg(BattleCastleOpponentApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, enum TextAlignment alignment)
{
    Window_FillTilemap(window, bgColor);
    MessageLoader_GetString(app->msgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    switch (alignment) {
    case TEXT_ALIGN_CENTER:
        xOffset -= (Font_CalcStringWidth(FONT_SYSTEM, app->displayStr, 0) + 1) / 2;
        break;
    case TEXT_ALIGN_RIGHT:
        xOffset -= Font_CalcStringWidth(FONT_SYSTEM, app->displayStr, 0);
        break;
    }

    u8 printerID = Text_AddPrinterWithParamsAndColor(window, font, app->displayStr, xOffset, yOffset, renderDelay, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);
    Window_ScheduleCopyToVRAM(window);

    return printerID;
}

static u8 PrintLeftAlignedMessage(BattleCastleOpponentApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font)
{
    return PrintMessage(app, window, entryID, xOffset, yOffset, renderDelay, fgColor, shadowColor, bgColor, font, TEXT_ALIGN_LEFT);
}

static u8 PrintMessage(BattleCastleOpponentApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, enum TextAlignment alignment)
{
    MessageLoader_GetString(app->msgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    switch (alignment) {
    case 1:
        xOffset -= (Font_CalcStringWidth(FONT_SYSTEM, app->displayStr, 0) + 1) / 2;
        break;
    case 2:
        xOffset -= Font_CalcStringWidth(FONT_SYSTEM, app->displayStr, 0);
        break;
    }

    u8 printerID = Text_AddPrinterWithParamsAndColor(window, font, app->displayStr, xOffset, yOffset, renderDelay, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);
    Window_ScheduleCopyToVRAM(window);

    return printerID;
}

static u8 PrintMessageAndCopyToVRAM(BattleCastleOpponentApp *app, int entryID, u8 font)
{
    u8 printerID = PrintLeftAlignedMessageWithBg(app, &app->windows[OPPONENT_APP_WINDOW_MSG_BOX], entryID, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, font);
    Window_ScheduleCopyToVRAM(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);

    return printerID;
}

static void PrintPokemonSummary(BattleCastleOpponentApp *app, Window *window, Pokemon *mon)
{
    Window_FillTilemap(window, 0);

    StringTemplate_SetItemName(app->strTemplate, 0, Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL));
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_Item, 8, 8, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_ItemValue, 72, 8, TEXT_ALIGN_LEFT);

    StringTemplate_SetNatureName(app->strTemplate, 0, Pokemon_GetNature(mon));
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_Nature, 8, 24, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_NatureValue, 72, 24, TEXT_ALIGN_LEFT);

    StringTemplate_SetAbilityName(app->strTemplate, 0, Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL));
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_Ability, 8, 40, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_AbilityValue, 72, 40, TEXT_ALIGN_LEFT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_ATK, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_Attack, 8, 56, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_AttackValue, 88, 56, TEXT_ALIGN_RIGHT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_DEF, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_Defense, 104, 56, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_DefenseValue, 184, 56, TEXT_ALIGN_RIGHT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_SpAttack, 8, 72, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_SpAttackValue, 88, 72, TEXT_ALIGN_RIGHT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_SpDefense, 104, 72, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_SpDefenseValue, 184, 72, TEXT_ALIGN_RIGHT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_SPEED, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_Speed, 8, 88, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleOpponentApp_Text_SpeedValue, 88, 88, TEXT_ALIGN_RIGHT);

    Window_ScheduleCopyToVRAM(window);
}

static void PrintStaticMessage(BattleCastleOpponentApp *app, Window *window, int entryID, u16 xOffset, u16 yOffset, enum TextAlignment alignment)
{
    PrintMessage(app, window, entryID, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, alignment);
}

static void PrintAllMoves(BattleCastleOpponentApp *app, Window *window, Pokemon *mon)
{
    Window_FillTilemap(window, 0);

    PrintMoveInfo(app, window, 0, BattleCastleOpponentApp_Text_MoveName1, BattleCastleOpponentApp_Text_MovePP, mon, MON_DATA_MOVE1, MON_DATA_MOVE1_PP, MON_DATA_MOVE1_MAX_PP);
    PrintMoveInfo(app, window, 1, BattleCastleOpponentApp_Text_MoveName2, BattleCastleOpponentApp_Text_MovePP, mon, MON_DATA_MOVE2, MON_DATA_MOVE2_PP, MON_DATA_MOVE2_MAX_PP);
    PrintMoveInfo(app, window, 2, BattleCastleOpponentApp_Text_MoveName3, BattleCastleOpponentApp_Text_MovePP, mon, MON_DATA_MOVE3, MON_DATA_MOVE3_PP, MON_DATA_MOVE3_MAX_PP);
    PrintMoveInfo(app, window, 3, BattleCastleOpponentApp_Text_MoveName4, BattleCastleOpponentApp_Text_MovePP, mon, MON_DATA_MOVE4, MON_DATA_MOVE4_PP, MON_DATA_MOVE4_MAX_PP);

    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveInfo(BattleCastleOpponentApp *app, Window *window, u8 idx, u32 moveNameEntryID, u32 ppEntryID, Pokemon *mon, u32 moveParam, u32 ppParam, u32 maxPpParam)
{
    u16 nameXOffset = 32;
    u16 nameYOffset = 12 + idx * 24;
    u16 ppXOffset = 145;
    u16 ppYOffset = 12 + idx * 24;
    StringTemplate_SetMoveName(app->strTemplate, idx, Pokemon_GetValue(mon, moveParam, NULL));
    app->printerID = PrintLeftAlignedMessage(app, window, moveNameEntryID, nameXOffset, nameYOffset, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM);
    SetStringTemplateNumber(app, 4, Pokemon_GetValue(mon, ppParam, NULL), 3, PADDING_MODE_NONE);
    SetStringTemplateNumber(app, 5, Pokemon_GetValue(mon, maxPpParam, NULL), 3, PADDING_MODE_NONE);
    app->printerID = PrintMessage(app, window, ppEntryID, ppXOffset, ppYOffset, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);
}

static void PrintAllMonsHP(BattleCastleOpponentApp *app, Window *window)
{
    Window_FillTilemap(window, 0);

    u16 baseXOffset;
    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == FALSE) {
        baseXOffset = 36;
    } else {
        baseXOffset = 4;
    }

    u8 numMons = ov104_0223B7DC(app->challengeType, 1);

    for (int i = 0; i < numMons; i++) {
        if (!app->identityUnlockedForSlot[i]) {
            Window_FillRectWithColor(window, 0, baseXOffset + (64 * i), 1, 64, 16);
            continue;
        }

        Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, i);

        FontSpecialChars_DrawPartyScreenHPText(app->specialChars, Pokemon_GetValue(mon, MON_DATA_HP, NULL), 3, PADDING_MODE_SPACES, window, baseXOffset + (64 * i), 1);
        FontSpecialChars_DrawPartyScreenLevelText(app->specialChars, 0, window, 24 + baseXOffset + (64 * i), PADDING_MODE_SPACES);
        FontSpecialChars_DrawPartyScreenHPText(app->specialChars, Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL), 3, PADDING_MODE_NONE, window, 32 + baseXOffset + (64 * i), 1);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintAllMonsLevelAndGender(BattleCastleOpponentApp *app, Window *window)
{
    Window_FillTilemap(window, 0);

    u16 levelXOffset, genderXOffset;
    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        levelXOffset = 40;
        genderXOffset = 80;
    } else {
        levelXOffset = 8;
        genderXOffset = 48;
    }

    u8 numMons = ov104_0223B7DC(app->challengeType, 1);

    for (int i = 0; i < numMons; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, i);
        FontSpecialChars_DrawPartyScreenText(app->specialChars, SPECIAL_CHAR_LEVEL, Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL), 3, PADDING_MODE_NONE, window, levelXOffset + (64 * i), 1);
        u32 gender = Pokemon_GetValue(mon, MON_DATA_GENDER, NULL);
        PrintGenderSymbol(app, window, genderXOffset + (64 * i), 1, FONT_SYSTEM, gender);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void InitSimpleMenu(BattleCastleOpponentApp *app, Window *window, u8 numOptions)
{
    for (int i = 0; i < 3; i++) {
        app->simpleStrList[i].entry = NULL;
        app->simpleStrList[i].index = 0;
    }

    app->simpleMenuTemplate.choices = app->simpleStrList;
    app->simpleMenuTemplate.window = window;
    app->simpleMenuTemplate.fontID = FONT_SYSTEM;
    app->simpleMenuTemplate.xSize = 1;
    app->simpleMenuTemplate.ySize = numOptions;
    app->simpleMenuTemplate.lineSpacing = 0;
    app->simpleMenuTemplate.suppressCursor = FALSE;
    app->simpleMenuTemplate.loopAround = TRUE;
}

static void AddStringToSimpleMenu(BattleCastleOpponentApp *app, u8 strIndex, u8 listIndex, int entryID)
{
    MessageLoader_GetString(app->msgLoader, entryID, app->simpleMenuStr[strIndex]);

    app->simpleStrList[strIndex].entry = app->simpleMenuStr[strIndex];
    app->simpleStrList[strIndex].index = listIndex;
}

static void OpenYesNoMenu(BattleCastleOpponentApp *app)
{
    BattleCastleApp_DrawWindow(app->bgConfig, &app->windows[OPPONENT_APP_WINDOW_YES_NO_MENU]);
    InitSimpleMenu(app, &app->windows[OPPONENT_APP_WINDOW_YES_NO_MENU], 2);
    AddStringToSimpleMenu(app, 0, 0, BattleCastleOpponentApp_Text_Yes);
    AddStringToSimpleMenu(app, 1, 1, BattleCastleOpponentApp_Text_No);

    app->simpleMenu = Menu_NewAndCopyToVRAM(&app->simpleMenuTemplate, 8, 0, 0, HEAP_ID_BATTLE_CASTLE_APP, PAD_BUTTON_B);
    app->simpleMenuIsOpen = TRUE;
}

static void OpenLevelMenu(BattleCastleOpponentApp *app)
{
    BattleCastleApp_DrawWindow(app->bgConfig, &app->windows[OPPONENT_APP_WINDOW_LEVEL_MENU]);
    InitSimpleMenu(app, &app->windows[OPPONENT_APP_WINDOW_LEVEL_MENU], 3);
    AddStringToSimpleMenu(app, 0, 0, BattleCastleOpponentApp_Text_LevelUp5);
    AddStringToSimpleMenu(app, 1, 1, BattleCastleOpponentApp_Text_LevelDown5);
    AddStringToSimpleMenu(app, 2, 2, BattleCastleOpponentApp_Text_Cancel2);

    app->simpleMenu = Menu_NewAndCopyToVRAM(&app->simpleMenuTemplate, 8, 0, 0, HEAP_ID_BATTLE_CASTLE_APP, PAD_BUTTON_B);
    app->simpleMenuIsOpen = TRUE;
}

static const ListMenuTemplate sDefaultListMenuTemplate = {
    .choices = NULL,
    .cursorCallback = NULL,
    .printCallback = NULL,
    .window = NULL,
    .count = 0,
    .maxDisplay = 0,
    .headerXOffset = 0,
    .textXOffset = 8,
    .cursorXOffset = 0,
    .yOffset = 0,
    .textColorFg = 1,
    .textColorBg = 0,
    .textColorShadow = 2,
    .letterSpacing = 0,
    .lineSpacing = 0,
    .pagerMode = PAGER_MODE_NONE,
    .fontID = 0,
    .cursorType = 0,
    .parent = NULL
};

static const u32 sMonMenuEntries[][2] = {
    { BattleCastleOpponentApp_Text_Check, MENU_ENTRY_CHECK },
    { BattleCastleOpponentApp_Text_Level, MENU_ENTRY_LEVEL },
    { BattleCastleOpponentApp_Text_Summary, MENU_ENTRY_SUMMARY },
    { BattleCastleOpponentApp_Text_Cancel, MENU_CANCELED }
};

static const u32 sMonMenuDescriptions[] = {
    BattleCastleOpponentApp_Text_CheckIdentity,
    BattleCastleOpponentApp_Text_ChangeLevel,
    BattleCastleOpponentApp_Text_ExamineStats,
    BattleCastleOpponentApp_Text_GoBackToMonSelection
};

static void InitMonOptionsMenu(BattleCastleOpponentApp *app)
{
    BattleCastleApp_DrawWindow(app->bgConfig, &app->windows[OPPONENT_APP_WINDOW_MON_OPTIONS_MENU]);
    Window_FillTilemap(&app->windows[OPPONENT_APP_WINDOW_MON_OPTIONS_MENU], 15);

    app->listMenuStrList = StringList_New(NELEMS(sMonMenuEntries), HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < NELEMS(sMonMenuEntries); i++) {
        StringList_AddFromMessageBank(app->listMenuStrList, app->msgLoader, sMonMenuEntries[i][0], sMonMenuEntries[i][1]);
    }

    ListMenuTemplate template = sDefaultListMenuTemplate;

    template.choices = app->listMenuStrList;
    template.window = &app->windows[OPPONENT_APP_WINDOW_MON_OPTIONS_MENU];
    template.parent = app;
    template.cursorCallback = UpdateMonMenuEntryDescription;
    template.printCallback = NULL;
    template.count = NELEMS(sMonMenuEntries);
    template.textColorBg = 15;
    template.maxDisplay = 4;

    app->listMenu = ListMenu_New(&template, app->monMenuListPos, app->monMenuCursorPos, HEAP_ID_BATTLE_CASTLE_APP);
    app->listMenuIsOpen = TRUE;

    Window_ScheduleCopyToVRAM(&app->windows[OPPONENT_APP_WINDOW_MON_OPTIONS_MENU]);
}

static void UpdateMonMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit)
{
    BattleCastleOpponentApp *app = (BattleCastleOpponentApp *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (!onInit) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u16 pos;
    ListMenu_CalcTrueCursorPos(menu, &pos);
    PrintLeftAlignedMessageWithBg(app, &app->windows[OPPONENT_APP_WINDOW_MON_OPTION_MSG_BOX], sMonMenuDescriptions[pos], 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static const u32 sSummaryMenuEntries[][2] = {
    { BattleCastleOpponentApp_Text_Summary2, MENU_ENTRY_STATS },
    { BattleCastleOpponentApp_Text_Moves, MENU_ENTRY_MOVES },
    { BattleCastleOpponentApp_Text_RankUp, MENU_ENTRY_RANK_UP_SUMMARY },
    { BattleCastleOpponentApp_Text_Cancel3, MENU_CANCELED }
};

static const u16 sSummaryMenuDescriptions[][2] = {
    { BattleCastleOpponentApp_Text_CheckStats, BattleCastleOpponentApp_Text_CheckStats },
    { BattleCastleOpponentApp_Text_CheckMoveList, BattleCastleOpponentApp_Text_CheckMoveList },
    { BattleCastleOpponentApp_Text_RankUpToCheckMoves, BattleCastleOpponentApp_Text_CantRankUp },
    { BattleCastleOpponentApp_Text_ReturnToPreviousMenu, BattleCastleOpponentApp_Text_ReturnToPreviousMenu }
};

static void InitSummaryMenu(BattleCastleOpponentApp *app)
{
    BattleCastleApp_DrawWindow(app->bgConfig, &app->windows[OPPONENT_APP_WINDOW_SUMMARY_MENU]);
    Window_FillTilemap(&app->windows[OPPONENT_APP_WINDOW_SUMMARY_MENU], 15);

    app->listMenuStrList = StringList_New(NELEMS(sSummaryMenuEntries), HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < (NELEMS(sSummaryMenuEntries)); i++) {
        StringList_AddFromMessageBank(app->listMenuStrList, app->msgLoader, sSummaryMenuEntries[i][0], sSummaryMenuEntries[i][1]);
    }

    ListMenuTemplate template = sDefaultListMenuTemplate;

    template.choices = app->listMenuStrList;
    template.window = &app->windows[OPPONENT_APP_WINDOW_SUMMARY_MENU];
    template.parent = app;
    template.cursorCallback = UpdateSummaryMenuEntryDescription;
    template.printCallback = SetSummaryMenuEntryColor;
    template.count = (NELEMS(sSummaryMenuEntries));
    template.textColorBg = 15;
    template.maxDisplay = 4;

    app->listMenu = ListMenu_New(&template, 0, 0, HEAP_ID_BATTLE_CASTLE_APP);
    app->listMenuIsOpen = TRUE;

    Window_ScheduleCopyToVRAM(&app->windows[OPPONENT_APP_WINDOW_SUMMARY_MENU]);
}

static void UpdateSummaryMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit)
{
    BattleCastleOpponentApp *app = (BattleCastleOpponentApp *)ListMenu_GetAttribute(menu, 19);

    if (!onInit) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u16 pos;
    ListMenu_CalcTrueCursorPos(menu, &pos);

    u8 rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_OPPONENT_SUMMARY);
    u8 index = !(rank == 1);

    PrintLeftAlignedMessageWithBg(app, &app->windows[OPPONENT_APP_WINDOW_MSG_BOX], sSummaryMenuDescriptions[pos][index], 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void SetSummaryMenuEntryColor(ListMenu *menu, u32 item, u8 yOffset)
{
    BattleCastleOpponentApp *app = (BattleCastleOpponentApp *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    u8 rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_OPPONENT_SUMMARY);
    u8 fgColor = 1;

    switch (item) {
    case MENU_ENTRY_MOVES:
        if (rank == 1) {
            fgColor = 2;
        } else {
            fgColor = 1;
        }
        break;
    case MENU_ENTRY_RANK_UP_SUMMARY:
        if (rank == (3 - 1)) {
            fgColor = 2;
        } else {
            fgColor = 1;
        }
        break;
    default:
        fgColor = 1;
        break;
    }

    ListMenu_SetTextColors(menu, fgColor, 15, 2);
}

static void SetStringTemplateNumber(BattleCastleOpponentApp *app, u32 idx, s32 num, u32 maxDigits, enum PaddingMode paddingMode)
{
    StringTemplate_SetNumber(app->strTemplate, idx, num, maxDigits, paddingMode, CHARSET_MODE_EN);
}

static void SetStringTemplateSpecies(BattleCastleOpponentApp *app, u32 idx, BoxPokemon *boxMon)
{
    StringTemplate_SetSpeciesName(app->strTemplate, idx, boxMon);
}

static void SetStringTemplatePlayerName(BattleCastleOpponentApp *app, u32 idx)
{
    StringTemplate_SetPlayerName(app->strTemplate, idx, SaveData_GetTrainerInfo(app->saveData));
}

static void PrintPlayerName(BattleCastleOpponentApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font)
{
    const TrainerInfo *player = SaveData_GetTrainerInfo(app->saveData);
    String *playerName = String_Init(8, HEAP_ID_BATTLE_CASTLE_APP);

    String_CopyChars(playerName, TrainerInfo_Name(player));

    TextColor color;
    if (TrainerInfo_Gender(player) == GENDER_MALE) {
        color = TEXT_COLOR(7, 8, 0);
    } else {
        color = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(window, font, playerName, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(playerName);
}

static void PrintPartnersName(BattleCastleOpponentApp *app, Window *window, u32 xOffset, u32 yOffset, u8 unused)
{
    TrainerInfo *partnerInfo = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);

    TextColor textColor;
    if (TrainerInfo_Gender(partnerInfo) == GENDER_MALE) {
        textColor = TEXT_COLOR(7, 8, 0);
    } else {
        textColor = TEXT_COLOR(3, 4, 0);
    }

    StringTemplate_SetPlayerName(app->strTemplate, 0, partnerInfo);
    PrintLeftAlignedMessage(app, window, BattleCastleOpponentApp_Text_PartnerName, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, GET_TEXT_FG_COLOR(textColor), GET_TEXT_SHADOW_COLOR(textColor), GET_TEXT_BG_COLOR(textColor), FONT_SYSTEM);
}

static void PrintGenderSymbol(BattleCastleOpponentApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font, u8 gender)
{
    u32 entryID;
    u8 fgColor, shadowColor, bgColor;

    if (gender == GENDER_MALE) {
        entryID = BattleCastleOpponentApp_Text_MaleSymbol;
        fgColor = 7;
        shadowColor = 8;
        bgColor = 0;
    } else if (gender == GENDER_FEMALE) {
        entryID = BattleCastleOpponentApp_Text_FemaleSymbol;
        fgColor = 3;
        shadowColor = 4;
        bgColor = 0;
    } else {
        return;
    }

    PrintLeftAlignedMessage(app, window, entryID, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, fgColor, shadowColor, bgColor, font);
}

static void PrintMonSelectionStrings(BattleCastleOpponentApp *app)
{
    app->printerID = PrintMessageWithBg(app, &app->windows[OPPONENT_APP_WINDOW_EXIT], BattleCastleOpponentApp_Text_Exit, 16, 5, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);
    BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MON_SELECTION_MSG_BOX], Options_Frame(app->options));
    app->printerID = PrintLeftAlignedMessageWithBg(app, &app->windows[OPPONENT_APP_WINDOW_MON_SELECTION_MSG_BOX], BattleCastleOpponentApp_Text_CheckWhichPokemon, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void CloseMonSelectionMessageBox(BattleCastleOpponentApp *app)
{
    CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MON_SELECTION_MSG_BOX]);
}

static void OpenMonOptionsMenu(BattleCastleOpponentApp *app)
{
    BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MON_OPTION_MSG_BOX], Options_Frame(app->options));

    app->menuPos = 0;
    InitMonOptionsMenu(app);
}

static void CloseListMenu(BattleCastleOpponentApp *app)
{
    ListMenu_GetListAndCursorPos(app->listMenu, &app->monMenuListPos, &app->monMenuCursorPos);

    CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MON_OPTION_MSG_BOX]);
    FreeListMenu(app);
}

static void OpenSummaryMenu(BattleCastleOpponentApp *app)
{
    BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX], Options_Frame(app->options));

    app->printerID = PrintLeftAlignedMessageWithBg(app, &app->windows[OPPONENT_APP_WINDOW_MSG_BOX], BattleCastleOpponentApp_Text_CheckStats, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
    app->menuPos = 0;

    InitSummaryMenu(app);
}

static void FreeListMenu2(BattleCastleOpponentApp *app)
{
    FreeListMenu(app);
}

static void ChangeState(BattleCastleOpponentApp *app, int *state, enum BattleCastleAppState newState)
{
    app->subState = 0;
    *state = newState;
}

static void UpdateSelectedMon(BattleCastleOpponentApp *app, int unused)
{
    BOOL changeMade = FALSE;
    u8 currentSlot = BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot);

    if (JOY_NEW(PAD_KEY_LEFT)) {
        if (app->selectedMonSlot == app->exitSlot) {
            return;
        }

        if (currentSlot == 0) {
            app->selectedMonSlot += app->numSlots - 1;
        } else {
            app->selectedMonSlot--;
        }

        changeMade = TRUE;
    }

    if (JOY_NEW(PAD_KEY_RIGHT)) {
        if (app->selectedMonSlot == app->exitSlot) {
            return;
        }

        if (currentSlot == app->numSlots - 1) {
            app->selectedMonSlot -= app->numSlots - 1;
        } else {
            app->selectedMonSlot++;
        }

        changeMade = TRUE;
    }

    if (JOY_NEW(PAD_KEY_UP)) {
        if (app->selectedMonSlot < app->numSlots) {
            return;
        }

        app->selectedMonSlot = app->previousSlot;
        changeMade = TRUE;
    }

    if (JOY_NEW(PAD_KEY_DOWN)) {
        if (app->selectedMonSlot >= app->exitSlot) {
            return;
        }

        app->previousSlot = app->selectedMonSlot;
        app->selectedMonSlot = app->exitSlot;
        changeMade = TRUE;
    }

    if (changeMade == TRUE) {
        UpdateCursorPosition(app);
    }
}

static void UpdateCursorPosition(BattleCastleOpponentApp *app)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        SendCommMessage(app, COMM_CMD_UPDATE_CURSOR, app->selectedMonSlot);
    }

    UpdateCursorSprite(app, app->selectedMonSlot, FALSE);
}

static void UpdateCursorSprite(BattleCastleOpponentApp *app, u8 slot, u8 isPartners)
{
    BattleCastleAppSprite *sprite;
    u32 x, y, monSelectAnimID, exitAnimID;

    if (!isPartners) {
        sprite = app->cursorSprite;
        monSelectAnimID = ANIM_ID_MON_CURSOR;
        exitAnimID = ANIM_ID_EXIT_CURSOR;
    } else {
        sprite = app->partnerCursorSprite;
        monSelectAnimID = ANIM_ID_PARTNER_MON_CURSOR;
        exitAnimID = ANIM_ID_PARTNER_EXIT_CURSOR;
    }

    if (slot >= app->exitSlot) {
        BattleCastleAppSprite_SetAnim(sprite, exitAnimID);
        BattleCastleAppSprite_SetPosition(sprite, 224, 160);
    } else {
        BattleCastleAppSprite_SetAnim(sprite, monSelectAnimID);
        GetCursorSpritePos(app, &x, &y, slot);
        BattleCastleAppSprite_SetPosition(sprite, x, y);
    }
}

static void GetCursorSpritePos(BattleCastleOpponentApp *app, u32 *x, u32 *y, u8 slot)
{
    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        if (slot == 0) {
            *x = 40;
        } else if (slot == 1) {
            *x = 104;
        } else if (slot == 2) {
            *x = 168;
        } else {
            *x = 232;
        }
    } else {
        if (slot == 0) {
            *x = 72;
        } else if (slot == 1) {
            *x = 136;
        } else {
            *x = 200;
        }
    }

    *y = 88;
}

static void GetOffsetsForPlayerInfo(BattleCastleOpponentApp *app, u16 *playerX, u16 *playerY, u16 *partnerX, u16 *partnerY)
{
    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        *playerX = 32;
        *playerY = 0;
        *partnerX = 0;
        *partnerY = 0;
    } else {
        *playerX = 0;
        *playerY = 0;
        *partnerX = 120;
        *partnerY = 0;
    }
}

static BOOL UpdateAfterPurchase(BattleCastleOpponentApp *app, u8 selectedSlot, u8 menuOption)
{

    u8 slot = BattleCastleApp_GetSelectedSlot(app->numSlots, selectedSlot);
    Pokemon *unused = Party_GetPokemonBySlotIndex(app->opponentsParty, slot);

    switch (menuOption) {
    case MENU_ENTRY_CHECK:
        app->arrowSpriteVisible = FALSE;
        return TRUE;
    case MENU_ENTRY_LEVEL:
        if (!app->arrowSpriteVisible) {
            app->arrowSpriteVisible = TRUE;

            u32 animID;
            if (app->selectedLevelAdjustment == LEVEL_ADJUSTMENT_UP_5) {
                animID = ANIM_ID_LEVEL_UP_ARROW;
            } else {
                animID = ANIM_ID_LEVEL_DOWN_ARROW;
            }

            u16 xOffset;
            if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == FALSE) {
                xOffset = 80;
            } else {
                xOffset = 48;
            }

            app->arrowSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, animID, xOffset + (64 * slot), 50, 0, NULL);
        }

        if (!BattleCastleAppSprite_IsAnimated(app->arrowSprite)) {
            BattleCastleAppSprite_Free(app->arrowSprite);
            app->arrowSprite = NULL;
            app->arrowSpriteVisible = FALSE;
            return TRUE;
        }
        break;
    case MENU_ENTRY_STATS:
        if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ShowMonSummary(app, selectedSlot);
                app->arrowSpriteVisible = FALSE;
                return TRUE;
            }
        } else {
            app->arrowSpriteVisible = FALSE;
            return TRUE;
        }
        break;
    case MENU_ENTRY_MOVES:
        if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                ShowMovesList(app, selectedSlot);
                app->arrowSpriteVisible = FALSE;
                return TRUE;
            }
        } else {
            app->arrowSpriteVisible = FALSE;
            return TRUE;
        }
        break;
    case MENU_ENTRY_RANK_UP_SUMMARY:
        app->arrowSpriteVisible = FALSE;
        return TRUE;
    }

    return FALSE;
}

static BOOL UpdateAfterSyncPurchase(BattleCastleOpponentApp *app, u8 selectedSlot, u8 menuOption)
{
    u8 exitSlot = app->exitSlot;
    u8 slot = BattleCastleApp_GetSelectedSlot(app->numSlots, selectedSlot);
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, slot);

    switch (menuOption) {
    case MENU_ENTRY_CHECK:
    case MENU_ENTRY_LEVEL:
    case MENU_ENTRY_RANK_UP_SUMMARY:
        app->arrowSpriteVisible = FALSE;
        return TRUE;
    case MENU_ENTRY_STATS:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (CommSys_CurNetId() == 0) {
                if (app->slotID >= exitSlot) {
                    app->arrowSpriteVisible = FALSE;
                    return TRUE;
                }
            } else {
                if (app->slotID < exitSlot) {
                    app->arrowSpriteVisible = FALSE;
                    return TRUE;
                }
            }
        }

        if (!app->arrowSpriteVisible) {
            app->syncPurchaseState = 3;
            ShowMonSummary(app, selectedSlot);
            app->arrowSpriteVisible = FALSE;
            return TRUE;
        }
        break;
    case MENU_ENTRY_MOVES:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (CommSys_CurNetId() == 0) {
                if (app->slotID >= exitSlot) {
                    app->arrowSpriteVisible = FALSE;
                    return TRUE;
                }
            } else {
                if (app->slotID < exitSlot) {
                    app->arrowSpriteVisible = FALSE;
                    return TRUE;
                }
            }
        }

        if (!app->arrowSpriteVisible) {
            app->syncPurchaseState = 3;
            ShowMovesList(app, selectedSlot);
            app->arrowSpriteVisible = FALSE;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static u16 GetCostOfLevelAdjustment(u8 adjustment)
{
    if (adjustment == LEVEL_ADJUSTMENT_UP_5) {
        return CP_COST_LEVEL_UP;
    }

    return CP_COST_LEVEL_DOWN;
}

static void ChangeSelectedMonOnSummaryDisplay(BattleCastleOpponentApp *app, s8 step)
{
    s8 slot = app->selectedMonSlot;

    while (TRUE) {
        slot += step;

        if (slot < 0) {
            slot = app->numSlots - 1;
        } else if (slot >= app->numSlots) {
            slot = 0;
        }

        if (slot == app->selectedMonSlot) {
            return;
        }

        if (app->statsUnlockedForSlot[slot] == TRUE) {
            app->selectedMonSlot = slot;
            UpdateCursorPosition(app);
            Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot));
            PrintPokemonSummary(app, &app->windows[OPPONENT_APP_WINDOW_SUMMARY_SCREEN], mon);
            return;
        }
    }
}

static void ChangeSelectedMonOnMoveDisplay(BattleCastleOpponentApp *app, s8 step)
{
    s8 slot = app->selectedMonSlot;

    while (TRUE) {
        slot += step;

        if (slot < 0) {
            slot = app->numSlots - 1;
        } else if (slot >= app->numSlots) {
            slot = 0;
        }

        if (slot == app->selectedMonSlot) {
            return;
        }

        if (app->movesUnlockedForSlot[slot] == TRUE) {
            app->selectedMonSlot = slot;
            UpdateCursorPosition(app);
            Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot));
            PrintAllMoves(app, &app->windows[OPPONENT_APP_WINDOW_SUMMARY_SCREEN], mon);
            return;
        }
    }
}

static void CloseAllSubDisplays(BattleCastleOpponentApp *app)
{
    FreeSimpleMenu(app);
    FreeListMenu(app);

    CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
    BattleCastleAppSprite_SetDrawFlag(app->sparklesSprite, FALSE);
}

static void CloseMessageBox(Window *window)
{
    Window_EraseMessageBox(window, TRUE);
    Window_ClearAndScheduleCopyToVRAM(window);
}

static BOOL SendCommMessage(BattleCastleOpponentApp *app, u16 cmd, u16 slot)
{
    int commCmd;

    switch (cmd) {
    case COMM_CMD_PLAYER_INFO:
        commCmd = 53;
        CreatePlayerInfoPayload(app, cmd);
        break;
    case COMM_CMD_PURCHASE_INFO:
        commCmd = 54;
        CreatePurchaseInfoPayload(app, cmd, slot);
        break;
    case COMM_CMD_UPDATE_CURSOR:
        commCmd = 55;
        CreateUpdateCursorPayload(app, cmd);
        break;
    case COMM_CMD_EXIT_APP:
        commCmd = 56;
        CreateExitAppPayload(app);
        break;
    }

    return CommSys_SendData(commCmd, app->commPayload, 40) == TRUE;
}

static void CreatePlayerInfoPayload(BattleCastleOpponentApp *app, u16 cmd)
{
    int i = 0;
    TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(app->saveData);

    app->commPayload[i] = cmd;
    i += 1;

    app->commPayload[i] = TrainerInfo_Gender(trainerInfo);
    i += 1;

    for (int j = 0; j < 3; j++) {
        app->commPayload[i + j] = BattleCastleApp_GetRank(app->saveData, app->challengeType, j);
    }

    i += 3;
}

void BattleCastleOpponentApp_HandlePlayerInfoCmd(int netID, int unused, void *data, void *context)
{
    BattleCastleOpponentApp *app = context;
    const u16 *payload = data;

    int i = 0;
    app->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    i += 2;

    for (int j = 0; j < BATTLE_CASTLE_NUM_RANK_TYPES; j++) {
        app->partnersRanks[j] = payload[i + j];
    }

    i += 3;
}

static void CreatePurchaseInfoPayload(BattleCastleOpponentApp *app, u16 cmd, u16 slot)
{
    app->commPayload[0] = cmd;
    app->commPayload[1] = slot;

    if (CommSys_CurNetId() == 0) {
        if (app->slotID == 0xff) {
            app->slotID = slot;
        }
    }

    app->commPayload[2] = app->slotID;
    app->commPayload[4] = app->selectedLevelAdjustment;
    app->commPayload[5] = app->selectedMenuEntry;
}

void BattleCastleOpponentApp_HandlePurchaseInfoCmd(int netID, int unused, void *data, void *context)
{
    BattleCastleOpponentApp *app = context;
    const u16 *payload = data;

    app->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->partnerSlot = payload[1];

    if (CommSys_CurNetId() == 0) {
        if (app->slotID != 0xff) {
            app->partnerSlot = 0;
        } else {
            app->slotID = app->partnerSlot + app->exitSlot;
            app->selectedLevelAdjustment = payload[4];
            app->selectedMenuEntry = payload[5];
        }
    } else {
        app->slotID = payload[2];
        app->selectedLevelAdjustment = payload[4];
        app->selectedMenuEntry = payload[5];
    }
}

static void CreateUpdateCursorPayload(BattleCastleOpponentApp *app, u16 cmd)
{
    app->commPayload[0] = cmd;
    app->commPayload[1] = app->selectedMonSlot;
}

void BattleCastleOpponentApp_HandleUpdateCursorCmd(int netID, int unused, void *data, void *context)
{
    BattleCastleOpponentApp *app = context;
    const u16 *payload = data;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->partnersSelectedSlot = payload[1];
    UpdateCursorSprite(app, app->partnersSelectedSlot, TRUE);
}

static void CreateExitAppPayload(BattleCastleOpponentApp *app)
{
    app->commPayload[0] = TRUE;
}

void BattleCastleOpponentApp_HandleExitAppCmd(int netID, int unused, void *data, void *context)
{
    BattleCastleOpponentApp *app = context;
    const u16 *payload = data;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->partnerIsExiting = payload[0];
}

static void ShowMonSummary(BattleCastleOpponentApp *app, u8 slot)
{

    LoadSummaryBackground(app, BG_LAYER_MAIN_2);
    CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);

    Window_ClearAndScheduleCopyToVRAM(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));
    PrintPokemonSummary(app, &app->windows[OPPONENT_APP_WINDOW_SUMMARY_SCREEN], mon);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
}

static void UnlockStatsForSlot(BattleCastleOpponentApp *app, u8 slot)
{
    app->statsUnlockedForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)] = TRUE;
}

static void BuyStatsDisplay(BattleCastleOpponentApp *app, u8 slot)
{
    BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX], Options_Frame(app->options));

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));
    SetStringTemplateSpecies(app, 0, Pokemon_GetBoxPokemon(mon));

    app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_SummaryBought, FONT_MESSAGE);

    UnlockStatsForSlot(app, slot);
    UpdateAllFlagSprites(app);

    Sound_PlayEffect(SEQ_SE_DP_UG_020);
}

static void ShowMovesList(BattleCastleOpponentApp *app, u8 slot)
{
    LoadMovesListBackground(app, BG_LAYER_MAIN_2);
    CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);

    Window_ClearAndScheduleCopyToVRAM(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));
    PrintAllMoves(app, &app->windows[OPPONENT_APP_WINDOW_SUMMARY_SCREEN], mon);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
}

static void UnlockMovesForSlot(BattleCastleOpponentApp *app, u8 slot)
{
    app->movesUnlockedForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)] = TRUE;
}

static void BuyMovesListDisplay(BattleCastleOpponentApp *app, u8 slot)
{
    BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX], Options_Frame(app->options));

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));
    SetStringTemplateSpecies(app, 0, Pokemon_GetBoxPokemon(mon));

    app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_MoveListBought, FONT_MESSAGE);

    UnlockMovesForSlot(app, slot);
    UpdateAllFlagSprites(app);

    Sound_PlayEffect(SEQ_SE_DP_UG_020);
}

static void FreeSimpleMenu(BattleCastleOpponentApp *app)
{
    if (app->simpleMenuIsOpen == TRUE) {
        app->simpleMenuIsOpen = FALSE;
        Menu_Free(app->simpleMenu, NULL);
        Window_EraseStandardFrame(app->simpleMenuTemplate.window, TRUE);
        Window_ClearAndScheduleCopyToVRAM(app->simpleMenuTemplate.window);
    }
}

static void DrawMessageBox(BattleCastleOpponentApp *app)
{
    BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
}

static void PrintPlayersAndPartnersCastlePoints(BattleCastleOpponentApp *app, Window *window)
{
    u16 playerXOffset, playerYOffset, partnerXOffset, partnerYOffset, x, y;
    GetOffsetsForPlayerInfo(app, &playerXOffset, &playerYOffset, &partnerXOffset, &partnerYOffset);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        x = playerXOffset + 104;
        y = playerYOffset;
        Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
        SetStringTemplateNumber(app, 0, sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType))), 4, PADDING_MODE_SPACES);
        app->printerID = PrintMessage(app, window, BattleCastleOpponentApp_Text_CastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);
    } else {
        if (CommSys_CurNetId() == 0) {
            x = playerXOffset + 104;
            y = playerYOffset;
            Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
            SetStringTemplateNumber(app, 0, sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType))), 4, PADDING_MODE_SPACES);
            app->printerID = PrintMessage(app, window, BattleCastleOpponentApp_Text_CastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);

            x = partnerXOffset + 104;
            y = partnerYOffset;
            Window_FillRectWithColor(window, 0, x - 48, partnerYOffset, 48, 16);
            SetStringTemplateNumber(app, 0, app->partnersCP, 4, PADDING_MODE_SPACES);
            app->printerID = PrintMessage(app, window, BattleCastleOpponentApp_Text_CastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);
        } else {
            x = playerXOffset + 104;
            y = playerYOffset;
            Window_FillRectWithColor(window, 0, x - 48, playerYOffset, 48, 16);
            SetStringTemplateNumber(app, 0, app->partnersCP, 4, PADDING_MODE_SPACES);
            app->printerID = PrintMessage(app, window, BattleCastleOpponentApp_Text_CastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);

            x = partnerXOffset + 104;
            y = partnerYOffset;
            Window_FillRectWithColor(window, 0, x - 48, partnerYOffset, 48, 16);
            SetStringTemplateNumber(app, 0, sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType))), 4, PADDING_MODE_SPACES);
            app->printerID = PrintMessage(app, window, BattleCastleOpponentApp_Text_CastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintCostOfLevelAdjustment(BattleCastleOpponentApp *app, u8 adjustment)
{
    SetStringTemplateNumber(app, 0, GetCostOfLevelAdjustment(adjustment), 4, 0);
    app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_WillCostCP, FONT_MESSAGE);

    OpenYesNoMenu(app);
    app->levelAdjustment = adjustment;
}

static void PrintPlayersAndPartnersNames(BattleCastleOpponentApp *app, Window *window)
{
    u16 x, y, playerXOffset, playerYOffset, partnerXOffset, partnerYOffset;

    GetOffsetsForPlayerInfo(app, &playerXOffset, &playerYOffset, &partnerXOffset, &partnerYOffset);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        x = playerXOffset + 0;
        y = playerYOffset + 0;
        PrintPlayerName(app, window, x, y, FONT_SYSTEM);
    } else {
        if (CommSys_CurNetId() == 0) {
            x = playerXOffset + 0;
            y = playerYOffset + 0;
            PrintPlayerName(app, window, x, y, FONT_SYSTEM);

            x = partnerXOffset + 0;
            y = partnerYOffset + 0;
            PrintPartnersName(app, window, x, y, FONT_SYSTEM);
        } else {
            x = playerXOffset + 0;
            y = playerYOffset + 0;
            PrintPartnersName(app, window, x, y, FONT_SYSTEM);

            x = partnerXOffset + 0;
            y = partnerYOffset + 0;
            PrintPlayerName(app, window, x, y, FONT_SYSTEM);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void SpendCastlePointsInSync(BattleCastleOpponentApp *app, u8 slotID, u8 menuOption)
{
    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

    u8 slot, exitSlot;
    exitSlot = app->exitSlot;
    slot = BattleCastleApp_GetSlotFromSlotID(exitSlot, slotID);

    u16 cost;
    switch (menuOption) {
    case MENU_ENTRY_CHECK:
        cost = CP_COST_CHECK_IDENTITY;
        break;
    case MENU_ENTRY_LEVEL:
        cost = GetCostOfLevelAdjustment(app->selectedLevelAdjustment);
        break;
    case MENU_ENTRY_STATS:
        cost = CP_COST_SHOW_STATS;
        break;
    case MENU_ENTRY_MOVES:
        cost = CP_COST_SHOW_MOVES;
        break;
    }

    if (CommSys_CurNetId() == 0) {
        if (slotID < exitSlot) {
            SetStringTemplatePlayerName(app, 5);
            ov104_0223BC2C(app->frontier, app->challengeType, cost);
        } else {
            BattleCastleApp_SetPartnerName(app->strTemplate, 5);
            app->partnersCP -= cost;
        }
    } else {
        if (slotID < exitSlot) {
            BattleCastleApp_SetPartnerName(app->strTemplate, 5);
            app->partnersCP -= cost;
        } else {
            SetStringTemplatePlayerName(app, 5);
            ov104_0223BC2C(app->frontier, app->challengeType, cost);
        }
    }

    PrintPlayersAndPartnersCastlePoints(app, &app->windows[OPPONENT_APP_WINDOW_HEADER]);
    FreeSimpleMenu(app);

    switch (menuOption) {
    case MENU_ENTRY_CHECK:
        RevealPokemonInSlot(app, slot);
        break;
    case MENU_ENTRY_LEVEL:
        UpdateLevelAdjustment(app, slot, app->selectedLevelAdjustment);
        break;
    case MENU_ENTRY_STATS:
        BuyStatsDisplay(app, slot);
        break;
    case MENU_ENTRY_MOVES:
        BuyMovesListDisplay(app, slot);
        break;
    }
}

static void RevealPokemonInSlot(BattleCastleOpponentApp *app, u8 slot)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));

    BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
    SetStringTemplateSpecies(app, 0, Pokemon_GetBoxPokemon(mon));

    app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_IdentityRevealed, FONT_MESSAGE);
    app->identityUnlockedForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)] = TRUE;

    BattleCastleAppSprite_SetDrawFlag(app->ballSprites[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)], FALSE);
    BattleCastleAppSprite_SetDrawFlag(app->monSprites[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)], TRUE);

    PrintAllMonsHP(app, &app->windows[OPPONENT_APP_WINDOW_HP_BARS]);
    PrintAllMonsLevelAndGender(app, &app->windows[OPPONENT_APP_WINDOW_LEVELS]);
    BattleCastleAppSprite_SetDrawFlag(app->barSprites[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)], TRUE);

    Sound_PlayEffect(SEQ_SE_DP_UG_020);
}

static void UpdateLevelAdjustment(BattleCastleOpponentApp *app, u8 slot, u8 adjustment)
{
    BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));
    SetStringTemplateSpecies(app, 0, Pokemon_GetBoxPokemon(mon));

    if (adjustment == LEVEL_ADJUSTMENT_UP_5) {
        app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_LevelBoostedBy5, FONT_MESSAGE);
        Sound_PlayEffect(SEQ_SE_DP_OPEN7);
    } else {
        app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleOpponentApp_Text_LevelLoweredBy5, FONT_MESSAGE);
        Sound_PlayEffect(SEQ_SE_DP_CLOSE7);
    }

    if (app->levelAdjustmentForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)] == LEVEL_ADJUSTMENT_NONE) {
        app->levelAdjustmentForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)] = adjustment;
    } else {
        app->levelAdjustmentForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)] = 0;
    }

    u32 exp;
    if (app->levelAdjustmentForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)] == LEVEL_ADJUSTMENT_NONE) {
        exp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), 50);
        Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &exp);
        Pokemon_CalcLevelAndStats(mon);
    } else if (app->levelAdjustmentForSlot[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)] == LEVEL_ADJUSTMENT_UP_5) {
        exp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), 55);
        Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &exp);
        Pokemon_CalcLevelAndStats(mon);
    } else {
        exp = Pokemon_GetSpeciesBaseExpAt(Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL), 45);
        Pokemon_SetValue(mon, MON_DATA_EXPERIENCE, &exp);
        Pokemon_CalcLevelAndStats(mon);
    }

    PrintAllMonsHP(app, &app->windows[OPPONENT_APP_WINDOW_HP_BARS]);
    PrintAllMonsLevelAndGender(app, &app->windows[OPPONENT_APP_WINDOW_LEVELS]);
}

static void CloseSummaryScreen(BattleCastleOpponentApp *app)
{
    Window_FillTilemap(&app->windows[OPPONENT_APP_WINDOW_SUMMARY_SCREEN], 0);
    Window_ClearAndCopyToVRAM(&app->windows[OPPONENT_APP_WINDOW_SUMMARY_SCREEN]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
}

static void FreeListMenu(BattleCastleOpponentApp *app)
{
    if (app->listMenuIsOpen == TRUE) {
        app->listMenuIsOpen = FALSE;

        Window *window = (Window *)ListMenu_GetAttribute(app->listMenu, LIST_MENU_WINDOW);

        Window_EraseStandardFrame(window, TRUE);
        Window_FillTilemap(window, 0);
        Window_ClearAndScheduleCopyToVRAM(window);
        StringList_Free(app->listMenuStrList);
        ListMenu_Free(app->listMenu, NULL, NULL);
    }
}

static void UpdatePokemonGraphics(BattleCastleOpponentApp *app)
{
    u8 numMons = BattleCastle_GetPartySize(app->challengeType, TRUE);

    for (int i = 0; i < numMons; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(app->opponentsParty, i);
        u8 animID = BattleCastle_GetPokeIconAnimID(Pokemon_GetValue(mon, MON_DATA_HP, NULL), Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL));

        if (app->monSprites[i] != NULL) {
            BattleCastleAppSprite_UpdateMonSpriteAnim(app->monSprites[i], animID);

            if (i != BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot) || app->selectedMonSlot >= app->exitSlot) {
                BattleCastleAppSprite_UpdateMonPosition(app->monSprites[i], FALSE);
            } else {
                BattleCastleAppSprite_UpdateMonPosition(app->monSprites[i], TRUE);
            }
        }
    }
}

static BOOL TryToBuySummaryScreen(BattleCastleOpponentApp *app, u16 cost, u16 failureEntryID)
{
    FreeSimpleMenu(app);

    u16 currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));

    if (currentCP < cost) {
        DrawMessageBox(app);
        app->printerID = PrintMessageAndCopyToVRAM(app, failureEntryID, FONT_MESSAGE);
        app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION;
        return FALSE;
    }

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        CloseMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX]);
        ov104_0223BC2C(app->frontier, app->challengeType, cost);
        PrintPlayersAndPartnersCastlePoints(app, &app->windows[OPPONENT_APP_WINDOW_HEADER]);

        if (cost == CP_COST_SHOW_STATS) {
            BuyStatsDisplay(app, app->selectedMonSlot);
        } else {
            BuyMovesListDisplay(app, app->selectedMonSlot);
        }

        app->subState = MAIN_SUBSTATE_UPDATE_AFTER_SUMMARY_PURCHASE;
        return FALSE;
    } else {
        app->syncPurchaseAction = TRUE;
        return TRUE;
    }

    return FALSE;
}

static const u16 sRankUpMessages[3][3] = {
    { 0, 0, 0 },
    { 0, 0, 0 },
    { 0, BattleCastleOpponentApp_Text_GainedMoveListPurchasePower, BattleCastleOpponentApp_Text_GainedMoveListPurchasePower }
};

static void IncreaseRank(BattleCastleOpponentApp *app, u8 slot, u8 menuOption)
{
    u8 unused = BattleCastle_GetPartySize(app->challengeType, FALSE);

    u8 rankType;
    if (menuOption == MENU_ENTRY_RANK_UP_SUMMARY) {
        rankType = BATTLE_CASTLE_RANK_OPPONENT_SUMMARY;
    } else {
        GF_ASSERT(0);
    }

    u8 exitSlot = app->exitSlot;
    u8 unused2 = BattleCastleApp_GetSlotFromSlotID(exitSlot, slot);

    u32 rank;
    if (CommSys_CurNetId() == 0) {
        if (slot < exitSlot) {
            SetStringTemplatePlayerName(app, 5);
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, rankType);

            ov104_0223BC2C(app->frontier, app->challengeType, CP_COST_RANK_UP);
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, rankType);

            sub_020306E4(SaveData_GetBattleFrontier(app->saveData), sub_0205E5B4(app->challengeType, rankType), sub_0205E6A8(sub_0205E5B4(app->challengeType, rankType)), rank + 1);

            if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
                app->syncPurchaseState = 2;
            }
        } else {
            BattleCastleApp_SetPartnerName(app->strTemplate, 5);
            rank = app->partnersRanks[rankType];
            app->partnersCP -= CP_COST_RANK_UP;
            app->partnersRanks[rankType]++;
        }
    } else {
        if (slot < exitSlot) {
            BattleCastleApp_SetPartnerName(app->strTemplate, 5);
            rank = app->partnersRanks[rankType];
            app->partnersCP -= CP_COST_RANK_UP;
            app->partnersRanks[rankType]++;
        } else {
            SetStringTemplatePlayerName(app, 5);
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, rankType);

            ov104_0223BC2C(app->frontier, app->challengeType, CP_COST_RANK_UP);
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, rankType);

            sub_020306E4(SaveData_GetBattleFrontier(app->saveData), sub_0205E5B4(app->challengeType, rankType), sub_0205E6A8(sub_0205E5B4(app->challengeType, rankType)), rank + 1);

            if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
                app->syncPurchaseState = 2;
            }
        }
    }

    FreeSimpleMenu(app);
    PrintPlayersAndPartnersCastlePoints(app, &app->windows[OPPONENT_APP_WINDOW_HEADER]);
    BattleCastleApp_DrawMessageBox(&app->windows[OPPONENT_APP_WINDOW_MSG_BOX], Options_Frame(app->options));

    app->printerID = PrintMessageAndCopyToVRAM(app, sRankUpMessages[rankType][rank], FONT_MESSAGE);
}

static void UpdateAllFlagSprites(BattleCastleOpponentApp *app)
{
    u8 numMons = ov104_0223B7DC(app->challengeType, TRUE);

    for (int i = 0; i < numMons; i++) {
        UpdateFlagSprites(app, i);
    }
}

static void UpdateFlagSprites(BattleCastleOpponentApp *app, u8 slot)
{
    if (app->statsUnlockedForSlot[slot] == TRUE) {
        BattleCastleAppSprite_SetDrawFlag(app->flagSprites[slot][0], TRUE);
    }

    if (app->movesUnlockedForSlot[slot] == TRUE) {
        BattleCastleAppSprite_SetDrawFlag(app->flagSprites[slot][1], TRUE);
    }
}

static void GetFlagSpritesOffsets(BattleCastleOpponentApp *app, u32 *x, u32 *y)
{
    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        *x = 64;
    } else {
        *x = 96;
    }

    *y = 60;
}
