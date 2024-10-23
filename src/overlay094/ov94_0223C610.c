#include "overlay094/ov94_0223C610.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0205AA50.h"

#include "overlay084/struct_ov84_0223BA5C.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_02244950.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay097/struct_ov97_0222DB78.h"

#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "gx_layers.h"
#include "message.h"
#include "narc.h"
#include "strbuf.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_02001AF4.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006E3C.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_02018340.h"
#include "unk_020393C8.h"

static void ov94_0223C720(BGL *param0);
static void ov94_0223C830(BGL *param0);
static void ov94_0223C888(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223C950(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223C9B0(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223C9C0(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223CAC8(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223CB0C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223CB34(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CB50(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CB90(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CBA0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CBC4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CBD8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CBEC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CC28(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CE14(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CE5C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CE7C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CEE8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CF08(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CDD8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223CE00(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223CF3C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223CF80(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4);
static void ov94_0223CFD8(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4);
static void ov94_0223C85C(UnkStruct_ov94_0223FD4C *param0);

static int (*Unk_ov94_022467C4[])(UnkStruct_ov94_0223FD4C *) = {
    ov94_0223CB50,
    ov94_0223CB90,
    ov94_0223CBA0,
    ov94_0223CBC4,
    ov94_0223CBD8,
    ov94_0223CBEC,
    ov94_0223CC28,
    ov94_0223CDD8,
    ov94_0223CE00,
    ov94_0223CE14,
    ov94_0223CEE8,
    ov94_0223CF08,
    ov94_0223CE5C,
    ov94_0223CE7C
};

int ov94_0223C610(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_0223CB0C(param0);
    ov94_0223C720(param0->unk_04);
    ov94_0223C888(param0);
    ov94_0223C9C0(param0);
    ov94_0223C950(param0);
    ov94_02245934(param0);
    ov94_0223CF3C(param0);

    sub_02004550(23, 1097, 1);

    if (param0->unk_34 == 0) {
        ov94_0223C85C(param0);
        sub_0200F174(0, 1, 1, 0x0, 6, 1, 62);

        param0->unk_2C = 0;
        param0->unk_34 = 1;

        ov94_02243FA8(param0, TrainerInfo_Gender(param0->unk_00->unk_1C));
    } else {
        if (param0->unk_1110 == 1) {
            sub_0200F174(0, 1, 1, 0x0, 6, 1, 62);
        } else {
            sub_0200F174(3, 1, 1, 0x0, 6, 1, 62);
        }

        param0->unk_2C = 5;
    }

    param0->unk_1110 = 0;
    return 2;
}

int ov94_0223C6D4(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0;

    sub_020397B0(ov94_0223C4B4());

    v0 = (*Unk_ov94_022467C4[param0->unk_2C])(param0);
    return v0;
}

int ov94_0223C6F4(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    sub_02039794();

    ov94_0223C9B0(param0);
    ov94_0223CB34(param0);
    ov94_0223CAC8(param0);
    ov94_0223C830(param0->unk_04);
    ov94_0223C4C8(param0);

    return 1;
}

static void ov94_0223C720(BGL *param0)
{
    {
        UnkStruct_ov84_0223BA5C v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        sub_02018368(&v0);
    }

    {
        UnkStruct_ov97_0222DB78 v1 = {
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

        sub_020183C4(param0, 0, &v1, 0);
        sub_02019EBC(param0, 0);
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
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 1, &v2, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0xe800,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        sub_020183C4(param0, 2, &v3, 0);
    }

    {
        UnkStruct_ov97_0222DB78 v4 = {
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

        sub_020183C4(param0, 4, &v4, 0);
        sub_02019EBC(param0, 4);
    }

    {
        UnkStruct_ov97_0222DB78 v5 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0xe000,
            GX_BG_CHARBASE_0x00000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        sub_020183C4(param0, 5, &v5, 0);
    }

    sub_02019690(0, 32, 0, 62);
    sub_02019690(4, 32, 0, 62);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov94_0223C830(BGL *param0)
{
    sub_02019044(param0, 5);
    sub_02019044(param0, 4);
    sub_02019044(param0, 2);
    sub_02019044(param0, 1);
    sub_02019044(param0, 0);
}

static void ov94_0223C85C(UnkStruct_ov94_0223FD4C *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    CellActor_SetDrawFlag(param0->unk_E20, 0);
}

static void ov94_0223C888(UnkStruct_ov94_0223FD4C *param0)
{
    BGL *v0 = param0->unk_04;
    NARC *v1;

    v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, 62);

    sub_02007130(v1, 4, 0, 0, 16 * 3 * 2, 62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 62);
    sub_0200DD0C(v0, 0, 1, 10, Options_Frame(param0->unk_00->unk_24), 62);
    sub_0200DAA4(v0, 0, (1 + (18 + 12)), 11, 0, 62);
    sub_020070E8(v1, 14, v0, 1, 0, 16 * 6 * 0x20, 1, 62);
    sub_0200710C(v1, 30, v0, 1, 0, 32 * 24 * 2, 1, 62);
    sub_0200710C(v1, 29, v0, 2, 0, 32 * 24 * 2, 1, 62);

    ov94_0223D068(param0);

    NARC_dtor(v1);
}

static const u16 Unk_ov94_02245A48[][2] = {
    { 0x32, 0x38 },
    { 0x32, 0x60 },
    { 0x32, 0x88 }
};

static void ov94_0223C950(UnkStruct_ov94_0223FD4C *param0)
{
    CellActorInitParamsEx v0;

    ov94_0223C300(&v0, param0, &param0->unk_DB4, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE * Unk_ov94_02245A48[param0->unk_10C][0];
    v0.position.y = FX32_ONE * Unk_ov94_02245A48[param0->unk_10C][1];

    param0->unk_E20 = CellActorCollection_AddEx(&v0);

    CellActor_SetAnimateFlag(param0->unk_E20, 1);
    CellActor_SetAnim(param0->unk_E20, 1);
}

static void ov94_0223C9B0(UnkStruct_ov94_0223FD4C *param0)
{
    CellActor_Delete(param0->unk_E20);
}

static void ov94_0223C9C0(UnkStruct_ov94_0223FD4C *param0)
{
    BGL_AddWindow(param0->unk_04, &param0->unk_F7C, 0, 1, 1, 28, 2, 13, ((1 + (18 + 12)) + 9));
    BGL_FillWindow(&param0->unk_F7C, 0x0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_F7C, FONT_MESSAGE, param0->unk_BB0, 0, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 4, 0), NULL);

    {
        int v0;

        for (v0 = 0; v0 < 3; v0++) {
            BGL_AddWindow(param0->unk_04, &param0->unk_F9C[v0], 1, 9, 6 + v0 * 5, 15, 2, 13, (16 * 6 + 1) + (15 * 2) * v0);
            BGL_FillWindow(&param0->unk_F9C[v0], 0x0);
        }
    }

    BGL_AddWindow(param0->unk_04, &param0->unk_F5C, 0, 2, 21, 27, 2, 13, (((1 + (18 + 12)) + 9) + 28 * 2));
    BGL_FillWindow(&param0->unk_F5C, 0xf0f);
    BGL_AddWindow(param0->unk_04, &param0->unk_109C, 0, 2, 19, 27, 4, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2));
    BGL_FillWindow(&param0->unk_109C, 0xf0f);
}

static void ov94_0223CAC8(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    BGL_DeleteWindow(&param0->unk_109C);
    BGL_DeleteWindow(&param0->unk_F5C);

    for (v0 = 0; v0 < 3; v0++) {
        BGL_DeleteWindow(&param0->unk_F9C[v0]);
    }

    BGL_DeleteWindow(&param0->unk_F7C);
}

static void ov94_0223CB0C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_BAC = Strbuf_Init((90 * 2), 62);
    param0->unk_BB0 = MessageLoader_GetNewStrbuf(param0->unk_B90, 39);
}

static void ov94_0223CB34(UnkStruct_ov94_0223FD4C *param0)
{
    Strbuf_Free(param0->unk_BAC);
    Strbuf_Free(param0->unk_BB0);
}

static int ov94_0223CB50(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_10F0) {
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
        GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

        ov94_0223C4C0(param0, 7, 11);

        param0->unk_1C = 1;
        param0->unk_2C = 9;
    }

    return 3;
}

static int ov94_0223CB90(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223C3F4(param0, 10, 2);
    return 3;
}

static int ov94_0223CBA0(UnkStruct_ov94_0223FD4C *param0)
{
    sub_0200F174(3, 1, 1, 0x0, 6, 1, 62);
    param0->unk_2C = 3;

    return 3;
}

static int ov94_0223CBC4(UnkStruct_ov94_0223FD4C *param0)
{
    if (ScreenWipe_Done()) {
        param0->unk_2C = 5;
    }

    return 3;
}

static int ov94_0223CBD8(UnkStruct_ov94_0223FD4C *param0)
{
    if (ScreenWipe_Done()) {
        param0->unk_2C = 5;
    }

    return 3;
}

static int ov94_0223CBEC(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223CF80(param0, 4, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 10, 6);
    CellActor_SetAnimateFlag(param0->unk_E20, 1);
    ov94_0223C584(param0);

    return 3;
}

static int ov94_0223CC28(UnkStruct_ov94_0223FD4C *param0)
{
    if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        ov94_0223CFD8(param0, 7, ov94_0223C4D4(param0), 0, 0xf0f);
        ov94_0223C3F4(param0, 10, 12);
        CellActor_SetAnimateFlag(param0->unk_E20, 0);
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        switch (param0->unk_10C) {
        case 0:
            if (param0->unk_36 == 0) {
                ov94_0223C4C0(param0, 5, 5);
                param0->unk_2C = 9;
                Sound_PlayEffect(1500);
            } else {
                if (param0->unk_3A == 0) {
                    ov94_0223C4C0(param0, 7, 11);
                    param0->unk_1C = 2;
                    param0->unk_2C = 9;
                    param0->unk_3A = (60 * 30);
                    Sound_PlayEffect(1500);
                } else {
                    CellActor_SetAnimateFlag(param0->unk_E20, 0);
                    ov94_0223CF80(param0, 34, TEXT_SPEED_FAST, 0, 0xf0f);
                    ov94_0223C3F4(param0, 11, 5);
                    Sound_PlayEffect(1523);
                    param0->unk_10E0 = 0;
                }
            }
            break;
        case 1:
            ov94_0223C4C0(param0, 4, 0);
            param0->unk_2C = 9;
            Sound_PlayEffect(1500);
            break;
        case 2:
            ov94_0223CFD8(param0, 7, ov94_0223C4D4(param0), 0, 0xf0f);
            ov94_0223C3F4(param0, 10, 12);
            CellActor_SetAnimateFlag(param0->unk_E20, 0);
            Sound_PlayEffect(1500);
            break;
        }
    } else if (gCoreSys.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_10C != 0) {
            param0->unk_10C--;
            Sound_PlayEffect(1500);
            ov94_0223C3FC(param0->unk_E20, Unk_ov94_02245A48[param0->unk_10C][0], Unk_ov94_02245A48[param0->unk_10C][1]);
        }
    } else if (gCoreSys.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_10C < 2) {
            param0->unk_10C++;
            Sound_PlayEffect(1500);
            ov94_0223C3FC(param0->unk_E20, Unk_ov94_02245A48[param0->unk_10C][0], Unk_ov94_02245A48[param0->unk_10C][1]);
        }
    }

    return 3;
}

static int ov94_0223CDD8(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_022440B8(param0, TrainerInfo_Gender(param0->unk_00->unk_1C));

    param0->unk_2C = 8;
    param0->unk_10F0 = 0;

    return 3;
}

static int ov94_0223CE00(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_10F0) {
        param0->unk_2C = 9;
    }

    return 3;
}

static int ov94_0223CE14(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_18 == 0) {
        sub_0200F174(0, 0, 0, 0x0, 6, 1, 62);
    } else {
        sub_0200F174(3, 0, 0, 0x0, 6, 1, 62);
    }

    param0->unk_2C = 0;

    return 4;
}

static int ov94_0223CE5C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 27 * 4));
    param0->unk_2C = 13;

    return 3;
}

static int ov94_0223CE7C(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = sub_02002114(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            sub_0200E084(&param0->unk_109C, 1);
            sub_0201ACF4(&param0->unk_109C);
            CellActor_SetAnimateFlag(param0->unk_E20, 1);
            param0->unk_2C = 5;
        } else {
            sub_0200E084(&param0->unk_109C, 1);
            sub_0201ACF4(&param0->unk_109C);
            ov94_0223C4C0(param0, 0, 0);
            param0->unk_2C = 7;
        }
    }

    return 3;
}

static int ov94_0223CEE8(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static int ov94_0223CF08(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_10E0++;

        if (param0->unk_10E0 > 45) {
            param0->unk_10E0 = 0;
            param0->unk_2C = param0->unk_30;
        }
    }

    return 3;
}

static const int Unk_ov94_02245A64[][3] = {
    { 0x5A, 0x29, 0x2A },
    { 0x28, 0x29, 0x2A }
};

static void ov94_0223CF3C(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;
    int v1 = param0->unk_36;

    for (v0 = 0; v0 < 3; v0++) {
        ov94_0223D030(&param0->unk_F9C[v0], param0->unk_B90, Unk_ov94_02245A64[v1][v0], 0xf0f);
        sub_0201A954(&param0->unk_F9C[v0]);
    }
}

static void ov94_0223CF80(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->unk_B90, param1, param0->unk_BAC);
    BGL_FillWindow(&param0->unk_F5C, 0xf0f);
    sub_0200E060(&param0->unk_F5C, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_F5C, FONT_MESSAGE, param0->unk_BAC, 0, 0, param2, NULL);
}

static void ov94_0223CFD8(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->unk_B90, param1, param0->unk_BAC);
    BGL_FillWindow(&param0->unk_109C, 0xf0f);
    sub_0200E060(&param0->unk_109C, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_109C, FONT_MESSAGE, param0->unk_BAC, 0, 0, param2, NULL);
}

void ov94_0223D030(Window *param0, MessageLoader *param1, int param2, u16 param3)
{
    Strbuf *v0;

    v0 = MessageLoader_GetNewStrbuf(param1, param2);

    BGL_FillWindow(param0, param3);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(v0);
}

void ov94_0223D068(UnkStruct_ov94_0223FD4C *param0)
{
    BGL *v0 = param0->unk_04;

    sub_02006E84(104, 5, 4, 0, 16 * 16 * 2, 62);
    sub_02006E3C(104, 15, v0, 5, 0, 32 * 21 * 0x40, 1, 62);
    sub_02006E60(104, 31, v0, 5, 0, 32 * 24 * 2, 1, 62);
}
