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
#include "wifi_battle_tower/save.h"

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
static int WifiBattleTower_State_Return3(WifiBattleTowerAppState *appState);
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
    WifiBattleTower_State_InitialPrompt,           // 0
    WifiBattleTower_State_InitialYesNoMenu,        // 1
    WifiBattleTower_State_InitInet,                // 2
    WifiBattleTower_State_WaitInetConnect,         // 3
    WifiBattleTower_State_InitNasLogin,            // 4
    WifiBattleTower_State_WaitNasLogin,            // 5
    WifiBattleTower_State_InitHttp,                // 6
    WifiBattleTower_State_RequestInfo,             // 7
    WifiBattleTower_State_WaitInfo,                // 8
    WifiBattleTower_State_SetProfile,              // 9
    WifiBattleTower_State_WaitSetProfile,          // 10
    WifiBattleTower_State_RequestRoomCount,        // 11
    WifiBattleTower_State_WaitRoomCount,           // 12
    WifiBattleTower_State_SelectOpponentPrompt,    // 13
    WifiBattleTower_State_DrawOpponentSelect,      // 14
    WifiBattleTower_State_SelectOpponent,          // 15
    WifiBattleTower_State_DownloadPrompt,          // 16
    WifiBattleTower_State_RequestDownload,         // 17
    WifiBattleTower_State_WaitDownload,            // 18
    WifiBattleTower_State_DownloadCompletePrompt,  // 19
    WifiBattleTower_State_AlreadyChallengedPrompt, // 20
    WifiBattleTower_State_ExitPrompt,              // 21
    WifiBattleTower_State_ExitYesNo,               // 22
    WifiBattleTower_State_ExitMatchListPrompt,     // 23
    WifiBattleTower_State_ExitMatchListYesNo,      // 24
    WifiBattleTower_State_UploadPrompt,            // 25
    WifiBattleTower_State_RequestUpload,           // 26
    WifiBattleTower_State_WaitUpload,              // 27
    WifiBattleTower_State_UploadCompletePrompt,    // 28
    WifiBattleTower_State_SelectRankPrompt,        // 29
    WifiBattleTower_State_DrawRankSelect,          // 30
    WifiBattleTower_State_SelectRank,              // 31
    WifiBattleTower_State_MatchListSelectPrompt,   // 32
    WifiBattleTower_State_DrawMatchListSelect,     // 33
    WifiBattleTower_State_SelectMatchList,         // 34
    WifiBattleTower_State_DownloadMatchListPrompt, // 35
    WifiBattleTower_State_RequestMatchList,        // 36
    WifiBattleTower_State_WaitMatchList,           // 37
    WifiBattleTower_State_MatchListCompletePrompt, // 38
    WifiBattleTower_State_InitSave,                // 39
    WifiBattleTower_State_WaitSave,                // 40
    WifiBattleTower_State_GoodbyePrompt,           // 41
    WifiBattleTower_State_CleanupInet,             // 42
    WifiBattleTower_State_DisconnectingPrompt,     // 43
    WifiBattleTower_State_Return3,                 // 44
    WifiBattleTower_State_DisconnectEntry,         // 45
    WifiBattleTower_State_EndSession,              // 46
    WifiBattleTower_State_WaitText,                // 47
    WifiBattleTower_State_WaitTextYesNo,           // 48
    WifiBattleTower_State_WaitTextTimed,           // 49
    WifiBattleTower_State_DisconnectYesNo,         // 50
    WifiBattleTower_State_ConnectedPrompt,         // 51
    WifiBattleTower_State_ConnectedYesNoMenu,      // 52
    WifiBattleTower_State_ShowError,               // 53
    WifiBattleTower_State_ErrorCleanup,            // 54
    WifiBattleTower_State_ShowDwcError,            // 55
    WifiBattleTower_State_DwcErrorAck              // 56
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
            WifiBattleTower_SetState(appState, 47, 2);
            WifiBattleTower_ShowWaitDial(appState);
        } else {
            appState->state = 0;
        }
    } else {
        appState->state = 51;
    }

    return 2;
}

