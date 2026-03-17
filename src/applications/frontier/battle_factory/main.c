#include "applications/frontier/battle_factory/main.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle_frontier.h"
#include "constants/menu.h"

#include "applications/frontier/battle_factory/cursor.h"
#include "applications/frontier/battle_factory/helpers.h"
#include "applications/frontier/battle_factory/panel_sprite.h"
#include "applications/frontier/battle_factory/pokeball_sprite.h"
#include "applications/frontier/battle_factory/sprite_manager.h"
#include "applications/frontier/battle_factory/windows.h"
#include "applications/pokemon_summary_screen/main.h"
#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223A7F4.h"
#include "overlay104/struct_ov104_02234130.h"

#include "bg_window.h"
#include "communication_information.h"
#include "communication_system.h"
#include "coordinates.h"
#include "dexmode_checker.h"
#include "font.h"
#include "g3d_pipeline.h"
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
#include "pokemon_sprite.h"
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
#include "unk_020363E8.h"
#include "unk_020393C8.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

#include "constdata/const_020F410C.h"
#include "res/text/bank/battle_factory_app.h"

FS_EXTERN_OVERLAY(overlay104);

#define NUM_INITIAL_SELECT_OPTIONS 6
#define PARTY_SIZE_SOLO            3
#define PARTY_SIZE_MULTI           2

#define MENU_OPTION_SUMMARY  0
#define MENU_OPTION_RENT     1
#define MENU_OPTION_CANCEL   2
#define MENU_OPTION_REMOVE   3
#define MENU_OPTION_EXCHANGE 4

#define COMM_CMD_DUMMY            7
#define COMM_CMD_SELECTION_UDPATE 8
#define COMM_CMD_TRADE_RESULT     10

#define BACKGROUND_PANEL_HIDDEN 0
#define BACKGROUND_PANEL_FADING 1
#define BACKGROUND_PANEL_SHOWN  2

enum BattleFactoryAppState {
    STATE_FADE_IN_APP = 0,
    STATE_SETUP_APP_STRINGS,
    STATE_MON_SUMMARY,
    STATE_SELECT_INITIAL_PARTY,
    STATE_CONFIRM_PARTY_SELECTION,
    STATE_RETURN_TO_INITIAL_PARTY_SELECT,
    STATE_SELECT_MON_TO_EXCHANGE,
    STATE_CANCEL_TRADE_FROM_EXCHANGE_SELECT,
    STATE_SELECT_MON_TO_RECEIVE,
    STATE_CANCEL_TRADE_FROM_RECEIVE_SELECT,
    STATE_CHANGE_EXCHANGE_TO_RECEIVE_SELECT,
    STATE_SEND_TRADE_RESULT_COMM_MESSAGE,
    STATE_SYNC_BEFORE_EXIT,
    STATE_FADE_OUT_APP,
    STATE_SHOW_TRADE_OCCURRED_MESSAGE,
};

typedef struct BattleFactoryApp {
    ApplicationManager *appMan;
    ApplicationManager *monSummaryAppMan;
    u8 subState;
    u8 challengeType;
    u8 unk_0A;
    u8 isExchangeMode;
    int conveyorXOffset;
    u8 printerID;
    u8 numMonsSelected;
    u8 numPokeballs;
    u8 menuWasCancelled : 1;
    u8 summaryScreenOpened : 1;
    u8 exchangeMonSelected : 1;
    u8 tradedMon : 1;
    u8 firstTimeSetupDone : 1;
    u8 clearPartnerInfo : 1;
    u8 summaryScreenOpen : 1;
    u8 unused : 1;
    u32 wheelPaletteCounter;
    u8 partnersNumSelectedMons;
    u8 animationTimer;
    u8 exchangeSelectCursorPositions;
    u8 numReceiveSelectCursorPositions;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    String *menuStr[4];
    u16 unused2[8];
    BgConfig *bgConfig;
    Window windows[NUM_FACTORY_APP_WINDOWS];
    MenuTemplate menuTemplate;
    Menu *menu;
    StringList strList[4];
    PaletteData *plttData;
    G3DPipelineBuffers *g3dPipeline;
    PokemonSpriteManager *monSpriteMan;
    PokemonSprite *monSprites[MATH_MAX(PARTY_SIZE_SOLO, PARTY_SIZE_MULTI)];
    Options *options;
    SaveData *saveData;
    PokemonSummary *monSummary;
    BattleFactoryAppSpriteManager spriteMan;
    BattleFactoryAppPokeballSprite *ballSprites[NUM_INITIAL_SELECT_OPTIONS];
    BattleFactoryAppCursor *monCursor;
    BattleFactoryAppCursor *menuCursor;
    BattleFactoryAppPanelSprite *bluePanelSprite;
    BattleFactoryAppPanelSprite *greenPanelSprite;
    Party *personalParty;
    Party *receivableParty;
    u16 selectedIndices[6];
    u16 *selectedIndicesFinal;
    int startingSlot;
    NARC *narc;
    u16 commPayload[60];
    u16 partnerTradedMon;
    u16 partnerMonSpecies[PARTY_SIZE_MULTI];
    u16 partnenMonGenders[PARTY_SIZE_MULTI];
    u8 numTradeResultMsgReceived;
    u8 partnerListingUpdateNeeded;
    u32 unused3;
} BattleFactoryApp;

static BOOL State_FadeInApp(BattleFactoryApp *app);
static BOOL State_SetupAppStrings(BattleFactoryApp *app);
static BOOL State_RunMonSummaryApp(BattleFactoryApp *app);
static BOOL State_SelectInitialParty(BattleFactoryApp *app);
static BOOL State_ConfirmPartySelection(BattleFactoryApp *app);
static BOOL State_ReturnToInitialPartySelection(BattleFactoryApp *app);
static BOOL State_SelectMonToExchange(BattleFactoryApp *app);
static BOOL State_CancelTradeFromExchangeSelect(BattleFactoryApp *app);
static BOOL State_SelectMonToReceive(BattleFactoryApp *app);
static BOOL State_CancelTradeFromReceiveSelect(BattleFactoryApp *app);
static BOOL State_ChangeExchangeToReceiveSelect(BattleFactoryApp *app);
static BOOL State_SendTradeResultCommMessage(BattleFactoryApp *app);
static BOOL State_SyncBeforeExit(BattleFactoryApp *app);
static BOOL State_FadeOutApp(BattleFactoryApp *app);
static BOOL State_ShowTradeOccurredMessage(BattleFactoryApp *app);
static void ChangeState(BattleFactoryApp *app, int *state, enum BattleFactoryAppState newState);

static BOOL CheckAppIsInInitialSelectionMode(BattleFactoryApp *app, u8 zero);
static u8 GetNumMonToSelect(u8 challengeType);
static void PrintStringsForInitialSelect(BattleFactoryApp *app);
static void PrintStringsForExchangeSelect(BattleFactoryApp *app);
static void RedisplayInfoForInitialSelection(BattleFactoryApp *app);
static void RedisplayMonInfoForExchangeSelect(BattleFactoryApp *app);
static void SelectMon(BattleFactoryApp *app);
static void RemoveLastSelectedMon(BattleFactoryApp *app);
static void RemoveSelectedMonUnderCursor(BattleFactoryApp *app);
static void SelectMonToBeExchanged(BattleFactoryApp *app);
static void GoBackToExchangeSelect(BattleFactoryApp *app);
static void ConfirmReceiveSelection(BattleFactoryApp *app);
static void DrawReceiveSelectOptionsMenu(BattleFactoryApp *app);
static void UpdateInfoForMonUnderCursor(BattleFactoryApp *app, u8 numSelectedMon, int cursorPos, BOOL flip, const Party *party);
static void UpdatePartnersMonsListing(BattleFactoryApp *app);
static void SetupMonSummaryApp(BattleFactoryApp *app);

static void ReInitApp(BattleFactoryApp *app);
static void LoadAssets(BattleFactoryApp *app);
static void FreeAssets(BattleFactoryApp *app);
static void InitGraphicsPlane(void);
static void SetGXBanks(void);
static void InitSpriteManager(BattleFactoryApp *app);
static void LoadBackgrounds(BattleFactoryApp *app);
static void InitBackgrounds(BgConfig *app);
static void FreeBackgrounds(BgConfig *bgConfig);
static void InitWindows(BattleFactoryApp *app);
static void RemoveWindow(Window *window);
static void VBlankCallback(void *data);

static void LoadPalette(void);
static void LoadMonSelectionBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadConveyorBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadAppStartupBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadWheelBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadSelectionConfirmBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void LoadSubScreenBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void ReloadMonSelectionBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void ReloadNoScreensBackground(BattleFactoryApp *app, enum BgLayer bgLayer);
static void UpdateWheelPalette(BattleFactoryApp *app);
static void UpdateBackgroundPalette(BattleFactoryApp *app, enum BgLayer bgLayer, u8 palette, u8 width, u8 height);
static u8 GetBackgroundPanelPalette(BattleFactoryApp *app, u8 panelState, u8 dontCare);
static BOOL ConveyPokeballsOntoScreen(BattleFactoryApp *app);
static BOOL ConveyPokeballOffScreen(BattleFactoryApp *app);

static BattleFactoryAppPokeballSprite *CreatePokeballSprite(BattleFactoryApp *app, int idx);
static BattleFactoryAppPanelSprite *CreateBluePanelSprite(BattleFactoryApp *app, u32 animID);
static BattleFactoryAppPanelSprite *CreateGreenPanelSprite(BattleFactoryApp *app, u32 animID);
static void FreePanelSprites(BattleFactoryApp *app);
static void SetPanelSpritesAnim(BattleFactoryApp *app, u32 animID);
static u32 GetBluePanelSpriteAnimID(BattleFactoryApp *app, u32 animID);
static void CreatePokeballSpritesForExchange(BattleFactoryApp *app);
static void CreateMonSprite(BattleFactoryApp *app, u8 idx, Pokemon *mon, int x, int y, BOOL flip);
static void RecreateReceivableMonSprite(BattleFactoryApp *app);
static void InitInitialSelectionPokeballSprites(BattleFactoryApp *app);
static void InitInitialSelectionMonSprite(BattleFactoryApp *app);

static u8 PrintMessageWithBg(BattleFactoryApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font);
static u8 PrintMessage(BattleFactoryApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font);
static u8 PrintMessageAndCopyToVRAM(BattleFactoryApp *app, int entryID);
static void PrintPlayersName(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font);
static void PrintPartnersName(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font);
static void PrintMonNameAndGender(BattleFactoryApp *app, Window *window, u8 slot, u32 xOffset, u32 yOffset, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, const Party *party);
static void PrintPartnersMonNameAndGender(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, u16 species, u8 gender);
static void SetStringTemplateNumber(BattleFactoryApp *app, u32 idx, s32 num);
static void SetStringTemplateSpecies(BattleFactoryApp *app, u32 idx, BoxPokemon *boxMon);

static void InitMenu(BattleFactoryApp *app, Window *window, u8 numOptions);
static void AddStringToMenu(BattleFactoryApp *app, u8 strIndex, u8 listIndex, int entryID);
static void OpenMonOptionsMenu(BattleFactoryApp *app);
static void OpenYesNoMenu(BattleFactoryApp *app);
static BOOL CheckMenuWasCancelled(BattleFactoryApp *app);
static void SetMenuWasCancelled(BattleFactoryApp *app, u8 menuWasCancelled);

static BOOL SendCommMessage(BattleFactoryApp *app, u16 cmd, u16 arg);
static void DummyCreatePayload(BattleFactoryApp *app, u16 cmd);
static void CreateUpdateSelectionPayload(BattleFactoryApp *app, u16 cmd, u16 unused);
static void CreateTradeResultPayload(BattleFactoryApp *app, u16 cmd, u16 tradedMon);

static const CoordinatesU16 sInitialSelectionPokeballPositions[NUM_INITIAL_SELECT_OPTIONS] = {
    { 24, 112 },
    { 64, 112 },
    { 104, 112 },
    { 144, 112 },
    { 184, 112 },
    { 224, 112 }
};

static const CoordinatesU16 sExchangeSelectPokeballPositions[PARTY_SIZE_SOLO] = {
    { 64, 112 },
    { 120, 112 },
    { 176, 112 }
};

static const CoordinatesU16 sExchangeSelectMultiPokeballPositions[PARTY_SIZE_MULTI] = {
    { 96, 112 },
    { 152, 112 }
};

static const CoordinatesU16 sReceiveSelectMultiPokeballPositions[PARTY_SIZE_MULTI * 2] = {
    { 40, 112 },
    { 96, 112 },
    { 152, 112 },
    { 208, 112 }
};

static const CoordinatesS16 sInitialSelectCursorPositions[NUM_INITIAL_SELECT_OPTIONS] = {
    { 24, 112 },
    { 64, 112 },
    { 104, 112 },
    { 144, 112 },
    { 184, 112 },
    { 224, 112 }
};

static const CoordinatesS16 sExchangeSelectCursorPositions[PARTY_SIZE_SOLO + 1] = {
    { 64, 112 },
    { 120, 112 },
    { 176, 112 },
    { 212, 144 }
};

static const u8 sExchangeSelectCursorAnimIDs[NELEMS(sExchangeSelectCursorPositions)] = {
    ANIM_ID_CURSOR,
    ANIM_ID_CURSOR,
    ANIM_ID_CURSOR,
    ANIM_ID_MENU_CURSOR
};

