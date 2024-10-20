#include "overlay096/ov96_0223BCE0.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_02049A68.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay004/ov4_021D0D80.h"
#include "overlay096/ov96_0223B140.h"
#include "overlay096/ov96_0223B6A0.h"
#include "overlay096/struct_ov96_0223B450.h"
#include "overlay096/struct_ov96_0223B450_sub1.h"
#include "overlay096/struct_ov96_0223B450_sub2.h"
#include "overlay096/struct_ov96_0223BF40_decl.h"
#include "overlay096/struct_ov96_0223BF40_t.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "inlines.h"
#include "message.h"
#include "narc.h"
#include "savedata.h"
#include "strbuf.h"
#include "string_template.h"
#include "text.h"
#include "unk_02001AF4.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_02025CB0.h"
#include "unk_0202D05C.h"
#include "unk_02030CE8.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_02073700.h"

static void ov96_0223BE38(BGL *param0);
static void ov96_0223BF1C(BGL *param0);
static void ov96_0223BF40(UnkStruct_ov96_0223BF40 *param0);
static void ov96_0223C1FC(UnkStruct_ov96_0223BF40 *param0);
static void ov96_0223C314(UnkStruct_ov96_0223BF40 *param0);
static void ov96_0223C358(UnkStruct_ov96_0223BF40 *param0);
static void ov96_0223C3B0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C3F0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C420(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C4B8(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C510(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C530(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C5BC(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C5CC(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C680(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C6C0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D524(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D528(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D558(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D6C8(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D71C(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D6E8(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D588(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D5FC(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C6DC(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C488(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D7B8(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D7E4(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C7B4(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C7E8(UnkStruct_ov96_0223BF40 *param0);
static void ov96_0223D814(UnkStruct_ov96_0223BF40 *param0, MessageLoader *param1, int param2, int param3, u16 param4);
static void ov96_0223D750(UnkStruct_ov96_0223BF40 *param0, MessageLoader *param1, int param2, int param3, u16 param4);
static void ov96_0223D90C(Window *param0, Strbuf *param1, int param2, int param3);
static void ov96_0223D9B8(UnkStruct_ov96_0223BF40 *param0, int param1);
static void ov96_0223DA34(UnkStruct_ov96_0223BF40 *param0, int param1, int param2);
static int ov96_0223C924(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C948(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223C9F8(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CA28(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CA70(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D3D8(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D408(UnkStruct_ov96_0223BF40 *param0);
static void ov96_0223D950(UnkStruct_ov96_0223BF40 *param0, int param1, int param2);
static int ov96_0223CB7C(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CC20(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CC50(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CD60(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CD9C(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CDD0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CE1C(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CEF0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CF2C(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CF5C(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CFAC(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D43C(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D46C(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223CBF0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D1D8(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D080(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D0B0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D100(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D240(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D270(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D35C(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D398(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D3A0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D3B8(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D4EC(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D4D0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D4A0(UnkStruct_ov96_0223BF40 *param0);
static int ov96_0223D86C(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5);
static void ov96_0223D978(UnkStruct_ov96_0223BF40 *param0);
static void ov96_0223D99C(UnkStruct_ov96_0223BF40 *param0);

static int (*Unk_ov96_0223DCE0[])(UnkStruct_ov96_0223BF40 *) = {
    ov96_0223C3F0,
    ov96_0223C420,
    ov96_0223C510,
    ov96_0223C530,
    ov96_0223C5BC,
    ov96_0223C5CC,
    ov96_0223C680,
    ov96_0223C6C0,
    ov96_0223C6DC,
    ov96_0223C7B4,
    ov96_0223C7E8,
    ov96_0223C924,
    ov96_0223C948,
    ov96_0223C9F8,
    ov96_0223CA28,
    ov96_0223CA70,
    ov96_0223CB7C,
    ov96_0223CC20,
    ov96_0223CC50,
    ov96_0223CD60,
    ov96_0223CBF0,
    ov96_0223D3D8,
    ov96_0223D408,
    ov96_0223D43C,
    ov96_0223D46C,
    ov96_0223CD9C,
    ov96_0223CDD0,
    ov96_0223CE1C,
    ov96_0223CEF0,
    ov96_0223CF2C,
    ov96_0223CF5C,
    ov96_0223CFAC,
    ov96_0223D080,
    ov96_0223D0B0,
    ov96_0223D100,
    ov96_0223D1D8,
    ov96_0223D240,
    ov96_0223D270,
    ov96_0223D35C,
    ov96_0223D3A0,
    ov96_0223D3B8,
    ov96_0223D4A0,
    ov96_0223D4D0,
    ov96_0223D4EC,
    ov96_0223D524,
    ov96_0223D398,
    ov96_0223D528,
    ov96_0223D6C8,
    ov96_0223D71C,
    ov96_0223D6E8,
    ov96_0223D558,
    ov96_0223C488,
    ov96_0223C4B8,
    ov96_0223D588,
    ov96_0223D5FC,
    ov96_0223D7B8,
    ov96_0223D7E4
};

int ov96_0223BCE0(UnkStruct_ov96_0223BF40 *param0, int param1)
{
    ov96_0223C358(param0);
    sub_0200F174(0, 1, 1, 0x0, 8, 1, 68);
    ov96_0223BE38(param0->unk_04);
    ov96_0223BF40(param0);
    ov96_0223C1FC(param0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_BG1, 1);
    sub_02038438(param0->unk_00->unk_0C);
    ov96_0223D948(param0);

    param0->unk_8C = sub_0202D2C0(param0->unk_00->unk_00, 0);
    param0->unk_90 = param0->unk_8C;
    param0->unk_98 = 1;
    param0->unk_F6C = NULL;

    if (!DWC_CheckInet()) {
        if (param0->unk_00->unk_24) {
            ov96_0223D814(param0, param0->unk_BD4, 1, TEXT_SPEED_FAST, 0xf0f);
            ov96_0223BBFC(param0, 47, 2);
            ov96_0223D978(param0);
        } else {
            param0->unk_1C = 0;
        }
    } else {
        param0->unk_1C = 51;
    }

    return 2;
}

int ov96_0223BDBC(UnkStruct_ov96_0223BF40 *param0, int param1)
{
    int v0, v1;

    sub_020397B0(ov96_0223BC50());

    v1 = param0->unk_1C;
    v0 = (*Unk_ov96_0223DCE0[param0->unk_1C])(param0);

    if (v1 != param0->unk_1C) {
        param0->unk_FF0 = 0;
        param0->unk_FF2 = 0;
    }

    inline_ov61_0222C0F8(&param0->unk_FF8);

    return v0;
}

int ov96_0223BDEC(UnkStruct_ov96_0223BF40 *param0, int param1)
{
    inline_ov61_0222C160(&param0->unk_FF8);

    ov96_0223C3B0(param0);
    ov96_0223C314(param0);
    ov96_0223BF1C(param0->unk_04);

    inline_ov96_0223BDEC(&param0->unk_FF8, 0);

    param0->unk_10 = param0->unk_14;

    if (param0->unk_10 == 0) {
        return 5;
    }

    return 1;
}

static void ov96_0223BE38(BGL *param0)
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

    sub_02019690(0, 32, 0, 68);
    sub_02019690(4, 32, 0, 68);
}

static void ov96_0223BF1C(BGL *param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
}

static void ov96_0223BF40(UnkStruct_ov96_0223BF40 *param0)
{
    BGL *v0 = param0->unk_04;
    NARC *v1 = NARC_ctor(NARC_INDEX_DATA__WIFIP2PMATCH, 68);

    sub_02007130(v1, 3, 0, 0, 0, 68);
    sub_02007130(v1, 3, 4, 0, 0, 68);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 68);
    Font_LoadScreenIndicatorsPalette(4, 13 * 0x20, 68);
    sub_0200DD0C(v0, 0, 1, 14, Options_Frame(param0->unk_00->unk_10), 68);
    sub_0200DAA4(v0, 0, (1 + (18 + 12)), 11, 0, 68);
    sub_020070E8(v1, 2, v0, 1, 0, 0, 0, 68);
    sub_0200710C(v1, 5, v0, 1, 0, 32 * 24 * 2, 0, 68);
    sub_020070E8(v1, 10, v0, 5, 0, 0, 0, 68);
    sub_0200710C(v1, 11, v0, 5, 0, 32 * 24 * 2, 0f, 68);
    sub_0201975C(0, 0);
    sub_0201975C(4, 0);

    inline_ov61_0222C3B0(&param0->unk_FF8, v1, 4, 68);

    NARC_dtor(v1);
}

static void ov96_0223C1FC(UnkStruct_ov96_0223BF40 *param0)
{
    BGL_AddWindow(param0->unk_04, &param0->unk_E78, 0, 4, 4, 23, 16, 13, (((((1 + (18 + 12)) + 9) + 27 * 4) + 4 * 2) + 4 * 2));
    BGL_FillWindow(&param0->unk_E78, 0x0);
    BGL_AddWindow(param0->unk_04, &param0->unk_E58, 0, 26, 14, 4, 2, 13, (((1 + (18 + 12)) + 9) + 27 * 4));
    BGL_FillWindow(&param0->unk_E58, 0xf0f);
    BGL_AddWindow(param0->unk_04, &param0->unk_E48, 0, 26, 14, 4, 2, 13, ((((1 + (18 + 12)) + 9) + 27 * 4) + 4 * 2));
    BGL_FillWindow(&param0->unk_E48, 0xf0f);
    BGL_AddWindow(param0->unk_04, &param0->unk_E68, 0, 4, 1, 24, 2, 13, ((((((1 + (18 + 12)) + 9) + 27 * 4) + 4 * 2) + 4 * 2) + 23 * 16));
    BGL_FillWindow(&param0->unk_E68, 0x0);
    ov96_0223D8A4(&param0->unk_E68, param0->unk_BE0, 0, 1, 1, TEXT_COLOR(15, 14, 0));
    BGL_AddWindow(param0->unk_04, &param0->unk_E38, 0, 2, 19, 27, 4, 13, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_E38, 0xf0f);
}

static void ov96_0223C314(UnkStruct_ov96_0223BF40 *param0)
{
    BGL_DeleteWindow(&param0->unk_E38);
    BGL_DeleteWindow(&param0->unk_E68);
    BGL_DeleteWindow(&param0->unk_E48);
    BGL_DeleteWindow(&param0->unk_E58);
    BGL_DeleteWindow(&param0->unk_E78);
}

static void ov96_0223C358(UnkStruct_ov96_0223BF40 *param0)
{
    param0->unk_BDC = Strbuf_Init((90 * 2), 68);
    param0->unk_BE4 = Strbuf_Init(4, 68);
    param0->unk_BE8 = Strbuf_Init(3, 68);
    param0->unk_BE0 = MessageLoader_GetNewStrbuf(param0->unk_BD0, 10);
    param0->unk_BEC = Strbuf_Init((16 * 8 * 2), 68);
}

static void ov96_0223C3B0(UnkStruct_ov96_0223BF40 *param0)
{
    Strbuf_Free(param0->unk_BEC);
    Strbuf_Free(param0->unk_BE0);
    Strbuf_Free(param0->unk_BE8);
    Strbuf_Free(param0->unk_BE4);
    Strbuf_Free(param0->unk_BDC);
}

static int ov96_0223C3F0(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD8, 17, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 48, 1);

    return 3;
}

static int ov96_0223C420(UnkStruct_ov96_0223BF40 *param0)
{
    int v0 = sub_02002114(param0->unk_F68, 68);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            sub_0203848C();
            ov96_0223BC5C(param0, 0, 0);
            param0->unk_1C = 46;
        } else {
            ov96_0223D814(param0, param0->unk_BD4, 1, TEXT_SPEED_FAST, 0xf0f);
            ov96_0223BBFC(param0, 47, 2);
            ov96_0223D978(param0);
        }
    }

    return 3;
}

static int ov96_0223C488(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD4, 12, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 48, 52);

    return 3;
}

static int ov96_0223C4B8(UnkStruct_ov96_0223BF40 *param0)
{
    int v0 = sub_02002114(param0->unk_F68, 68);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            if (!DWC_CheckInet()) {
                param0->unk_1C = 0;
            } else {
                param0->unk_1C = 41;
            }
        } else {
            if (!DWC_CheckInet()) {
                ov96_0223BC5C(param0, 0, 0);
                param0->unk_1C = 46;
            } else {
                param0->unk_1C = 41;
            }

            param0->unk_00->unk_20 = 1;
        }
    }

    return 3;
}

static int ov96_0223C510(UnkStruct_ov96_0223BF40 *param0)
{
    DWC_InitInetEx(&param0->unk_2C, 2, 1, 20);
    DWC_SetAuthServer(DWC_CONNECTINET_AUTH_RELEASE);
    DWC_ConnectInetAsync();

    param0->unk_1C = 3;

    return 3;
}

static int ov96_0223C530(UnkStruct_ov96_0223BF40 *param0)
{
    DWC_ProcessInet();

    if (DWC_CheckInet()) {
        int v0 = DWC_GetInetStatus();

        switch (v0) {
        case DWC_CONNECTINET_STATE_ERROR: {
            DWCError v1;
            int v2;

            v1 = DWC_GetLastError(&v2);

            param0->unk_F70 = v1;
            param0->unk_F74 = v2;
        }
            DWC_ClearError();
            DWC_CleanupInet();

            ov96_0223D99C(param0);
            param0->unk_1C = 55;
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

            ov96_0223D99C(param0);
            param0->unk_1C = 53;
            param0->unk_F7C = -2;
        } break;

        case DWC_CONNECTINET_STATE_CONNECTED: {
            DWCApInfo v5;

            DWC_GetApInfo(&v5);

            if (v5.aptype == DWC_APINFO_TYPE_SHOP) {
                (void)0;
            }
        }
            param0->unk_1C = 4;
            break;
        }
    }

    return 3;
}

static int ov96_0223C5BC(UnkStruct_ov96_0223BF40 *param0)
{
    DWC_NASLoginAsync();
    param0->unk_1C = 5;

    return 3;
}

static int ov96_0223C5CC(UnkStruct_ov96_0223BF40 *param0)
{
    switch (DWC_NASLoginProcess()) {
    case DWC_NASLOGIN_STATE_SUCCESS:
        param0->unk_1C = 6;
        break;
    case DWC_NASLOGIN_STATE_ERROR:
    case DWC_NASLOGIN_STATE_CANCELED:
    case DWC_NASLOGIN_STATE_DIRTY:
        ov96_0223D99C(param0);
        {
            int v0;
            DWCErrorType v1;
            DWCError v2;

            v2 = DWC_GetLastErrorEx(&v0, &v1);
            param0->unk_F70 = v2;
            param0->unk_F74 = v0;

            DWC_ClearError();
            DWC_CleanupInet();

            param0->unk_1C = 55;

            switch (v1) {
            case DWC_ETYPE_LIGHT:
            case DWC_ETYPE_SHOW_ERROR:
                param0->unk_1C = 55;
                break;
            case DWC_ETYPE_SHUTDOWN_GHTTP:
                DWC_ShutdownGHTTP();
                param0->unk_1C = 55;
                break;
            case DWC_ETYPE_DISCONNECT:
                param0->unk_1C = 55;
                break;
            case DWC_ETYPE_SHUTDOWN_FM:
                DWC_ShutdownFriendsMatch();
                param0->unk_1C = 55;
                break;
            case DWC_ETYPE_SHUTDOWN_ND:
            case DWC_ETYPE_FATAL:
                sub_02038A0C();
                break;
            }

            if ((v0 < -20000) && (v0 >= -29999)) {
                param0->unk_1C = 55;
            }
        }
        break;
    }

    return 3;
}

static int ov96_0223C680(UnkStruct_ov96_0223BF40 *param0)
{
    s32 v0;

    v0 = sub_02025D74(param0->unk_00->unk_08);

    if (v0 == 0) {
        sub_02025D78(param0->unk_00->unk_08, param0->unk_00->unk_1C);
    }

    v0 = sub_02025D74(param0->unk_00->unk_08);
    ov96_0223B140(v0, DWC_CreateFriendKey(param0->unk_00->unk_14));

    param0->unk_1C = 7;

    return 3;
}

static int ov96_0223C6C0(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223B530();

    param0->unk_1C = 8;
    param0->unk_FF4 = 0;

    return 3;
}

static int ov96_0223C6DC(UnkStruct_ov96_0223BF40 *param0)
{
    if (ov96_0223B3D4()) {
        s32 v0 = ov96_0223B3F4();

        param0->unk_FF4 = 0;

        switch (v0) {
        case 0:
            ov96_0223D99C(param0);

            switch (param0->unk_00->unk_18) {
            case 0:
                ov96_0223BBFC(param0, 11, 13);
                break;
            case 1:
                param0->unk_1C = 25;
                break;
            case 2:
                param0->unk_1C = 29;
                break;
            }

            break;
        case 1:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case 2:
        case -1:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -7:
        case -4:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -2:
        case -6:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -5:
        default:
            ov96_0223D99C(param0);
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_FF4++;

        if (param0->unk_FF4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov96_0223C7B4(UnkStruct_ov96_0223BF40 *param0)
{
    sub_02030E78(param0->unk_00->unk_0C, &param0->unk_F84);
    ov96_0223B574(&param0->unk_F84, &param0->unk_FE8);

    param0->unk_1C = 10;
    param0->unk_FF4 = 0;

    return 3;
}

static int ov96_0223C7E8(UnkStruct_ov96_0223BF40 *param0)
{
    if (ov96_0223B3D4()) {
        s32 v0 = ov96_0223B3F4();

        param0->unk_FF4 = 0;

        switch (v0) {
        case 0:
            ov96_0223D99C(param0);

            switch (param0->unk_FE8.unk_00) {
            case 0:
                switch (param0->unk_FE8.unk_04) {
                case 0:
                    switch (param0->unk_00->unk_18) {
                    case 0:
                        ov96_0223BBFC(param0, 11, 13);
                        break;
                    case 1:
                        param0->unk_1C = 25;
                        break;
                    case 2:
                        param0->unk_1C = 29;
                        break;
                    }
                    break;
                case 1:
                case 2:
                case 3:
                    param0->unk_F7C = v0;
                    param0->unk_1C = 53;
                    ov96_0223D99C(param0);
                    break;
                }
                break;
            case 1:
            case 2:
                param0->unk_F7C = v0;
                param0->unk_1C = 53;
                ov96_0223D99C(param0);
                break;
            default:
                ov96_0223D99C(param0);
                sub_02038A0C();
                break;
            }
            break;
        case 1:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case 2:
        case -1:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -7:
        case -4:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -2:
        case -6:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -5:
        default:
            ov96_0223D99C(param0);
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_FF4++;

        if (param0->unk_FF4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov96_0223C924(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223B400(param0->unk_90);
    param0->unk_1C = 12;
    param0->unk_FF4 = 0;
    ov96_0223D978(param0);

    return 3;
}

static int ov96_0223C948(UnkStruct_ov96_0223BF40 *param0)
{
    if (ov96_0223B3D4()) {
        s32 v0 = ov96_0223B3F4();
        param0->unk_FF4 = 0;

        switch (v0) {
        case -1:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            break;
        case -2:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            break;
        case -3:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            break;
        case -6:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            break;
        case -4:
        case -7:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            break;
        case -5:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            sub_02038A0C();
            break;
        default:
            if (v0 > 0) {
                param0->unk_94 = v0;
                param0->unk_1C = param0->unk_20;
            }
        }

        ov96_0223D99C(param0);
    } else {
        param0->unk_FF4++;

        if (param0->unk_FF4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov96_0223C9F8(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD0, 0, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 14);

    return 3;
}

static int ov96_0223CA28(UnkStruct_ov96_0223BF40 *param0)
{
    Window_Show(&param0->unk_E58, 0, (1 + (18 + 12)), 14);
    ov96_0223D90C(&param0->unk_E58, param0->unk_BE4, param0->unk_98, 3);
    ov96_0223D950(param0, 0, 1);
    sub_0201A954(&param0->unk_E58);

    param0->unk_1C = 15;

    return 3;
}

static int ov96_0223CA70(UnkStruct_ov96_0223BF40 *param0)
{
    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
        param0->unk_98++;

        if (param0->unk_98 > param0->unk_94) {
            param0->unk_98 = 1;
        }

        ov96_0223D90C(&param0->unk_E58, param0->unk_BE4, param0->unk_98, 3);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
        param0->unk_98--;

        if (param0->unk_98 < 1) {
            param0->unk_98 = param0->unk_94;
        }

        ov96_0223D90C(&param0->unk_E58, param0->unk_BE4, param0->unk_98, 3);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        {
            RTCTime v0;
            RTCDate v1;

            DWC_GetDateTime(&v1, &v0);

            if (sub_0202D558(param0->unk_00->unk_04, param0->unk_90, param0->unk_98, &v1)) {
                param0->unk_1C = 20;
            } else {
                param0->unk_1C = 16;
            }
        }

        ov96_0223D950(param0, 0, 0);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        ov96_0223D950(param0, 0, 0);
        param0->unk_1C = 21;
        Sound_PlayEffect(1500);
    }

    return 3;
}

static int ov96_0223CB7C(UnkStruct_ov96_0223BF40 *param0)
{
    StringTemplate_SetNumber(param0->unk_BCC, 0, param0->unk_98, 3, 2, 1);
    StringTemplate_SetNumber(param0->unk_BCC, 1, param0->unk_90, 2, 2, 1);

    ov96_0223D750(param0, param0->unk_BD0, 1, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 17);

    MI_CpuClearFast(&param0->unk_9C, sizeof(UnkStruct_ov96_0223B450));

    return 3;
}

static int ov96_0223CBF0(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D750(param0, param0->unk_BD0, 2, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 13);

    return 3;
}

static int ov96_0223CC20(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223B450(param0->unk_8C, param0->unk_98, &param0->unk_9C);
    ov96_0223D978(param0);

    param0->unk_1C = 18;
    param0->unk_FF4 = 0;

    return 3;
}

static int ov96_0223CC50(UnkStruct_ov96_0223BF40 *param0)
{
    if (ov96_0223B3D4()) {
        s32 v0 = ov96_0223B3F4();

        param0->unk_FF4 = 0;

        switch (v0) {
        case 0:
            sub_0202D5F8(param0->unk_00->unk_04, (UnkStruct_ov96_0223B450_sub1 *)param0->unk_9C.unk_00, param0->unk_8C, param0->unk_98);
            ov96_0223BBFC(param0, 39, 19);

            {
                RTCTime v1;
                RTCDate v2;

                DWC_GetDateTime(&v2, &v1);
                sub_0202D4B0(param0->unk_00->unk_04, param0->unk_90, param0->unk_98, &v2);
            }
            break;
        case -1:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -2:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -3:
        case -4:
            param0->unk_F7C = v0;
            param0->unk_1C = 11;
            ov96_0223D99C(param0);
            break;
        case -6:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -7:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -5:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_FF4++;

        if (param0->unk_FF4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov96_0223CD60(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD0, 3, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 45);
    ov96_0223D99C(param0);

    param0->unk_00->unk_20 = 0;

    return 3;
}

static int ov96_0223CD9C(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD0, 7, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 26);
    ov96_0223D978(param0);

    return 3;
}

static int ov96_0223CDD0(UnkStruct_ov96_0223BF40 *param0)
{
    UnkStruct_02049A68 v0;
    int v1 = sub_0202D3A0(param0->unk_00->unk_00);

    sub_0202D628(param0->unk_00->unk_04, &v0);
    sub_02073700(param0->unk_00->unk_0C, 1, (UnkStruct_ov96_0223B450_sub1 *)&param0->unk_AD4);
    ov96_0223B4B0(v0.unk_00, v0.unk_04, v1, &param0->unk_AD4);

    param0->unk_1C = 27;
    param0->unk_FF4 = 0;

    return 3;
}

static int ov96_0223CE1C(UnkStruct_ov96_0223BF40 *param0)
{
    if (ov96_0223B3D4()) {
        s32 v0 = ov96_0223B3F4();

        param0->unk_FF4 = 0;

        switch (v0) {
        case 0:
            sub_0202D414(param0->unk_00->unk_00, 5, 2);
            ov96_0223BBFC(param0, 39, 28);
            break;
        case -1:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -2:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -3:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -6:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -4:
        case -7:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -5:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_FF4++;

        if (param0->unk_FF4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov96_0223CEF0(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD0, 8, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 45);
    ov96_0223D99C(param0);

    param0->unk_00->unk_20 = 0;

    return 3;
}

static int ov96_0223CF2C(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD0, 5, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 30);

    return 3;
}

static int ov96_0223CF5C(UnkStruct_ov96_0223BF40 *param0)
{
    param0->unk_90 = 1;

    Window_Show(&param0->unk_E48, 0, (1 + (18 + 12)), 14);
    ov96_0223D90C(&param0->unk_E48, param0->unk_BE8, param0->unk_90, 2);
    ov96_0223D950(param0, 1, 1);
    sub_0201A954(&param0->unk_E48);

    param0->unk_1C = 31;

    return 3;
}

static int ov96_0223CFAC(UnkStruct_ov96_0223BF40 *param0)
{
    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
        param0->unk_90++;

        if (param0->unk_90 > 10) {
            param0->unk_90 = 1;
        }

        ov96_0223D90C(&param0->unk_E48, param0->unk_BE8, param0->unk_90, 2);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
        param0->unk_90--;

        if (param0->unk_90 < 1) {
            param0->unk_90 = 10;
        }

        ov96_0223D90C(&param0->unk_E48, param0->unk_BE8, param0->unk_90, 2);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        ov96_0223D950(param0, 0, 0);
        ov96_0223BBFC(param0, 11, 32);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        ov96_0223D950(param0, 0, 0);
        param0->unk_1C = 23;
        Sound_PlayEffect(1500);
    }

    return 3;
}

static int ov96_0223D080(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD0, 6, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 33);

    return 3;
}

static int ov96_0223D0B0(UnkStruct_ov96_0223BF40 *param0)
{
    param0->unk_98 = 1;

    Window_Show(&param0->unk_E58, 0, (1 + (18 + 12)), 14);
    ov96_0223D90C(&param0->unk_E58, param0->unk_BE4, param0->unk_98, 3);
    ov96_0223D950(param0, 0, 1);
    sub_0201A954(&param0->unk_E58);

    param0->unk_1C = 34;

    return 3;
}

static int ov96_0223D100(UnkStruct_ov96_0223BF40 *param0)
{
    if (gCoreSys.pressedKeysRepeatable & PAD_KEY_UP) {
        param0->unk_98++;

        if (param0->unk_98 == param0->unk_94 + 1) {
            param0->unk_98 = 1;
        }

        ov96_0223D90C(&param0->unk_E58, param0->unk_BE4, param0->unk_98, 3);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeysRepeatable & PAD_KEY_DOWN) {
        param0->unk_98--;

        if (param0->unk_98 < 1) {
            param0->unk_98 = param0->unk_94;
        }

        ov96_0223D90C(&param0->unk_E58, param0->unk_BE4, param0->unk_98, 3);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        ov96_0223D950(param0, 0, 0);
        param0->unk_1C = 35;
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        ov96_0223D950(param0, 0, 0);
        param0->unk_1C = 29;
        Sound_PlayEffect(1500);
    }

    return 3;
}

static int ov96_0223D1D8(UnkStruct_ov96_0223BF40 *param0)
{
    StringTemplate_SetNumber(param0->unk_BCC, 0, param0->unk_98, 3, 2, 1);
    StringTemplate_SetNumber(param0->unk_BCC, 1, param0->unk_90, 2, 2, 1);

    ov96_0223D750(param0, param0->unk_BD0, 1, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 36);

    param0->unk_1C = 36;

    return 3;
}

static int ov96_0223D240(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223B450(param0->unk_90, param0->unk_98, &param0->unk_9C);

    param0->unk_1C = 37;
    param0->unk_FF4 = 0;

    ov96_0223D978(param0);

    return 3;
}

static int ov96_0223D270(UnkStruct_ov96_0223BF40 *param0)
{
    if (ov96_0223B3D4()) {
        s32 v0 = ov96_0223B3F4();

        param0->unk_FF4 = 0;

        switch (v0) {
        case 0:
            sub_0202D6DC(param0->unk_00->unk_04, (UnkStruct_ov96_0223B450_sub2 *)param0->unk_9C.unk_63C, param0->unk_90, param0->unk_98);
            ov96_0223BBFC(param0, 39, 38);
            break;
        case -1:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -2:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -3:
            param0->unk_F7C = v0;
            param0->unk_1C = 11;
            ov96_0223D99C(param0);
            break;
        case -6:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            break;
        case -7:
        case -4:
            param0->unk_1C = 11;
            param0->unk_F7C = v0;
            ov96_0223D99C(param0);
            break;
        case -5:
            param0->unk_F7C = v0;
            param0->unk_1C = 53;
            ov96_0223D99C(param0);
            sub_02038A0C();
            break;
        }
    } else {
        param0->unk_FF4++;

        if (param0->unk_FF4 == (30 * 60 * 2)) {
            sub_02038A0C();
        }
    }

    return 3;
}

static int ov96_0223D35C(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD0, 3, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 45);
    ov96_0223D99C(param0);

    param0->unk_00->unk_20 = 0;

    return 3;
}

static int ov96_0223D398(UnkStruct_ov96_0223BF40 *param0)
{
    param0->unk_1C = 41;
    return 3;
}

static int ov96_0223D3A0(UnkStruct_ov96_0223BF40 *param0)
{
    SaveData_SaveStateInit(param0->unk_00->unk_0C, 2);
    param0->unk_1C = 40;

    return 3;
}

static int ov96_0223D3B8(UnkStruct_ov96_0223BF40 *param0)
{
    if (SaveData_SaveStateMain(param0->unk_00->unk_0C) == 2) {
        param0->unk_1C = param0->unk_20;
        ov96_0223D99C(param0);
    }

    return 3;
}

static int ov96_0223D3D8(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD0, 4, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 48, 22);

    return 3;
}

static int ov96_0223D408(UnkStruct_ov96_0223BF40 *param0)
{
    int v0 = sub_02002114(param0->unk_F68, 68);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_1C = 13;
        } else {
            param0->unk_1C = 41;
            param0->unk_00->unk_20 = 1;
        }
    }

    return 3;
}

static int ov96_0223D43C(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD0, 9, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 48, 24);

    return 3;
}

static int ov96_0223D46C(UnkStruct_ov96_0223BF40 *param0)
{
    int v0 = sub_02002114(param0->unk_F68, 68);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_1C = 29;
        } else {
            param0->unk_1C = 41;
            param0->unk_00->unk_20 = 1;
        }
    }

    return 3;
}

static int ov96_0223D4A0(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD8, 26, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 42);

    return 3;
}

static int ov96_0223D4D0(UnkStruct_ov96_0223BF40 *param0)
{
    DWC_CleanupInet();
    ov96_0223BC5C(param0, 0, 0);
    param0->unk_1C = 43;

    return 3;
}

static int ov96_0223D4EC(UnkStruct_ov96_0223BF40 *param0)
{
    ov96_0223D814(param0, param0->unk_BD8, 27, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 49, 46);
    param0->unk_F80 = 0;

    return 3;
}

static int ov96_0223D524(UnkStruct_ov96_0223BF40 *param0)
{
    return 3;
}

static int ov96_0223D528(UnkStruct_ov96_0223BF40 *param0)
{
    sub_02039794();
    sub_0203848C();
    sub_0200F174(0, 0, 0, 0x0, 8, 1, 68);

    param0->unk_1C = 0;

    return 4;
}

static int ov96_0223D558(UnkStruct_ov96_0223BF40 *param0)
{
    int v0 = sub_02002114(param0->unk_F68, 68);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_1C = 0;
        } else {
            param0->unk_1C = 41;
        }
    }

    return 3;
}

static int ov96_0223D588(UnkStruct_ov96_0223BF40 *param0)
{
    int v0 = 0;

    switch (param0->unk_F7C) {
    case -2:
    case -6:
        v0 = 13;
        break;
    case 1:
        v0 = 11;
        break;
    case 2:
    case -1:
        v0 = 12;
        break;
    case -7:
    case -4:
        v0 = 14;
        break;
    case -3:
        v0 = 15;
        break;
    }

    ov96_0223D99C(param0);
    ov96_0223D814(param0, param0->unk_BD0, v0, TEXT_SPEED_FAST, 0xf0f);
    ov96_0223BBFC(param0, 47, 54);

    return 3;
}

static int ov96_0223D5FC(UnkStruct_ov96_0223BF40 *param0)
{
    switch (param0->unk_FF0) {
    case 0:
        ov96_0223D814(param0, param0->unk_BD0, 16, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_FF0++;
        break;
    case 1:
        if (Text_IsPrinterActive(param0->unk_BF0) == 0) {
            sub_0203848C();
            DWC_CleanupInet();
            param0->unk_FF0++;
        }
        break;
    case 2:
        ov96_0223D814(param0, param0->unk_BD0, 17, TEXT_SPEED_FAST, 0xf0f);
        param0->unk_FF0++;
        break;
    case 3:
        if (Text_IsPrinterActive(param0->unk_BF0) == 0) {
            param0->unk_FF0++;
        }
        break;
    default:
        param0->unk_FF2++;

        if (param0->unk_FF2 > 30) {
            ov96_0223BC5C(param0, 0, 0);
            param0->unk_1C = 46;
        }
        break;
    }

    return 3;
}

static int ov96_0223D6C8(UnkStruct_ov96_0223BF40 *param0)
{
    if (Text_IsPrinterActive(param0->unk_BF0) == 0) {
        param0->unk_1C = param0->unk_20;
    }

    return 3;
}

static int ov96_0223D6E8(UnkStruct_ov96_0223BF40 *param0)
{
    if (Text_IsPrinterActive(param0->unk_BF0) == 0) {
        if (param0->unk_F80 > 30) {
            param0->unk_1C = param0->unk_20;
        }

        param0->unk_F80++;
    }

    return 3;
}

static int ov96_0223D71C(UnkStruct_ov96_0223BF40 *param0)
{
    if (Text_IsPrinterActive(param0->unk_BF0) == 0) {
        param0->unk_F68 = ov96_0223BBC8(param0->unk_04, 13, (((((((1 + (18 + 12)) + 9) + 27 * 4) + 4 * 2) + 4 * 2) + 23 * 16) + 24 * 2));
        param0->unk_1C = param0->unk_20;
    }

    return 3;
}

static void ov96_0223D750(UnkStruct_ov96_0223BF40 *param0, MessageLoader *param1, int param2, int param3, u16 param4)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param1, param2);

    StringTemplate_Format(param0->unk_BCC, param0->unk_BDC, v0);
    BGL_FillWindow(&param0->unk_E38, 0xf0f);
    sub_0200E060(&param0->unk_E38, 0, 1, 14);

    param0->unk_BF0 = Text_AddPrinterWithParams(&param0->unk_E38, FONT_MESSAGE, param0->unk_BDC, 0, 0, param3, NULL);

    Strbuf_Free(v0);
}

static int ov96_0223D7B8(UnkStruct_ov96_0223BF40 *param0)
{
    int v0;

    v0 = ov4_021D1F3C(-param0->unk_F74, param0->unk_F78);

    ov96_0223DA34(param0, v0, -param0->unk_F74);
    param0->unk_1C = 56;

    return 3;
}

static int ov96_0223D7E4(UnkStruct_ov96_0223BF40 *param0)
{
    if (gCoreSys.pressedKeys & PAD_BUTTON_A || gCoreSys.pressedKeys & PAD_BUTTON_B) {
        Window_Clear(&param0->unk_E78, 0);
        param0->unk_1C = 0;
    }

    return 3;
}

static void ov96_0223D814(UnkStruct_ov96_0223BF40 *param0, MessageLoader *param1, int param2, int param3, u16 param4)
{
    MessageLoader_GetStrbuf(param1, param2, param0->unk_BDC);
    BGL_FillWindow(&param0->unk_E38, 0xf0f);
    sub_0200E060(&param0->unk_E38, 0, 1, 14);

    param0->unk_BF0 = Text_AddPrinterWithParams(&param0->unk_E38, FONT_MESSAGE, param0->unk_BDC, 0, 0, param3, NULL);
}

static int ov96_0223D86C(Window *param0, Strbuf *param1, int param2, int param3, u32 param4, int param5)
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

void ov96_0223D8A4(Window *param0, Strbuf *param1, int param2, int param3, int param4, TextColor param5)
{
    param2 = ov96_0223D86C(param0, param1, param2, param4, param5, 1);
    Text_AddPrinterWithParamsAndColor(param0, FONT_MESSAGE, param1, param2, param3, TEXT_SPEED_INSTANT, param5, NULL);
}

void ov96_0223D8D8(Window *param0, Strbuf *param1, int param2, int param3, int param4, TextColor param5)
{
    param2 = ov96_0223D86C(param0, param1, param2, param4, param5, 0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, param1, param2, param3, TEXT_SPEED_INSTANT, param5, NULL);
}

static void ov96_0223D90C(Window *param0, Strbuf *param1, int param2, int param3)
{
    BGL_FillWindow(param0, 0xf0f);
    Strbuf_FormatInt(param1, param2, param3, 2, 1);
    ov96_0223D8D8(param0, param1, 0, 1, 1, TEXT_COLOR(1, 2, 0));
}

void ov96_0223D948(UnkStruct_ov96_0223BF40 *param0)
{
    sub_02039734();
}

static void ov96_0223D950(UnkStruct_ov96_0223BF40 *param0, int param1, int param2)
{
    if ((param1 == 0) || (param1 == 1)) {
        CellActor_SetDrawFlag(param0->unk_E30[0], param2);
        CellActor_SetDrawFlag(param0->unk_E30[1], param2);
    }
}

static void ov96_0223D978(UnkStruct_ov96_0223BF40 *param0)
{
    if (param0->unk_F6C == NULL) {
        param0->unk_F6C = sub_0200E7FC(&param0->unk_E38, 1);
    }
}

static void ov96_0223D99C(UnkStruct_ov96_0223BF40 *param0)
{
    if (param0->unk_F6C != NULL) {
        DeleteWaitDial(param0->unk_F6C);
        param0->unk_F6C = NULL;
    }
}

static void ov96_0223D9B8(UnkStruct_ov96_0223BF40 *param0, int param1)
{
    Strbuf *v0 = Strbuf_Init((16 * 8 * 2), 68);

    MessageLoader_GetStrbuf(param0->unk_BD8, param1, v0);
    StringTemplate_Format(param0->unk_BCC, param0->unk_BEC, v0);
    BGL_FillWindow(&param0->unk_E78, 15);
    Window_Show(&param0->unk_E78, 1, (1 + (18 + 12)), 11);

    param0->unk_BF0 = Text_AddPrinterWithParams(&param0->unk_E78, FONT_MESSAGE, param0->unk_BEC, 0, 0, TEXT_SPEED_INSTANT, NULL);

    Strbuf_Free(v0);
}

static void ov96_0223DA34(UnkStruct_ov96_0223BF40 *param0, int param1, int param2)
{
    int v0;

    if (param1 != -1) {
        v0 = 0 + param1;
    } else {
        v0 = 11;
    }

    StringTemplate_SetNumber(param0->unk_BCC, 0, param2, 5, 2, 1);
    sub_0200E084(&param0->unk_E38, 1);
    ov96_0223D9B8(param0, v0);
}
