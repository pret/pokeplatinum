#include "overlay094/screens/wfc_init.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/net.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/networking.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "inlines.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "render_window.h"
#include "screen_fade.h"
#include "strbuf.h"
#include "string_template.h"
#include "system.h"
#include "system_data.h"
#include "text.h"
#include "unk_0202ACE0.h"
#include "unk_02030CE8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

#include "res/text/bank/gts.h"
#include "res/text/bank/unk_0674.h"
#include "res/text/bank/unk_0695.h"

static void GTSApplication_WFCInit_InitBackground(BgConfig *bgConfig);
static void GTSApplication_WFCInit_CleanupBackground(BgConfig *bgConfig);
static void GTSApplication_WFCInit_InitGraphics(GTSApplicationState *appState);
static void GTSApplication_WFCInit_InitText(GTSApplicationState *appState);
static void GTSApplication_WFCInit_CleanupWindows(GTSApplicationState *appState);
static void GTSApplication_WFCInit_InitTitle(GTSApplicationState *appState);
static void GTSApplication_WFCInit_CleanupStrings(GTSApplicationState *appState);
static void GTSApplication_WFCInit_DisplayNetworkError(GTSApplicationState *appState, int messageId);
static void GTSApplication_WFCInit_DisplayErrorCode(GTSApplicationState *appState, int errorCode, int visibleErrorCode);
static int GTSApplication_WFCInit_AskToSetupConnection(GTSApplicationState *appState);
static int GTSApplication_WFCInit_ProcessSetupConfirmation(GTSApplicationState *appState);
static int GTSApplication_WFCInit_RestartOrExit(GTSApplicationState *appState);
static int GTSApplication_WFCInit_Connect(GTSApplicationState *appState);
static int GTSApplication_WFCInit_CheckConnection(GTSApplicationState *appState);
static int GTSApplication_WFCInit_GetDWCKey(GTSApplicationState *appState);
static int GTSApplication_WFCInit_ConnectToRemoteServer(GTSApplicationState *appState);
static int GTSApplication_WFCInit_SetProfileRequest(GTSApplicationState *appState);
static int GTSApplication_WFCInit_SetProfileResponse(GTSApplicationState *appState);
static int GTSApplication_WFCInit_ExitScreen(GTSApplicationState *appState);
static int ov94_022455D0(GTSApplicationState *appState);
static int GTSApplication_WFCInit_WaitForText(GTSApplicationState *appState);
static int GTSApplication_WFCInit_WaitForTextThenYesNoMenu(GTSApplicationState *appState);
static int GTSApplication_WFCInit_FatalError(GTSApplicationState *appState);
static int GTSApplication_WFCInit_FatalErrorDisconnectMessage(GTSApplicationState *appState);
static int GTSApplication_WFCInit_WaitForServerResponse(GTSApplicationState *appState);
static int GTSApplication_WFCInit_AskToDisconnect(GTSApplicationState *appState);
static int GTSApplication_WFCInit_ShowDisconnectingMessage(GTSApplicationState *appState);
static int GTSApplication_WFCInit_CleanupNetworking(GTSApplicationState *appState);
static int GTSApplication_WFCInit_ShowDisconnectedMessage(GTSApplicationState *appState);
static int GTSApplication_WFCInit_WaitForTextDelayed(GTSApplicationState *appState);
static int GTSApplication_WFCInit_Authenticate(GTSApplicationState *appState);
static int GTSApplication_WFCInit_CheckAuthentication(GTSApplicationState *appState);
static int GTSApplication_WFCInit_ShowNetworkError(GTSApplicationState *appState);
static int GTSApplication_WFCInit_RestartConnection(GTSApplicationState *appState);
static int ov94_02245894(Window *window, Strbuf *strbuf, int x, int centered, TextColor textColor, int font);

