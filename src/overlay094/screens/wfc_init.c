#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/dwc.h"
#include "constants/gts.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay094/application.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay094/ov94_02244950.h"

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
static void GTSApplication_WFCInit_DisplayNetworkError(GTSApplicationState *appState, int param1);
static void GTSApplication_WFCInit_DisplayErrorCode(GTSApplicationState *appState, int errorCode, int param2);
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
static int ov94_022455D0(GTSApplicationState *param0);
static int GTSApplication_WFCInit_WaitForText(GTSApplicationState *appState);
static int GTSApplication_WFCInit_WaitForTextThenYesNoMenu(GTSApplicationState *appState);
static int GTSApplication_WFCInit_FatalError(GTSApplicationState *appState);
static int GTSApplication_WFCInit_FatalErrorDisconnectMessage(GTSApplicationState *appState);
static int GTSApplication_WFCInit_WaitForServerResponse(GTSApplicationState *appState);
static int GTSApplication_WFCInit_AskToDisconnect(GTSApplicationState *appState);
static int GTSApplication_WFCInit_ShowDisconnectingMessage(GTSApplicationState *appState);
static int GTSApplication_WFCInit_CleanupNetworking(GTSApplicationState *param0);
static int GTSApplication_WFCInit_ShowDisconnectedMessage(GTSApplicationState *appState);
static int GTSApplication_WFCInit_WaitForTextDelayed(GTSApplicationState *appState);
static int GTSApplication_WFCInit_Authenticate(GTSApplicationState *appState);
static int GTSApplication_WFCInit_CheckAuthentication(GTSApplicationState *appState);
static int GTSApplication_WFCInit_ShowNetworkError(GTSApplicationState *appState);
static int GTSApplication_WFCInit_RestartConnection(GTSApplicationState *appState);
static int ov94_02245894(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5);

static int (*gtsWFCInitScreenStates[])(GTSApplicationState *) = {
    GTSApplication_WFCInit_AskToSetupConnection, // <
    GTSApplication_WFCInit_ProcessSetupConfirmation, // 11 (exit) or 12 (continue)
    GTSApplication_WFCInit_Connect, //
    GTSApplication_WFCInit_CheckConnection, // returns 23 (connection error), 21 (fatal error), or 4
    GTSApplication_WFCInit_Authenticate, // returns 5
    GTSApplication_WFCInit_CheckAuthentication, // returns 6 (successful) or 23 (connection error)
    GTSApplication_WFCInit_GetDWCKey, // returns 7
    GTSApplication_WFCInit_ConnectToRemoteServer,
    GTSApplication_WFCInit_WaitForServerResponse,
    GTSApplication_WFCInit_SetProfileRequest,
    GTSApplication_WFCInit_SetProfileResponse, // 11 successful, 21 error
    GTSApplication_WFCInit_ExitScreen, // exit -> returns 4

    GTSApplication_WFCInit_WaitForText, // continue
    GTSApplication_WFCInit_WaitForTextThenYesNoMenu, //

    ov94_022455D0, // never called? returns 0 or 11
    GTSApplication_WFCInit_AskToDisconnect, // returns 13 + 16
    GTSApplication_WFCInit_RestartOrExit,
    GTSApplication_WFCInit_ShowDisconnectingMessage, // 12 then 18
    GTSApplication_WFCInit_CleanupNetworking, // 19
    GTSApplication_WFCInit_ShowDisconnectedMessage, // 20 then 11
    GTSApplication_WFCInit_WaitForTextDelayed,
    GTSApplication_WFCInit_FatalError, // 12 then 22
    GTSApplication_WFCInit_FatalErrorDisconnectMessage,
    GTSApplication_WFCInit_ShowNetworkError, // 24
    GTSApplication_WFCInit_RestartConnection
};

