#include "applications/frontier/battle_castle/self_app.h"

#include <nitro.h>
#include <string.h>

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
#include "item_use_pokemon.h"
#include "items.h"
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
#include "unk_0208C098.h"
#include "unk_0209BA80.h"
#include "vram_transfer.h"

#include "res/text/bank/battle_castle_self_app.h"

FS_EXTERN_OVERLAY(overlay104);

#define NUM_MONS_MAX 4

#define MENU_ENTRY_HEAL            0
#define MENU_ENTRY_RESTORE_HP      1
#define MENU_ENTRY_RESTORE_PP      2
#define MENU_ENTRY_RESTORE_ALL     3
#define MENU_ENTRY_RANK_UP_HEALING 4
#define MENU_ENTRY_RENTAL          5
#define MENU_ENTRY_RENT_BERRIES    6
#define MENU_ENTRY_RENT_ITEMS      7
#define MENU_ENTRY_RANK_UP_ITEMS   8
#define MENU_ENTRY_SUMMARY         9
#define MENU_ENTRY_MOVES           10

#define COMM_CMD_PLAYER_INFO   10
#define COMM_CMD_PURCHASE_INFO 11
#define COMM_CMD_UPDATE_CURSOR 12
#define COMM_CMD_EXIT_APP      13

enum BattleCastleAppState {
    STATE_FADE_IN = 0,
    STATE_MAIN_FLOW,
    STATE_SYNC_PURCHASE,
    STATE_SYNC_BEFORE_EXIT,
    STATE_FADE_OUT
};

enum BattleCastleAppMainSubState {
    MAIN_SUBSTATE_SELECT_MON = 0,
    MAIN_SUBSTATE_MON_OPTIONS_MENU,
    MAIN_SUBSTATE_HEAL_MENU,
    MAIN_SUBSTATE_HEAL_YES_NO,
    MAIN_SUBSTATE_RANK_UP_HEALING_YES_NO,
    MAIN_SUBSTATE_UPDATE_AFTER_RANK_UP_HEALING_PURCHASE,
    MAIN_SUBSTATE_WAIT_AFTER_RANK_UP_HEALING,
    MAIN_SUBSTATE_WAIT_AFTER_HEAL_FAILURE,
    MAIN_SUBSTATE_RENTAL_MENU,
    MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY,
    MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY_YES_NO,
    MAIN_SUBSTATE_RANK_UP_RENTALS_YES_NO,
    MAIN_SUBSTATE_UPDATE_AFTER_RANK_UP_RENTAL,
    MAIN_SUBSTATE_WAIT_AFTER_RANK_UP_RENTAL,
    MAIN_SUBSTATE_WAIT_AFTER_CANT_OPEN_ITEM_SELECT,
    MAIN_SUBSTATE_WAIT_AFTER_RENTAL_FAILURE,
    MAIN_SUBSTATE_SWITCH_ITEMS_PROMPT,
    MAIN_SUBSTATE_SWITCH_ITEMS_YES_NO,
    MAIN_SUBSTATE_UPDATE_AFTER_PURCHASE,
    MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION,
    MAIN_SUBSTATE_SHOW_SUMMARY_DISPLAY,
    MAIN_SUBSTATE_SHOW_MOVE_DISPLAY,
};

const u16 sItemsForRent[] = {
    ITEM_KINGS_ROCK,
    ITEM_QUICK_CLAW,
    ITEM_POWER_HERB,
    ITEM_SHELL_BELL,
    ITEM_METRONOME,
    ITEM_LIGHT_CLAY,
    ITEM_GRIP_CLAW,
    ITEM_BIG_ROOT,
    ITEM_TOXIC_ORB,
    ITEM_FLAME_ORB,
    ITEM_LIGHT_BALL,
    ITEM_THICK_CLUB,
    ITEM_WHITE_HERB,
    ITEM_FOCUS_BAND,
    ITEM_FOCUS_SASH,
    ITEM_LEFTOVERS,
    ITEM_BRIGHTPOWDER,
    ITEM_SCOPE_LENS,
    ITEM_WIDE_LENS,
    ITEM_ZOOM_LENS,
    ITEM_CHOICE_BAND,
    ITEM_CHOICE_SPECS,
    ITEM_CHOICE_SCARF,
    ITEM_MUSCLE_BAND,
    ITEM_WISE_GLASSES,
    ITEM_EXPERT_BELT,
    ITEM_LIFE_ORB
};

const u16 sItemPrices[NELEMS(sItemsForRent)] = {
    10,
    15,
    5,
    15,
    10,
    10,
    10,
    10,
    10,
    10,
    15,
    15,
    5,
    15,
    10,
    20,
    20,
    20,
    20,
    20,
    20,
    20,
    20,
    20,
    20,
    20,
    20
};

const u16 sBerriesForRent[] = {
    ITEM_CHERI_BERRY,
    ITEM_CHESTO_BERRY,
    ITEM_PECHA_BERRY,
    ITEM_RAWST_BERRY,
    ITEM_ASPEAR_BERRY,
    ITEM_PERSIM_BERRY,
    ITEM_LUM_BERRY,
    ITEM_SITRUS_BERRY,
    ITEM_LIECHI_BERRY,
    ITEM_GANLON_BERRY,
    ITEM_SALAC_BERRY,
    ITEM_PETAYA_BERRY,
    ITEM_APICOT_BERRY,
    ITEM_LANSAT_BERRY,
    ITEM_STARF_BERRY,
    ITEM_OCCA_BERRY,
    ITEM_PASSHO_BERRY,
    ITEM_WACAN_BERRY,
    ITEM_RINDO_BERRY,
    ITEM_YACHE_BERRY,
    ITEM_CHOPLE_BERRY,
    ITEM_KEBIA_BERRY,
    ITEM_SHUCA_BERRY,
    ITEM_COBA_BERRY,
    ITEM_PAYAPA_BERRY,
    ITEM_TANGA_BERRY,
    ITEM_CHARTI_BERRY,
    ITEM_KASIB_BERRY,
    ITEM_HABAN_BERRY,
    ITEM_COLBUR_BERRY,
    ITEM_BABIRI_BERRY,
    ITEM_CHILAN_BERRY
};

const u16 sBerryPrices[NELEMS(sBerriesForRent)] = {
    2,
    2,
    2,
    2,
    2,
    2,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5,
    5
};

const u16 sItemsAvailableByRank[] = {
    12,
    12,
    NELEMS(sItemsForRent)
};

const u16 sBerriesAvailableByRank[] = {
    8,
    8,
    NELEMS(sBerriesForRent)
};

typedef struct BattleCastleSelfApp {
    ApplicationManager *appMan;
    BattleFrontier *frontier;
    u8 subState;
    u8 challengeType;
    u8 printerID;
    u8 syncDelay;
    u8 previousSlot;
    u8 selectedMonSlot;
    u8 listMenuIsOpen : 1;
    u8 syncPurchaseAction : 1;
    u8 monSparklesVisible : 1;
    u8 itemSelectIsOpen : 1;
    u8 yesNoMenuIsOpen : 1;
    u8 syncIncreaseRank : 2;
    u8 unused : 1;
    u8 msgsReceived;
    u16 selectedRentalItem;
    u8 slotID;
    u8 selectedMenuEntry;
    u8 numSlots;
    u8 exitSlot;
    u16 menuPos;
    u16 monMenuListPos;
    u16 monMenuCursorPos;
    MessageLoader *itemMsgLoader;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    String *yesNoStrs[3];
    u16 unused2[8];
    BgConfig *bgConfig;
    Window windows[NUM_SELF_APP_WINDOWS];
    MenuTemplate yesNoMenuTemplate;
    Menu *yesNoMenu;
    StringList yesNoStrList[3];
    ListMenu *listMenu;
    StringList *strList;
    ListMenuTemplate listTemplate;
    PaletteData *plttData;
    FontSpecialCharsContext *specialChars;
    Options *options;
    SaveData *saveData;
    UnkStruct_020302DC *unk_1D0;
    UnkStruct_0203041C *unk_1D4;
    BattleCastleAppSpriteManager spriteMan;
    BattleCastleAppSprite *upArrowSprite;
    BattleCastleAppSprite *downArrowSprite;
    BattleCastleAppSprite *itemSprite;
    BattleCastleAppSprite *monSprites[NUM_MONS_MAX];
    BattleCastleAppSprite *itemIconSprites[NUM_MONS_MAX];
    BattleCastleAppSprite *monSparklesSprite;
    BattleCastleAppSprite *cursorSprite;
    BattleCastleAppSprite *partnerCursorSprite;
    BattleCastleAppSprite *barSprites[NUM_MONS_MAX];
    BattleCastleAppSprite *bigSparkles;
    BattleCastleAppSprite *itemSelectCursorSprite;
    u16 *selectedMonSlotPtr;
    Party *party;
    NARC *narc;
    u16 commPayload[40];
    u8 partnersSelectedSlot;
    u8 partnerSlot;
    u8 partnerIsExiting;
    u8 partnersRanks[BATTLE_CASTLE_NUM_RANK_TYPES];
    u16 partnersCP;
    u32 unused3;
} BattleCastleSelfApp;

static BOOL State_FadeInApp(BattleCastleSelfApp *app);
static void ShowMainAppDisplay(BattleCastleSelfApp *app);
static BOOL State_MainAppFlow(BattleCastleSelfApp *app);
static BOOL State_SyncPurchase(BattleCastleSelfApp *app);
static BOOL State_SyncBeforeExit(BattleCastleSelfApp *app);
static BOOL State_FadeOutApp(BattleCastleSelfApp *app);
static void FreeAssets(BattleCastleSelfApp *app);
static void InitGraphicsPlane(void);
static void LoadAssets(BattleCastleSelfApp *app);
static void InitSpriteManager(BattleCastleSelfApp *app);
static void LoadBackgrounds(BattleCastleSelfApp *app);
static void FreeBackgrounds(BgConfig *bgConfig);
static void VBlankCallback(void *data);
static void SetGXBanks(void);
static void InitBackgrounds(BgConfig *bgConfig);
static void LoadMainBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static void LoadPalette(void);
static void LoadSummaryBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static void LoadMovesListBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static void LoadItemSelectBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static void LoadPalette2(void);
static void LoadSubScreenBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer);
static u8 PrintLeftAlignedMessageWithBg(BattleCastleSelfApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font);
static u8 PrintMessageWithBg(BattleCastleSelfApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, enum TextAlignment alignment);
static u8 PrintLeftAlignedMessage(BattleCastleSelfApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font);
static u8 PrintMessage(BattleCastleSelfApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, enum TextAlignment alignment);
static u8 PrintMessageAndCopyToVRAM(BattleCastleSelfApp *app, int entryID, u8 font);
static void PrintPokemonSummary(BattleCastleSelfApp *app, Window *window, Pokemon *mon);
static void PrintStaticMessage(BattleCastleSelfApp *app, Window *window, int entryID, u16 xOffset, u16 yOffset, enum TextAlignment alignment);
static void PrintAllMoves(BattleCastleSelfApp *app, Window *window, Pokemon *mon);
static void PrintMoveInfo(BattleCastleSelfApp *app, Window *window, u8 idx, u32 moveNameEntryID, u32 ppEntryID, Pokemon *mon, u32 moveParam, u32 ppParam, u32 maxPpParam);
static void PrintAllMonsHP(BattleCastleSelfApp *app, Window *window);
static void PrintMonHP(BattleCastleSelfApp *app, Window *window, u8 slot, u8 isItemSelectMenu);
static void PrintAllMonsLevelAndGender(BattleCastleSelfApp *app, Window *window);
static void PrintMonLevelAndGender(BattleCastleSelfApp *app, Window *window, u8 slot, u8 isItemSelectMenu);
static void DrawPlayerInfoOnItemSelectMenu(BattleCastleSelfApp *app, Window *window);
static void UpdateHP(BattleCastleSelfApp *app, Window *window, u8 slot, u32 hp);
static void PrintMonSelectionStrings(BattleCastleSelfApp *app);
static void CloseMonSelectionMessageBox(BattleCastleSelfApp *app);
static void OpenMonOptionsMenu(BattleCastleSelfApp *app);
static void CloseMonOptions(BattleCastleSelfApp *app);
static void OpenHealMenu(BattleCastleSelfApp *app);
static void FreeListMenu2(BattleCastleSelfApp *app);
static void OpenRentalMenu(BattleCastleSelfApp *app);
static void FreeListMenu3(BattleCastleSelfApp *app);
static void OpenItemSelectScreen(BattleCastleSelfApp *app, u8 menuOption);
static void FreeItemSelect(BattleCastleSelfApp *app);
static void InitYesNoMenu(BattleCastleSelfApp *app, Window *window, u8 numOptions);
static void AddStringToYesNoMenu(BattleCastleSelfApp *app, u8 strIndex, u8 listIndex, int entryID);
static void OpenYesNoMenu(BattleCastleSelfApp *app);
static void DrawItemSelectMenuAndMonInfo(BattleCastleSelfApp *app, u8 menuOption);
static void UpdateItemSelectMenuDisplay(ListMenu *menu, u32 item, u8 onInit);
static void PrintItemPrice(ListMenu *menu, u32 item, u8 yOffset);
static void InitHealMenu(BattleCastleSelfApp *app);
static void UpdateHealMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit);
static void SetHealMenuEntryColor(ListMenu *menu, u32 item, u8 yOffset);
static void InitRentalMenu(BattleCastleSelfApp *app);
static void UpdateRentalMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit);
static void SetRentalMenuEntryColor(ListMenu *menu, u32 item, u8 onInit);
static void InitMonOptionsMenu(BattleCastleSelfApp *app);
static void UpdateMonMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit);
static void SetStringTemplateNumber(BattleCastleSelfApp *app, u32 idx, s32 num, u32 maxDigits, enum PaddingMode paddingMode);
static void SetStringTemplateSpecies(BattleCastleSelfApp *app, u32 idx, BoxPokemon *boxMon);
static void SetStringTemplatePlayerName(BattleCastleSelfApp *app, u32 idx);
static void PrintPlayerName(BattleCastleSelfApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font);
static void PrintPartnersName(BattleCastleSelfApp *app, Window *window, u32 xOffset, u32 yOffset, u8 unused);
static void PrintGenderSymbol(BattleCastleSelfApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font, u8 gender);
static u8 PrintItemName(BattleCastleSelfApp *app, Window *window, u16 entryID);
static void ChangeState(BattleCastleSelfApp *app, int *state, enum BattleCastleAppState nextState);
static void UpdateSelectedMon(BattleCastleSelfApp *app, int unused);
static void UpdateCursorPosition(BattleCastleSelfApp *app);
static void UpdateCursorSprite(BattleCastleSelfApp *app, u8 slot, u8 isPartners);
static void GetCursorSpritePos(BattleCastleSelfApp *app, u32 *x, u32 *y, u8 slot);
static u16 GetItemPriceFromListPos(BattleCastleSelfApp *app, u16 listPos, u8 menuType);
static u16 GetItemPrice(u16 itemID);
static u16 GetItemIDFromListPos(BattleCastleSelfApp *app, u16 idx, u8 selectedMenu);
static void GetOffsetsForPlayerInfo(BattleCastleSelfApp *app, u16 *playerX, u16 *playerY, u16 *partnerX, u16 *partnerY);
static BOOL UpdateAfterPurchase(BattleCastleSelfApp *app, u8 selectedSlot, u8 menuOption);
static void UpdateMonSpriteForItemSelectScreen(BattleCastleSelfApp *app, u8 selectedSlot, u8 openingItemSelect);
static u32 GetPokeIconAnimID(BattleCastleSelfApp *app, u8 barColor);
static u32 GetHpBarAnimID(BattleCastleSelfApp *app, u8 barColor);
static void ChangeSelectedMonOnSummaryDisplay(BattleCastleSelfApp *app, s8 step);
static void ChangeSelectedMonOnMoveDisplay(BattleCastleSelfApp *app, s8 step);
static void CloseAllSubDisplays(BattleCastleSelfApp *app);
static BOOL IsMonMissingPP(Pokemon *mon);
static void CloseMessageBox(Window *window);
BOOL SendCommMessage(BattleCastleSelfApp *app, u16 cmd, u16 slot);
void CreatePlayerInfoPayload(BattleCastleSelfApp *app, u16 cmd);
void BattleCastleSelfApp_HandlePlayerInfoCmd(int netID, int unused, void *data, void *context);
void CreatePurchaseInfoPayload(BattleCastleSelfApp *app, u16 cmd, u16 slot);
void CreateUpdateCursorPayload(BattleCastleSelfApp *app, u16 cmd);
void BattleCastleSelfApp_HandleUpdateCursorCmd(int netID, int unused, void *data, void *context);
void CreateExitAppPayload(BattleCastleSelfApp *app);
void BattleCastleSelfApp_HandleExitAppCmd(int netID, int unused, void *data, void *context);
static void ApplyItemEffect(Pokemon *mon, u16 itemID);
static void PrintPlayersAndPartnersNames(BattleCastleSelfApp *app, Window *window);
static void HealPokemon(BattleCastleSelfApp *app, u8 slot, u8 menuOption);
static void RentItem(BattleCastleSelfApp *app, u8 slot, u16 itemID);
static void CloseYesNoMenu(BattleCastleSelfApp *app);
static void MarkListMenuAsOpen(BattleCastleSelfApp *app, Window *window);
static void CloseItemSelectScreen(BattleCastleSelfApp *app);
static void RefreshItemSelectMenu(BattleCastleSelfApp *app);
static void FreeListMenu(BattleCastleSelfApp *app);
static void PrintPlayersAndPartnersCastlePoints(BattleCastleSelfApp *app, Window *window);
static void SpendCastlePointsInSync(BattleCastleSelfApp *app, u8 slotID, u8 menuOption);
static void ShowMonSummary(BattleCastleSelfApp *app, u8 slot);
static void ShowMovesList(BattleCastleSelfApp *app, u8 slot);
static void CloseSummaryScreen(BattleCastleSelfApp *app);
static void UpdatePokemonGraphics(BattleCastleSelfApp *app);
static void IncreaseRank(BattleCastleSelfApp *app, u8 slot, u8 menuOption);

