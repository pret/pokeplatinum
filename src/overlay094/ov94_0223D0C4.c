#include "overlay094/ov94_0223D0C4.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "struct_defs/archived_sprite.h"

#include "overlay094/const_ov94_02245FD8.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_0223FB48.h"
#include "overlay094/ov94_022414B8.h"
#include "overlay094/ov94_02244950.h"
#include "overlay094/struct_ov94_0223BA88_sub2.h"
#include "overlay094/struct_ov94_0223FD4C.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "core_sys.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "item.h"
#include "menu.h"
#include "message.h"
#include "message_util.h"
#include "narc.h"
#include "party.h"
#include "pokemon.h"
#include "strbuf.h"
#include "string_list.h"
#include "string_template.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200DA60.h"
#include "unk_0200F174.h"
#include "unk_020131EC.h"
#include "unk_020393C8.h"

static void ov94_0223D1D4(BgConfig *param0);
static void ov94_0223D2BC(BgConfig *param0);
static void ov94_0223D2E8(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223D438(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223D504(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223D53C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223D57C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223D3DC(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223D428(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223DBBC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223D5B0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223D5B8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223D618(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223D838(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223D858(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223D640(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223D664(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223D6B8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223D754(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223D88C(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4, Pokemon *param5);

static int (*Unk_ov94_02246808[])(UnkStruct_ov94_0223FD4C *) = {
    ov94_0223D5B0,
    ov94_0223D5B8,
    ov94_0223D618,
    ov94_0223D838,
    ov94_0223D858,
    ov94_0223D640,
    ov94_0223D664,
    ov94_0223D6B8,
    ov94_0223D754
};

int ov94_0223D0C4(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    Pokemon *v0;

    ov94_0223D53C(param0);
    ov94_0223D1D4(param0->unk_04);
    ov94_0223D2E8(param0);
    ov94_0223D438(param0);
    ov94_0223D3DC(param0);
    ov94_0223D910(param0->unk_B90, param0->unk_B94, param0->unk_B8C, &param0->unk_FCC[0], Pokemon_GetBoxPokemon((Pokemon *)param0->unk_12C.unk_00.unk_00), &param0->unk_12C.unk_EC);

    v0 = (Pokemon *)param0->unk_12C.unk_00.unk_00;

    ov94_0223DA78(param0->unk_B90, &param0->unk_FCC[5], param0->unk_12C.unk_10C, v0, &param0->unk_FCC[10]);
    ov94_02242368(param0->unk_B90, param0->unk_B94, param0->unk_B8C, &param0->unk_FCC[7], param0->unk_12C.unk_F0.unk_00, param0->unk_12C.unk_F0.unk_02, ov94_02242970(param0->unk_12C.unk_F0.unk_03, param0->unk_12C.unk_F0.unk_04, 0));
    ov94_0223DB2C((Pokemon *)param0->unk_12C.unk_00.unk_00);

    sub_0200F174(3, 1, 1, 0x0, 6, 1, 62);

    param0->unk_2C = 0;

    return 2;
}

int ov94_0223D19C(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0;

    v0 = (*Unk_ov94_02246808[param0->unk_2C])(param0);
    return v0;
}

int ov94_0223D1B0(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_0223D428(param0);
    ov94_0223D57C(param0);
    ov94_0223D504(param0);
    ov94_0223D2BC(param0->unk_04);
    ov94_0223C4C8(param0);

    return 1;
}

static void ov94_0223D1D4(BgConfig *param0)
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

        Bg_InitFromTemplate(param0, 0, &v0, 0);
        Bg_ClearTilemap(param0, 0);
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

        Bg_InitFromTemplate(param0, 1, &v1, 0);
    }

    {
        BgTemplate v2 = {
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

        Bg_InitFromTemplate(param0, 2, &v2, 0);
    }

    {
        BgTemplate v3 = {
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

        Bg_InitFromTemplate(param0, 4, &v3, 0);
        Bg_ClearTilemap(param0, 4);
    }

    {
        BgTemplate v4 = {
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

        Bg_InitFromTemplate(param0, 5, &v4, 0);
    }

    Bg_ClearTilesRange(0, 32, 0, 62);
    Bg_ClearTilesRange(4, 32, 0, 62);
}

static void ov94_0223D2BC(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, 5);
    Bg_FreeTilemapBuffer(param0, 4);
    Bg_FreeTilemapBuffer(param0, 2);
    Bg_FreeTilemapBuffer(param0, 1);
    Bg_FreeTilemapBuffer(param0, 0);
}

static void ov94_0223D2E8(UnkStruct_ov94_0223FD4C *param0)
{
    BgConfig *v0 = param0->unk_04;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, 62);

    Graphics_LoadPaletteFromOpenNARC(v1, 7, 0, 0, 16 * 3 * 2, 62);
    Graphics_LoadPaletteFromOpenNARC(v1, 5, 4, 0, 16 * 8 * 2, 62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, 62);
    sub_0200DD0C(v0, 0, 1, 10, Options_Frame(param0->unk_00->unk_24), 62);
    sub_0200DAA4(v0, 0, (1 + (18 + 12)), 11, 0, 62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 17, v0, 1, 0, 16 * 5 * 0x20, 1, 62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 25, v0, 1, 0, 32 * 24 * 2, 1, 62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 15, v0, 5, 0, 32 * 21 * 0x40, 1, 62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 31, v0, 5, 0, 32 * 24 * 2, 1, 62);
    NARC_dtor(v1);
}

static void ov94_0223D3DC(UnkStruct_ov94_0223FD4C *param0)
{
    CellActorInitParamsEx v0;

    ov94_0223C300(&v0, param0, &param0->unk_DB4, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE * 208;
    v0.position.y = FX32_ONE * 58;

    param0->unk_F30 = CellActorCollection_AddEx(&v0);

    CellActor_SetAnimateFlag(param0->unk_F30, 1);
    CellActor_SetAnim(param0->unk_F30, 37);
    sub_02039734();
}

static void ov94_0223D428(UnkStruct_ov94_0223FD4C *param0)
{
    CellActor_Delete(param0->unk_F30);
}

static const int Unk_ov94_02245B94[][4] = {
    { 0x1, 0x2, 0xA, 0x2 },
    { 0xC, 0x2, 0x8, 0x2 },
    { 0xE, 0x4, 0x7, 0x2 },
    { 0x1, 0x7, 0x6, 0x2 },
    { 0x7, 0x7, 0xB, 0x2 },
    { 0x2, 0xA, 0x9, 0x2 },
    { 0xC, 0xA, 0x8, 0x2 },
    { 0x2, 0xF, 0xC, 0x2 },
    { 0x4, 0x11, 0xA, 0x2 },
    { 0x10, 0x11, 0xC, 0x2 },
    { 0x1, 0x5, 0x5, 0x2 },
    { 0x7, 0x5, 0x7, 0x2 }
};

static void ov94_0223D438(UnkStruct_ov94_0223FD4C *param0)
{
    Window_Add(param0->unk_04, &param0->unk_F5C, 0, 2, 21, 27, 2, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&param0->unk_F5C, 0x0);
    Window_Add(param0->unk_04, &param0->unk_F9C[0], 0, 21, 15, (5 * 2), 4, 13, (((1 + (18 + 12)) + 9) + 27 * 2));

    {
        int v0, v1;

        v1 = ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4);

        for (v0 = 0; v0 < 10 + 2; v0++) {
            Window_Add(param0->unk_04, &param0->unk_FCC[v0], 0, Unk_ov94_02245B94[v0][0], Unk_ov94_02245B94[v0][1], Unk_ov94_02245B94[v0][2], Unk_ov94_02245B94[v0][3], 13, v1);
            Window_FillTilemap(&param0->unk_FCC[v0], 0x0);

            v1 += Unk_ov94_02245B94[v0][2] * Unk_ov94_02245B94[v0][3];
        }
    }
}

static void ov94_0223D504(UnkStruct_ov94_0223FD4C *param0)
{
    Window_Remove(&param0->unk_F5C);
    Window_Remove(&param0->unk_F9C[0]);

    {
        int v0;

        for (v0 = 0; v0 < 10 + 2; v0++) {
            Window_Remove(&param0->unk_FCC[v0]);
        }
    }
}

static void ov94_0223D53C(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    param0->unk_BAC = Strbuf_Init((90 * 2), 62);
    param0->unk_BB0 = MessageLoader_GetNewStrbuf(param0->unk_B90, 39);

    for (v0 = 0; v0 < 10; v0++) {
        param0->unk_BB4[v0] = Strbuf_Init((10 * 2), 62);
    }
}

static void ov94_0223D57C(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    for (v0 = 0; v0 < 10; v0++) {
        Strbuf_Free(param0->unk_BB4[v0]);
    }

    Strbuf_Free(param0->unk_BAC);
    Strbuf_Free(param0->unk_BB0);
}

static int ov94_0223D5B0(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_2C = 1;
    return 3;
}

static int ov94_0223D5B8(UnkStruct_ov94_0223FD4C *param0)
{
    if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
        ov94_0223D88C(param0, 5, TEXT_SPEED_FAST, 0, 0xf0f, (Pokemon *)param0->unk_12C.unk_00.unk_00);
        ov94_0223C3F4(param0, 3, 7);
        Sound_PlayEffect(1500);
    } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
        param0->unk_2C = 2;
        ov94_0223C4C0(param0, 1, 0);
        Sound_PlayEffect(1500);
    }

    return 3;
}

static int ov94_0223D618(UnkStruct_ov94_0223FD4C *param0)
{
    sub_0200F174(3, 0, 0, 0x0, 6, 1, 62);

    param0->unk_2C = 0;
    return 4;
}

static int ov94_0223D640(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 15, ((((1 + (18 + 12)) + 9) + 27 * 2) + (5 * 2) * 4 + 200 + 12));
    param0->unk_2C = 6;

    return 3;
}

static int ov94_0223D664(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_2C = 0;
            sub_0200E084(&param0->unk_F5C, 0);
        } else {
            param0->unk_2C = 2;
            param0->unk_1110 = 1;
            ov94_0223C4C0(param0, 7, 8);
        }

        ov94_0223DBBC(param0);
    }

    return 3;
}

static int ov94_0223D6B8(UnkStruct_ov94_0223FD4C *param0)
{
    MenuTemplate v0;

    v0.fontID = FONT_SYSTEM;
    v0.xSize = 1;
    v0.ySize = 2;
    v0.lineSpacing = 0;
    v0.suppressCursor = FALSE;
    v0.loopAround = FALSE;

    param0->unk_10CC = StringList_New(2, 62);

    StringList_AddFromMessageBank(param0->unk_10CC, param0->unk_B90, 54, 1);
    StringList_AddFromMessageBank(param0->unk_10CC, param0->unk_B90, 55, 2);

    v0.choices = param0->unk_10CC;
    v0.window = &param0->unk_F9C[0];

    Window_Show(&param0->unk_F9C[0], 0, (1 + (18 + 12)), 11);

    param0->unk_10D4 = Menu_NewAndCopyToVRAM(&v0, 9, 0, 0, 62, PAD_BUTTON_B);
    param0->unk_2C = 8;

    return 3;
}

static int ov94_0223D754(UnkStruct_ov94_0223FD4C *param0)
{
    switch (Menu_ProcessInput(param0->unk_10D4)) {
    case 1:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);

        {
            Pokemon *v0 = (Pokemon *)param0->unk_12C.unk_00.unk_00;

            if (ov94_02241498(v0)) {
                if (Party_GetCurrentCount(param0->unk_00->unk_08) == 6) {
                    ov94_0223D88C(param0, 36, TEXT_SPEED_FAST, 0, 0xf0f, v0);
                    ov94_0223C3F4(param0, 3, 1);
                    return 3;
                }
            }

            ov94_0223D88C(param0, 6, TEXT_SPEED_FAST, 0, 0xf0f, v0);
            ov94_0223C3F4(param0, 3, 5);
        }

        ov94_0223DBBC(param0);
        break;
    case 2:
    case 0xfffffffe:
        Menu_Free(param0->unk_10D4, NULL);
        StringList_Free(param0->unk_10CC);
        Window_Clear(&param0->unk_F9C[0], 0);

        param0->unk_2C = 2;

        ov94_0223C4C0(param0, 1, 0);
        ov94_0223DBBC(param0);
        break;
    }

    return 3;
}

static int ov94_0223D838(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static int ov94_0223D858(UnkStruct_ov94_0223FD4C *param0)
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

static void ov94_0223D88C(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4, Pokemon *param5)
{
    Strbuf *v0;

    StringTemplate_SetSpeciesName(param0->unk_B8C, 0, Pokemon_GetBoxPokemon(param5));
    v0 = MessageLoader_GetNewStrbuf(param0->unk_B90, param1);
    StringTemplate_Format(param0->unk_B8C, param0->unk_BAC, v0);
    Window_FillTilemap(&param0->unk_F5C, 0xf0f);
    sub_0200E060(&param0->unk_F5C, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_F5C, FONT_MESSAGE, param0->unk_BAC, 0, 0, param2, NULL);

    Strbuf_Free(v0);
}

static TextColor Unk_ov94_022467FC[] = {
    TEXT_COLOR(0, 0, 0),
    TEXT_COLOR(5, 6, 0),
    TEXT_COLOR(3, 4, 0)
};

void ov94_0223D910(MessageLoader *param0, MessageLoader *param1, StringTemplate *param2, Window param3[], BoxPokemon *param4, UnkStruct_ov94_0223BA88_sub2 *param5)
{
    Strbuf *v0, *v1, *v2, *v3;
    Strbuf *v4 = Strbuf_Init((10 + 1) * 2, 62);
    Strbuf *v5 = Strbuf_Init((8 + 1) * 2, 62);
    int v6, v7, v8, v9, v10;

    BoxPokemon_GetValue(param4, MON_DATA_NICKNAME_STRBUF, v4);

    v10 = param5->unk_00;
    v6 = param5->unk_02;
    v7 = param5->unk_03;
    v8 = BoxPokemon_GetValue(param4, MON_DATA_HELD_ITEM, NULL);
    v3 = MessageLoader_GetNewStrbuf(param0, 70);
    v1 = MessageLoader_GetNewStrbuf(param0, Unk_ov94_02245FD8[v6]);

    StringTemplate_SetNumber(param2, 3, v7, 3, 0, 1);

    v2 = MessageUtil_ExpandedStrbuf(param2, param0, 102, 62);
    v0 = MessageLoader_GetNewStrbuf(param1, v10);

    Item_LoadName(v5, v8, 62);

    for (v9 = 0; v9 < 5; v9++) {
        Window_FillTilemap(&param3[v9], 0x0);
    }

    ov94_02245900(&param3[0], v4, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    if (v6 != 3) {
        ov94_02245900(&param3[0], v1, 70, 0, 0, Unk_ov94_022467FC[v6]);
    }

    ov94_02245900(&param3[1], v0, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param3[2], v2, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param3[3], v3, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param3[4], v5, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    Strbuf_Free(v3);
    Strbuf_Free(v5);
    Strbuf_Free(v2);
    Strbuf_Free(v1);
    Strbuf_Free(v4);
    Strbuf_Free(v0);
}

void ov94_0223DA78(MessageLoader *param0, Window param1[], u16 *param2, Pokemon *param3, Window param4[])
{
    Strbuf *v0, *v1;
    Strbuf *v2, *v3;

    v0 = Strbuf_Init((7 + 1) * 2, 62);
    v3 = Strbuf_Init((7 + 1) * 2, 62);

    v1 = MessageLoader_GetNewStrbuf(param0, 48);
    Strbuf_CopyChars(v0, param2);

    v2 = MessageLoader_GetNewStrbuf(param0, 172);
    Pokemon_GetValue(param3, MON_DATA_OTNAME_STRBUF, v3);

    ov94_02245900(&param1[0], v1, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param1[1], v0, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param4[0], v2, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    ov94_02245900(&param4[1], v3, 0, 0, 0, TEXT_COLOR(15, 2, 0));

    Strbuf_Free(v1);
    Strbuf_Free(v0);
    Strbuf_Free(v2);
    Strbuf_Free(v3);
}

void ov94_0223DB2C(Pokemon *param0)
{
    ArchivedSprite v0;
    u8 *v1 = Heap_AllocFromHeap(62, (0x20 * 10 * 10));

    Pokemon_BuildArchivedSprite(&v0, param0, 2);

    {
        int v2 = Pokemon_GetValue(param0, MON_DATA_PERSONALITY, NULL);
        int v3 = Pokemon_GetValue(param0, MON_DATA_SPECIES, NULL);

        sub_020136A4(v0.archive, v0.character, 62, 0, 0, 10, 10, v1, v2, 0, 2, v3);
    }

    DC_FlushRange(v1, (0x20 * 10 * 10));
    GX_LoadOBJ(v1, ((18 * 32 + 16) * 32), (0x20 * 10 * 10));

    Graphics_LoadPalette(v0.archive, v0.palette, 1, 0x20 * 13, 32, 62);
    Heap_FreeToHeap(v1);
}

static void ov94_0223DBBC(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_02242368(param0->unk_B90, param0->unk_B94, param0->unk_B8C, &param0->unk_FCC[7], param0->unk_12C.unk_F0.unk_00, param0->unk_12C.unk_F0.unk_02, ov94_02242970(param0->unk_12C.unk_F0.unk_03, param0->unk_12C.unk_F0.unk_04, 0));
}
