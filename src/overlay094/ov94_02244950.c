#include "overlay094/ov94_02244950.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_02006E3C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_02025CB0.h"
#include "unk_0202ACE0.h"
#include "unk_02030CE8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

static void ov94_02244A7C(BGL *param0);
static void ov94_02244B68(BGL *param0);
static void ov94_02244B8C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02244E48(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02244F00(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02244F2C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_02244F64(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0224593C(UnkStruct_ov94_0223FD4C *param0, int param1);
static void ov94_022459B4(UnkStruct_ov94_0223FD4C *param0, int param1, int param2);
static int ov94_02244F8C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02244FC4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224505C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02245138(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02245158(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224529C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022452E4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022453B8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022453EC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02245594(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022455D0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224579C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022457F0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02245608(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022456CC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02245300(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224502C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022450C0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022450EC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0224510C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022457BC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022451DC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_022451EC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02245540(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02245564(UnkStruct_ov94_0223FD4C *param0);
static int ov94_02245894(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5);

static int (*Unk_ov94_02246A40[])(UnkStruct_ov94_0223FD4C *) = {
    ov94_02244F8C,
    ov94_02244FC4,
    ov94_02245138,
    ov94_02245158,
    ov94_022451DC,
    ov94_022451EC,
    ov94_0224529C,
    ov94_022452E4,
    ov94_02245300,
    ov94_022453B8,
    ov94_022453EC,
    ov94_02245594,
    ov94_0224579C,
    ov94_022457F0,
    ov94_022455D0,
    ov94_0224502C,
    ov94_0224505C,
    ov94_022450C0,
    ov94_022450EC,
    ov94_0224510C,
    ov94_022457BC,
    ov94_02245608,
    ov94_022456CC,
    ov94_02245540,
    ov94_02245564
};

int ov94_02244950(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_02244F2C(param0);
    sub_0200F174(0, 1, 1, 0x0, 6, 1, 62);

    ov94_02244A7C(param0->unk_04);
    ov94_02244B8C(param0);
    ov94_02244E48(param0);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    sub_02038438(param0->unk_00->unk_20);

    ov94_02245934(param0);

    if (!DWC_CheckInet()) {
        if (param0->unk_00->unk_40) {
            ov94_02245824(param0, param0->unk_B98, 1, TEXT_SPEED_FAST, 0xf0f);
            ov94_0223C3F4(param0, 12, 2);
            ov94_0223C5D8(param0);
        } else {
            param0->unk_2C = 0;
        }
    } else {
        param0->unk_2C = 17;
    }

    return 2;
}

int ov94_022449FC(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0, v1;

    sub_020397B0(ov94_0223C4B4());

    v1 = param0->unk_2C;
    v0 = (*Unk_ov94_02246A40[param0->unk_2C])(param0);

    if (v1 != param0->unk_2C) {
        param0->unk_14E0 = 0;
        param0->unk_14E2 = 0;
    }

    inline_ov61_0222C0F8(&param0->unk_11B4);

    return v0;
}

int ov94_02244A2C(UnkStruct_ov94_0223FD4C *param0, int param1)
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

static void ov94_02244A7C(BGL *param0)
{
    {
        UnkStruct_ov97_0222DB78 v0 = {
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

        sub_020183C4(param0, 0, &v0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        sub_02019EBC(param0, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
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

        sub_020183C4(param0, 1, &v1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v2 = {
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

        sub_020183C4(param0, 4, &v2, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 0);
        sub_02019EBC(param0, 4);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
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

        sub_020183C4(param0, 5, &v3, 0);
        GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 0);
    }

    sub_02019690(0, 32, 0, 62);
    sub_02019690(4, 32, 0, 62);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 0);
}

static void ov94_02244B68(BGL *param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
}

static void ov94_02244B8C(UnkStruct_ov94_0223FD4C *param0)
{
    BGL *v0 = param0->unk_04;
    NARC *v1;

    v1 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, 62);

    sub_02007130(v1, 3, 0, 0, 0, 62);
    sub_02007130(v1, 3, 4, 0, 0, 62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 62);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, 62);
    sub_0200DD0C(v0, 0, 1, 10, Options_Frame(param0->unk_00->unk_24), 62);
    sub_0200DAA4(v0, 0, (1 + (18 + 12)), 11, 0, 62);
    sub_020070E8(v1, 2, v0, 1, 0, 0, 0, 62);
    sub_0200710C(v1, 5, v0, 1, 0, 32 * 24 * 2, 0, 62);
    sub_020070E8(v1, 10, v0, 5, 0, 0, 0, 62);
    sub_0200710C(v1, 11, v0, 5, 0, 32 * 24 * 2, 0, 62);
    sub_0201975C(0, 0);
    sub_0201975C(4, 0);

    inline_ov61_0222C3B0(&param0->unk_11B4, v1, 4, 62);

    NARC_dtor(v1);
}

static void ov94_02244E48(UnkStruct_ov94_0223FD4C *param0)
{
    BGL_AddWindow(param0->unk_04, &param0->unk_F8C, 0, 4, 4, 23, 16, 13, (((1 + (18 + 12)) + 9) + 27 * 4));
    BGL_FillWindow(&param0->unk_F8C, 0x0);
    BGL_AddWindow(param0->unk_04, &param0->unk_F7C, 0, 4, 1, 24, 2, 13, ((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16));
    BGL_FillWindow(&param0->unk_F7C, 0x0);

    ov94_022458CC(&param0->unk_F7C, param0->unk_BB0, 0, 1, 1, TEXT_COLOR(15, 14, 0));

    BGL_AddWindow(param0->unk_04, &param0->unk_F5C, 0, 2, 19, 27, 4, 13, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_F5C, 0x0);
}

static void ov94_02244F00(UnkStruct_ov94_0223FD4C *param0)
{
    BGL_DeleteWindow(&param0->unk_F5C);
    BGL_DeleteWindow(&param0->unk_F7C);
    BGL_DeleteWindow(&param0->unk_F8C);
}

static void ov94_02244F2C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_BAC = Strbuf_Init((90 * 2), 62);
    param0->unk_BDC = Strbuf_Init((16 * 8 * 2), 62);
    param0->unk_BB0 = MessageLoader_GetNewStrbuf(param0->unk_B90, 31);
}

static void ov94_02244F64(UnkStruct_ov94_0223FD4C *param0)
{
    Strbuf_Free(param0->unk_BB0);
    Strbuf_Free(param0->unk_BDC);
    Strbuf_Free(param0->unk_BAC);
}

static int ov94_02244F8C(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02245824(param0, param0->unk_B9C, 17, TEXT_SPEED_FAST, 0xf0f);
    ov94_0223C3F4(param0, 13, 1);

    param0->unk_110E = 1;

    return 3;
}

static int ov94_02244FC4(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = sub_02002114(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            sub_0203848C();
            ov94_0223C4C0(param0, 0, 0);
            param0->unk_2C = 11;
        } else {
            ov94_02245824(param0, param0->unk_B98, 1, TEXT_SPEED_FAST, 0xf0f);
            ov94_0223C3F4(param0, 12, 2);
            ov94_0223C5D8(param0);
        }
    }

    return 3;
}

static int ov94_0224502C(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02245824(param0, param0->unk_B90, 7, TEXT_SPEED_FAST, 0xf0f);
    ov94_0223C3F4(param0, 13, 16);

    return 3;
}

static int ov94_0224505C(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = sub_02002114(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            if (!DWC_CheckInet()) {
                param0->unk_2C = 0;
            } else {
                ov94_0223C4C0(param0, 7, 11);
                param0->unk_1C = 1;
                param0->unk_2C = 11;
            }
        } else {
            if (DWC_CheckInet()) {
                DWC_CleanupInet();
            }

            sub_0203848C();
            ov94_0223C4C0(param0, 0, 0);
            param0->unk_2C = 11;
        }
    }

    return 3;
}

static int ov94_022450C0(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02245824(param0, param0->unk_B9C, 26, TEXT_SPEED_FAST, 0xf0f);
    ov94_0223C3F4(param0, 12, 18);

    return 3;
}

static int ov94_022450EC(UnkStruct_ov94_0223FD4C *param0)
{
    sub_0203848C();

    DWC_CleanupInet();
    ov94_0223C4C0(param0, 0, 0);
    param0->unk_2C = 19;

    return 3;
}

static int ov94_0224510C(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02245824(param0, param0->unk_B9C, 27, TEXT_SPEED_FAST, 0xf0f);
    ov94_0223C3F4(param0, 20, 11);

    return 3;
}

static int ov94_02245138(UnkStruct_ov94_0223FD4C *param0)
{
    DWC_InitInetEx(&param0->unk_54, 2, 1, 20);
    DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
    DWC_ConnectInetAsync();

    param0->unk_2C = 3;

    return 3;
}

static int ov94_02245158(UnkStruct_ov94_0223FD4C *param0)
{
    DWC_ProcessInet();

    if (DWC_CheckInet()) {
        switch (DWC_GetInetStatus()) {
        case DWC_CONNECTINET_STATE_ERROR: {
            DWCError v0;
            int v1;
            DWCErrorType v2;

            v0 = DWC_GetLastErrorEx(&v1, &v2);

            param0->unk_40 = v0;
            param0->unk_44 = v1;
            param0->unk_48 = v2;
        }
            DWC_ClearError();
            DWC_CleanupInet();
            ov94_0223C5F4(param0);

            param0->unk_2C = 23;

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
            ov94_0223C5F4(param0);

            param0->unk_2C = 21;
            param0->unk_3C = -2;
        } break;

        case DWC_CONNECTINET_STATE_CONNECTED: {
            DWCApInfo v5;

            DWC_GetApInfo(&v5);

            if (v5.aptype == DWC_APINFO_TYPE_SHOP) {
                (void)0;
            }
        }

            param0->unk_2C = 4;
            break;
        }
    }

    return 3;
}

static int ov94_022451DC(UnkStruct_ov94_0223FD4C *param0)
{
    DWC_NASLoginAsync();
    param0->unk_2C = 5;

    return 3;
}

static int ov94_022451EC(UnkStruct_ov94_0223FD4C *param0)
{
    switch (DWC_NASLoginProcess()) {
    case DWC_NASLOGIN_STATE_SUCCESS:
        param0->unk_2C = 6;
        break;
    case DWC_NASLOGIN_STATE_ERROR:
    case DWC_NASLOGIN_STATE_CANCELED:
    case DWC_NASLOGIN_STATE_DIRTY:
        ov94_0223C5F4(param0);

        {
            int v0;
            DWCErrorType v1;
            DWCError v2;

            v2 = DWC_GetLastErrorEx(&v0, &v1);

            param0->unk_40 = v2;
            param0->unk_44 = v0;

            DWC_ClearError();
            DWC_CleanupInet();

            param0->unk_2C = 23;

            switch (v1) {
            case DWC_ETYPE_LIGHT:
            case DWC_ETYPE_SHOW_ERROR:
                param0->unk_2C = 23;
                break;
            case DWC_ETYPE_SHUTDOWN_GHTTP:
                DWC_ShutdownGHTTP();
                param0->unk_2C = 23;
                break;
            case DWC_ETYPE_DISCONNECT:
                param0->unk_2C = 23;
                break;
            case DWC_ETYPE_SHUTDOWN_FM:
                DWC_ShutdownFriendsMatch();
                param0->unk_2C = 23;
                break;
            case DWC_ETYPE_SHUTDOWN_ND:
            case DWC_ETYPE_FATAL:
                sub_02038A0C();
                break;
            }

            if ((v0 < -20000) && (v0 >= -29999)) {
                param0->unk_2C = 23;
            }
        }
        break;
    }

    return 3;
}

static int ov94_0224529C(UnkStruct_ov94_0223FD4C *param0)
{
    DWCUserData *v0;
    s32 v1;

    v0 = sub_0202AD28(param0->unk_00->unk_14);
    v1 = sub_02025D74(param0->unk_00->unk_04);

    if (v1 == 0) {
        sub_02025D78(param0->unk_00->unk_04, param0->unk_00->unk_38);
    }

    v1 = sub_02025D74(param0->unk_00->unk_04);
    ov94_0223B140(v1, DWC_CreateFriendKey(v0));
    param0->unk_2C = 7;

    return 3;
}

static int ov94_022452E4(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223BB40();

    param0->unk_2C = 8;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_02245300(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            param0->unk_2C = 9;
            break;
        case 1:
            ov94_0223C5F4(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case 2:
        case -1:
            ov94_0223C5F4(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -12:
        case -15:
            ov94_0223C5F4(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -2:
        case -14:
            ov94_0223C5F4(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -13:
        default:
            ov94_0223C5F4(param0);
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

static int ov94_022453B8(UnkStruct_ov94_0223FD4C *param0)
{
    sub_02030E78(param0->unk_00->unk_20, &param0->unk_1144);
    ov94_0223BB84(&param0->unk_1144, &param0->unk_11A8);

    param0->unk_2C = 10;
    param0->unk_14E4 = 0;

    return 3;
}

static int ov94_022453EC(UnkStruct_ov94_0223FD4C *param0)
{
    if (ov94_0223B7B8()) {
        s32 v0 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v0) {
        case 0:
            ov94_0223C5F4(param0);

            switch (param0->unk_11A8.unk_00) {
            case 0:
                switch (param0->unk_11A8.unk_04) {
                case 0:
                    ov94_0223C4C0(param0, 1, 0);
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
                ov94_0223C5F4(param0);
                sub_02038A0C();
                break;
            }
            break;
        case 1:
            ov94_0223C5F4(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case 2:
        case -1:
            ov94_0223C5F4(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -12:
        case -15:
            ov94_0223C5F4(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -2:
        case -14:
            ov94_0223C5F4(param0);
            param0->unk_3C = v0;
            param0->unk_2C = 21;
            break;
        case -13:
        default:
            ov94_0223C5F4(param0);
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

static int ov94_02245540(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    v0 = ov4_021D1F3C(-param0->unk_44, param0->unk_48);
    ov94_022459B4(param0, v0, -param0->unk_44);
    param0->unk_2C = 24;

    return 3;
}

static int ov94_02245564(UnkStruct_ov94_0223FD4C *param0)
{
    if (gCoreSys.pressedKeys & PAD_BUTTON_A || gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Window_Clear(&param0->unk_F8C, 0);
        param0->unk_2C = 0;
    }

    return 3;
}

static int ov94_02245594(UnkStruct_ov94_0223FD4C *param0)
{
    sub_02039794();
    ov94_0223C5F4(param0);
    sub_0200F174(0, 0, 0, 0x0, 6, 1, 62);

    param0->unk_2C = 0;
    param0->unk_1110 = 1;

    return 4;
}

static int ov94_022455D0(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = sub_02002114(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_2C = 0;
        } else {
            ov94_0223C4C0(param0, 0, 0);
            param0->unk_2C = 11;
        }
    }

    return 3;
}

static int ov94_02245608(UnkStruct_ov94_0223FD4C *param0)
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

    ov94_02245824(param0, param0->unk_B90, v0, TEXT_SPEED_FAST, 0xf0f);
    ov94_0223C3F4(param0, 12, 22);

    return 3;
}

static int ov94_022456CC(UnkStruct_ov94_0223FD4C *param0)
{
    switch (param0->unk_14E0) {
    case 0:
        ov94_02245824(param0, param0->unk_B90, 178, TEXT_SPEED_FAST, 0xf0f);
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
        ov94_02245824(param0, param0->unk_B90, 179, TEXT_SPEED_FAST, 0xf0f);
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
            ov94_0223C4C0(param0, 0, 0);
            param0->unk_2C = 11;
        }
        break;
    }

    return 3;
}

static int ov94_0224579C(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static int ov94_022457BC(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        if (param0->unk_10E0 > 30) {
            param0->unk_2C = param0->unk_30;
        }

        param0->unk_10E0++;
    }

    return 3;
}

static int ov94_022457F0(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 23 * 16) + 24 * 2));
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

void ov94_02245824(UnkStruct_ov94_0223FD4C *param0, MessageLoader *param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    v0 = MessageLoader_GetNewStrbuf(param1, param2);

    StringTemplate_Format(param0->unk_B8C, param0->unk_BAC, v0);
    Strbuf_Free(v0);
    BGL_FillWindow(&param0->unk_F5C, 0xf0f);
    sub_0200E060(&param0->unk_F5C, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_F5C, FONT_MESSAGE, param0->unk_BAC, 0, 0, param3, NULL);
    param0->unk_10E0 = 0;
}

static int ov94_02245894(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5)
{
    int v0 = 0, v1;

    switch (param3) {
    case 1:
        v0 = Font_CalcStrbufWidth(param5, param1, 0);
        param2 = ((param0->unk_07 * 8) - v0) / 2;
        break;
    case 2:
        v0 = Font_CalcStrbufWidth(param5, param1, 0);
        param2 = (param0->unk_07 * 8) - v0;
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

void ov94_02245934(UnkStruct_ov94_0223FD4C *param0)
{
    sub_02039734();
}

static void ov94_0224593C(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((16 * 8 * 2), 62);

    MessageLoader_GetStrbuf(param0->unk_B9C, param1, v0);
    StringTemplate_Format(param0->unk_B8C, param0->unk_BDC, v0);

    BGL_FillWindow(&param0->unk_F8C, 15);
    Window_Show(&param0->unk_F8C, 1, (1 + (18 + 12)), 11);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_F8C, FONT_MESSAGE, param0->unk_BDC, 0, 0, TEXT_SPEED_INSTANT, NULL);

    Strbuf_Free(v0);
}

static void ov94_022459B4(UnkStruct_ov94_0223FD4C *param0, int param1, int param2)
{
    int v0;

    if (param1 != -1) {
        v0 = 0 + param1;
    } else {
        v0 = 11;
    }

    StringTemplate_SetNumber(param0->unk_B8C, 0, param2, 5, 2, 1);
    sub_0200E084(&param0->unk_F5C, 1);

    ov94_0224593C(param0, v0);
}
