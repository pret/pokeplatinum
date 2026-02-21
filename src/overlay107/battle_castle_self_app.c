#include "overlay107/battle_castle_self_app.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_020302DC_decl.h"
#include "struct_decls/struct_0203041C_decl.h"
#include "struct_defs/battle_frontier.h"

#include "overlay104/ov104_0222DCE0.h"
#include "overlay104/ov104_0223B6F4.h"
#include "overlay104/struct_ov104_0223597C.h"
#include "overlay107/battle_castle_app_sprite.h"
#include "overlay107/battle_castle_app_sprite_manager.h"
#include "overlay107/battle_castle_app_windows.h"
#include "overlay107/ov107_02249C98.h"

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
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 listMenuIsOpen : 1;
    u8 unk_0E_1 : 1;
    u8 unk_0E_2 : 1;
    u8 itemSelectIsOpen : 1;
    u8 yesNoMenuIsOpen : 1;
    u8 unk_0E_5 : 2;
    u8 unk_0E_7 : 1;
    u8 unk_0F;
    u16 unk_10;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 unk_15;
    u16 unk_16;
    u16 monMenuListPos;
    u16 monMenuCursorPos;
    MessageLoader *itemMsgLoader;
    MessageLoader *msgLoader;
    StringTemplate *strTemplate;
    String *displayStr;
    String *fmtStr;
    String *yesNoStrs[3];
    u16 unused[8];
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
    BattleCastleAppSprite *monSprites[4];
    BattleCastleAppSprite *itemIconSprites[4];
    BattleCastleAppSprite *unk_414;
    BattleCastleAppSprite *cursorSprite;
    BattleCastleAppSprite *unk_41C;
    BattleCastleAppSprite *barSprites[4];
    BattleCastleAppSprite *unk_430;
    BattleCastleAppSprite *unk_434;
    u16 *unk_438;
    Party *unk_43C;
    NARC *narc;
    u16 unk_444[40];
    u8 unk_494;
    u8 unk_495;
    u8 unk_496;
    u8 unk_497[3];
    u16 unk_49A;
    u32 unk_49C;
} BattleCastleSelfApp;

