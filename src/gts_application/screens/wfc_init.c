#include "gts_application/screens/wfc_init.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/net.h"

#include "gts_application/application.h"
#include "gts_application/gts.h"
#include "gts_application/networking.h"
#include "nintendo_wfc/main.h"

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
#include "screen_fade.h"
#include "string_gf.h"
#include "string_template.h"
#include "system.h"
#include "system_data.h"
#include "text.h"
#include "unk_02030CE8.h"
#include "wifi_list.h"

#include "res/text/bank/gts.h"
#include "res/text/bank/unk_0674.h"
#include "res/text/bank/unk_0695.h"

static void GTSWFCInit_InitBackground(BgConfig *bgConfig);
static void GTSWFCInit_CleanupBackground(BgConfig *bgConfig);
static void GTSWFCInit_InitGraphics(GTSApplicationState *appState);
static void GTSWFCInit_InitText(GTSApplicationState *appState);
static void GTSWFCInit_CleanupWindows(GTSApplicationState *appState);
static void GTSWFCInit_InitTitle(GTSApplicationState *appState);
static void GTSWFCInit_CleanupStrings(GTSApplicationState *appState);
static void GTSWFCInit_DisplayNetworkError(GTSApplicationState *appState, int messageId);
static void GTSWFCInit_DisplayErrorCode(GTSApplicationState *appState, int errorCode, int visibleErrorCode);
static int GTSWFCInit_AskToSetupConnection(GTSApplicationState *appState);
static int GTSWFCInit_ProcessSetupConfirmation(GTSApplicationState *appState);
static int GTSWFCInit_RestartOrExit(GTSApplicationState *appState);
static int GTSWFCInit_Connect(GTSApplicationState *appState);
static int GTSWFCInit_CheckConnection(GTSApplicationState *appState);
static int GTSWFCInit_GetDWCKey(GTSApplicationState *appState);
static int GTSWFCInit_ConnectToRemoteServer(GTSApplicationState *appState);
static int GTSWFCInit_SetProfileRequest(GTSApplicationState *appState);
static int GTSWFCInit_SetProfileResponse(GTSApplicationState *appState);
static int GTSWFCInit_ExitScreen(GTSApplicationState *appState);
static int GTSWFCInit_HandleRetryMenuInput(GTSApplicationState *appState);
static int GTSWFCInit_WaitForText(GTSApplicationState *appState);
static int GTSWFCInit_WaitForTextThenYesNoMenu(GTSApplicationState *appState);
static int GTSWFCInit_FatalError(GTSApplicationState *appState);
static int GTSWFCInit_FatalErrorDisconnectMessage(GTSApplicationState *appState);
static int GTSWFCInit_WaitForServerResponse(GTSApplicationState *appState);
static int GTSWFCInit_AskToDisconnect(GTSApplicationState *appState);
static int GTSWFCInit_ShowDisconnectingMessage(GTSApplicationState *appState);
static int GTSWFCInit_CleanupNetworking(GTSApplicationState *appState);
static int GTSWFCInit_ShowDisconnectedMessage(GTSApplicationState *appState);
static int GTSWFCInit_WaitForTextDelayed(GTSApplicationState *appState);
static int GTSWFCInit_Authenticate(GTSApplicationState *appState);
static int GTSWFCInit_CheckAuthentication(GTSApplicationState *appState);
static int GTSWFCInit_ShowNetworkError(GTSApplicationState *appState);
static int GTSWFCInit_RestartConnection(GTSApplicationState *appState);
static int Text_CalcAlignedX(Window *window, String *string, int x, int centered, TextColor textColor, int font);

