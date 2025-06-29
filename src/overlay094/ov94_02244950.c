#include "overlay094/ov94_02244950.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay004/ov4_021D0D80.h"
#include "overlay094/gts_application_state.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay094/ov94_0223BCB0.h"

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

static void GTSApplication_InitWFCBackground(BgConfig *param0);
static void ov94_02244B68(BgConfig *param0);
static void GTSApplication_InitWFCGraphics(GTSApplicationState *appState);
static void GTSApplication_InitWFCText(GTSApplicationState *appState);
static void ov94_02244F00(GTSApplicationState *param0);
static void GTSApplication_InitWFCTitle(GTSApplicationState *appState);
static void ov94_02244F64(GTSApplicationState *param0);
static void ov94_0224593C(GTSApplicationState *param0, int param1);
static void ov94_022459B4(GTSApplicationState *param0, int param1, int param2);
static int GTSApplication_WFCInit_AskToSetupConnection(GTSApplicationState *appState);
static int GTSApplication_WFCInit_ProcessSetupConfirmation(GTSApplicationState *appState);
static int ov94_0224505C(GTSApplicationState *param0);
static int GTSApplication_WFCInit_Connect(GTSApplicationState *appState);
static int GTSApplication_WFCInit_CheckConnection(GTSApplicationState *appState);
static int GTSApplication_WFCInit_GetDWCKey(GTSApplicationState *appState);
static int ov94_022452E4(GTSApplicationState *param0);
static int ov94_022453B8(GTSApplicationState *param0);
static int ov94_022453EC(GTSApplicationState *param0);
static int GTSApplication_WFCInit_Exit(GTSApplicationState *appState);
static int ov94_022455D0(GTSApplicationState *param0);
static int GTSApplication_WFCInit_WaitForText(GTSApplicationState *appState);
static int GTSApplication_WFCInit_SetupConnectionMenu(GTSApplicationState *appState);
static int ov94_02245608(GTSApplicationState *param0);
static int ov94_022456CC(GTSApplicationState *param0);
static int ov94_02245300(GTSApplicationState *param0);
static int ov94_0224502C(GTSApplicationState *param0);
static int ov94_022450C0(GTSApplicationState *param0);
static int ov94_022450EC(GTSApplicationState *param0);
static int ov94_0224510C(GTSApplicationState *param0);
static int ov94_022457BC(GTSApplicationState *param0);
static int GTSApplication_WFCInit_Authenticate(GTSApplicationState *appState);
static int GTSApplication_WFCInit_CheckAuthentication(GTSApplicationState *appState);
static int ov94_02245540(GTSApplicationState *param0);
static int ov94_02245564(GTSApplicationState *param0);
static int ov94_02245894(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5);

static int (*Unk_ov94_02246A40[])(GTSApplicationState *) = {
    GTSApplication_WFCInit_AskToSetupConnection, // <
    GTSApplication_WFCInit_ProcessSetupConfirmation, // 11 (exit) or 12 (continue)
    GTSApplication_WFCInit_Connect, //
    GTSApplication_WFCInit_CheckConnection, // returns 23 (connection error), 21 (fatal error), or 4
    GTSApplication_WFCInit_Authenticate, // returns 5
    GTSApplication_WFCInit_CheckAuthentication, // returns 6 (successful) or 23 (connection error)
    GTSApplication_WFCInit_GetDWCKey, // returns 7
    ov94_022452E4,
    ov94_02245300,
    ov94_022453B8,
    ov94_022453EC,
    GTSApplication_WFCInit_Exit, // exit -> returns 4
    GTSApplication_WFCInit_WaitForText, // continue
    GTSApplication_WFCInit_SetupConnectionMenu, //
    ov94_022455D0,
    ov94_0224502C,
    ov94_0224505C,
    ov94_022450C0, // < "disconnecting from Nintendo W-Fi Connection..."
    ov94_022450EC,
    ov94_0224510C,
    ov94_022457BC,
    ov94_02245608,
    ov94_022456CC,
    ov94_02245540,
    ov94_02245564
};