static BOOL State_FadeInApp(BattleCastleSelfApp *app);
static void ov107_02241E70(BattleCastleSelfApp *param0);
static BOOL ov107_02241EC8(BattleCastleSelfApp *param0);
static BOOL ov107_02242C64(BattleCastleSelfApp *param0);
static BOOL ov107_02242D60(BattleCastleSelfApp *param0);
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
static void ov107_02243F4C(BattleCastleSelfApp *ctx, Window *window, u8 param2, u32 param3);
static void PrintMonSelectionStrings(BattleCastleSelfApp *app);
static void CloseMonSelectionMessageBox(BattleCastleSelfApp *app);
static void OpenMonOptionsMenu(BattleCastleSelfApp *app);
static void CloseMonOptions(BattleCastleSelfApp *app);
static void OpenHealMenu(BattleCastleSelfApp *app);
static void FreeListMenu2(BattleCastleSelfApp *app);
static void OpenRentalMenu(BattleCastleSelfApp *app);
static void FreeListMenu3(BattleCastleSelfApp *app);
static void OpenItemSelectScreen(BattleCastleSelfApp *app, u8 param1);
static void FreeItemSelect(BattleCastleSelfApp *app);
static void InitYesNoMenu(BattleCastleSelfApp *app, Window *window, u8 numOptions);
static void AddStringToYesNoMenu(BattleCastleSelfApp *app, u8 strIndex, u8 listIndex, int entryID);
static void OpenYesNoMenu(BattleCastleSelfApp *app);
static void DrawItemSelectMenuAndMonInfo(BattleCastleSelfApp *app, u8 menuType);
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
static void ChangeState(BattleCastleSelfApp *app, int *state, int nextState);
static void ov107_02244BD8(BattleCastleSelfApp *param0, int param1);
static void ov107_02244C70(BattleCastleSelfApp *param0);
static void ov107_02244CA0(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static void GetCursorSpritePos(BattleCastleSelfApp *app, u32 *x, u32 *y, u8 slot);
static u16 GetItemPriceFromListPos(BattleCastleSelfApp *app, u16 listPos, u8 menuType);
static u16 GetItemPrice(u16 itemID);
static u16 GetItemIDFromListPos(BattleCastleSelfApp *app, u16 idx, u8 selectedMenu);
static void ov107_02244E14(BattleCastleSelfApp *app, u16 *param1, u16 *param2, u16 *param3, u16 *param4);
static BOOL ov107_02244E44(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static void ov107_0224503C(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static u32 ov107_022450E8(BattleCastleSelfApp *param0, u8 param1);
static u32 ov107_02245114(BattleCastleSelfApp *param0, u8 param1);
static void ov107_02245140(BattleCastleSelfApp *param0, s8 param1);
static void ov107_0224518C(BattleCastleSelfApp *param0, s8 param1);
static void ov107_022451D8(BattleCastleSelfApp *param0);
static BOOL ov107_02245210(Pokemon *param0);
static void CloseMessageBox(Window *window);
BOOL ov107_0224529C(BattleCastleSelfApp *param0, u16 param1, u16 param2);
void ov107_022452F4(BattleCastleSelfApp *param0, u16 param1);
void ov107_02245338(int param0, int param1, void *param2, void *param3);
void ov107_02245368(BattleCastleSelfApp *param0, u16 param1, u16 param2);
void ov107_022453F8(BattleCastleSelfApp *param0, u16 param1);
void ov107_02245408(int param0, int param1, void *param2, void *param3);
void ov107_0224542C(BattleCastleSelfApp *param0);
void ov107_02245438(int param0, int param1, void *param2, void *param3);
static void ov107_02245454(Pokemon *param0, u16 param1);
static void ov107_02245464(BattleCastleSelfApp *param0, Window *param1);
static void ov107_022454F8(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static void ov107_022455A0(BattleCastleSelfApp *param0, u8 param1, u16 param2);
static void CloseYesNoMenu(BattleCastleSelfApp *app);
static void MarkListMenuAsOpen(BattleCastleSelfApp *app, Window *window);
static void CloseItemSelectScreen(BattleCastleSelfApp *param0);
static void ov107_022456E4(BattleCastleSelfApp *param0);
static void FreeListMenu(BattleCastleSelfApp *app);
static void ov107_02245780(BattleCastleSelfApp *param0, Window *window);
static void ov107_022459D0(BattleCastleSelfApp *param0, u8 param1, u8 param2);
static void ov107_02245B40(BattleCastleSelfApp *param0, u8 param1);
static void ov107_02245B90(BattleCastleSelfApp *param0, u8 param1);
static void ov107_02245BE0(BattleCastleSelfApp *param0);
static void ov107_02245C00(BattleCastleSelfApp *param0);
static void ov107_02245C94(BattleCastleSelfApp *param0, u8 param1, u8 param2);
extern void ov107_2243860(void);

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

static const u16 Unk_ov107_02249E34[3][3] = {
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
    app->unk_438 = &v2->unk_20;
    app->options = SaveData_GetOptions(app->saveData);
    app->unk_43C = v2->unk_18;
    app->unk_12 = 0xff;
    app->unk_49A = v2->unk_28;
    app->frontier = SaveData_GetBattleFrontier(app->saveData);

    for (int i = 0; i < 3; i++) {
        app->unk_497[i] = 1;
    }

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        app->unk_14 = 3;
    } else {
        app->unk_14 = 4;
    }

    app->unk_15 = app->unk_14;
    app->unk_0C = (app->unk_15 - 1);

    LoadAssets(app);

    if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
        sub_0209BA80(app);
    }

    *state = 0;

    return TRUE;
}

BOOL BattleCastleSelfApp_Main(ApplicationManager *appMan, int *state)
{
    BattleCastleSelfApp *v0 = ApplicationManager_Data(appMan);

    if (v0->unk_496 == 1) {
        switch (*state) {
        case 1:
            v0->unk_496 = 0;
            ov107_022451D8(v0);

            if (v0->unk_414 != NULL) {
                BattleCastleAppSprite_Free(v0->unk_414);
                v0->unk_0E_2 = 0;
            }

            BattleCastleApp_DrawMessageBox(&v0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(v0->options));
            BattleFrontier_SetPartnerInStrTemplate(v0->strTemplate, 0);

            v0->printerID = PrintMessageAndCopyToVRAM(v0, BattleCastleSelfApp_Text_PartnerChoseToExit, FONT_MESSAGE);

            ChangeState(v0, state, 3);
            break;
        }
    } else if (v0->unk_12 != 0xff) {
        switch (*state) {
        case 1:
        case 3:
            v0->unk_496 = 0;
            ov107_022451D8(v0);
            ChangeState(v0, state, 2);
            break;
        }
    }

    switch (*state) {
    case 0:
        if (State_FadeInApp(v0) == 1) {
            ChangeState(v0, state, 1);
        }
        break;
    case 1:
        if (ov107_02241EC8(v0) == 1) {
            if (v0->unk_0E_1 == 1) {
                ChangeState(v0, state, 2);
            } else {
                if (BattleCastle_IsMultiPlayerChallenge(v0->challengeType) == 1) {
                    ChangeState(v0, state, 3);
                } else {
                    ChangeState(v0, state, 4);
                }
            }
        }
        break;
    case 2:
        if (ov107_02242C64(v0) == 1) {
            ChangeState(v0, state, 1);
        }
        break;
    case 3:
        if (ov107_02242D60(v0) == 1) {
            ChangeState(v0, state, 4);
        }
        break;
    case 4:
        if (State_FadeOutApp(v0) == TRUE) {
            return TRUE;
        }
        break;
    }

    ov107_02245C00(v0);
    SpriteList_Update(v0->spriteMan.spriteList);

    return FALSE;
}

BOOL BattleCastleSelfApp_Exit(ApplicationManager *appMan, int *state)
{
    BattleCastleSelfApp *app = ApplicationManager_Data(appMan);
    *app->unk_438 = app->unk_0D;

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
            if (ov107_0224529C(app, 10, 0) == TRUE) {
                app->subState++;
            }
        } else {
            ov107_02241E70(app);
            StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 3, HEAP_ID_BATTLE_CASTLE_APP);
            app->subState++;
        }
        break;
    case 3:
        if (BattleCastle_IsMultiPlayerChallenge(app->challengeType) == TRUE) {
            if (app->unk_0F >= 2) {
                app->unk_0F = 0;
                ov107_02241E70(app);
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

static void ov107_02241E70(BattleCastleSelfApp *param0)
{
    u16 v2, v3, v4, v5;
    ov107_02244E14(param0, &v2, &v3, &v4, &v5);

    Window *v7 = &param0->windows[SELF_APP_WINDOW_HEADER];
    Window_FillTilemap(v7, 0);

    ov107_02245464(param0, v7);
    ov107_02245780(param0, v7);
    PrintAllMonsHP(param0, &param0->windows[SELF_APP_WINDOW_HP_BARS]);
    PrintAllMonsLevelAndGender(param0, &param0->windows[SELF_APP_WINDOW_LEVELS]);
    PrintMonSelectionStrings(param0);

    GXLayers_TurnBothDispOn();
    return;
}

static BOOL ov107_02241EC8(BattleCastleSelfApp *param0)
{
    u8 v2;
    u16 v3;
    u32 v6;
    Pokemon *v7;

    switch (param0->subState) {
    case 0:
        if (param0->unk_0E_5 == 1) {
            OpenHealMenu(param0);
            ov107_02249C60(param0->unk_430, 204, 100);
            param0->subState = 2;
            param0->unk_0E_5 = 0;
            return 0;
        } else if (param0->unk_0E_5 == 2) {
            OpenRentalMenu(param0);
            ov107_02249C60(param0->unk_430, 211, 106);
            param0->subState = 8;
            param0->unk_0E_5 = 0;
            return 0;
        }

        ov107_02244BD8(param0, gSystem.pressedKeys);

        if (gSystem.pressedKeys & PAD_BUTTON_A) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);

            if (param0->unk_0D >= param0->unk_15) {
                return 1;
            } else {
                CloseMonSelectionMessageBox(param0);
                OpenMonOptionsMenu(param0);
                param0->subState = 1;
                break;
            }
        } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
            if (param0->unk_0D != param0->unk_15) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                param0->unk_0D = param0->unk_15;
                ov107_02244C70(param0);
            }
            break;
        }
        break;
    case 1:
        v6 = ListMenu_ProcessInput(param0->listMenu);
        ov107_02249CE0(v6, 1500);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            CloseMonOptions(param0);
            PrintMonSelectionStrings(param0);
            param0->subState = 0;
            break;
        case 0:
            CloseMonOptions(param0);
            OpenHealMenu(param0);
            param0->subState = 2;
            break;
        case 5:
            CloseMonOptions(param0);
            OpenRentalMenu(param0);
            param0->subState = 8;
            break;
        case 9:
            CloseMonOptions(param0);
            ov107_02245B40(param0, param0->unk_0D);
            param0->subState = 20;
            break;
        case 10:
            CloseMonOptions(param0);
            ov107_02245B90(param0, param0->unk_0D);
            param0->subState = 21;
            break;
        case 11:
            CloseMonOptions(param0);
            PrintMonSelectionStrings(param0);
            param0->subState = 0;
            break;
        }
        break;
    case 2:
        ListMenu_CalcTrueCursorPos(param0->listMenu, &param0->unk_16);

        if (gSystem.pressedKeys & PAD_KEY_UP) {
            if (param0->unk_16 == 0) {
                ListMenu_TestInput(param0->listMenu, (ListMenuTemplate *)&param0->listTemplate, 0, NELEMS(sHealMenuEntries) - 1, 1, PAD_KEY_DOWN, NULL, NULL);
                ListMenu_Draw(param0->listMenu);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                PrintLeftAlignedMessageWithBg(param0, &param0->windows[SELF_APP_WINDOW_MSG_BOX], BattleCastleSelfApp_Text_ReturnToPrevious, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
                return 0;
            }
        } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
            if (param0->unk_16 == NELEMS(sHealMenuEntries) - 1) {
                ListMenu_TestInput(param0->listMenu, (ListMenuTemplate *)&param0->listTemplate, 0, 0, 1, PAD_KEY_UP, NULL, NULL);
                ListMenu_Draw(param0->listMenu);
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                PrintLeftAlignedMessageWithBg(param0, &param0->windows[SELF_APP_WINDOW_MSG_BOX], BattleCastleSelfApp_Text_WhichToUse, 1, 1, TEXT_SPEED_NO_TRANSFER, 1, 2, 15, FONT_MESSAGE);
                return 0;
            }
        }

        v6 = ListMenu_ProcessInput(param0->listMenu);

        ov107_02249CE0(v6, 1500);
        ListMenu_CalcTrueCursorPos(param0->listMenu, &param0->unk_16);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            FreeListMenu2(param0);
            OpenMonOptionsMenu(param0);
            param0->subState = 1;
            break;
        case 1:
        case 2:
        case 3:
            param0->unk_13 = v6;
            FreeListMenu2(param0);
            BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));

            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

            if (v2 < sHealMenuEntries[param0->unk_16][0]) {
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_HealRankTooLow, FONT_MESSAGE);
                param0->subState = 7;
            } else {
                SetStringTemplateNumber(param0, 0, sHealingCosts[param0->unk_16], 3, 0);
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_WillCostCP, FONT_MESSAGE);
                OpenYesNoMenu(param0);
                param0->subState = 3;
            }
            break;
        case 4:
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

            if (v2 == 3) {
                Sound_StopEffect(1500, 0);
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            } else {
                param0->unk_13 = v6;
                FreeListMenu2(param0);
                v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
                SetStringTemplateNumber(param0, 0, sRankUpCosts[0][v2], 4, 0);
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_RankUpForCP, FONT_MESSAGE);
                OpenYesNoMenu(param0);
                param0->subState = 4;
            }
            break;
        }
        break;
    case 3:
        v6 = Menu_ProcessInput(param0->yesNoMenu);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
            CloseYesNoMenu(param0);

            v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

            if (v2 < sHealMenuEntries[param0->unk_16][0]) {
                BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
                param0->printerID = PrintMessageAndCopyToVRAM(param0, 33, FONT_MESSAGE);
                param0->subState = 7;
                break;
            }

            if (v3 < sHealingCosts[param0->unk_16]) {
                BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_NotEnoughCP, FONT_MESSAGE);
                param0->subState = 7;
                break;
            }

            if (param0->unk_16 == 0) {
                if (Pokemon_GetValue(v7, MON_DATA_HP, NULL) == Pokemon_GetValue(v7, MON_DATA_MAX_HP, NULL)) {
                    param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_NoBenefit, FONT_MESSAGE);
                    param0->subState = 7;
                    break;
                }
            } else if (param0->unk_16 == 1) {
                if (ov107_02245210(v7) == 0) {
                    param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_NoBenefit, FONT_MESSAGE);
                    param0->subState = 7;
                    break;
                }
            } else {
                if ((Pokemon_GetValue(v7, MON_DATA_HP, NULL) == Pokemon_GetValue(v7, MON_DATA_MAX_HP, NULL)) && (ov107_02245210(v7) == 0)) {
                    param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_NoBenefit, FONT_MESSAGE);
                    param0->subState = 7;
                    break;
                }
            }

            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov104_0223BC2C(param0->frontier, param0->challengeType, sHealingCosts[param0->unk_13 - 1]);
                ov107_02245780(param0, &param0->windows[SELF_APP_WINDOW_HEADER]);
                ov107_022454F8(param0, param0->unk_0D, param0->unk_13);
                param0->subState = 18;
            } else {
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            CloseYesNoMenu(param0);
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenHealMenu(param0);
            param0->subState = 2;
            break;
        }
        break;
    case 4:
        v6 = Menu_ProcessInput(param0->yesNoMenu);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            CloseYesNoMenu(param0);

            v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

            if (v3 < sRankUpCosts[0][v2]) {
                CloseYesNoMenu(param0);
                BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_NotEnoughCP2, FONT_MESSAGE);
                param0->subState = 7;
                break;
            }

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov107_02245C94(param0, param0->unk_0D, 4);
                param0->subState = 5;
                break;
            } else {
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            CloseYesNoMenu(param0);
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenHealMenu(param0);
            param0->subState = 2;
            break;
        }
        break;
    case 5:
        if (ov107_02244E44(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->subState = 6;
        }
        break;
    case 6:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseYesNoMenu(param0);
            OpenHealMenu(param0);
            ov107_02249C60(param0->unk_430, 204, 100);
            param0->subState = 2;
        }
        break;
    case 7:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenHealMenu(param0);
            param0->subState = 2;
        }
        break;
    case 8:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
        v6 = ListMenu_ProcessInput(param0->listMenu);
        ov107_02249CE0(v6, 1500);
        ListMenu_CalcTrueCursorPos(param0->listMenu, &param0->unk_16);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            FreeListMenu3(param0);
            OpenMonOptionsMenu(param0);
            param0->subState = 1;
            break;
        case 6:
            param0->unk_13 = v6;
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            FreeListMenu3(param0);
            OpenItemSelectScreen(param0, 6);
            param0->subState = 9;
            break;
        case 7:
            param0->unk_13 = v6;

            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            FreeListMenu3(param0);

            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 1);

            if (v2 == 1) {
                BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_RentalRankTooLow, FONT_MESSAGE);
                param0->subState = 14;
                return 0;
            }

            OpenItemSelectScreen(param0, 7);
            param0->subState = 9;
            break;
        case 8:
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 1);

            if (v2 == 3) {
                Sound_StopEffect(1500, 0);
                Sound_PlayEffect(SEQ_SE_DP_BOX03);
            } else {
                param0->unk_13 = v6;
                FreeListMenu3(param0);
                SetStringTemplateNumber(param0, 0, sRankUpCosts[1][v2], 4, 0);
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_RankUpForCP, FONT_MESSAGE);
                OpenYesNoMenu(param0);
                param0->subState = 11;
            }
            break;
        }
        break;
    case 9:
        v6 = ListMenu_ProcessInput(param0->listMenu);
        ov107_02249CE0(v6, 1500);
        ListMenu_CalcTrueCursorPos(param0->listMenu, &param0->unk_16);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0xfffffffe:
            FreeItemSelect(param0);
            OpenRentalMenu(param0);
            param0->subState = 8;
            break;
        default:
            Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_SELECTED_ITEM_NAME]);

            BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
            SetStringTemplateNumber(param0, 0, GetItemPriceFromListPos(param0, param0->unk_16, param0->unk_13), 3, 0);

            param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_WillCostCP, FONT_MESSAGE);

            OpenYesNoMenu(param0);
            BattleCastleAppSprite_SetDrawFlag(param0->itemSprite, 0);

            param0->subState = 10;
            break;
        }
        break;
    case 10:
        v7 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
        v6 = Menu_ProcessInput(param0->yesNoMenu);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            CloseYesNoMenu(param0);
            v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));

            if (v3 < GetItemPriceFromListPos(param0, param0->unk_16, param0->unk_13)) {
                BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_NotEnoughCP, FONT_MESSAGE);

                BattleCastleAppSprite_SetDrawFlag(param0->itemSprite, 0);
                param0->subState = 15;
                break;
            }

            if (Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL) == 0) {
                if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                    FreeItemSelect(param0);
                    BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
                    ov104_0223BC2C(param0->frontier, param0->challengeType, GetItemPriceFromListPos(param0, param0->unk_16, param0->unk_13));
                    ov107_02245780(param0, &param0->windows[SELF_APP_WINDOW_HEADER]);
                    ov107_022455A0(param0, param0->unk_0D, GetItemIDFromListPos(param0, param0->unk_16, param0->unk_13));
                    param0->subState = 18;
                } else {
                    param0->unk_10 = GetItemIDFromListPos(param0, param0->unk_16, param0->unk_13);
                    FreeItemSelect(param0);
                    CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
                    param0->unk_0E_1 = 1;
                    return 1;
                }
            } else {
                SetStringTemplateSpecies(param0, 0, Pokemon_GetBoxPokemon(v7));
                StringTemplate_SetItemNameWithArticle(param0->strTemplate, 1, Pokemon_GetValue(v7, MON_DATA_HELD_ITEM, NULL));
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_AlreadyHoldingItem, FONT_MESSAGE);
                param0->subState = 16;
            }
            break;
        case 1:
        case 0xfffffffe:
            CloseYesNoMenu(param0);
            ov107_022456E4(param0);
            param0->subState = 9;
            break;
        }
        break;
    case 11:
        v6 = Menu_ProcessInput(param0->yesNoMenu);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            CloseYesNoMenu(param0);

            v3 = sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType)));
            v2 = ov107_02249CAC(param0->saveData, param0->challengeType, 1);

            if (v3 < sRankUpCosts[1][v2]) {
                CloseYesNoMenu(param0);
                BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
                param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_NotEnoughCP2, FONT_MESSAGE);
                param0->subState = 14;
                break;
            }

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                ov107_02245C94(param0, param0->unk_0D, 8);
                param0->subState = 12;
                break;
            } else {
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            CloseYesNoMenu(param0);
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenRentalMenu(param0);
            param0->subState = 8;
            break;
        }
        break;
    case 12:
        if (ov107_02244E44(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->subState = 13;
        }
        break;
    case 13:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseYesNoMenu(param0);
            OpenRentalMenu(param0);
            ov107_02249C60(param0->unk_430, 211, 106);
            param0->subState = 8;
        }
        break;
    case 14:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            OpenRentalMenu(param0);
            param0->subState = 8;
        }
        break;
    case 15:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_022456E4(param0);
            param0->subState = 9;
        }
        break;
    case 16:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_WantToSwitchItems, FONT_MESSAGE);
            OpenYesNoMenu(param0);
            param0->subState = 17;
        }
        break;
    case 17:
        v6 = Menu_ProcessInput(param0->yesNoMenu);

        switch (v6) {
        case 0xffffffff:
            break;
        case 0:
            CloseYesNoMenu(param0);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                FreeItemSelect(param0);
                BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
                ov104_0223BC2C(param0->frontier, param0->challengeType, GetItemPriceFromListPos(param0, param0->unk_16, param0->unk_13));
                ov107_02245780(param0, &param0->windows[SELF_APP_WINDOW_HEADER]);
                ov107_022455A0(param0, param0->unk_0D, GetItemIDFromListPos(param0, param0->unk_16, param0->unk_13));
                param0->subState = 18;
            } else {
                param0->unk_10 = GetItemIDFromListPos(param0, param0->unk_16, param0->unk_13);
                FreeItemSelect(param0);
                CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
                param0->unk_0E_1 = 1;
                return 1;
            }
            break;
        case 1:
        case 0xfffffffe:
            CloseYesNoMenu(param0);
            ov107_022456E4(param0);
            param0->subState = 9;
            break;
        }
        break;
    case 18:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        if (ov107_02244E44(param0, param0->unk_0D, param0->unk_13) == 1) {
            param0->subState = 19;
        }
        break;
    case 19:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            PrintMonSelectionStrings(param0);
            param0->subState = 0;
        }
        break;
    case 20:
        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            ov107_02245140(param0, -1);
        } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            ov107_02245140(param0, 1);
        } else if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02245BE0(param0);
            OpenMonOptionsMenu(param0);
            param0->subState = 1;
        }
        break;
    case 21:
        if (gSystem.pressedKeys & PAD_KEY_LEFT) {
            ov107_0224518C(param0, -1);
        } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
            ov107_0224518C(param0, 1);
        } else if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov107_02245BE0(param0);
            OpenMonOptionsMenu(param0);
            param0->subState = 1;
        }
        break;
    }

    return 0;
}

