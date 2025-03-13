#include "overlay094/ov94_0223C610.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_02244950.h"
#include "overlay094/struct_ov94_0223FD4C.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "gx_layers.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "render_window.h"
#include "sprite.h"
#include "strbuf.h"
#include "system.h"
#include "text.h"
#include "trainer_info.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_020393C8.h"

static void ov94_0223C720(BgConfig *param0);
static void ov94_0223C830(BgConfig *param0);
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
        StartScreenTransition(0, 1, 1, 0x0, 6, 1, HEAP_ID_62);

        param0->unk_2C = 0;
        param0->unk_34 = 1;

        ov94_02243FA8(param0, TrainerInfo_Gender(param0->unk_00->unk_1C));
    } else {
        if (param0->unk_1110 == 1) {
            StartScreenTransition(0, 1, 1, 0x0, 6, 1, HEAP_ID_62);
        } else {
            StartScreenTransition(3, 1, 1, 0x0, 6, 1, HEAP_ID_62);
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

static void ov94_0223C720(BgConfig *param0)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_2D,
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
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

        Bg_InitFromTemplate(param0, 0, &v1, 0);
        Bg_ClearTilemap(param0, 0);
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
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 1, &v2, 0);
    }

    {
        BgTemplate v3 = {
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

        Bg_InitFromTemplate(param0, 2, &v3, 0);
    }

    {
        BgTemplate v4 = {
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

        Bg_InitFromTemplate(param0, 4, &v4, 0);
        Bg_ClearTilemap(param0, 4);
    }

    {
        BgTemplate v5 = {
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

        Bg_InitFromTemplate(param0, 5, &v5, 0);
    }

    Bg_ClearTilesRange(0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);
}

static void ov94_0223C830(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, 5);
    Bg_FreeTilemapBuffer(param0, 4);
    Bg_FreeTilemapBuffer(param0, 2);
    Bg_FreeTilemapBuffer(param0, 1);
    Bg_FreeTilemapBuffer(param0, 0);
}

static void ov94_0223C85C(UnkStruct_ov94_0223FD4C *param0)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG1, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);
    Sprite_SetDrawFlag(param0->unk_E20, 0);
}

static void ov94_0223C888(UnkStruct_ov94_0223FD4C *param0)
{
    BgConfig *v0 = param0->unk_04;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(v1, 4, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, 0, 1, 10, Options_Frame(param0->unk_00->unk_24), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, 0, (1 + (18 + 12)), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 14, v0, 1, 0, 16 * 6 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 30, v0, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 29, v0, 2, 0, 32 * 24 * 2, 1, HEAP_ID_62);

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
    AffineSpriteListTemplate v0;

    ov94_0223C300(&v0, param0, &param0->unk_DB4, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE * Unk_ov94_02245A48[param0->unk_10C][0];
    v0.position.y = FX32_ONE * Unk_ov94_02245A48[param0->unk_10C][1];

    param0->unk_E20 = SpriteList_AddAffine(&v0);

    Sprite_SetAnimateFlag(param0->unk_E20, 1);
    Sprite_SetAnim(param0->unk_E20, 1);
}

static void ov94_0223C9B0(UnkStruct_ov94_0223FD4C *param0)
{
    Sprite_Delete(param0->unk_E20);
}

static void ov94_0223C9C0(UnkStruct_ov94_0223FD4C *param0)
{
    Window_Add(param0->unk_04, &param0->unk_F7C, 0, 1, 1, 28, 2, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&param0->unk_F7C, 0x0);
    Text_AddPrinterWithParamsAndColor(&param0->unk_F7C, FONT_MESSAGE, param0->unk_BB0, 0, 2, TEXT_SPEED_INSTANT, TEXT_COLOR(15, 4, 0), NULL);

    {
        int v0;

        for (v0 = 0; v0 < 3; v0++) {
            Window_Add(param0->unk_04, &param0->unk_F9C[v0], 1, 9, 6 + v0 * 5, 15, 2, 13, (16 * 6 + 1) + (15 * 2) * v0);
            Window_FillTilemap(&param0->unk_F9C[v0], 0x0);
        }
    }

    Window_Add(param0->unk_04, &param0->unk_F5C, 0, 2, 21, 27, 2, 13, (((1 + (18 + 12)) + 9) + 28 * 2));
    Window_FillTilemap(&param0->unk_F5C, 0xf0f);
    Window_Add(param0->unk_04, &param0->unk_109C, 0, 2, 19, 27, 4, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2));
    Window_FillTilemap(&param0->unk_109C, 0xf0f);
}

static void ov94_0223CAC8(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    Window_Remove(&param0->unk_109C);
    Window_Remove(&param0->unk_F5C);

    for (v0 = 0; v0 < 3; v0++) {
        Window_Remove(&param0->unk_F9C[v0]);
    }

    Window_Remove(&param0->unk_F7C);
}