int WifiBattleTower_ScreenMain(WifiBattleTowerAppState *appState, int unused)
{
    int result, prevState;

    NetworkIcon_SetStrength(WifiBattleTower_GetSignalStrength());

    prevState = appState->state;
    result = (*sStateFunctions[appState->state])(appState);

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
        return 5;
    }

    return 1;
}

static void WifiBattleTower_SetupBgLayers(BgConfig *bgConfig)
{
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
    }

    {
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
    }

    {
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
    }

    {
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
    }

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
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_68);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, HEAP_ID_68);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 14, Options_Frame(appState->args->options), HEAP_ID_68);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, WINDOW_BORDER_TILE_START, WINDOW_BORDER_PLTT_SLOT, 0, HEAP_ID_68);
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
    Window_Add(appState->bgConfig, &appState->popupWindow, 0, 4, 4, 23, 16, 13, ((((WINDOW_BORDER_TILE_START) + 9) + 27 * 4) + 4 * 2) + 4 * 2);
    Window_FillTilemap(&appState->popupWindow, 0x0);
    Window_Add(appState->bgConfig, &appState->opponentWindow, 0, 26, 14, 4, 2, 13, ((WINDOW_BORDER_TILE_START) + 9) + 27 * 4);
    Window_FillTilemap(&appState->opponentWindow, 0xf0f);
    Window_Add(appState->bgConfig, &appState->rankWindow, 0, 26, 14, 4, 2, 13, (((WINDOW_BORDER_TILE_START) + 9) + 27 * 4) + 4 * 2);
    Window_FillTilemap(&appState->rankWindow, 0xf0f);
    Window_Add(appState->bgConfig, &appState->titleWindow, 0, 4, 1, 24, 2, 13, (((((WINDOW_BORDER_TILE_START) + 9) + 27 * 4) + 4 * 2) + 4 * 2) + 23 * 16);
    Window_FillTilemap(&appState->titleWindow, 0x0);
    Window_DrawTextAligned(&appState->titleWindow, appState->titleString, 0, 1, 1, TEXT_COLOR(15, 14, 0));
    Window_Add(appState->bgConfig, &appState->msgWindow, 0, 2, 19, 27, 4, 13, (WINDOW_BORDER_TILE_START) + 9);
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
    WifiBattleTower_SetState(appState, 48, 1);

    return 3;
}

static int WifiBattleTower_State_InitialYesNoMenu(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            CommManager_EndGlobalWifi();
            WifiBattleTower_SetExitMode(appState, 0, 0);
            appState->state = 46;
        } else {
            WifiBattleTower_DisplayMessage(appState, appState->msgLoader2, 1, TEXT_SPEED_FAST, 0xf0f);
            WifiBattleTower_SetState(appState, 47, 2);
            WifiBattleTower_ShowWaitDial(appState);
        }
    }

    return 3;
}

static int WifiBattleTower_State_ConnectedPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader2, 12, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 48, 52);

    return 3;
}

static int WifiBattleTower_State_ConnectedYesNoMenu(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            if (!DWC_CheckInet()) {
                appState->state = 0;
            } else {
                appState->state = 41;
            }
        } else {
            if (!DWC_CheckInet()) {
                WifiBattleTower_SetExitMode(appState, 0, 0);
                appState->state = 46;
            } else {
                appState->state = 41;
            }

            appState->args->unk_20 = 1;
        }
    }

    return 3;
}

static int WifiBattleTower_State_InitInet(WifiBattleTowerAppState *appState)
{
    DWC_InitInetEx(&appState->inetControl, DEFAULT_DWC_DMA_NUMBER, DEFAULT_DWC_POWER_MODE, DEFAULT_DWC_SSL_PRIORITY);
    DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
    DWC_ConnectInetAsync();

    appState->state = 3;

    return 3;
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
            appState->state = 55;
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
            appState->state = 53;
            appState->asyncResult = -2;
        } break;
        case DWC_CONNECTINET_STATE_CONNECTED: {
            DWCApInfo unused;

            DWC_GetApInfo(&unused);
        }
            appState->state = 4;
            break;
        }
    }

    return 3;
}

static int WifiBattleTower_State_InitNasLogin(WifiBattleTowerAppState *appState)
{
    DWC_NASLoginAsync();
    appState->state = 5;

    return 3;
}