static BOOL ov107_02242C64(BattleCastleSelfApp *param0)
{
    u8 v0;

    switch (param0->subState) {
    case 0:
        param0->unk_0E_5 = 0;
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        if (ov107_0224529C(param0, 11, param0->unk_0D) == 1) {
            param0->unk_0E_1 = 0;
            param0->subState++;
        }
        break;
    case 1:
        if (param0->unk_12 == 0xff) {
            break;
        }

        param0->unk_0F = 0;

        if ((param0->unk_13 == 4) || (param0->unk_13 == 8)) {
            ov107_02245C94(param0, param0->unk_12, param0->unk_13);
        } else {
            ov107_022459D0(param0, param0->unk_12, param0->unk_13);
        }

        param0->subState++;
        break;
    case 2:
        v0 = ov107_02249C9C(param0->unk_15, param0->unk_12);

        if (ov107_02244E44(param0, v0, param0->unk_13) == 1) {
            param0->unk_0B = 30;
            param0->subState++;
        }
        break;
    case 3:
        param0->unk_0B--;

        if (param0->unk_0B == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(130);
            param0->subState++;
            break;
        }
        break;
    case 4:
        if (CommTiming_IsSyncState(130) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTool_Init(100);

            param0->unk_12 = 0xff;

            if (param0->unk_0E_5 == 0) {
                CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
                PrintMonSelectionStrings(param0);
            }

            param0->unk_496 = 0;
            return 1;
        }

        break;
    }

    return 0;
}