static const u16 sHealingMessages[] = {
    BattleCastleSelfApp_Text_HPWillBeRestored,
    BattleCastleSelfApp_Text_PPWillBeRestored,
    BattleCastleSelfApp_Text_HPAndPPWillBeRestored
};

static const u16 sHealingCosts[] = {
    10,
    8,
    12
};

static const u32 sHealMenuEntries[][3] = {
    { 1, BattleCastleSelfApp_Text_RestoreHP, MENU_ENTRY_RESTORE_HP },
    { 2, BattleCastleSelfApp_Text_RestorePP, MENU_ENTRY_RESTORE_PP },
    { 3, BattleCastleSelfApp_Text_RestoreAll, MENU_ENTRY_RESTORE_ALL },
    { 1, BattleCastleSelfApp_Text_RankUp, MENU_ENTRY_RANK_UP_HEALING },
    { 1, BattleCastleSelfApp_Text_Cancel2, MENU_CANCELED }
};

static const u16 sRankUpCosts[3][3] = {
    { 0, 100, 100 },
    { 0, 100, 150 },
    { 0, 50, 50 }
};

static const u16 sRankUpMessages[3][3] = {
    { 0, BattleCastleSelfApp_Text_GainedAbilityToRestorePP, BattleCastleSelfApp_Text_GainedAbilityToRestoreHPAndPP },
    { 0, BattleCastleSelfApp_Text_GainedAbilityToRentItems, BattleCastleSelfApp_Text_ExpandedItemRentals },
    { 0, 0, 0 }
};

static const ListMenuTemplate sDefaultListTemplate = {
    .choices = NULL,
    .cursorCallback = UpdateItemSelectMenuDisplay,
    .printCallback = PrintItemPrice,
    .window = NULL,
    .count = NELEMS(sBerriesForRent) + NELEMS(sItemsForRent) + 1,
    .maxDisplay = 7,
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

BOOL BattleCastleSelfApp_Init(ApplicationManager *appMan, int *state)
{
    Overlay_LoadByID(FS_OVERLAY_ID(overlay104), OVERLAY_LOAD_ASYNC);
    InitGraphicsPlane();
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_BATTLE_CASTLE_APP, 0x25000);

    BattleCastleSelfApp *app = ApplicationManager_NewData(appMan, sizeof(BattleCastleSelfApp), HEAP_ID_BATTLE_CASTLE_APP);
    memset(app, 0, sizeof(BattleCastleSelfApp));

    app->bgConfig = BgConfig_New(HEAP_ID_BATTLE_CASTLE_APP);
    app->appMan = appMan;

    UnkStruct_ov104_0223597C *v2 = ApplicationManager_Args(appMan);

    app->saveData = v2->saveData;
    app->unk_1D0 = sub_020302DC(app->saveData);
    app->unk_1D4 = sub_0203041C(app->saveData);
    app->challengeType = v2->unk_04;
    app->selectedMonSlotPtr = &v2->unk_20;
    app->options = SaveData_GetOptions(app->saveData);
    app->party = v2->unk_18;
    app->slotID = 0xff;
    app->partnersCP = v2->unk_28;
    app->frontier = SaveData_GetBattleFrontier(app->saveData);

    for (int i = 0; i < BATTLE_CASTLE_NUM_RANK_TYPES; i++) {
        app->partnersRanks[i] = 1;
    }

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        app->numSlots = 3;
    } else {
        app->numSlots = NUM_MONS_MAX;
    }

    app->exitSlot = app->numSlots;
    app->previousSlot = app->exitSlot - 1;

    LoadAssets(app);

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        sub_0209BA80(app);
    }

    *state = 0;

    return TRUE;
}