static void ov94_0223CB0C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_BAC = Strbuf_Init((90 * 2), HEAP_ID_62);
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
    StartScreenTransition(3, 1, 1, 0x0, 6, 1, HEAP_ID_62);
    param0->unk_2C = 3;

    return 3;
}

static int ov94_0223CBC4(UnkStruct_ov94_0223FD4C *param0)
{
    if (IsScreenTransitionDone()) {
        param0->unk_2C = 5;
    }

    return 3;
}

static int ov94_0223CBD8(UnkStruct_ov94_0223FD4C *param0)
{
    if (IsScreenTransitionDone()) {
        param0->unk_2C = 5;
    }

    return 3;
}

static int ov94_0223CBEC(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223CF80(param0, 4, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 10, 6);
    Sprite_SetAnimateFlag(param0->unk_E20, 1);
    ov94_0223C584(param0);

    return 3;
}

static int ov94_0223CC28(UnkStruct_ov94_0223FD4C *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov94_0223CFD8(param0, 7, ov94_0223C4D4(param0), 0, 0xf0f);
        ov94_0223C3F4(param0, 10, 12);
        Sprite_SetAnimateFlag(param0->unk_E20, 0);
    } else if (gSystem.pressedKeys & PAD_BUTTON_A) {
        switch (param0->unk_10C) {
        case 0:
            if (param0->unk_36 == 0) {
                ov94_0223C4C0(param0, 5, 5);
                param0->unk_2C = 9;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            } else {
                if (param0->unk_3A == 0) {
                    ov94_0223C4C0(param0, 7, 11);
                    param0->unk_1C = 2;
                    param0->unk_2C = 9;
                    param0->unk_3A = (60 * 30);
                    Sound_PlayEffect(SEQ_SE_CONFIRM);
                } else {
                    Sprite_SetAnimateFlag(param0->unk_E20, 0);
                    ov94_0223CF80(param0, 34, TEXT_SPEED_FAST, 0, 0xf0f);
                    ov94_0223C3F4(param0, 11, 5);
                    Sound_PlayEffect(SEQ_SE_DP_BOX03);
                    param0->unk_10E0 = 0;
                }
            }
            break;
        case 1:
            ov94_0223C4C0(param0, 4, 0);
            param0->unk_2C = 9;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        case 2:
            ov94_0223CFD8(param0, 7, ov94_0223C4D4(param0), 0, 0xf0f);
            ov94_0223C3F4(param0, 10, 12);
            Sprite_SetAnimateFlag(param0->unk_E20, 0);
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            break;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_10C != 0) {
            param0->unk_10C--;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
            ov94_0223C3FC(param0->unk_E20, Unk_ov94_02245A48[param0->unk_10C][0], Unk_ov94_02245A48[param0->unk_10C][1]);
        }
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_10C < 2) {
            param0->unk_10C++;
            Sound_PlayEffect(SEQ_SE_CONFIRM);
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
        StartScreenTransition(0, 0, 0, 0x0, 6, 1, HEAP_ID_62);
    } else {
        StartScreenTransition(3, 0, 0, 0x0, 6, 1, HEAP_ID_62);
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
    int v0 = Menu_ProcessInputAndHandleExit(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            Window_EraseMessageBox(&param0->unk_109C, 1);
            Window_ClearAndCopyToVRAM(&param0->unk_109C);
            Sprite_SetAnimateFlag(param0->unk_E20, 1);
            param0->unk_2C = 5;
        } else {
            Window_EraseMessageBox(&param0->unk_109C, 1);
            Window_ClearAndCopyToVRAM(&param0->unk_109C);
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
        Window_CopyToVRAM(&param0->unk_F9C[v0]);
    }
}

static void ov94_0223CF80(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->unk_B90, param1, param0->unk_BAC);
    Window_FillTilemap(&param0->unk_F5C, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_F5C, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_F5C, FONT_MESSAGE, param0->unk_BAC, 0, 0, param2, NULL);
}

static void ov94_0223CFD8(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->unk_B90, param1, param0->unk_BAC);
    Window_FillTilemap(&param0->unk_109C, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_109C, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_109C, FONT_MESSAGE, param0->unk_BAC, 0, 0, param2, NULL);
}

void ov94_0223D030(Window *param0, MessageLoader *param1, int param2, u16 param3)
{
    Strbuf *v0 = MessageLoader_GetNewStrbuf(param1, param2);

    Window_FillTilemap(param0, param3);
    Text_AddPrinterWithParams(param0, FONT_MESSAGE, v0, 0, 0, TEXT_SPEED_INSTANT, NULL);
    Strbuf_Free(v0);
}

void ov94_0223D068(UnkStruct_ov94_0223FD4C *param0)
{
    BgConfig *v0 = param0->unk_04;

    Graphics_LoadPalette(104, 5, 4, 0, 16 * 16 * 2, HEAP_ID_62);
    Graphics_LoadTilesToBgLayer(104, 15, v0, 5, 0, 32 * 21 * 0x40, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayer(104, 31, v0, 5, 0, 32 * 24 * 2, 1, HEAP_ID_62);
}