static BOOL ov107_02242D60(BattleCastleSelfApp *param0)
{
    switch (param0->subState) {
    case 0:
        if (ov107_0224529C(param0, 13, 0) == 1) {
            param0->unk_0B = 30;
            param0->subState++;
        }
        break;
    case 1:
        if (param0->unk_0B > 0) {
            param0->unk_0B--;
        }

        if (param0->unk_0B == 0) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CommTiming_StartSync(131);
            param0->subState++;
        }
        break;
    case 2:
        if (CommTiming_IsSyncState(131) == 1) {
            CommTool_ClearReceivedTempDataAllPlayers();
            CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
            return 1;
        }
        break;
    }

    return 0;
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

    BattleCastleAppSprite_Free(app->unk_430);
    BattleCastleAppSprite_Free(app->cursorSprite);
    BattleCastleAppSprite_Free(app->unk_41C);
    BattleCastleAppSprite_Free(app->unk_434);

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
    ov107_02244E14(app, &unused1, &unused2, &unused3, &unused4);

    app->upArrowSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 4, 160, 10, 0, NULL);
    app->downArrowSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 5, 160, 124, 0, NULL);

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
        app->itemIconSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 2, 2, 2, 0, 64 * i + iconXOffset, 58 + 4, 2, NULL);

        Pokemon *mon = Party_GetPokemonBySlotIndex(app->unk_43C, i);

        if (!Pokemon_GetValue(mon, MON_DATA_HELD_ITEM, NULL)) {
            BattleCastleAppSprite_SetDrawFlag(app->itemIconSprites[i], FALSE);
        }

        u32 hp = Pokemon_GetValue(mon, MON_DATA_HP, NULL);
        u32 maxHp = Pokemon_GetValue(mon, MON_DATA_MAX_HP, NULL);
        u32 v4 = ov107_022450E8(app, HealthBar_Color(hp, maxHp, 48));
        u32 v5 = ov107_02245114(app, HealthBar_Color(hp, maxHp, 48));

        app->barSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, v5, 64 * i + xOffset, 58 + 20, 3, NULL);
        app->monSprites[i] = BattleCastleAppSprite_New(&app->spriteMan, 3 + i, 3, 3, v4, 64 * i + xOffset, 58, 2, NULL);

        BattleCastleAppSprite_UpdatePalette(app->monSprites[i], Party_GetPokemonBySlotIndex(app->unk_43C, i));
    }

    app->itemSprite = BattleCastleAppSprite_New(&app->spriteMan, 1, 1, 1, 0, 24, 162, 0, NULL);

    BattleCastleApp_SetItemGraphic(&app->spriteMan, ITEM_POTION);
    BattleCastleApp_SetItemPalette(&app->spriteMan, ITEM_POTION);
    BattleCastleAppSprite_SetDrawFlag(app->itemSprite, FALSE);

    u32 x, y;
    GetCursorSpritePos(app, &x, &y, 0);

    app->cursorSprite = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 1, x, y, 2, NULL);
    app->unk_41C = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 2, x, y, 2, NULL);

    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        BattleCastleAppSprite_SetDrawFlag(app->unk_41C, FALSE);
    }

    app->unk_430 = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 11, 20, 20, 0, NULL);
    BattleCastleAppSprite_SetDrawFlag(app->unk_430, FALSE);

    app->unk_434 = BattleCastleAppSprite_New(&app->spriteMan, 0, 0, 0, 3, 20, 20, 1, NULL);
    BattleCastleAppSprite_SetDrawFlag(app->unk_434, FALSE);

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
    BattleCastleApp_InitSpriteManager(&app->spriteMan, app->unk_43C, BattleCastle_IsMultiPlayerChallenge(app->challengeType));
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
    Pokemon *mon = Party_GetPokemonBySlotIndex(app->unk_43C, slot);

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

    Pokemon *mon = Party_GetPokemonBySlotIndex(app->unk_43C, slot);

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

    app->printerID = PrintLeftAlignedMessage(app, window, BattleCastleSelfApp_Text_CastlePoints, 16, 16, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM);
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