static const CoordinatesS16 sExchangeSelectMultiCursorPositions[PARTY_SIZE_MULTI + 1] = {
    { 96, 112 },
    { 152, 112 },
    { 212, 144 }
};

static const u8 sExchangeSelectMultiCursorAnimIDs[NELEMS(sExchangeSelectMultiCursorPositions)] = {
    ANIM_ID_CURSOR,
    ANIM_ID_CURSOR,
    ANIM_ID_MENU_CURSOR
};

static const CoordinatesS16 sReceiveSelectCursorPositions[PARTY_SIZE_SOLO + 2] = {
    { 64, 112 },
    { 120, 112 },
    { 176, 112 },
    { 212, 144 },
    { 212, 160 }
};

static const u8 sReceiveSelectCursorAnimIDs[NELEMS(sReceiveSelectCursorPositions)] = {
    ANIM_ID_CURSOR,
    ANIM_ID_CURSOR,
    ANIM_ID_CURSOR,
    ANIM_ID_MENU_CURSOR,
    ANIM_ID_MENU_CURSOR
};

static const CoordinatesS16 sReceiveSelectMultiCursorPositions[PARTY_SIZE_MULTI * 2 + 2] = {
    { 40, 112 },
    { 96, 112 },
    { 152, 112 },
    { 208, 112 },
    { 212, 144 },
    { 212, 160 }
};

static const u8 sReceiveSelectMultiCursorAnimIDs[NELEMS(sReceiveSelectMultiCursorPositions)] = {
    ANIM_ID_CURSOR,
    ANIM_ID_CURSOR,
    ANIM_ID_CURSOR,
    ANIM_ID_CURSOR,
    ANIM_ID_MENU_CURSOR,
    ANIM_ID_MENU_CURSOR
};

static const CoordinatesS16 sMonOptionsMenuCursorPositions[] = {
    { 212, 144 },
    { 212, 160 },
    { 212, 176 }
};

static const CoordinatesS16 sYesNoMenuCursorPositions[] = {
    { 212, 144 },
    { 212, 160 }
};

static const u8 sSummaryPages[] = {
    SUMMARY_PAGE_INFO,
    SUMMARY_PAGE_MEMO,
    SUMMARY_PAGE_SKILLS,
    SUMMARY_PAGE_BATTLE_MOVES,
    SUMMARY_PAGE_EXIT,
    SUMMARY_PAGE_MAX,
};

int BattleFactoryApp_Init(ApplicationManager *appMan, int *state)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), OVERLAY_LOAD_ASYNC);
    InitGraphicsPlane();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE_FACTORY_APP, HEAP_SIZE_BATTLE_FACTORY_APP);

    BattleFactoryApp *app = ApplicationManager_NewData(appMan, sizeof(BattleFactoryApp), HEAP_ID_BATTLE_FACTORY_APP);
    memset(app, 0, sizeof(BattleFactoryApp));

    app->g3dPipeline = G3DPipeline_Init(HEAP_ID_BATTLE_FACTORY_APP, TEXTURE_VRAM_SIZE_256K, PALETTE_VRAM_SIZE_32K, BattleFactoryApp_Setup3D);
    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_FACTORY_APP);
    app->appMan = appMan;

    UnkStruct_ov104_02234130 *v2 = ApplicationManager_Args(appMan);

    app->saveData = v2->saveData;
    app->challengeType = v2->unk_04;
    app->unk_0A = v2->unk_05;
    app->isExchangeMode = v2->unk_06;
    app->personalParty = v2->unk_08;
    app->receivableParty = v2->unk_0C;
    app->selectedIndicesFinal = &v2->unk_10[0];
    app->options = SaveData_GetOptions(app->saveData);
    app->wheelPaletteCounter = 8;

    if (CheckAppIsInInitialSelectionMode(app, 0) == TRUE) {
        app->numPokeballs = NELEMS(sInitialSelectCursorPositions);
    } else {
        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            app->numPokeballs = NELEMS(sExchangeSelectMultiPokeballPositions);
            app->exchangeSelectCursorPositions = NELEMS(sExchangeSelectMultiCursorPositions);
            app->numReceiveSelectCursorPositions = NELEMS(sReceiveSelectMultiCursorPositions);
        } else {
            app->numPokeballs = NELEMS(sExchangeSelectPokeballPositions);
            app->exchangeSelectCursorPositions = NELEMS(sExchangeSelectCursorPositions);
            app->numReceiveSelectCursorPositions = NELEMS(sReceiveSelectCursorPositions);
        }
    }

    LoadAssets(app);

    if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
        sub_0209BA80(app);
    }

    *state = 0;
    return TRUE;
}

int BattleFactoryApp_Main(ApplicationManager *appMan, int *state)
{
    BattleFactoryApp *app = ApplicationManager_Data(appMan);

    if (app->partnerTradedMon == TRUE) {
        switch (*state) {
        case STATE_SELECT_MON_TO_EXCHANGE:
        case STATE_CANCEL_TRADE_FROM_EXCHANGE_SELECT:
        case STATE_SELECT_MON_TO_RECEIVE:
        case STATE_CANCEL_TRADE_FROM_RECEIVE_SELECT:
            if (!app->summaryScreenOpen) {
                ChangeState(app, state, STATE_SEND_TRADE_RESULT_COMM_MESSAGE);
            }
            break;
        }
    }

    switch (*state) {
    case STATE_FADE_IN_APP:
        if (State_FadeInApp(app) == TRUE) {
            ChangeState(app, state, STATE_SETUP_APP_STRINGS);
        }
        break;
    case STATE_MON_SUMMARY:
        if (State_RunMonSummaryApp(app) == TRUE) {
            ChangeState(app, state, STATE_SETUP_APP_STRINGS);
        } else {
            return FALSE;
        }
    case STATE_SETUP_APP_STRINGS:
        if (State_SetupAppStrings(app) == TRUE) {
            if (CheckAppIsInInitialSelectionMode(app, 0) == TRUE) {
                ChangeState(app, state, STATE_SELECT_INITIAL_PARTY);
            } else {
                ChangeState(app, state, STATE_SELECT_MON_TO_EXCHANGE);
            }
        }
        break;
    case STATE_SELECT_INITIAL_PARTY:
        UpdatePartnersMonsListing(app);

        if (State_SelectInitialParty(app) == TRUE) {
            if (app->summaryScreenOpened == TRUE) {
                ChangeState(app, state, STATE_MON_SUMMARY);
            } else if (app->numMonsSelected == GetNumMonToSelect(app->challengeType)) {
                ChangeState(app, state, STATE_CONFIRM_PARTY_SELECTION);
            } else if (CheckMenuWasCancelled(app) == TRUE) {
                ChangeState(app, state, STATE_FADE_OUT_APP);
            } else {
                ChangeState(app, state, STATE_SELECT_INITIAL_PARTY);
            }
        }
        break;
    case STATE_CONFIRM_PARTY_SELECTION:
        UpdatePartnersMonsListing(app);

        if (State_ConfirmPartySelection(app) == TRUE) {
            if (app->numMonsSelected == GetNumMonToSelect(app->challengeType)) {
                ChangeState(app, state, STATE_FADE_OUT_APP);
            } else {
                ChangeState(app, state, STATE_RETURN_TO_INITIAL_PARTY_SELECT);
            }
        }
        break;
    case STATE_RETURN_TO_INITIAL_PARTY_SELECT:
        if (State_ReturnToInitialPartySelection(app) == TRUE) {
            ChangeState(app, state, STATE_SELECT_INITIAL_PARTY);
        }
        break;
    case STATE_SELECT_MON_TO_EXCHANGE:
        if (State_SelectMonToExchange(app) == TRUE) {
            if (app->summaryScreenOpened == TRUE) {
                ChangeState(app, state, STATE_MON_SUMMARY);
            } else if (CheckMenuWasCancelled(app) == TRUE) {
                SetMenuWasCancelled(app, FALSE);
                ChangeState(app, state, STATE_CANCEL_TRADE_FROM_EXCHANGE_SELECT);
            } else {
                ChangeState(app, state, STATE_CHANGE_EXCHANGE_TO_RECEIVE_SELECT);
            }
        }
        break;
    case STATE_CANCEL_TRADE_FROM_EXCHANGE_SELECT:
        if (State_CancelTradeFromExchangeSelect(app) == TRUE) {
            if (CheckMenuWasCancelled(app) == TRUE) {
                SetMenuWasCancelled(app, FALSE);
                ChangeState(app, state, STATE_SELECT_MON_TO_EXCHANGE);
            } else if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                app->tradedMon = FALSE;
                ChangeState(app, state, STATE_SEND_TRADE_RESULT_COMM_MESSAGE);
            } else {
                ChangeState(app, state, STATE_FADE_OUT_APP);
            }
        }
        break;
    case STATE_SELECT_MON_TO_RECEIVE:
        if (State_SelectMonToReceive(app) == TRUE) {
            if (CheckMenuWasCancelled(app) == TRUE) {
                SetMenuWasCancelled(app, FALSE);
                ChangeState(app, state, STATE_CANCEL_TRADE_FROM_RECEIVE_SELECT);
            } else if (app->numMonsSelected == 0) {
                ChangeState(app, state, STATE_CHANGE_EXCHANGE_TO_RECEIVE_SELECT);
            } else if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                ChangeState(app, state, STATE_SEND_TRADE_RESULT_COMM_MESSAGE);
            } else {
                ChangeState(app, state, STATE_FADE_OUT_APP);
            }
        }
        break;
    case STATE_CANCEL_TRADE_FROM_RECEIVE_SELECT:
        if (State_CancelTradeFromReceiveSelect(app) == TRUE) {
            if (CheckMenuWasCancelled(app) == TRUE) {
                SetMenuWasCancelled(app, FALSE);
                ChangeState(app, state, STATE_SELECT_MON_TO_RECEIVE);
            } else if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                app->tradedMon = FALSE;
                ChangeState(app, state, STATE_SEND_TRADE_RESULT_COMM_MESSAGE);
            } else {
                ChangeState(app, state, STATE_FADE_OUT_APP);
            }
        }
        break;
    case STATE_CHANGE_EXCHANGE_TO_RECEIVE_SELECT:
        if (State_ChangeExchangeToReceiveSelect(app) == TRUE) {
            if (app->numMonsSelected == 0) {
                PrintStringsForExchangeSelect(app);
                ChangeState(app, state, STATE_SELECT_MON_TO_EXCHANGE);
            } else {
                ChangeState(app, state, STATE_SELECT_MON_TO_RECEIVE);
            }
        }
        break;
    case STATE_SEND_TRADE_RESULT_COMM_MESSAGE:
        if (State_SendTradeResultCommMessage(app) == TRUE) {
            if (app->partnerTradedMon == TRUE) {
                ChangeState(app, state, STATE_SHOW_TRADE_OCCURRED_MESSAGE);
            } else {
                ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
            }
        }
        break;
    case STATE_SYNC_BEFORE_EXIT:
        if (State_SyncBeforeExit(app) == TRUE) {
            ChangeState(app, state, STATE_FADE_OUT_APP);
        }
        break;
    case STATE_FADE_OUT_APP:
        if (State_FadeOutApp(app) == TRUE) {
            return TRUE;
        }
        break;
    case STATE_SHOW_TRADE_OCCURRED_MESSAGE:
        if (State_ShowTradeOccurredMessage(app) == TRUE) {
            ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
        }
        break;
    }

    SpriteList_Update(app->spriteMan.spriteList);
    BattleFactoryApp_UpdateMonGraphics(app->monSpriteMan);

    return FALSE;
}

int BattleFactoryApp_Exit(ApplicationManager *appMan, int *state)
{
    int i;
    BattleFactoryApp *app = ApplicationManager_Data(appMan);

    if (CheckAppIsInInitialSelectionMode(app, 0) == TRUE) {
        for (i = 0; i < GetNumMonToSelect(app->challengeType); i++) {
            app->selectedIndicesFinal[i] = app->selectedIndices[i];
        }
    } else {
        for (i = 0; i < 2; i++) {
            app->selectedIndicesFinal[i] = app->selectedIndices[i];
        }

        if (!app->tradedMon) {
            app->selectedIndicesFinal[0] = 0xff;
            app->selectedIndicesFinal[1] = 0xff;
        }
    }

    FreeAssets(app);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BATTLE_FACTORY_APP);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return TRUE;
}