BOOL BattleCastleSelfApp_Main(ApplicationManager *appMan, int *state)
{
    BattleCastleSelfApp *app = ApplicationManager_Data(appMan);

    if (app->partnerIsExiting == TRUE) {
        switch (*state) {
        case STATE_MAIN_FLOW:
            app->partnerIsExiting = FALSE;
            CloseAllSubDisplays(app);

            if (app->monSparklesSprite != NULL) {
                BattleCastleAppSprite_Free(app->monSparklesSprite);
                app->monSparklesVisible = FALSE;
            }

            BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
            BattleFrontier_SetPartnerInStrTemplate(app->strTemplate, 0);

            app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_PartnerChoseToExit, FONT_MESSAGE);

            ChangeState(app, state, STATE_SYNC_BEFORE_EXIT);
            break;
        }
    } else if (app->slotID != 0xff) {
        switch (*state) {
        case STATE_MAIN_FLOW:
        case STATE_SYNC_BEFORE_EXIT:
            app->partnerIsExiting = FALSE;
            CloseAllSubDisplays(app);
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

BOOL BattleCastleSelfApp_Exit(ApplicationManager *appMan, int *state)
{
    BattleCastleSelfApp *app = ApplicationManager_Data(appMan);
    *app->selectedMonSlotPtr = app->selectedMonSlot;

    VramTransfer_Free();
    FreeAssets(app);

    ApplicationManager_FreeData(appMan);
    SetVBlankCallback(NULL, NULL);
    Heap_Destroy(HEAP_ID_BATTLE_CASTLE_APP);
    Overlay_UnloadByID(FS_OVERLAY_ID(overlay104));

    return TRUE;
}

static BOOL State_FadeInApp(BattleCastleSelfApp *app)
{
    switch (app->subState) {
    case 0:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(215);
        }

        app->subState++;
        break;
    case 1:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (CommTiming_IsSyncState(215) == TRUE) {
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
            ShowMainAppDisplay(app);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_CASTLE_APP);
            app->subState++;
        }
        break;
    case 3:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (app->msgsReceived >= 2) {
                app->msgsReceived = 0;
                ShowMainAppDisplay(app);
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

static void ShowMainAppDisplay(BattleCastleSelfApp *app)
{
    u16 unused, unused2, unused3, unused4;
    GetOffsetsForPlayerInfo(app, &unused, &unused2, &unused3, &unused4);

    Window *window = &app->windows[SELF_APP_WINDOW_HEADER];
    Window_FillTilemap(window, 0);

    PrintPlayersAndPartnersNames(app, window);
    PrintPlayersAndPartnersCastlePoints(app, window);
    PrintAllMonsHP(app, &app->windows[SELF_APP_WINDOW_HP_BARS]);
    PrintAllMonsLevelAndGender(app, &app->windows[SELF_APP_WINDOW_LEVELS]);
    PrintMonSelectionStrings(app);

    GXLayers_TurnBothDispOn();
}

static BOOL State_MainAppFlow(BattleCastleSelfApp *app)
{
    u8 rank;
    u16 currentCP;
    u32 input;
    Pokemon *mon;

    switch (app->subState) {
    case MAIN_SUBSTATE_SELECT_MON:
        if (app->syncIncreaseRank == BATTLE_CASTLE_RANK_HEALING + 1) {
            OpenHealMenu(app);
            BattleCastleAppSprite_PlaySparkleAnim(app->bigSparkles, 204, 100);
            app->subState = MAIN_SUBSTATE_HEAL_MENU;
            app->syncIncreaseRank = 0;
            return FALSE;
        } else if (app->syncIncreaseRank == BATTLE_CASTLE_RANK_RENTALS + 1) {
            OpenRentalMenu(app);
            BattleCastleAppSprite_PlaySparkleAnim(app->bigSparkles, 211, 106);
            app->subState = MAIN_SUBSTATE_RENTAL_MENU;
            app->syncIncreaseRank = 0;
            return FALSE;
        }

        UpdateSelectedMon(app, gSystem.pressedKeys);

        if (JOY_NEW(PAD_BUTTON_A)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (app->selectedMonSlot >= app->exitSlot) {
                return TRUE;
            } else {
                CloseMonSelectionMessageBox(app);
                OpenMonOptionsMenu(app);
                app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
                break;
            }
        } else if (JOY_NEW(PAD_BUTTON_B)) {
            if (app->selectedMonSlot != app->exitSlot) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                app->selectedMonSlot = app->exitSlot;
                UpdateCursorPosition(app);
            }
            break;
        }
        break;
    case MAIN_SUBSTATE_MON_OPTIONS_MENU:
        input = ListMenu_ProcessInput(app->listMenu);
        BattleCastleApp_PlaySound(input, SEQ_SE_CONFIRM);

        switch (input) {
        case LIST_NOTHING_CHOSEN:
            break;
        case LIST_CANCEL:
            CloseMonOptions(app);
            PrintMonSelectionStrings(app);
            app->subState = MAIN_SUBSTATE_SELECT_MON;
            break;
        case MENU_ENTRY_HEAL:
            CloseMonOptions(app);
            OpenHealMenu(app);
            app->subState = MAIN_SUBSTATE_HEAL_MENU;
            break;
        case MENU_ENTRY_RENTAL:
            CloseMonOptions(app);
            OpenRentalMenu(app);
            app->subState = MAIN_SUBSTATE_RENTAL_MENU;
            break;
        case MENU_ENTRY_SUMMARY:
            CloseMonOptions(app);
            ShowMonSummary(app, app->selectedMonSlot);
            app->subState = MAIN_SUBSTATE_SHOW_SUMMARY_DISPLAY;
            break;
        case MENU_ENTRY_MOVES:
            CloseMonOptions(app);
            ShowMovesList(app, app->selectedMonSlot);
            app->subState = MAIN_SUBSTATE_SHOW_MOVE_DISPLAY;
            break;
        case 11:
            CloseMonOptions(app);
            PrintMonSelectionStrings(app);
            app->subState = MAIN_SUBSTATE_SELECT_MON;
            break;
        }
        break;
    case MAIN_SUBSTATE_HEAL_MENU:
        ListMenu_CalcTrueCursorPos(app->listMenu, &app->menuPos);

        if (JOY_NEW(PAD_KEY_UP)) {
            if (app->menuPos == 0) {
                ListMenu_TestInput(app->listMenu, &app->listTemplate, 0, NELEMS(sHealMenuEntries) - 1, 1, PAD_KEY_DOWN, NULL, NULL);
                ListMenu_Draw(app->listMenu);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                PrintLeftAlignedMessageWithBg(app, &app->windows[SELF_APP_WINDOW_MSG_BOX], BattleCastleSelfApp_Text_ReturnToPrevious, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
                return FALSE;
            }
        } else if (JOY_NEW(PAD_KEY_DOWN)) {
            if (app->menuPos == NELEMS(sHealMenuEntries) - 1) {
                ListMenu_TestInput(app->listMenu, &app->listTemplate, 0, 0, 1, PAD_KEY_UP, NULL, NULL);
                ListMenu_Draw(app->listMenu);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                PrintLeftAlignedMessageWithBg(app, &app->windows[SELF_APP_WINDOW_MSG_BOX], BattleCastleSelfApp_Text_WhichToUse, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
                return FALSE;
            }
        }

        input = ListMenu_ProcessInput(app->listMenu);

        BattleCastleApp_PlaySound(input, SEQ_SE_CONFIRM);
        ListMenu_CalcTrueCursorPos(app->listMenu, &app->menuPos);

        switch (input) {
        case LIST_NOTHING_CHOSEN:
            break;
        case LIST_CANCEL:
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            FreeListMenu2(app);
            OpenMonOptionsMenu(app);
            app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
            break;
        case MENU_ENTRY_RESTORE_HP:
        case MENU_ENTRY_RESTORE_PP:
        case MENU_ENTRY_RESTORE_ALL:
            app->selectedMenuEntry = input;
            FreeListMenu2(app);
            BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));

            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_HEALING);

            if (rank < sHealMenuEntries[app->menuPos][0]) {
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_HealRankTooLow, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_AFTER_HEAL_FAILURE;
            } else {
                SetStringTemplateNumber(app, 0, sHealingCosts[app->menuPos], 3, PADDING_MODE_NONE);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_WillCostCP, FONT_MESSAGE);
                OpenYesNoMenu(app);
                app->subState = MAIN_SUBSTATE_HEAL_YES_NO;
            }
            break;
        case MENU_ENTRY_RANK_UP_HEALING:
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_HEALING);

            if (rank == 3) {
                Sound_StopEffect(SEQ_SE_CONFIRM, 0);
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            } else {
                app->selectedMenuEntry = input;
                FreeListMenu2(app);
                currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));
                SetStringTemplateNumber(app, 0, sRankUpCosts[0][rank], 4, PADDING_MODE_NONE);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_RankUpForCP, FONT_MESSAGE);
                OpenYesNoMenu(app);
                app->subState = MAIN_SUBSTATE_RANK_UP_HEALING_YES_NO;
            }
            break;
        }
        break;
    case MAIN_SUBSTATE_HEAL_YES_NO:
        input = Menu_ProcessInput(app->yesNoMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            mon = Party_GetPokemonBySlotIndex(app->party, BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot));
            CloseYesNoMenu(app);

            currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_HEALING);

            if (rank < sHealMenuEntries[app->menuPos][0]) {
                BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_HealRankTooLow, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_AFTER_HEAL_FAILURE;
                break;
            }

            if (currentCP < sHealingCosts[app->menuPos]) {
                BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_NotEnoughCP, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_AFTER_HEAL_FAILURE;
                break;
            }

            if (app->menuPos == 0) {
                if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL)) {
                    app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_NoBenefit, FONT_MESSAGE);
                    app->subState = MAIN_SUBSTATE_WAIT_AFTER_HEAL_FAILURE;
                    break;
                }
            } else if (app->menuPos == 1) {
                if (!IsMonMissingPP(mon)) {
                    app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_NoBenefit, FONT_MESSAGE);
                    app->subState = MAIN_SUBSTATE_WAIT_AFTER_HEAL_FAILURE;
                    break;
                }
            } else {
                if (Pokemon_GetValue(mon, MON_DATA_HP, NULL) == Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL) && !IsMonMissingPP(mon)) {
                    app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_NoBenefit, FONT_MESSAGE);
                    app->subState = MAIN_SUBSTATE_WAIT_AFTER_HEAL_FAILURE;
                    break;
                }
            }

            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);

            if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
                ov104_0223BC2C(app->frontier, app->challengeType, sHealingCosts[app->selectedMenuEntry - 1]);
                PrintPlayersAndPartnersCastlePoints(app, &app->windows[SELF_APP_WINDOW_HEADER]);
                HealPokemon(app, app->selectedMonSlot, app->selectedMenuEntry);
                app->subState = MAIN_SUBSTATE_UPDATE_AFTER_PURCHASE;
            } else {
                app->syncPurchaseAction = TRUE;
                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCEL:
            CloseYesNoMenu(app);
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenHealMenu(app);
            app->subState = MAIN_SUBSTATE_HEAL_MENU;
            break;
        }
        break;
    case MAIN_SUBSTATE_RANK_UP_HEALING_YES_NO:
        input = Menu_ProcessInput(app->yesNoMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            CloseYesNoMenu(app);

            currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_HEALING);

            if (currentCP < sRankUpCosts[BATTLE_CASTLE_RANK_HEALING][rank]) {
                CloseYesNoMenu(app);
                BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_NotEnoughCP2, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_AFTER_HEAL_FAILURE;
                break;
            }

            if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
                IncreaseRank(app, app->selectedMonSlot, MENU_ENTRY_RANK_UP_HEALING);
                app->subState = MAIN_SUBSTATE_UPDATE_AFTER_RANK_UP_HEALING_PURCHASE;
                break;
            } else {
                app->syncPurchaseAction = TRUE;
                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCEL:
            CloseYesNoMenu(app);
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenHealMenu(app);
            app->subState = MAIN_SUBSTATE_HEAL_MENU;
            break;
        }
        break;
    case MAIN_SUBSTATE_UPDATE_AFTER_RANK_UP_HEALING_PURCHASE:
        if (UpdateAfterPurchase(app, app->selectedMonSlot, app->selectedMenuEntry) == TRUE) {
            app->subState = MAIN_SUBSTATE_WAIT_AFTER_RANK_UP_HEALING;
        }
        break;
    case MAIN_SUBSTATE_WAIT_AFTER_RANK_UP_HEALING:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseYesNoMenu(app);
            OpenHealMenu(app);
            BattleCastleAppSprite_PlaySparkleAnim(app->bigSparkles, 204, 100);
            app->subState = MAIN_SUBSTATE_HEAL_MENU;
        }
        break;
    case MAIN_SUBSTATE_WAIT_AFTER_HEAL_FAILURE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenHealMenu(app);
            app->subState = MAIN_SUBSTATE_HEAL_MENU;
        }
        break;
    case MAIN_SUBSTATE_RENTAL_MENU:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
        input = ListMenu_ProcessInput(app->listMenu);
        BattleCastleApp_PlaySound(input, SEQ_SE_CONFIRM);
        ListMenu_CalcTrueCursorPos(app->listMenu, &app->menuPos);

        switch (input) {
        case LIST_NOTHING_CHOSEN:
            break;
        case LIST_CANCEL:
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            FreeListMenu3(app);
            OpenMonOptionsMenu(app);
            app->subState = MAIN_SUBSTATE_MON_OPTIONS_MENU;
            break;
        case MENU_ENTRY_RENT_BERRIES:
            app->selectedMenuEntry = input;
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            FreeListMenu3(app);
            OpenItemSelectScreen(app, MENU_ENTRY_RENT_BERRIES);
            app->subState = MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY;
            break;
        case MENU_ENTRY_RENT_ITEMS:
            app->selectedMenuEntry = input;

            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            FreeListMenu3(app);

            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_RENTALS);

            if (rank == 1) {
                BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_RentalRankTooLow, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_AFTER_CANT_OPEN_ITEM_SELECT;
                return FALSE;
            }

            OpenItemSelectScreen(app, MENU_ENTRY_RENT_ITEMS);
            app->subState = MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY;
            break;
        case MENU_ENTRY_RANK_UP_ITEMS:
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_RENTALS);

            if (rank == 3) {
                Sound_StopEffect(SEQ_SE_CONFIRM, 0);
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            } else {
                app->selectedMenuEntry = input;
                FreeListMenu3(app);
                SetStringTemplateNumber(app, 0, sRankUpCosts[BATTLE_CASTLE_RANK_RENTALS][rank], 4, PADDING_MODE_NONE);
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_RankUpForCP, FONT_MESSAGE);
                OpenYesNoMenu(app);
                app->subState = MAIN_SUBSTATE_RANK_UP_RENTALS_YES_NO;
            }
            break;
        }
        break;
    case MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY:
        input = ListMenu_ProcessInput(app->listMenu);
        BattleCastleApp_PlaySound(input, SEQ_SE_CONFIRM);
        ListMenu_CalcTrueCursorPos(app->listMenu, &app->menuPos);

        switch (input) {
        case LIST_NOTHING_CHOSEN:
            break;
        case LIST_CANCEL:
            FreeItemSelect(app);
            OpenRentalMenu(app);
            app->subState = MAIN_SUBSTATE_RENTAL_MENU;
            break;
        default:
            Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_SELECTED_ITEM_NAME]);

            BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
            SetStringTemplateNumber(app, 0, GetItemPriceFromListPos(app, app->menuPos, app->selectedMenuEntry), 3, PADDING_MODE_NONE);

            app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_WillCostCP, FONT_MESSAGE);

            OpenYesNoMenu(app);
            BattleCastleAppSprite_SetDrawFlag(app->itemSprite, FALSE);

            app->subState = MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY_YES_NO;
            break;
        }
        break;
    case MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY_YES_NO:
        mon = Party_GetPokemonBySlotIndex(app->party, BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot));
        input = Menu_ProcessInput(app->yesNoMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            CloseYesNoMenu(app);
            currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));

            if (currentCP < GetItemPriceFromListPos(app, app->menuPos, app->selectedMenuEntry)) {
                BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_NotEnoughCP, FONT_MESSAGE);

                BattleCastleAppSprite_SetDrawFlag(app->itemSprite, FALSE);
                app->subState = MAIN_SUBSTATE_WAIT_AFTER_RENTAL_FAILURE;
                break;
            }

            if (Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL) == ITEM_NONE) {
                if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
                    FreeItemSelect(app);
                    BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
                    ov104_0223BC2C(app->frontier, app->challengeType, GetItemPriceFromListPos(app, app->menuPos, app->selectedMenuEntry));
                    PrintPlayersAndPartnersCastlePoints(app, &app->windows[SELF_APP_WINDOW_HEADER]);
                    RentItem(app, app->selectedMonSlot, GetItemIDFromListPos(app, app->menuPos, app->selectedMenuEntry));
                    app->subState = MAIN_SUBSTATE_UPDATE_AFTER_PURCHASE;
                } else {
                    app->selectedRentalItem = GetItemIDFromListPos(app, app->menuPos, app->selectedMenuEntry);
                    FreeItemSelect(app);
                    CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
                    app->syncPurchaseAction = TRUE;
                    return TRUE;
                }
            } else {
                SetStringTemplateSpecies(app, 0, Pokemon_GetBoxPokemon(mon));
                StringTemplate_SetItemNameWithArticle(app->strTemplate, 1, Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL));
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_AlreadyHoldingItem, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_SWITCH_ITEMS_PROMPT;
            }
            break;
        case MENU_NO:
        case MENU_CANCEL:
            CloseYesNoMenu(app);
            RefreshItemSelectMenu(app);
            app->subState = MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY;
            break;
        }
        break;
    case MAIN_SUBSTATE_RANK_UP_RENTALS_YES_NO:
        input = Menu_ProcessInput(app->yesNoMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            CloseYesNoMenu(app);

            currentCP = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_RENTALS);

            if (currentCP < sRankUpCosts[BATTLE_CASTLE_RANK_RENTALS][rank]) {
                CloseYesNoMenu(app);
                BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
                app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_NotEnoughCP2, FONT_MESSAGE);
                app->subState = MAIN_SUBSTATE_WAIT_AFTER_CANT_OPEN_ITEM_SELECT;
                break;
            }

            if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
                IncreaseRank(app, app->selectedMonSlot, MENU_ENTRY_RANK_UP_ITEMS);
                app->subState = MAIN_SUBSTATE_UPDATE_AFTER_RANK_UP_RENTAL;
                break;
            } else {
                app->syncPurchaseAction = TRUE;
                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCEL:
            CloseYesNoMenu(app);
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenRentalMenu(app);
            app->subState = MAIN_SUBSTATE_RENTAL_MENU;
            break;
        }
        break;
    case MAIN_SUBSTATE_UPDATE_AFTER_RANK_UP_RENTAL:
        if (UpdateAfterPurchase(app, app->selectedMonSlot, app->selectedMenuEntry) == TRUE) {
            app->subState = MAIN_SUBSTATE_WAIT_AFTER_RANK_UP_RENTAL;
        }
        break;
    case MAIN_SUBSTATE_WAIT_AFTER_RANK_UP_RENTAL:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseYesNoMenu(app);
            OpenRentalMenu(app);
            BattleCastleAppSprite_PlaySparkleAnim(app->bigSparkles, 211, 106);
            app->subState = MAIN_SUBSTATE_RENTAL_MENU;
        }
        break;
    case MAIN_SUBSTATE_WAIT_AFTER_CANT_OPEN_ITEM_SELECT:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenRentalMenu(app);
            app->subState = MAIN_SUBSTATE_RENTAL_MENU;
        }
        break;
    case MAIN_SUBSTATE_WAIT_AFTER_RENTAL_FAILURE:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            RefreshItemSelectMenu(app);
            app->subState = MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY;
        }
        break;
    case MAIN_SUBSTATE_SWITCH_ITEMS_PROMPT:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_WantToSwitchItems, FONT_MESSAGE);
            OpenYesNoMenu(app);
            app->subState = MAIN_SUBSTATE_SWITCH_ITEMS_YES_NO;
        }
        break;
    case MAIN_SUBSTATE_SWITCH_ITEMS_YES_NO:
        input = Menu_ProcessInput(app->yesNoMenu);

        switch (input) {
        case MENU_NOTHING_CHOSEN:
            break;
        case MENU_YES:
            CloseYesNoMenu(app);

            if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
                FreeItemSelect(app);
                BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
                ov104_0223BC2C(app->frontier, app->challengeType, GetItemPriceFromListPos(app, app->menuPos, app->selectedMenuEntry));
                PrintPlayersAndPartnersCastlePoints(app, &app->windows[SELF_APP_WINDOW_HEADER]);
                RentItem(app, app->selectedMonSlot, GetItemIDFromListPos(app, app->menuPos, app->selectedMenuEntry));
                app->subState = MAIN_SUBSTATE_UPDATE_AFTER_PURCHASE;
            } else {
                app->selectedRentalItem = GetItemIDFromListPos(app, app->menuPos, app->selectedMenuEntry);
                FreeItemSelect(app);
                CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
                app->syncPurchaseAction = TRUE;
                return TRUE;
            }
            break;
        case MENU_NO:
        case MENU_CANCEL:
            CloseYesNoMenu(app);
            RefreshItemSelectMenu(app);
            app->subState = MAIN_SUBSTATE_SELECT_ITEM_OR_BERRY;
            break;
        }
        break;
    case MAIN_SUBSTATE_UPDATE_AFTER_PURCHASE:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);

        if (UpdateAfterPurchase(app, app->selectedMonSlot, app->selectedMenuEntry) == TRUE) {
            app->subState = MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION;
        }
        break;
    case MAIN_SUBSTATE_WAIT_RETURN_TO_MON_SELECTION:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            PrintMonSelectionStrings(app);
            app->subState = MAIN_SUBSTATE_SELECT_MON;
        }
        break;
    case MAIN_SUBSTATE_SHOW_SUMMARY_DISPLAY:
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
    case MAIN_SUBSTATE_SHOW_MOVE_DISPLAY:
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