int GTSApplication_InitWFCScreen(GTSApplicationState *appState, int unused1)
{
    GTSApplication_WFCInit_InitTitle(appState);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    GTSApplication_WFCInit_InitBackground(appState->bgConfig);
    GTSApplication_WFCInit_InitGraphics(appState);
    GTSApplication_WFCInit_InitText(appState);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    sub_02038438(appState->unk_00->saveData);

    ov94_02245934(appState);

    if (!DWC_CheckInet()) {
        if (appState->unk_00->unk_40) {
            GTSApplication_DisplayStatusMessage(appState, appState->unk_B98, pl_msg_00000674_00001, TEXT_SPEED_FAST, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, 12, 2);
            GTSApplicationState_AddWaitDial(appState);
        } else {
            appState->currentScreenInstruction = 0;
        }
    } else {
        appState->currentScreenInstruction = 17;
    }

    return GTS_APPLICATION_LOOP_STATE_WAIT_FADE;
}

int GTSApplication_WFCInit_Main(GTSApplicationState *appState, int param1)
{
    sub_020397B0(GTSApplication_GetNetworkStrength());

    int previousInstruction = appState->currentScreenInstruction;
    int parentStateCode = (*gtsWFCInitScreenStates[appState->currentScreenInstruction])(appState);

    if (previousInstruction != appState->currentScreenInstruction) { // pointer changed
        appState->wfcDisconnectMessageIndex = 0;
        appState->wfcDisconnectMessageFrameDelay = 0;
    }

    inline_ov61_0222C0F8(&appState->unk_11B4); // draw network icon

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
        return GTS_APPLICATION_LOOP_STATE_EXIT;
    }

    return GTS_APPLICATION_LOOP_STATE_INIT;
}