static int (*sGTSWFCInitScreenStates[])(GTSApplicationState *) = {
    [GTSWFCINIT_ASK_TO_SETUP_CONNECTION] = GTSWFCInit_AskToSetupConnection,
    [GTSWFCINIT_PROCESS_SETUP_CONFIRMATION] = GTSWFCInit_ProcessSetupConfirmation,
    [GTSWFCINIT_CONNECT] = GTSWFCInit_Connect,
    [GTSWFCINIT_CHECK_CONNECTION] = GTSWFCInit_CheckConnection,
    [GTSWFCINIT_AUTHENTICATE] = GTSWFCInit_Authenticate,
    [GTSWFCINIT_CHECK_AUTHENTICATION] = GTSWFCInit_CheckAuthentication,
    [GTSWFCINIT_GET_DWC_KEY] = GTSWFCInit_GetDWCKey,
    [GTSWFCINIT_CONNECT_TO_REMOTE_SERVER] = GTSWFCInit_ConnectToRemoteServer,
    [GTSWFCINIT_WAIT_FOR_SERVER_RESPONSE] = GTSWFCInit_WaitForServerResponse,
    [GTSWFCINIT_SET_PROFILE_REQUEST] = GTSWFCInit_SetProfileRequest,
    [GTSWFCINIT_SET_PROFILE_RESPONSE] = GTSWFCInit_SetProfileResponse,
    [GTSWFCINIT_EXIT_SCREEN] = GTSWFCInit_ExitScreen,
    [GTSWFCINIT_WAIT_FOR_TEXT] = GTSWFCInit_WaitForText,
    [GTSWFCINIT_WAIT_FOR_TEXT_THEN_YES_NO_MENU] = GTSWFCInit_WaitForTextThenYesNoMenu,
    [GTSWFCINIT_HANDLE_RETRY_MENU_INPUT] = GTSWFCInit_HandleRetryMenuInput,
    [GTSWFCINIT_ASK_TO_DISCONNECT] = GTSWFCInit_AskToDisconnect,
    [GTSWFCINIT_RESTART_OR_EXIT] = GTSWFCInit_RestartOrExit,
    [GTSWFCINIT_SHOW_DISCONNECTING_MESSAGE] = GTSWFCInit_ShowDisconnectingMessage,
    [GTSWFCINIT_CLEANUP_NETWORKING] = GTSWFCInit_CleanupNetworking,
    [GTSWFCINIT_SHOW_DISCONNECTED_MESSAGE] = GTSWFCInit_ShowDisconnectedMessage,
    [GTSWFCINIT_WAIT_FOR_TEXT_DELAYED] = GTSWFCInit_WaitForTextDelayed,
    [GTSWFCINIT_FATAL_ERROR] = GTSWFCInit_FatalError,
    [GTSWFCINIT_FATAL_ERROR_DISCONNECT_MESSAGE] = GTSWFCInit_FatalErrorDisconnectMessage,
    [GTSWFCINIT_SHOW_NETWORK_ERROR] = GTSWFCInit_ShowNetworkError,
    [GTSWFCINIT_RESTART_CONNECTION] = GTSWFCInit_RestartConnection,
};

int GTSApplication_WFC_Init(GTSApplicationState *appState, int unused)
{
    GTSWFCInit_InitTitle(appState);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);

    GTSWFCInit_InitBackground(appState->bgConfig);
    GTSWFCInit_InitGraphics(appState);
    GTSWFCInit_InitText(appState);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, TRUE);
    CommManager_InitializeGlobalWifi(appState->playerData->saveData);

    GTSApplication_InitNetworkIcon(appState);

    if (!DWC_CheckInet()) {
        if (appState->playerData->connectToWiFi) {
            GTSApplication_DisplayStatusMessage(appState, appState->connProgressMessageLoader, pl_msg_00000674_00001, TEXT_SPEED_FAST, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTSWFCINIT_WAIT_FOR_TEXT, GTSWFCINIT_CONNECT);
            GTSApplication_AddWaitDial(appState);
        } else {
            appState->currentScreenInstruction = GTSWFCINIT_ASK_TO_SETUP_CONNECTION;
        }
    } else {
        appState->currentScreenInstruction = GTSWFCINIT_SHOW_DISCONNECTING_MESSAGE;
    }

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_WFCInit_Main(GTSApplicationState *appState, int unused)
{
    NetworkIcon_SetStrength(GTSApplication_GetNetworkStrength());

    int previousInstruction = appState->currentScreenInstruction;
    int parentStateCode = (*sGTSWFCInitScreenStates[appState->currentScreenInstruction])(appState);

    if (previousInstruction != appState->currentScreenInstruction) {
        appState->wfcDisconnectMessageIndex = 0;
        appState->wfcDisconnectMessageFrameDelay = 0;
    }

    inline_ov61_0222C0F8(&appState->unk_11B4);

    return parentStateCode;
}