static BOOL State_FadeInApp(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(237);
        }

        app->subState++;
        break;
    case 1:
        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            if (CommTiming_IsSyncState(237) == TRUE) {
                CommTool_ClearReceivedTempDataAllPlayers();
                app->subState++;
            }
        } else {
            app->subState++;
        }
        break;
    case 2:
        for (int i = 0; i < app->numPokeballs; i++) {
            BattleFactoryAppPokeballSprite_GetPosition(app->ballSprites[i]);
            BattleFactoryAppPokeballSprite_SetPositionForConveyorStart(app->ballSprites[i]);
        }

        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, 264);
        PokemonSprite_SetAttribute(app->monSprites[0], MON_SPRITE_HIDE, TRUE);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_FACTORY_APP);
        app->subState++;
        break;
    case 3:
        if (IsScreenFadeDone() == FALSE) {
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);
        app->animationTimer = 0;
        app->subState++;
        break;
    case 4:
        if (ConveyPokeballsOntoScreen(app) == TRUE) {
            Sound_StopEffect(SEQ_SE_DP_ELEBETA2, 0);
            Sound_PlayEffect(SEQ_SE_DP_KASYA);

            for (int i = 0; i < app->numPokeballs; i++) {
                BattleFactoryAppPokeballSprite_SetAnim(app->ballSprites[i], ANIM_ID_BALL_ONE_SHAKE);
            }

            SetPanelSpritesAnim(app, ANIM_ID_MON_PANEL_OPEN);

            app->wheelPaletteCounter = 8;
            app->animationTimer = 0;
            app->subState++;
        }
        break;
    case 5:
        if (BattleFactoryAppPanelSprite_IsAnimated(app->bluePanelSprite) == TRUE) {
            break;
        }

        FreePanelSprites(app);
        app->animationTimer = 0;
        app->subState++;
        break;
    case 6:
        if (app->animationTimer == 0) {
            ReloadMonSelectionBackground(app, BG_LAYER_MAIN_3);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
            UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_FADING, 0), 21, 11);
            PokemonSprite_SetAttribute(app->monSprites[0], MON_SPRITE_HIDE, FALSE);
            PokemonSpriteManager_StartFadeAll(app->monSpriteMan, 16, 0, 1, 0xffff);
        }

        if (PokemonSprite_IsFadeActive(app->monSprites[0])) {
            (void)0;
        }

        app->animationTimer++;

        if (app->animationTimer < 2) {
            break;
        }

        UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_SHOWN, 0), 21, 11);
        app->animationTimer = 0;
        InitWindows(app);

        return TRUE;
    }

    return FALSE;
}

static BOOL State_SetupAppStrings(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        if (CheckAppIsInInitialSelectionMode(app, 0) == TRUE) {
            PrintStringsForInitialSelect(app);
        } else {
            PrintStringsForExchangeSelect(app);
        }

        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            PrintPartnersName(app, &app->windows[WINDOW_PARTNERS_NAME], 0, 0, FONT_SYSTEM);
        }

        if (app->firstTimeSetupDone == TRUE) {
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_FACTORY_APP);
        }

        app->firstTimeSetupDone = TRUE;
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

static void PrintStringsForInitialSelect(BattleFactoryApp *app)
{
    int i;
    u8 numMons = BattleFactory_GetPartySize(app->challengeType);

    SetMenuWasCancelled(app, FALSE);
    app->monCursor = BattleFactoryAppCursor_New(&app->spriteMan, app->numPokeballs, app->numPokeballs, CURSOR_MODE_MON_ONLY, app->startingSlot, sInitialSelectCursorPositions, NULL);
    PrintPlayersName(app, &app->windows[WINDOW_PLAYERS_NAME], 0, 0, FONT_SYSTEM);

    for (i = 0; i < app->numMonsSelected; i++) {
        BattleFactoryAppPokeballSprite_SelectMon(app->ballSprites[app->selectedIndices[i]]);
        BattleFactoryAppPokeballSprite_UpdatePalette(app->ballSprites[app->selectedIndices[i]], PALETTE_POKEBALL_SELECTED);
        BattleFactoryAppPokeballSprite_SetAnim(app->ballSprites[app->selectedIndices[i]], ANIM_ID_BALL_SHAKING);
        PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + i], app->selectedIndices[i], 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);
    }

    PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected], BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);
    BattleFactoryApp_DrawMessageBox(&app->windows[WINDOW_MESSAGE_BOX], Options_Frame(app->options));
    SetStringTemplateNumber(app, 0, app->numMonsSelected + 1);

    app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_ChoosePokemon);

    if (app->summaryScreenOpened == TRUE) {
        UpdateMonCursorState(app->monCursor, TRUE);
        OpenMonOptionsMenu(app);

        app->menuCursor = BattleFactoryAppCursor_New(&app->spriteMan, NELEMS(sMonOptionsMenuCursorPositions), NELEMS(sMonOptionsMenuCursorPositions), CURSOR_MODE_MENU_ONLY, 0, sMonOptionsMenuCursorPositions, NULL);

        if (app->partnersNumSelectedMons != 0) {
            for (i = 0; i < numMons; i++) {
                Window_FillTilemap(&app->windows[WINDOW_PARTNERS_MON_NAME_1 + i], 0);

                if (i < app->partnersNumSelectedMons) {
                    PrintPartnersMonNameAndGender(app, &app->windows[WINDOW_PARTNERS_MON_NAME_1 + i], 0, 0, 15, 2, 0, FONT_SYSTEM, app->partnerMonSpecies[i], app->partnenMonGenders[i]);
                }

                Window_ScheduleCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_1 + i]);
            }
        }
    }
}

static void InitInitialSelectionPokeballSprites(BattleFactoryApp *app)
{
    for (int i = 0; i < app->numPokeballs; i++) {
        app->ballSprites[i] = CreatePokeballSprite(app, i);
        BattleFactoryAppPokeballSprite_SetDrawFlag(app->ballSprites[i], TRUE);
    }
}

static void InitInitialSelectionMonSprite(BattleFactoryApp *app)
{
    CreateMonSprite(app, 0, Party_GetPokemonBySlotIndex(app->personalParty, app->startingSlot), 120, 43, FALSE);
}

static void PrintStringsForExchangeSelect(BattleFactoryApp *app)
{
    SetMenuWasCancelled(app, FALSE);
    BattleFactoryApp_DrawMessageBox(&app->windows[WINDOW_MESSAGE_BOX], Options_Frame(app->options));

    if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
        app->monCursor = BattleFactoryAppCursor_New(&app->spriteMan, app->exchangeSelectCursorPositions, NELEMS(sExchangeSelectCursorPositions) - 1, CURSOR_MODE_MON_AND_MENU, app->startingSlot, sExchangeSelectCursorPositions, sExchangeSelectCursorAnimIDs);
    } else {
        app->monCursor = BattleFactoryAppCursor_New(&app->spriteMan, app->exchangeSelectCursorPositions, NELEMS(sExchangeSelectMultiCursorPositions) - 1, CURSOR_MODE_MON_AND_MENU, app->startingSlot, sExchangeSelectMultiCursorPositions, sExchangeSelectMultiCursorAnimIDs);
    }

    PrintPlayersName(app, &app->windows[WINDOW_PLAYERS_NAME], 0, 0, FONT_SYSTEM);
    PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1], BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);
    BattleFactoryApp_DrawWindow(app->bgConfig, &app->windows[WINDOW_MENU]);

    app->printerID = PrintMessageWithBg(app, &app->windows[WINDOW_MENU], BattleFactoryApp_Text_Cancel2, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_MENU]);
    app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_ChooseExchange);

    if (app->summaryScreenOpened == TRUE) {
        OpenMonOptionsMenu(app);
        app->menuCursor = BattleFactoryAppCursor_New(&app->spriteMan, NELEMS(sMonOptionsMenuCursorPositions), NELEMS(sMonOptionsMenuCursorPositions), CURSOR_MODE_MENU_ONLY, 0, sMonOptionsMenuCursorPositions, NULL);
    }
}

static void CreatePokeballSpritesForExchange(BattleFactoryApp *app)
{
    for (int i = 0; i < app->numPokeballs; i++) {
        app->ballSprites[i] = CreatePokeballSprite(app, i);
        BattleFactoryAppPokeballSprite_SetDrawFlag(app->ballSprites[i], TRUE);

        if (!app->exchangeMonSelected) {
            BattleFactoryAppPokeballSprite_SelectMon(app->ballSprites[i]);
            BattleFactoryAppPokeballSprite_UpdatePalette(app->ballSprites[i], PALETTE_POKEBALL_SELECTED);
            BattleFactoryAppPokeballSprite_SetAnim(app->ballSprites[i], ANIM_ID_BALL_STATIC);
        }
    }
}

static void CreateMonSpriteFlipped(BattleFactoryApp *app)
{
    CreateMonSprite(app, 0, Party_GetPokemonBySlotIndex(app->personalParty, app->startingSlot), 120, 43, TRUE);
}

static BOOL State_RunMonSummaryApp(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:

        if (ApplicationManager_Exec(app->monSummaryAppMan) == TRUE) {
            app->startingSlot = app->monSummary->monIndex;
            Heap_Free(app->monSummary);
            Heap_Free(app->monSummaryAppMan);
            app->monSummaryAppMan = NULL;
            ReInitApp(app);
            app->summaryScreenOpen = FALSE;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_SelectInitialParty(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        if (!app->summaryScreenOpened) {
            app->subState = 1;
        } else {
            app->subState = 2;
        }

        app->summaryScreenOpened = FALSE;
        break;
    case 1:
        BattleFactoryAppCursor_ProcessInput(app->monCursor);

        if (JOY_NEW(PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateInfoForMonUnderCursor(app, app->numMonsSelected, BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), 0, app->personalParty);
        }

        if (JOY_NEW(PAD_BUTTON_A)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateMonCursorState(app->monCursor, TRUE);
            OpenMonOptionsMenu(app);

            app->menuCursor = BattleFactoryAppCursor_New(&app->spriteMan, NELEMS(sMonOptionsMenuCursorPositions), NELEMS(sMonOptionsMenuCursorPositions), CURSOR_MODE_MENU_ONLY, 0, sMonOptionsMenuCursorPositions, NULL);
            app->subState++;
        } else if (JOY_NEW(PAD_BUTTON_B)) {
            if (app->numMonsSelected > 0) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                RemoveLastSelectedMon(app);

                if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                    SendCommMessage(app, COMM_CMD_SELECTION_UDPATE, 0);
                }

                return TRUE;
            }
        }
        break;
    case 2: {
        u32 input = Menu_ProcessInput(app->menu);
        BattleFactoryAppCursor_ProcessInput(app->menuCursor);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_OPTION_SUMMARY:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            BattleFactoryAppCursor_Free(app->menuCursor);
            app->menuCursor = NULL;
            app->summaryScreenOpen = TRUE;
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_FACTORY_APP);
            app->subState++;
            break;
        case MENU_OPTION_RENT:
            Menu_Free(app->menu, NULL);

            RemoveWindow(app->menuTemplate.window);
            SelectMon(app);

            if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                SendCommMessage(app, COMM_CMD_SELECTION_UDPATE, 0);
            }

            return TRUE;
        case MENU_OPTION_REMOVE:
            Menu_Free(app->menu, NULL);

            RemoveWindow(app->menuTemplate.window);
            RemoveSelectedMonUnderCursor(app);

            if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                SendCommMessage(app, COMM_CMD_SELECTION_UDPATE, 0);
            }

            return 1;
        case MENU_CANCEL:
        case MENU_OPTION_CANCEL:
        default:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            UpdateMonCursorState(app->monCursor, FALSE);
            BattleFactoryAppCursor_Free(app->menuCursor);
            app->menuCursor = NULL;
            return TRUE;
        }
        break;
    }
    case 3:
        if (IsScreenFadeDone() == TRUE) {
            SetupMonSummaryApp(app);
            FreeAssets(app);
            app->monSummaryAppMan = ApplicationManager_New(&gPokemonSummaryScreenApp, app->monSummary, HEAP_ID_BATTLE_FACTORY_APP);
            app->summaryScreenOpened = TRUE;
            return TRUE;
        }
        break;
    case 4:
        if (app->monSummaryAppMan == NULL) {
            return TRUE;
        }
        break;
    case 5:
        if (IsScreenFadeDone() == TRUE) {
            app->subState = 2;
        }
        break;
    }

    return FALSE;
}

static void RemoveLastSelectedMon(BattleFactoryApp *app)
{
    Window_FillTilemap(&app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected], 0);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected]);

    app->numMonsSelected--;
    Window_FillTilemap(&app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected], 0);

    PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected], BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);
    SetStringTemplateNumber(app, 0, app->numMonsSelected + 1);

    app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_ChoosePokemon);

    BattleFactoryAppPokeballSprite_UnselectMon(app->ballSprites[app->selectedIndices[app->numMonsSelected]]);
    BattleFactoryAppPokeballSprite_UpdatePalette(app->ballSprites[app->selectedIndices[app->numMonsSelected]], PALETTE_POKEBALL_NOT_SELECTED);
    BattleFactoryAppPokeballSprite_SetAnim(app->ballSprites[app->selectedIndices[app->numMonsSelected]], ANIM_ID_BALL_STATIC);

    app->selectedIndices[app->numMonsSelected] = 0;
}

static void SelectMon(BattleFactoryApp *app)
{
    BattleFactoryAppPokeballSprite_SelectMon(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)]);
    BattleFactoryAppPokeballSprite_UpdatePalette(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)], PALETTE_POKEBALL_SELECTED);
    BattleFactoryAppPokeballSprite_SetAnim(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)], ANIM_ID_BALL_SHAKING);

    app->selectedIndices[app->numMonsSelected] = BattleFactoryAppCursor_GetCurrentSlot(app->monCursor);
    app->numMonsSelected++;

    if (app->numMonsSelected == GetNumMonToSelect(app->challengeType)) {
        BattleFactoryAppCursor_Free(app->menuCursor);
        app->menuCursor = NULL;
    } else {
        UpdateMonCursorState(app->monCursor, FALSE);
        BattleFactoryAppCursor_Free(app->menuCursor);

        app->menuCursor = NULL;

        PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected], BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);
        SetStringTemplateNumber(app, 0, app->numMonsSelected + 1);

        app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_ChoosePokemon);
    }
}