static int WifiBattleTower_State_WaitNasLogin(WifiBattleTowerAppState *appState)
{
    switch (DWC_NASLoginProcess()) {
    case DWC_NASLOGIN_STATE_SUCCESS:
        appState->state = 6;
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

            appState->state = 55;

            switch (errType) {
            case DWC_ETYPE_LIGHT:
            case DWC_ETYPE_SHOW_ERROR:
                appState->state = 55;
                break;
            case DWC_ETYPE_SHUTDOWN_GHTTP:
                DWC_ShutdownGHTTP();
                appState->state = 55;
                break;
            case DWC_ETYPE_DISCONNECT:
                appState->state = 55;
                break;
            case DWC_ETYPE_SHUTDOWN_FM:
                DWC_ShutdownFriendsMatch();
                appState->state = 55;
                break;
            case DWC_ETYPE_SHUTDOWN_ND:
            case DWC_ETYPE_FATAL:
                NetworkError_DisplayGTSCriticalError();
                break;
            }

            if ((errCode < -20000) && (errCode >= -29999)) {
                appState->state = 55;
            }
        }
        break;
    }

    return 3;
}

static int WifiBattleTower_State_InitHttp(WifiBattleTowerAppState *appState)
{
    s32 profileId = SystemData_GetDWCProfileId(appState->args->systemData);

    if (profileId == 0) {
        SystemData_SetDWCProfileId(appState->args->systemData, appState->args->profileId);
    }

    profileId = SystemData_GetDWCProfileId(appState->args->systemData);
    BattleTowerHttp_Init(profileId, DWC_CreateFriendKey(appState->args->userData));

    appState->state = 7;

    return 3;
}

static int WifiBattleTower_State_RequestInfo(WifiBattleTowerAppState *appState)
{
    BattleTowerHttp_RequestInfo();

    appState->state = 8;
    appState->timeoutCounter = 0;

    return 3;
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
            case 0:
                WifiBattleTower_SetState(appState, 11, 13);
                break;
            case 1:
                appState->state = 25;
                break;
            case 2:
                appState->state = 29;
                break;
            }

            break;
        case BT_CODE_UPLOAD_NEEDED:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_RANK_SELECT_NEEDED:
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_CONNECTION_FAILED:
        case BT_CODE_HTTP_ERROR:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = 53;
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

    return 3;
}

static int WifiBattleTower_State_SetProfile(WifiBattleTowerAppState *appState)
{
    WorldExchange_GetTrainerObject(appState->args->saveData, &appState->weTrainer);
    WorldExchange_SetProfile(&appState->weTrainer, &appState->weTrainerErr);

    appState->state = 10;
    appState->timeoutCounter = 0;

    return 3;
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
                    case 0:
                        WifiBattleTower_SetState(appState, 11, 13);
                        break;
                    case 1:
                        appState->state = 25;
                        break;
                    case 2:
                        appState->state = 29;
                        break;
                    }
                    break;
                case 1:
                case 2:
                case 3:
                    appState->asyncResult = result;
                    appState->state = 53;
                    WifiBattleTower_HideWaitDial(appState);
                    break;
                }
                break;
            case 1:
            case 2:
                appState->asyncResult = result;
                appState->state = 53;
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
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_RANK_SELECT_NEEDED:
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_CONNECTION_FAILED:
        case BT_CODE_HTTP_ERROR:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = 53;
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

    return 3;
}

static int WifiBattleTower_State_RequestRoomCount(WifiBattleTowerAppState *appState)
{
    BattleTowerHttp_RequestRoomCount(appState->selectedRank);
    appState->state = 12;
    appState->timeoutCounter = 0;
    WifiBattleTower_ShowWaitDial(appState);

    return 3;
}

static int WifiBattleTower_State_WaitRoomCount(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();
        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = 53;
            break;
        case BT_CODE_SERVER_MAINTENANCE:
            appState->asyncResult = result;
            appState->state = 53;
            break;
        case BT_CODE_ALREADY_CHALLENGED:
            appState->asyncResult = result;
            appState->state = 53;
            break;
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = 53;
            break;
        case BT_CODE_HTTP_ERROR:
        case BT_CODE_CONNECTION_FAILED:
            appState->asyncResult = result;
            appState->state = 53;
            break;
        case BT_CODE_NETWORK_FAILURE:
            appState->asyncResult = result;
            appState->state = 53;
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

    return 3;
}