int GTSApplication_WFCInit_Exit(GTSApplicationState *appState, int unused)
{
    inline_ov61_0222C160(&appState->unk_11B4);

    GTSWFCInit_CleanupStrings(appState);
    GTSWFCInit_CleanupWindows(appState);
    GTSWFCInit_CleanupBackground(appState->bgConfig);

    inline_ov96_0223BDEC(&appState->unk_11B4, 0);

    GTSApplication_MoveToNextScreen(appState);

    if (appState->screenId == 0) {
        return GTS_LOOP_STATE_EXIT;
    }

    return GTS_LOOP_STATE_INIT;
}

static void GTSWFCInit_InitBackground(BgConfig *bgConfig)
{
    BgTemplate main0Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &main0Template, BG_TYPE_STATIC);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, FALSE);
    Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);

    BgTemplate main1Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &main1Template, BG_TYPE_STATIC);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, FALSE);

    BgTemplate sub0Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &sub0Template, BG_TYPE_STATIC);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, FALSE);
    Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);

    BgTemplate sub1Template = {
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

    Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &sub1Template, BG_TYPE_STATIC);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, FALSE);

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, FALSE);
}

static void GTSWFCInit_CleanupBackground(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void GTSWFCInit_InitGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;
    NARC *narc = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(narc, 3, PAL_LOAD_MAIN_BG, 0, 0, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(narc, 3, PAL_LOAD_SUB_BG, 0, 0, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT, 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 5, bgConfig, BG_LAYER_MAIN_1, 0, 32 * 24 * 2, FALSE, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 10, bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 11, bgConfig, BG_LAYER_SUB_1, 0, 32 * 24 * 2, FALSE, HEAP_ID_62);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);

    inline_ov61_0222C3B0(&appState->unk_11B4, narc, 4, HEAP_ID_62);

    NARC_dtor(narc);
}

static void GTSWFCInit_InitText(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->networkErrWindow, BG_LAYER_MAIN_0, 4, 4, 23, 16, 13, TITLE_WINDOW_BASE_TILE + 27 * 4);
    Window_FillTilemap(&appState->networkErrWindow, 0);
    Window_Add(appState->bgConfig, &appState->titleWindow, BG_LAYER_MAIN_0, 4, 1, 24, 2, 13, (TITLE_WINDOW_BASE_TILE + 27 * 4) + 23 * 16);
    Window_FillTilemap(&appState->titleWindow, 0);

    Window_DrawAlignedMessageText(&appState->titleWindow, appState->title, 0, 1, 1, TEXT_COLOR(15, 14, 0));

    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, BG_LAYER_MAIN_0, 2, 19, 27, 4, 13, TITLE_WINDOW_BASE_TILE);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0);
}

static void GTSWFCInit_CleanupWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->bottomInstructionWindow);
    Window_Remove(&appState->titleWindow);
    Window_Remove(&appState->networkErrWindow);
}

static void GTSWFCInit_InitTitle(GTSApplicationState *appState)
{
    appState->genericMessageBuffer = String_Init(90 * 2, HEAP_ID_62);
    appState->shortErrorBuffer = String_Init(16 * 8 * 2, HEAP_ID_62);
    appState->title = MessageLoader_GetNewString(appState->gtsMessageLoader, GTS_Text_NintendoWifiConnection);
}

static void GTSWFCInit_CleanupStrings(GTSApplicationState *appState)
{
    String_Free(appState->title);
    String_Free(appState->shortErrorBuffer);
    String_Free(appState->genericMessageBuffer);
}