static void RemoveSelectedMonUnderCursor(BattleFactoryApp *app)
{
    BattleFactoryAppPokeballSprite_UnselectMon(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)]);
    BattleFactoryAppPokeballSprite_UpdatePalette(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)], PALETTE_POKEBALL_NOT_SELECTED);
    BattleFactoryAppPokeballSprite_SetAnim(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)], ANIM_ID_BALL_STATIC);

    if (app->numMonsSelected >= 2) {
        if (app->selectedIndices[0] == BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)) {
            app->selectedIndices[0] = app->selectedIndices[1];
            PokemonSprite_Delete(app->monSprites[0]);
            CreateMonSprite(app, 0, Party_GetPokemonBySlotIndex(app->personalParty, BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)), 120, 43, FALSE);
        }
    }

    app->numMonsSelected--;
    app->selectedIndices[app->numMonsSelected] = 0;

    UpdateMonCursorState(app->monCursor, FALSE);
    BattleFactoryAppCursor_Free(app->menuCursor);

    app->menuCursor = NULL;
    u8 numMons = GetNumMonToSelect(app->challengeType);

    for (int i = 0; i < numMons; i++) {
        Window_FillTilemap(&app->windows[WINDOW_SELECTED_MON_NAME_1 + i], 0);
    }

    for (int i = 0; i < app->numMonsSelected; i++) {
        PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + i], app->selectedIndices[i], 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);
    }

    PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected], BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);

    for (int i = 0; i < numMons; i++) {
        Window_ScheduleCopyToVRAM(&app->windows[WINDOW_SELECTED_MON_NAME_1 + i]);
    }

    SetStringTemplateNumber(app, 0, app->numMonsSelected + 1);
    app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_ChoosePokemon);
}

static BOOL State_ConfirmPartySelection(BattleFactoryApp *app)
{
    int i;
    u8 numMons = BattleFactory_GetPartySize(app->challengeType);

    switch (app->subState) {
    case 0:
        BattleFactoryAppCursor_SetDrawFlag(app->monCursor, FALSE);
        app->clearPartnerInfo = TRUE;
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_NAME]);
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_1]);
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_2]);

        for (i = 0; i < app->numMonsSelected; i++) {
            Window_FillTilemap(&app->windows[WINDOW_SELECTED_MON_NAME_1 + i], 0);
            Window_ScheduleCopyToVRAM(&app->windows[WINDOW_SELECTED_MON_NAME_1 + i]);
        }

        Window_FillTilemap(&app->windows[WINDOW_PLAYERS_NAME], 0);
        Window_ScheduleCopyToVRAM(&app->windows[WINDOW_PLAYERS_NAME]);

        UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_FADING, 0), 21, 11);
        PokemonSpriteManager_StartFadeAll(app->monSpriteMan, 0, 16, 0, 0xffff);

        app->animationTimer = 0;
        app->subState++;
        break;
    case 1:
        app->animationTimer++;

        if (app->animationTimer < 2) {
            break;
        }

        PokemonSprite_SetAttribute(app->monSprites[0], MON_SPRITE_HIDE, TRUE);

        SetPanelSpritesAnim(app, ANIM_ID_MON_PANEL_CLOSE);
        UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_HIDDEN, 0), 21, 11);
        ReloadNoScreensBackground(app, BG_LAYER_MAIN_3);
        app->animationTimer = 0;
        app->subState++;
        break;
    case 2:
        if (PokemonSprite_IsFadeActive(app->monSprites[0])) {
            (void)0;
        }

        if (BattleFactoryAppPanelSprite_IsAnimated(app->bluePanelSprite) == TRUE) {
            break;
        }

        FreePanelSprites(app);
        PokemonSprite_Delete(app->monSprites[0]);

        int xOffsets[3];
        xOffsets[0] = 44;
        xOffsets[1] = 128;
        xOffsets[2] = 212;

        for (i = 0; i < numMons; i++) {
            CreateMonSprite(app, i, Party_GetPokemonBySlotIndex(app->personalParty, app->selectedIndices[i]), xOffsets[i], 43, FALSE);
            PokemonSprite_SetAttribute(app->monSprites[i], MON_SPRITE_HIDE, TRUE);
        }

        SetPanelSpritesAnim(app, ANIM_ID_CONFIRM_PANEL_OPEN);
        app->subState++;
        break;
    case 3:
        if (BattleFactoryAppPanelSprite_IsAnimated(app->bluePanelSprite) == TRUE) {
            break;
        }

        FreePanelSprites(app);

        app->animationTimer = 0;
        app->subState++;
        break;
    case 4:
        if (app->animationTimer == 0) {
            LoadSelectionConfirmBackground(app, BG_LAYER_MAIN_3);

            for (i = 0; i < numMons; i++) {
                PokemonSprite_SetAttribute(app->monSprites[i], MON_SPRITE_HIDE, FALSE);
            }

            if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
                UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_FADING, 1), 32, 11);
            } else {
                UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_FADING, 1), 21, 11);
            }

            PokemonSpriteManager_StartFadeAll(app->monSpriteMan, 16, 0, 1, 0xffff);
        }

        if (PokemonSprite_IsFadeActive(app->monSprites[0])) {
            (void)0;
        }

        app->animationTimer++;

        if (app->animationTimer < 21) {
            break;
        }

        if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
            UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_SHOWN, 1), 32, 11);
        } else {
            UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_SHOWN, 1), 21, 11);
        }

        app->clearPartnerInfo = FALSE;

        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            app->partnerListingUpdateNeeded = TRUE;
            UpdatePartnersMonsListing(app);
        }

        SetStringTemplateNumber(app, 0, numMons);
        app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_OkWithSelection);
        OpenYesNoMenu(app);

        app->menuCursor = BattleFactoryAppCursor_New(&app->spriteMan, NELEMS(sYesNoMenuCursorPositions), NELEMS(sYesNoMenuCursorPositions), CURSOR_MODE_MENU_ONLY, 0, sYesNoMenuCursorPositions, NULL);
        app->animationTimer = 0;
        app->subState++;
        break;
    case 5: {
        u32 input = Menu_ProcessInput(app->menu);
        BattleFactoryAppCursor_ProcessInput(app->menuCursor);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            BattleFactoryAppCursor_Free(app->menuCursor);
            app->menuCursor = NULL;
            app->subState++;
            break;
        case MENU_CANCEL:
        case MENU_NO:
        default:
            BattleFactoryAppCursor_SetDrawFlag(app->monCursor, TRUE);
            Menu_Free(app->menu, NULL);

            RemoveWindow(app->menuTemplate.window);
            BattleFactoryAppCursor_Free(app->menuCursor);

            app->menuCursor = NULL;
            app->numMonsSelected--;
            app->selectedIndices[app->numMonsSelected] = 0;

            if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                SendCommMessage(app, COMM_CMD_SELECTION_UDPATE, 0);
            }

            return TRUE;
        }
        break;
    }
    case 6:
        if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
            return TRUE;
        }

        if (SendCommMessage(app, COMM_CMD_SELECTION_UDPATE, 0) == TRUE) {
            app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_PleaseWait);

            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(164);
            app->subState++;
        }
        break;
    case 7:
        if (CommTiming_IsSyncState(164) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_ReturnToInitialPartySelection(BattleFactoryApp *app)
{
    u8 numMons = BattleFactory_GetPartySize(app->challengeType);

    switch (app->subState) {
    case 0:
        app->clearPartnerInfo = TRUE;

        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_NAME]);
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_1]);
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_2]);

        if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
            UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_FADING, 1), 32, 11);
        } else {
            UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_FADING, 1), 21, 11);
        }

        PokemonSpriteManager_StartFadeAll(app->monSpriteMan, 0, 16, 0, 0xffff);

        app->animationTimer = 0;
        app->subState++;
        break;
    case 1:
        app->animationTimer++;

        if (app->animationTimer < 2) {
            break;
        }

        for (int i = 0; i < numMons; i++) {
            PokemonSprite_Delete(app->monSprites[i]);
        }

        SetPanelSpritesAnim(app, ANIM_ID_CONFIRM_PANEL_CLOSE);

        if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
            UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_HIDDEN, 0), 32, 11);
        } else {
            UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_HIDDEN, 0), 21, 11);
        }

        ReloadNoScreensBackground(app, BG_LAYER_MAIN_3);

        app->animationTimer = 0;
        app->subState++;

        break;
    case 2:
        if (PokemonSprite_IsFadeActive(app->monSprites[0])) {
            (void)0;
        }

        if (BattleFactoryAppPanelSprite_IsAnimated(app->bluePanelSprite) == TRUE) {
            break;
        }

        FreePanelSprites(app);
        CreateMonSprite(app, 0, Party_GetPokemonBySlotIndex(app->personalParty, BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)), 120, 43, FALSE);

        PokemonSprite_SetAttribute(app->monSprites[0], MON_SPRITE_HIDE, TRUE);
        SetPanelSpritesAnim(app, ANIM_ID_MON_PANEL_OPEN);

        app->subState++;
        break;
    case 3:
        if (BattleFactoryAppPanelSprite_IsAnimated(app->bluePanelSprite) == TRUE) {
            break;
        }

        FreePanelSprites(app);
        app->animationTimer = 0;
        app->subState++;
        break;
    case 4:
        if (app->animationTimer == 0) {
            ReloadMonSelectionBackground(app, BG_LAYER_MAIN_3);
            PokemonSprite_SetAttribute(app->monSprites[0], MON_SPRITE_HIDE, FALSE);
            UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_FADING, 0), 21, 11);
            PokemonSpriteManager_StartFadeAll(app->monSpriteMan, 16, 0, 1, 0xffff);
        }

        if (PokemonSprite_IsFadeActive(app->monSprites[0])) {
            (void)0;
        }

        app->animationTimer++;

        if (app->animationTimer < 21) {
            break;
        }

        UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_SHOWN, 0), 21, 11);
        app->clearPartnerInfo = FALSE;

        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            app->partnerListingUpdateNeeded = TRUE;
            UpdatePartnersMonsListing(app);
        }

        RedisplayInfoForInitialSelection(app);
        return TRUE;
    }

    return FALSE;
}

static void RedisplayInfoForInitialSelection(BattleFactoryApp *app)
{
    BattleFactory_GetPartySize(app->challengeType);

    for (int i = 0; i < app->numMonsSelected; i++) {
        PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + i], app->selectedIndices[i], 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);
    }

    PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected], BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);
    PrintPlayersName(app, &app->windows[WINDOW_PLAYERS_NAME], 0, 0, FONT_SYSTEM);
    UpdateMonCursorState(app->monCursor, FALSE);
    BattleFactoryAppPokeballSprite_UnselectMon(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)]);
    BattleFactoryAppPokeballSprite_UpdatePalette(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)], PALETTE_POKEBALL_NOT_SELECTED);
    BattleFactoryAppPokeballSprite_SetAnim(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)], ANIM_ID_BALL_STATIC);
    SetStringTemplateNumber(app, 0, app->numMonsSelected + 1);

    app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_ChoosePokemon);
}

static BOOL State_SelectMonToExchange(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        SetMenuWasCancelled(app, FALSE);

        if (!app->summaryScreenOpened) {
            app->subState = 1;
        } else {
            app->subState = 2;
        }

        app->summaryScreenOpened = FALSE;
        break;
    case 1:
        BattleFactoryAppCursor_ProcessInput(app->monCursor);

        if (JOY_NEW(PAD_KEY_LEFT | PAD_KEY_RIGHT | PAD_KEY_UP | PAD_KEY_DOWN)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateInfoForMonUnderCursor(app, app->numMonsSelected, BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), TRUE, app->personalParty);
        }

        if (JOY_NEW(PAD_BUTTON_A)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (BattleFactoryAppCursor_GetCurrentSlot(app->monCursor) == app->exchangeSelectCursorPositions - 1) {
                SetMenuWasCancelled(app, TRUE);
                return TRUE;
            } else {
                UpdateMonCursorState(app->monCursor, TRUE);
                OpenMonOptionsMenu(app);

                app->menuCursor = BattleFactoryAppCursor_New(&app->spriteMan, NELEMS(sMonOptionsMenuCursorPositions), NELEMS(sMonOptionsMenuCursorPositions), CURSOR_MODE_MENU_ONLY, 0, sMonOptionsMenuCursorPositions, NULL);
                app->subState++;
            }
        } else if (JOY_NEW(PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            SetMenuWasCancelled(app, TRUE);
            return TRUE;
        }
        break;
    case 2: {
        u32 input = Menu_ProcessInput(app->menu);
        BattleFactoryAppCursor_ProcessInput(app->menuCursor);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_OPTION_SUMMARY:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            BattleFactoryAppCursor_Free(app->menuCursor);
            app->menuCursor = NULL;
            app->summaryScreenOpen = TRUE;
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_FACTORY_APP);
            app->subState++;
            break;
        case MENU_OPTION_EXCHANGE:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            SelectMonToBeExchanged(app);
            return TRUE;
        case MENU_CANCEL:
        case MENU_OPTION_CANCEL:
        default:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            UpdateMonCursorState(app->monCursor, FALSE);
            BattleFactoryAppCursor_Free(app->menuCursor);
            app->menuCursor = NULL;
            BattleFactoryApp_DrawWindow(app->bgConfig, &app->windows[WINDOW_MENU]);
            app->printerID = PrintMessageWithBg(app, &app->windows[WINDOW_MENU], BattleFactoryApp_Text_Cancel2, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
            Window_ScheduleCopyToVRAM(&app->windows[WINDOW_MENU]);
            app->subState = 1;
            break;
        }
        break;
    }
    case 3:
        if (IsScreenFadeDone() == TRUE) {
            SetupMonSummaryApp(app);
            FreeAssets(app);
            app->monSummaryAppMan = ApplicationManager_New(&gPokemonSummaryScreenApp, app->monSummary, HEAP_ID_BATTLE_FACTORY_APP);
            app->summaryScreenOpened = TRUE;
            return TRUE;
        }
        break;
    case 4:
        if (app->monSummaryAppMan == NULL) {
            return TRUE;
        }
        break;
    case 5:
        if (IsScreenFadeDone() == TRUE) {
            app->subState = 2;
        }
        break;
    }

    return FALSE;
}