static BOOL State_SyncPurchase(BattleCastleSelfApp *app)
{
    u8 slot;

    switch (app->subState) {
    case 0:
        app->syncIncreaseRank = 0;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);

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

        if ((app->selectedMenuEntry == MENU_ENTRY_RANK_UP_HEALING) || (app->selectedMenuEntry == MENU_ENTRY_RANK_UP_ITEMS)) {
            IncreaseRank(app, app->slotID, app->selectedMenuEntry);
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
            CommTiming_StartSync(130);
            app->subState++;
            break;
        }
        break;
    case 4:
        if (CommTiming_IsSyncState(130) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTool_Init(100);

            app->slotID = 0xff;

            if (app->syncIncreaseRank == 0) {
                CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
                PrintMonSelectionStrings(app);
            }

            app->partnerIsExiting = FALSE;
            return TRUE;
        }

        break;
    }

    return FALSE;
}

static BOOL State_SyncBeforeExit(BattleCastleSelfApp *app)
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
            CommTiming_StartSync(131);
            app->subState++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(131) == TRUE) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
            return TRUE;
        }
        break;
    }

    return FALSE;
}

static BOOL State_FadeOutApp(BattleCastleSelfApp *app)
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

static void FreeAssets(BattleCastleSelfApp *app)
{
    BattleCastleAppSprite_Free(app->upArrowSprite);
    BattleCastleAppSprite_Free(app->downArrowSprite);
    BattleCastleAppSprite_Free(app->itemSprite);

    BattleCastleAppSprite_Free(app->bigSparkles);
    BattleCastleAppSprite_Free(app->cursorSprite);
    BattleCastleAppSprite_Free(app->partnerCursorSprite);
    BattleCastleAppSprite_Free(app->itemSelectCursorSprite);

    u8 numMons = BattleCastle_GetPartySize(app->challengeType, TRUE);

    for (int i = 0; i < numMons; i++) {
        BattleCastleAppSprite_Free(app->monSprites[i]);
        BattleCastleAppSprite_Free(app->itemIconSprites[i]);
        BattleCastleAppSprite_Free(app->barSprites[i]);
    }

    NetworkIcon_Destroy();

    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffer(app->plttData, PLTTBUF_MAIN_BG);
    PaletteData_Free(app->plttData);

    app->plttData = NULL;

    BattleCastleApp_FreeSprites(&app->spriteMan);

    MessageLoader_Free(app->msgLoader);
    MessageLoader_Free(app->itemMsgLoader);
    StringTemplate_Free(app->strTemplate);
    String_Free(app->displayStr);
    String_Free(app->fmtStr);
    FontSpecialChars_Free(app->specialChars);

    for (int i = 0; i < 3; i++) {
        String_Free(app->yesNoStrs[i]);
    }

    BattleCastleApp_FreeWindows(app->windows, FALSE);
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

static void LoadAssets(BattleCastleSelfApp *app)
{

    app->narc = NARC_ctor(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, HEAP_ID_BATTLE_CASTLE_APP);

    LoadBackgrounds(app);
    InitSpriteManager(app);

    app->msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_BATTLE_CASTLE_SELF_APP, HEAP_ID_BATTLE_CASTLE_APP);
    app->itemMsgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_DESCRIPTIONS, HEAP_ID_BATTLE_CASTLE_APP);
    app->strTemplate = StringTemplate_Default(HEAP_ID_BATTLE_CASTLE_APP);
    app->displayStr = String_Init(600, HEAP_ID_BATTLE_CASTLE_APP);
    app->fmtStr = String_Init(600, HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < 3; i++) {
        app->yesNoStrs[i] = String_Init(32, HEAP_ID_BATTLE_CASTLE_APP);
    }

    Font_LoadTextPalette(0, 13 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);
    Font_LoadScreenIndicatorsPalette(0, 12 * PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);

    app->specialChars = FontSpecialChars_Init(1, 2, 0, HEAP_ID_BATTLE_CASTLE_APP);

    BattleCastleApp_InitWindows(app->bgConfig, app->windows, FALSE);

    u16 unused1, unused2, unused3, unused4;
    GetOffsetsForPlayerInfo(app, &unused1, &unused2, &unused3, &unused4);

    app->upArrowSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_MENU_UP_ARROW, 160, 10, 0, NULL);
    app->downArrowSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_MENU_DOWN_ARROW, 160, 124, 0, NULL);

    BattleCastleAppSprite_SetDrawFlag(app->upArrowSprite, FALSE);
    BattleCastleAppSprite_SetDrawFlag(app->downArrowSprite, FALSE);

    u16 xOffset, iconXOffset;
    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        xOffset = 64;
        iconXOffset = 64 + 8;
    } else {
        xOffset = 32;
        iconXOffset = 32 + 8;
    }

    u8 numMons = BattleCastle_GetPartySize(app->challengeType, TRUE);

    for (int i = 0; i < numMons; i++) {
        app->itemIconSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 2, 2, 2, 0, 64 * i + iconXOffset, 62, 2, NULL);

        Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, i);

        if (!Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL)) {
            BattleCastleAppSprite_SetDrawFlag(app->itemIconSprites[i], FALSE);
        }

        u32 hp = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
        u32 maxHp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        u32 pokeIconAnimId = GetPokeIconAnimID(app, HealthBar_Color(hp, maxHp, 48));
        u32 barAnimID = GetHpBarAnimID(app, HealthBar_Color(hp, maxHp, 48));

        app->barSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, barAnimID, 64 * i + xOffset, 78, 3, NULL);
        app->monSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 3 + i, 3, 3, pokeIconAnimId, 64 * i + xOffset, 58, 2, NULL);

        BattleCastleAppSprite_UpdatePalette(app->monSprites[i], Party_GetPokemonBySlotIndex(app->party, i));
    }

    app->itemSprite = BattleCastleAppSprite_New(&app->spriteMan, 1, 1, 1, 0, 24, 162, 0, NULL);

    BattleCastleApp_SetItemGraphic(&app->spriteMan, ITEM_POTION);
    BattleCastleApp_SetItemPalette(&app->spriteMan, ITEM_POTION);
    BattleCastleAppSprite_SetDrawFlag(app->itemSprite, FALSE);

    u32 x, y;
    GetCursorSpritePos(app, &x, &y, 0);

    app->cursorSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_MON_CURSOR, x, y, 2, NULL);
    app->partnerCursorSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_PARTNER_MON_CURSOR, x, y, 2, NULL);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        BattleCastleAppSprite_SetDrawFlag(app->partnerCursorSprite, FALSE);
    }

    app->bigSparkles = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_OPEN_SUMMARY_SPARKLES, 20, 20, 0, NULL);
    BattleCastleAppSprite_SetDrawFlag(app->bigSparkles, FALSE);

    app->itemSelectCursorSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_ITEM_SELECT_CURSOR, 20, 20, 1, NULL);
    BattleCastleAppSprite_SetDrawFlag(app->itemSelectCursorSprite, FALSE);

    if (CommSys_IsInitialized()) {
        ReserveVramForWirelessIconChars(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_32K);
        ReserveSlotsForWirelessIconPalette(NNS_G2D_VRAM_TYPE_2DMAIN);
        sub_02039734();
    }

    SetVBlankCallback(VBlankCallback, app);
}

static void LoadBackgrounds(BattleCastleSelfApp *app)
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

static void InitSpriteManager(BattleCastleSelfApp *app)
{
    BattleCastleApp_InitSpriteManager(&app->spriteMan, app->party, BattleCastle_IsMultiPlayerChallenge(app->challengeType));
}

static void FreeBackgrounds(BgConfig *bgConfig)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 0);

    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_3);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);

    Heap_Free(bgConfig);
}

static void VBlankCallback(void *data)
{
    BattleCastleSelfApp *app = data;

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

static void LoadMainBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_SOLO_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    } else {
        Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_MULTI_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    }
}

static void LoadPalette(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_CASTLE_SELF_APP_PLTT, &plttData, HEAP_ID_BATTLE_CASTLE_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 4);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 4);
    Heap_Free(pltt);
}

static void LoadSummaryBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_SUMMARY_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadPalette2(void)
{
    NNSG2dPaletteData *plttData;
    void *pltt = Graphics_GetPlttData(NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG, BATTLE_CASTLE_SELF_APP_PLTT, &plttData, HEAP_ID_BATTLE_CASTLE_APP);

    DC_FlushRange(plttData->pRawData, PALETTE_SIZE_BYTES * 4);
    GX_LoadBGPltt(plttData->pRawData, 0, PALETTE_SIZE_BYTES * 4);

    Heap_Free(pltt);
}

static void LoadMovesListBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_MOVES_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadItemSelectBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_CASTLE_SELF_APP_ITEMS_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
}

static void LoadSubScreenBackground(BattleCastleSelfApp *app, enum BgLayer bgLayer)
{
    Graphics_LoadTilesToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILES, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_TILEMAP, app->bgConfig, bgLayer, 0, 0, TRUE, HEAP_ID_BATTLE_CASTLE_APP);
    Graphics_LoadPaletteFromOpenNARC(app->narc, BATTLE_FRONTIER_APP_SUB_SCREEN_PLTT, PAL_LOAD_SUB_BG, 0, PALETTE_SIZE_BYTES, HEAP_ID_BATTLE_CASTLE_APP);
}

static u8 PrintLeftAlignedMessageWithBg(BattleCastleSelfApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font)
{
    return PrintMessageWithBg(app, window, entryID, xOffset, yOffset, renderDelay, fgColor, shadowColor, bgColor, font, TEXT_ALIGN_LEFT);
}

static u8 PrintMessageWithBg(BattleCastleSelfApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, enum TextAlignment alignment)
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

static u8 PrintLeftAlignedMessage(BattleCastleSelfApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font)
{
    return PrintMessage(app, window, entryID, xOffset, yOffset, renderDelay, fgColor, shadowColor, bgColor, font, TEXT_ALIGN_LEFT);
}

static u8 PrintMessage(BattleCastleSelfApp *app, Window *window, int entryID, u32 xOffset, u32 yOffset, u32 renderDelay, u8 fgColor, u8 shadowColor, u8 bgColor, u8 font, enum TextAlignment alignment)
{
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

static u8 PrintMessageAndCopyToVRAM(BattleCastleSelfApp *app, int entryID, u8 font)
{
    u8 printerID = PrintLeftAlignedMessageWithBg(app, &app->windows[SELF_APP_WINDOW_MSG_BOX], entryID, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, font);
    Window_ScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_MSG_BOX]);

    return printerID;
}

static void PrintPokemonSummary(BattleCastleSelfApp *app, Window *window, Pokemon *mon)
{
    Window_FillTilemap(window, 0);

    StringTemplate_SetItemName(app->strTemplate, 0, Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL));
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_Item, 0, 8, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_ItemValue, 64, 8, TEXT_ALIGN_LEFT);

    StringTemplate_SetNatureName(app->strTemplate, 0, Pokemon_GetNature(mon));
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_Nature, 0, 24, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_NatureValue, 64, 24, TEXT_ALIGN_LEFT);

    StringTemplate_SetAbilityName(app->strTemplate, 0, Pokemon_GetValue(mon, MON_DATA_ABILITY, NULL));
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_Ability, 0, 40, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_AbilityValue, 64, 40, TEXT_ALIGN_LEFT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_ATK, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_Attack, 0, 56, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_AttackValue, 80, 56, TEXT_ALIGN_RIGHT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_DEF, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_Defense, 96, 56, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_DefenseValue, 176, 56, TEXT_ALIGN_RIGHT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_SP_ATK, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_SpAttack, 0, 72, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_SpAttackValue, 80, 72, TEXT_ALIGN_RIGHT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_SP_DEF, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_SpDefense, 96, 72, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_SpDefenseValue, 176, 72, TEXT_ALIGN_RIGHT);

    SetStringTemplateNumber(app, 0, Pokemon_GetValue(mon, MON_DATA_SPEED, NULL), 3, PADDING_MODE_SPACES);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_Speed, 0, 88, TEXT_ALIGN_LEFT);
    PrintStaticMessage(app, window, BattleCastleSelfApp_Text_SpeedValue, 80, 88, TEXT_ALIGN_RIGHT);

    Window_ScheduleCopyToVRAM(window);
}

static void PrintStaticMessage(BattleCastleSelfApp *app, Window *window, int entryID, u16 xOffset, u16 yOffset, enum TextAlignment alignment)
{
    PrintMessage(app, window, entryID, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, alignment);
}