static int GTSWFCInit_AskToSetupConnection(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->disconnStatusMessageLoader, pl_msg_00000695_00017, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTSWFCINIT_WAIT_FOR_TEXT_THEN_YES_NO_MENU, GTSWFCINIT_PROCESS_SETUP_CONFIRMATION);

    appState->deferredBoxId = 1;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_ProcessSetupConfirmation(GTSApplicationState *appState)
{
    #ifdef SDK_BUILD_ARM
    int menuInput = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);
    #else
    u64 menuInput = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);
    #endif

    if (menuInput != MENU_NOTHING_CHOSEN) {
        if (menuInput == MENU_CANCEL) {
            CommManager_EndGlobalWifi();
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_NONE);
            appState->currentScreenInstruction = GTSWFCINIT_EXIT_SCREEN;
        } else {
            GTSApplication_DisplayStatusMessage(appState, appState->connProgressMessageLoader, pl_msg_00000674_00001, TEXT_SPEED_FAST, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTSWFCINIT_WAIT_FOR_TEXT, GTSWFCINIT_CONNECT);
            GTSApplication_AddWaitDial(appState);
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_AskToDisconnect(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_IsItOKToDisconnect, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTSWFCINIT_WAIT_FOR_TEXT_THEN_YES_NO_MENU, GTSWFCINIT_RESTART_OR_EXIT);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_RestartOrExit(GTSApplicationState *appState)
{
    #ifdef SDK_BUILD_ARM
    int menuInput = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);
    #else
    u64 menuInput = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);
    #endif

    if (menuInput != MENU_NOTHING_CHOSEN) {
        if (menuInput == MENU_CANCEL) {
            if (!DWC_CheckInet()) {
                appState->currentScreenInstruction = GTSWFCINIT_ASK_TO_SETUP_CONNECTION;
            } else {
                GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_CHECK_SERVER);
                appState->returnAfterNetworkScreen = GTS_SCREEN_MAIN_MENU;
                appState->currentScreenInstruction = GTSWFCINIT_EXIT_SCREEN;
            }
        } else {
            if (DWC_CheckInet()) {
                DWC_CleanupInet();
            }

            CommManager_EndGlobalWifi();
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_NONE);
            appState->currentScreenInstruction = GTSWFCINIT_EXIT_SCREEN;
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_ShowDisconnectingMessage(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->disconnStatusMessageLoader, pl_msg_00000695_00026, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTSWFCINIT_WAIT_FOR_TEXT, GTSWFCINIT_CLEANUP_NETWORKING);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_CleanupNetworking(GTSApplicationState *appState)
{
    CommManager_EndGlobalWifi();

    DWC_CleanupInet();
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_NONE);
    appState->currentScreenInstruction = GTSWFCINIT_SHOW_DISCONNECTED_MESSAGE;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_ShowDisconnectedMessage(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->disconnStatusMessageLoader, pl_msg_00000695_00027, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTSWFCINIT_WAIT_FOR_TEXT_DELAYED, GTSWFCINIT_EXIT_SCREEN);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_Connect(GTSApplicationState *appState)
{
    DWC_InitInetEx(&appState->dwcInetControlObject, DEFAULT_DWC_DMA_NUMBER, DEFAULT_DWC_POWER_MODE, DEFAULT_DWC_SSL_PRIORITY);
    DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
    DWC_ConnectInetAsync();

    appState->currentScreenInstruction = GTSWFCINIT_CHECK_CONNECTION;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_CheckConnection(GTSApplicationState *appState)
{
    DWC_ProcessInet();

    if (DWC_CheckInet()) {
        switch (DWC_GetInetStatus()) {
        case DWC_CONNECTINET_STATE_ERROR: {
            DWCError dwcErr;
            int errCode;
            DWCErrorType errType;

            dwcErr = DWC_GetLastErrorEx(&errCode, &errType);

            appState->dwcErr = dwcErr;
            appState->dwcErrCode = errCode;
            appState->dwcErrType = errType;
        }
            DWC_ClearError();
            DWC_CleanupInet();
            GTSApplication_DestroyWaitDial(appState);

            appState->currentScreenInstruction = GTSWFCINIT_SHOW_NETWORK_ERROR;

            break;
        case DWC_CONNECTINET_STATE_NOT_INITIALIZED:
        case DWC_CONNECTINET_STATE_IDLE:
        case DWC_CONNECTINET_STATE_OPERATING:
        case DWC_CONNECTINET_STATE_OPERATED:
        case DWC_CONNECTINET_STATE_DISCONNECTING:
        case DWC_CONNECTINET_STATE_DISCONNECTED:
        default:
        case DWC_CONNECTINET_STATE_FATAL_ERROR:
            DWCError unusedErr;
            int unusedErrCode;

            unusedErr = DWC_GetLastError(&unusedErrCode);
            GTSApplication_DestroyWaitDial(appState);

            appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
            appState->commsErrorMessage = -2;
            break;
        case DWC_CONNECTINET_STATE_CONNECTED:
            DWCApInfo apInfo;
            DWC_GetApInfo(&apInfo);

            if (apInfo.aptype == DWC_APINFO_TYPE_SHOP) {
                (void)0;
            }

            appState->currentScreenInstruction = GTSWFCINIT_AUTHENTICATE;
            break;
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_Authenticate(GTSApplicationState *appState)
{
    DWC_NASLoginAsync();
    appState->currentScreenInstruction = GTSWFCINIT_CHECK_AUTHENTICATION;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_CheckAuthentication(GTSApplicationState *appState)
{
    switch (DWC_NASLoginProcess()) {
    case DWC_NASLOGIN_STATE_SUCCESS:
        appState->currentScreenInstruction = GTSWFCINIT_GET_DWC_KEY;
        break;
    case DWC_NASLOGIN_STATE_ERROR:
    case DWC_NASLOGIN_STATE_CANCELED:
    case DWC_NASLOGIN_STATE_DIRTY:
        GTSApplication_DestroyWaitDial(appState);

        int errCode;
        DWCErrorType errType;
        DWCError dwcErr;

        dwcErr = DWC_GetLastErrorEx(&errCode, &errType);

        appState->dwcErr = dwcErr;
        appState->dwcErrCode = errCode;

        DWC_ClearError();
        DWC_CleanupInet();

        appState->currentScreenInstruction = GTSWFCINIT_SHOW_NETWORK_ERROR;

        switch (errType) {
        case DWC_ETYPE_LIGHT:
        case DWC_ETYPE_SHOW_ERROR:
            appState->currentScreenInstruction = GTSWFCINIT_SHOW_NETWORK_ERROR;
            break;
        case DWC_ETYPE_SHUTDOWN_GHTTP:
            DWC_ShutdownGHTTP();
            appState->currentScreenInstruction = GTSWFCINIT_SHOW_NETWORK_ERROR;
            break;
        case DWC_ETYPE_DISCONNECT:
            appState->currentScreenInstruction = GTSWFCINIT_SHOW_NETWORK_ERROR;
            break;
        case DWC_ETYPE_SHUTDOWN_FM:
            DWC_ShutdownFriendsMatch();
            appState->currentScreenInstruction = GTSWFCINIT_SHOW_NETWORK_ERROR;
            break;
        case DWC_ETYPE_SHUTDOWN_ND:
        case DWC_ETYPE_FATAL:
            NetworkError_DisplayGTSCriticalError();
            break;
        }

        if ((errCode < -20000) && (errCode >= -29999)) {
            appState->currentScreenInstruction = GTSWFCINIT_SHOW_NETWORK_ERROR;
        }
        break;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_GetDWCKey(GTSApplicationState *appState)
{
    DWCUserData *userData;
    s32 profileId;

    userData = WiFiList_GetUserData(appState->playerData->wiFiList);
    profileId = SystemData_GetDWCProfileId(appState->playerData->systemData);

    if (profileId == 0) {
        SystemData_SetDWCProfileId(appState->playerData->systemData, appState->playerData->dwcProfileId);
    }

    profileId = SystemData_GetDWCProfileId(appState->playerData->systemData);
    GTSNetworking_InitCredentials(profileId, DWC_CreateFriendKey(userData));
    appState->currentScreenInstruction = GTSWFCINIT_CONNECT_TO_REMOTE_SERVER;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_ConnectToRemoteServer(GTSApplicationState *appState)
{
    GTSNetworking_InitConnection();

    appState->currentScreenInstruction = GTSWFCINIT_WAIT_FOR_SERVER_RESPONSE;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_WaitForServerResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errCode) {
        case GTS_RESULT_SUCCESS:
            appState->currentScreenInstruction = GTSWFCINIT_SET_PROFILE_REQUEST;
            break;
        case GTS_RESULT_PROFILE_EXISTS:
            GTSApplication_DestroyWaitDial(appState);
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
            break;
        case GTS_RESULT_BANNED:
        case GTS_RESULT_GTS_CROWDED:
            GTSApplication_DestroyWaitDial(appState);
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
            break;
        case GTS_RESULT_ABORTED:
        case GTS_RESULT_CONNECTION_FAILED:
            GTSApplication_DestroyWaitDial(appState);
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
            break;
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
            GTSApplication_DestroyWaitDial(appState);
            appState->commsErrorMessage = errCode;
            appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
            break;
        case GTS_RESULT_ERROR:
        default:
            GTSApplication_DestroyWaitDial(appState);
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_SetProfileRequest(GTSApplicationState *appState)
{
    WorldExchange_GetTrainerObject(appState->playerData->saveData, &appState->worldExchangeTrainer);
    GTSNetworking_SetProfile(&appState->worldExchangeTrainer, &appState->worldExchangeTrainerError);

    appState->currentScreenInstruction = GTSWFCINIT_SET_PROFILE_RESPONSE;
    appState->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_SetProfileResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errorCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errorCode) {
        case GTS_RESULT_SUCCESS:
            GTSApplication_DestroyWaitDial(appState);

            switch (appState->worldExchangeTrainerError.validationError) {
            case WE_VALIDATION_ERROR_VALID:
                switch (appState->worldExchangeTrainerError.systemError) {
                case WE_SYSTEM_ERROR_NONE:
                    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_NONE);
                    appState->currentScreenInstruction = GTSWFCINIT_EXIT_SCREEN;
                    break;
                case WE_SYSTEM_ERROR_DWC_3:
                    appState->commsErrorMessage = GTSCOMMS_RESULT_WII_AUTH_ERROR;
                    appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
                    break;
                case WE_SYSTEM_ERROR_DWC_1:
                    appState->commsErrorMessage = GTSCOMMS_RESULT_COMMUNICATION_ERROR1;
                    appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
                    break;
                case WE_SYSTEM_ERROR_DWC_2:
                    appState->commsErrorMessage = GTSCOMMS_RESULT_COMMUNICATION_ERROR2;
                    appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
                    break;
                default:
                    NetworkError_DisplayGTSCriticalError();
                    break;
                }
                break;
            case WE_VALIDATION_ERROR_FAILED_1:
                appState->commsErrorMessage = GTSCOMMS_RESULT_DATA_CORRUPTION;
                appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
                break;
            case WE_VALIDATION_ERROR_FAILED_2:
                appState->commsErrorMessage = GTSCOMMS_RESULT_SERVER_MAINTENANCE;
                appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
                break;
            default:
                GTSApplication_DestroyWaitDial(appState);
                NetworkError_DisplayGTSCriticalError();
                break;
            }
            break;
        case GTS_RESULT_PROFILE_EXISTS:
            GTSApplication_DestroyWaitDial(appState);
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
            break;
        case GTS_RESULT_BANNED:
        case GTS_RESULT_GTS_CROWDED:
            GTSApplication_DestroyWaitDial(appState);
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
            break;
        case GTS_RESULT_ABORTED:
        case GTS_RESULT_CONNECTION_FAILED:
            GTSApplication_DestroyWaitDial(appState);
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
            break;
        case GTS_RESULT_SERVER_MAINTENANCE:
        case GTS_RESULT_NOT_IN_DCF_PHASE:
            GTSApplication_DestroyWaitDial(appState);
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = GTSWFCINIT_FATAL_ERROR;
            break;
        case GTS_RESULT_ERROR:
        default:
            GTSApplication_DestroyWaitDial(appState);
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == NETWORK_TIMEOUT_FRAMES) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_ShowNetworkError(GTSApplicationState *appState)
{
    int errorMessage = NintendoWFC_GetErrorCode(-appState->dwcErrCode, appState->dwcErrType);
    GTSWFCInit_DisplayErrorCode(appState, errorMessage, -appState->dwcErrCode);
    appState->currentScreenInstruction = GTSWFCINIT_RESTART_CONNECTION;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_RestartConnection(GTSApplicationState *appState)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A || gSystem.pressedKeys & PAD_BUTTON_B) {
        Window_EraseStandardFrame(&appState->networkErrWindow, 0);
        appState->currentScreenInstruction = GTSWFCINIT_ASK_TO_SETUP_CONNECTION;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_ExitScreen(GTSApplicationState *appState)
{
    NetworkIcon_Destroy();
    GTSApplication_DestroyWaitDial(appState);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);

    appState->currentScreenInstruction = GTSWFCINIT_ASK_TO_SETUP_CONNECTION;
    appState->fadeBothScreens = TRUE;

    return GTS_LOOP_STATE_FINISH;
}

static int GTSWFCInit_HandleRetryMenuInput(GTSApplicationState *appState)
{
    #ifdef SDK_BUILD_ARM
    int result = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);
    #else
    u64 result = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);
    #endif

    if (result != MENU_NOTHING_CHOSEN) {
        if (result == MENU_CANCEL) {
            appState->currentScreenInstruction = GTSWFCINIT_ASK_TO_SETUP_CONNECTION;
        } else {
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_NONE);
            appState->currentScreenInstruction = GTSWFCINIT_EXIT_SCREEN;
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_FatalError(GTSApplicationState *appState)
{
    int errorMessage = 0;

    switch (appState->commsErrorMessage) {
    case GTSCOMMS_RESULT_GTS_MAINTENANCE:
        errorMessage = pl_msg_00000671_00144;
        break;
    case GTSCOMMS_RESULT_CROWDED1:
    case GTSCOMMS_RESULT_CROWDED2:
        errorMessage = GTS_Text_Error_GTSCrowded;
        break;
    case GTSCOMMS_RESULT_DISCONNECTED1:
    case GTSCOMMS_RESULT_DISCONNECTED2:
        errorMessage = GTS_Text_Error_DisconnectedFromGTSReturning;
        break;
    case GTSCOMMS_RESULT_UNABLE_TO_CONNECT1:
    case GTSCOMMS_RESULT_UNABLE_TO_CONNECT2:
    case GTSCOMMS_RESULT_UNABLE_TO_CONNECT3:
    case GTSCOMMS_RESULT_UNABLE_TO_CONNECT4:
    default:
        errorMessage = pl_msg_00000671_00149;
        break;
    case GTSCOMMS_RESULT_WII_AUTH_ERROR:
        errorMessage = pl_msg_00000671_00177;
        break;
    case GTSCOMMS_RESULT_COMMUNICATION_ERROR1:
        errorMessage = pl_msg_00000671_00174;
        break;
    case GTSCOMMS_RESULT_COMMUNICATION_ERROR2:
        errorMessage = pl_msg_00000671_00174;
        break;
    case GTSCOMMS_RESULT_DATA_CORRUPTION:
        errorMessage = pl_msg_00000671_00175;
        break;
    case GTSCOMMS_RESULT_SERVER_MAINTENANCE:
        errorMessage = pl_msg_00000671_00176;
        break;
    }

    GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, errorMessage, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, GTSWFCINIT_WAIT_FOR_TEXT, GTSWFCINIT_FATAL_ERROR_DISCONNECT_MESSAGE);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_FatalErrorDisconnectMessage(GTSApplicationState *appState)
{
    switch (appState->wfcDisconnectMessageIndex) {
    case WFCDISCONNECTMSG_DISCONNECTING_FROM_WIFI:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, pl_msg_00000671_00178, TEXT_SPEED_FAST, 0xf0f);
        appState->wfcDisconnectMessageIndex++;
        break;
    case WFCDISCONNECTMSG_WAIT_THEN_DISCONNECT:
        if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
            CommManager_EndGlobalWifi();
            DWC_CleanupInet();
            appState->wfcDisconnectMessageIndex++;
        }
        break;
    case WFCDISCONNECTMSG_YOU_HAVE_DISCONNECTED:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, pl_msg_00000671_00179, TEXT_SPEED_FAST, 0xf0f);
        appState->wfcDisconnectMessageIndex++;
        break;
    case WFCDISCONNECTMSG_WAIT_FOR_DISCONNECTED_TEXT:
        if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
            appState->wfcDisconnectMessageIndex++;
        }
        break;
    default:
        appState->wfcDisconnectMessageFrameDelay++;

        if (appState->wfcDisconnectMessageFrameDelay > 30) {
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_NONE);
            appState->currentScreenInstruction = GTSWFCINIT_EXIT_SCREEN;
        }
        break;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_WaitForText(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_WaitForTextDelayed(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        if (appState->frameDelay > 30) {
            appState->currentScreenInstruction = appState->nextScreenInstruction;
        }

        appState->frameDelay++;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSWFCInit_WaitForTextThenYesNoMenu(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 13, ((TITLE_WINDOW_BASE_TILE + 27 * 4) + 23 * 16) + 24 * 2);
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

void GTSApplication_DisplayStatusMessage(GTSApplicationState *appState, MessageLoader *messageLoader, int messageId, int textSpeed, u16 unused)
{
    String *template = MessageLoader_GetNewString(messageLoader, messageId);

    StringTemplate_Format(appState->stringTemplate, appState->genericMessageBuffer, template);
    String_Free(template);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->bottomInstructionWindow, 0, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->bottomInstructionWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);
    appState->frameDelay = 0;
}

static int Text_CalcAlignedX(Window *window, String *string, int x, int centered, TextColor textColor, int font)
{
    int width = 0;

    switch (centered) {
    case 1:
        width = Font_CalcStringWidth(font, string, 0);
        x = ((window->width * 8) - width) / 2;
        break;
    case 2:
        width = Font_CalcStringWidth(font, string, 0);
        x = (window->width * 8) - width;
        break;
    }

    return x;
}

void Window_DrawAlignedMessageText(Window *window, String *string, int x, int y, int alignment, TextColor textColor)
{
    x = Text_CalcAlignedX(window, string, x, alignment, textColor, FONT_MESSAGE);
    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, string, x, y, TEXT_SPEED_INSTANT, textColor, NULL);
}

void Window_DrawAlignedSystemText(Window *window, String *string, int x, int y, int centered, TextColor textColor)
{
    x = Text_CalcAlignedX(window, string, x, centered, textColor, FONT_SYSTEM);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, string, x, y, TEXT_SPEED_INSTANT, textColor, NULL);
}

void GTSApplication_InitNetworkIcon(GTSApplicationState *appState)
{
    NetworkIcon_Init();
}

static void GTSWFCInit_DisplayNetworkError(GTSApplicationState *appState, int messageId)
{
    String *fmtString = String_Init(16 * 8 * 2, HEAP_ID_62);

    MessageLoader_GetString(appState->disconnStatusMessageLoader, messageId, fmtString);
    StringTemplate_Format(appState->stringTemplate, appState->shortErrorBuffer, fmtString);

    Window_FillTilemap(&appState->networkErrWindow, 15);
    Window_DrawStandardFrame(&appState->networkErrWindow, 1, 1 + SCROLLING_MESSAGE_BOX_TILE_COUNT, 11);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->networkErrWindow, FONT_MESSAGE, appState->shortErrorBuffer, 0, 0, TEXT_SPEED_INSTANT, NULL);

    String_Free(fmtString);
}

static void GTSWFCInit_DisplayErrorCode(GTSApplicationState *appState, int errorCode, int visibleErrorCode)
{
    int messageId;

    if (errorCode != -1) {
        messageId = 0 + errorCode;
    } else {
        messageId = pl_msg_00000695_00011;
    }

    StringTemplate_SetNumber(appState->stringTemplate, 0, visibleErrorCode, 5, 2, 1);
    Window_EraseMessageBox(&appState->bottomInstructionWindow, 1);

    GTSWFCInit_DisplayNetworkError(appState, messageId);
}
