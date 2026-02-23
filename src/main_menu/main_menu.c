#include <nitro.h>
#include <string.h>

#include "constants/graphics.h"
#include "constants/narc.h"
#include "generated/genders.h"
#include "generated/string_padding_mode.h"
#include "generated/text_banks.h"

#include "struct_decls/pokedexdata_decl.h"

#include "game_opening/const_ov77_021D742C.h"
#include "main_menu/application_template.h"
#include "main_menu/distribution_cartridge.h"
#include "main_menu/main_menu_util.h"
#include "main_menu/ov97_02235D18.h"
#include "savedata/save_table.h"

#include "bg_window.h"
#include "boot.h"
#include "font.h"
#include "game_start.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "main.h"
#include "message.h"
#include "message_util.h"
#include "mystery_gift.h"
#include "overlay_manager.h"
#include "palette.h"
#include "play_time.h"
#include "pokedex.h"
#include "render_oam.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "system_data.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020366A0.h"
#include "unk_0209A74C.h"
#include "vram_transfer.h"

#include "res/graphics/main_menu/main_menu_graphics.naix"
#include "res/text/bank/main_menu_alerts.h"
#include "res/text/bank/main_menu_options.h"
#include "res/text/bank/unk_0695.h"

FS_EXTERN_OVERLAY(game_start);
FS_EXTERN_OVERLAY(game_opening);
FS_EXTERN_OVERLAY(main_menu);
FS_EXTERN_OVERLAY(overlay98);

#define BACKGROUND_COLOR          GX_RGB(12, 12, 31)
#define UNFOCUSED_OPTION_BG_COLOR GX_RGB(26, 26, 26)

#define COLORS_LIST_END 0

#define UNFOCUSED_OPTION_FRAME_BASE_TILE 1
#define FOCUSED_OPTION_FRAME_BASE_TILE   (UNFOCUSED_OPTION_FRAME_BASE_TILE + STANDARD_WINDOW_TILE_COUNT)
#define OPTION_WINDOWS_BASE_TILE_START   (FOCUSED_OPTION_FRAME_BASE_TILE + STANDARD_WINDOW_TILE_COUNT)
#define ALERT_WINDOW_FRAME_BASE_TILE     1
#define ALERT_WINDOW_CONTENT_BASE_TILE   (ALERT_WINDOW_FRAME_BASE_TILE + 2 * STANDARD_WINDOW_TILE_COUNT)

#define WIRELESS_ICONS_TILES_OFFS     0x380
#define WIRELESS_ICONS_TILES_ID_START ((4 << 12) + WIRELESS_ICONS_TILES_OFFS)
#define WIRELESS_ICONS_TILESET_HEIGHT 8
#define WIRELESS_ICONS_TILESET_WIDTH  8
#define WIRELESS_ISONS_TILESET_SIZE   (WIRELESS_ICONS_TILESET_HEIGHT * WIRELESS_ICONS_TILESET_WIDTH)

#define CONTINUE_WINDOW_MARGIN 32

#define SCROLL_ARROWS_OFFSET 8

#define OPTION_WINDOW_WIDTH 26

#define MAX_SCROLL_SPEED (12 * FX32_ONE)

#define DIRECTION_UP   (-1)
#define DIRECTION_DOWN 1

#define MYSTERY_GIFT   0b00000001
#define RANGER_LINK    0b00000010
#define WII_CONNECTION 0b00000100
#define NEW_GAME_WARN  0b10000000

enum MainMenuNextApp {
    NEXT_APP_TITLE_SCREEN = 0,
    NEXT_APP_LOAD_SAVE,
    NEXT_APP_GAME_INTRO,
    NEXT_APP_MYSTERY_GIFT,
    NEXT_APP_RANGER_LINK,
    NEXT_APP_GBA_MIGRATION,
    NEXT_APP_WII_CONNECTION,
    NEXT_APP_WFC_SETTINGS,
    NEXT_APP_WII_MSG_SETTINGS
};

enum MainMenuOption {
    MAIN_MENU_OPTION_CONTINUE = 0,
    MAIN_MENU_OPTION_NEW_GAME,
    MAIN_MENU_OPTION_MYSTERY_GIFT,
    MAIN_MENU_OPTION_RANGER_LINK,
    MAIN_MENU_OPTION_GBA_MIGRATION,
    MAIN_MENU_OPTION_CONNECT_TO_WII,
    MAIN_MENU_OPTION_WFC_SETTINGS,
    MAIN_MENU_OPTION_WII_MSG_SETTINGS,
    NUM_MAIN_MENU_OPTIONS,
};

enum MainMenuAppState {
    MAIN_MENU_STATE_INIT_GRAPHICS = 0,
    MAIN_MENU_STATE_CHECK_WFC_USER_INFO,
    MAIN_MENU_STATE_WARM_WFC_USER_INFO_ERASED,
    MAIN_MENU_STATE_CHECK_NEW_GAME_AND_GBA,
    MAIN_MENU_STATE_LOAD_GRAPHICS,
    MAIN_MENU_STATE_SELECT_OPTION,
    MAIN_MENU_STATE_CONFIRM_NEW_GAME,
    MAIN_MENU_STATE_EXIT,
    MAIN_MENU_STATE_WAIT_SCREEN_TRANSITION,
    MAIN_MENU_STATE_UNUSED_9,
};

enum MainMenuWirelessCheckState {
    MAIN_MENU_WIRELESS_CHECK_START = 10,
    MAIN_MENU_WIRELESS_CHECK_INIT_WIRELESS,
    MAIN_MENU_WIRELESS_CHECK_IDLE,
    MAIN_MENU_WIRELESS_CHECK_CHECK_RESULT,
    MAIN_MENU_WIRELESS_CHECK_STOP,
};

enum MainMenuAlertsState {
    MAIN_MENU_ALERTS_STATE_WAIT = 15,
    MAIN_MENU_ALERTS_STATE_LOAD_GRAPHICS,
    MAIN_MENU_ALERTS_STATE_SHOW_NEXT_ALERT,
    MAIN_MENU_ALERTS_STATE_WAIT_DISMISS,
    MAIN_MENU_ALERTS_STATE_HIDE_ALERT,
};

enum MainMenuAlertType {
    MAIN_MENU_ALERT_MYSTERY_GIFT_OK = 0,
    MAIN_MENU_ALERT_MYSTERY_GIFT_NO_DEX,
    MAIN_MENU_ALERT_RANGER_MSG_OK,
    MAIN_MENU_ALERT_RANGER_MSG_NO_DEX,
    MAIN_MENU_ALERT_NEW_GAME,
};

enum WirelessIconType {
    WIRELESS_ICON_NONE = 0,
    WIRELESS_ICON_LOCAL,
    WIRELESS_ICON_WIFI
};

typedef void (*UnusedFuncPtr)(void *);
typedef struct WFCUserInfoErasedAlertTemplate {
    int x;
    int y;
    int width;
    int height;
    enum TextBank bankID;
    u32 entryID;
    UnusedFuncPtr unused_18;
} WFCUserInfoErasedAlertTemplate;

typedef struct MainMenuAlertWindowTemplate {
    int x;
    int y;
    int width;
    int height;
    int textEntryID;
} MainMenuAlertTemplate;