int GTSApplication_InitWFCScreen(GTSApplicationState *appState, int unused1)
{
    GTSApplication_InitWFCTitle(appState);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    GTSApplication_InitWFCBackground(appState->unk_04);
    GTSApplication_InitWFCGraphics(appState);
    GTSApplication_InitWFCText(appState);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    sub_02038438(appState->unk_00->saveData);

    ov94_02245934(appState);

    if (!DWC_CheckInet()) {
        if (appState->unk_00->unk_40) {
            ov94_02245824(appState, appState->unk_B98, pl_msg_00000674_00001, TEXT_SPEED_FAST, 0xf0f);
            ov94_Setunk_2CAndnextunk_30(appState, 12, 2);
            GTSApplicationState_AddWaitDial(appState);
        } else {
            appState->unk_2C = 0;
        }
    } else {
        appState->unk_2C = 17;
    }

    return 2;
}

int ov94_022449FC(GTSApplicationState *param0, int param1) // wfc loop?
{
    int v0, v1;

    sub_020397B0(GTSApplication_GetNetworkStrength());

    v1 = param0->unk_2C;
    v0 = (*Unk_ov94_02246A40[param0->unk_2C])(param0);

    if (v1 != param0->unk_2C) { // pointer changed
        param0->unk_14E0 = 0;
        param0->unk_14E2 = 0;
    }

    inline_ov61_0222C0F8(&param0->unk_11B4); // draw network icon

    return v0;
}

int ov94_02244A2C(GTSApplicationState *param0, int param1)
{
    inline_ov61_0222C160(&param0->unk_11B4);

    ov94_02244F64(param0);
    ov94_02244F00(param0);
    ov94_02244B68(param0->unk_04);

    inline_ov96_0223BDEC(&param0->unk_11B4, 0);

    ov94_0223C4C8(param0);

    if (param0->unk_14 == 0) {
        return 5;
    }

    return 1;
}

static void GTSApplication_InitWFCBackground(BgConfig *param0)
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

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_0, &v0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        Bg_ClearTilemap(param0, BG_LAYER_MAIN_0);
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

        Bg_InitFromTemplate(param0, BG_LAYER_MAIN_1, &v1, 0);
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

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_0, &v2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
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

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov94_02244B68(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
}