static void ov107_02243F4C(BattleCastleSelfApp *ctx, Window *window, u8 param2, u32 param3)
{
    u16 v0;

    if (BattleCastle_IsMultiPlayerChallenge(ctx->challengeType) == FALSE) {
        v0 = 36;
    } else {
        v0 = 4;
    }

    Window_FillRectWithColor(window, 0, v0 + (64 * param2), 0, 8 * 3, 9);
    FontSpecialChars_DrawPartyScreenHPText(ctx->specialChars, param3, 3, PADDING_MODE_SPACES, window, v0 + (64 * param2), 1);
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
    app->unk_16 = 0;
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
    app->unk_16 = 0;

    InitHealMenu(app);
}

static void FreeListMenu2(BattleCastleSelfApp *app)
{
    FreeListMenu(app);
}

static void OpenRentalMenu(BattleCastleSelfApp *app)
{
    BattleCastleApp_DrawMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(app->options));
    app->unk_16 = 0;
    InitRentalMenu(app);
}

static void FreeListMenu3(BattleCastleSelfApp *app)
{
    FreeListMenu(app);
}

static void OpenItemSelectScreen(BattleCastleSelfApp *app, u8 param1)
{
    app->itemSelectIsOpen = TRUE;

    CloseMessageBox(&app->windows[SELF_APP_WINDOW_MSG_BOX]);

    Window_ClearAndCopyToVRAM(&app->windows[SELF_APP_WINDOW_MSG_BOX]);
    Window_ClearAndCopyToVRAM(&app->windows[SELF_APP_WINDOW_MON_OPTIONS_MENU]);

    LoadItemSelectBackground(app, BG_LAYER_MAIN_2);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
    Window_ClearAndScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_SUMMARY_SCREEN]);

    app->unk_16 = 0;

    DrawItemSelectMenuAndMonInfo(app, param1);
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

static void DrawItemSelectMenuAndMonInfo(BattleCastleSelfApp *app, u8 menuType)
{
    ov107_0224503C(app, app->unk_0D, 1);
    u8 slot = ov107_02249C98(app->unk_14, app->unk_0D);
    PrintMonHP(app, &app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_HP], slot, TRUE);

    Window_ScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_HP]);
    PrintMonLevelAndGender(app, &app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_INFO], slot, TRUE);
    Window_ScheduleCopyToVRAM(&app->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_INFO]);

    BattleCastleAppSprite_SetDrawFlag(app->itemSprite, TRUE);
    BattleCastleAppSprite_SetDrawFlag(app->upArrowSprite, TRUE);
    BattleCastleAppSprite_SetDrawFlag(app->downArrowSprite, TRUE);
    BattleCastleAppSprite_SetDrawFlag(app->unk_434, TRUE);

    MessageLoader *itemMsgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_ITEM_NAMES, HEAP_ID_BATTLE_CASTLE_APP);
    u8 rank = ov107_02249CAC(app->saveData, app->challengeType, 1);

    u8 listSize;
    if (menuType == MENU_ENTRY_RENT_BERRIES) {
        listSize = sBerriesAvailableByRank[rank - 1];
    } else {
        listSize = sItemsAvailableByRank[rank - 1];
    }

    app->strList = StringList_New(listSize + 1, HEAP_ID_BATTLE_CASTLE_APP);

    for (int i = 0; i < listSize; i++) {
        u16 itemID;

        if (menuType == MENU_ENTRY_RENT_BERRIES) {
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
    app->listTemplate.count = (listSize + 1);
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

    BattleCastleAppSprite_SetPosition(app->unk_434, 158, 24 + cursorPos * 16);

    if (item != MENU_CANCELED) {
        PrintItemName(app, &app->windows[SELF_APP_WINDOW_SELECTED_ITEM_NAME], GetItemIDFromListPos(app, pos, app->unk_13));

        BattleCastleApp_SetItemGraphic(&app->spriteMan, GetItemIDFromListPos(app, pos, app->unk_13));
        BattleCastleApp_SetItemPalette(&app->spriteMan, GetItemIDFromListPos(app, pos, app->unk_13));
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
        SetStringTemplateNumber(app, 0, GetItemPriceFromListPos(app, item, app->unk_13), 4, PADDING_MODE_SPACES);

        app->printerID = PrintMessage(app, &app->windows[SELF_APP_WINDOW_ITEM_SELECT_MENU], BattleCastleSelfApp_Text_CastlePoints, 128, yOffset, TEXT_SPEED_NO_TRANSFER, 1, 2, 0, FONT_SYSTEM, TEXT_ALIGN_RIGHT);
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

    u8 rank = ov107_02249CAC(app->saveData, app->challengeType, 0);

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
    BattleCastleSelfApp *app = (BattleCastleSelfApp *)ListMenu_GetAttribute(menu, 19);

    u16 pos;
    ListMenu_CalcTrueCursorPos(menu, &pos);
    u8 rank = ov107_02249CAC(app->saveData, app->challengeType, 0);

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

    u8 rank = ov107_02249CAC(app->saveData, app->challengeType, 1);

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

    u8 rank = ov107_02249CAC(app->saveData, app->challengeType, 1);

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
    String *playerName = String_Init(8, HEAP_ID_BATTLE_CASTLE_APP);

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
    PrintLeftAlignedMessage(app, window, 1, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, GET_TEXT_FG_COLOR(textColor), GET_TEXT_SHADOW_COLOR(textColor), GET_TEXT_BG_COLOR(textColor), FONT_SYSTEM);
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

static void ChangeState(BattleCastleSelfApp *app, int *state, int nextState)
{
    app->subState = 0;
    *state = nextState;
}

static void ov107_02244BD8(BattleCastleSelfApp *param0, int param1)
{
    int v1 = 0;
    u8 v0 = ov107_02249C98(param0->unk_14, param0->unk_0D);

    if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->unk_0D == param0->unk_15) {
            return;
        }

        if (v0 == 0) {
            param0->unk_0D += (param0->unk_14 - 1);
        } else {
            param0->unk_0D--;
        }

        v1 = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->unk_0D == param0->unk_15) {
            return;
        }

        if (v0 == (param0->unk_14 - 1)) {
            param0->unk_0D -= (param0->unk_14 - 1);
        } else {
            param0->unk_0D++;
        }

        v1 = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_0D < param0->unk_14) {
            return;
        }

        param0->unk_0D = param0->unk_0C;
        v1 = 1;
    }

    if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_0D >= param0->unk_15) {
            return;
        }

        param0->unk_0C = param0->unk_0D;
        param0->unk_0D = param0->unk_15;

        v1 = 1;
    }

    if (v1 == 1) {
        ov107_02244C70(param0);
    }
}

static void ov107_02244C70(BattleCastleSelfApp *param0)
{
    Sound_PlayEffect(SEQ_SE_CONFIRM);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
        ov107_0224529C(param0, 12, param0->unk_0D);
    }

    ov107_02244CA0(param0, param0->unk_0D, 0);
}