static void PrintAllMoves(BattleCastleSelfApp *app, Window *window, Pokemon *mon)
{
    Window_FillTilemap(window, 0);

    PrintMoveInfo(app, window, 0, BattleCastleSelfApp_Text_MoveName1, BattleCastleSelfApp_Text_MovePP, mon, MON_DATA_MOVE1, MON_DATA_MOVE1_PP, MON_DATA_MOVE1_MAX_PP);
    PrintMoveInfo(app, window, 1, BattleCastleSelfApp_Text_MoveName2, BattleCastleSelfApp_Text_MovePP, mon, MON_DATA_MOVE2, MON_DATA_MOVE2_PP, MON_DATA_MOVE2_MAX_PP);
    PrintMoveInfo(app, window, 2, BattleCastleSelfApp_Text_MoveName3, BattleCastleSelfApp_Text_MovePP, mon, MON_DATA_MOVE3, MON_DATA_MOVE3_PP, MON_DATA_MOVE3_MAX_PP);
    PrintMoveInfo(app, window, 3, BattleCastleSelfApp_Text_MoveName4, BattleCastleSelfApp_Text_MovePP, mon, MON_DATA_MOVE4, MON_DATA_MOVE4_PP, MON_DATA_MOVE4_MAX_PP);

    Window_ScheduleCopyToVRAM(window);
}

static void PrintMoveInfo(BattleCastleSelfApp *app, Window *window, u8 idx, u32 moveNameEntryID, u32 ppEntryID, Pokemon *mon, u32 moveParam, u32 ppParam, u32 maxPpParam)
{
    u16 nameXOffset = 24;
    u16 nameYOffset = 12 + (idx * 24);
    u16 ppXOffset = 137;
    u16 ppYOffset = 12 + (idx * 24);

    StringTemplate_SetMoveName(app->strTemplate, idx, Pokemon_GetValue(mon, moveParam, NULL));
    app->printerID = PrintLeftAlignedMessage(app, window, moveNameEntryID, nameXOffset, nameYOffset, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM);

    SetStringTemplateNumber(app, 4, Pokemon_GetValue(mon, ppParam, NULL), 3, PADDING_MODE_NONE);
    SetStringTemplateNumber(app, 5, Pokemon_GetValue(mon, maxPpParam, NULL), 3, PADDING_MODE_NONE);
    app->printerID = PrintMessage(app, window, ppEntryID, ppXOffset, ppYOffset, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);
}

static void PrintAllMonsHP(BattleCastleSelfApp *app, Window *window)
{
    Window_FillTilemap(window, 0);

    u8 numMons = BattleCastle_GetPartySize(app->challengeType, TRUE);

    for (int i = 0; i < numMons; i++) {
        PrintMonHP(app, window, i, FALSE);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintMonHP(BattleCastleSelfApp *app, Window *window, u8 slot, u8 isItemSelectMenu)
{
    u16 baseXOffset, hpXOffset, hpYOffset, maxHpXOffset, maxHpYOffset, slashXOffset, slashYOffset;
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, slot);

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == FALSE) {
        baseXOffset = 36;
    } else {
        baseXOffset = 4;
    }

    if (!isItemSelectMenu) {
        hpXOffset = baseXOffset + (64 * slot);
        hpYOffset = 1;
        slashXOffset = 24 + baseXOffset + (64 * slot);
        slashYOffset = 1;
        maxHpXOffset = 32 + baseXOffset + (64 * slot);
        maxHpYOffset = 1;
    } else {
        hpXOffset = 4;
        hpYOffset = 0;
        slashXOffset = 24 + 4;
        slashYOffset = 0;
        maxHpXOffset = 32 + 4;
        maxHpYOffset = 0;
    }

    FontSpecialChars_DrawPartyScreenHPText(app->specialChars, Pokemon_GetValue(mon, MON_DATA_HP, NULL), 3, PADDING_MODE_SPACES, window, hpXOffset, hpYOffset);
    FontSpecialChars_DrawPartyScreenLevelText(app->specialChars, SPECIAL_CHAR_SLASH, window, slashXOffset, slashYOffset);
    FontSpecialChars_DrawPartyScreenHPText(app->specialChars, Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL), 3, PADDING_MODE_NONE, window, maxHpXOffset, maxHpYOffset);
}

static void PrintAllMonsLevelAndGender(BattleCastleSelfApp *app, Window *window)
{
    u8 numMons = BattleCastle_GetPartySize(app->challengeType, TRUE);

    for (int i = 0; i < numMons; i++) {
        PrintMonLevelAndGender(app, window, i, FALSE);
    }

    Window_ScheduleCopyToVRAM(window);
}

static void PrintMonLevelAndGender(BattleCastleSelfApp *app, Window *window, u8 slot, u8 isItemSelectMenu)
{
    u16 baseLevelXOffset, baseGenderXOffset;
    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == FALSE) {
        baseLevelXOffset = 40;
        baseGenderXOffset = 80;
    } else {
        baseLevelXOffset = 8;
        baseGenderXOffset = 48;
    }

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, slot);

    u32 levelXOffset, levelYOffset, genderXOffset, genderYOffset;
    if (!isItemSelectMenu) {
        levelXOffset = baseLevelXOffset + (64 * slot);
        levelYOffset = 1;
        genderXOffset = baseGenderXOffset + (64 * slot);
        genderYOffset = 1;
    } else {
        levelXOffset = 4;
        levelYOffset = 0;
        genderXOffset = 48;
        genderYOffset = 0;
    }

    FontSpecialChars_DrawPartyScreenText(app->specialChars, SPECIAL_CHAR_LEVEL, Pokemon_GetValue(mon, MON_DATA_LEVEL, NULL), 3, PADDING_MODE_NONE, window, levelXOffset, levelYOffset);
    u32 gender = Pokemon_GetValue(mon, MON_DATA_GENDER, NULL);
    PrintGenderSymbol(app, window, genderXOffset, genderYOffset, FONT_SYSTEM, gender);
}

static void DrawPlayerInfoOnItemSelectMenu(BattleCastleSelfApp *app, Window *window)
{
    u16 castlePoints = sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType)));

    BattleCastleApp_DrawWindow(app->bgConfig, window);
    Window_FillTilemap(window, 15);

    PrintPlayerName(app, window, 1, 1, FONT_SYSTEM);
    SetStringTemplateNumber(app, 0, castlePoints, 4, PADDING_MODE_SPACES);

    app->printerID = PrintLeftAlignedMessage(app, window, BattleCastleSelfApp_Text_CastlePointsItemSelect, 16, 16, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM);
    Window_ScheduleCopyToVRAM(window);
}

static u8 PrintItemName(BattleCastleSelfApp *app, Window *window, u16 entryID)
{
    Window_FillTilemap(window, 0);
    MessageLoader_GetString(app->itemMsgLoader, entryID, app->fmtStr);
    StringTemplate_Format(app->strTemplate, app->displayStr, app->fmtStr);

    u8 printerID = Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, app->displayStr, 0, 6, TEXT_SPEED_NO_TRANSFER, TEXT_COLOR(1, 2, 0), NULL);

    Window_ScheduleCopyToVRAM(window);
    return printerID;
}

static void UpdateHP(BattleCastleSelfApp *app, Window *window, u8 slot, u32 hp)
{
    u16 xOffset;

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == FALSE) {
        xOffset = 36;
    } else {
        xOffset = 4;
    }

    Window_FillRectWithColor(window, 0, xOffset + (64 * slot), 0, 24, 9);
    FontSpecialChars_DrawPartyScreenHPText(app->specialChars, hp, 3, PADDING_MODE_SPACES, window, xOffset + (64 * slot), 1);
    Window_ScheduleCopyToVRAM(window);
}

static void PrintMonSelectionStrings(BattleCastleSelfApp *app)
{
    app->printerID = PrintMessageWithBg(app, &app->windows[SELF_APP_WINDOW_EXIT], BattleCastleSelfApp_Text_Exit, 16, 5, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, 1);
    BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MON_SELECTION_MSG_BOX], Options_Frame(app->options));
    app->printerID = PrintLeftAlignedMessageWithBg(app, &app->windows[SELF_APP_WINDOW_MON_SELECTION_MSG_BOX], BattleCastleSelfApp_Text_ChoosePokemon, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void CloseMonSelectionMessageBox(BattleCastleSelfApp *app)
{
    CloseMessageBox(&app->windows[SELF_APP_WINDOW_MON_SELECTION_MSG_BOX]);
}

static void OpenMonOptionsMenu(BattleCastleSelfApp *app)
{
    BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MON_OPTIONS_MSG_BOX], Options_Frame(app->options));
    app->menuPos = 0;
    InitMonOptionsMenu(app);
}

static void CloseMonOptions(BattleCastleSelfApp *app)
{
    ListMenu_GetListAndCursorPos(app->listMenu, &app->monMenuListPos, &app->monMenuCursorPos);

    CloseMessageBox(&app->windows[SELF_APP_WINDOW_MON_OPTIONS_MSG_BOX]);
    FreeListMenu(app);
}

static void OpenHealMenu(BattleCastleSelfApp *app)
{
    BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));

    app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_WhichToUse, FONT_MESSAGE);
    app->menuPos = 0;

    InitHealMenu(app);
}

static void FreeListMenu2(BattleCastleSelfApp *app)
{
    FreeListMenu(app);
}

static void OpenRentalMenu(BattleCastleSelfApp *app)
{
    BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
    app->menuPos = 0;
    InitRentalMenu(app);
}

static void FreeListMenu3(BattleCastleSelfApp *app)
{
    FreeListMenu(app);
}

static void OpenItemSelectScreen(BattleCastleSelfApp *app, u8 menuOption)
{
    app->itemSelectIsOpen = TRUE;

    CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);

    Window_ClearAndCopyToVRAM(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
    Window_ClearAndCopyToVRAM(&app->windows[SELF_APP_WINDOW_MON_OPTIONS_MENU]);

    LoadItemSelectBackground(app, BG_LAYER_MAIN_2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_SUMMARY_SCREEN]);

    app->menuPos = 0;

    DrawItemSelectMenuAndMonInfo(app, menuOption);
    DrawPlayerInfoOnItemSelectMenu(app, &app->windows[SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO]);
}

static void FreeItemSelect(BattleCastleSelfApp *app)
{
    if (app->itemSelectIsOpen == TRUE) {
        app->itemSelectIsOpen = FALSE;
        Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_SELECTED_ITEM_NAME]);
        FreeListMenu(app);
        CloseItemSelectScreen(app);
    }
}

static void InitYesNoMenu(BattleCastleSelfApp *app, Window *window, u8 numOptions)
{
    for (int i = 0; i < 3; i++) {
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

static void AddStringToYesNoMenu(BattleCastleSelfApp *app, u8 strIndex, u8 listIndex, int entryID)
{
    MessageLoader_GetString(app->msgLoader, entryID, app->yesNoStrs[strIndex]);

    app->yesNoStrList[strIndex].entry = app->yesNoStrs[strIndex];
    app->yesNoStrList[strIndex].index = listIndex;
}

static void OpenYesNoMenu(BattleCastleSelfApp *app)
{
    BattleCastleApp_DrawWindow(app->bgConfig, &app->windows[SELF_APP_WINDOW_YES_NO_MENU]);
    InitYesNoMenu(app, &app->windows[SELF_APP_WINDOW_YES_NO_MENU], 2);
    AddStringToYesNoMenu(app, 0, 0, BattleCastleSelfApp_Text_Yes);
    AddStringToYesNoMenu(app, 1, 1, BattleCastleSelfApp_Text_No);

    app->yesNoMenu = Menu_NewAndCopyToVRAM(&app->yesNoMenuTemplate, 8, 0, 0, HEAP_ID_BATTLE_CASTLE_APP, PAD_BUTTON_B);
    app->yesNoMenuIsOpen = TRUE;
}

static void DrawItemSelectMenuAndMonInfo(BattleCastleSelfApp *app, u8 menuOption)
{
    UpdateMonSpriteForItemSelectScreen(app, app->selectedMonSlot, TRUE);
    u8 slot = BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot);
    PrintMonHP(app, &app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_HP], slot, TRUE);

    Window_ScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_HP]);
    PrintMonLevelAndGender(app, &app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_INFO], slot, TRUE);
    Window_ScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_INFO]);

    BattleCastleAppSprite_SetDrawFlag(app->itemSprite, TRUE);
    BattleCastleAppSprite_SetDrawFlag(app->upArrowSprite, TRUE);
    BattleCastleAppSprite_SetDrawFlag(app->downArrowSprite, TRUE);
    BattleCastleAppSprite_SetDrawFlag(app->itemSelectCursorSprite, TRUE);

    MessageLoader *itemMsgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, HEAP_ID_BATTLE_CASTLE_APP);
    u8 rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_RENTALS);

    u8 listSize;
    if (menuOption == MENU_ENTRY_RENT_BERRIES) {
        listSize = sBerriesAvailableByRank[rank - 1];
    } else {
        listSize = sItemsAvailableByRank[rank - 1];
    }

    app->strList = StringList_New(listSize + 1, HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < listSize; i++) {
        u16 itemID;

        if (menuOption == MENU_ENTRY_RENT_BERRIES) {
            itemID = sBerriesForRent[i];
        } else {
            itemID = sItemsForRent[i];
        }

        StringList_AddFromMessageBank(app->strList, itemMsgLoader, itemID, i);
    }

    StringList_AddFromMessageBank(app->strList, app->msgLoader, BattleCastleSelfApp_Text_Cancel, MENU_CANCELED);

    app->listTemplate = sDefaultListTemplate;
    app->listTemplate.choices = app->strList;
    app->listTemplate.window = &app->windows[SELF_APP_WINDOW_ITEM_SELECT_MENU];
    app->listTemplate.parent = app;
    app->listTemplate.cursorCallback = UpdateItemSelectMenuDisplay;
    app->listTemplate.printCallback = PrintItemPrice;
    app->listTemplate.count = listSize + 1;
    app->listTemplate.textColorBg = 0;
    app->listTemplate.maxDisplay = 6;
    app->listTemplate.textXOffset = 0;
    app->listTemplate.cursorType = 1;
    app->listMenu = ListMenu_New(&app->listTemplate, 0, 0, HEAP_ID_BATTLE_CASTLE_APP);

    MarkListMenuAsOpen(app, &app->windows[SELF_APP_WINDOW_ITEM_SELECT_MENU]);
    MessageLoader_Free(itemMsgLoader);
}