static void GTSApplication_InitWFCGraphics(GTSApplicationState *param0)
{
    BgConfig *v0 = param0->unk_04;
    NARC *v1 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(v1, 3, 0, 0, 0, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(v1, 3, 4, 0, 0, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->unk_00->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, (1 + (18 + 12)), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 2, v0, 1, 0, 0, 0, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 5, v0, 1, 0, 32 * 24 * 2, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 10, v0, 5, 0, 0, 0, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 11, v0, 5, 0, 32 * 24 * 2, 0, HEAP_ID_62);
    Bg_MaskPalette(BG_LAYER_MAIN_0, 0);
    Bg_MaskPalette(BG_LAYER_SUB_0, 0);

    inline_ov61_0222C3B0(&param0->unk_11B4, v1, 4, 62);

    NARC_dtor(v1);
}

static void GTSApplication_InitWFCText(GTSApplicationState *param0)
{
    Window_Add(param0->unk_04, &param0->unk_F8C, 0, 4, 4, 23, 16, 13, (((1 + (18 + 12)) + 9) + 27 * 4));
    Window_FillTilemap(&param0->unk_F8C, 0x0);
    Window_Add(param0->unk_04, &param0->unk_F7C, 0, 4, 1, 24, 2, 13, ((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16));
    Window_FillTilemap(&param0->unk_F7C, 0x0);

    ov94_022458CC(&param0->unk_F7C, param0->title, 0, 1, 1, TEXT_COLOR(15, 14, 0));

    Window_Add(param0->unk_04, &param0->bottomInstructionWindow, 0, 2, 19, 27, 4, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&param0->bottomInstructionWindow, 0x0);
}

static void ov94_02244F00(GTSApplicationState *param0)
{
    Window_Remove(&param0->bottomInstructionWindow);
    Window_Remove(&param0->unk_F7C);
    Window_Remove(&param0->unk_F8C);
}

static void GTSApplication_InitWFCTitle(GTSApplicationState *param0)
{
    param0->unk_BAC = Strbuf_Init((90 * 2), HEAP_ID_62);
    param0->unk_BDC = Strbuf_Init((16 * 8 * 2), HEAP_ID_62);
    param0->title = MessageLoader_GetNewStrbuf(param0->gtsMessageLoader, pl_msg_00000671_00031);
}

static void ov94_02244F64(GTSApplicationState *param0)
{
    Strbuf_Free(param0->title);
    Strbuf_Free(param0->unk_BDC);
    Strbuf_Free(param0->unk_BAC);
}

static int GTSApplication_WFCInit_AskToSetupConnection(GTSApplicationState *appState)
{
    ov94_02245824(appState, appState->unk_B9C, pl_msg_00000695_00017, TEXT_SPEED_FAST, 0xf0f);
    ov94_Setunk_2CAndnextunk_30(appState, 13, 1);

    // this starts us counting pokemon in the wfc loop
    appState->deferredBoxId = 1;

    return 3;
}

static int GTSApplication_WFCInit_ProcessSetupConfirmation(GTSApplicationState *appState)
{
    int menuInput = Menu_ProcessInputAndHandleExit(appState->unk_10D0, 62);

    if (menuInput != 0xffffffff) { // BATTLE_SUB_MENU_CURSOR_NO_MOVEMENT_INDEX
        if (menuInput == 0xfffffffe) { // BATTLE_SUB_MENU_CURSOR_BACK_INDEX
            sub_0203848C(); // free the network lock?
            ov94_Setunk_18Andunk_24(appState, 0, 0);
            appState->unk_2C = 11;
        } else {
            ov94_02245824(appState, appState->unk_B98, pl_msg_00000674_00001, TEXT_SPEED_FAST, 0xf0f);
            ov94_Setunk_2CAndnextunk_30(appState, 12, 2);
            GTSApplicationState_AddWaitDial(appState);
        }
    }

    return 3;
}

static int ov94_0224502C(GTSApplicationState *param0)
{
    ov94_02245824(param0, param0->gtsMessageLoader, 7, TEXT_SPEED_FAST, 0xf0f);
    ov94_Setunk_2CAndnextunk_30(param0, 13, 16);

    return 3;
}

static int ov94_0224505C(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            if (!DWC_CheckInet()) {
                param0->unk_2C = 0;
            } else {
                ov94_Setunk_18Andunk_24(param0, 7, 11);
                param0->unk_1C = 1;
                param0->unk_2C = 11;
            }
        } else {
            if (DWC_CheckInet()) {
                DWC_CleanupInet();
            }

            sub_0203848C();
            ov94_Setunk_18Andunk_24(param0, 0, 0);
            param0->unk_2C = 11;
        }
    }

    return 3;
}

static int ov94_022450C0(GTSApplicationState *param0)
{
    ov94_02245824(param0, param0->unk_B9C, pl_msg_00000695_00026, TEXT_SPEED_FAST, 0xf0f);
    ov94_Setunk_2CAndnextunk_30(param0, 12, 18);

    return 3;
}

static int ov94_022450EC(GTSApplicationState *param0)
{
    sub_0203848C();

    DWC_CleanupInet();
    ov94_Setunk_18Andunk_24(param0, 0, 0);
    param0->unk_2C = 19;

    return 3;
}

static int ov94_0224510C(GTSApplicationState *param0)
{
    ov94_02245824(param0, param0->unk_B9C, pl_msg_00000695_00027, TEXT_SPEED_FAST, 0xf0f);
    ov94_Setunk_2CAndnextunk_30(param0, 20, 11);

    return 3;
}

static int GTSApplication_WFCInit_Connect(GTSApplicationState *param0)
{
    DWC_InitInetEx(&param0->unk_54, 2, 1, 20);
    DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
    DWC_ConnectInetAsync();

    param0->unk_2C = 3;

    return 3;
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

            appState->unk_2C = 23;

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

            appState->unk_2C = 21;
            appState->unk_3C = -2;
        } break;

        case DWC_CONNECTINET_STATE_CONNECTED: {
            DWCApInfo v5;

            DWC_GetApInfo(&v5);

            if (v5.aptype == DWC_APINFO_TYPE_SHOP) {
                (void)0;
            }
        }

            appState->unk_2C = 4;
            break;
        }
    }

    return 3;
}