static int (*gtsWFCInitScreenStates[])(GTSApplicationState *) = {
    GTSApplication_WFCInit_AskToSetupConnection,
    GTSApplication_WFCInit_ProcessSetupConfirmation, // 11 (exit) or 12 (continue)
    GTSApplication_WFCInit_Connect,
    GTSApplication_WFCInit_CheckConnection, // returns 23 (connection error), 21 (fatal error), or 4
    GTSApplication_WFCInit_Authenticate,
    GTSApplication_WFCInit_CheckAuthentication, // returns 6 (successful) or 23 (connection error)
    GTSApplication_WFCInit_GetDWCKey,
    GTSApplication_WFCInit_ConnectToRemoteServer,
    GTSApplication_WFCInit_WaitForServerResponse,
    GTSApplication_WFCInit_SetProfileRequest,
    GTSApplication_WFCInit_SetProfileResponse, // 11 successful, 21 error
    GTSApplication_WFCInit_ExitScreen, // exit -> returns 4

    GTSApplication_WFCInit_WaitForText,
    GTSApplication_WFCInit_WaitForTextThenYesNoMenu,

    ov94_022455D0, // never called? returns 0 or 11
    GTSApplication_WFCInit_AskToDisconnect,
    GTSApplication_WFCInit_RestartOrExit,
    GTSApplication_WFCInit_ShowDisconnectingMessage,
    GTSApplication_WFCInit_CleanupNetworking,
    GTSApplication_WFCInit_ShowDisconnectedMessage,
    GTSApplication_WFCInit_WaitForTextDelayed,
    GTSApplication_WFCInit_FatalError,
    GTSApplication_WFCInit_FatalErrorDisconnectMessage,
    GTSApplication_WFCInit_ShowNetworkError,
    GTSApplication_WFCInit_RestartConnection
};

int GTSApplication_InitWFC_Init(GTSApplicationState *appState, int unused1)
{
    GTSApplication_WFCInit_InitTitle(appState);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_IN, FADE_TYPE_BRIGHTNESS_IN, COLOR_BLACK, 6, 1, HEAP_ID_62);

    GTSApplication_WFCInit_InitBackground(appState->bgConfig);
    GTSApplication_WFCInit_InitGraphics(appState);
    GTSApplication_WFCInit_InitText(appState);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, TRUE);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, TRUE);
    sub_02038438(appState->playerData->saveData);

    ov94_02245934(appState);

    if (!DWC_CheckInet()) {
        if (appState->playerData->connectToWiFi) {
            GTSApplication_DisplayStatusMessage(appState, appState->unk0674MessageLoader, pl_msg_00000674_00001, TEXT_SPEED_FAST, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, 12, 2);
            GTSApplicationState_AddWaitDial(appState);
        } else {
            appState->currentScreenInstruction = 0;
        }
    } else {
        appState->currentScreenInstruction = 17;
    }

    return GTS_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_WFCInit_Main(GTSApplicationState *appState, int param1)
{
    NetworkIcon_SetStrength(GTSApplication_GetNetworkStrength());

    int previousInstruction = appState->currentScreenInstruction;
    int parentStateCode = (*gtsWFCInitScreenStates[appState->currentScreenInstruction])(appState);

    if (previousInstruction != appState->currentScreenInstruction) { // pointer changed
        appState->wfcDisconnectMessageIndex = 0;
        appState->wfcDisconnectMessageFrameDelay = 0;
    }

    inline_ov61_0222C0F8(&appState->unk_11B4);

    return parentStateCode;
}

int GTSApplication_WFCInit_Exit(GTSApplicationState *appState, int param1)
{
    inline_ov61_0222C160(&appState->unk_11B4);

    GTSApplication_WFCInit_CleanupStrings(appState);
    GTSApplication_WFCInit_CleanupWindows(appState);
    GTSApplication_WFCInit_CleanupBackground(appState->bgConfig);

    inline_ov96_0223BDEC(&appState->unk_11B4, 0);

    GTSApplication_MoveToNextScreen(appState);

    // this line of code is triggered when nextScreen has been set to 0
    if (appState->screenId == 0) {
        return GTS_LOOP_STATE_EXIT;
    }

    return GTS_LOOP_STATE_INIT;
}

static void GTSApplication_WFCInit_InitBackground(BgConfig *bgConfig)
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

static void GTSApplication_WFCInit_CleanupBackground(BgConfig *bgConfig)
{
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgConfig, BG_LAYER_MAIN_0);
}