static void GTSApplication_WFCInit_InitBackground(BgConfig *bgConfig)
{
    {
        BgTemplate v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf800,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_0, &v0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        Bg_ClearTilemap(bgConfig, BG_LAYER_MAIN_0);
    }

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_MAIN_1, &v1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xf000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_0, &v2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
        Bg_ClearTilemap(bgConfig, BG_LAYER_SUB_0);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xd800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgConfig, BG_LAYER_SUB_1, &v3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
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
    BgConfig *v0 = appState->bgConfig;
    NARC *v1 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(v1, 3, 0, 0, 0, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(v1, 3, 4, 0, 0, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(appState->unk_00->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, (1 + (18 + 12)), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 2, v0, 1, 0, 0, 0, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 5, v0, 1, 0, 32 * 24 * 2, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 10, v0, 5, 0, 0, 0, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 11, v0, 5, 0, 32 * 24 * 2, 0, HEAP_ID_62);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);

    inline_ov61_0222C3B0(&appState->unk_11B4, v1, 4, HEAP_ID_62);

    NARC_dtor(v1);
}

static void GTSApplication_WFCInit_InitText(GTSApplicationState *appState)
{
    Window_Add(appState->bgConfig, &appState->unk_F8C, 0, 4, 4, 23, 16, 13, (((1 + (18 + 12)) + 9) + 27 * 4));
    Window_FillTilemap(&appState->unk_F8C, 0x0);
    Window_Add(appState->bgConfig, &appState->unk_F7C, 0, 4, 1, 24, 2, 13, ((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16));
    Window_FillTilemap(&appState->unk_F7C, 0x0);

    ov94_022458CC(&appState->unk_F7C, appState->title, 0, 1, 1, TEXT_COLOR(15, 14, 0));

    Window_Add(appState->bgConfig, &appState->bottomInstructionWindow, 0, 2, 19, 27, 4, 13, ((1 + (18 + 12)) + 9));
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
    appState->genericMessageBuffer = Strbuf_Init((90 * 2), HEAP_ID_62);
    appState->shortErrorBuffer = Strbuf_Init((16 * 8 * 2), HEAP_ID_62);
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
    GTSApplication_DisplayStatusMessage(appState, appState->unk_B9C, pl_msg_00000695_00017, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 13, 1);

    // this starts counting box pokemon in the main loop
    appState->deferredBoxId = 1;

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ProcessSetupConfirmation(GTSApplicationState *appState)
{
    int menuInput = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (menuInput != 0xffffffff) { // BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX
        if (menuInput == 0xfffffffe) { // BATTLE_SUB_MENU_CURSOR_BACK_INDEX
            sub_0203848C(); // free the network lock?
            GTSApplication_SetNextScreenWithArgument(appState, 0, 0);
            appState->currentScreenInstruction = 11;
        } else {
            GTSApplication_DisplayStatusMessage(appState, appState->unk_B98, pl_msg_00000674_00001, TEXT_SPEED_FAST, 0xf0f);
            GTSApplication_SetCurrentAndNextScreenInstruction(appState, 12, 2);
            GTSApplicationState_AddWaitDial(appState);
        }
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_AskToDisconnect(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->gtsMessageLoader, GTS_Text_IsItOKToDisconnect, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 13, 16);

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_RestartOrExit(GTSApplicationState *appState)
{
    int menuInput = Menu_ProcessInputAndHandleExit(appState->yesNoMenu, HEAP_ID_62);

    if (menuInput != 0xffffffff) { // BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX
        if (menuInput == 0xfffffffe) { // BATTLE_SUB_MENU_CURSOR_BACK_INDEX
            if (!DWC_CheckInet()) {
                appState->currentScreenInstruction = 0;
            } else {
                GTSApplication_SetNextScreenWithArgument(appState, 7, 11);
                appState->previousScreen = 1;
                appState->currentScreenInstruction = 11;
            }
        } else {
            if (DWC_CheckInet()) {
                DWC_CleanupInet();
            }

            sub_0203848C();
            GTSApplication_SetNextScreenWithArgument(appState, 0, 0);
            appState->currentScreenInstruction = 11;
        }
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ShowDisconnectingMessage(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->unk_B9C, pl_msg_00000695_00026, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 12, 18);

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_CleanupNetworking(GTSApplicationState *appState)
{
    sub_0203848C();

    DWC_CleanupInet();
    GTSApplication_SetNextScreenWithArgument(appState, 0, 0);
    appState->currentScreenInstruction = 19;

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ShowDisconnectedMessage(GTSApplicationState *appState)
{
    GTSApplication_DisplayStatusMessage(appState, appState->unk_B9C, pl_msg_00000695_00027, TEXT_SPEED_FAST, 0xf0f);
    GTSApplication_SetCurrentAndNextScreenInstruction(appState, 20, 11);

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_Connect(GTSApplicationState *appState)
{
    DWC_InitInetEx(&appState->dwcInetControlObject, DEFAULT_DWC_DMA_NUMBER, DEFAULT_DWC_POWER_MODE, DEFAULT_DWC_SSL_PRIORITY);
    DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
    DWC_ConnectInetAsync();

    appState->currentScreenInstruction = 3;

    return GTS_APPLICATION_LOOP_STATE_MAIN;
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

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_Authenticate(GTSApplicationState *appState)
{
    DWC_NASLoginAsync();
    appState->currentScreenInstruction = 5;

    return GTS_APPLICATION_LOOP_STATE_MAIN;
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

        {
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
        }
        break;
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_GetDWCKey(GTSApplicationState *appState)
{
    DWCUserData *v0;
    s32 v1;

    v0 = WiFiList_GetUserData(appState->unk_00->unk_14);
    v1 = SystemData_GetDWCProfileId(appState->unk_00->unk_04);

    if (v1 == 0) {
        SystemData_SetDWCProfileId(appState->unk_00->unk_04, appState->unk_00->unk_38);
    }

    v1 = SystemData_GetDWCProfileId(appState->unk_00->unk_04);
    ov94_0223B140(v1, DWC_CreateFriendKey(v0));
    appState->currentScreenInstruction = 7;

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ConnectToRemoteServer(GTSApplicationState *param0)
{
    GTSNetworking_InitConnection();

    param0->currentScreenInstruction = 8;
    param0->networkTimeoutCounter = 0;

    return GTS_APPLICATION_LOOP_STATE_MAIN;
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

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_SetProfileRequest(GTSApplicationState *param0)
{
    WorldExchange_GetTrainerObject(param0->unk_00->saveData, &param0->worldExchangeTrainer);
    GTSNetworking_SetProfile(&param0->worldExchangeTrainer, &param0->worldExchangeTrainerError);

    param0->currentScreenInstruction = 10;
    param0->networkTimeoutCounter = 0;

    return GTS_APPLICATION_LOOP_STATE_MAIN;
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
                    GTSApplication_SetNextScreenWithArgument(appState, 1, 0);
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

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ShowNetworkError(GTSApplicationState *appState)
{
    int errorMessage = NintendoWFC_GetErrorCode(-appState->unk_44, appState->unk_48);
    GTSApplication_WFCInit_DisplayErrorCode(appState, errorMessage, -appState->unk_44);
    appState->currentScreenInstruction = 24;

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_RestartConnection(GTSApplicationState *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A || gSystem.pressedKeys & PAD_BUTTON_B) {
        Window_EraseStandardFrame(&param0->unk_F8C, 0);
        param0->currentScreenInstruction = 0;
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_ExitScreen(GTSApplicationState *param0)
{
    sub_02039794();
    GTSApplicationState_DestroyWaitDial(param0);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    param0->currentScreenInstruction = 0;
    param0->unk_1110 = 1;

    return GTS_APPLICATION_LOOP_STATE_FINISH;
}

static int ov94_022455D0(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->yesNoMenu, HEAP_ID_62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->currentScreenInstruction = 0;
        } else {
            GTSApplication_SetNextScreenWithArgument(param0, 0, 0);
            param0->currentScreenInstruction = 11;
        }
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
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

    return GTS_APPLICATION_LOOP_STATE_MAIN;
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
            GTSApplication_SetNextScreenWithArgument(appState, 0, 0);
            appState->currentScreenInstruction = 11;
        }
        break;
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_WaitForText(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_WaitForTextDelayed(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        if (appState->frameDelay > 30) {
            appState->currentScreenInstruction = appState->nextScreenInstruction;
        }

        appState->frameDelay++;
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
}

static int GTSApplication_WFCInit_WaitForTextThenYesNoMenu(GTSApplicationState *appState)
{
    if (Text_IsPrinterActive(appState->textPrinter) == FALSE) {
        appState->yesNoMenu = GTSApplication_CreateYesNoMenu(appState->bgConfig, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        appState->currentScreenInstruction = appState->nextScreenInstruction;
    }

    return GTS_APPLICATION_LOOP_STATE_MAIN;
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

static int ov94_02245894(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5)
{
    int v0 = 0, v1;

    switch (param3) {
    case 1:
        v0 = Font_CalcStrbufWidth(param5, param1, 0);
        param2 = ((param0->width * 8) - v0) / 2;
        break;
    case 2:
        v0 = Font_CalcStrbufWidth(param5, param1, 0);
        param2 = (param0->width * 8) - v0;
        break;
    }

    return param2;
}

void ov94_022458CC(Window *param0, Strbuf *param1, int param2, int param3, int param4, u32 param5)
{
    param2 = ov94_02245894(param0, param1, param2, param4, param5, 1);
    Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, param1, param2, param3, TEXT_SPEED_INSTANT, param5, NULL);
}

// TODO: invocations
void ov94_02245900(Window *param0, Strbuf *param1, int param2, int param3, int param4, u32 param5)
{
    param2 = ov94_02245894(param0, param1, param2, param4, param5, 0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param1, param2, param3, TEXT_SPEED_INSTANT, param5, NULL);
}

void ov94_02245934(GTSApplicationState *param0)
{
    sub_02039734();
}

static void GTSApplication_WFCInit_DisplayNetworkError(GTSApplicationState *appState, int messageId)
{
    Strbuf *v0 = Strbuf_Init((16 * 8 * 2), HEAP_ID_62);

    MessageLoader_GetStrbuf(appState->unk_B9C, messageId, v0);
    StringTemplate_Format(appState->stringTemplate, appState->shortErrorBuffer, v0);

    Window_FillTilemap(&appState->unk_F8C, 15);
    Window_DrawStandardFrame(&appState->unk_F8C, 1, (1 + (18 + 12)), 11);

    appState->textPrinter = Text_AddPrinterWithParams(&appState->unk_F8C, FONT_MESSAGE, appState->shortErrorBuffer, 0, 0, TEXT_SPEED_INSTANT, NULL);

    Strbuf_Free(v0);
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