static int WifiBattleTower_State_SelectOpponentPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 0, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 14);

    return 3;
}

static int WifiBattleTower_State_DrawOpponentSelect(WifiBattleTowerAppState *appState)
{
    Window_DrawStandardFrame(&appState->opponentWindow, 0, WINDOW_BORDER_TILE_START, 14);
    Window_DrawNumber(&appState->opponentWindow, appState->opponentIdxString, appState->selectedOpponentIdx, 3);
    WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 1);
    Window_CopyToVRAM(&appState->opponentWindow);

    appState->state = 15;

    return 3;
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
                appState->state = 20;
            } else {
                appState->state = 16;
            }
        }

        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        appState->state = 21;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return 3;
}

static int WifiBattleTower_State_DownloadPrompt(WifiBattleTowerAppState *appState)
{
    StringTemplate_SetNumber(appState->stringTemplate, 0, appState->selectedOpponentIdx, 3, 2, 1);
    StringTemplate_SetNumber(appState->stringTemplate, 1, appState->selectedRank, 2, 2, 1);

    WifiBattleTower_DisplayFormattedMessage(appState, appState->msgLoader1, 1, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 17);

    MI_CpuClearFast(&appState->downloadBuffer, sizeof(WifiBattleTowerDownloadBuffer));

    return 3;
}

static int WifiBattleTower_State_AlreadyChallengedPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayFormattedMessage(appState, appState->msgLoader1, 2, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 13);

    return 3;
}

static int WifiBattleTower_State_RequestDownload(WifiBattleTowerAppState *appState)
{
    BattleTowerHttp_RequestDownload(appState->playerRank, appState->selectedOpponentIdx, &appState->downloadBuffer);
    WifiBattleTower_ShowWaitDial(appState);

    appState->state = 18;
    appState->timeoutCounter = 0;

    return 3;
}

static int WifiBattleTower_State_WaitDownload(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();

        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_SUCCESS:
            WifiBattleTowerDownloadData_StoreOpponentTeams(appState->args->downloadData, (WifiPlayerProfile *)appState->downloadBuffer.wifiPlayerProfile, appState->playerRank, appState->selectedOpponentIdx);
            WifiBattleTower_SetState(appState, 39, 19);

            {
                RTCTime time;
                RTCDate date;

                DWC_GetDateTime(&date, &time);
                WifiBattleTowerDownloadData_MarkOpponent(appState->args->downloadData, appState->selectedRank, appState->selectedOpponentIdx, &date);
            }
            break;
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_ALREADY_CHALLENGED:
        case BT_CODE_HTTP_ERROR:
            appState->asyncResult = result;
            appState->state = 11;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_CONNECTION_FAILED:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NETWORK_FAILURE:
            appState->asyncResult = result;
            appState->state = 53;
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

    return 3;
}

static int WifiBattleTower_State_DownloadCompletePrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 3, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 45);
    WifiBattleTower_HideWaitDial(appState);

    appState->args->unk_20 = 0;

    return 3;
}

static int WifiBattleTower_State_UploadPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 7, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 26);
    WifiBattleTower_ShowWaitDial(appState);

    return 3;
}

static int WifiBattleTower_State_RequestUpload(WifiBattleTowerAppState *appState)
{
    WifiBattleTowerIndices indices;
    int ratingTier = WifiBattleTowerRecord_GetRatingTier(appState->args->record);

    WifiBattleTowerDownloadData_GetIndices(appState->args->downloadData, &indices);
    sub_02073700(appState->args->saveData, 1, (WifiPlayerProfile *)&appState->wifiPlayerProfile);
    BattleTowerHttp_RequestUpload(indices.rank, indices.opponentIdx, ratingTier, &appState->wifiPlayerProfile);

    appState->state = 27;
    appState->timeoutCounter = 0;

    return 3;
}

static int WifiBattleTower_State_WaitUpload(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();

        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_SUCCESS:
            WifiBattleTowerRecord_UpdateBitFlag(appState->args->record, 5, 2);
            WifiBattleTower_SetState(appState, 39, 28);
            break;
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_ALREADY_CHALLENGED:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_HTTP_ERROR:
        case BT_CODE_CONNECTION_FAILED:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NETWORK_FAILURE:
            appState->asyncResult = result;
            appState->state = 53;
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

    return 3;
}