typedef struct MainMenuAppData {
    BgConfig *bgConfig;
    SaveData *saveData;
    Pokedex *pokedex;
    TrainerInfo *trainerInfo;
    PlayTime *playTime;
    MysteryGift *mysteryGift;
    int framesCounter;
    int unused_1C;
    int nextOptionBasetile;
    int agbGameType; // Adds + 1, to track unset value
    int unused_28;
    BOOL rangerLinkAvailable;
    BOOL wiiConnectionAvailable;
    BOOL mysteryGiftUnlocked;
    int extraUnlockedOptions;
    int unused_3C;
    int pendingAlerts;
    int shownAlerts;
    BOOL shouldUpdateOptions;
    BOOL pokedexObtained;
    int badgeCount;
    enum MainMenuOption focusedOption;
    enum MainMenuNextApp nextApplication;
    Window optionWindows[NUM_MAIN_MENU_OPTIONS];
    enum MainMenuNextApp optionApps[NUM_MAIN_MENU_OPTIONS];
    enum WirelessIconType optionWirelessIconTypes[NUM_MAIN_MENU_OPTIONS];
    fx32 scrollPos;
    fx32 scrollTarget;
    int wirelessCheckState;
    int wirelessCheckTimeout;
    enum MainMenuAlertsState alertsState;
    BOOL alertsPending;
    int alertsDelay;
    int alertDismissKeys;
    Window alertWindow;
    BOOL isNewGame;
    BOOL newAlerts;
    BOOL wfcUserInfoErasedMsgPending[1];
    Window wfcUserInfoErasedWindow;
    Sprite *scrollUpArrowSprite;
    Sprite *scrollDownArrowSprite;
    int focusedBorderCycleIndex;
} MainMenuAppData;

/*
 * Responsible for deciding whether the option should be shown and rendering
 * the inside (not the border) of the option's window.
 *
 * Must set appData->optionApps[option] to the option's appToLoad and render
 * the window if the option is available.
 *
 * Must not set appData->optionApps[option] nor render the option and return
 * FALSE if it's not available.
 */
typedef BOOL (*MainMenuOptionRenderFuncPtr)(MainMenuAppData *appData, enum MainMenuOption optionIdx, MainMenuWindow *, int yPos);

typedef struct MainMenuOptionTemplate {
    enum MainMenuNextApp appToLoad;
    int height;
    int textEntryID;
    MainMenuOptionRenderFuncPtr renderFunc; // If NULL, the option is always always available and simply shows the string indicated by textEntryID in the main menu text bank.
} MainMenuOptionTemplate;

static BOOL RenderContinueOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *param2, int yPos);
static BOOL RenderMysteryGiftOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *param2, int yPos);
static BOOL RenderRangerLinkOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *param2, int yPos);
static BOOL RenderGBAMigrationOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *param2, int yPos);
static BOOL RenderWiiConnectionOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *param2, int yPos);
static BOOL RenderWFCSettingsOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *param2, int yPos);
static BOOL RenderWiiMsgSettingsOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *param2, int yPos);

static WFCUserInfoErasedAlertTemplate sWFCUserInfoErasedMsgWindowTemplate[] = {
    { .x = 5, .y = 5, .width = 22, .height = TEXT_LINES_TILES(7), TEXT_BANK_UNK_0695, pl_msg_00000695_00016, NULL }
};

static MainMenuOptionTemplate sOptions[NUM_MAIN_MENU_OPTIONS] = {
    [MAIN_MENU_OPTION_CONTINUE] = {
        .appToLoad = NEXT_APP_LOAD_SAVE,
        .height = TEXT_LINES_TILES(5),
        .textEntryID = MainMenuOptions_Text_Continue,
        .renderFunc = RenderContinueOption,
    },
    [MAIN_MENU_OPTION_NEW_GAME] = {
        .appToLoad = NEXT_APP_GAME_INTRO,
        .height = TEXT_LINES_TILES(1),
        .textEntryID = MainMenuOptions_Text_NewGame,
        .renderFunc = NULL,
    },
    [MAIN_MENU_OPTION_MYSTERY_GIFT] = {
        .appToLoad = NEXT_APP_MYSTERY_GIFT,
        .height = TEXT_LINES_TILES(1),
        .textEntryID = MainMenuOptions_Text_MysteryGift,
        .renderFunc = RenderMysteryGiftOption,
    },
    [MAIN_MENU_OPTION_RANGER_LINK] = {
        .appToLoad = NEXT_APP_RANGER_LINK,
        .height = TEXT_LINES_TILES(1),
        .textEntryID = MainMenuOptions_Text_LinkWithPokemonRanger,
        .renderFunc = RenderRangerLinkOption,
    },
    [MAIN_MENU_OPTION_GBA_MIGRATION] = {
        .appToLoad = NEXT_APP_GBA_MIGRATION,
        .height = TEXT_LINES_TILES(1),
        .textEntryID = NULL,
        .renderFunc = RenderGBAMigrationOption,
    },
    [MAIN_MENU_OPTION_CONNECT_TO_WII] = {
        .appToLoad = NEXT_APP_WII_CONNECTION,
        .height = TEXT_LINES_TILES(1),
        .textEntryID = MainMenuOptions_Text_ConnectToWii,
        .renderFunc = RenderWiiConnectionOption,
    },
    [MAIN_MENU_OPTION_WFC_SETTINGS] = {
        .appToLoad = NEXT_APP_WFC_SETTINGS,
        .height = TEXT_LINES_TILES(1),
        .textEntryID = MainMenuOptions_Text_NintendoWfcSettings,
        .renderFunc = RenderWFCSettingsOption,
    },
    [MAIN_MENU_OPTION_WII_MSG_SETTINGS] = {
        .appToLoad = NEXT_APP_WII_MSG_SETTINGS,
        .height = TEXT_LINES_TILES(1),
        .textEntryID = MainMenuOptions_Text_WiiMessageSettings,
        .renderFunc = RenderWiiMsgSettingsOption,
    }
};

static u32 sContinueOptionStringsIDs[] = {
    MainMenuOptions_Text_Continue,
    MainMenuOptions_Text_Player,
    MainMenuOptions_Text_Time,
    MainMenuOptions_Text_Badges,
    MainMenuOptions_Text_Pokedex
};

// clang-format off
// Some of these have some extra seemingly random padding, might be an artifact from localization.
static MainMenuAlertTemplate sMainMenuAlerts[] = {
    [MAIN_MENU_ALERT_MYSTERY_GIFT_OK]     = { .x = 4, .y = 2, .width = 24, .height = TEXT_LINES_TILES(8) + 4, MainMenuAlerts_Text_MysteryGiftOk },
    [MAIN_MENU_ALERT_MYSTERY_GIFT_NO_DEX] = { .x = 4, .y = 4, .width = 24, .height = TEXT_LINES_TILES(8),     MainMenuAlerts_Text_MysteryGiftNoDex },
    [MAIN_MENU_ALERT_RANGER_MSG_OK]       = { .x = 4, .y = 1, .width = 24, .height = TEXT_LINES_TILES(9) + 4, MainMenuAlerts_Text_RangerLinkOk },
    [MAIN_MENU_ALERT_RANGER_MSG_NO_DEX]   = { .x = 4, .y = 3, .width = 24, .height = TEXT_LINES_TILES(8) + 2, MainMenuAlerts_Text_RangerLinkNoDex },
    [MAIN_MENU_ALERT_NEW_GAME]            = { .x = 2, .y = 1, .width = 28, .height = TEXT_LINES_TILES(11),    MainMenuAlerts_Text_NewGameWarning }
};
// clang-format on

static BOOL CheckWFCUserInfoErased(MainMenuAppData *appData)
{
    return FALSE;
}

