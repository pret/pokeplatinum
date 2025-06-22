#include "overlay094/ov94_0223DC04.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223D0C4.h"
#include "overlay094/ov94_022414B8.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_02244950.h"
#include "overlay094/struct_ov94_0223BA88.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay094/struct_ov94_0223FD4C.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "pokemon.h"
#include "render_window.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_template.h"
#include "system.h"
#include "text.h"
#include "unk_020393C8.h"

static void ov94_0223DD1C(BgConfig *param0);
static void ov94_0223DDE0(BgConfig *param0);
static void ov94_0223DE04(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223DED8(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223DFA4(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223DFDC(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223E074(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223DE7C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223DEC8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223E09C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223E0A4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223E188(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223E2E0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223E1B0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223E1D0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223E2D0(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223E240(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223E358(MessageLoader *param0, Window param1[]);
static void ov94_0223E300(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4);
static void ov94_0223E3B0(Window *param0, MessageLoader *param1, MessageLoader *param2, UnkStruct_ov94_0223BA88_sub3 *param3);
static void ov94_0223E424(Window *param0, Strbuf *param1, Strbuf *param2);

static int (*Unk_ov94_0224682C[])(UnkStruct_ov94_0223FD4C *wk) = {
    ov94_0223E09C,
    ov94_0223E0A4,
    ov94_0223E188,
    ov94_0223E2E0,
    ov94_0223E1B0,
    ov94_0223E1D0,
    ov94_0223E2D0
};

int ov94_0223DC04(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    Pokemon *v0;

    ov94_0223DFDC(param0);
    ov94_0223DD1C(param0->unk_04);
    ov94_0223DE04(param0);
    ov94_0223DED8(param0);
    ov94_0223DE7C(param0);
    ov94_0223D910(param0->unk_B90, param0->unk_B94, param0->unk_B8C, &param0->unk_FCC[0], Pokemon_GetBoxPokemon((Pokemon *)param0->unk_250[param0->unk_11C].unk_00.unk_00), &param0->unk_250[param0->unk_11C].unk_EC);

    v0 = (Pokemon *)param0->unk_250[param0->unk_11C].unk_00.unk_00;

    ov94_0223DA78(param0->unk_B90, &param0->unk_FCC[5], param0->unk_250[param0->unk_11C].unk_10C, v0, &param0->unk_FCC[10]);
    ov94_0223DB2C((Pokemon *)param0->unk_250[param0->unk_11C].unk_00.unk_00);
    ov94_0223E358(param0->unk_B90, &param0->unk_FCC[7]);
    ov94_0223E240(param0);

    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    param0->unk_2C = 0;
    return 2;
}

int ov94_0223DCE4(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0 = (*Unk_ov94_0224682C[param0->unk_2C])(param0);
    return v0;
}

int ov94_0223DCF8(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_0223DEC8(param0);
    ov94_0223E074(param0);
    ov94_0223DFA4(param0);
    ov94_0223DDE0(param0->unk_04);
    ov94_0223C4C8(param0);

    return 1;
}

static void ov94_0223DD1C(BgConfig *param0)
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
        Bg_ClearTilemap(param0, BG_LAYER_SUB_0);
    }

    {
        BgTemplate v3 = {
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

        Bg_InitFromTemplate(param0, BG_LAYER_SUB_1, &v3, 0);
    }

    Bg_ClearTilesRange(BG_LAYER_MAIN_0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
}

static void ov94_0223DDE0(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_SUB_0);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(param0, BG_LAYER_MAIN_0);
}

static void ov94_0223DE04(UnkStruct_ov94_0223FD4C *param0)
{
    BgConfig *v0 = param0->unk_04;

    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, BG_LAYER_MAIN_0, 1, 10, Options_Frame(param0->unk_00->options), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, BG_LAYER_MAIN_0, (1 + (18 + 12)), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 17, v0, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadPalette(NARC_INDEX_GRAPHIC__WORLDTRADE, 7, 0, 0, 16 * 3 * 2, HEAP_ID_62);
}

static void ov94_0223DE7C(UnkStruct_ov94_0223FD4C *param0)
{
    AffineSpriteListTemplate v0;

    ov94_0223C300(&v0, param0, &param0->unk_DB4, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE * 208;
    v0.position.y = FX32_ONE * 58;

    param0->unk_F30 = SpriteList_AddAffine(&v0);

    Sprite_SetAnimateFlag(param0->unk_F30, 1);
    Sprite_SetAnim(param0->unk_F30, 37);
    sub_02039734();
}

static void ov94_0223DEC8(UnkStruct_ov94_0223FD4C *param0)
{
    Sprite_Delete(param0->unk_F30);
}

static const int Unk_ov94_02245CC4[][4] = {
    { 0x1, 0x2, 0xA, 0x2 },
    { 0xC, 0x2, 0x8, 0x2 },
    { 0xE, 0x4, 0x7, 0x2 },
    { 0x1, 0x7, 0x6, 0x2 },
    { 0x7, 0x7, 0xB, 0x2 },
    { 0x2, 0xA, 0x9, 0x2 },
    { 0xC, 0xA, 0x8, 0x2 },
    { 0x3, 0xD, 0x9, 0x2 },
    { 0x10, 0xD, 0xD, 0x2 },
    { 0x2, 0xF, 0x1C, 0x5 },
    { 0x1, 0x5, 0x5, 0x2 },
    { 0x7, 0x5, 0x7, 0x2 }
};

static void ov94_0223DED8(UnkStruct_ov94_0223FD4C *param0)
{
    Window_Add(param0->unk_04, &param0->unk_F5C, 0, 2, 21, 27, 2, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&param0->unk_F5C, 0x0);
    Window_Add(param0->unk_04, &param0->unk_F9C[0], 0, 21, 15, (5 * 2), 4, 13, (((1 + (18 + 12)) + 9) + 27 * 2));

    {
        int v0, v1;

        v1 = ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4);

        for (v0 = 0; v0 < NELEMS(Unk_ov94_02245CC4); v0++) {
            Window_Add(param0->unk_04, &param0->unk_FCC[v0], 0, Unk_ov94_02245CC4[v0][0], Unk_ov94_02245CC4[v0][1], Unk_ov94_02245CC4[v0][2], Unk_ov94_02245CC4[v0][3], 13, v1);
            Window_FillTilemap(&param0->unk_FCC[v0], 0x0);

            v1 += Unk_ov94_02245CC4[v0][2] * Unk_ov94_02245CC4[v0][3];
        }
    }
}

static void ov94_0223DFA4(UnkStruct_ov94_0223FD4C *param0)
{
    Window_Remove(&param0->unk_F5C);
    Window_Remove(&param0->unk_F9C[0]);

    {
        int v0;

        for (v0 = 0; v0 < NELEMS(Unk_ov94_02245CC4); v0++) {
            Window_Remove(&param0->unk_FCC[v0]);
        }
    }
}

static void ov94_0223DFDC(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;
    MessageLoader *v1;
    UnkStruct_ov94_0223BA88 *v2 = &param0->unk_250[param0->unk_11C];

    param0->unk_BAC = Strbuf_Init((90 * 2), HEAP_ID_62);

    StringTemplate_ClearArgs(param0->unk_B8C);

    if (v2->unk_11E != 0) {
        StringTemplate_SetCountryName(param0->unk_B8C, 8, v2->unk_11E);
    }

    if (v2->unk_11F != 0) {
        StringTemplate_SetCityName(param0->unk_B8C, 9, v2->unk_11E, v2->unk_11F);
    }

    param0->unk_BB4[0] = MessageUtil_ExpandedStrbuf(param0->unk_B8C, param0->unk_B90, 79, HEAP_ID_62);
    param0->unk_BB4[1] = MessageUtil_ExpandedStrbuf(param0->unk_B8C, param0->unk_B90, 80, HEAP_ID_62);
}

static void ov94_0223E074(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    Strbuf_Free(param0->unk_BB4[0]);
    Strbuf_Free(param0->unk_BB4[1]);
    Strbuf_Free(param0->unk_BAC);
}

static int ov94_0223E09C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_2C = 1;
    return 3;
}

static int ov94_0223E0A4(UnkStruct_ov94_0223FD4C *param0)
{
    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        ov94_0223E300(param0, 16, TEXT_SPEED_FAST, 0, 0xf0f);
        ov94_0223C3F4(param0, 3, 4);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        param0->unk_2C = 2;
        ov94_0223C4C0(param0, 4, 0);
        Sound_PlayEffect(SEQ_SE_CONFIRM);
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->unk_10E == 0) {
            param0->unk_10E = 1;
            param0->unk_2C = 6;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->unk_10E != 0) {
            param0->unk_10E = 0;
            param0->unk_2C = 6;

            Sound_PlayEffect(SEQ_SE_CONFIRM);
        }
    } else {
        int v0 = ov94_02244214(param0->unk_118);

        if (1) {
            if ((v0 != param0->unk_11C) && (v0 >= 0)) {
                Sprite_SetAnim(param0->unk_F34[v0 + 1], 16 + v0 * 4);
                param0->unk_2C = 2;
                ov94_0223C4C0(param0, 3, 0);
                param0->unk_11C = v0;
                Sound_PlayEffect(SEQ_SE_CONFIRM);
            }
        }
    }

    return 3;
}

static int ov94_0223E188(UnkStruct_ov94_0223FD4C *param0)
{
    StartScreenFade(FADE_MAIN_ONLY, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_62);

    param0->unk_2C = 0;
    return 4;
}

static int ov94_0223E1B0(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 15, ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4 + 262 + 64 + 36));
    param0->unk_2C = 5;

    return 3;
}

static int ov94_0223E1D0(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_2C = 2;
            ov94_0223C4C0(param0, 4, 0);
            ov94_0223E358(param0->unk_B90, &param0->unk_FCC[7]);
            ov94_0223E240(param0);
        } else {
            param0->unk_2C = 2;
            ov94_0223C4C0(param0, 5, 6);
            ov94_0223E358(param0->unk_B90, &param0->unk_FCC[7]);
            ov94_0223E240(param0);
        }
    }

    return 3;
}