static void ov107_02244CA0(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    BattleCastleAppSprite *v0;
    u32 v1, v2, v3, v4;

    if (param2 == 0) {
        v0 = param0->cursorSprite;
        v3 = 1;
        v4 = 0;
    } else {
        v0 = param0->unk_41C;
        v3 = 2;
        v4 = 17;
    }

    if (param1 >= param0->unk_15) {
        BattleCastleAppSprite_SetAnim(v0, v4);
        BattleCastleAppSprite_SetPosition(v0, 224, 160);
    } else {
        BattleCastleAppSprite_SetAnim(v0, v3);
        GetCursorSpritePos(param0, &v1, &v2, param1);
        BattleCastleAppSprite_SetPosition(v0, v1, v2);
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
    ov107_02249CAC(app->saveData, app->challengeType, 1);

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
    ov107_02249CAC(app->saveData, app->challengeType, 1);

    if (selectedMenu == MENU_ENTRY_RENT_BERRIES) {
        return sBerriesForRent[idx];
    }

    return sItemsForRent[idx];
}

static void ov107_02244E14(BattleCastleSelfApp *app, u16 *param1, u16 *param2, u16 *param3, u16 *param4)
{
    if (!BattleCastle_IsMultiPlayerChallenge(app->challengeType)) {
        *param1 = 28;
        *param2 = 0;
        *param3 = 0;
        *param4 = 0;
    } else {
        *param1 = 0;
        *param2 = 0;
        *param3 = 120;
        *param4 = 0;
    }
}

static BOOL ov107_02244E44(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    u32 v0, v1, v2, v3;

    u8 v5 = ov107_02249C98(param0->unk_14, param1);
    Pokemon *v6 = Party_GetPokemonBySlotIndex(param0->unk_43C, v5);
    v0 = Pokemon_GetValue(v6, MON_DATA_HP, NULL);
    v1 = Pokemon_GetValue(v6, MON_DATA_MAX_HP, NULL);
    v2 = ov107_022450E8(param0, HealthBar_Color(v0, v1, 48));
    v3 = ov107_02245114(param0, HealthBar_Color(v0, v1, 48));

    switch (param2) {
    case 4:
    case 8:
        param0->unk_0E_2 = 0;
        return 1;
        break;
    case 1:
    case 2:
    case 3:
        if (param0->unk_0E_2 == 0) {
            param0->unk_0E_2 = 1;

            u16 v4;
            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                v4 = 64;
            } else {
                v4 = 32;
            }

            param0->unk_414 = BattleCastleAppSprite_New(&param0->spriteMan, 0, 0, 0, 8, v4 + (64 * v5), 62, 0, NULL);
        }

        if (param0->unk_414 != NULL) {
            if (BattleCastleAppSprite_IsAnimated(param0->unk_414) == 0) {
                BattleCastleAppSprite_Free(param0->unk_414);
                param0->unk_414 = NULL;
            }
        }

        if (param0->unk_414 == NULL) {
            ov107_02243F4C(param0, &param0->windows[SELF_APP_WINDOW_HP_BARS], v5, Pokemon_GetValue(v6, MON_DATA_HP, NULL));
            BattleCastleAppSprite_SetAnim(param0->barSprites[v5], v3);
            ov107_02249C1C(param0->monSprites[v5], v2);
            param0->unk_0E_2 = 0;
            return 1;
        }
        break;
    case 6:
    case 7:
        if (param0->unk_0E_2 == 0) {
            param0->unk_0E_2 = 1;

            u16 v4;
            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
                v4 = 64;
            } else {
                v4 = 32;
            }

            param0->unk_414 = BattleCastleAppSprite_New(&param0->spriteMan, 0, 0, 0, 16, v4 + (64 * v5), 62, 0, NULL);
        }

        if (BattleCastleAppSprite_IsAnimated(param0->unk_414) == 0) {
            BattleCastleAppSprite_Free(param0->unk_414);
            param0->unk_414 = NULL;
            param0->unk_0E_2 = 0;
            return 1;
        }
        break;
    case 9:
        param0->unk_0E_2 = 0;
        return 1;
        break;
    case 10:
        param0->unk_0E_2 = 0;
        return 1;
        break;
    }

    return 0;
}

static void ov107_0224503C(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    u8 v0 = ov107_02249C98(param0->unk_14, param1);

    u16 v2;
    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        v2 = 64;
    } else {
        v2 = 32;
    }

    u8 v1;
    s16 v3, v4;
    if (param2 == 1) {
        v3 = 40;
        v4 = 80;
        v1 = 0;
    } else {
        v3 = (64 * v0 + v2);
        v4 = 58;
        v1 = 2;
    }

    s16 v5 = v3 + 8;
    s16 v6 = v4 + 4;

    ov107_02249C58(param0->itemIconSprites[v0], v5, v6);
    BattleCastleAppSprite_SetPosition(param0->itemIconSprites[v0], v5, v6);
    BattleCastleAppSprite_SetPriority(param0->itemIconSprites[v0], v1);
    ov107_02249C58(param0->monSprites[v0], v3, v4);
    BattleCastleAppSprite_SetPosition(param0->monSprites[v0], v3, v4);
    BattleCastleAppSprite_SetPriority(param0->monSprites[v0], v1);
}

static u32 ov107_022450E8(BattleCastleSelfApp *param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 4:
        v0 = 1;
        break;
    case 3:
        v0 = 2;
        break;
    case 2:
        v0 = 3;
        break;
    case 1:
        v0 = 4;
        break;
    }

    return v0;
}

static u32 ov107_02245114(BattleCastleSelfApp *param0, u8 param1)
{
    u32 v0;

    switch (param1) {
    case 4:
        v0 = 15;
        break;
    case 3:
        v0 = 15;
        break;
    case 2:
        v0 = 14;
        break;
    case 1:
        v0 = 13;
        break;
    }

    return v0;
}

static void ov107_02245140(BattleCastleSelfApp *param0, s8 param1)
{
    s8 v1 = param0->unk_0D;
    v1 += param1;

    if (v1 < 0) {
        v1 = param0->unk_14 - 1;
    } else if (v1 >= param0->unk_14) {
        v1 = 0;
    }

    param0->unk_0D = v1;
    ov107_02244C70(param0);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
    PrintPokemonSummary(param0, &param0->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], v0);
}

static void ov107_0224518C(BattleCastleSelfApp *param0, s8 param1)
{
    s8 v1 = param0->unk_0D;
    v1 += param1;

    if (v1 < 0) {
        v1 = (param0->unk_14 - 1);
    } else if (v1 >= param0->unk_14) {
        v1 = 0;
    }

    param0->unk_0D = v1;
    ov107_02244C70(param0);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param0->unk_0D));
    PrintAllMoves(param0, &param0->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], v0);
}