static void SelectMonToBeExchanged(BattleFactoryApp *app)
{
    BattleFactoryAppPokeballSprite_SelectMon(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)]);
    BattleFactoryAppPokeballSprite_UpdatePalette(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)], PALETTE_POKEBALL_SELECTED);
    BattleFactoryAppPokeballSprite_SetAnim(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)], ANIM_ID_BALL_STATIC);
    PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected], BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);

    app->selectedIndices[app->numMonsSelected] = BattleFactoryAppCursor_GetCurrentSlot(app->monCursor);
    app->numMonsSelected++;

    BattleFactoryAppCursor_Free(app->menuCursor);
    app->menuCursor = NULL;

    BattleFactoryAppCursor_Free(app->monCursor);
    app->monCursor = NULL;
    app->exchangeMonSelected = TRUE;

    Window_FillTilemap(&app->windows[WINDOW_SELECTED_MON_NAME_1], 0);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_SELECTED_MON_NAME_1]);
}

static BOOL State_CancelTradeFromExchangeSelect(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        Window_FillTilemap(&app->windows[WINDOW_SELECTED_MON_NAME_1], 0);
        Window_ScheduleCopyToVRAM(&app->windows[WINDOW_SELECTED_MON_NAME_1 + app->numMonsSelected]);
        PokemonSprite_Delete(app->monSprites[0]);

        app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_CancelTrade);

        BattleFactoryAppCursor_SetDrawFlag(app->monCursor, FALSE);
        UpdateMonCursorState(app->monCursor, TRUE);
        OpenYesNoMenu(app);
        app->menuCursor = BattleFactoryAppCursor_New(&app->spriteMan, NELEMS(sYesNoMenuCursorPositions), NELEMS(sYesNoMenuCursorPositions), CURSOR_MODE_MENU_ONLY, 0, sYesNoMenuCursorPositions, NULL);
        app->subState++;
        break;
    case 1: {
        u32 input = Menu_ProcessInput(app->menu);
        BattleFactoryAppCursor_ProcessInput(app->menuCursor);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            BattleFactoryAppCursor_Free(app->menuCursor);
            app->menuCursor = NULL;
            app->tradedMon = FALSE;

            if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_PleaseWait);
            }

            app->subState++;
            break;
        case MENU_CANCEL:
        case MENU_NO:
        default:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            BattleFactoryAppCursor_Free(app->menuCursor);
            app->menuCursor = NULL;
            RedisplayMonInfoForExchangeSelect(app);
            app->subState++;
            break;
        }
        break;
    }
    case 2:
        return TRUE;
    }

    return FALSE;
}

static void RedisplayMonInfoForExchangeSelect(BattleFactoryApp *app)
{
    BattleFactoryAppCursor_UpdatePosition(app->monCursor, 0);
    PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1], BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), 0, 0, 15, 2, 0, FONT_SYSTEM, app->personalParty);
    CreateMonSprite(app, 0, Party_GetPokemonBySlotIndex(app->personalParty, BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)), 120, 43, TRUE);
    BattleFactoryAppCursor_SetDrawFlag(app->monCursor, TRUE);
    UpdateMonCursorState(app->monCursor, FALSE);
    SetMenuWasCancelled(app, TRUE);
    BattleFactoryApp_DrawWindow(app->bgConfig, &app->windows[WINDOW_MENU]);

    app->printerID = PrintMessageWithBg(app, &app->windows[WINDOW_MENU], BattleFactoryApp_Text_Cancel2, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_MENU]);
    app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_ChooseExchange);
}

static BOOL State_SelectMonToReceive(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        BattleFactoryApp_DrawWindow(app->bgConfig, &app->windows[WINDOW_MENU]);

        app->printerID = PrintMessageWithBg(app, &app->windows[WINDOW_MENU], BattleFactoryApp_Text_Back, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
        app->printerID = PrintMessage(app, &app->windows[WINDOW_MENU], BattleFactoryApp_Text_Cancel3, 1, 17, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);

        Window_ScheduleCopyToVRAM(&app->windows[WINDOW_MENU]);

        if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
            app->monCursor = BattleFactoryAppCursor_New(&app->spriteMan, app->numReceiveSelectCursorPositions, NELEMS(sReceiveSelectCursorPositions) - 2, CURSOR_MODE_MON_AND_MENU, 0, sReceiveSelectCursorPositions, sReceiveSelectCursorAnimIDs);
        } else {
            app->monCursor = BattleFactoryAppCursor_New(&app->spriteMan, app->numReceiveSelectCursorPositions, NELEMS(sReceiveSelectMultiCursorPositions) - 2, CURSOR_MODE_MON_AND_MENU, 0, sReceiveSelectMultiCursorPositions, sReceiveSelectMultiCursorAnimIDs);
        }

        u8 slot = BattleFactoryAppCursor_GetCurrentSlot(app->monCursor);

        PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1], slot, 0, 0, 15, 2, 0, FONT_SYSTEM, app->receivableParty);
        BattleFactoryApp_DrawMessageBox(&app->windows[WINDOW_MESSAGE_BOX], Options_Frame(app->options));

        app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_ChooseReceive);
        app->subState++;

        break;
    case 1:
        BattleFactoryAppCursor_ProcessInput(app->monCursor);

        if (JOY_NEW(PAD_KEY_UP | PAD_KEY_DOWN)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateInfoForMonUnderCursor(app, 0, BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), FALSE, app->receivableParty);
        }

        if (JOY_NEW(PAD_KEY_LEFT | PAD_KEY_RIGHT)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            UpdateInfoForMonUnderCursor(app, 0, BattleFactoryAppCursor_GetCurrentSlot(app->monCursor), FALSE, app->receivableParty);
        }

        if (JOY_NEW(PAD_BUTTON_A)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (BattleFactoryAppCursor_GetCurrentSlot(app->monCursor) == app->numReceiveSelectCursorPositions - 1) {
                SetMenuWasCancelled(app, TRUE);
                return TRUE;
            } else if (BattleFactoryAppCursor_GetCurrentSlot(app->monCursor) == app->numReceiveSelectCursorPositions - 2) {
                GoBackToExchangeSelect(app);
                return TRUE;
            } else {
                UpdateMonCursorState(app->monCursor, TRUE);
                OpenYesNoMenu(app);

                app->menuCursor = BattleFactoryAppCursor_New(&app->spriteMan, NELEMS(sYesNoMenuCursorPositions), NELEMS(sYesNoMenuCursorPositions), CURSOR_MODE_MENU_ONLY, 0, sYesNoMenuCursorPositions, NULL);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_AcceptPokemon);
                app->subState++;
            }
        } else if (JOY_NEW(PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            SetMenuWasCancelled(app, TRUE);
            return TRUE;
        }
        break;
    case 2: {
        u32 input = Menu_ProcessInput(app->menu);
        BattleFactoryAppCursor_ProcessInput(app->menuCursor);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;

        case MENU_YES:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            ConfirmReceiveSelection(app);

            if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_PleaseWait);
            }

            app->subState++;
            break;
        case MENU_CANCEL:
        case MENU_NO:
        default:
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            DrawReceiveSelectOptionsMenu(app);
            app->subState = 1;
            break;
        }
        break;
    }
    case 3:
        return TRUE;
    }

    return FALSE;
}

static void GoBackToExchangeSelect(BattleFactoryApp *app)
{
    BattleFactoryAppCursor_Free(app->monCursor);

    app->monCursor = NULL;
    app->exchangeMonSelected = FALSE;

    Window_FillTilemap(&app->windows[WINDOW_SELECTED_MON_NAME_1], 0);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_SELECTED_MON_NAME_1]);
    PokemonSprite_Delete(app->monSprites[0]);

    Window_FillTilemap(&app->windows[WINDOW_MENU], 15);
    Window_EraseMessageBox(&app->windows[WINDOW_MENU], TRUE);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[WINDOW_MENU]);

    app->numMonsSelected--;
    app->selectedIndices[0] = 0;
}

static void ConfirmReceiveSelection(BattleFactoryApp *app)
{
    app->tradedMon = TRUE;
    app->selectedIndices[app->numMonsSelected] = BattleFactoryAppCursor_GetCurrentSlot(app->monCursor);
    app->numMonsSelected++;

    BattleFactoryAppCursor_Free(app->menuCursor);
    app->menuCursor = NULL;
    BattleFactoryAppCursor_SetDrawFlag(app->monCursor, FALSE);

    Window_FillTilemap(&app->windows[WINDOW_SELECTED_MON_NAME_1], 0);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_SELECTED_MON_NAME_1]);
    PokemonSprite_Delete(app->monSprites[0]);
}

static void DrawReceiveSelectOptionsMenu(BattleFactoryApp *app)
{
    BattleFactoryAppCursor_Free(app->menuCursor);
    app->menuCursor = NULL;
    UpdateMonCursorState(app->monCursor, FALSE);
    BattleFactoryApp_DrawWindow(app->bgConfig, &app->windows[WINDOW_MENU]);
    app->printerID = PrintMessageWithBg(app, &app->windows[WINDOW_MENU], BattleFactoryApp_Text_Back, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
    app->printerID = PrintMessage(app, &app->windows[WINDOW_MENU], BattleFactoryApp_Text_Cancel3, 1, 17, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_SYSTEM);
    BattleFactoryApp_DrawMessageBox(&app->windows[WINDOW_MESSAGE_BOX], Options_Frame(app->options));
    app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_ChooseReceive);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_MENU]);
}

static BOOL State_CancelTradeFromReceiveSelect(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        Window_FillTilemap(&app->windows[WINDOW_SELECTED_MON_NAME_1], 0);
        Window_ScheduleCopyToVRAM(&app->windows[WINDOW_SELECTED_MON_NAME_1]);
        PokemonSprite_Delete(app->monSprites[0]);

        BattleFactoryApp_DrawMessageBox(&app->windows[WINDOW_MESSAGE_BOX], Options_Frame(app->options));
        app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_CancelTrade);
        BattleFactoryAppCursor_SetDrawFlag(app->monCursor, FALSE);

        OpenYesNoMenu(app);
        app->menuCursor = BattleFactoryAppCursor_New(&app->spriteMan, NELEMS(sYesNoMenuCursorPositions), NELEMS(sYesNoMenuCursorPositions), CURSOR_MODE_MENU_ONLY, 0, sYesNoMenuCursorPositions, NULL);
        app->subState++;
        break;

    case 1: {
        u32 input = Menu_ProcessInput(app->menu);
        BattleFactoryAppCursor_ProcessInput(app->menuCursor);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            Menu_Free(app->menu, NULL);

            RemoveWindow(app->menuTemplate.window);
            BattleFactoryAppCursor_Free(app->menuCursor);

            app->menuCursor = NULL;
            app->tradedMon = FALSE;

            if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_PleaseWait);
            }

            app->subState++;
            break;
        case MENU_CANCEL:
        case MENU_NO:
        default:
            Menu_Free(app->menu, NULL);

            BattleFactoryAppCursor_Free(app->monCursor);
            app->monCursor = NULL;

            BattleFactoryAppCursor_Free(app->menuCursor);
            app->menuCursor = NULL;

            RecreateReceivableMonSprite(app);
            app->subState++;
            break;
        }
        break;
    }
    case 2:
        return TRUE;
    }

    return FALSE;
}

static void RecreateReceivableMonSprite(BattleFactoryApp *app)
{
    CreateMonSprite(app, 0, Party_GetPokemonBySlotIndex(app->receivableParty, 0), 120, 43, FALSE);
    SetMenuWasCancelled(app, TRUE);
}