static int WifiBattleTower_State_UploadCompletePrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 8, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 45);
    WifiBattleTower_HideWaitDial(appState);

    appState->args->unk_20 = 0;

    return 3;
}

static int WifiBattleTower_State_SelectRankPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 5, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 30);

    return 3;
}

static int WifiBattleTower_State_DrawRankSelect(WifiBattleTowerAppState *appState)
{
    appState->selectedRank = 1;

    Window_DrawStandardFrame(&appState->rankWindow, 0, WINDOW_BORDER_TILE_START, 14);
    Window_DrawNumber(&appState->rankWindow, appState->rankString, appState->selectedRank, 2);
    WifiBattleTower_SetSelectionArrowsVisible(appState, 1, 1);
    Window_CopyToVRAM(&appState->rankWindow);

    appState->state = 31;

    return 3;
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
        WifiBattleTower_SetState(appState, 11, 32);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        appState->state = 23;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return 3;
}

static int WifiBattleTower_State_MatchListSelectPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 6, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 33);

    return 3;
}

static int WifiBattleTower_State_DrawMatchListSelect(WifiBattleTowerAppState *appState)
{
    appState->selectedOpponentIdx = 1;

    Window_DrawStandardFrame(&appState->opponentWindow, 0, WINDOW_BORDER_TILE_START, 14);
    Window_DrawNumber(&appState->opponentWindow, appState->opponentIdxString, appState->selectedOpponentIdx, 3);
    WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 1);
    Window_CopyToVRAM(&appState->opponentWindow);

    appState->state = 34;

    return 3;
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
        appState->state = 35;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        WifiBattleTower_SetSelectionArrowsVisible(appState, 0, 0);
        appState->state = 29;
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    }

    return 3;
}

static int WifiBattleTower_State_DownloadMatchListPrompt(WifiBattleTowerAppState *appState)
{
    StringTemplate_SetNumber(appState->stringTemplate, 0, appState->selectedOpponentIdx, 3, 2, 1);
    StringTemplate_SetNumber(appState->stringTemplate, 1, appState->selectedRank, 2, 2, 1);

    WifiBattleTower_DisplayFormattedMessage(appState, appState->msgLoader1, 1, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 36);

    appState->state = 36;

    return 3;
}

static int WifiBattleTower_State_RequestMatchList(WifiBattleTowerAppState *appState)
{
    BattleTowerHttp_RequestDownload(appState->selectedRank, appState->selectedOpponentIdx, &appState->downloadBuffer);

    appState->state = 37;
    appState->timeoutCounter = 0;

    WifiBattleTower_ShowWaitDial(appState);

    return 3;
}

static int WifiBattleTower_State_WaitMatchList(WifiBattleTowerAppState *appState)
{
    if (BattleTowerHttp_IsDone()) {
        s32 result = BattleTowerHttp_GetResult();

        appState->timeoutCounter = 0;

        switch (result) {
        case BT_CODE_SUCCESS:
            WifiBattleTowerDownloadData_StoreMatchList(appState->args->downloadData, (WifiBattleTowerMatchCandidate *)appState->downloadBuffer.matchCandidates, appState->selectedRank, appState->selectedOpponentIdx);
            WifiBattleTower_SetState(appState, 39, 38);
            break;
        case BT_CODE_UPLOAD_REJECTED:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_SERVER_MAINTENANCE:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_ALREADY_CHALLENGED:
            appState->asyncResult = result;
            appState->state = 11;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NOT_IN_DCF_PHASE:
            appState->asyncResult = result;
            appState->state = 53;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_CONNECTION_FAILED:
        case BT_CODE_HTTP_ERROR:
            appState->state = 11;
            appState->asyncResult = result;
            WifiBattleTower_HideWaitDial(appState);
            break;
        case BT_CODE_NETWORK_FAILURE:
            appState->asyncResult = result;
            appState->state = 53;
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

    return 3;
}

static int WifiBattleTower_State_MatchListCompletePrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 3, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 45);
    WifiBattleTower_HideWaitDial(appState);

    appState->args->unk_20 = 0;

    return 3;
}