static BOOL ShowWFCUserInfoErasedMsg(MainMenuAppData *appData)
{
    if (Window_IsInUse(&appData->wfcUserInfoErasedWindow) == FALSE) {
        for (int i = 0; i < 1; i++) {
            if (appData->wfcUserInfoErasedMsgPending[i] == TRUE) {
                appData->wfcUserInfoErasedMsgPending[i] = FALSE;
                WFCUserInfoErasedAlertTemplate *alertTemplate = &sWFCUserInfoErasedMsgWindowTemplate[i];

                MainMenuWindow window;
                MainMenuUtil_InitWindow(&window, &appData->wfcUserInfoErasedWindow, PLTT_0, alertTemplate->bankID, ALERT_WINDOW_FRAME_BASE_TILE, PLTT_2);
                MainMenuWindow_SetDimensionsAndBasetile(&window, alertTemplate->width, alertTemplate->height, ALERT_WINDOW_CONTENT_BASE_TILE);
                MainMenuUtil_ShowWindowAtPos(appData->bgConfig, &window, alertTemplate->x, alertTemplate->y, alertTemplate->entryID);
                return TRUE;
            }
        }
    } else {
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            Window_EraseStandardFrame(&appData->wfcUserInfoErasedWindow, FALSE);
            Window_Remove(&appData->wfcUserInfoErasedWindow);
        }

        return TRUE;
    }

    return FALSE;
}

static void DetectGBAGame(MainMenuAppData *appData)
{
    int gbaCartInfoLoadError = ov97_02235D2C(NULL);

    appData->agbGameType = 0;

    if (gbaCartInfoLoadError) {
        return;
    }

    int gbaVersion = VERSION_NONE;

    switch (GBACart_GetAGBGameType()) {
    case AGB_TYPE_RUBY:
        gbaVersion = VERSION_RUBY;
        break;
    case AGB_TYPE_SAPPHIRE:
        gbaVersion = VERSION_SAPPHIRE;
        break;
    case AGB_TYPE_LEAFGREEN:
        gbaVersion = VERSION_LEAFGREEN;
        break;
    case AGB_TYPE_FIRERED:
        gbaVersion = VERSION_FIRERED;
        break;
    case AGB_TYPE_EMERALD:
        gbaVersion = VERSION_EMERALD;
        break;
    }

    SetGBACartridgeVersion(gbaVersion);

    if (Pokedex_IsNationalDexObtained(appData->pokedex) == FALSE) {
        return;
    }

    if (GBACart_GetLanguage() != gGameLanguage) {
        return;
    }

    appData->agbGameType = GBACart_GetAGBGameType() + 1;

    MainMenuUtil_UnsetGBACartIRQFunc();
}

/*
 * Detects if wireless connection to a Ranger game, a Wii
 * or a Mystery gift distribution is possible.
 */
static void DetectWirelessConnections(MainMenuAppData *appData)
{
    switch (appData->wirelessCheckState) {
    case MAIN_MENU_WIRELESS_CHECK_IDLE:
        break;
    case MAIN_MENU_WIRELESS_CHECK_START:
        appData->wirelessCheckState = MAIN_MENU_WIRELESS_CHECK_INIT_WIRELESS;
        break;
    case MAIN_MENU_WIRELESS_CHECK_INIT_WIRELESS:
        sub_02037D48(appData->saveData);

        appData->wirelessCheckTimeout = 120;
        appData->wirelessCheckState = MAIN_MENU_WIRELESS_CHECK_CHECK_RESULT;
        appData->pendingAlerts = 0;

        if (MysteryGift_GetMysteryGiftUnlockedFlag(appData->mysteryGift) == TRUE) {
            appData->pendingAlerts |= MYSTERY_GIFT;
            appData->shownAlerts |= MYSTERY_GIFT;
        }
        break;
    case MAIN_MENU_WIRELESS_CHECK_CHECK_RESULT:
        if (appData->alertsPending) {
            break;
        }

        int availableConnections = sub_02037DA0();
        availableConnections = ~appData->pendingAlerts & availableConnections;

        if (availableConnections && (appData->alertsState == MAIN_MENU_ALERTS_STATE_WAIT) && (appData->alertsPending == FALSE) && (appData->pendingAlerts != availableConnections)) {
            appData->shouldUpdateOptions = TRUE;

            if (availableConnections & MYSTERY_GIFT) {
                appData->mysteryGiftUnlocked = TRUE, availableConnections = MYSTERY_GIFT;
            }

            if (availableConnections & RANGER_LINK) {
                appData->rangerLinkAvailable = TRUE, availableConnections = RANGER_LINK;
            }

            if (availableConnections & WII_CONNECTION) {
                appData->wiiConnectionAvailable = TRUE, availableConnections = WII_CONNECTION;
            }

            if (availableConnections & (MYSTERY_GIFT | RANGER_LINK)) {
                appData->newAlerts = TRUE;
            }

            appData->pendingAlerts |= availableConnections;
        }

        if (--appData->wirelessCheckTimeout == 0) {
            sub_02037D84();
            appData->wirelessCheckState = MAIN_MENU_WIRELESS_CHECK_IDLE;
        }
        break;
    case MAIN_MENU_WIRELESS_CHECK_STOP:
        sub_02037D84();
        appData->wirelessCheckState = MAIN_MENU_WIRELESS_CHECK_IDLE;
        break;
    }
}

static BOOL ShowAlerts(MainMenuAppData *appData)
{
    switch (appData->alertsState) {
    case MAIN_MENU_ALERTS_STATE_WAIT:
        if (appData->alertsPending == FALSE) {
            return FALSE;
        }

        if (--appData->alertsPending == FALSE) {
            appData->alertsState = MAIN_MENU_ALERTS_STATE_LOAD_GRAPHICS;
        }

        return TRUE;
    case MAIN_MENU_ALERTS_STATE_LOAD_GRAPHICS:
        LoadStandardWindowGraphics(appData->bgConfig, BG_LAYER_MAIN_1, ALERT_WINDOW_FRAME_BASE_TILE, PLTT_2, STANDARD_WINDOW_SYSTEM, HEAP_ID_MAIN_MENU);
        Bg_ClearTilemap(appData->bgConfig, BG_LAYER_MAIN_1);
        *HW_BG_A_PLTT_COLOR(PLTT_2, 1) = UNFOCUSED_OPTION_BG_COLOR;
        appData->alertsState = MAIN_MENU_ALERTS_STATE_SHOW_NEXT_ALERT;
        break;
    case MAIN_MENU_ALERTS_STATE_SHOW_NEXT_ALERT: {
        MainMenuWindow window;
        MainMenuUtil_InitWindow(&window, &appData->alertWindow, PLTT_0, TEXT_BANK_MAIN_MENU_ALERTS, ALERT_WINDOW_FRAME_BASE_TILE, PLTT_2);

        int pendingAlerts = appData->pendingAlerts & ~appData->shownAlerts;

        MainMenuAlertTemplate *alertTemplate;

        if (pendingAlerts & MYSTERY_GIFT) {
            if (appData->extraUnlockedOptions & MYSTERY_GIFT) {
                alertTemplate = &sMainMenuAlerts[MAIN_MENU_ALERT_MYSTERY_GIFT_OK];
            } else {
                alertTemplate = &sMainMenuAlerts[MAIN_MENU_ALERT_MYSTERY_GIFT_NO_DEX];
            }
        } else if (pendingAlerts & RANGER_LINK) {
            if (appData->extraUnlockedOptions & RANGER_LINK) {
                alertTemplate = &sMainMenuAlerts[MAIN_MENU_ALERT_RANGER_MSG_OK];
            } else {
                alertTemplate = &sMainMenuAlerts[MAIN_MENU_ALERT_RANGER_MSG_NO_DEX];
            }
        } else if (pendingAlerts & NEW_GAME_WARN) {
            alertTemplate = &sMainMenuAlerts[MAIN_MENU_ALERT_NEW_GAME];
            pendingAlerts = 0;
        }

        appData->shownAlerts |= pendingAlerts;
        MainMenuWindow_SetDimensionsAndBasetile(&window, alertTemplate->width, alertTemplate->height, ALERT_WINDOW_CONTENT_BASE_TILE);

        window.bgLayer = BG_LAYER_MAIN_1;
        MainMenuUtil_ShowWindowAtPos(appData->bgConfig, &window, alertTemplate->x, alertTemplate->y, alertTemplate->textEntryID);

        Bg_ChangeTilemapRectPalette(appData->bgConfig, BG_LAYER_MAIN_1, Window_GetXPos(window.window), Window_GetYPos(window.window), Window_GetWidth(window.window), Window_GetHeight(window.window), PLTT_0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);

        appData->alertsDelay = 30;
        appData->alertsState = MAIN_MENU_ALERTS_STATE_WAIT_DISMISS;
    } break;
    case MAIN_MENU_ALERTS_STATE_WAIT_DISMISS:
        if (appData->alertsDelay) {
            appData->alertsDelay--;
        } else {
            if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
                Window_Remove(&appData->alertWindow);
                appData->alertsState = MAIN_MENU_ALERTS_STATE_HIDE_ALERT;
                appData->alertDismissKeys = gSystem.pressedKeys;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        }
        break;
    case MAIN_MENU_ALERTS_STATE_HIDE_ALERT:
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, TRUE);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);
        appData->alertsState = MAIN_MENU_ALERTS_STATE_WAIT;
        break;
    }

    return TRUE;
}