static BOOL State_ChangeExchangeToReceiveSelect(BattleFactoryApp *app)
{
    int i;
    u8 numMons = BattleFactory_GetPartySize(app->challengeType);

    switch (app->subState) {
    case 0:
        app->clearPartnerInfo = TRUE;

        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_NAME]);
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_1]);
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_2]);

        Window_FillTilemap(&app->windows[WINDOW_PLAYERS_NAME], 0);
        Window_ScheduleCopyToVRAM(&app->windows[WINDOW_PLAYERS_NAME]);

        Window_EraseMessageBox(&app->windows[WINDOW_MESSAGE_BOX], 1);
        Window_ClearAndScheduleCopyToVRAM(&app->windows[WINDOW_MESSAGE_BOX]);

        BattleFactoryApp_FreeWindows(app->windows);
        UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_FADING, 0), 21, 11);

        PokemonSpriteManager_StartFadeAll(app->monSpriteMan, 0, 16, 0, 0xffff);

        app->animationTimer = 0;
        app->subState++;
        break;
    case 1:
        app->animationTimer++;

        if (app->animationTimer < 2) {
            break;
        }

        PokemonSprite_Delete(app->monSprites[0]);

        SetPanelSpritesAnim(app, ANIM_ID_MON_PANEL_CLOSE);
        UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_HIDDEN, 0), 21, 11);
        ReloadNoScreensBackground(app, BG_LAYER_MAIN_3);

        app->animationTimer = 0;
        app->subState++;
        break;
    case 2:
        if (PokemonSprite_IsFadeActive(app->monSprites[0])) {
            (void)0;
        }

        if (BattleFactoryAppPanelSprite_IsAnimated(app->bluePanelSprite) == TRUE) {
            break;
        }

        FreePanelSprites(app);
        LoadWheelBackground(app, BG_LAYER_MAIN_1);
        LoadConveyorBackground(app, BG_LAYER_MAIN_2);
        LoadAppStartupBackground(app, BG_LAYER_MAIN_3);

        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, app->conveyorXOffset);
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);

        app->animationTimer = 0;
        app->subState++;
        break;
    case 3:
        if (ConveyPokeballOffScreen(app) == TRUE) {
            Sound_StopEffect(SEQ_SE_DP_ELEBETA2, 0);
            Sound_PlayEffect(SEQ_SE_DP_KASYA);

            app->wheelPaletteCounter = 8;

            for (i = 0; i < app->numPokeballs; i++) {
                app->ballSprites[i] = BattleFactoryAppPokeballSprite_Free(app->ballSprites[i]);
                app->ballSprites[i] = NULL;
            }

            if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
                if (app->numPokeballs == NELEMS(sExchangeSelectMultiPokeballPositions)) {
                    app->numPokeballs = NELEMS(sReceiveSelectMultiPokeballPositions);
                } else {
                    app->numPokeballs = NELEMS(sExchangeSelectMultiPokeballPositions);
                }
            }

            CreatePokeballSpritesForExchange(app);

            for (i = 0; i < app->numPokeballs; i++) {
                BattleFactoryAppPokeballSprite_SetPositionForConveyorStart(app->ballSprites[i]);
            }

            Sound_PlayEffect(SEQ_SE_DP_ELEBETA2);

            app->animationTimer = 0;
            app->subState++;
        }
        break;
    case 4:
        if (ConveyPokeballsOntoScreen(app) == 1) {
            Sound_StopEffect(SEQ_SE_DP_ELEBETA2, 0);
            Sound_PlayEffect(SEQ_SE_DP_KASYA);

            for (i = 0; i < app->numPokeballs; i++) {
                BattleFactoryAppPokeballSprite_SetAnim(app->ballSprites[i], ANIM_ID_BALL_ONE_SHAKE);
            }

            app->wheelPaletteCounter = 8;

            SetPanelSpritesAnim(app, ANIM_ID_MON_PANEL_OPEN);

            app->animationTimer = 0;
            app->subState++;
        }
        break;
    case 5:
        if (BattleFactoryAppPanelSprite_IsAnimated(app->bluePanelSprite) == TRUE) {
            break;
        }

        FreePanelSprites(app);

        app->animationTimer = 0;
        app->subState++;
        break;
    case 6:
        if (app->animationTimer == 0) {
            ReloadMonSelectionBackground(app, BG_LAYER_MAIN_3);
            GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);

            if (!app->exchangeMonSelected) {
                CreateMonSpriteFlipped(app);
            } else {
                CreateMonSprite(app, 0, Party_GetPokemonBySlotIndex(app->receivableParty, 0), 120, 43, FALSE);
            }

            PokemonSprite_SetAttribute(app->monSprites[0], MON_SPRITE_HIDE, FALSE);
            PokemonSpriteManager_StartFadeAll(app->monSpriteMan, 16, 0, 1, 0xffff);

            UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_FADING, 1), 21, 11);
        }

        if (PokemonSprite_IsFadeActive(app->monSprites[0])) {
            (void)0;
        }

        app->animationTimer++;

        if (app->animationTimer < 21) {
            break;
        }

        UpdateBackgroundPalette(app, BG_LAYER_MAIN_3, GetBackgroundPanelPalette(app, BACKGROUND_PANEL_SHOWN, 1), 21, 11);
        InitWindows(app);

        app->clearPartnerInfo = FALSE;

        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            app->partnerListingUpdateNeeded = TRUE;
            UpdatePartnersMonsListing(app);
        }

        app->animationTimer = 0;
        return TRUE;
    }

    return FALSE;
}

static BOOL State_SendTradeResultCommMessage(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        if (SendCommMessage(app, COMM_CMD_TRADE_RESULT, app->tradedMon) == TRUE) {
            app->subState++;
        }
        break;
    case 1:
        if (app->numTradeResultMsgReceived < 2) {
            break;
        }

        app->numTradeResultMsgReceived = 0;
        return TRUE;
    }

    return FALSE;
}

static BOOL State_SyncBeforeExit(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        app->printerID = PrintMessageAndCopyToVRAM(app, BattleFactoryApp_Text_PleaseWait2);

        CommTool_ClearReceivedTempDataAllPlayers();
        CommTiming_StartSync(165);
        app->subState++;
        break;
    case 1:
        if (CommTiming_IsSyncState(165) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_FadeOutApp(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_BATTLE_FACTORY_APP);
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

static BOOL State_ShowTradeOccurredMessage(BattleFactoryApp *app)
{
    switch (app->subState) {
    case 0:
        if (app->menuCursor != NULL) {
            Menu_Free(app->menu, NULL);
            RemoveWindow(app->menuTemplate.window);
            BattleFactoryAppCursor_Free(app->menuCursor);
            app->menuCursor = NULL;
        }

        BattleFrontier_SetPartnerInStrTemplate(app->strTemplate, 0);

        Pokemon *mon = Party_GetPokemonBySlotIndex(app->personalParty, 2 + app->selectedIndices[0]);
        BoxPokemon *boxMon = Pokemon_GetBoxPokemon(mon);

        SetStringTemplateSpecies(app, 1, boxMon);

        mon = Party_GetPokemonBySlotIndex(app->receivableParty, app->selectedIndices[1]);
        boxMon = Pokemon_GetBoxPokemon(mon);

        SetStringTemplateSpecies(app, 2, boxMon);
        BattleFactoryApp_DrawMessageBox(&app->windows[WINDOW_MESSAGE_BOX], Options_Frame(app->options));

        app->printerID = PrintMessageWithBg(app, &app->windows[WINDOW_MESSAGE_BOX], BattleFactoryApp_Text_TradeOccurred, 1, 1, Options_TextFrameDelay(SaveData_GetOptions(app->saveData)), 1, 2, 15, FONT_MESSAGE);

        Window_ScheduleCopyToVRAM(&app->windows[WINDOW_MESSAGE_BOX]);

        app->animationTimer = 80;
        app->subState++;

        break;
    case 1:
        if (!Text_IsPrinterActive(app->printerID)) {
            app->animationTimer = 0;
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static void VBlankCallback(void *data)
{
    BattleFactoryApp *app = data;

    if (app->monSummaryAppMan != NULL) {
        return;
    }

    PokemonSpriteManager_UpdateCharAndPltt(app->monSpriteMan);

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

static void InitBackgrounds(BgConfig *app)
{
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_3D
    };

    SetAllGraphicsModes(&graphicsModes);

    BgTemplate mainBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x0000,
        .charBase = GX_BG_CHARBASE_0x04000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(app, BG_LAYER_MAIN_1, &mainBgTemplate, BG_TYPE_STATIC);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_BATTLE_FACTORY_APP);
    Bg_ClearTilemap(app, BG_LAYER_MAIN_1);

    BgTemplate mainBgTemplate2 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x1800,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(app, BG_LAYER_MAIN_2, &mainBgTemplate2, BG_TYPE_STATIC);
    Bg_ClearTilemap(app, BG_LAYER_MAIN_2);

    BgTemplate mainBgTemplate3 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x2800,
        .charBase = GX_BG_CHARBASE_0x0c000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 3,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(app, BG_LAYER_MAIN_3, &mainBgTemplate3, BG_TYPE_STATIC);
    Bg_ClearTilemap(app, BG_LAYER_MAIN_3);

    BgTemplate subBgTemplate = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0x3800,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };

    Bg_InitFromTemplate(app, BG_LAYER_SUB_0, &subBgTemplate, BG_TYPE_STATIC);
    Bg_ClearTilemap(app, BG_LAYER_SUB_0);

    G2_SetBG0Priority(0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
}

static void LoadBackgrounds(BattleFactoryApp *app)
{
    SetGXBanks();
    InitBackgrounds(app->bgConfig);

    app->plttData = PaletteData_New(HEAP_ID_BATTLE_FACTORY_APP);

    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_OBJ, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_FACTORY_APP);
    PaletteData_AllocBuffer(app->plttData, PLTTBUF_MAIN_BG, PALETTE_SIZE_BYTES * SLOTS_PER_PALETTE, HEAP_ID_BATTLE_FACTORY_APP);

    LoadPalette();

    if (!app->firstTimeSetupDone) {
        LoadWheelBackground(app, BG_LAYER_MAIN_1);
        LoadConveyorBackground(app, BG_LAYER_MAIN_2);
        LoadAppStartupBackground(app, BG_LAYER_MAIN_3);

        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, TRUE);
    } else {
        LoadMonSelectionBackground(app, BG_LAYER_MAIN_3);
        LoadConveyorBackground(app, BG_LAYER_MAIN_2);

        Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_X, app->conveyorXOffset);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG3, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
    }

    LoadSubScreenBackground(app, BG_LAYER_SUB_0);
}

static void InitSpriteManager(BattleFactoryApp *app)
{
    BattleFactoryApp_InitSpriteManager(&app->spriteMan);
}

static void FreeBackgrounds(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, FALSE);

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Heap_Free(bgConfig);
}

static void ChangeState(BattleFactoryApp *app, int *state, enum BattleFactoryAppState newState)
{
    app->subState = 0;
    *state = newState;
}

static BOOL ConveyPokeballsOntoScreen(BattleFactoryApp *app)
{
    int ballsReachedRestingPoint = FALSE;

    Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_ADD_X, 8);
    app->conveyorXOffset = Bg_GetXOffset(app->bgConfig, BG_LAYER_MAIN_2);

    for (int i = 0; i < app->numPokeballs; i++) {
        const VecFx32 *ballPosition = BattleFactoryAppPokeballSprite_GetPosition(app->ballSprites[i]);

        if ((ballPosition->x / FX32_ONE) - 8 <= BattleFactoryAppPokeballSprite_GetRestingPointX(app->ballSprites[i])) {
            int x = BattleFactoryAppPokeballSprite_GetRestingPointX(app->ballSprites[i]);
            int y = BattleFactoryAppPokeballSprite_GetRestingPointY(app->ballSprites[i]);
            BattleFactoryAppPokeballSprite_SetPosition(app->ballSprites[i], x, y);
            ballsReachedRestingPoint = TRUE;
        } else {
            BattleFactoryAppPokeballSprite_ShiftPosition(app->ballSprites[i], -8, 0);
        }
    }

    UpdateWheelPalette(app);

    if (ballsReachedRestingPoint == TRUE) {
        return TRUE;
    }

    return FALSE;
}

static BOOL ConveyPokeballOffScreen(BattleFactoryApp *app)
{
    int numBallsOffscreen = 0;

    Bg_SetOffset(app->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_ADD_X, 8);
    app->conveyorXOffset = Bg_GetXOffset(app->bgConfig, BG_LAYER_MAIN_2);

    for (int i = 0; i < app->numPokeballs; i++) {
        const VecFx32 *ballPosition = BattleFactoryAppPokeballSprite_GetPosition(app->ballSprites[i]);

        if ((ballPosition->x / FX32_ONE) - 8 < -24) {
            BattleFactoryAppPokeballSprite_SetDrawFlag(app->ballSprites[i], FALSE);
            numBallsOffscreen++;
        } else {
            BattleFactoryAppPokeballSprite_ShiftPosition(app->ballSprites[i], -8, 0);
        }
    }

    UpdateWheelPalette(app);

    if (numBallsOffscreen == app->numPokeballs) {
        return TRUE;
    }

    return FALSE;
}

static void UpdateWheelPalette(BattleFactoryApp *app)
{
    if (app->wheelPaletteCounter % 4 == 0) {
        if (app->wheelPaletteCounter / 4 >= 4) {
            app->wheelPaletteCounter = 0;
        }

        UpdateBackgroundPalette(app, BG_LAYER_MAIN_1, (app->wheelPaletteCounter / 4) + 6, 32, 32);
    }

    app->wheelPaletteCounter++;
}

static void UpdateBackgroundPalette(BattleFactoryApp *app, enum BgLayer bgLayer, u8 palette, u8 width, u8 height)
{
    Bg_ChangeTilemapRectPalette(app->bgConfig, bgLayer, 0, 0, width, height, palette);
    Bg_ScheduleTilemapTransfer(app->bgConfig, bgLayer);
}