static void GTSApplication_WFCInit_InitGraphics(GTSApplicationState *appState)
{
    BgConfig *bgConfig = appState->bgConfig;
    NARC *narc = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(narc, 3, PAL_LOAD_MAIN_BG, 0, 0, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(narc, 3, PAL_LOAD_SUB_BG, 0, 0, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(bgConfig, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->playerData->options), HEAP_ID_62);
    LoadStandardWindowGraphics(bgConfig, BG_LAYER_MAIN_0, 1 + (18 + 12), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 2, bgConfig, BG_LAYER_MAIN_1, 0, 0, FALSE, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 5, bgConfig, BG_LAYER_MAIN_1, 0, 32 * 24 * 2, FALSE, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(narc, 10, bgConfig, BG_LAYER_SUB_1, 0, 0, FALSE, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(narc, 11, bgConfig, BG_LAYER_SUB_1, 0, 32 * 24 * 2, FALSE, HEAP_ID_62);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);

    inline_ov61_0222C3B0(&appState->unk_11B4, narc, 4, HEAP_ID_62);

    NARC_dtor(narc);
}

static void GTSApplication_WFCInit_InitText(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->unk_F8C, BG_LAYER_MAIN_0, 4, 4, 23, 16, 13, ((1 + (18 + 12)) + 9) + 27 * 4);
    Window_FillTilemap(&appState->unk_F8C, 0x0);
    Window_Add(appState->bgConfig, &appState->unk_F7C, BG_LAYER_MAIN_0, 4, 1, 24, 2, 13, (((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16);
    Window_FillTilemap(&appState->unk_F7C, 0x0);

    ov94_022458CC(&appState->unk_F7C, appState->title, 0, 1, 1, TEXT_COLOR(15, 14, 0));

    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, BG_LAYER_MAIN_0, 2, 19, 27, 4, 13, (1 + (18 + 12)) + 9);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0x0);
}

static void GTSApplication_WFCInit_CleanupWindows(GTSApplicationState *appState)
{
    Window_Remove(&appState->bottomInstructionWindow);
    Window_Remove(&appState->unk_F7C);
    Window_Remove(&appState->unk_F8C);
}

static void GTSApplication_WFCInit_InitTitle(GTSApplicationState *appState)
{
    appState->genericMessageBuffer = Strbuf_Init(90 * 2, HEAP_ID_62);
    appState->shortErrorBuffer = Strbuf_Init(16 * 8 * 2, HEAP_ID_62);
    appState->title = MessageLoader_GetNewStrbuf(appState->gtsMessageLoader, GTS_Text_NintendoWifiConnection);
}

static void GTSApplication_WFCInit_CleanupStrings(GTSApplicationState *appState)
{
    Strbuf_Free(appState->title);
    Strbuf_Free(appState->shortErrorBuffer);
    Strbuf_Free(appState->genericMessageBuffer);
}

static int GTSApplication_WFCInit_AskToSetupConnection(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->unk0695MessageLoader, pl_msg_00000695_00017, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 13, 1);

    // this starts counting box pokemon in the main loop
    appState->deferredBoxId = 1;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ProcessSetupConfirmation(GTSApplicationState *appState)
{
    int menuInput = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (menuInput != MENU_NOTHING_CHOSEN) {
        if (menuInput == MENU_CANCELED) {
            sub_0203848C(); // free the network lock?
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
            appState->currentScreenInstruction = 11;
        } else {
            GTSApplication_DisplayStatusMessage(appState, appState->unk0674MessageLoader, pl_msg_00000674_00001, TEXT_SPEED_FAST, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, 12, 2);
            GTSApplicationState_AddWaitDial(appState);
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_AskToDisconnect(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_IsItOKToDisconnect, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 13, 16);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_RestartOrExit(GTSApplicationState *appState)
{
    int menuInput = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (menuInput != MENU_NOTHING_CHOSEN) {
        if (menuInput == MENU_CANCELED) {
            if (!DWC_CheckInet()) {
                appState->currentScreenInstruction = 0;
            } else {
                GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_NETWORK_HANDLER, SCREEN_ARGUMENT_CHECK_SERVER);
                appState->returnAfterNetworkScreen = GTS_SCREEN_MAIN_MENU;
                appState->currentScreenInstruction = 11;
            }
        } else {
            if (DWC_CheckInet()) {
                DWC_CleanupInet();
            }

            sub_0203848C();
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
            appState->currentScreenInstruction = 11;
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ShowDisconnectingMessage(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->unk0695MessageLoader, pl_msg_00000695_00026, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 12, 18);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_CleanupNetworking(GTSApplicationState *appState)
{
    sub_0203848C();

    DWC_CleanupInet();
    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
    appState->currentScreenInstruction = 19;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ShowDisconnectedMessage(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->unk0695MessageLoader, pl_msg_00000695_00027, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 20, 11);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_Connect(GTSApplicationState *appState)
{
    DWC_InitInetEx(&appState->dwcInetControlObject, DEFAULT_DWC_DMA_NUMBER, DEFAULT_DWC_POWER_MODE, DEFAULT_DWC_SSL_PRIORITY);
    DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
    DWC_ConnectInetAsync();

    appState->currentScreenInstruction = 3;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_CheckConnection(GTSApplicationState *appState)
{
    DWC_ProcessInet();

    if (DWC_CheckInet()) {
        switch (DWC_GetInetStatus()) {
        case DWC_CONNECTINET_STATE_ERROR: {
            DWCError v0;
            int v1;
            DWCErrorType v2;

            v0 = DWC_GetLastErrorEx(&v1, &v2);

            appState->unk_40 = v0;
            appState->unk_44 = v1;
            appState->unk_48 = v2;
        }
            DWC_ClearError();
            DWC_CleanupInet();
            GTSApplicationState_DestroyWaitDial(appState);

            appState->currentScreenInstruction = 23;

            break;
        case DWC_CONNECTINET_STATE_NOT_INITIALIZED:
        case DWC_CONNECTINET_STATE_IDLE:
        case DWC_CONNECTINET_STATE_OPERATING:
        case DWC_CONNECTINET_STATE_OPERATED:
        case DWC_CONNECTINET_STATE_DISCONNECTING:
        case DWC_CONNECTINET_STATE_DISCONNECTED:
        default:
        case DWC_CONNECTINET_STATE_FATAL_ERROR: {
            DWCError v3;
            int v4;

            v3 = DWC_GetLastError(&v4);
            GTSApplicationState_DestroyWaitDial(appState);

            appState->currentScreenInstruction = 21;
            appState->commsErrorMessage = -2;
        } break;

        case DWC_CONNECTINET_STATE_CONNECTED: {
            DWCApInfo v5;

            DWC_GetApInfo(&v5);

            if (v5.aptype == DWC_APINFO_TYPE_SHOP) {
                (void)0;
            }
        }

            appState->currentScreenInstruction = 4;
            break;
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_Authenticate(GTSApplicationState *appState)
{
    DWC_NASLoginAsync();
    appState->currentScreenInstruction = 5;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_CheckAuthentication(GTSApplicationState *appState)
{
    switch (DWC_NASLoginProcess()) {
    case DWC_NASLOGIN_STATE_SUCCESS:
        appState->currentScreenInstruction = 6;
        break;
    case DWC_NASLOGIN_STATE_ERROR:
    case DWC_NASLOGIN_STATE_CANCELED:
    case DWC_NASLOGIN_STATE_DIRTY:
        GTSApplicationState_DestroyWaitDial(appState);

        int v0;
        DWCErrorType v1;
        DWCError v2;

        v2 = DWC_GetLastErrorEx(&v0, &v1);

        appState->unk_40 = v2;
        appState->unk_44 = v0;

        DWC_ClearError();
        DWC_CleanupInet();

        appState->currentScreenInstruction = 23;

        switch (v1) {
        case DWC_ETYPE_LIGHT:
        case DWC_ETYPE_SHOW_ERROR:
            appState->currentScreenInstruction = 23;
            break;
        case DWC_ETYPE_SHUTDOWN_GHTTP:
            DWC_ShutdownGHTTP();
            appState->currentScreenInstruction = 23;
            break;
        case DWC_ETYPE_DISCONNECT:
            appState->currentScreenInstruction = 23;
            break;
        case DWC_ETYPE_SHUTDOWN_FM:
            DWC_ShutdownFriendsMatch();
            appState->currentScreenInstruction = 23;
            break;
        case DWC_ETYPE_SHUTDOWN_ND:
        case DWC_ETYPE_FATAL:
            NetworkError_DisplayGTSCriticalError();
            break;
        }

        if ((v0 < -20000) && (v0 >= -29999)) {
            appState->currentScreenInstruction = 23;
        }
        break;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_GetDWCKey(GTSApplicationState *appState)
{
    DWCUserData *v0;
    s32 v1;

    v0 = WiFiList_GetUserData(appState->playerData->wiFiList);
    v1 = SystemData_GetDWCProfileId(appState->playerData->systemData);

    if (v1 == 0) {
        SystemData_SetDWCProfileId(appState->playerData->systemData, appState->playerData->dwcProfileId);
    }

    v1 = SystemData_GetDWCProfileId(appState->playerData->systemData);
    ov94_0223B140(v1, DWC_CreateFriendKey(v0));
    appState->currentScreenInstruction = 7;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ConnectToRemoteServer(GTSApplicationState *param0)
{
    GTSNetworking_InitConnection();

    param0->currentScreenInstruction = 8;
    param0->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_WaitForServerResponse(GTSApplicationState *param0)
{
    if (GTSNetworking_RequestComplete()) {
        s32 v0 = GTSNetworking_GetErrorCode();

        param0->networkTimeoutCounter = 0;

        switch (v0) {
        case 0: // success
            param0->currentScreenInstruction = 9;
            break;
        case 1: // first byte = 6
            GTSApplicationState_DestroyWaitDial(param0);
            param0->commsErrorMessage = v0;
            param0->currentScreenInstruction = 21;
            break;
        case 2: // first byte = 7
        case -1:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->commsErrorMessage = v0;
            param0->currentScreenInstruction = 21;
            break;
        case -12:
        case -15:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->commsErrorMessage = v0;
            param0->currentScreenInstruction = 21;
            break;
        case -2:
        case -14:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->commsErrorMessage = v0;
            param0->currentScreenInstruction = 21;
            break;
        case -13:
        default:
            GTSApplicationState_DestroyWaitDial(param0);
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        param0->networkTimeoutCounter++;

        if (param0->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_SetProfileRequest(GTSApplicationState *param0)
{
    WorldExchange_GetTrainerObject(param0->playerData->saveData, &param0->worldExchangeTrainer);
    GTSNetworking_SetProfile(&param0->worldExchangeTrainer, &param0->worldExchangeTrainerError);

    param0->currentScreenInstruction = 10;
    param0->networkTimeoutCounter = 0;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_SetProfileResponse(GTSApplicationState *appState)
{
    if (GTSNetworking_RequestComplete()) {
        s32 errorCode = GTSNetworking_GetErrorCode();

        appState->networkTimeoutCounter = 0;

        switch (errorCode) {
        case 0:
            GTSApplicationState_DestroyWaitDial(appState);

            switch (appState->worldExchangeTrainerError.validationError) {
            case 0:
                switch (appState->worldExchangeTrainerError.systemError) {
                case 0:
                    GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_MAIN_MENU, SCREEN_ARGUMENT_0);
                    appState->currentScreenInstruction = 11;
                    break;
                case 3: // pl_msg_00000671_00177
                    appState->commsErrorMessage = -5003;
                    appState->currentScreenInstruction = 21;
                    break;
                case 1: // pl_msg_00000671_00174
                    appState->commsErrorMessage = -5000;
                    appState->currentScreenInstruction = 21;
                    break;
                case 2: // pl_msg_00000671_00174
                    appState->commsErrorMessage = -5001;
                    appState->currentScreenInstruction = 21;
                    break;
                default:
                    NetworkError_DisplayGTSCriticalError();
                    break;
                }
                break;
            case 1: // pl_msg_00000671_00175
                appState->commsErrorMessage = -5004;
                appState->currentScreenInstruction = 21;
                break;
            case 2: // pl_msg_00000671_00176
                appState->commsErrorMessage = -5005;
                appState->currentScreenInstruction = 21;
                break;
            default:
                GTSApplicationState_DestroyWaitDial(appState);
                NetworkError_DisplayGTSCriticalError();
                break;
            }
            break;
        case 1:
            GTSApplicationState_DestroyWaitDial(appState);
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = 21;
            break;
        case 2:
        case -1:
            GTSApplicationState_DestroyWaitDial(appState);
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = 21;
            break;
        case -12:
        case -15:
            GTSApplicationState_DestroyWaitDial(appState);
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = 21;
            break;
        case -2:
        case -14:
            GTSApplicationState_DestroyWaitDial(appState);
            appState->commsErrorMessage = errorCode;
            appState->currentScreenInstruction = 21;
            break;
        case -13:
        default:
            GTSApplicationState_DestroyWaitDial(appState);
            NetworkError_DisplayGTSCriticalError();
            break;
        }
    } else {
        appState->networkTimeoutCounter++;

        if (appState->networkTimeoutCounter == (30 * 60 * 2)) {
            NetworkError_DisplayGTSCriticalError();
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ShowNetworkError(GTSApplicationState *appState)
{
    int errorMessage = NintendoWFC_GetErrorCode(-appState->unk_44, appState->unk_48);
    GTSApplication_WFCInit_DisplayErrorCode(appState, errorMessage, -appState->unk_44);
    appState->currentScreenInstruction = 24;

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_RestartConnection(GTSApplicationState *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A || gSystem.pressedKeys & PAD_BUTTON_B) {
        Window_EraseStandardFrame(&param0->unk_F8C, 0);
        param0->currentScreenInstruction = 0;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ExitScreen(GTSApplicationState *param0)
{
    NetworkIcon_Destroy();
    GTSApplicationState_DestroyWaitDial(param0);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_BRIGHTNESS_OUT, FADE_TYPE_BRIGHTNESS_OUT, COLOR_BLACK, 6, 1, HEAP_ID_62);

    param0->currentScreenInstruction = 0;
    param0->fadeBothScreens = 1;

    return GTS_LOOP_STATE_FINISH;
}

static int ov94_022455D0(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->currentScreenInstruction = 0;
        } else {
            GTSApplication_SetNextScreenWithArgument(param0, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
            param0->currentScreenInstruction = 11;
        }
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_FatalError(GTSApplicationState *appState)
{
    int errorMessage = 0;

    switch (appState->commsErrorMessage) {
    case 1:
        errorMessage = pl_msg_00000671_00144;
        break;
    case 2:
    case -1:
        errorMessage = GTS_Text_Error_GTSCrowded;
        break;
    case -2:
    case -14:
        errorMessage = GTS_Text_Error_DisconnectedFromGTSReturning;
        break;
    case -12:
    case -15:
    case -3:
    case -5:
    default:
        errorMessage = pl_msg_00000671_00149;
        break;
    case -5003:
        errorMessage = pl_msg_00000671_00177;
        break;
    case -5000:
        errorMessage = pl_msg_00000671_00174;
        break;
    case -5001:
        errorMessage = pl_msg_00000671_00174;
        break;
    case -5004:
        errorMessage = pl_msg_00000671_00175;
        break;
    case -5005:
        errorMessage = pl_msg_00000671_00176;
        break;
    }

    GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, errorMessage, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 12, 22);

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_FatalErrorDisconnectMessage(GTSApplicationState *appState)
{
    switch (appState->wfcDisconnectMessageIndex) {
    case 0:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, pl_msg_00000671_00178, TEXT_SPEED_FAST, 0xf0f);
        appState->wfcDisconnectMessageIndex++;
        break;
    case 1:
        if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
            sub_0203848C();
            DWC_CleanupInet();
            appState->wfcDisconnectMessageIndex++;
        }
        break;
    case 2:
        GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, pl_msg_00000671_00179, TEXT_SPEED_FAST, 0xf0f);
        appState->wfcDisconnectMessageIndex++;
        break;
    case 3:
        if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
            appState->wfcDisconnectMessageIndex++;
        }
        break;
    default:
        appState->wfcDisconnectMessageFrameDelay++;

        if (appState->wfcDisconnectMessageFrameDelay > 30) {
            GTSApplication_SetNextScreenWithArgument(appState, GTS_SCREEN_WFC_INIT, SCREEN_ARGUMENT_0);
            appState->currentScreenInstruction = 11;
        }
        break;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_WaitForText(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_WaitForTextDelayed(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        if (appState->frameDelay > 30) {
            appState->currentScreenInstruction = appState->nextScreenInstruction;
        }

        appState->frameDelay++;
    }

    return GTS_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_WaitForTextThenYesNoMenu(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 13, ((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2);
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_LOOP_STATE_MAIN;
}

void GTSApplication_DisplayStatusMessage(GTSApplicationState *appState, MessageLoader *messageLoader, int messageId, int textSpeed, u16 unused)
{
    Strbuf *template = MessageLoader_GetNewStrbuf(messageLoader, messageId);

    StringTemplate_Format(appState->stringTemplate, appState->genericMessageBuffer, template);
    Strbuf_Free(template);
    Window_FillTilemap(&appState->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&appState->bottomInstructionWindow, 0, 1, 10);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->bottomInstructionWindow, FONT_MESSAGE, appState->genericMessageBuffer, 0, 0, textSpeed, NULL);
    appState->frameDelay = 0;
}

static int ov94_02245894(Window *window, Strbuf *strbuf, int x, int centered, TextColor textColor, int font)
{
    int width = 0;

    switch (centered) {
    case 1:
        width = Font_CalcStrbufWidth(font, strbuf, 0);
        x = ((window->width * 8) - width) / 2;
        break;
    case 2:
        width = Font_CalcStrbufWidth(font, strbuf, 0);
        x = (window->width * 8) - width;
        break;
    }

    return x;
}

void ov94_022458CC(Window *window, Strbuf *strbuf, int x, int y, int width, TextColor textColor)
{
    x = ov94_02245894(window, strbuf, x, width, textColor, FONT_MESSAGE);
    Text_AddPrinterWithParamsAndColor(window, FONT_MESSAGE, strbuf, x, y, TEXT_SPEED_INSTANT, textColor, NULL);
}

void ov94_02245900(Window *window, Strbuf *strbuf, int x, int y, int centered, TextColor textColor)
{
    x = ov94_02245894(window, strbuf, x, centered, textColor, FONT_SYSTEM);
    Text_AddPrinterWithParamsAndColor(window, FONT_SYSTEM, strbuf, x, y, TEXT_SPEED_INSTANT, textColor, NULL);
}

void ov94_02245934(GTSApplicationState *appState)
{
    sub_02039734();
}

static void GTSApplication_WFCInit_DisplayNetworkError(GTSApplicationState *appState, int messageId)
{
    Strbuf *fmtString = Strbuf_Init(16 * 8 * 2, HEAP_ID_62);

    MessageLoader_GetStrbuf(appState->unk0695MessageLoader, messageId, fmtString);
    StringTemplate_Format(appState->stringTemplate, appState->shortErrorBuffer, fmtString);

    Window_FillTilemap(&appState->unk_F8C, 15);
    Window_DrawStandardFrame(&appState->unk_F8C, 1, 1 + (18 + 12), 11);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->unk_F8C, FONT_MESSAGE, appState->shortErrorBuffer, 0, 0, TEXT_SPEED_INSTANT, NULL);

    Strbuf_Free(fmtString);
}

static void GTSApplication_WFCInit_DisplayErrorCode(GTSApplicationState *appState, int errorCode, int visibleErrorCode)
{
    int messageId;

    if (errorCode != -1) {
        messageId = 0 + errorCode;
    } else {
        messageId = pl_msg_00000695_00011;
    }

    StringTemplate_SetNumber(appState->stringTemplate, 0, visibleErrorCode, 5, 2, 1);
    Window_EraseMessageBox(&appState->bottomInstructionWindow, 1);

    GTSApplication_WFCInit_DisplayNetworkError(appState, messageId);
}