static void ov94_0223E240(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_10E == 0) {
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 27, param0->unk_04, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
        ov94_0223E3B0(&param0->unk_FCC[9], param0->unk_B90, param0->unk_B94, &param0->unk_250[param0->unk_11C].unk_F0);
    } else {
        Graphics_LoadTilemapToBgLayer(NARC_INDEX_GRAPHIC__WORLDTRADE, 28, param0->unk_04, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
        ov94_0223E424(&param0->unk_FCC[9], param0->unk_BB4[0], param0->unk_BB4[1]);
    }
}

static int ov94_0223E2D0(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223E240(param0);
    param0->unk_2C = 1;

    return 3;
}

static int ov94_0223E2E0(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static void ov94_0223E300(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->unk_B90, param1, param0->unk_BAC);
    Window_FillTilemap(&param0->unk_F5C, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_F5C, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_F5C, FONT_MESSAGE, param0->unk_BAC, 0, 0, param2, NULL);
}

static void ov94_0223E358(MessageLoader *param0, Window param1[])
{
    Strbuf *v0, *v1;

    v0 = MessageLoader_GetNewStrbuf(param0, 74);
    v1 = MessageLoader_GetNewStrbuf(param0, 78);

    ov94_02245900(&param1[0], v0, 0, 2, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param1[1], v1, 0, 2, 1, TEXT_COLOR(15, 2, 0));

    Strbuf_Free(v0);
    Strbuf_Free(v1);
}

static void ov94_0223E3B0(Window *param0, MessageLoader *param1, MessageLoader *param2, UnkStruct_ov94_0223BA88_sub3 *param3)
{
    Window_FillTilemap(param0, 0x0);

    ov94_02242158(param0, param2, param3->species, 0, 3, TEXT_COLOR(15, 2, 0));
    ov94_02242204(param0, param1, param3->gender, 0, 3, 70, TEXT_COLOR(15, 2, 0));
    ov94_0224226C(param0 + 1, param1, ov94_02242970(param3->level, param3->level2, 0), 0, 19, TEXT_COLOR(15, 2, 0), 0, 8);
}

static void ov94_0223E424(Window *param0, Strbuf *param1, Strbuf *param2)
{
    Window_FillTilemap(param0, 0x0);

    if (param1 != NULL) {
        ov94_02245900(param0, param1, 0, 3, 0, TEXT_COLOR(15, 2, 0));
    }

    if (param2 != NULL) {
        ov94_02245900(param0, param2, 8, 19, 0, TEXT_COLOR(15, 2, 0));
    }
}