static void UpdateItemSelectMenuDisplay(ListMenu *menu, u32 item, u8 onInit)
{
    u16 listPos, cursorPos, pos;
    BattleCastleSelfApp *app = (BattleCastleSelfApp *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (!onInit) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
        ListMenu_CalcTrueCursorPos(app->listMenu, &pos);
    } else {
        pos = 0;
    }

    u32 listCount = ListMenu_GetAttribute(menu, LIST_MENU_COUNT);
    u32 displayCount = ListMenu_GetAttribute(menu, LIST_MENU_MAX_DISPLAY);

    ListMenu_GetListAndCursorPos(menu, &listPos, &cursorPos);

    if (listPos == 0) {
        BattleCastleAppSprite_SetDrawFlag(app->upArrowSprite, FALSE);
        BattleCastleAppSprite_SetDrawFlag(app->downArrowSprite, TRUE);
    } else if (listPos == listCount - displayCount) {
        BattleCastleAppSprite_SetDrawFlag(app->upArrowSprite, TRUE);
        BattleCastleAppSprite_SetDrawFlag(app->downArrowSprite, FALSE);
    } else {
        BattleCastleAppSprite_SetDrawFlag(app->upArrowSprite, TRUE);
        BattleCastleAppSprite_SetDrawFlag(app->downArrowSprite, TRUE);
    }

    BattleCastleAppSprite_SetPosition(app->itemSelectCursorSprite, 158, 24 + cursorPos * 16);

    if (item != MENU_CANCELED) {
        PrintItemName(app, &app->windows[SELF_APP_WINDOW_SELECTED_ITEM_NAME], GetItemIDFromListPos(app, pos, app->selectedMenuEntry));

        BattleCastleApp_SetItemGraphic(&app->spriteMan, GetItemIDFromListPos(app, pos, app->selectedMenuEntry));
        BattleCastleApp_SetItemPalette(&app->spriteMan, GetItemIDFromListPos(app, pos, app->selectedMenuEntry));
    } else {
        BattleCastleApp_SetItemGraphic(&app->spriteMan, 0xffff);
        BattleCastleApp_SetItemPalette(&app->spriteMan, 0xffff);
        Window_FillTilemap(&app->windows[SELF_APP_WINDOW_SELECTED_ITEM_NAME], 0);
        Window_ScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_SELECTED_ITEM_NAME]);
    }
}

static void PrintItemPrice(ListMenu *menu, u32 item, u8 yOffset)
{
    BattleCastleSelfApp *app = (BattleCastleSelfApp *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (item != MENU_CANCELED) {
        SetStringTemplateNumber(app, 0, GetItemPriceFromListPos(app, item, app->selectedMenuEntry), 4, PADDING_MODE_SPACES);

        app->printerID = PrintMessage(app, &app->windows[SELF_APP_WINDOW_ITEM_SELECT_MENU], BattleCastleSelfApp_Text_CastlePointsItemSelect, 128, yOffset, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);
        Window_ScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MENU]);
    }
}

static void InitHealMenu(BattleCastleSelfApp *app)
{
    BattleCastleApp_DrawWindow(app->bgConfig, &app->windows[SELF_APP_WINDOW_HEAL_MENU]);
    Window_FillTilemap(&app->windows[SELF_APP_WINDOW_HEAL_MENU], 15);

    app->strList = StringList_New(NELEMS(sHealMenuEntries), HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < NELEMS(sHealMenuEntries); i++) {
        StringList_AddFromMessageBank(app->strList, app->msgLoader, sHealMenuEntries[i][1], sHealMenuEntries[i][2]);
    }

    app->listTemplate = sDefaultListTemplate;
    app->listTemplate.choices = app->strList;
    app->listTemplate.window = &app->windows[SELF_APP_WINDOW_HEAL_MENU];
    app->listTemplate.parent = app;
    app->listTemplate.cursorCallback = UpdateHealMenuEntryDescription;
    app->listTemplate.printCallback = SetHealMenuEntryColor;
    app->listTemplate.count = NELEMS(sHealMenuEntries);
    app->listTemplate.maxDisplay = NELEMS(sHealMenuEntries);
    app->listTemplate.textColorBg = 15;
    app->listMenu = ListMenu_New(&app->listTemplate, 0, 0, HEAP_ID_BATTLE_CASTLE_APP);

    MarkListMenuAsOpen(app, &app->windows[SELF_APP_WINDOW_HEAL_MENU]);
}

static void UpdateHealMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit)
{
    BattleCastleSelfApp *app = (BattleCastleSelfApp *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (!onInit) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u8 rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_HEALING);

    u16 entryID;
    switch (item) {
    case MENU_ENTRY_RANK_UP_HEALING:
        if (rank == 3) {
            entryID = BattleCastleSelfApp_Text_RankCannotBeRaised;
        } else if (rank == 1) {
            entryID = BattleCastleSelfApp_Text_RankUpToRestorePP;
        } else {
            entryID = BattleCastleSelfApp_Text_RankUpToRestoreHPAndPP;
        }
        break;
    case MENU_CANCELED:
        entryID = BattleCastleSelfApp_Text_ReturnToPrevious;
        break;
    default:
        entryID = BattleCastleSelfApp_Text_WhichToUse;
        break;
    }

    PrintLeftAlignedMessageWithBg(app, &app->windows[SELF_APP_WINDOW_MSG_BOX], entryID, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void SetHealMenuEntryColor(ListMenu *menu, u32 item, u8 yOffset)
{
    BattleCastleSelfApp *app = (BattleCastleSelfApp *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    u16 pos;
    ListMenu_CalcTrueCursorPos(menu, &pos);
    u8 rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_HEALING);

    u8 fgColor;
    switch (item) {
    case MENU_ENTRY_RESTORE_HP:
    case MENU_ENTRY_RESTORE_PP:
    case MENU_ENTRY_RESTORE_ALL:
        if (rank >= sHealMenuEntries[item - 1][0]) {
            fgColor = 1;
        } else {
            fgColor = 2;
        }
        break;
    case MENU_ENTRY_RANK_UP_HEALING:
        if (rank == 3) {
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

static const u32 sRentalMenuEntries[][3] = {
    { 1, BattleCastleSelfApp_Text_Berries, MENU_ENTRY_RENT_BERRIES },
    { 2, BattleCastleSelfApp_Text_Items, MENU_ENTRY_RENT_ITEMS },
    { 1, BattleCastleSelfApp_Text_RankUp2, MENU_ENTRY_RANK_UP_ITEMS },
    { 1, BattleCastleSelfApp_Text_Cancel3, MENU_CANCELED }
};

static void InitRentalMenu(BattleCastleSelfApp *app)
{
    Bg_ToggleLayer(BG_LAYER_MAIN_0, 0);
    BattleCastleApp_DrawWindow(app->bgConfig, &app->windows[SELF_APP_WINDOW_RENTAL_MENU]);
    Window_FillTilemap(&app->windows[SELF_APP_WINDOW_RENTAL_MENU], 15);

    app->strList = StringList_New(NELEMS(sRentalMenuEntries), HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < NELEMS(sRentalMenuEntries); i++) {
        StringList_AddFromMessageBank(app->strList, app->msgLoader, sRentalMenuEntries[i][1], sRentalMenuEntries[i][2]);
    }

    app->listTemplate = sDefaultListTemplate;
    app->listTemplate.choices = app->strList;
    app->listTemplate.window = &app->windows[SELF_APP_WINDOW_RENTAL_MENU];
    app->listTemplate.parent = app;
    app->listTemplate.cursorCallback = UpdateRentalMenuEntryDescription;
    app->listTemplate.printCallback = SetRentalMenuEntryColor;
    app->listTemplate.count = NELEMS(sRentalMenuEntries);
    app->listTemplate.maxDisplay = NELEMS(sRentalMenuEntries);
    app->listTemplate.textColorBg = 15;
    app->listMenu = ListMenu_New(&app->listTemplate, 0, 0, HEAP_ID_BATTLE_CASTLE_APP);

    MarkListMenuAsOpen(app, &app->windows[SELF_APP_WINDOW_RENTAL_MENU]);

    Window_ScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_RENTAL_MENU]);
    Bg_ToggleLayer(BG_LAYER_MAIN_0, 1);
}

static void UpdateRentalMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit)
{
    BattleCastleSelfApp *app = (BattleCastleSelfApp *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (!onInit) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u8 rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_RENTALS);

    u16 entryID;
    switch (item) {
    case MENU_ENTRY_RENT_BERRIES:
        entryID = BattleCastleSelfApp_Text_MayRentBerry;
        break;
    case MENU_ENTRY_RENT_ITEMS:
        entryID = BattleCastleSelfApp_Text_MayRentItem;
        break;
    case MENU_ENTRY_RANK_UP_ITEMS:
        if (rank == 3) {
            entryID = BattleCastleSelfApp_Text_RankCannotBeRaised2;
        } else if (rank == 1) {
            entryID = BattleCastleSelfApp_Text_RankUpToRentItem;
        } else {
            entryID = BattleCastleSelfApp_Text_RankUpToExpandChoices;
        }
        break;
    default:
        entryID = BattleCastleSelfApp_Text_ReturnToPrevious2;
        break;
    }

    PrintLeftAlignedMessageWithBg(app, &app->windows[SELF_APP_WINDOW_MSG_BOX], entryID, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void SetRentalMenuEntryColor(ListMenu *menu, u32 item, u8 onInit)
{
    BattleCastleSelfApp *app = (BattleCastleSelfApp *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    u8 rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_RENTALS);

    u8 fgColor;
    switch (item) {
    case MENU_ENTRY_RENT_ITEMS:
        if (rank >= sRentalMenuEntries[item - 6][0]) {
            fgColor = 1;
        } else {
            fgColor = 2;
        }
        break;
    case MENU_ENTRY_RANK_UP_ITEMS:
        if (rank == 3) {
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

static const u32 sMonMenuEntries[][2] = {
    { BattleCastleSelfApp_Text_Heal, MENU_ENTRY_HEAL },
    { BattleCastleSelfApp_Text_Rental, MENU_ENTRY_RENTAL },
    { BattleCastleSelfApp_Text_Summary, MENU_ENTRY_SUMMARY },
    { BattleCastleSelfApp_Text_Moves, MENU_ENTRY_MOVES },
    { BattleCastleSelfApp_Text_Cancel, MENU_CANCELED }
};

static const u16 sMonMenuDescriptions[] = {
    BattleCastleSelfApp_Text_RestoreHPOrPP,
    BattleCastleSelfApp_Text_RentBerryOrItem,
    BattleCastleSelfApp_Text_CheckStatsAndMore,
    BattleCastleSelfApp_Text_CheckMovesAndPP,
    BattleCastleSelfApp_Text_GoBackToMonSelection
};

static void InitMonOptionsMenu(BattleCastleSelfApp *app)
{
    BattleCastleApp_DrawWindow(app->bgConfig, &app->windows[SELF_APP_WINDOW_MON_OPTIONS_MENU]);
    Window_FillTilemap(&app->windows[SELF_APP_WINDOW_MON_OPTIONS_MENU], 15);

    app->strList = StringList_New(5, HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < 5; i++) {
        StringList_AddFromMessageBank(app->strList, app->msgLoader, sMonMenuEntries[i][0], sMonMenuEntries[i][1]);
    }

    app->listTemplate = sDefaultListTemplate;
    app->listTemplate.choices = app->strList;
    app->listTemplate.window = &app->windows[SELF_APP_WINDOW_MON_OPTIONS_MENU];
    app->listTemplate.parent = app;
    app->listTemplate.cursorCallback = UpdateMonMenuEntryDescription;
    app->listTemplate.printCallback = NULL;
    app->listTemplate.count = 5;
    app->listTemplate.maxDisplay = 5;
    app->listTemplate.textColorBg = 15;
    app->listTemplate.parent = app;
    app->listMenu = ListMenu_New(&app->listTemplate, app->monMenuListPos, app->monMenuCursorPos, HEAP_ID_BATTLE_CASTLE_APP);

    MarkListMenuAsOpen(app, &app->windows[SELF_APP_WINDOW_MON_OPTIONS_MENU]);
    Window_ScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_MON_OPTIONS_MENU]);
}

static void UpdateMonMenuEntryDescription(ListMenu *menu, u32 item, u8 onInit)
{
    BattleCastleSelfApp *app = (BattleCastleSelfApp *)ListMenu_GetAttribute(menu, LIST_MENU_PARENT);

    if (!onInit) {
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    u16 pos;
    ListMenu_CalcTrueCursorPos(menu, &pos);
    PrintLeftAlignedMessageWithBg(app, &app->windows[SELF_APP_WINDOW_MON_OPTIONS_MSG_BOX], sMonMenuDescriptions[pos], 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
}

static void SetStringTemplateNumber(BattleCastleSelfApp *app, u32 idx, s32 num, u32 maxDigits, enum PaddingMode paddingMode)
{
    StringTemplate_SetNumber(app->strTemplate, idx, num, maxDigits, paddingMode, CHARSET_MODE_EN);
}

static void SetStringTemplateSpecies(BattleCastleSelfApp *app, u32 idx, BoxPokemon *boxMon)
{
    StringTemplate_SetSpeciesName(app->strTemplate, idx, boxMon);
}

static void SetStringTemplatePlayerName(BattleCastleSelfApp *app, u32 idx)
{
    StringTemplate_SetPlayerName(app->strTemplate, idx, SaveData_GetTrainerInfo(app->saveData));
}

static void PrintPlayerName(BattleCastleSelfApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font)
{
    const TrainerInfo *player = SaveData_GetTrainerInfo(app->saveData);
    String *playerName = String_Init(TRAINER_NAME_LEN + 1, HEAP_ID_BATTLE_CASTLE_APP);

    String_CopyChars(playerName, TrainerInfo_Name(player));

    TextColor color;
    if (TrainerInfo_Gender(player) == GENDER_MALE) {
        color = TEXT_COLOR(7, 8, 0);
    } else {
        color = TEXT_COLOR(3, 4, 0);
    }

    Text_AddPrinterWithParamsAndColor(window, font, playerName, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, color, NULL);
    Window_ScheduleCopyToVRAM(window);
    String_Free(playerName);
}

static void PrintPartnersName(BattleCastleSelfApp *app, Window *window, u32 xOffset, u32 yOffset, u8 unused)
{
    TrainerInfo *partnerInfo = CommInfo_TrainerInfo(CommSys_CurNetId() ^ 1);

    TextColor textColor;
    if (TrainerInfo_Gender(partnerInfo) == GENDER_MALE) {
        textColor = TEXT_COLOR(7, 8, 0);
    } else {
        textColor = TEXT_COLOR(3, 4, 0);
    }

    StringTemplate_SetPlayerName(app->strTemplate, 0, partnerInfo);
    PrintLeftAlignedMessage(app, window, BattleCastleSelfApp_Text_PartnerName, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, GET_TEXT_FG_COLOR(textColor), GET_TEXT_SHADOW_COLOR(textColor), GET_TEXT_BG_COLOR(textColor), FONT_SYSTEM);
}

static void PrintGenderSymbol(BattleCastleSelfApp *app, Window *window, u32 xOffset, u32 yOffset, u8 font, u8 gender)
{
    u32 entryID;
    u8 fgColor, shadowColor, bgColor;

    if (gender == GENDER_MALE) {
        entryID = BattleCastleSelfApp_Text_MaleSymbol;
        fgColor = 7;
        shadowColor = 8;
        bgColor = 0;
    } else if (gender == GENDER_FEMALE) {
        entryID = BattleCastleSelfApp_Text_FemaleSymbol;
        fgColor = 3;
        shadowColor = 4;
        bgColor = 0;
    } else {
        return;
    }

    PrintLeftAlignedMessage(app, window, entryID, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, fgColor, shadowColor, bgColor, font);
}

static void ChangeState(BattleCastleSelfApp *app, int *state, enum BattleCastleAppState nextState)
{
    app->subState = 0;
    *state = nextState;
}

static void UpdateSelectedMon(BattleCastleSelfApp *app, int unused)
{
    BOOL changeMade = FALSE;
    u8 currentSlot = BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot);

    if (JOY_NEW(PAD_KEY_LEFT)) {
        if (app->selectedMonSlot == app->exitSlot) {
            return;
        }

        if (currentSlot == 0) {
            app->selectedMonSlot += (app->numSlots - 1);
        } else {
            app->selectedMonSlot--;
        }

        changeMade = TRUE;
    }

    if (JOY_NEW(PAD_KEY_RIGHT)) {
        if (app->selectedMonSlot == app->exitSlot) {
            return;
        }

        if (currentSlot == (app->numSlots - 1)) {
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

static void UpdateCursorPosition(BattleCastleSelfApp *app)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        SendCommMessage(app, COMM_CMD_UPDATE_CURSOR, app->selectedMonSlot);
    }

    UpdateCursorSprite(app, app->selectedMonSlot, FALSE);
}

static void UpdateCursorSprite(BattleCastleSelfApp *app, u8 slot, u8 isPartners)
{
    BattleCastleAppSprite *sprite;
    u32 x, y, monSelectAnimID, exitAnimID;

    if (isPartners == 0) {
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

static void GetCursorSpritePos(BattleCastleSelfApp *app, u32 *x, u32 *y, u8 slot)
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

static u16 GetItemPriceFromListPos(BattleCastleSelfApp *app, u16 listPos, u8 menuType)
{
    BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_RENTALS);

    if (menuType == MENU_ENTRY_RENT_BERRIES) {
        return sBerryPrices[listPos];
    }

    return sItemPrices[listPos];
}

static u16 GetItemPrice(u16 itemID)
{
    int i;

    for (i = 0; i < NELEMS(sItemsForRent); i++) {
        if (sItemsForRent[i] == itemID) {
            return sItemPrices[i];
        }
    }

    for (i = 0; i < NELEMS(sBerriesForRent); i++) {
        if (sBerriesForRent[i] == itemID) {
            return sBerryPrices[i];
        }
    }

    GF_ASSERT(0);
    return 0;
}

static u16 GetItemIDFromListPos(BattleCastleSelfApp *app, u16 idx, u8 selectedMenu)
{
    BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_RENTALS);

    if (selectedMenu == MENU_ENTRY_RENT_BERRIES) {
        return sBerriesForRent[idx];
    }

    return sItemsForRent[idx];
}

static void GetOffsetsForPlayerInfo(BattleCastleSelfApp *app, u16 *playerX, u16 *playerY, u16 *partnerX, u16 *partnerY)
{
    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        *playerX = 28;
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

static BOOL UpdateAfterPurchase(BattleCastleSelfApp *app, u8 selectedSlot, u8 menuOption)
{
    u32 hp, maxHp, monAnimID, barAnimID;

    u8 slot = BattleCastleApp_GetSelectedSlot(app->numSlots, selectedSlot);
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, slot);
    hp = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
    maxHp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
    monAnimID = GetPokeIconAnimID(app, HealthBar_Color(hp, maxHp, 48));
    barAnimID = GetHpBarAnimID(app, HealthBar_Color(hp, maxHp, 48));

    switch (menuOption) {
    case MENU_ENTRY_RANK_UP_HEALING:
    case MENU_ENTRY_RANK_UP_ITEMS:
        app->monSparklesVisible = FALSE;
        return TRUE;
    case MENU_ENTRY_RESTORE_HP:
    case MENU_ENTRY_RESTORE_PP:
    case MENU_ENTRY_RESTORE_ALL:
        if (app->monSparklesVisible == FALSE) {
            app->monSparklesVisible = TRUE;

            u16 xOffset;
            if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == 0) {
                xOffset = 64;
            } else {
                xOffset = 32;
            }

            app->monSparklesSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_HEAL_SPARKLES, xOffset + (64 * slot), 62, 0, NULL);
        }

        if (app->monSparklesSprite != NULL) {
            if (!BattleCastleAppSprite_IsAnimated(app->monSparklesSprite)) {
                BattleCastleAppSprite_Free(app->monSparklesSprite);
                app->monSparklesSprite = NULL;
            }
        }

        if (app->monSparklesSprite == NULL) {
            UpdateHP(app, &app->windows[SELF_APP_WINDOW_HP_BARS], slot, Pokemon_GetValue(mon, MON_DATA_HP, NULL));
            BattleCastleAppSprite_SetAnim(app->barSprites[slot], barAnimID);
            BattleCastleAppSprite_UpdateMonSpriteAnim(app->monSprites[slot], monAnimID);
            app->monSparklesVisible = FALSE;
            return TRUE;
        }
        break;
    case MENU_ENTRY_RENT_BERRIES:
    case MENU_ENTRY_RENT_ITEMS:
        if (app->monSparklesVisible == FALSE) {
            app->monSparklesVisible = TRUE;

            u16 xOffset;
            if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == 0) {
                xOffset = 64;
            } else {
                xOffset = 32;
            }

            app->monSparklesSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, ANIM_ID_RENTAL_SPARKLES, xOffset + (64 * slot), 62, 0, NULL);
        }

        if (!BattleCastleAppSprite_IsAnimated(app->monSparklesSprite)) {
            BattleCastleAppSprite_Free(app->monSparklesSprite);
            app->monSparklesSprite = NULL;
            app->monSparklesVisible = FALSE;
            return TRUE;
        }
        break;
    case MENU_ENTRY_SUMMARY:
        app->monSparklesVisible = FALSE;
        return TRUE;
        break;
    case MENU_ENTRY_MOVES:
        app->monSparklesVisible = FALSE;
        return TRUE;
        break;
    }

    return FALSE;
}

static void UpdateMonSpriteForItemSelectScreen(BattleCastleSelfApp *app, u8 selectedSlot, u8 openingItemSelect)
{
    u8 slot = BattleCastleApp_GetSelectedSlot(app->numSlots, selectedSlot);

    u16 xOffset;
    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == 0) {
        xOffset = 64;
    } else {
        xOffset = 32;
    }

    u8 priority;
    s16 monX, monY;
    if (openingItemSelect == TRUE) {
        monX = 40;
        monY = 80;
        priority = 0;
    } else {
        monX = 64 * slot + xOffset;
        monY = 58;
        priority = 2;
    }

    s16 itemX = monX + 8;
    s16 itemY = monY + 4;

    BattleCastleAppSprite_UpdateCoords(app->itemIconSprites[slot], itemX, itemY);
    BattleCastleAppSprite_SetPosition(app->itemIconSprites[slot], itemX, itemY);
    BattleCastleAppSprite_SetPriority(app->itemIconSprites[slot], priority);
    BattleCastleAppSprite_UpdateCoords(app->monSprites[slot], monX, monY);
    BattleCastleAppSprite_SetPosition(app->monSprites[slot], monX, monY);
    BattleCastleAppSprite_SetPriority(app->monSprites[slot], priority);
}

static u32 GetPokeIconAnimID(BattleCastleSelfApp *app, u8 barColor)
{
    u32 animID;

    switch (barColor) {
    case BARCOLOR_MAX:
        animID = POKEICON_ANIM_HP_MAX;
        break;
    case BARCOLOR_GREEN:
        animID = POKEICON_ANIM_HP_GREEN;
        break;
    case BARCOLOR_YELLOW:
        animID = POKEICON_ANIM_HP_YELLOW;
        break;
    case BARCOLOR_RED:
        animID = POKEICON_ANIM_HP_RED;
        break;
    }

    return animID;
}

static u32 GetHpBarAnimID(BattleCastleSelfApp *app, u8 barColor)
{
    u32 animID;

    switch (barColor) {
    case BARCOLOR_MAX:
        animID = ANIM_ID_GREEN_BAR;
        break;
    case BARCOLOR_GREEN:
        animID = ANIM_ID_GREEN_BAR;
        break;
    case BARCOLOR_YELLOW:
        animID = ANIM_ID_YELLOW_BAR;
        break;
    case BARCOLOR_RED:
        animID = ANIM_ID_RED_BAR;
        break;
    }

    return animID;
}

static void ChangeSelectedMonOnSummaryDisplay(BattleCastleSelfApp *app, s8 step)
{
    s8 slot = app->selectedMonSlot;
    slot += step;

    if (slot < 0) {
        slot = app->numSlots - 1;
    } else if (slot >= app->numSlots) {
        slot = 0;
    }

    app->selectedMonSlot = slot;
    UpdateCursorPosition(app);

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot));
    PrintPokemonSummary(app, &app->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], mon);
}