static void ov107_022451D8(BattleCastleSelfApp *param0)
{
    CloseYesNoMenu(param0);
    FreeListMenu(param0);
    FreeItemSelect(param0);
    CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
    ov107_02245BE0(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    BattleCastleAppSprite_SetDrawFlag(param0->unk_430, 0);
}

static BOOL ov107_02245210(Pokemon *param0)
{
    u8 v0 = 0;

    if (Pokemon_GetValue(param0, MON_DATA_MOVE1_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE1_MAX_PP, NULL)) {
        v0 = 1;
    }

    if (Pokemon_GetValue(param0, MON_DATA_MOVE2_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE2_MAX_PP, NULL)) {
        v0 = 1;
    }

    if (Pokemon_GetValue(param0, MON_DATA_MOVE3_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE3_MAX_PP, NULL)) {
        v0 = 1;
    }

    if (Pokemon_GetValue(param0, MON_DATA_MOVE4_PP, NULL) != Pokemon_GetValue(param0, MON_DATA_MOVE4_MAX_PP, NULL)) {
        v0 = 1;
    }

    return v0;
}

static void CloseMessageBox(Window *window)
{
    Window_EraseMessageBox(window, TRUE);
    Window_ClearAndScheduleCopyToVRAM(window);
}

BOOL ov107_0224529C(BattleCastleSelfApp *param0, u16 param1, u16 param2)
{
    int v0, v1;

    switch (param1) {
    case 10:
        v1 = 49;
        ov107_022452F4(param0, param1);
        break;
    case 11:
        v1 = 50;
        ov107_02245368(param0, param1, param2);
        break;
    case 12:
        v1 = 51;
        ov107_022453F8(param0, param1);
        break;
    case 13:
        v1 = 52;
        ov107_0224542C(param0);
        break;
    }

    if (CommSys_SendData(v1, param0->unk_444, 40) == 1) {
        v0 = 1;
    } else {
        v0 = 0;
    }

    return v0;
}

void ov107_022452F4(BattleCastleSelfApp *param0, u16 param1)
{
    int v1 = 0;
    TrainerInfo *v2 = SaveData_GetTrainerInfo(param0->saveData);

    param0->unk_444[v1] = param1;
    v1 += 1;

    param0->unk_444[v1] = TrainerInfo_Gender(v2);
    v1 += 1;

    for (int v0 = 0; v0 < 3; v0++) {
        param0->unk_444[v1 + v0] = ov107_02249CAC(param0->saveData, param0->challengeType, v0);
    }

    v1 += 3;
}

void ov107_02245338(int param0, int param1, void *param2, void *param3)
{
    BattleCastleSelfApp *v2 = param3;
    const u16 *v3 = param2;

    int v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v1 += 1;
    v1 += 1;

    for (int v0 = 0; v0 < 3; v0++) {
        v2->unk_497[v0] = (u8)v3[v1 + v0];
    }

    v1 += 3;
}

void ov107_02245368(BattleCastleSelfApp *param0, u16 param1, u16 param2)
{
    param0->unk_444[0] = param1;
    param0->unk_444[1] = param2;

    if (CommSys_CurNetId() == 0) {
        if (param0->unk_12 == 0xff) {
            param0->unk_12 = param2;
        }
    }

    param0->unk_444[2] = param0->unk_12;
    param0->unk_444[4] = param0->unk_10;
    param0->unk_444[5] = param0->unk_13;
}

void ov107_022453A0(int param0, int param1, void *param2, void *param3)
{
    BattleCastleSelfApp *v2 = param3;
    const u16 *v3 = param2;

    int v1 = 0;
    v2->unk_0F++;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v2->unk_495 = v3[1];

    if (CommSys_CurNetId() == 0) {
        if (v2->unk_12 != 0xff) {
            v2->unk_495 = 0;
        } else {
            v2->unk_12 = v2->unk_495 + v2->unk_15;
            v2->unk_10 = v3[4];
            v2->unk_13 = v3[5];
        }
    } else {
        v2->unk_12 = v3[2];
        v2->unk_10 = v3[4];
        v2->unk_13 = v3[5];
    }
}

void ov107_022453F8(BattleCastleSelfApp *param0, u16 param1)
{
    param0->unk_444[0] = param1;
    param0->unk_444[1] = param0->unk_0D;
}

void ov107_02245408(int param0, int param1, void *param2, void *param3)
{
    BattleCastleSelfApp *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_494 = (u8)v1[1];
    ov107_02244CA0(v0, v0->unk_494, 1);
}

void ov107_0224542C(BattleCastleSelfApp *param0)
{
    param0->unk_444[0] = 1;
}

void ov107_02245438(int param0, int param1, void *param2, void *param3)
{
    BattleCastleSelfApp *v0 = param3;
    const u16 *v1 = param2;

    if (CommSys_CurNetId() == param0) {
        return;
    }

    v0->unk_496 = (u8)v1[0];
}

static void ov107_02245454(Pokemon *param0, u16 param1)
{
    Pokemon_ApplyItemEffects(param0, param1, 0, 0, 100);
}

static void ov107_02245464(BattleCastleSelfApp *param0, Window *param1)
{
    u16 v0, v1, v2, v3, v4, v5;

    ov107_02244E14(param0, &v2, &v3, &v4, &v5);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 0) {
        v0 = v2 + 0;
        v1 = v3 + 0;
        PrintPlayerName(param0, param1, v0, v1, FONT_SYSTEM);
    } else {
        if (CommSys_CurNetId() == 0) {
            v0 = v2 + 0;
            v1 = v3 + 0;

            PrintPlayerName(param0, param1, v0, v1, FONT_SYSTEM);

            v0 = v4 + 0;
            v1 = v5 + 0;

            PrintPartnersName(param0, param1, v0, v1, 0);
        } else {
            v0 = v2 + 0;
            v1 = v3 + 0;

            PrintPartnersName(param0, param1, v0, v1, 0);

            v0 = v4 + 0;
            v1 = v5 + 0;

            PrintPlayerName(param0, param1, v0, v1, FONT_SYSTEM);
        }
    }

    Window_ScheduleCopyToVRAM(param1);
}

static void ov107_022454F8(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    Pokemon *v1 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));
    u32 v0 = ov107_02249CAC(param0->saveData, param0->challengeType, 0);

    SetStringTemplateSpecies(param0, 0, Pokemon_GetBoxPokemon(v1));
    BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));

    param0->printerID = PrintMessageAndCopyToVRAM(param0, sHealingMessages[param2 - 1], FONT_MESSAGE);

    switch (param2) {
    case 1:
        ov107_02245454(v1, 24);
        break;
    case 2:
        ov107_02245454(v1, 41);
        break;
    case 3:
        ov107_02245454(v1, 24);
        ov107_02245454(v1, 41);
        break;

    default:
        GF_ASSERT(0);
    }

    Sound_PlayEffect(SEQ_SE_DP_KAIFUKU);
}

static void ov107_022455A0(BattleCastleSelfApp *param0, u8 param1, u16 param2)
{
    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));

    Pokemon_SetValue(v0, MON_DATA_HELD_ITEM, &param2);

    BattleCastleAppSprite_SetDrawFlag(param0->itemIconSprites[ov107_02249C98(param0->unk_14, param1)], 1);
    SetStringTemplateSpecies(param0, 0, Pokemon_GetBoxPokemon(v0));

    StringTemplate_SetItemName(param0->strTemplate, 1, param2);
    param0->printerID = PrintMessageAndCopyToVRAM(param0, BattleCastleSelfApp_Text_ItemGivenToMon, FONT_MESSAGE);
    Sound_PlayEffect(SEQ_SE_DP_UG_020);
}

static void CloseYesNoMenu(BattleCastleSelfApp *app)
{
    if (app->yesNoMenuIsOpen == TRUE) {
        app->yesNoMenuIsOpen = FALSE;
        Menu_Free(app->yesNoMenu, NULL);
        Window_EraseStandardFrame(app->yesNoMenuTemplate.window, 1);
        Window_ClearAndScheduleCopyToVRAM(app->yesNoMenuTemplate.window);
    }
}

static void MarkListMenuAsOpen(BattleCastleSelfApp *app, Window *window)
{
    app->listMenuIsOpen = TRUE;
}

static void CloseItemSelectScreen(BattleCastleSelfApp *param0)
{
    BattleCastleAppSprite_SetDrawFlag(param0->itemSprite, 0);
    BattleCastleAppSprite_SetDrawFlag(param0->upArrowSprite, 0);
    BattleCastleAppSprite_SetDrawFlag(param0->downArrowSprite, 0);
    BattleCastleAppSprite_SetDrawFlag(param0->unk_434, 0);

    Window_EraseStandardFrame(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO], 1);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO]);

    ov107_0224503C(param0, param0->unk_0D, 0);

    Window_FillTilemap(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_HP], 0);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_HP]);
    Window_FillTilemap(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_INFO], 0);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_MON_INFO]);
}