// Absolute value macro for 2's-complement 32-bit integers/fixed-point.
// No idea why the original developer didn't use the SDK's MATH_ABS
#define ABS_S32(x) (((x) ^ ((x) >> 31)) - ((x) >> 31))
static void DoScrollStep(MainMenuAppData *appData)
{
    if (appData->scrollPos != appData->scrollTarget) {
        fx32 scrollSpeed = (appData->scrollTarget - appData->scrollPos) / 4;

        if (ABS_S32(scrollSpeed) > MAX_SCROLL_SPEED) {
            if (scrollSpeed > 0) {
                scrollSpeed = MAX_SCROLL_SPEED;
            } else {
                scrollSpeed = -MAX_SCROLL_SPEED;
            }
        }

        appData->scrollPos += scrollSpeed;

        if (ABS_S32(appData->scrollTarget - appData->scrollPos) < FX32_ONE / 8) {
            appData->scrollPos = appData->scrollTarget;
        }

        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_MAIN_0, BG_OFFSET_UPDATE_SET_Y, appData->scrollPos / FX32_ONE);
        Bg_ScheduleScroll(appData->bgConfig, BG_LAYER_MAIN_2, BG_OFFSET_UPDATE_SET_Y, appData->scrollPos / FX32_ONE);
    }
}

static void InitMainMenuGraphics(MainMenuAppData *appData)
{
    GXBanks vramBanks = {
        GX_VRAM_BG_128_A,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_128_C,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_64_E,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_0_B,
        GX_VRAM_TEXPLTT_01_FG
    };
    GraphicsModes graphicsModes = {
        GX_DISPMODE_GRAPHICS,
        GX_BGMODE_0,
        GX_BGMODE_0,
        GX_BG0_AS_2D
    };

    GXLayers_SetBanks(&vramBanks);
    SetAllGraphicsModes(&graphicsModes);

    MainMenuUtil_InitBGLayer(appData->bgConfig, BG_LAYER_MAIN_0, BG_SCREEN_SIZE_256x512, GX_BG_SCRBASE_0xf000 * 0x800, GX_BG_CHARBASE_0x00000 * 0x4000);
    G2_SetBG0Priority(2);
    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_MAIN_MENU);

    MainMenuUtil_InitBGLayer(appData->bgConfig, BG_LAYER_MAIN_1, BG_SCREEN_SIZE_256x256, GX_BG_SCRBASE_0xd800 * 0x800, GX_BG_CHARBASE_0x08000 * 0x4000);
    G2_SetBG1Priority(1);
    Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_MAIN_MENU);

    MainMenuUtil_InitBGLayer(appData->bgConfig, BG_LAYER_MAIN_2, BG_SCREEN_SIZE_256x512, GX_BG_SCRBASE_0xe000 * 0x800, GX_BG_CHARBASE_0x00000 * 0x4000);
    G2_SetBG2Priority(0);
    Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_MAIN_MENU);

    Text_ResetAllPrinters();
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(PLTT_1), HEAP_ID_MAIN_MENU);
    Font_LoadTextPalette(PAL_LOAD_MAIN_BG, PLTT_OFFSET(PLTT_0), HEAP_ID_MAIN_MENU);

    *HW_BG_A_PLTT_COLOR(PLTT_0, 0) = COLOR_BLACK;
    *HW_BG_A_PLTT_COLOR(PLTT_1, 15) = UNFOCUSED_OPTION_BG_COLOR;

    LoadStandardWindowGraphics(appData->bgConfig, BG_LAYER_MAIN_0, UNFOCUSED_OPTION_FRAME_BASE_TILE, PLTT_2, STANDARD_WINDOW_SYSTEM, HEAP_ID_MAIN_MENU);
    LoadStandardWindowGraphics(appData->bgConfig, BG_LAYER_MAIN_0, FOCUSED_OPTION_FRAME_BASE_TILE, PLTT_3, STANDARD_WINDOW_FIELD, HEAP_ID_MAIN_MENU);

    *HW_BG_A_PLTT_COLOR(PLTT_2, 1) = UNFOCUSED_OPTION_BG_COLOR;
}

static void LoadScrollArrowsSprites(MainMenuAppData *appData)
{
    MainMenuUtil_InitCharPlttTransferBuffers();
    MainMenuUtil_InitSpriteLoader();
    MainMenuUtil_LoadSprite(NARC_INDEX_GRAPHIC__MYSTERY, main_menu_scroll_arrows_NCGR_lz, main_menu_scroll_arrows_NCLR, main_menu_scroll_arrows_cell_NCER_lz, main_menu_scroll_arrows_anim_NANR_lz, DS_SCREEN_MAIN);

    appData->scrollUpArrowSprite = MainMenuUtil_InitSprite(DS_SCREEN_MAIN, appData->scrollUpArrowSprite, HW_LCD_WIDTH / 2, SCROLL_ARROWS_OFFSET, 0);
    Sprite_SetDrawFlag(appData->scrollUpArrowSprite, FALSE);

    appData->scrollDownArrowSprite = MainMenuUtil_InitSprite(DS_SCREEN_MAIN, appData->scrollDownArrowSprite, HW_LCD_WIDTH / 2, HW_LCD_HEIGHT - SCROLL_ARROWS_OFFSET, 1);
    Sprite_SetDrawFlag(appData->scrollDownArrowSprite, FALSE);
}

static void LoadWirelessIconsGraphics(MainMenuAppData *appData)
{
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__MYSTERY, wireless_icons_NCLR, PAL_LOAD_MAIN_BG, PLTT_OFFSET(PLTT_4), PALETTE_SIZE_BYTES, HEAP_ID_MAIN_MENU);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__MYSTERY, wireless_icons_NCGR, appData->bgConfig, BG_LAYER_MAIN_2, WIRELESS_ICONS_TILES_OFFS, WIRELESS_ISONS_TILESET_SIZE * TILE_SIZE_4BPP, FALSE, HEAP_ID_MAIN_MENU);
}

static void DrawWirelessIcon(MainMenuAppData *appData, int column, int row, int type)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_2);
    // Local wireless icon
    int tilesIDStart = WIRELESS_ICONS_TILES_ID_START;

    if (type == WIRELESS_ICON_WIFI) {
        // Wi-Fi icon
        tilesIDStart = WIRELESS_ICONS_TILES_ID_START + 2;
    }

    // Top half
    tilemapBuffer[row * (HW_LCD_WIDTH / TILE_WIDTH_PIXELS) + column + 0] = tilesIDStart + 0;
    tilemapBuffer[row * (HW_LCD_WIDTH / TILE_WIDTH_PIXELS) + column + 1] = tilesIDStart + 1;

    row++;

    // Bottom half
    tilemapBuffer[row * (HW_LCD_WIDTH / TILE_WIDTH_PIXELS) + column + 0] = tilesIDStart + 8;
    tilemapBuffer[row * (HW_LCD_WIDTH / TILE_WIDTH_PIXELS) + column + 1] = tilesIDStart + 9;

    Bg_CopyTilemapBufferToVRAM(appData->bgConfig, BG_LAYER_MAIN_2);
}