static void ChangeSelectedMonOnMoveDisplay(BattleCastleSelfApp *app, s8 step)
{
    s8 slot = app->selectedMonSlot;
    slot += step;

    if (slot < 0) {
        slot = app->numSlots - 1;
    } else if (slot >= app->numSlots) {
        slot = 0;
    }

    app->selectedMonSlot = slot;
    UpdateCursorPosition(app);

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot));
    PrintAllMoves(app, &app->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], mon);
}

static void CloseAllSubDisplays(BattleCastleSelfApp *app)
{
    CloseYesNoMenu(app);
    FreeListMenu(app);
    FreeItemSelect(app);
    CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
    CloseSummaryScreen(app);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    BattleCastleAppSprite_SetDrawFlag(app->bigSparkles, FALSE);
}

static BOOL IsMonMissingPP(Pokemon *mon)
{
    u8 isMissingPP = FALSE;

    if (Pokemon_GetValue(mon, MON_DATA_MOVE1_PP, NULL) != Pokemon_GetValue(mon, MON_DATA_MOVE1_MAX_PP, NULL)) {
        isMissingPP = TRUE;
    }

    if (Pokemon_GetValue(mon, MON_DATA_MOVE2_PP, NULL) != Pokemon_GetValue(mon, MON_DATA_MOVE2_MAX_PP, NULL)) {
        isMissingPP = TRUE;
    }

    if (Pokemon_GetValue(mon, MON_DATA_MOVE3_PP, NULL) != Pokemon_GetValue(mon, MON_DATA_MOVE3_MAX_PP, NULL)) {
        isMissingPP = TRUE;
    }

    if (Pokemon_GetValue(mon, MON_DATA_MOVE4_PP, NULL) != Pokemon_GetValue(mon, MON_DATA_MOVE4_MAX_PP, NULL)) {
        isMissingPP = TRUE;
    }

    return isMissingPP;
}

static void CloseMessageBox(Window *window)
{
    Window_EraseMessageBox(window, TRUE);
    Window_ClearAndScheduleCopyToVRAM(window);
}

BOOL SendCommMessage(BattleCastleSelfApp *app, u16 cmd, u16 slot)
{
    int commCmd;

    switch (cmd) {
    case COMM_CMD_PLAYER_INFO:
        commCmd = 49;
        CreatePlayerInfoPayload(app, cmd);
        break;
    case COMM_CMD_PURCHASE_INFO:
        commCmd = 50;
        CreatePurchaseInfoPayload(app, cmd, slot);
        break;
    case COMM_CMD_UPDATE_CURSOR:
        commCmd = 51;
        CreateUpdateCursorPayload(app, cmd);
        break;
    case COMM_CMD_EXIT_APP:
        commCmd = 52;
        CreateExitAppPayload(app);
        break;
    }

    return CommSys_SendData(commCmd, app->commPayload, 40) == TRUE;
}

void CreatePlayerInfoPayload(BattleCastleSelfApp *app, u16 cmd)
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

void BattleCastleSelfApp_HandlePlayerInfoCmd(int netID, int unused, void *data, void *context)
{
    BattleCastleSelfApp *app = context;
    const u16 *payload = data;

    int i = 0;
    app->msgsReceived++;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    i += 2;

    for (int j = 0; j < BATTLE_CASTLE_NUM_RANK_TYPES; j++) {
        app->partnersRanks[j] = (u8)payload[i + j];
    }

    i += 3;
}

void CreatePurchaseInfoPayload(BattleCastleSelfApp *app, u16 cmd, u16 slot)
{
    app->commPayload[0] = cmd;
    app->commPayload[1] = slot;

    if (CommSys_CurNetId() == 0) {
        if (app->slotID == 0xff) {
            app->slotID = slot;
        }
    }

    app->commPayload[2] = app->slotID;
    app->commPayload[4] = app->selectedRentalItem;
    app->commPayload[5] = app->selectedMenuEntry;
}

void BattleCastleSelfApp_HandlePurchaseInfoCmd(int netID, int unused, void *data, void *context)
{
    BattleCastleSelfApp *app = context;
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
            app->selectedRentalItem = payload[4];
            app->selectedMenuEntry = payload[5];
        }
    } else {
        app->slotID = payload[2];
        app->selectedRentalItem = payload[4];
        app->selectedMenuEntry = payload[5];
    }
}

void CreateUpdateCursorPayload(BattleCastleSelfApp *app, u16 cmd)
{
    app->commPayload[0] = cmd;
    app->commPayload[1] = app->selectedMonSlot;
}