static void SetPanelSpritesAnim(BattleFactoryApp *app, u32 animID)
{
    u32 greenPanelAnimID;

    switch (animID) {
    case ANIM_ID_MON_PANEL_OPEN:
        Sound_PlayEffect(SEQ_SE_DP_OPEN2);
        greenPanelAnimID = ANIM_ID_PARTNER_PANEL_OPEN;
        break;
    case ANIM_ID_MON_PANEL_CLOSE:
        Sound_PlayEffect(SEQ_SE_DP_CLOSE2);
        greenPanelAnimID = ANIM_ID_PARTNER_PANEL_CLOSE;
        break;
    case ANIM_ID_CONFIRM_PANEL_OPEN:
        Sound_PlayEffect(SEQ_SE_DP_OPEN2);
        greenPanelAnimID = ANIM_ID_PARTNER_PANEL_OPEN;
        break;
    case ANIM_ID_CONFIRM_PANEL_CLOSE:
        Sound_PlayEffect(SEQ_SE_DP_CLOSE2);
        greenPanelAnimID = ANIM_ID_PARTNER_PANEL_CLOSE;
        break;
    }

    app->bluePanelSprite = CreateBluePanelSprite(app, GetBluePanelSpriteAnimID(app, animID));

    if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
        app->greenPanelSprite = CreateGreenPanelSprite(app, greenPanelAnimID);
    }
}

static void LoadMonSelectionBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);

    if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MON_SELECTION_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MULTI_MON_SELECTION_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    }
}

static void LoadAppStartupBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_NO_SCREENS_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
}

static void LoadConveyorBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_CONVEYOR_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
}

static void LoadWheelBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_WHEEL_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Bg_SetPriority(BG_LAYER_MAIN_1, 2);
}

static void LoadPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_FACTORY_APP_PLTT, &plttData, HEAP_ID_BATTLE_FACTORY_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 11);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 11);
    Heap_Free(pltt);
}

static void LoadSubScreenBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    Graphics_LoadPaletteFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_PLTT, PAL_LOAD_SUB_BG, 0, PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_FACTORY_APP);
}

static void ReloadMonSelectionBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MON_SELECTION_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MULTI_MON_SELECTION_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    }
}

static void ReloadNoScreensBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_NO_SCREENS_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
}

static void LoadSelectionConfirmBackground(BattleFactoryApp *app, enum BgLayer bgLayer)
{
    if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_SUMMARY_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FACTORY_APP_MULTI_SUMMARY_TILEMAP, app->bgConfig, BG_LAYER_MAIN_3, 0, 0, TRUE, HEAP_ID_BATTLE_FACTORY_APP);
    }
}