static void ClearWirelessIcon(MainMenuAppData *appData, int column, int row)
{
    u16 *tilemapBuffer = (u16 *)Bg_GetTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_2);

    // Empty tile
    int tileID = WIRELESS_ICONS_TILES_ID_START + 4;

    tilemapBuffer[row * (HW_LCD_WIDTH / TILE_WIDTH_PIXELS) + column + 0] = tileID;
    tilemapBuffer[row * (HW_LCD_WIDTH / TILE_WIDTH_PIXELS) + column + 1] = tileID;

    row++;

    tilemapBuffer[row * (HW_LCD_WIDTH / TILE_WIDTH_PIXELS) + column + 0] = tileID;
    tilemapBuffer[row * (HW_LCD_WIDTH / TILE_WIDTH_PIXELS) + column + 1] = tileID;

    Bg_CopyTilemapBufferToVRAM(appData->bgConfig, BG_LAYER_MAIN_2);
}

static void PrintRightAlignedWithMargin(Window *window, MessageLoader *msgLoader, StringTemplate *strTemplate, TextColor textColor, u32 entryID, u32 yOffset)
{
    String *string = MessageUtil_ExpandedString(strTemplate, msgLoader, entryID, HEAP_ID_MAIN_MENU);
    u32 textWidth = Font_CalcStringWidth(FONT_SYSTEM, string, Font_GetAttribute(FONT_SYSTEM, FONTATTR_LETTER_SPACING));
    u32 xOffset = Window_GetWidth(window) * TILE_WIDTH_PIXELS - (textWidth + CONTINUE_WINDOW_MARGIN);

    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, xOffset, yOffset, TEXT_SPEED_NO_TRANSFER, textColor, NULL);
    String_Free(string);
}

static void SetTemplateNumberCustomFormatting(StringTemplate *strTemplate, int number)
{
    int maxDigits;
    enum PaddingMode paddingMode;

    if (number >= 100) {
        maxDigits = 3;
        paddingMode = PADDING_MODE_NONE;
    } else if (number >= 10) {
        maxDigits = 3;
        paddingMode = PADDING_MODE_SPACES;
    } else {
        maxDigits = 2;
        paddingMode = PADDING_MODE_SPACES;
    }

    StringTemplate_SetNumber(strTemplate, 0, number, maxDigits, paddingMode, CHARSET_MODE_EN);
}

static BOOL RenderContinueOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *window, int yPos)
{
    StringTemplate *strTemplate; // Forward-declaration required to match.

    MessageLoader *msgLoader = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_MAIN_MENU_OPTIONS, HEAP_ID_MAIN_MENU);
    strTemplate = StringTemplate_Default(HEAP_ID_MAIN_MENU);

    TextColor textColor;
    if (TrainerInfo_Gender(appData->trainerInfo) == GENDER_FEMALE) {
        textColor = TEXT_COLOR(3, 4, 15);
    } else {
        textColor = TEXT_COLOR(7, 8, 15);
    }

    MainMenuUtil_ShowWindowAtPos(appData->bgConfig, window, 3, yPos, sOptions[option].textEntryID);

    // Index 0 has the "Continue" string, which is printed separately
    for (int i = 1; i < NELEMS(sContinueOptionStringsIDs); i++) {
        if ((i == 4) && (appData->pokedexObtained == FALSE)) {
            continue;
        }

        String *string = MessageUtil_ExpandedString(strTemplate, msgLoader, sContinueOptionStringsIDs[i], HEAP_ID_MAIN_MENU);
        Text_AddPrinterWithParamsAndColor(window->window, FONT_SYSTEM, string, CONTINUE_WINDOW_MARGIN, TEXT_LINES(i), TEXT_SPEED_NO_TRANSFER, textColor, NULL);
        String_Free(string);
    }

    StringTemplate_SetPlayerName(strTemplate, 0, appData->trainerInfo);
    PrintRightAlignedWithMargin(window->window, msgLoader, strTemplate, textColor, MainMenuOptions_Text_PlayerName, TEXT_LINES(1));

    SetTemplateNumberCustomFormatting(strTemplate, PlayTime_GetHours(appData->playTime));
    StringTemplate_SetNumber(strTemplate, 1, PlayTime_GetMinutes(appData->playTime), 2, PADDING_MODE_ZEROES, CHARSET_MODE_EN);
    PrintRightAlignedWithMargin(window->window, msgLoader, strTemplate, textColor, MainMenuOptions_Text_PlayTime, TEXT_LINES(2));

    StringTemplate_SetNumber(strTemplate, 0, appData->badgeCount, 1, PADDING_MODE_NONE, CHARSET_MODE_EN);
    PrintRightAlignedWithMargin(window->window, msgLoader, strTemplate, textColor, MainMenuOptions_Text_BadgeCount, TEXT_LINES(3));

    if (appData->pokedexObtained) {
        SetTemplateNumberCustomFormatting(strTemplate, Pokedex_CountSeen(appData->pokedex));
        PrintRightAlignedWithMargin(window->window, msgLoader, strTemplate, textColor, MainMenuOptions_Text_SeenSpeciesCount, TEXT_LINES(4));
    }

    Window_DrawStandardFrame(window->window, FALSE, window->frameBaseTile, window->framePltt);

    appData->optionApps[option] = sOptions[option].appToLoad;

    StringTemplate_Free(strTemplate);
    MessageLoader_Free(msgLoader);

    return TRUE;
}

static BOOL RenderGBAMigrationOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *window, int yPos)
{
    if (appData->agbGameType == 0) {
        return FALSE;
    }

    int optionTextID;
    switch (appData->agbGameType - 1) {
    case AGB_TYPE_RUBY:
        optionTextID = MainMenuOptions_Text_MigrateFromRuby;
        break;
    case AGB_TYPE_SAPPHIRE:
        optionTextID = MainMenuOptions_Text_MigrateFromSapphire;
        break;
    case AGB_TYPE_LEAFGREEN:
        optionTextID = MainMenuOptions_Text_MigrateFromLeafgreen;
        break;
    case AGB_TYPE_FIRERED:
        optionTextID = MainMenuOptions_Text_MigrateFromFirered;
        break;
    case AGB_TYPE_EMERALD:
        optionTextID = MainMenuOptions_Text_MigrateFromEmerald;
        break;
    }

    MainMenuUtil_ShowWindowAtPos(appData->bgConfig, window, 3, yPos, optionTextID);
    ClearWirelessIcon(appData, OPTION_WINDOW_WIDTH, yPos);

    appData->optionApps[option] = sOptions[option].appToLoad;

    return TRUE;
}

static BOOL RenderMysteryGiftOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *window, int yPos)
{
    if (appData->mysteryGiftUnlocked == FALSE) {
        if (MysteryGift_GetMysteryGiftUnlockedFlag(appData->mysteryGift) == TRUE) {
            appData->mysteryGiftUnlocked = TRUE;
        }

        if (SystemData_IsMysteryGiftUnlocked(SaveData_GetSystemData(appData->saveData)) == TRUE) {
            appData->mysteryGiftUnlocked = TRUE;
        }

        DistributionCartridge_UseHeap(HEAP_ID_MAIN_MENU);

        if (DistributionCartridge_ReadLength()) {
            appData->mysteryGiftUnlocked = TRUE;
            MainMenuUtil_ToggleTerminateOnGBACartRemoved(TRUE);
        }
    }

    if (appData->mysteryGiftUnlocked == TRUE) {
        if (appData->pokedexObtained == FALSE) {
            appData->mysteryGiftUnlocked = FALSE;
        }
    }

    if (appData->mysteryGiftUnlocked == TRUE) {
        MainMenuUtil_ShowWindowAtPos(appData->bgConfig, window, 3, yPos, sOptions[option].textEntryID);
        ClearWirelessIcon(appData, OPTION_WINDOW_WIDTH, yPos);

        appData->optionApps[option] = sOptions[option].appToLoad;
        appData->extraUnlockedOptions |= MYSTERY_GIFT;

        MysteryGift_SetMysteryGiftUnlockedFlag(appData->mysteryGift);
        return TRUE;
    }

    return FALSE;
}