static void ov107_022456E4(BattleCastleSelfApp *param0)
{
    u16 v0;

    CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
    BattleCastleAppSprite_SetDrawFlag(param0->itemSprite, 1);

    ListMenu_Draw(param0->listMenu);
    ListMenu_CalcTrueCursorPos(param0->listMenu, &v0);

    PrintItemName(param0, &param0->windows[SELF_APP_WINDOW_SELECTED_ITEM_NAME], GetItemIDFromListPos(param0, v0, param0->unk_13));
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

static void ov107_02245780(BattleCastleSelfApp *param0, Window *window)
{
    u16 v0, v1, v2, v3, x, y;
    ov107_02244E14(param0, &v0, &v1, &v2, &v3);

    if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == FALSE) {
        x = v0 + 104;
        y = v1;
        Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
        SetStringTemplateNumber(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType))), 4, 1);
        param0->printerID = PrintMessage(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);
    } else {
        if (CommSys_CurNetId() == 0) {
            x = v0 + 104;
            y = v1;
            Window_FillRectWithColor(window, 0, x - 48, y, 48, 16);
            SetStringTemplateNumber(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType))), 4, 1);
            param0->printerID = PrintMessage(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);

            x = v2 + 104;
            y = v3;
            Window_FillRectWithColor(window, 0, x - 48, v3, 48, 16);
            SetStringTemplateNumber(param0, 0, param0->unk_49A, 4, 1);
            param0->printerID = PrintMessage(param0, window, 3, x, y, 0xFF, 1, 2, 0, 0, 2);
        } else {
            x = v0 + 104;
            y = v1;
            Window_FillRectWithColor(window, 0, x - 48, v1, 48, 16);
            SetStringTemplateNumber(param0, 0, param0->unk_49A, 4, 1);
            param0->printerID = PrintMessage(param0, window, 3, x, y, 0xFF, 1, 2, 0, 0, 2);

            x = v2 + 104;
            y = v3;
            Window_FillRectWithColor(window, 0, x - 48, v3, 48, 16);
            SetStringTemplateNumber(param0, 0, sub_02030698(param0->frontier, sub_0205E630(param0->challengeType), sub_0205E6A8(sub_0205E630(param0->challengeType))), 4, 1);
            param0->printerID = PrintMessage(param0, window, 2, x, y, 0xFF, 1, 2, 0, 0, 2);
        }
    }

    Window_ScheduleCopyToVRAM(window);
}

static void ov107_022459D0(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);

    u8 v0, v1;
    v1 = param0->unk_15;
    v0 = ov107_02249C9C(v1, param1);

    u16 v2;
    switch (param2) {
    case 1:
    case 2:
    case 3:
        v2 = sHealingCosts[param2 - 1];
        break;
    case 6:
    case 7:
        v2 = GetItemPrice(param0->unk_10);
        break;
    case 9:
    case 10:
        v2 = 0;
        break;
    }

    if (CommSys_CurNetId() == 0) {
        if (param1 < v1) {
            SetStringTemplatePlayerName(param0, 5);
            ov104_0223BC2C(param0->frontier, param0->challengeType, v2);
        } else {
            ov107_02249CF4(param0->strTemplate, 5);
            param0->unk_49A -= v2;
        }
    } else {
        if (param1 < v1) {
            ov107_02249CF4(param0->strTemplate, 5);
            param0->unk_49A -= v2;
        } else {
            SetStringTemplatePlayerName(param0, 5);
            ov104_0223BC2C(param0->frontier, param0->challengeType, v2);
        }
    }

    ov107_02245780(param0, &param0->windows[SELF_APP_WINDOW_HEADER]);
    CloseYesNoMenu(param0);
    ov107_02245BE0(param0);
    FreeItemSelect(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    CloseMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);

    switch (param2) {
    case 1:
    case 2:
    case 3:
        BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
        ov107_022454F8(param0, v0, param2);
        break;
    case 6:
    case 7:
        BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));
        ov107_022455A0(param0, v0, param0->unk_10);
        break;
    case 9:
        ov107_02245B40(param0, v0);
        break;
    case 10:
        ov107_02245B90(param0, v0);
        break;
    }
}

static void ov107_02245B40(BattleCastleSelfApp *param0, u8 param1)
{
    LoadSummaryBackground(param0, 2);

    Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_MENU]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO]);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));
    PrintPokemonSummary(param0, &param0->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
}

static void ov107_02245B90(BattleCastleSelfApp *param0, u8 param1)
{
    LoadMovesListBackground(param0, 2);

    Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_MSG_BOX]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_MENU]);
    Window_ClearAndScheduleCopyToVRAM(&param0->windows[SELF_APP_WINDOW_ITEM_SELECT_PLAYER_INFO]);

    Pokemon *v0 = Party_GetPokemonBySlotIndex(param0->unk_43C, ov107_02249C98(param0->unk_14, param1));

    PrintAllMoves(param0, &param0->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], v0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 1);
}

static void ov107_02245BE0(BattleCastleSelfApp *param0)
{
    Window_FillTilemap(&param0->windows[SELF_APP_WINDOW_SUMMARY_SCREEN], 0);
    Window_ClearAndCopyToVRAM(&param0->windows[SELF_APP_WINDOW_SUMMARY_SCREEN]);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
}

static void ov107_02245C00(BattleCastleSelfApp *param0)
{
    u8 v1 = BattleCastle_GetPartySize(param0->challengeType, TRUE);

    for (int v0 = 0; v0 < v1; v0++) {
        Pokemon *v3 = Party_GetPokemonBySlotIndex(param0->unk_43C, v0);
        u8 v2 = ov104_0222E240(Pokemon_GetValue(v3, MON_DATA_HP, NULL), Pokemon_GetValue(v3, MON_DATA_MAX_HP, NULL));

        if (param0->monSprites[v0] != NULL) {
            ov107_02249C1C(param0->monSprites[v0], v2);

            if ((v0 != ov107_02249C98(param0->unk_14, param0->unk_0D)) || (param0->unk_0D >= param0->unk_15)) {
                ov107_02249C28(param0->monSprites[v0], 0);
            } else {
                ov107_02249C28(param0->monSprites[v0], 1);
            }
        }
    }
}

static void ov107_02245C94(BattleCastleSelfApp *param0, u8 param1, u8 param2)
{
    u32 v4;
    u16 v5[4];

    u8 v3 = BattleCastle_GetPartySize(param0->challengeType, FALSE);

    u8 v2;
    if (param2 == 4) {
        v2 = 0;
    } else {
        v2 = 1;
    }

    u8 v0 = param0->unk_15;
    u8 v1 = ov107_02249C9C(v0, param1);

    if (CommSys_CurNetId() == 0) {
        if (param1 < v0) {
            SetStringTemplatePlayerName(param0, 5);

            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);
            ov104_0223BC2C(param0->frontier, param0->challengeType, sRankUpCosts[v2][v4]);

            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);
            v5[0] = (v4 + 1);
            sub_020306E4(SaveData_GetBattleFrontier(param0->saveData), sub_0205E5B4(param0->challengeType, v2), sub_0205E6A8(sub_0205E5B4(param0->challengeType, v2)), v4 + 1);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
                if (param2 == 4) {
                    param0->unk_0E_5 = 1;
                } else {
                    param0->unk_0E_5 = 2;
                }
            }
        } else {
            ov107_02249CF4(param0->strTemplate, 5);
            v4 = param0->unk_497[v2];
            param0->unk_49A -= sRankUpCosts[v2][v4];
            param0->unk_497[v2]++;
        }
    } else {
        if (param1 < v0) {
            ov107_02249CF4(param0->strTemplate, 5);
            v4 = param0->unk_497[v2];
            param0->unk_49A -= sRankUpCosts[v2][v4];
            param0->unk_497[v2]++;
        } else {
            SetStringTemplatePlayerName(param0, 5);
            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);

            ov104_0223BC2C(param0->frontier, param0->challengeType, sRankUpCosts[v2][v4]);
            v4 = ov107_02249CAC(param0->saveData, param0->challengeType, v2);

            v5[0] = v4 + 1;
            sub_020306E4(SaveData_GetBattleFrontier(param0->saveData), sub_0205E5B4(param0->challengeType, v2), sub_0205E6A8(sub_0205E5B4(param0->challengeType, v2)), v4 + 1);

            if (BattleCastle_IsMultiPlayerChallenge(param0->challengeType) == 1) {
                if (param2 == 4) {
                    param0->unk_0E_5 = 1;
                } else {
                    param0->unk_0E_5 = 2;
                }
            }
        }
    }

    CloseYesNoMenu(param0);
    ov107_02245780(param0, &param0->windows[SELF_APP_WINDOW_HEADER]);
    BattleCastleApp_DrawMessageBox(&param0->windows[SELF_APP_WINDOW_MSG_BOX], Options_Frame(param0->options));

    param0->printerID = PrintMessageAndCopyToVRAM(param0, Unk_ov107_02249E34[v2][v4], FONT_MESSAGE);
}