static u8 PrintMessageWithBg(BattleFactoryApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font)
{
    Window_FillTilemap(window, bgColor);
    MessageLoader_GetString(app->msgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    return Text_AddPrinterWithParamsAndColor(window, font, app->displayStr, xOffset, yOffset, renderDelay, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);
}

static u8 PrintMessage(BattleFactoryApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font)
{
    MessageLoader_GetString(app->msgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    return Text_AddPrinterWithParamsAndColor(window, font, app->displayStr, xOffset, yOffset, renderDelay, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);
}

static u8 PrintMessageAndCopyToVRAM(BattleFactoryApp *app, int entryID)
{
    u8 printerID = PrintMessageWithBg(app, &app->windows[WINDOW_MESSAGE_BOX], entryID, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
    Window_ScheduleCopyToVRAM(&app->windows[WINDOW_MESSAGE_BOX]);

    return printerID;
}

static void InitMenu(BattleFactoryApp *app, Window *window, u8 numOptions)
{
    for (int i = 0; i < 4; i++) {
        app->strList[i].entry = NULL;
        app->strList[i].index = 0;
    }

    app->menuTemplate.choices = app->strList;
    app->menuTemplate.window = window;
    app->menuTemplate.fontID = FONT_SYSTEM;
    app->menuTemplate.xSize = 1;
    app->menuTemplate.ySize = numOptions;
    app->menuTemplate.lineSpacing = 0;
    app->menuTemplate.suppressCursor = TRUE;
    app->menuTemplate.loopAround = TRUE;
}

static void AddStringToMenu(BattleFactoryApp *app, u8 strIndex, u8 listIndex, int entryID)
{
    MessageLoader_GetString(app->msgLoader, entryID, app->menuStr[strIndex]);

    app->strList[strIndex].entry = app->menuStr[strIndex];
    app->strList[strIndex].index = listIndex;
}

static void OpenMonOptionsMenu(BattleFactoryApp *app)
{
    BattleFactoryApp_DrawWindow(app->bgConfig, &app->windows[WINDOW_MENU]);
    InitMenu(app, &app->windows[WINDOW_MENU], NELEMS(sMonOptionsMenuCursorPositions));
    AddStringToMenu(app, 0, MENU_OPTION_SUMMARY, BattleFactoryApp_Text_Summary);

    if (CheckAppIsInInitialSelectionMode(app, 0) == TRUE) {
        if (!BattleFactoryAppPokeballSprite_IsSelected(app->ballSprites[BattleFactoryAppCursor_GetCurrentSlot(app->monCursor)])) {
            AddStringToMenu(app, 1, MENU_OPTION_RENT, BattleFactoryApp_Text_Rent);
        } else {
            AddStringToMenu(app, 1, MENU_OPTION_REMOVE, BattleFactoryApp_Text_Remove);
        }
    } else {
        AddStringToMenu(app, 1, MENU_OPTION_EXCHANGE, BattleFactoryApp_Text_Exchange);
    }

    AddStringToMenu(app, 2, MENU_OPTION_CANCEL, BattleFactoryApp_Text_Cancel);
    app->menu = Menu_NewAndCopyToVRAM(&app->menuTemplate, 0, 0, 0, HEAP_ID_BATTLE_FACTORY_APP, PAD_BUTTON_B);
}

static void OpenYesNoMenu(BattleFactoryApp *app)
{
    BattleFactoryApp_DrawWindow(app->bgConfig, &app->windows[WINDOW_MENU]);
    InitMenu(app, &app->windows[WINDOW_MENU], NELEMS(sYesNoMenuCursorPositions));
    AddStringToMenu(app, 0, 0, BattleFactoryApp_Text_Yes);
    AddStringToMenu(app, 1, 1, BattleFactoryApp_Text_No);

    app->menu = Menu_NewAndCopyToVRAM(&app->menuTemplate, 0, 0, 0, HEAP_ID_BATTLE_FACTORY_APP, PAD_BUTTON_B);
}

static void SetStringTemplateNumber(BattleFactoryApp *app, u32 idx, s32 num)
{
    StringTemplate_SetNumber(app->strTemplate, idx, num, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
}

static void SetStringTemplateSpecies(BattleFactoryApp *app, u32 idx, BoxPokemon *boxMon)
{
    StringTemplate_SetSpeciesName(app->strTemplate, idx, boxMon);
}

static void PrintPlayersName(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font)
{
    const TrainerInfo *trainerInfo = SaveData_GetTrainerInfo(app->saveData);
    String *name = String_Init(TRAINER_NAME_LEN + 1, HEAP_ID_BATTLE_FACTORY_APP);

    Window_FillTilemap(window, 0);
    String_CopyChars(name, TrainerInfo_Name(trainerInfo));

    TextColor color;
    if (TrainerInfo_Gender(trainerInfo) == GENDER_MALE) {
        color = TEXT_COLOR(7, 8, 0);
    } else {
        color = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(window, font, name, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(name);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintPartnersName(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font)
{
    TrainerInfo *trainerInfo = CommInfo_TrainerInfo(1 - CommSys_CurNetId());
    String *name = String_Init(TRAINER_NAME_LEN + 1, HEAP_ID_BATTLE_FACTORY_APP);

    Window_FillTilemap(window, 0);
    TrainerInfo_NameString(trainerInfo, name);

    TextColor color;
    if (TrainerInfo_Gender(trainerInfo) == 0) {
        color = TEXT_COLOR(7, 8, 0);
    } else {
        color = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(window, font, name, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    String_Free(name);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMonNameAndGender(BattleFactoryApp *app, Window *window, u8 slot, u32 xOffset, u32 yOffset, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, const Party *party)
{
    u16 monNameBuf[MON_NAME_LEN + 1];

    Pokemon *mon = Party_GetPokemonBySlotIndex(party, slot);
    Pokemon_GetValue(mon, MON_DATA_SPECIES_NAME, monNameBuf);
    Window_FillTilemap(window, bgColor);

    String *displayStr = String_Init(MON_NAME_LEN + 1, HEAP_ID_BATTLE_FACTORY_APP);
    String_CopyChars(displayStr, monNameBuf);
    Text_AddPrinterWithParamsAndColor(window, font, displayStr, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);

    u8 width = Window_GetWidth(window) - 1;
    u32 gender = Pokemon_GetValue(mon, MON_DATA_GENDER, NULL);
    u32 symbol = gender == GENDER_MALE ? BattleFactoryApp_Text_MaleSymbol : BattleFactoryApp_Text_FemaleSymbol;
    TextColor color = gender == GENDER_MALE ? TEXT_COLOR(7, 8, 0) : TEXT_COLOR(3, 4, 0);

    String_Clear(displayStr);

    if (gender != GENDER_NONE) {
        MessageLoader_GetString(app->msgLoader, symbol, displayStr);
        Text_AddPrinterWithParamsAndColor(window, font, displayStr, width * 8, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    }

    String_Free(displayStr);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintPartnersMonNameAndGender(BattleFactoryApp *app, Window *window, u32 xOffset, u32 yOffset, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, u16 species, u8 gender)
{
    Window_FillTilemap(window, bgColor);

    MessageLoader *loader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_SPECIES_NAME, HEAP_ID_BATTLE_FACTORY_APP);
    String *string = MessageLoader_GetNewString(loader, species);

    MessageLoader_Free(loader);
    Text_AddPrinterWithParamsAndColor(window, font, string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(fgColor, shadowColor, bgColor), NULL);

    u8 width = Window_GetWidth(window) - 1;
    u32 symbol = gender == GENDER_MALE ? BattleFactoryApp_Text_MaleSymbol : BattleFactoryApp_Text_FemaleSymbol;
    TextColor color = gender == GENDER_MALE ? TEXT_COLOR(7, 8, 0) : TEXT_COLOR(3, 4, 0);

    String_Clear(string);

    if (gender != GENDER_NONE) {
        MessageLoader_GetString(app->msgLoader, symbol, string);
        Text_AddPrinterWithParamsAndColor(window, font, string, width * 8, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    }

    String_Free(string);
}

static void FreeAssets(BattleFactoryApp *app)
{
    for (int i = 0; i < app->numPokeballs; i++) {
        if (app->ballSprites[i] != NULL) {
            app->ballSprites[i] = BattleFactoryAppPokeballSprite_Free(app->ballSprites[i]);
        }
    }

    if (app->monCursor != NULL) {
        BattleFactoryAppCursor_Free(app->monCursor);
        app->monCursor = NULL;
    }

    NetworkIcon_Destroy();

    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;

    BattleFactoryApp_FreeSprites(&app->spriteMan);

    for (int i = 0; i < 3; i++) {
        if (app->monSprites[i] != NULL) {
            PokemonSprite_Delete(app->monSprites[i]);
        }
    }

    PokemonSpriteManager_Free(app->monSpriteMan);
    MessageLoader_Free(app->msgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);

    for (int i = 0; i < 4; i++) {
        String_Free(app->menuStr[i]);
    }

    BattleFactoryApp_FreeWindows(app->windows);
    FreeBackgrounds(app->bgConfig);

    NARC_dtor(app->narc);
    G3DPipelineBuffers_Free(app->g3dPipeline);
}

static void ReInitApp(BattleFactoryApp *app)
{
    InitGraphicsPlane();

    app->g3dPipeline = G3DPipeline_Init(HEAP_ID_BATTLE_FACTORY_APP, TEXTURE_VRAM_SIZE_256K, PALETTE_VRAM_SIZE_32K, BattleFactoryApp_Setup3D);
    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_FACTORY_APP);

    LoadAssets(app);
    BattleFactoryApp_InitWindows(app->bgConfig, app->windows);
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

static void LoadAssets(BattleFactoryApp *app)
{
    app->narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_BATTLE_FACTORY_APP);

    LoadBackgrounds(app);
    InitSpriteManager(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_FACTORY_APP, HEAP_ID_BATTLE_FACTORY_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_BATTLE_FACTORY_APP);
    app->displayStr = String_Init(800, HEAP_ID_BATTLE_FACTORY_APP);
    app->fmtStr = String_Init(800, HEAP_ID_BATTLE_FACTORY_APP);

    for (int i = 0; i < 4; i++) {
        app->menuStr[i] = String_Init(64, HEAP_ID_BATTLE_FACTORY_APP);
    }

    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(13), HEAP_ID_BATTLE_FACTORY_APP);
    Font_LoadScreenIndicatorsPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(12), HEAP_ID_BATTLE_FACTORY_APP);

    app->monSpriteMan = PokemonSpriteManager_New(HEAP_ID_BATTLE_FACTORY_APP);

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    if (CheckAppIsInInitialSelectionMode(app, 0) == TRUE) {
        InitInitialSelectionPokeballSprites(app);
        InitInitialSelectionMonSprite(app);
    } else {
        CreatePokeballSpritesForExchange(app);
        CreateMonSpriteFlipped(app);
    }

    GXLayers_TurnBothDispOn();
    SetVBlankCallback(VBlankCallback, app);
}

static void UpdateInfoForMonUnderCursor(BattleFactoryApp *app, u8 numSelectedMon, int cursorPos, BOOL flip, const Party *party)
{
    if (BattleFactoryAppCursor_GetCurrentSlot(app->monCursor) < app->numPokeballs) {
        PokemonSprite_Delete(app->monSprites[0]);
        CreateMonSprite(app, 0, Party_GetPokemonBySlotIndex(party, cursorPos), 120, 43, flip);
        PrintMonNameAndGender(app, &app->windows[WINDOW_SELECTED_MON_NAME_1 + numSelectedMon], cursorPos, 0, 0, 15, 2, 0, FONT_SYSTEM, party);
    }
}

static void SetupMonSummaryApp(BattleFactoryApp *app)
{
    app->monSummary = Heap_Alloc(HEAP_ID_BATTLE_FACTORY_APP, sizeof(PokemonSummary));
    memset(app->monSummary, 0, sizeof(PokemonSummary));

    app->monSummary->monData = app->personalParty;
    app->monSummary->options = app->options;
    app->monSummary->dataType = SUMMARY_DATA_PARTY_MON;
    app->monSummary->mode = SUMMARY_MODE_LOCK_MOVES;
    app->monSummary->monMax = app->numPokeballs;
    app->monSummary->monIndex = BattleFactoryAppCursor_GetCurrentSlot(app->monCursor);
    app->monSummary->move = 0;
    app->monSummary->dexMode = SaveData_GetDexMode(app->saveData);
    app->monSummary->showContest = FALSE;

    PokemonSummaryScreen_FlagVisiblePages(app->monSummary, sSummaryPages);
    PokemonSummaryScreen_SetPlayerProfile(app->monSummary, SaveData_GetTrainerInfo(app->saveData));
}

static BOOL CheckAppIsInInitialSelectionMode(BattleFactoryApp *app, u8 zero)
{
    return app->isExchangeMode == zero;
}

static u8 GetNumMonToSelect(u8 challengeType)
{
    switch (challengeType) {
    case FRONTIER_CHALLENGE_SINGLE:
    case FRONTIER_CHALLENGE_DOUBLE:
        return 3;
    }

    return 2;
}

static BOOL CheckMenuWasCancelled(BattleFactoryApp *app)
{
    return !!app->menuWasCancelled;
}

static void SetMenuWasCancelled(BattleFactoryApp *app, u8 menuWasCancelled)
{
    app->menuWasCancelled = menuWasCancelled;
}

static u8 GetBackgroundPanelPalette(BattleFactoryApp *app, u8 panelState, u8 dontCare)
{
    u8 palette = 0;

    switch (panelState) {
    case BACKGROUND_PANEL_HIDDEN:
        if (dontCare == 1) {
            palette = 2;
        } else {
            BattleFactory_IsMultiplayerChallenge(app->challengeType);
            palette = 2;
        }
        break;
    case BACKGROUND_PANEL_FADING:
        if (dontCare == 1) {
            palette = 1;
        } else {
            BattleFactory_IsMultiplayerChallenge(app->challengeType);
            palette = 1;
        }
        break;
    case BACKGROUND_PANEL_SHOWN:
        if (dontCare == 1) {
            palette = 2;
        } else {
            BattleFactory_IsMultiplayerChallenge(app->challengeType);
            palette = 2;
        }
        break;
    }

    return palette;
}

static u32 GetBluePanelSpriteAnimID(BattleFactoryApp *app, u32 animID)
{
    switch (animID) {
    case ANIM_ID_MON_PANEL_OPEN:
    case ANIM_ID_MON_PANEL_CLOSE:
        break;
    case ANIM_ID_CONFIRM_PANEL_OPEN:
        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            return ANIM_ID_MULTI_CONFIRM_OPEN;
        }
        break;
    case ANIM_ID_CONFIRM_PANEL_CLOSE:
        if (BattleFactory_IsMultiplayerChallenge(app->challengeType) == TRUE) {
            return ANIM_ID_MULTI_CONFIRM_CLOSE;
        }
        break;
    }

    return animID;
}

static void CreateMonSprite(BattleFactoryApp *app, u8 idx, Pokemon *mon, int x, int y, BOOL flip)
{
    app->monSprites[idx] = BattleFactoryApp_CreateMonSprite(app->monSpriteMan, 0, mon, x, y, 0);

    PokemonSprite_SetAttribute(app->monSprites[idx], MON_SPRITE_HIDE, FALSE);

    u32 species = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    u32 form = Pokemon_GetValue(mon, MON_DATA_FORM, NULL);

    if (!SpeciesData_GetFormValue(species, form, SPECIES_DATA_FLIP_SPRITE)) {
        BattleFactoryApp_FlipMonSprite(app->monSprites[idx], flip);
    }
}

static BOOL SendCommMessage(BattleFactoryApp *app, u16 cmd, u16 arg)
{
    int commCmd;

    if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
        return FALSE;
    }

    switch (cmd) {
    case COMM_CMD_DUMMY:
        commCmd = 29;
        DummyCreatePayload(app, cmd);
        break;
    case COMM_CMD_SELECTION_UDPATE:
        commCmd = 30;
        CreateUpdateSelectionPayload(app, cmd, arg);
        break;
    case COMM_CMD_TRADE_RESULT:
        commCmd = 32;
        CreateTradeResultPayload(app, cmd, arg);
        break;
    }

    return CommSys_SendData(commCmd, app->commPayload, 60) == TRUE;
}

void DummyCreatePayload(BattleFactoryApp *app, u16 cmd)
{
    SaveData_GetTrainerInfo(app->saveData);
    app->commPayload[0] = cmd;
}

void BattleFactoryApp_DummyCommCommand(int netID, int unused, void *data, void *context)
{
    if (CommSys_CurNetId() == netID) {
        return;
    }
}

void CreateUpdateSelectionPayload(BattleFactoryApp *app, u16 cmd, u16 unused)
{
    int i;
    int offset = 0;

    for (i = 0; i < 60; i++) {
        app->commPayload[i] = 0;
    }

    app->commPayload[0] = app->numMonsSelected;
    offset += 1;

    for (i = 0; i < app->numMonsSelected; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(app->personalParty, app->selectedIndices[i]);
        app->commPayload[i + offset] = Pokemon_GetValue(mon, MON_DATA_SPECIES, NULL);
    }

    offset += app->numMonsSelected;

    for (i = 0; i < app->numMonsSelected; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(app->personalParty, app->selectedIndices[i]);
        app->commPayload[i + offset] = Pokemon_GetValue(mon, MON_DATA_GENDER, NULL);
    }
}

void BattleFactoryApp_HandleSelectionUpdateCmd(int netID, int unused, void *data, void *context)
{
    int i;
    BattleFactoryApp *app = context;
    const u16 *payload = data;

    int offset = 0;
    BattleFactory_GetPartySize(app->challengeType);

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->partnersNumSelectedMons = payload[0];
    offset += 1;

    for (i = 0; i < app->partnersNumSelectedMons; i++) {
        app->partnerMonSpecies[i] = payload[i + offset];
    }

    offset += app->partnersNumSelectedMons;

    for (i = 0; i < app->partnersNumSelectedMons; i++) {
        app->partnenMonGenders[i] = payload[i + offset];
    }
    app->partnerListingUpdateNeeded = TRUE;
}

void BattleFactoryApp_DummyCommCommand2(int netID, int unused, void *data, void *context)
{
    GF_ASSERT(0);
}

static void UpdatePartnersMonsListing(BattleFactoryApp *app)
{
    u8 numMons = BattleFactory_GetPartySize(app->challengeType);

    if (app->clearPartnerInfo == TRUE) {
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_NAME]);
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_1]);
        Window_ClearAndCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_2]);
        return;
    }

    if (app->partnerListingUpdateNeeded == TRUE) {
        for (int i = 0; i < numMons; i++) {
            Window_FillTilemap(&app->windows[WINDOW_PARTNERS_MON_NAME_1 + i], 0);

            if (i < app->partnersNumSelectedMons) {
                PrintPartnersMonNameAndGender(app, &app->windows[WINDOW_PARTNERS_MON_NAME_1 + i], 0, 0, 15, 2, 0, FONT_SYSTEM, app->partnerMonSpecies[i], app->partnenMonGenders[i]);
            }

            Window_ScheduleCopyToVRAM(&app->windows[WINDOW_PARTNERS_MON_NAME_1 + i]);
        }

        PrintPartnersName(app, &app->windows[WINDOW_PARTNERS_NAME], 0, 0, FONT_SYSTEM);
    }

    app->partnerListingUpdateNeeded = FALSE;
}

void CreateTradeResultPayload(BattleFactoryApp *app, u16 cmd, u16 tradedMon)
{
    app->commPayload[0] = cmd;
    app->commPayload[1] = tradedMon;
    app->commPayload[2] = app->selectedIndices[0];
    app->commPayload[3] = app->selectedIndices[1];
}

void BattleFactoryApp_HandleTradeResultCmd(int netID, int unused, void *data, void *context)
{
    BattleFactoryApp *app = context;
    const u16 *payload = data;

    app->numTradeResultMsgReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->partnerTradedMon = (u8)payload[1];

    if (CommSys_CurNetId() == 0) {
        if (app->tradedMon == TRUE) {
            app->partnerTradedMon = FALSE;
        } else {
            if (app->partnerTradedMon == TRUE) {
                app->selectedIndices[0] = (u8)payload[2];

                app->selectedIndices[1] = (u8)payload[3];
            }
        }
    } else {
        if (app->partnerTradedMon == TRUE) {
            app->tradedMon = FALSE;
            app->selectedIndices[0] = (u8)payload[2];
            app->selectedIndices[1] = (u8)payload[3];
        }
    }
}

static BattleFactoryAppPokeballSprite *CreatePokeballSprite(BattleFactoryApp *app, int idx)
{
    int x, y;

    if (CheckAppIsInInitialSelectionMode(app, 0) == TRUE) {
        x = sInitialSelectionPokeballPositions[idx].x;
        y = sInitialSelectionPokeballPositions[idx].y;
    } else {
        if (!BattleFactory_IsMultiplayerChallenge(app->challengeType)) {
            x = sExchangeSelectPokeballPositions[idx].x;
            y = sExchangeSelectPokeballPositions[idx].y;
        } else {
            if (app->numPokeballs == NELEMS(sExchangeSelectMultiPokeballPositions)) {
                x = sExchangeSelectMultiPokeballPositions[idx].x;
                y = sExchangeSelectMultiPokeballPositions[idx].y;
            } else {
                x = sReceiveSelectMultiPokeballPositions[idx].x;
                y = sReceiveSelectMultiPokeballPositions[idx].y;
            }
        }
    }

    return BattleFactoryAppPokeballSprite_New(&app->spriteMan, x, y, HEAP_ID_BATTLE_FACTORY_APP);
}

static BattleFactoryAppPanelSprite *CreateBluePanelSprite(BattleFactoryApp *app, u32 animID)
{
    int x, y;

    switch (animID) {
    case ANIM_ID_MON_PANEL_OPEN:
    case ANIM_ID_MON_PANEL_CLOSE:
        x = 80;
        y = 40;
        break;
    case ANIM_ID_CONFIRM_PANEL_OPEN:
    case ANIM_ID_CONFIRM_PANEL_CLOSE:
        x = 128;
        y = 40;
        break;
    case ANIM_ID_MULTI_CONFIRM_OPEN:
        x = 80;
        y = 40;
        break;
    case ANIM_ID_MULTI_CONFIRM_CLOSE:
        x = 80;
        y = 40;
        break;
    }

    return BattleFactoryAppPanelSprite_New(&app->spriteMan, animID, x, y, HEAP_ID_BATTLE_FACTORY_APP);
}

static BattleFactoryAppPanelSprite *CreateGreenPanelSprite(BattleFactoryApp *app, u32 animID)
{
    int x, y;

    switch (animID) {
    case ANIM_ID_PARTNER_PANEL_OPEN:
    case ANIM_ID_PARTNER_PANEL_CLOSE:
        x = 216;
        y = 40;
        break;
    default:
        GF_ASSERT(0);
        x = 0;
        y = 0;
        break;
    }

    return BattleFactoryAppPanelSprite_New(&app->spriteMan, animID, x, y, HEAP_ID_BATTLE_FACTORY_APP);
}

static void FreePanelSprites(BattleFactoryApp *app)
{
    if (app->bluePanelSprite != NULL) {
        BattleFactoryAppPanelSprite_Free(app->bluePanelSprite);
        app->bluePanelSprite = NULL;
    }

    if (app->greenPanelSprite != NULL) {
        BattleFactoryAppPanelSprite_Free(app->greenPanelSprite);
        app->greenPanelSprite = NULL;
    }
}

static void InitWindows(BattleFactoryApp *app)
{
    Bg_SetPriority(BG_LAYER_MAIN_1, 1);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_BATTLE_FACTORY_APP);
    Bg_ClearTilemap(app->bgConfig, BG_LAYER_MAIN_1);
    BattleFactoryApp_InitWindows(app->bgConfig, app->windows);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
}

static void RemoveWindow(Window *window)
{
    Window_EraseStandardFrame(window, TRUE);
    Window_ClearAndScheduleCopyToVRAM(window);
}