static BOOL RenderRangerLinkOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *window, int yPos)
{
    if ((appData->rangerLinkAvailable == TRUE) && (appData->pokedexObtained == TRUE)) {
        MainMenuUtil_ShowWindowAtPos(appData->bgConfig, window, 3, yPos, sOptions[option].textEntryID);
        DrawWirelessIcon(appData, OPTION_WINDOW_WIDTH, yPos, WIRELESS_ICON_LOCAL);

        appData->optionWirelessIconTypes[option] = WIRELESS_ICON_LOCAL;
        appData->optionApps[option] = sOptions[option].appToLoad;
        appData->extraUnlockedOptions |= RANGER_LINK;

        return TRUE;
    }

    return FALSE;
}

static BOOL RenderWiiConnectionOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *window, int yPos)
{
    if (appData->wiiConnectionAvailable == TRUE) {
        MainMenuUtil_ShowWindowAtPos(appData->bgConfig, window, 3, yPos, sOptions[option].textEntryID);
        appData->optionWirelessIconTypes[option] = WIRELESS_ICON_LOCAL;

        DrawWirelessIcon(appData, OPTION_WINDOW_WIDTH, yPos, WIRELESS_ICON_LOCAL);
        appData->optionApps[option] = sOptions[option].appToLoad;
        return TRUE;
    }

    return FALSE;
}

static BOOL RenderWFCSettingsOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *window, int yPos)
{
    MainMenuUtil_ShowWindowAtPos(appData->bgConfig, window, 3, yPos, sOptions[option].textEntryID);
    appData->optionWirelessIconTypes[option] = WIRELESS_ICON_WIFI;

    DrawWirelessIcon(appData, OPTION_WINDOW_WIDTH, yPos, WIRELESS_ICON_WIFI);
    appData->optionApps[option] = sOptions[option].appToLoad;

    return TRUE;
}

static BOOL RenderWiiMsgSettingsOption(MainMenuAppData *appData, enum MainMenuOption option, MainMenuWindow *window, int yPos)
{
    MainMenuUtil_ShowWindowAtPos(appData->bgConfig, window, 3, yPos, sOptions[option].textEntryID);
    appData->optionWirelessIconTypes[option] = WIRELESS_ICON_NONE;

    ClearWirelessIcon(appData, OPTION_WINDOW_WIDTH, yPos);
    appData->optionApps[option] = sOptions[option].appToLoad;

    return 1;
}

static BOOL RenderOptions(MainMenuAppData *appData)
{
    int i; // Forward declaration required to match.

    int renderedCustomRenderedOption = FALSE;
    int nextOptionY = 1;

    appData->nextOptionBasetile = OPTION_WINDOWS_BASE_TILE_START;

    for (i = 0; i < (sizeof(sOptions) / sizeof(MainMenuOptionTemplate)); i++) {
        MainMenuOptionTemplate *option = &sOptions[i];

        MainMenuWindow window;
        MainMenuUtil_InitWindow(&window, &appData->optionWindows[i], PLTT_1, TEXT_BANK_MAIN_MENU_OPTIONS, UNFOCUSED_OPTION_FRAME_BASE_TILE, PLTT_2);
        MainMenuWindow_SetDimensionsAndBasetile(&window, OPTION_WINDOW_WIDTH, option->height, appData->nextOptionBasetile);

        if (option->renderFunc) {
            if (appData->optionApps[i]) {
                Window_SetXPos(window.window, 3);
                Window_SetYPos(window.window, nextOptionY);
                Window_DrawStandardFrame(window.window, FALSE, window.frameBaseTile, window.framePltt);

                if (appData->optionWirelessIconTypes[i]) {
                    DrawWirelessIcon(appData, OPTION_WINDOW_WIDTH, nextOptionY, appData->optionWirelessIconTypes[i]);
                } else {
                    ClearWirelessIcon(appData, OPTION_WINDOW_WIDTH, nextOptionY);
                }

                nextOptionY += option->height + 2; // Add 2 to account for the window border
                renderedCustomRenderedOption = TRUE;
            } else if (option->renderFunc(appData, i, &window, nextOptionY) == TRUE) {
                nextOptionY += option->height + 2; // Add 2 to account for the window border
                renderedCustomRenderedOption = TRUE;
            }
        } else {
            MainMenuUtil_ShowWindowAtPos(appData->bgConfig, &window, 3, nextOptionY, option->textEntryID);
            appData->optionApps[i] = option->appToLoad;
            nextOptionY += option->height + 2; // Add 2 to account for the window border
        }

        appData->nextOptionBasetile += OPTION_WINDOW_WIDTH * option->height;
    }

    return renderedCustomRenderedOption;
}

static void RenderOptionsFrames(MainMenuAppData *appData, enum MainMenuOption focusedOption)
{
    for (int i = 0; i < sizeof(sOptions) / sizeof(MainMenuOptionTemplate); i++) {
        if (Window_IsInUse(&appData->optionWindows[i]) == FALSE) {
            continue;
        }

        if (i == focusedOption) {
            Window_DrawStandardFrame(&appData->optionWindows[i], TRUE, FOCUSED_OPTION_FRAME_BASE_TILE, PLTT_3);
            Bg_ChangeTilemapRectPalette(appData->bgConfig, BG_LAYER_MAIN_0, Window_GetXPos(&appData->optionWindows[i]), Window_GetYPos(&appData->optionWindows[i]), Window_GetWidth(&appData->optionWindows[i]), Window_GetHeight(&appData->optionWindows[i]), PLTT_0);
        } else {
            Window_DrawStandardFrame(&appData->optionWindows[i], TRUE, UNFOCUSED_OPTION_FRAME_BASE_TILE, PLTT_2);
            Bg_ChangeTilemapRectPalette(appData->bgConfig, BG_LAYER_MAIN_0, Window_GetXPos(&appData->optionWindows[i]), Window_GetYPos(&appData->optionWindows[i]), Window_GetWidth(&appData->optionWindows[i]), Window_GetHeight(&appData->optionWindows[i]), PLTT_1);
        }
    }

    Bg_CopyTilemapBufferToVRAM(appData->bgConfig, BG_LAYER_MAIN_0);
}

static void FocusNextOption(MainMenuAppData *appData, int direction)
{
    int nextFocused = appData->focusedOption;

    while (TRUE) {
        nextFocused += direction;

        // Top of the list
        if (nextFocused == -1) {
            nextFocused = 0;
        }

        // Bottom of the list
        if (nextFocused == NELEMS(sOptions)) {
            nextFocused = NELEMS(sOptions) - 1;
        }

        // Reached either the top or the bottom of the list
        if (nextFocused == appData->focusedOption) {
            break;
        }

        // Found an available option
        if (appData->optionApps[nextFocused]) {
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        }
    }

    appData->focusedOption = nextFocused;
}

static void TargetFocusedOptionForScroll(MainMenuAppData *appData)
{
    int targetWindowY = (Window_GetYPos(&appData->optionWindows[appData->focusedOption]) - 1) * TILE_HEIGHT_PIXELS;
    int targetWindowHeight = (Window_GetHeight(&appData->optionWindows[appData->focusedOption]) + 2) * TILE_HEIGHT_PIXELS;
    int scrollTarget = appData->scrollTarget / FX32_ONE;

    if (scrollTarget > targetWindowY) {
        appData->scrollTarget = targetWindowY * FX32_ONE;
    }

    if (scrollTarget + HW_LCD_HEIGHT <= targetWindowY) {
        appData->scrollTarget = ((targetWindowY + targetWindowHeight) - HW_LCD_HEIGHT) * FX32_ONE;
    }
}