static int GTSApplication_WFCInit_Authenticate(GTSApplicationState *appState)
{
    DWC_NASLoginAsync();
    appState->unk_2C = 5;

    return 3;
}

static int GTSApplication_WFCInit_CheckAuthentication(GTSApplicationState *appState)
{
    switch (DWC_NASLoginProcess()) {
    case DWC_NASLOGIN_STATE_SUCCESS:
        appState->unk_2C = 6;
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

            appState->unk_2C = 23;

            switch (v1) {
            case DWC_ETYPE_LIGHT:
            case DWC_ETYPE_SHOW_ERROR:
                appState->unk_2C = 23;
                break;
            case DWC_ETYPE_SHUTDOWN_GHTTP:
                DWC_ShutdownGHTTP();
                appState->unk_2C = 23;
                break;
            case DWC_ETYPE_DISCONNECT:
                appState->unk_2C = 23;
                break;
            case DWC_ETYPE_SHUTDOWN_FM:
                DWC_ShutdownFriendsMatch();
                appState->unk_2C = 23;
                break;
            case DWC_ETYPE_SHUTDOWN_ND:
            case DWC_ETYPE_FATAL:
                sub_02038A0C();
                break;
            }

            if ((v0 < -20000) && (v0 >= -29999)) {
                appState->unk_2C = 23;
            }
        }
        break;
    }

    return 3;
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
    appState->unk_2C = 7;

    return 3;
}

static int ov94_022452E4(GTSApplicationState *param0)
{
    ov94_0223BB40();

    param0->unk_2C = 8;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_02245300(GTSApplicationState *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 9;
            break;
        case 1:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case 2:
        case -1:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -12:
        case -15:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -2:
        case -14:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -13:
        default:
            GTSApplicationState_DestroyWaitDial(param0);
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_022453B8(GTSApplicationState *param0)
{
    sub_02030E78(param0->unk_00->saveData, &param0->unk_1144);
    ov94_0223BB84(&param0->unk_1144, &param0->unk_11A8);

    param0->unk_2C = 10;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022453EC(GTSApplicationState *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            GTSApplicationState_DestroyWaitDial(param0);

            switch (param0->unk_11A8.unk_00) {
            case 0:
                switch (param0->unk_11A8.unk_04) {
                case 0:
                    ov94_Setunk_18Andunk_24(param0, 1, 0);
                    param0->unk_2C = 11;
                    break;
                case 3:
                    param0->unk_3C = -5003;
                    param0->unk_2C = 21;
                    break;
                case 1:
                    param0->unk_3C = -5000;
                    param0->unk_2C = 21;
                    break;
                case 2:
                    param0->unk_3C = -5001;
                    param0->unk_2C = 21;
                    break;
                default:
                    sub_02038A0C();
                    break;
                }
                break;
            case 1:
                param0->unk_3C = -5004;
                param0->unk_2C = 21;
                break;
            case 2:
                param0->unk_3C = -5005;
                param0->unk_2C = 21;
                break;
            default:
                GTSApplicationState_DestroyWaitDial(param0);
                sub_02038A0C();
                break;
            }
            break;
        case 1:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case 2:
        case -1:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -12:
        case -15:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -2:
        case -14:
            GTSApplicationState_DestroyWaitDial(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -13:
        default:
            GTSApplicationState_DestroyWaitDial(param0);
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_14E4++;

        if (param0->unk_14E4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov94_02245540(GTSApplicationState *param0)
{
    int v0 = ov4_021D1F3C(-param0->unk_44, param0->unk_48); // NintendoWFC_GetErrorCode ?
    ov94_022459B4(param0, v0, -param0->unk_44);
    param0->unk_2C = 24;

    return 3;
}

static int ov94_02245564(GTSApplicationState *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A || gSystem.pressedKeys & PAD_BUTTON_B) {
        Window_EraseStandardFrame(&param0->unk_F8C, 0);
        param0->unk_2C = 0;
    }

    return 3;
}

static int GTSApplication_WFCInit_Exit(GTSApplicationState *param0)
{
    sub_02039794();
    GTSApplicationState_DestroyWaitDial(param0);
    StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    param0->unk_2C = 0;
    param0->unk_1110 = 1;

    return 4;
}

static int ov94_022455D0(GTSApplicationState *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_2C = 0;
        } else {
            ov94_Setunk_18Andunk_24(param0, 0, 0);
            param0->unk_2C = 11;
        }
    }

    return 3;
}

static int ov94_02245608(GTSApplicationState *param0)
{
    int v0 = 0;

    switch (param0->unk_3C) {
    case 1:
        v0 = 144;
        break;
    case 2:
    case -1:
        v0 = 145;
        break;
    case -2:
    case -14:
        v0 = 150;
        break;
    case -12:
    case -15:
    case -3:
    case -5:
    default:
        v0 = 149;
        break;
    case -5003:
        v0 = 177;
        break;
    case -5000:
        v0 = 174;
        break;
    case -5001:
        v0 = 174;
        break;
    case -5004:
        v0 = 175;
        break;
    case -5005:
        v0 = 176;
        break;
    }

    ov94_02245824(param0, param0->gtsMessageLoader, v0, TEXT_SPEED_FAST, 0xf0f);
    ov94_Setunk_2CAndnextunk_30(param0, 12, 22);

    return 3;
}

static int ov94_022456CC(GTSApplicationState *param0)
{
    switch (param0->unk_14E0) {
    case 0:
        ov94_02245824(param0, param0->gtsMessageLoader, 178, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_14E0++;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
            sub_0203848C();
            DWC_CleanupInet();
            param0->unk_14E0++;
        }
        break;
    case 2:
        ov94_02245824(param0, param0->gtsMessageLoader, 179, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_14E0++;
        break;
    case 3:
        if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
            param0->unk_14E0++;
        }
        break;
    default:
        param0->unk_14E2++;

        if (param0->unk_14E2 > 30) {
            ov94_Setunk_18Andunk_24(param0, 0, 0);
            param0->unk_2C = 11;
        }
        break;
    }

    return 3;
}

static int GTSApplication_WFCInit_WaitForText(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == FALSE) {
        param0->unk_2C = param0->nextunk_2C;
    }

    return 3;
}

static int ov94_022457BC(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == FALSE) {
        if (param0->unk_10E0 > 30) {
            param0->unk_2C = param0->nextunk_2C;
        }

        param0->unk_10E0++;
    }

    return 3;
}

static int GTSApplication_WFCInit_SetupConnectionMenu(GTSApplicationState *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == FALSE) {
        param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        param0->unk_2C = param0->nextunk_2C;
    }

    return 3;
}

