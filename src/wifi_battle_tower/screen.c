#include "wifi_battle_tower/screen.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/net.h"

#include "struct_defs/wifi_battle_tower_data.h"

#include "nintendo_wfc/main.h"
#include "overlay096/struct_wifi_player_profile.h"
#include "wifi_battle_tower/app_state.h"
#include "wifi_battle_tower/application.h"
#include "wifi_battle_tower/http.h"

#include "bg_window.h"
#include "comm_manager.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "inlines.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "network_icon.h"
#include "render_window.h"
#include "savedata.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "system_data.h"
#include "text.h"
#include "unk_02030CE8.h"
#include "unk_02073700.h"
#include "wifi_battle_tower_save.h"

#define POPUP_TILEMAP_TOP 13

static void WifiBattleTower_SetupBgLayers(BgConfig *bgConfig);
static void WifiBattleTower_FreeBgLayers(BgConfig *bgConfig);
static void WifiBattleTower_LoadGraphics(WifiBattleTowerAppState *appState);
static void WifiBattleTower_CreateWindows(WifiBattleTowerAppState *appState);
static void WifiBattleTower_RemoveWindows(WifiBattleTowerAppState *appState);
static void WifiBattleTower_InitStrings(WifiBattleTowerAppState *appState);
static void WifiBattleTower_FreeStrings(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_InitialPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_InitialYesNoMenu(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_ConnectedYesNoMenu(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_InitInet(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitInetConnect(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_InitNasLogin(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitNasLogin(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_InitHttp(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_RequestInfo(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_Idle(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_EndSession(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_DisconnectYesNo(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitText(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitTextYesNo(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitTextTimed(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_ShowError(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_ErrorCleanup(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitInfo(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_ConnectedPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_ShowDwcError(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_DwcErrorAck(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_SetProfile(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitSetProfile(WifiBattleTowerAppState *appState);
static void WifiBattleTower_DisplayMessage(WifiBattleTowerAppState *appState, MessageLoader *msgLoader, int msgIndex, int textSpeed, u16 unused);
static void WifiBattleTower_DisplayFormattedMessage(WifiBattleTowerAppState *appState, MessageLoader *msgLoader, int msgIndex, int textSpeed, u16 unused);
static void Window_DrawNumber(Window *window, String *string, int num, int maxDigits);
static void WifiBattleTower_ShowPopupMessage(WifiBattleTowerAppState *appState, int msgIndex);
static void WifiBattleTower_ShowDwcErrorPopup(WifiBattleTowerAppState *appState, int errCode, int rawErrorCode);
static int WifiBattleTower_State_RequestRoomCount(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitRoomCount(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_SelectOpponentPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_DrawOpponentSelect(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_SelectOpponent(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_ExitPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_ExitYesNo(WifiBattleTowerAppState *appState);
static void WifiBattleTower_SetSelectionArrowsVisible(WifiBattleTowerAppState *appState, int selectionMode, int visible);
static int WifiBattleTower_State_DownloadPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_RequestDownload(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitDownload(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_DownloadCompletePrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_UploadPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_RequestUpload(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitUpload(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_UploadCompletePrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_SelectRankPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_DrawRankSelect(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_SelectRank(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_ExitMatchListPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_ExitMatchListYesNo(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_AlreadyChallengedPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_DownloadMatchListPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_MatchListSelectPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_DrawMatchListSelect(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_SelectMatchList(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_RequestMatchList(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitMatchList(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_MatchListCompletePrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_DisconnectEntry(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_InitSave(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_WaitSave(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_DisconnectingPrompt(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_CleanupInet(WifiBattleTowerAppState *appState);
static int WifiBattleTower_State_GoodbyePrompt(WifiBattleTowerAppState *appState);
static int Window_CalcAlignedTextX(Window *window, String *string, int xOffset, int alignment, u32 unused, int font);
static void WifiBattleTower_ShowWaitDial(WifiBattleTowerAppState *appState);
static void WifiBattleTower_HideWaitDial(WifiBattleTowerAppState *appState);

// clang-format off
static int (*sStateFunctions[])(WifiBattleTowerAppState *) = {
    [BT_STATE_INITIAL_PROMPT]            = WifiBattleTower_State_InitialPrompt,
    [BT_STATE_INITIAL_YES_NO_MENU]       = WifiBattleTower_State_InitialYesNoMenu,
    [BT_STATE_INIT_INET]                 = WifiBattleTower_State_InitInet,
    [BT_STATE_WAIT_INET_CONNECT]         = WifiBattleTower_State_WaitInetConnect,
    [BT_STATE_INIT_NAS_LOGIN]            = WifiBattleTower_State_InitNasLogin,
    [BT_STATE_WAIT_NAS_LOGIN]            = WifiBattleTower_State_WaitNasLogin,
    [BT_STATE_INIT_HTTP]                 = WifiBattleTower_State_InitHttp,
    [BT_STATE_REQUEST_INFO]              = WifiBattleTower_State_RequestInfo,
    [BT_STATE_WAIT_INFO]                 = WifiBattleTower_State_WaitInfo,
    [BT_STATE_SET_PROFILE]               = WifiBattleTower_State_SetProfile,
    [BT_STATE_WAIT_SET_PROFILE]          = WifiBattleTower_State_WaitSetProfile,
    [BT_STATE_REQUEST_ROOM_COUNT]        = WifiBattleTower_State_RequestRoomCount,
    [BT_STATE_WAIT_ROOM_COUNT]           = WifiBattleTower_State_WaitRoomCount,
    [BT_STATE_SELECT_OPPONENT_PROMPT]    = WifiBattleTower_State_SelectOpponentPrompt,
    [BT_STATE_DRAW_OPPONENT_SELECT]      = WifiBattleTower_State_DrawOpponentSelect,
    [BT_STATE_SELECT_OPPONENT]           = WifiBattleTower_State_SelectOpponent,
    [BT_STATE_DOWNLOAD_PROMPT]           = WifiBattleTower_State_DownloadPrompt,
    [BT_STATE_REQUEST_DOWNLOAD]          = WifiBattleTower_State_RequestDownload,
    [BT_STATE_WAIT_DOWNLOAD]             = WifiBattleTower_State_WaitDownload,
    [BT_STATE_DOWNLOAD_COMPLETE_PROMPT]  = WifiBattleTower_State_DownloadCompletePrompt,
    [BT_STATE_ALREADY_CHALLENGED_PROMPT] = WifiBattleTower_State_AlreadyChallengedPrompt,
    [BT_STATE_EXIT_PROMPT]               = WifiBattleTower_State_ExitPrompt,
    [BT_STATE_EXIT_YES_NO]               = WifiBattleTower_State_ExitYesNo,
    [BT_STATE_EXIT_MATCH_LIST_PROMPT]    = WifiBattleTower_State_ExitMatchListPrompt,
    [BT_STATE_EXIT_MATCH_LIST_YES_NO]    = WifiBattleTower_State_ExitMatchListYesNo,
    [BT_STATE_UPLOAD_PROMPT]             = WifiBattleTower_State_UploadPrompt,
    [BT_STATE_REQUEST_UPLOAD]            = WifiBattleTower_State_RequestUpload,
    [BT_STATE_WAIT_UPLOAD]               = WifiBattleTower_State_WaitUpload,
    [BT_STATE_UPLOAD_COMPLETE_PROMPT]    = WifiBattleTower_State_UploadCompletePrompt,
    [BT_STATE_SELECT_RANK_PROMPT]        = WifiBattleTower_State_SelectRankPrompt,
    [BT_STATE_DRAW_RANK_SELECT]          = WifiBattleTower_State_DrawRankSelect,
    [BT_STATE_SELECT_RANK]               = WifiBattleTower_State_SelectRank,
    [BT_STATE_MATCH_LIST_SELECT_PROMPT]  = WifiBattleTower_State_MatchListSelectPrompt,
    [BT_STATE_DRAW_MATCH_LIST_SELECT]    = WifiBattleTower_State_DrawMatchListSelect,
    [BT_STATE_SELECT_MATCH_LIST]         = WifiBattleTower_State_SelectMatchList,
    [BT_STATE_DOWNLOAD_MATCH_LIST_PROMPT]= WifiBattleTower_State_DownloadMatchListPrompt,
    [BT_STATE_REQUEST_MATCH_LIST]        = WifiBattleTower_State_RequestMatchList,
    [BT_STATE_WAIT_MATCH_LIST]           = WifiBattleTower_State_WaitMatchList,
    [BT_STATE_MATCH_LIST_COMPLETE_PROMPT]= WifiBattleTower_State_MatchListCompletePrompt,
    [BT_STATE_INIT_SAVE]                 = WifiBattleTower_State_InitSave,
    [BT_STATE_WAIT_SAVE]                 = WifiBattleTower_State_WaitSave,
    [BT_STATE_GOODBYE_PROMPT]            = WifiBattleTower_State_GoodbyePrompt,
    [BT_STATE_CLEANUP_INET]              = WifiBattleTower_State_CleanupInet,
    [BT_STATE_DISCONNECTING_PROMPT]      = WifiBattleTower_State_DisconnectingPrompt,
    [BT_STATE_IDLE]                      = WifiBattleTower_State_Idle,
    [BT_STATE_DISCONNECT_ENTRY]          = WifiBattleTower_State_DisconnectEntry,
    [BT_STATE_END_SESSION]               = WifiBattleTower_State_EndSession,
    [BT_STATE_WAIT_TEXT]                 = WifiBattleTower_State_WaitText,
    [BT_STATE_WAIT_TEXT_YES_NO]          = WifiBattleTower_State_WaitTextYesNo,
    [BT_STATE_WAIT_TEXT_TIMED]           = WifiBattleTower_State_WaitTextTimed,
    [BT_STATE_DISCONNECT_YES_NO]         = WifiBattleTower_State_DisconnectYesNo,
    [BT_STATE_CONNECTED_PROMPT]          = WifiBattleTower_State_ConnectedPrompt,
    [BT_STATE_CONNECTED_YES_NO_MENU]     = WifiBattleTower_State_ConnectedYesNoMenu,
    [BT_STATE_SHOW_ERROR]                = WifiBattleTower_State_ShowError,
    [BT_STATE_ERROR_CLEANUP]             = WifiBattleTower_State_ErrorCleanup,
    [BT_STATE_SHOW_DWC_ERROR]            = WifiBattleTower_State_ShowDwcError,
    [BT_STATE_DWC_ERROR_ACK]             = WifiBattleTower_State_DwcErrorAck,
};
// clang-format on

int WifiBattleTower_ScreenInit(WifiBattleTowerAppState *appState, int unused)
{
    WifiBattleTower_InitStrings(appState);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 8, 1, HEAP_ID_68);
    WifiBattleTower_SetupBgLayers(appState->bgConfig);
    WifiBattleTower_LoadGraphics(appState);
    WifiBattleTower_CreateWindows(appState);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    CommManager_InitializeGlobalWifi(appState->args->saveData);
    WifiBattleTower_InitNetworkIcon(appState);

    appState->playerRank = WifiBattleTowerRecord_UpdateRank(appState->args->record, 0);
    appState->selectedRank = appState->playerRank;
    appState->selectedOpponentIdx = 1;
    appState->waitDial = NULL;

    if (!DWC_CheckInet()) {
        if (appState->args->unk_24) {
            WifiBattleTower_DisplayMessage(appState, appState->msgLoader2, 1, TEXT_SPEED_FAST, 0xf0f);
            WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_INIT_INET);
            WifiBattleTower_ShowWaitDial(appState);
        } else {
            appState->state = BT_STATE_INITIAL_PROMPT;
        }
    } else {
        appState->state = BT_STATE_CONNECTED_PROMPT;
    }

    return BT_LOOP_STATE_WAIT_FADE;
}

int WifiBattleTower_ScreenMain(WifiBattleTowerAppState *appState, int unused)
{
    NetworkIcon_SetStrength(WifiBattleTower_GetSignalStrength());

    int prevState = appState->state;
    int result = (*sStateFunctions[appState->state])(appState);

    if (prevState != appState->state) {
        appState->subStep = ERROR_CLEANUP_SUBSTEP_DISPLAY_ERROR;
        appState->subTimer = 0;
    }

    inline_ov61_0222C0F8(&appState->unk_FF8);

    return result;
}

int WifiBattleTower_ScreenExit(WifiBattleTowerAppState *appState, int unused)
{
    inline_ov61_0222C160(&appState->unk_FF8);

    WifiBattleTower_FreeStrings(appState);
    WifiBattleTower_RemoveWindows(appState);
    WifiBattleTower_FreeBgLayers(appState->bgConfig);

    inline_ov96_0223BDEC(&appState->unk_FF8, 0);

    appState->screenMode = appState->exitMode;

    if (appState->screenMode == 0) {
        return BT_LOOP_STATE_EXIT;
    }

    return BT_LOOP_STATE_INIT;
}

static void WifiBattleTower_SetupBgLayers(BgConfig *bgConfig)
{
    BgTemplate mainBg0 = {
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
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &mainBg0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate mainBg1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 1,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &mainBg1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);

    BgTemplate subBg0 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xf000,
        .charBase = GX_BG_CHARBASE_0x10000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 0,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &subBg0, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate subBg1 = {
        .x = 0,
        .y = 0,
        .bufferSize = 0x800,
        .baseTile = 0,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .colorMode = GX_BG_COLORMODE_16,
        .screenBase = GX_BG_SCRBASE_0xd800,
        .charBase = GX_BG_CHARBASE_0x08000,
        .bgExtPltt = GX_BG_EXTPLTT_01,
        .priority = 2,
        .areaOver = 0,
        .mosaic = FALSE,
    };
    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &subBg1, 0);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_68);
    Bg_ClearTilesRange(BG_LAYER_SUB_0, 32, 0, HEAP_ID_68);
}

static void WifiBattleTower_FreeBgLayers(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void WifiBattleTower_LoadGraphics(WifiBattleTowerAppState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;
    NARC *narc = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, HEAP_ID_68);

    Graphics_LoadPaletteFromOpenNARC(narc, 3, 0, 0, 0, HEAP_ID_68);
    Graphics_LoadPaletteFromOpenNARC(narc, 3, 4, 0, 0, HEAP_ID_68);
    Font_LoadScreenIndicatorsPalette(0, PLTT_OFFSET(13), HEAP_ID_68);
    Font_LoadScreenIndicatorsPalette(4, PLTT_OFFSET(13), HEAP_ID_68);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 14, Options_Frame(appState->args->options), HEAP_ID_68);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, SCROLLING_MESSAGE_BOX_TILE_COUNT + 1, WINDOW_BORDER_PLTT_SLOT, 0, HEAP_ID_68);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, bgConfig, 1, 0, 0, FALSE, HEAP_ID_68);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 5, bgConfig, 1, 0, 32 * 24 * 2, FALSE, HEAP_ID_68);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 10, bgConfig, 5, 0, 0, FALSE, HEAP_ID_68);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 11, bgConfig, 5, 0, 32 * 24 * 2, FALSE, HEAP_ID_68);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);

    inline_ov61_0222C3B0(&appState->unk_FF8, narc, 4, HEAP_ID_68);

    NARC_dtor(narc);
}

static void WifiBattleTower_CreateWindows(WifiBattleTowerAppState *appState)
{
    Window_Add(appState->bgConfig, &appState->popupWindow, 0, 4, 4, 23, 16, 13, ((((SCROLLING_MESSAGE_BOX_TILE_COUNT + 1) + 9) + 27 * 4) + 4 * 2) + 4 * 2);
    Window_FillTilemap(&appState->popupWindow, 0x0);
    Window_Add(appState->bgConfig, &appState->opponentWindow, 0, 26, 14, 4, 2, 13, ((SCROLLING_MESSAGE_BOX_TILE_COUNT + 1) + 9) + 27 * 4);
    Window_FillTilemap(&appState->opponentWindow, 0xf0f);
    Window_Add(appState->bgConfig, &appState->rankWindow, 0, 26, 14, 4, 2, 13, (((SCROLLING_MESSAGE_BOX_TILE_COUNT + 1) + 9) + 27 * 4) + 4 * 2);
    Window_FillTilemap(&appState->rankWindow, 0xf0f);
    Window_Add(appState->bgConfig, &appState->titleWindow, 0, 4, 1, 24, 2, 13, (((((SCROLLING_MESSAGE_BOX_TILE_COUNT + 1) + 9) + 27 * 4) + 4 * 2) + 4 * 2) + 23 * 16);
    Window_FillTilemap(&appState->titleWindow, 0x0);
    Window_DrawTextAligned(&appState->titleWindow, appState->titleString, 0, 1, 1, TEXT_COLOR(15, 14, 0));
    Window_Add(appState->bgConfig, &appState->msgWindow, 0, 2, 19, 27, 4, 13, (SCROLLING_MESSAGE_BOX_TILE_COUNT + 1) + 9);
    Window_FillTilemap(&appState->msgWindow, 0xf0f);
}

static void WifiBattleTower_RemoveWindows(WifiBattleTowerAppState *appState)
{
    Window_Remove(&appState->msgWindow);
    Window_Remove(&appState->titleWindow);
    Window_Remove(&appState->rankWindow);
    Window_Remove(&appState->opponentWindow);
    Window_Remove(&appState->popupWindow);
}

static void WifiBattleTower_InitStrings(WifiBattleTowerAppState *appState)
{
    appState->msgString = String_Init(90 * 2, HEAP_ID_68);
    appState->opponentIdxString = String_Init(4, HEAP_ID_68);
    appState->rankString = String_Init(3, HEAP_ID_68);
    appState->titleString = MessageLoader_GetNewString(appState->msgLoader1, 10);
    appState->errorString = String_Init(16 * 8 * 2, HEAP_ID_68);
}

static void WifiBattleTower_FreeStrings(WifiBattleTowerAppState *appState)
{
    String_Free(appState->errorString);
    String_Free(appState->titleString);
    String_Free(appState->rankString);
    String_Free(appState->opponentIdxString);
    String_Free(appState->msgString);
}

static int WifiBattleTower_State_InitialPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader3, 17, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT_YES_NO, BT_STATE_INITIAL_YES_NO_MENU);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_InitialYesNoMenu(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            CommManager_EndGlobalWifi();
            WifiBattleTower_SetExitMode(appState, 0, 0);
            appState->state = BT_STATE_END_SESSION;
        } else {
            WifiBattleTower_DisplayMessage(appState, appState->msgLoader2, 1, TEXT_SPEED_FAST, 0xf0f);
            WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_INIT_INET);
            WifiBattleTower_ShowWaitDial(appState);
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_ConnectedPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader2, 12, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT_YES_NO, BT_STATE_CONNECTED_YES_NO_MENU);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_ConnectedYesNoMenu(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            if (!DWC_CheckInet()) {
                appState->state = BT_STATE_INITIAL_PROMPT;
            } else {
                appState->state = BT_STATE_GOODBYE_PROMPT;
            }
        } else {
            if (!DWC_CheckInet()) {
                WifiBattleTower_SetExitMode(appState, 0, 0);
                appState->state = BT_STATE_END_SESSION;
            } else {
                appState->state = BT_STATE_GOODBYE_PROMPT;
            }

            appState->args->unk_20 = 1;
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_InitInet(WifiBattleTowerAppState *appState)
{
    DWC_InitInetEx(&appState->inetControl, DEFAULT_DWC_DMA_NUMBER, DEFAULT_DWC_POWER_MODE, DEFAULT_DWC_SSL_PRIORITY);
    DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
    DWC_ConnectInetAsync();

    appState->state = BT_STATE_WAIT_INET_CONNECT;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitInetConnect(WifiBattleTowerAppState *appState)
{
    DWC_ProcessInet();

    if (DWC_CheckInet()) {
        int status = DWC_GetInetStatus();

        switch (status) {
        case DWC_CONNECTINET_STATE_ERROR: {
            DWCError err;
            int errDetail;

            err = DWC_GetLastError(&errDetail);

            appState->dwcError = err;
            appState->dwcErrorDetail = errDetail;
        }
            DWC_ClearError();
            DWC_CleanupInet();

            WifiBattleTower_HideWaitDial(appState);
            appState->state = BT_STATE_SHOW_DWC_ERROR;
            break;
        case DWC_CONNECTINET_STATE_NOT_INITIALIZED:
        case DWC_CONNECTINET_STATE_IDLE:
        case DWC_CONNECTINET_STATE_OPERATING:
        case DWC_CONNECTINET_STATE_OPERATED:
        case DWC_CONNECTINET_STATE_DISCONNECTING:
        case DWC_CONNECTINET_STATE_DISCONNECTED:
        default:
        case DWC_CONNECTINET_STATE_FATAL_ERROR: {
            DWCError err2;
            int errCode;

            err2 = DWC_GetLastError(&errCode);

            WifiBattleTower_HideWaitDial(appState);
            appState->state = BT_STATE_SHOW_ERROR;
            appState->asyncResult = -2;
        } break;
        case DWC_CONNECTINET_STATE_CONNECTED: {
            DWCApInfo unused;

            DWC_GetApInfo(&unused);
        }
            appState->state = BT_STATE_INIT_NAS_LOGIN;
            break;
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_InitNasLogin(WifiBattleTowerAppState *appState)
{
    DWC_NASLoginAsync();
    appState->state = BT_STATE_WAIT_NAS_LOGIN;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitNasLogin(WifiBattleTowerAppState *appState)
{
    switch (DWC_NASLoginProcess()) {
    case DWC_NASLOGIN_STATE_SUCCESS:
        appState->state = BT_STATE_INIT_HTTP;
        break;
    case DWC_NASLOGIN_STATE_ERROR:
    case DWC_NASLOGIN_STATE_CANCELED:
    case DWC_NASLOGIN_STATE_DIRTY:
        WifiBattleTower_HideWaitDial(appState);
        {
            int errCode;
            DWCErrorType errType;
            DWCError err;

            err = DWC_GetLastErrorEx(&errCode, &errType);
            appState->dwcError = err;
            appState->dwcErrorDetail = errCode;

            DWC_ClearError();
            DWC_CleanupInet();

            appState->state = BT_STATE_SHOW_DWC_ERROR;

            switch (errType) {
            case DWC_ETYPE_LIGHT:
            case DWC_ETYPE_SHOW_ERROR:
                appState->state = BT_STATE_SHOW_DWC_ERROR;
                break;
            case DWC_ETYPE_SHUTDOWN_GHTTP:
                DWC_ShutdownGHTTP();
                appState->state = BT_STATE_SHOW_DWC_ERROR;
                break;
            case DWC_ETYPE_DISCONNECT:
                appState->state = BT_STATE_SHOW_DWC_ERROR;
                break;
            case DWC_ETYPE_SHUTDOWN_FM:
                DWC_ShutdownFriendsMatch();
                appState->state = BT_STATE_SHOW_DWC_ERROR;
                break;
            case DWC_ETYPE_SHUTDOWN_ND:
            case DWC_ETYPE_FATAL:
                NetworkError_DisplayGTSCriticalError();
                break;
            }

            if ((errCode < -20000) && (errCode >= -29999)) {
                appState->state = BT_STATE_SHOW_DWC_ERROR;
            }
        }
        break;
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_InitHttp(WifiBattleTowerAppState *appState)
{
    s32 profileId = SystemData_GetDWCProfileId(appState->args->systemData);

    if (profileId == 0) {
        SystemData_SetDWCProfileId(appState->args->systemData, appState->args->profileId);
    }

    profileId = SystemData_GetDWCProfileId(appState->args->systemData);
    BattleTowerHttp_Init(profileId, DWC_CreateFriendKey(appState->args->userData));

    appState->state = BT_STATE_REQUEST_INFO;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_RequestInfo(WifiBattleTowerAppState *appState)
{
    BattleTowerHttp_RequestInfo();

    appState->state = BT_STATE_WAIT_INFO;
    appState->timeoutCounter = 0;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitInfo(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();

        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_SUCCESS:
            WifiBattleTower_HideWaitDial(appState);

            switch (appState->args->mode) {
            case WIFI_BT_MODE_BROWSE:
                WifiBattleTower_SetState(appState, BT_STATE_REQUEST_ROOM_COUNT, BT_STATE_SELECT_OPPONENT_PROMPT);
                break;
            case WIFI_BT_MODE_UPLOAD:
                appState->state = BT_STATE_UPLOAD_PROMPT;
                break;
            case WIFI_BT_MODE_SELECT_RANK:
                appState->state = BT_STATE_SELECT_RANK_PROMPT;
                break;
            }

            break;
        case BT_CODE_UPLOAD_NEEDED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_RANK_SELECT_NEEDED:
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_CONNECTION_FAILED:
        case BT_CODE_HTTP_ERROR:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NETWORK_FAILURE:
        default:
            WifiBattleTower_HideWaitDial(appState);
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->timeoutCounter++;

        if (appState->timeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_SetProfile(WifiBattleTowerAppState *appState)
{
    WorldExchange_GetTrainerObject(appState->args->saveData, &appState->weTrainer);
    WorldExchange_SetProfile(&appState->weTrainer, &appState->weTrainerErr);

    appState->state = BT_STATE_WAIT_SET_PROFILE;
    appState->timeoutCounter = 0;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitSetProfile(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();

        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_SUCCESS:
            WifiBattleTower_HideWaitDial(appState);

            switch (appState->weTrainerErr.validationError) {
            case 0:
                switch (appState->weTrainerErr.systemError) {
                case 0:
                    switch (appState->args->mode) {
                    case WIFI_BT_MODE_BROWSE:
                        WifiBattleTower_SetState(appState, BT_STATE_REQUEST_ROOM_COUNT, BT_STATE_SELECT_OPPONENT_PROMPT);
                        break;
                    case WIFI_BT_MODE_UPLOAD:
                        appState->state = BT_STATE_UPLOAD_PROMPT;
                        break;
                    case WIFI_BT_MODE_SELECT_RANK:
                        appState->state = BT_STATE_SELECT_RANK_PROMPT;
                        break;
                    }
                    break;
                case 1:
                case 2:
                case 3:
                    appState->asyncResult = result;
                    appState->state = BT_STATE_SHOW_ERROR;
                    WifiBattleTower_HideWaitDial(appState);
                    break;
                }
                break;
            case 1:
            case 2:
                appState->asyncResult = result;
                appState->state = BT_STATE_SHOW_ERROR;
                WifiBattleTower_HideWaitDial(appState);
                break;
            default:
                WifiBattleTower_HideWaitDial(appState);
                NetworkError_DisplayGTSCriticalError();
                break;
            }
            break;
        case BT_CODE_UPLOAD_NEEDED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_RANK_SELECT_NEEDED:
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_CONNECTION_FAILED:
        case BT_CODE_HTTP_ERROR:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NETWORK_FAILURE:
        default:
            WifiBattleTower_HideWaitDial(appState);
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->timeoutCounter++;

        if (appState->timeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_RequestRoomCount(WifiBattleTowerAppState *appState)
{
    BattleTowerHttp_RequestRoomCount(appState->selectedRank);
    appState->state = BT_STATE_WAIT_ROOM_COUNT;
    appState->timeoutCounter = 0;
    WifiBattleTower_ShowWaitDial(appState);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitRoomCount(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();
        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            break;
        case BT_CODE_SERVER_MAINTENANCE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            break;
        case BT_CODE_ALREADY_CHALLENGED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            break;
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            break;
        case BT_CODE_HTTP_ERROR:
        case BT_CODE_CONNECTION_FAILED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            break;
        case BT_CODE_NETWORK_FAILURE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            NetworkError_DisplayGTSCriticalError();
            break;
        default:
            if (result > BT_CODE_SUCCESS) {
                appState->matchCount = result;
                appState->state = appState->nextState;
            }
        }

        WifiBattleTower_HideWaitDial(appState);
    } else {
        appState->timeoutCounter++;

        if (appState->timeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_SelectOpponentPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 0, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_DRAW_OPPONENT_SELECT);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_DrawOpponentSelect(WifiBattleTowerAppState *appState)
{
    Window_DrawStandardFrame(&appState->opponentWindow, 0, SCROLLING_MESSAGE_BOX_TILE_COUNT + 1, 14);
    Window_DrawNumber(&appState->opponentWindow, appState->opponentIdxString, appState->selectedOpponentIdx, 3);
    WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 1);
    Window_CopyToVRAM(&appState->opponentWindow);

    appState->state = BT_STATE_SELECT_OPPONENT;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_SelectOpponent(WifiBattleTowerAppState *appState)
{
    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        appState->selectedOpponentIdx++;

        if (appState->selectedOpponentIdx > appState->matchCount) {
            appState->selectedOpponentIdx = 1;
        }

        Window_DrawNumber(&appState->opponentWindow, appState->opponentIdxString, appState->selectedOpponentIdx, 3);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        appState->selectedOpponentIdx--;

        if (appState->selectedOpponentIdx < 1) {
            appState->selectedOpponentIdx = appState->matchCount;
        }

        Window_DrawNumber(&appState->opponentWindow, appState->opponentIdxString, appState->selectedOpponentIdx, 3);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        {
            RTCTime time;
            RTCDate date;

            DWC_GetDateTime(&date, &time);

            if (WifiBattleTowerDownloadData_IsOpponentMarked(appState->args->downloadData, appState->selectedRank, appState->selectedOpponentIdx, &date)) {
                appState->state = BT_STATE_ALREADY_CHALLENGED_PROMPT;
            } else {
                appState->state = BT_STATE_DOWNLOAD_PROMPT;
            }
        }

        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        appState->state = BT_STATE_EXIT_PROMPT;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_DownloadPrompt(WifiBattleTowerAppState *appState)
{
    StringTemplate_SetNumber(appState->stringTemplate, 0, appState->selectedOpponentIdx, 3, 2, 1);
    StringTemplate_SetNumber(appState->stringTemplate, 1, appState->selectedRank, 2, 2, 1);

    WifiBattleTower_DisplayFormattedMessage(appState, appState->msgLoader1, 1, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_REQUEST_DOWNLOAD);

    MI_CpuClearFast(&appState->downloadBuffer, sizeof(WifiBattleTowerDownloadBuffer));

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_AlreadyChallengedPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayFormattedMessage(appState, appState->msgLoader1, 2, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_SELECT_OPPONENT_PROMPT);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_RequestDownload(WifiBattleTowerAppState *appState)
{
    BattleTowerHttp_RequestDownload(appState->playerRank, appState->selectedOpponentIdx, &appState->downloadBuffer);
    WifiBattleTower_ShowWaitDial(appState);

    appState->state = BT_STATE_WAIT_DOWNLOAD;
    appState->timeoutCounter = 0;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitDownload(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();

        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_SUCCESS:
            WifiBattleTowerDownloadData_StoreOpponentTeams(appState->args->downloadData, (WifiPlayerProfile *)appState->downloadBuffer.wifiPlayerProfile, appState->playerRank, appState->selectedOpponentIdx);
            WifiBattleTower_SetState(appState, BT_STATE_INIT_SAVE, BT_STATE_DOWNLOAD_COMPLETE_PROMPT);

            {
                RTCTime time;
                RTCDate date;

                DWC_GetDateTime(&date, &time);
                WifiBattleTowerDownloadData_MarkOpponent(appState->args->downloadData, appState->selectedRank, appState->selectedOpponentIdx, &date);
            }
            break;
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_ALREADY_CHALLENGED:
        case BT_CODE_HTTP_ERROR:
            appState->asyncResult = result;
            appState->state = BT_STATE_REQUEST_ROOM_COUNT;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_CONNECTION_FAILED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NETWORK_FAILURE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->timeoutCounter++;

        if (appState->timeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_DownloadCompletePrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 3, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_DISCONNECT_ENTRY);
    WifiBattleTower_HideWaitDial(appState);

    appState->args->unk_20 = 0;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_UploadPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 7, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_REQUEST_UPLOAD);
    WifiBattleTower_ShowWaitDial(appState);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_RequestUpload(WifiBattleTowerAppState *appState)
{
    WifiBattleTowerIndices indices;
    int ratingTier = WifiBattleTowerRecord_GetRatingTier(appState->args->record);

    WifiBattleTowerDownloadData_GetIndices(appState->args->downloadData, &indices);
    sub_02073700(appState->args->saveData, 1, (WifiPlayerProfile *)&appState->wifiPlayerProfile);
    BattleTowerHttp_RequestUpload(indices.rank, indices.opponentIdx, ratingTier, &appState->wifiPlayerProfile);

    appState->state = BT_STATE_WAIT_UPLOAD;
    appState->timeoutCounter = 0;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitUpload(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();

        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_SUCCESS:
            WifiBattleTowerRecord_UpdateBitFlag(appState->args->record, 5, 2);
            WifiBattleTower_SetState(appState, BT_STATE_INIT_SAVE, BT_STATE_UPLOAD_COMPLETE_PROMPT);
            break;
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_ALREADY_CHALLENGED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_HTTP_ERROR:
        case BT_CODE_CONNECTION_FAILED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NETWORK_FAILURE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->timeoutCounter++;

        if (appState->timeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_UploadCompletePrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 8, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_DISCONNECT_ENTRY);
    WifiBattleTower_HideWaitDial(appState);

    appState->args->unk_20 = 0;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_SelectRankPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 5, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_DRAW_RANK_SELECT);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_DrawRankSelect(WifiBattleTowerAppState *appState)
{
    appState->selectedRank = 1;

    Window_DrawStandardFrame(&appState->rankWindow, 0, SCROLLING_MESSAGE_BOX_TILE_COUNT + 1, 14);
    Window_DrawNumber(&appState->rankWindow, appState->rankString, appState->selectedRank, 2);
    WifiBattleTower_SetSelectionArrowsVisible(appState, 1, 1);
    Window_CopyToVRAM(&appState->rankWindow);

    appState->state = BT_STATE_SELECT_RANK;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_SelectRank(WifiBattleTowerAppState *appState)
{
    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        appState->selectedRank++;

        if (appState->selectedRank > 10) {
            appState->selectedRank = 1;
        }

        Window_DrawNumber(&appState->rankWindow, appState->rankString, appState->selectedRank, 2);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        appState->selectedRank--;

        if (appState->selectedRank < 1) {
            appState->selectedRank = 10;
        }

        Window_DrawNumber(&appState->rankWindow, appState->rankString, appState->selectedRank, 2);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        WifiBattleTower_SetState(appState, BT_STATE_REQUEST_ROOM_COUNT, BT_STATE_MATCH_LIST_SELECT_PROMPT);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        appState->state = BT_STATE_EXIT_MATCH_LIST_PROMPT;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_MatchListSelectPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 6, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_DRAW_MATCH_LIST_SELECT);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_DrawMatchListSelect(WifiBattleTowerAppState *appState)
{
    appState->selectedOpponentIdx = 1;

    Window_DrawStandardFrame(&appState->opponentWindow, 0, SCROLLING_MESSAGE_BOX_TILE_COUNT + 1, 14);
    Window_DrawNumber(&appState->opponentWindow, appState->opponentIdxString, appState->selectedOpponentIdx, 3);
    WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 1);
    Window_CopyToVRAM(&appState->opponentWindow);

    appState->state = BT_STATE_SELECT_MATCH_LIST;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_SelectMatchList(WifiBattleTowerAppState *appState)
{
    if (gSystem.pressedKeysRepeatable & PAD_KEY_UP) {
        appState->selectedOpponentIdx++;

        if (appState->selectedOpponentIdx == appState->matchCount + 1) {
            appState->selectedOpponentIdx = 1;
        }

        Window_DrawNumber(&appState->opponentWindow, appState->opponentIdxString, appState->selectedOpponentIdx, 3);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeysRepeatable & PAD_KEY_DOWN) {
        appState->selectedOpponentIdx--;

        if (appState->selectedOpponentIdx < 1) {
            appState->selectedOpponentIdx = appState->matchCount;
        }

        Window_DrawNumber(&appState->opponentWindow, appState->opponentIdxString, appState->selectedOpponentIdx, 3);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        appState->state = BT_STATE_DOWNLOAD_MATCH_LIST_PROMPT;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        appState->state = BT_STATE_SELECT_RANK_PROMPT;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_DownloadMatchListPrompt(WifiBattleTowerAppState *appState)
{
    StringTemplate_SetNumber(appState->stringTemplate, 0, appState->selectedOpponentIdx, 3, 2, 1);
    StringTemplate_SetNumber(appState->stringTemplate, 1, appState->selectedRank, 2, 2, 1);

    WifiBattleTower_DisplayFormattedMessage(appState, appState->msgLoader1, 1, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_REQUEST_MATCH_LIST);

    appState->state = BT_STATE_REQUEST_MATCH_LIST;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_RequestMatchList(WifiBattleTowerAppState *appState)
{
    BattleTowerHttp_RequestDownload(appState->selectedRank, appState->selectedOpponentIdx, &appState->downloadBuffer);

    appState->state = BT_STATE_WAIT_MATCH_LIST;
    appState->timeoutCounter = 0;

    WifiBattleTower_ShowWaitDial(appState);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitMatchList(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();

        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_SUCCESS:
            WifiBattleTowerDownloadData_StoreMatchList(appState->args->downloadData, (WifiBattleTowerMatchCandidate *)appState->downloadBuffer.matchCandidates, appState->selectedRank, appState->selectedOpponentIdx);
            WifiBattleTower_SetState(appState, BT_STATE_INIT_SAVE, BT_STATE_MATCH_LIST_COMPLETE_PROMPT);
            break;
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_ALREADY_CHALLENGED:
            appState->asyncResult = result;
            appState->state = BT_STATE_REQUEST_ROOM_COUNT;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_CONNECTION_FAILED:
        case BT_CODE_HTTP_ERROR:
            appState->state = BT_STATE_REQUEST_ROOM_COUNT;
            appState->asyncResult = result;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NETWORK_FAILURE:
            appState->asyncResult = result;
            appState->state = BT_STATE_SHOW_ERROR;
            WifiBattleTower_HideWaitDial(appState);
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->timeoutCounter++;

        if (appState->timeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_MatchListCompletePrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 3, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_DISCONNECT_ENTRY);
    WifiBattleTower_HideWaitDial(appState);

    appState->args->unk_20 = 0;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_DisconnectEntry(WifiBattleTowerAppState *appState)
{
    appState->state = BT_STATE_GOODBYE_PROMPT;
    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_InitSave(WifiBattleTowerAppState *appState)
{
    SaveData_SaveStateInit(appState->args->saveData, 2);
    appState->state = BT_STATE_WAIT_SAVE;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitSave(WifiBattleTowerAppState *appState)
{
    if (SaveData_SaveStateMain(appState->args->saveData) == 2) {
        appState->state = appState->nextState;
        WifiBattleTower_HideWaitDial(appState);
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_ExitPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 4, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT_YES_NO, BT_STATE_EXIT_YES_NO);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_ExitYesNo(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            appState->state = BT_STATE_SELECT_OPPONENT_PROMPT;
        } else {
            appState->state = BT_STATE_GOODBYE_PROMPT;
            appState->args->unk_20 = 1;
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_ExitMatchListPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 9, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT_YES_NO, BT_STATE_EXIT_MATCH_LIST_YES_NO);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_ExitMatchListYesNo(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            appState->state = BT_STATE_SELECT_RANK_PROMPT;
        } else {
            appState->state = BT_STATE_GOODBYE_PROMPT;
            appState->args->unk_20 = 1;
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_GoodbyePrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader3, 26, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_CLEANUP_INET);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_CleanupInet(WifiBattleTowerAppState *appState)
{
    DWC_CleanupInet();
    WifiBattleTower_SetExitMode(appState, 0, 0);
    appState->state = BT_STATE_DISCONNECTING_PROMPT;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_DisconnectingPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader3, 27, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT_TIMED, BT_STATE_END_SESSION);
    appState->waitTimer = 0;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_Idle(WifiBattleTowerAppState *appState)
{
    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_EndSession(WifiBattleTowerAppState *appState)
{
    NetworkIcon_Destroy();
    CommManager_EndGlobalWifi();
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 8, 1, HEAP_ID_68);

    appState->state = BT_STATE_INITIAL_PROMPT;

    return BT_LOOP_STATE_FINISH;
}

static int WifiBattleTower_State_DisconnectYesNo(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            appState->state = BT_STATE_INITIAL_PROMPT;
        } else {
            appState->state = BT_STATE_GOODBYE_PROMPT;
        }
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_ShowError(WifiBattleTowerAppState *appState)
{
    int errMsgIndex = 0;

    switch (appState->asyncResult) {
    case BT_CODE_SERVER_MAINTENANCE:
    case BT_CODE_NOT_IN_DCF_PHASE:
        errMsgIndex = 13;
        break;
    case BT_CODE_UPLOAD_NEEDED:
        errMsgIndex = 11;
        break;
    case BT_CODE_RANK_SELECT_NEEDED:
    case BT_CODE_UPLOAD_REJECTED:
        errMsgIndex = 12;
        break;
    case BT_CODE_CONNECTION_FAILED:
    case BT_CODE_HTTP_ERROR:
        errMsgIndex = 14;
        break;
    case BT_CODE_ALREADY_CHALLENGED:
        errMsgIndex = 15;
        break;
    }

    WifiBattleTower_HideWaitDial(appState);
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, errMsgIndex, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, BT_STATE_WAIT_TEXT, BT_STATE_ERROR_CLEANUP);

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_ErrorCleanup(WifiBattleTowerAppState *appState)
{
    switch (appState->subStep) {
    case ERROR_CLEANUP_SUBSTEP_DISPLAY_ERROR:
        WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 16, TEXT_SPEED_FAST, 0xf0f);
        appState->subStep++;
        break;
    case ERROR_CLEANUP_SUBSTEP_DISCONNECT:
        if (Text_IsPrinterActive(appState->textPrinterID) == 0) {
            CommManager_EndGlobalWifi();
            DWC_CleanupInet();
            appState->subStep++;
        }
        break;
    case ERROR_CLEANUP_SUBSTEP_DISPLAY_RETURN:
        WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 17, TEXT_SPEED_FAST, 0xf0f);
        appState->subStep++;
        break;
    case ERROR_CLEANUP_SUBSTEP_WAIT_RETURN:
        if (Text_IsPrinterActive(appState->textPrinterID) == 0) {
            appState->subStep++;
        }
        break;
    default:
        appState->subTimer++;

        if (appState->subTimer > 30) {
            WifiBattleTower_SetExitMode(appState, 0, 0);
            appState->state = BT_STATE_END_SESSION;
        }
        break;
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitText(WifiBattleTowerAppState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinterID) == 0) {
        appState->state = appState->nextState;
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitTextTimed(WifiBattleTowerAppState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinterID) == 0) {
        if (appState->waitTimer > 30) {
            appState->state = appState->nextState;
        }

        appState->waitTimer++;
    }

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_WaitTextYesNo(WifiBattleTowerAppState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinterID) == 0) {
        appState->yesNoMenu = WifiBattleTower_CreateYesNoMenu(appState->bgConfig, POPUP_TILEMAP_TOP, (((((SCROLLING_MESSAGE_BOX_TILE_COUNT + 1 + 9) + 27 * 4) + 4 * 2) + 4 * 2) + 23 * 16) + 24 * 2);
        appState->state = appState->nextState;
    }

    return BT_LOOP_STATE_MAIN;
}

static void WifiBattleTower_DisplayFormattedMessage(WifiBattleTowerAppState *appState, MessageLoader *msgLoader, int msgIndex, int textSpeed, u16 unused)
{
    String *newStr = MessageLoader_GetNewString(msgLoader, msgIndex);

    StringTemplate_Format(appState->stringTemplate, appState->msgString, newStr);
    Window_FillTilemap(&appState->msgWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->msgWindow, 0, 1, 14);

    appState->textPrinterID = Text_AddPrinterWithParams(&appState->msgWindow, FONT_MESSAGE, appState->msgString, 0, 0, textSpeed, NULL);

    String_Free(newStr);
}

static int WifiBattleTower_State_ShowDwcError(WifiBattleTowerAppState *appState)
{
    int errCode = NintendoWFC_GetErrorCode(-appState->dwcErrorDetail, appState->dwcErrorType);

    WifiBattleTower_ShowDwcErrorPopup(appState, errCode, -appState->dwcErrorDetail);
    appState->state = BT_STATE_DWC_ERROR_ACK;

    return BT_LOOP_STATE_MAIN;
}

static int WifiBattleTower_State_DwcErrorAck(WifiBattleTowerAppState *appState)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A || gSystem.pressedKeys & PAD_BUTTON_B) {
        Window_EraseStandardFrame(&appState->popupWindow, 0);
        appState->state = BT_STATE_INITIAL_PROMPT;
    }

    return BT_LOOP_STATE_MAIN;
}

static void WifiBattleTower_DisplayMessage(WifiBattleTowerAppState *appState, MessageLoader *msgLoader, int msgIndex, int textSpeed, u16 unused)
{
    MessageLoader_GetString(msgLoader, msgIndex, appState->msgString);
    Window_FillTilemap(&appState->msgWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->msgWindow, 0, 1, 14);

    appState->textPrinterID = Text_AddPrinterWithParams(&appState->msgWindow, FONT_MESSAGE, appState->msgString, 0, 0, textSpeed, NULL);
}

static int Window_CalcAlignedTextX(Window *window, String *string, int xOffset, int alignment, u32 unused, int font)
{
    int strWidth = 0;

    switch (alignment) {
    case TEXT_ALIGN_CENTER:
        strWidth = Font_CalcStringWidth(font, string, 0);
        xOffset = ((window->width * 8) - strWidth) / 2;
        break;
    case TEXT_ALIGN_RIGHT:
        strWidth = Font_CalcStringWidth(font, string, 0);
        xOffset = (window->width * 8) - strWidth;
        break;
    }

    return xOffset;
}

void Window_DrawTextAligned(Window *window, String *string, int xOffset, int yOffset, int alignment, TextColor textColor)
{
    xOffset = Window_CalcAlignedTextX(window, string, xOffset, alignment, textColor, 1);
    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, string, xOffset, yOffset, TEXT_SPEED_INSTANT, textColor, NULL);
}

void Window_DrawSystemTextAligned(Window *window, String *string, int xOffset, int yOffset, int alignment, TextColor textColor)
{
    xOffset = Window_CalcAlignedTextX(window, string, xOffset, alignment, textColor, 0);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, xOffset, yOffset, TEXT_SPEED_INSTANT, textColor, NULL);
}

static void Window_DrawNumber(Window *window, String *string, int num, int maxDigits)
{
    Window_FillTilemap(window, 0xf0f);
    String_FormatInt(string, num, maxDigits, 2, 1);
    Window_DrawSystemTextAligned(window, string, 0, 1, 1, TEXT_COLOR(1, 2, 0));
}

void WifiBattleTower_InitNetworkIcon(WifiBattleTowerAppState *unused)
{
    NetworkIcon_Init();
}

static void WifiBattleTower_SetSelectionArrowsVisible(WifiBattleTowerAppState *appState, int selectionMode, int visible)
{
    if ((selectionMode == 0) || (selectionMode == 1)) {
        Sprite_SetDrawFlag(appState->selectionArrows[0], visible);
        Sprite_SetDrawFlag(appState->selectionArrows[1], visible);
    }
}

static void WifiBattleTower_ShowWaitDial(WifiBattleTowerAppState *appState)
{
    if (appState->waitDial == NULL) {
        appState->waitDial = Window_AddWaitDial(&appState->msgWindow, 1);
    }
}

static void WifiBattleTower_HideWaitDial(WifiBattleTowerAppState *appState)
{
    if (appState->waitDial != NULL) {
        DestroyWaitDial(appState->waitDial);
        appState->waitDial = NULL;
    }
}

static void WifiBattleTower_ShowPopupMessage(WifiBattleTowerAppState *appState, int msgIndex)
{
    String *msgStr = String_Init(16 * 8 * 2, HEAP_ID_68);

    MessageLoader_GetString(appState->msgLoader3, msgIndex, msgStr);
    StringTemplate_Format(appState->stringTemplate, appState->errorString, msgStr);
    Window_FillTilemap(&appState->popupWindow, 15);
    Window_DrawStandardFrame(&appState->popupWindow, 1, SCROLLING_MESSAGE_BOX_TILE_COUNT + 1, WINDOW_BORDER_PLTT_SLOT);

    appState->textPrinterID = Text_AddPrinterWithParams(&appState->popupWindow, FONT_MESSAGE, appState->errorString, 0, 0, TEXT_SPEED_INSTANT, NULL);

    String_Free(msgStr);
}

static void WifiBattleTower_ShowDwcErrorPopup(WifiBattleTowerAppState *appState, int errCode, int rawErrorCode)
{
    int msgIndex;

    if (errCode != -1) {
        msgIndex = errCode;
    } else {
        msgIndex = 11;
    }

    StringTemplate_SetNumber(appState->stringTemplate, 0, rawErrorCode, 5, 2, 1);
    Window_EraseMessageBox(&appState->msgWindow, 1);
    WifiBattleTower_ShowPopupMessage(appState, msgIndex);
}