static void DrawScrollArrows(MainMenuAppData *appData)
{
    BOOL canScrollUp, canScrollDown;
    canScrollUp = canScrollDown = FALSE;

    int scrollTarget = appData->scrollTarget / FX32_ONE;

    for (int i = 0; i < NELEMS(sOptions); i++) {
        if (Window_IsInUse(&appData->optionWindows[i]) == FALSE) {
            continue;
        }

        // -1 and +2 to account for the window frame
        int windowPosition = (Window_GetYPos(&appData->optionWindows[i]) - 1) * TILE_HEIGHT_PIXELS;
        int windowHeight = (Window_GetHeight(&appData->optionWindows[i]) + 2) * TILE_HEIGHT_PIXELS;

        if (scrollTarget > windowPosition) {
            canScrollUp = TRUE;
        }

        if (scrollTarget + HW_LCD_HEIGHT <= windowPosition) {
            canScrollDown = TRUE;
        }
    }

    Sprite_SetDrawFlag(appData->scrollUpArrowSprite, canScrollUp);
    Sprite_SetDrawFlag(appData->scrollDownArrowSprite, canScrollDown);
}

static void FreeApplicationResources(ApplicationManager *appMan)
{
    MainMenuAppData *appData = ApplicationManager_Data(appMan);

    if (appData->scrollUpArrowSprite || appData->scrollDownArrowSprite) {
        Sprite_Delete(appData->scrollUpArrowSprite);
        Sprite_Delete(appData->scrollDownArrowSprite);
        MainMenuUtil_FreeSprites();
    }

    for (int i = 0; i < NELEMS(sOptions); i++) {
        if (appData->optionWindows[i].bgConfig) {
            Window_ClearAndCopyToVRAM(&appData->optionWindows[i]);
            Window_Remove(&appData->optionWindows[i]);
        }
    }

    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_0);
    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(appData->bgConfig, BG_LAYER_MAIN_2);
    Heap_Free(appData->bgConfig);
    SetVBlankCallback(NULL, NULL);
}

// clang-format off
static GXRgb sFocusedOptionBorderColors[] = {
    GX_RGB( 1, 28, 20),
    GX_RGB( 3, 28, 20),
    GX_RGB( 5, 28, 20),
    GX_RGB( 7, 28, 20),
    GX_RGB( 9, 28, 20),
    GX_RGB(11, 28, 20),
    GX_RGB(13, 28, 20),
    GX_RGB(15, 28, 20),
    GX_RGB(17, 28, 20),
    GX_RGB(19, 28, 20),
    GX_RGB(21, 28, 20),
    GX_RGB(23, 28, 20),
    GX_RGB(25, 28, 20),
    GX_RGB(27, 28, 20),
    GX_RGB(29, 28, 20),
    GX_RGB(31, 28, 20),
    GX_RGB(29, 28, 20),
    GX_RGB(27, 28, 20),
    GX_RGB(25, 28, 20),
    GX_RGB(23, 28, 20),
    GX_RGB(21, 28, 20),
    GX_RGB(19, 28, 20),
    GX_RGB(17, 28, 20),
    GX_RGB(15, 28, 20),
    GX_RGB(13, 28, 20),
    GX_RGB(11, 28, 20),
    GX_RGB( 9, 28, 20),
    GX_RGB( 7, 28, 20),
    GX_RGB( 5, 28, 20),
    GX_RGB( 3, 28, 20),
    COLORS_LIST_END
};
// clang-format on

static void DoColorCycleStep(MainMenuAppData *appData)
{
    GXRgb *focusedOptionBorderColor = HW_BG_A_PLTT_COLOR(PLTT_3, 6);

    if (sFocusedOptionBorderColors[appData->focusedBorderCycleIndex] == COLORS_LIST_END) {
        appData->focusedBorderCycleIndex = 0;
    }

    *focusedOptionBorderColor = sFocusedOptionBorderColors[appData->focusedBorderCycleIndex++];
}

static void MainMenuVBlankCallback(void *data)
{
    VramTransfer_Process();
    RenderOam_Transfer();
    Bg_RunScheduledUpdates((BgConfig *)data);

    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static BOOL MainMenu_Init(ApplicationManager *appMan, int *unused)
{
    Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_MAIN_MENU, HEAP_SIZE_MAIN_MENU);

    MainMenuAppData *appData = ApplicationManager_NewData(appMan, sizeof(MainMenuAppData), HEAP_ID_MAIN_MENU);
    memset(appData, 0, sizeof(MainMenuAppData));
    appData->bgConfig = BgConfig_New(HEAP_ID_MAIN_MENU);

    SetScreenColorBrightness(DS_SCREEN_MAIN, COLOR_BLACK);
    SetScreenColorBrightness(DS_SCREEN_SUB, COLOR_BLACK);

    appData->saveData = ((ApplicationArgs *)ApplicationManager_Args(appMan))->saveData;
    appData->mysteryGift = SaveData_GetMysteryGift(appData->saveData);
    appData->scrollPos = FX32_CONST(0);
    appData->scrollTarget = FX32_CONST(0);
    appData->trainerInfo = SaveData_GetTrainerInfo(appData->saveData);
    appData->pokedex = SaveData_GetPokedex(appData->saveData);
    appData->playTime = SaveData_GetPlayTime(appData->saveData);
    appData->pokedexObtained = Pokedex_IsObtained(appData->pokedex);
    appData->badgeCount = TrainerInfo_BadgeCount(appData->trainerInfo);
    appData->alertsState = MAIN_MENU_ALERTS_STATE_WAIT;

    MainMenuUtil_Init(HEAP_ID_MAIN_MENU);

    if (!SaveData_DataExists(appData->saveData)) {
        appData->isNewGame = TRUE;
    }

    Sound_ConfigureBGMChannelsAndReverb(SOUND_CHANNEL_CONFIG_DEFAULT);
    Sound_SetScene(SOUND_SCENE_NONE);

    return TRUE;
}