void BattleCastleSelfApp_HandleUpdateCursorCmd(int netID, int unused, void *data, void *context)
{
    BattleCastleSelfApp *app = context;
    const u16 *payload = data;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->partnersSelectedSlot = payload[1];
    UpdateCursorSprite(app, app->partnersSelectedSlot, TRUE);
}

void CreateExitAppPayload(BattleCastleSelfApp *app)
{
    app->commPayload[0] = TRUE;
}

void BattleCastleSelfApp_HandleExitAppCmd(int netID, int unused, void *data, void *context)
{
    BattleCastleSelfApp *app = context;
    const u16 *payload = data;

    if (CommSys_CurNetId() == netID) {
        return;
    }

    app->partnerIsExiting = payload[0];
}

static void ApplyItemEffect(Pokemon *mon, u16 itemID)
{
    Pokemon_ApplyItemEffects(mon, itemID, 0, 0, HEAP_ID_BATTLE_CASTLE_APP);
}

static void PrintPlayersAndPartnersNames(BattleCastleSelfApp *app, Window *window)
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
            PrintPartnersName(app, window, x, y, 0);
        } else {
            x = playerXOffset + 0;
            y = playerYOffset + 0;
            PrintPartnersName(app, window, x, y, 0);

            x = partnerXOffset + 0;
            y = partnerYOffset + 0;

            PrintPlayerName(app, window, x, y, FONT_SYSTEM);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void HealPokemon(BattleCastleSelfApp *app, u8 slot, u8 menuOption)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));
    u32 rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, BATTLE_CASTLE_RANK_HEALING);

    SetStringTemplateSpecies(app, 0, Pokemon_GetBoxPokemon(mon));
    BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));

    app->printerID = PrintMessageAndCopyToVRAM(app, sHealingMessages[menuOption - 1], FONT_MESSAGE);

    switch (menuOption) {
    case MENU_ENTRY_RESTORE_HP:
        ApplyItemEffect(mon, ITEM_MAX_POTION);
        break;
    case MENU_ENTRY_RESTORE_PP:
        ApplyItemEffect(mon, ITEM_MAX_ELIXIR);
        break;
    case MENU_ENTRY_RESTORE_ALL:
        ApplyItemEffect(mon, ITEM_MAX_POTION);
        ApplyItemEffect(mon, ITEM_MAX_ELIXIR);
        break;

    default:
        GF_ASSERT(0);
    }

    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
}

static void RentItem(BattleCastleSelfApp *app, u8 slot, u16 itemID)
{
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));

    Pokemon_SetValue(mon, MON_DATA_HELD_ITEM, &itemID);

    BattleCastleAppSprite_SetDrawFlag(app->itemIconSprites[BattleCastleApp_GetSelectedSlot(app->numSlots, slot)], TRUE);
    SetStringTemplateSpecies(app, 0, Pokemon_GetBoxPokemon(mon));

    StringTemplate_SetItemName(app->strTemplate, 1, itemID);
    app->printerID = PrintMessageAndCopyToVRAM(app, BattleCastleSelfApp_Text_ItemGivenToMon, FONT_MESSAGE);
    Sound_PlayEffect(SEQ_SE_DP_UG_020);
}

static void CloseYesNoMenu(BattleCastleSelfApp *app)
{
    if (app->yesNoMenuIsOpen == TRUE) {
        app->yesNoMenuIsOpen = FALSE;
        Menu_Free(app->yesNoMenu, NULL);
        Window_EraseStandardFrame(app->yesNoMenuTemplate.window, TRUE);
        Window_ClearAndScheduleCopyToVRAM(app->yesNoMenuTemplate.window);
    }
}

static void MarkListMenuAsOpen(BattleCastleSelfApp *app, Window *window)
{
    app->listMenuIsOpen = TRUE;
}

static void CloseItemSelectScreen(BattleCastleSelfApp *app)
{
    BattleCastleAppSprite_SetDrawFlag(app->itemSprite, FALSE);
    BattleCastleAppSprite_SetDrawFlag(app->upArrowSprite, FALSE);
    BattleCastleAppSprite_SetDrawFlag(app->downArrowSprite, FALSE);
    BattleCastleAppSprite_SetDrawFlag(app->itemSelectCursorSprite, FALSE);

    Window_EraseStandardFrame(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO], 1);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO]);

    UpdateMonSpriteForItemSelectScreen(app, app->selectedMonSlot, FALSE);

    Window_FillTilemap(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_HP], 0);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_HP]);
    Window_FillTilemap(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_INFO], 0);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_INFO]);
}

static void RefreshItemSelectMenu(BattleCastleSelfApp *app)
{
    u16 pos;

    CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
    BattleCastleAppSprite_SetDrawFlag(app->itemSprite, TRUE);

    ListMenu_Draw(app->listMenu);
    ListMenu_CalcTrueCursorPos(app->listMenu, &pos);

    PrintItemName(app, &app->windows[SELF_APP_WINDOW_SELECTED_ITEM_NAME], GetItemIDFromListPos(app, pos, app->selectedMenuEntry));
}

static void FreeListMenu(BattleCastleSelfApp *app)
{
    if (app->listMenuIsOpen == TRUE) {
        app->listMenuIsOpen = FALSE;
        Window *window = (Window *)ListMenu_GetAttribute(app->listMenu, LIST_MENU_WINDOW);

        Window_EraseStandardFrame(window, TRUE);
        Window_FillTilemap(window, 0);
        Window_ClearAndScheduleCopyToVRAM(window);

        StringList_Free(app->strList);
        ListMenu_Free(app->listMenu, NULL, NULL);
    }
}

static void PrintPlayersAndPartnersCastlePoints(BattleCastleSelfApp *app, Window *window)
{
    u16 playerXOffset, playerYOffset, partnerXOffset, partnerYOffset, x, y;
    GetOffsetsForPlayerInfo(app, &playerXOffset, &playerYOffset, &partnerXOffset, &partnerYOffset);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        x = playerXOffset + 104;
        y = playerYOffset;
        Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
        SetStringTemplateNumber(app, 0, sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType))), 4, PADDING_MODE_SPACES);
        app->printerID = PrintMessage(app, window, BattleCastleSelfApp_Text_CastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);
    } else {
        if (CommSys_CurNetId() == 0) {
            x = playerXOffset + 104;
            y = playerYOffset;
            Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
            SetStringTemplateNumber(app, 0, sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType))), 4, PADDING_MODE_SPACES);
            app->printerID = PrintMessage(app, window, BattleCastleSelfApp_Text_CastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);

            x = partnerXOffset + 104;
            y = partnerYOffset;
            Window_FillRectWithColor(window, 0, x - 48, partnerYOffset, 48, 16);
            SetStringTemplateNumber(app, 0, app->partnersCP, 4, PADDING_MODE_SPACES);
            app->printerID = PrintMessage(app, window, BattleCastleSelfApp_Text_PartnersCastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);
        } else {
            x = playerXOffset + 104;
            y = playerYOffset;
            Window_FillRectWithColor(window, 0, x - 48, playerYOffset, 48, 16);
            SetStringTemplateNumber(app, 0, app->partnersCP, 4, PADDING_MODE_SPACES);
            app->printerID = PrintMessage(app, window, BattleCastleSelfApp_Text_PartnersCastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);

            x = partnerXOffset + 104;
            y = partnerYOffset;
            Window_FillRectWithColor(window, 0, x - 48, partnerYOffset, 48, 16);
            SetStringTemplateNumber(app, 0, sub_02030698(app->frontier, sub_0205E630(app->challengeType), sub_0205E6A8(sub_0205E630(app->challengeType))), 4, PADDING_MODE_SPACES);
            app->printerID = PrintMessage(app, window, BattleCastleSelfApp_Text_CastlePoints, x, y, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void SpendCastlePointsInSync(BattleCastleSelfApp *app, u8 slotID, u8 menuOption)
{
    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

    u8 slot, exitSlot;
    exitSlot = app->exitSlot;
    slot = BattleCastleApp_GetSlotFromSlotID(exitSlot, slotID);

    u16 cost;
    switch (menuOption) {
    case MENU_ENTRY_RESTORE_HP:
    case MENU_ENTRY_RESTORE_PP:
    case MENU_ENTRY_RESTORE_ALL:
        cost = sHealingCosts[menuOption - 1];
        break;
    case MENU_ENTRY_RENT_BERRIES:
    case MENU_ENTRY_RENT_ITEMS:
        cost = GetItemPrice(app->selectedRentalItem);
        break;
    case MENU_ENTRY_SUMMARY:
    case MENU_ENTRY_MOVES:
        cost = 0;
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

    PrintPlayersAndPartnersCastlePoints(app, &app->windows[SELF_APP_WINDOW_HEADER]);
    CloseYesNoMenu(app);
    CloseSummaryScreen(app);
    FreeItemSelect(app);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
    CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);

    switch (menuOption) {
    case MENU_ENTRY_RESTORE_HP:
    case MENU_ENTRY_RESTORE_PP:
    case MENU_ENTRY_RESTORE_ALL:
        BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
        HealPokemon(app, slot, menuOption);
        break;
    case MENU_ENTRY_RENT_BERRIES:
    case MENU_ENTRY_RENT_ITEMS:
        BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
        RentItem(app, slot, app->selectedRentalItem);
        break;
    case MENU_ENTRY_SUMMARY:
        ShowMonSummary(app, slot);
        break;
    case MENU_ENTRY_MOVES:
        ShowMovesList(app, slot);
        break;
    }
}

static void ShowMonSummary(BattleCastleSelfApp *app, u8 slot)
{
    LoadSummaryBackground(app, BG_LAYER_MAIN_2);

    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MENU]);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO]);

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));
    PrintPokemonSummary(app, &app->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], mon);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
}

static void ShowMovesList(BattleCastleSelfApp *app, u8 slot)
{
    LoadMovesListBackground(app, BG_LAYER_MAIN_2);

    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MENU]);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO]);

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, BattleCastleApp_GetSelectedSlot(app->numSlots, slot));

    PrintAllMoves(app, &app->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], mon);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
}

static void CloseSummaryScreen(BattleCastleSelfApp *app)
{
    Window_FillTilemap(&app->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], 0);
    Window_ClearAndCopyToVRAM(&app->windows[SELF_APP_WINDOW_SUMMARY_SCREEN]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
}

static void UpdatePokemonGraphics(BattleCastleSelfApp *app)
{
    u8 numMons = BattleCastle_GetPartySize(app->challengeType, TRUE);

    for (int i = 0; i < numMons; i++) {
        Pokemon *mon = Party_GetPokemonBySlotIndex(app->party, i);
        u8 animID = BattleCastle_GetPokeIconAnimID(Pokemon_GetValue(mon, MON_DATA_HP, NULL), Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL));

        if (app->monSprites[i] != NULL) {
            BattleCastleAppSprite_UpdateMonSpriteAnim(app->monSprites[i], animID);

            if ((i != BattleCastleApp_GetSelectedSlot(app->numSlots, app->selectedMonSlot)) || (app->selectedMonSlot >= app->exitSlot)) {
                BattleCastleAppSprite_UpdateMonPosition(app->monSprites[i], FALSE);
            } else {
                BattleCastleAppSprite_UpdateMonPosition(app->monSprites[i], TRUE);
            }
        }
    }
}

static void IncreaseRank(BattleCastleSelfApp *app, u8 slot, u8 menuOption)
{
    u8 unused = BattleCastle_GetPartySize(app->challengeType, FALSE);

    u8 rankType;
    if (menuOption == MENU_ENTRY_RANK_UP_HEALING) {
        rankType = BATTLE_CASTLE_RANK_HEALING;
    } else {
        rankType = BATTLE_CASTLE_RANK_RENTALS;
    }

    u8 exitSlot = app->exitSlot;
    u8 unused2 = BattleCastleApp_GetSlotFromSlotID(exitSlot, slot);

    u32 rank;
    if (CommSys_CurNetId() == 0) {
        if (slot < exitSlot) {
            SetStringTemplatePlayerName(app, 5);

            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, rankType);
            ov104_0223BC2C(app->frontier, app->challengeType, sRankUpCosts[rankType][rank]);

            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, rankType);
            sub_020306E4(SaveData_GetBattleFrontier(app->saveData), sub_0205E5B4(app->challengeType, rankType), sub_0205E6A8(sub_0205E5B4(app->challengeType, rankType)), rank + 1);

            if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
                if (menuOption == MENU_ENTRY_RANK_UP_HEALING) {
                    app->syncIncreaseRank = BATTLE_CASTLE_RANK_HEALING + 1;
                } else {
                    app->syncIncreaseRank = BATTLE_CASTLE_RANK_RENTALS + 1;
                }
            }
        } else {
            BattleCastleApp_SetPartnerName(app->strTemplate, 5);
            rank = app->partnersRanks[rankType];
            app->partnersCP -= sRankUpCosts[rankType][rank];
            app->partnersRanks[rankType]++;
        }
    } else {
        if (slot < exitSlot) {
            BattleCastleApp_SetPartnerName(app->strTemplate, 5);
            rank = app->partnersRanks[rankType];
            app->partnersCP -= sRankUpCosts[rankType][rank];
            app->partnersRanks[rankType]++;
        } else {
            SetStringTemplatePlayerName(app, 5);
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, rankType);

            ov104_0223BC2C(app->frontier, app->challengeType, sRankUpCosts[rankType][rank]);
            rank = BattleCastleApp_GetRank(app->saveData, app->challengeType, rankType);

            sub_020306E4(SaveData_GetBattleFrontier(app->saveData), sub_0205E5B4(app->challengeType, rankType), sub_0205E6A8(sub_0205E5B4(app->challengeType, rankType)), rank + 1);

            if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
                if (menuOption == MENU_ENTRY_RANK_UP_HEALING) {
                    app->syncIncreaseRank = BATTLE_CASTLE_RANK_HEALING + 1;
                } else {
                    app->syncIncreaseRank = BATTLE_CASTLE_RANK_RENTALS + 1;
                }
            }
        }
    }

    CloseYesNoMenu(app);
    PrintPlayersAndPartnersCastlePoints(app, &app->windows[SELF_APP_WINDOW_HEADER]);
    BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));

    app->printerID = PrintMessageAndCopyToVRAM(app, sRankUpMessages[rankType][rank], FONT_MESSAGE);
}