void ov94_02245824(GTSApplicationState *param0, MessageLoader *param1, int param2, int param3, u16 param4)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param1, param2);

    StringTemplate_Format(param0->unk_B8C, param0->unk_BAC, v0);
    Strbuf_Free(v0);
    Window_FillTilemap(&param0->bottomInstructionWindow, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->bottomInstructionWindow, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->bottomInstructionWindow, FONT_MESSAGE, param0->unk_BAC, 0, 0, param3, NULL);
    param0->unk_10E0 = 0;
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

static void ov94_0224593C(GTSApplicationState *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((16 * 8 * 2), HEAP_ID_62);

    MessageLoader_GetStrbuf(param0->unk_B9C, param1, v0);
    StringTemplate_Format(param0->unk_B8C, param0->unk_BDC, v0);

    Window_FillTilemap(&param0->unk_F8C, 15);
    Window_DrawStandardFrame(&param0->unk_F8C, 1, (1 + (18 + 12)), 11);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_F8C, FONT_MESSAGE, param0->unk_BDC, 0, 0, TEXT_SPEED_INSTANT, NULL);

    Strbuf_Free(v0);
}

static void ov94_022459B4(GTSApplicationState *param0, int param1, int param2)
{
    int v0;

    if (param1 != -1) {
        v0 = 0 + param1;
    } else {
        v0 = pl_msg_00000695_00011;
    }

    StringTemplate_SetNumber(param0->unk_B8C, 0, param2, 5, 2, 1);
    Window_EraseMessageBox(&param0->bottomInstructionWindow, 1);

    ov94_0224593C(param0, v0);
}