static BOOL MainMenu_Main(ApplicationManager *appMan, int *state)
{
    MainMenuAppData *appData = ApplicationManager_Data(appMan);

    appData->framesCounter++;
    CTRDG_IsExisting();

    if (ShowAlerts(appData) == TRUE) {
        DetectWirelessConnections(appData);
        DoScrollStep(appData);
        return FALSE;
    }

    DoColorCycleStep(appData);

    switch (*state) {
    case MAIN_MENU_STATE_INIT_GRAPHICS:
        InitMainMenuGraphics(appData);
        *state = MAIN_MENU_STATE_CHECK_WFC_USER_INFO;
        break;
    case MAIN_MENU_STATE_CHECK_WFC_USER_INFO:
        if (CheckWFCUserInfoErased(appData) == FALSE) {
            *state = MAIN_MENU_STATE_CHECK_NEW_GAME_AND_GBA;
        } else {
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_IN, MAIN_MENU_STATE_WARM_WFC_USER_INFO_ERASED, state, MAIN_MENU_STATE_WAIT_SCREEN_TRANSITION);
            *HW_BG_A_PLTT_COLOR(PLTT_0, 0) = BACKGROUND_COLOR;
        }
        break;
    case MAIN_MENU_STATE_WARM_WFC_USER_INFO_ERASED:
        if (ShowWFCUserInfoErasedMsg(appData) == FALSE) {
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, MAIN_MENU_STATE_CHECK_NEW_GAME_AND_GBA, state, MAIN_MENU_STATE_WAIT_SCREEN_TRANSITION);
        }
        break;
    case MAIN_MENU_STATE_CHECK_NEW_GAME_AND_GBA:
        appData->wirelessCheckState = MAIN_MENU_WIRELESS_CHECK_IDLE;

        if (appData->isNewGame == TRUE) {
            appData->nextApplication = NEXT_APP_GAME_INTRO;
            MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, MAIN_MENU_STATE_EXIT, state, MAIN_MENU_STATE_WAIT_SCREEN_TRANSITION);
        } else {
            DetectGBAGame(appData);
            *state = MAIN_MENU_STATE_LOAD_GRAPHICS;
        }
        break;
    case MAIN_MENU_STATE_LOAD_GRAPHICS:
        LoadScrollArrowsSprites(appData);
        LoadWirelessIconsGraphics(appData);

        SetVBlankCallback(MainMenuVBlankCallback, appData->bgConfig);

        RenderOptions(appData);
        RenderOptionsFrames(appData, appData->focusedOption);
        MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_IN, MAIN_MENU_STATE_SELECT_OPTION, state, MAIN_MENU_STATE_WAIT_SCREEN_TRANSITION);

        *HW_BG_A_PLTT_COLOR(PLTT_0, 0) = BACKGROUND_COLOR;
        appData->wirelessCheckState = MAIN_MENU_WIRELESS_CHECK_START;
        break;
    case MAIN_MENU_STATE_SELECT_OPTION:
        if (JOY_NEW(PAD_BUTTON_A | PAD_BUTTON_B)) {
            if (JOY_NEW(PAD_BUTTON_A)) {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                appData->nextApplication = appData->optionApps[appData->focusedOption];

                if (appData->nextApplication == NEXT_APP_GBA_MIGRATION) {
                    if (CTRDG_IsPulledOut() == TRUE) {
                        if (appData->wirelessCheckState != MAIN_MENU_WIRELESS_CHECK_IDLE) {
                            sub_02037D84();
                        }

                        sub_0209A8E0(HEAP_ID_MAIN_MENU);
                    }
                }
            } else {
                Sound_PlayEffect(SEQ_SE_CONFIRM);
                appData->nextApplication = NEXT_APP_TITLE_SCREEN;
                MainMenuUtil_SetFadeToWhite(TRUE);
            }

            if (appData->nextApplication == NEXT_APP_GAME_INTRO) {
                appData->pendingAlerts |= NEW_GAME_WARN;
                appData->alertsPending = TRUE;
                *state = MAIN_MENU_STATE_CONFIRM_NEW_GAME;
            } else {
                if ((appData->nextApplication == NEXT_APP_WII_CONNECTION) || (appData->nextApplication == NEXT_APP_WFC_SETTINGS)) {
                    MainMenuUtil_SetFadeToWhite(TRUE);
                }

                MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, MAIN_MENU_STATE_EXIT, state, MAIN_MENU_STATE_WAIT_SCREEN_TRANSITION);
            }

            if (appData->wirelessCheckState == MAIN_MENU_WIRELESS_CHECK_CHECK_RESULT) {
                appData->wirelessCheckState = MAIN_MENU_WIRELESS_CHECK_STOP;
            }
            break;
        }

        if (appData->shouldUpdateOptions == TRUE) {
            RenderOptions(appData);
            appData->shouldUpdateOptions = FALSE;
            break;
        }

        if (JOY_NEW(PAD_KEY_UP)) {
            FocusNextOption(appData, DIRECTION_UP);
        }

        if (JOY_NEW(PAD_KEY_DOWN)) {
            FocusNextOption(appData, DIRECTION_DOWN);
        }

        RenderOptionsFrames(appData, appData->focusedOption);
        TargetFocusedOptionForScroll(appData);
        DrawScrollArrows(appData);

        if (*state == MAIN_MENU_STATE_SELECT_OPTION && appData->newAlerts == TRUE) {
            appData->newAlerts = FALSE;
            appData->alertsPending = TRUE;
        }
        break;
    case MAIN_MENU_STATE_CONFIRM_NEW_GAME:
        if (appData->alertsState == MAIN_MENU_ALERTS_STATE_WAIT) {
            if (appData->alertDismissKeys & PAD_BUTTON_B) {
                *state = MAIN_MENU_STATE_SELECT_OPTION;
            } else {
                MainMenuUtil_StartScreenFadeToState(FADE_TYPE_BRIGHTNESS_OUT, MAIN_MENU_STATE_EXIT, state, MAIN_MENU_STATE_WAIT_SCREEN_TRANSITION);
            }
        }
        break;
    case MAIN_MENU_STATE_EXIT:
        FreeApplicationResources(appMan);
        return TRUE;
        break;
    case MAIN_MENU_STATE_WAIT_SCREEN_TRANSITION:
        MainMenuUtil_CheckScreenFadeDone(state);
        break;
    case MAIN_MENU_STATE_UNUSED_9:
        return TRUE;
        break;
    }

    DetectWirelessConnections(appData);
    DoScrollStep(appData);
    MainMenuUtil_UpdateSprites();

    return FALSE;
}

extern const ApplicationManagerTemplate gMysteryGiftAppTemplate;
extern const ApplicationManagerTemplate gGBAMigratorAppTemplate;
extern const ApplicationManagerTemplate gRangerLinkAppTemplate;
extern const ApplicationManagerTemplate gRebootIntoWFCSettingsAppTemplate;
extern const ApplicationManagerTemplate gWiiMessageAppTemplate;

static void EnqueueNextApplication(MainMenuAppData *appData)
{
    switch (appData->nextApplication) {
    case NEXT_APP_LOAD_SAVE:
        EnqueueApplication(FS_OVERLAY_ID(game_start), &gGameStartLoadSaveAppTemplate);
        break;
    case NEXT_APP_GAME_INTRO:
        EnqueueApplication(FS_OVERLAY_ID(game_start), &gGameStartRowanIntroAppTemplate);
        break;
    case NEXT_APP_MYSTERY_GIFT:
        EnqueueApplication(FS_OVERLAY_ID(main_menu), &gMysteryGiftAppTemplate);
        break;
    case NEXT_APP_GBA_MIGRATION:
        EnqueueApplication(FS_OVERLAY_ID(main_menu), &gGBAMigratorAppTemplate);
        break;
    case NEXT_APP_RANGER_LINK:
        EnqueueApplication(FS_OVERLAY_ID(main_menu), &gRangerLinkAppTemplate);
        break;
    case NEXT_APP_WII_CONNECTION:
        RebootAndLoadROM("data/eoo.dat");
        break;
    case NEXT_APP_WFC_SETTINGS:
        Sound_StopWaveOutAndSequences();
        EnqueueApplication(FS_OVERLAY_ID_NONE, &gRebootIntoWFCSettingsAppTemplate);
        break;
    case NEXT_APP_WII_MSG_SETTINGS:
        Sound_StopWaveOutAndSequences();
        EnqueueApplication(FS_OVERLAY_ID(overlay98), &gWiiMessageAppTemplate);
        break;
    case NEXT_APP_TITLE_SCREEN:
        EnqueueApplication(FS_OVERLAY_ID(game_opening), &gTitleScreenAppTemplate);
        break;
    }
}

static BOOL MainMenu_Exit(ApplicationManager *appMan, int *unused)
{
    MainMenuAppData *appData = ApplicationManager_Data(appMan);

    EnqueueNextApplication(appData);

    ApplicationManager_FreeData(appMan);
    Heap_Destroy(HEAP_ID_MAIN_MENU);

    MainMenuUtil_ToggleTerminateOnGBACartRemoved(FALSE);

    return TRUE;
}

const ApplicationManagerTemplate gMainMenuAppTemplate = {
    MainMenu_Init,
    MainMenu_Main,
    MainMenu_Exit,
    FS_OVERLAY_ID_NONE
};