static int WifiBattleTower_State_DisconnectEntry(WifiBattleTowerAppState *appState)
{
    appState->state = 41;
    return 3;
}

static int WifiBattleTower_State_InitSave(WifiBattleTowerAppState *appState)
{
    SaveData_SaveStateInit(appState->args->saveData, 2);
    appState->state = 40;

    return 3;
}

static int WifiBattleTower_State_WaitSave(WifiBattleTowerAppState *appState)
{
    if (SaveData_SaveStateMain(appState->args->saveData) == 2) {
        appState->state = appState->nextState;
        WifiBattleTower_HideWaitDial(appState);
    }

    return 3;
}

static int WifiBattleTower_State_ExitPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 4, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 48, 22);

    return 3;
}

static int WifiBattleTower_State_ExitYesNo(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            appState->state = 13;
        } else {
            appState->state = 41;
            appState->args->unk_20 = 1;
        }
    }

    return 3;
}

static int WifiBattleTower_State_ExitMatchListPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader1, 9, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 48, 24);

    return 3;
}

static int WifiBattleTower_State_ExitMatchListYesNo(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            appState->state = 29;
        } else {
            appState->state = 41;
            appState->args->unk_20 = 1;
        }
    }

    return 3;
}

static int WifiBattleTower_State_GoodbyePrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader3, 26, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 47, 42);

    return 3;
}

static int WifiBattleTower_State_CleanupInet(WifiBattleTowerAppState *appState)
{
    DWC_CleanupInet();
    WifiBattleTower_SetExitMode(appState, 0, 0);
    appState->state = 43;

    return 3;
}

static int WifiBattleTower_State_DisconnectingPrompt(WifiBattleTowerAppState *appState)
{
    WifiBattleTower_DisplayMessage(appState, appState->msgLoader3, 27, TEXT_SPEED_FAST, 0xf0f);
    WifiBattleTower_SetState(appState, 49, 46);
    appState->waitTimer = 0;

    return 3;
}

static int WifiBattleTower_State_Return3(WifiBattleTowerAppState *appState)
{
    return 3;
}

static int WifiBattleTower_State_EndSession(WifiBattleTowerAppState *appState)
{
    NetworkIcon_Destroy();
    CommManager_EndGlobalWifi();
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 8, 1, HEAP_ID_68);

    appState->state = 0;

    return 4;
}

static int WifiBattleTower_State_DisconnectYesNo(WifiBattleTowerAppState *appState)
{
    int menuSelection = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_68);

    if (menuSelection != 0xffffffff) {
        if (menuSelection == 0xfffffffe) {
            appState->state = 0;
        } else {
            appState->state = 41;
        }
    }

    return 3;
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
    WifiBattleTower_SetState(appState, 47, 54);

    return 3;
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
            appState->state = 46;
        }
        break;
    }

    return 3;
}

static int WifiBattleTower_State_WaitText(WifiBattleTowerAppState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinterID) == 0) {
        appState->state = appState->nextState;
    }

    return 3;
}

static int WifiBattleTower_State_WaitTextTimed(WifiBattleTowerAppState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinterID) == 0) {
        if (appState->waitTimer > 30) {
            appState->state = appState->nextState;
        }

        appState->waitTimer++;
    }

    return 3;
}

static int WifiBattleTower_State_WaitTextYesNo(WifiBattleTowerAppState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinterID) == 0) {
        appState->yesNoMenu = WifiBattleTower_CreateYesNoMenu(appState->bgConfig, POPUP_TILEMAP_TOP, (((((WINDOW_BORDER_TILE_START + 9) + 27 * 4) + 4 * 2) + 4 * 2) + 23 * 16) + 24 * 2);
        appState->state = appState->nextState;
    }

    return 3;
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
    appState->state = 56;

    return 3;
}

static int WifiBattleTower_State_DwcErrorAck(WifiBattleTowerAppState *appState)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A || gSystem.pressedKeys & PAD_BUTTON_B) {
        Window_EraseStandardFrame(&appState->popupWindow, 0);
        appState->state = 0;
    }

    return 3;
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
    Window_DrawStandardFrame(&appState->popupWindow, 1, WINDOW_BORDER_TILE_START, WINDOW_BORDER_PLTT_SLOT);

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
