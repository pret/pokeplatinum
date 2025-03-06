#include "overlay094/ov94_0223E46C.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/species.h"

#include "overlay094/const_ov94_02245FD4.h"
#include "overlay094/ov94_0223B140.h"
#include "overlay094/ov94_0223BCB0.h"
#include "overlay094/ov94_022414B8.h"
#include "overlay094/ov94_02243EF8.h"
#include "overlay094/ov94_02244950.h"
#include "overlay094/struct_ov94_0223BA24.h"
#include "overlay094/struct_ov94_0223BA88_sub3.h"
#include "overlay094/struct_ov94_0223FD4C.h"
#include "overlay094/struct_ov94_0223FD4C_sub3.h"

#include "bg_window.h"
#include "font.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "list_menu.h"
#include "menu.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "render_window.h"
#include "sprite.h"
#include "strbuf.h"
#include "string_list.h"
#include "system.h"
#include "text.h"
#include "unk_02005474.h"
#include "unk_0200F174.h"
#include "unk_0202DA40.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"

static void ov94_0223E598(BgConfig *param0);
static void ov94_0223E684(BgConfig *param0);
static void ov94_0223E6B8(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223E770(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223E7C4(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223E7D4(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223E968(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223E9B8(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223EA20(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223EA5C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223EA84(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223EBCC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223ECD4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223ED94(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223EE40(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223EF94(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223EFAC(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F0A8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F0D0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F154(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F190(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F25C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F2B0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F41C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F474(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F4B0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F5A0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F5F8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F638(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F728(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F780(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F7C0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F8B4(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F8D8(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F920(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F928(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223F950(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223EE9C(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223F9A4(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4);
static int ov94_0223EEE0(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223EF1C(UnkStruct_ov94_0223FD4C *param0);
static int ov94_0223EF58(UnkStruct_ov94_0223FD4C *param0);
static void ov94_0223F9FC(Window *param0, Window *param1, MessageLoader *param2);
static int ov94_0223EC74(UnkStruct_ov94_0223FD4C *param0, int param1);
static int ov94_0223FB0C(const UnkStruct_ov94_0223BA88_sub3 *param0, const UnkStruct_ov94_0223BA88_sub3 *param1, int param2, int param3);
static int ov94_0223F970(UnkStruct_ov94_0223FD4C *param0);

static int (*Unk_ov94_02246860[])(UnkStruct_ov94_0223FD4C *) = {
    ov94_0223EA5C,
    ov94_0223EA84,
    ov94_0223F0A8,
    ov94_0223F0D0,
    ov94_0223F154,
    ov94_0223F190,
    ov94_0223F25C,
    ov94_0223F2B0,
    ov94_0223F41C,
    ov94_0223F474,
    ov94_0223F4B0,
    ov94_0223F5A0,
    ov94_0223F5F8,
    ov94_0223F638,
    ov94_0223F728,
    ov94_0223F780,
    ov94_0223F7C0,
    ov94_0223EBCC,
    ov94_0223ECD4,
    ov94_0223ED94,
    ov94_0223EE40,
    ov94_0223EE9C,
    ov94_0223EEE0,
    ov94_0223F950,
    ov94_0223F970,
    ov94_0223F8B4,
    ov94_0223F8D8,
    ov94_0223F920,
    ov94_0223F928,
    ov94_0223EF1C,
    ov94_0223EF58
};

static u16 Unk_ov94_02246848[][2] = {
    { 0x14, 0x2F },
    { 0x14, 0x47 },
    { 0x14, 0x5F },
    { 0x14, 0x77 },
    { 0xB0, 0x38 },
    { 0xB0, 0x60 }
};

int ov94_0223E46C(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_0223E9B8(param0);
    ov94_0223E598(param0->unk_04);
    ov94_0223E6B8(param0);
    ov94_0223E7D4(param0);
    ov94_0223E770(param0);
    ov94_0223F9FC(&param0->unk_FCC[0], &param0->unk_10AC[0], param0->unk_B90);
    ov94_02242158(&param0->unk_FCC[1], param0->unk_B94, param0->unk_B7A.species, 0, 0, TEXT_COLOR(1, 2, 0));
    ov94_02242204(&param0->unk_FCC[3], param0->unk_B90, param0->unk_B7A.gender, 1, 0, 0, TEXT_COLOR(1, 2, 0));
    ov94_022422B8(&param0->unk_FCC[5], param0->unk_B90, ov94_02242970(param0->unk_B7A.level, param0->unk_B7A.level2, 1), 0, 0, TEXT_COLOR(1, 2, 0), 1);
    ov94_0224218C(&param0->unk_10AC[1], param0->unk_BA0, param0->unk_B90, param0->unk_11B0, 0, 0, TEXT_COLOR(1, 2, 0));

    StartScreenTransition(3, 1, 1, 0x0, 6, 1, HEAP_ID_62);
    param0->unk_2C = 0;

    return 2;
}

int ov94_0223E560(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    int v0 = (*Unk_ov94_02246860[param0->unk_2C])(param0);
    return v0;
}

int ov94_0223E574(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    ov94_0223E7C4(param0);
    ov94_0223EA20(param0);
    ov94_0223E968(param0);
    ov94_0223E684(param0->unk_04);
    ov94_0223C4C8(param0);

    return 1;
}

static void ov94_0223E598(BgConfig *param0)
{
    {
        BgTemplate v0 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x04000,
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
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x0c000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 1, &v1, 0);
        Bg_ClearTilemap(param0, 1);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 2, &v2, 0);
        Bg_ClearTilemap(param0, 2);
    }

    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1800,
            GX_BG_CHARBASE_0x1c000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 3, &v3, 0);
        Bg_ClearTilemap(param0, 3);
    }

    Bg_ClearTilesRange(2, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(0, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(3, 32, 0, HEAP_ID_62);
    Bg_ClearTilesRange(4, 32, 0, HEAP_ID_62);
}

static void ov94_0223E684(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, 5);
    Bg_FreeTilemapBuffer(param0, 4);
    Bg_FreeTilemapBuffer(param0, 2);
    Bg_FreeTilemapBuffer(param0, 1);
    Bg_FreeTilemapBuffer(param0, 0);
    Bg_FreeTilemapBuffer(param0, 3);
}

static void ov94_0223E6B8(UnkStruct_ov94_0223FD4C *param0)
{
    BgConfig *v0 = param0->unk_04;
    NARC *v1 = NARC_ctor(NARC_INDEX_GRAPHIC__WORLDTRADE, HEAP_ID_62);

    Graphics_LoadPaletteFromOpenNARC(v1, 3, 0, 0, 16 * 3 * 2, HEAP_ID_62);
    Graphics_LoadPaletteFromOpenNARC(v1, 5, 4, 0, 16 * 8 * 2, HEAP_ID_62);
    Font_LoadScreenIndicatorsPalette(0, 13 * 0x20, HEAP_ID_62);
    LoadMessageBoxGraphics(v0, 0, 1, 10, Options_Frame(param0->unk_00->unk_24), HEAP_ID_62);
    LoadStandardWindowGraphics(v0, 0, (1 + (18 + 12)), 11, 0, HEAP_ID_62);
    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 13, v0, 1, 0, 16 * 5 * 0x20, 1, HEAP_ID_62);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 26, v0, 1, 0, 32 * 24 * 2, 1, HEAP_ID_62);
    NARC_dtor(v1);
}

static void ov94_0223E770(UnkStruct_ov94_0223FD4C *param0)
{
    AffineSpriteListTemplate v0;

    ov94_0223C300(&v0, param0, &param0->unk_DB4, NNS_G2D_VRAM_TYPE_2DMAIN);

    v0.position.x = FX32_ONE;
    v0.position.y = FX32_ONE;

    param0->unk_E20 = SpriteList_AddAffine(&v0);

    Sprite_SetAnimateFlag(param0->unk_E20, 1);
    Sprite_SetAnim(param0->unk_E20, 0);
    Sprite_SetExplicitPriority(param0->unk_E20, 1);
    sub_02039734();
}

static void ov94_0223E7C4(UnkStruct_ov94_0223FD4C *param0)
{
    Sprite_Delete(param0->unk_E20);
}

static const u16 Unk_ov94_02245D94[6][2] = {
    { 0x3, 0x5 },
    { 0x9, 0x5 },
    { 0x3, 0x8 },
    { 0x9, 0x8 },
    { 0x3, 0xB },
    { 0x9, 0xB }
};

static const u16 Unk_ov94_02245D84[][2] = {
    { 0x16, 0x6 },
    { 0x16, 0xB }
};

static const u16 Unk_ov94_02245D8C[][2] = {
    { 0x3, 0xE },
    { 0x2, 0x10 }
};

static void ov94_0223E7D4(UnkStruct_ov94_0223FD4C *param0)
{
    Window_Add(param0->unk_04, &param0->unk_F7C, 0, 1, 1, 28, 2, 13, ((1 + (18 + 12)) + 9));
    Window_FillTilemap(&param0->unk_F7C, 0x0);

    ov94_022458CC(&param0->unk_F7C, param0->unk_BB0, 0, 1, 0, TEXT_COLOR(15, 13, 0));

    Window_Add(param0->unk_04, &param0->unk_F5C, 0, 2, 21, 27, 2, 13, (((1 + (18 + 12)) + 9) + 28 * 2));
    Window_FillTilemap(&param0->unk_F5C, 0x0);

    {
        int v0, v1;

        for (v0 = 0; v0 < 6; v0++) {
            Window_Add(param0->unk_04, &param0->unk_FCC[v0], 3, Unk_ov94_02245D94[v0][0], Unk_ov94_02245D94[v0][1], 11, 2, 13, 1 + (11 * 2) * v0);
            Window_FillTilemap(&param0->unk_FCC[v0], 0x0);
        }

        for (v0 = 0; v0 < 2; v0++) {
            Window_Add(param0->unk_04, &param0->unk_FCC[6 + v0], 2, Unk_ov94_02245D84[v0][0], Unk_ov94_02245D84[v0][1], 8, 2, 13, ((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + (8 * 2) * v0);
            Window_FillTilemap(&param0->unk_FCC[6 + v0], 0x0);
        }

        for (v0 = 0; v0 < 2; v0++) {
            Window_Add(param0->unk_04, &param0->unk_10AC[v0], 3, Unk_ov94_02245D8C[v0][0], Unk_ov94_02245D8C[v0][1], 28, 2, 13, (1 + 11 * 2 * 6) + (28 * 2) * v0);
            Window_FillTilemap(&param0->unk_10AC[v0], 0x0);
        }
    }
}

static void ov94_0223E968(UnkStruct_ov94_0223FD4C *param0)
{
    Window_Remove(&param0->unk_F5C);
    Window_Remove(&param0->unk_F7C);

    {
        int v0;

        for (v0 = 0; v0 < 8; v0++) {
            Window_Remove(&param0->unk_FCC[v0]);
        }

        for (v0 = 0; v0 < 2; v0++) {
            Window_Remove(&param0->unk_10AC[v0]);
        }
    }
}

static void ov94_0223E9B8(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    param0->unk_BAC = Strbuf_Init((90 * 2), HEAP_ID_62);
    param0->unk_BB0 = MessageLoader_GetNewStrbuf(param0->unk_B90, 41);
    param0->unk_10E4 = Heap_AllocFromHeap(HEAP_ID_62, sizeof(UnkStruct_ov94_0223FD4C_sub3));

    MI_CpuClearFast(param0->unk_10E4, sizeof(UnkStruct_ov94_0223FD4C_sub3));

    param0->unk_10E4->unk_18 = ov94_Pokedex_Alphabetical(62, 0, &param0->unk_10E4->unk_1C);
    param0->unk_10E4->unk_14 = ov94_02242548(62);

    ov94_02242AAC(&param0->unk_111C);
}

static void ov94_0223EA20(UnkStruct_ov94_0223FD4C *param0)
{
    Heap_FreeToHeap(param0->unk_10E4->unk_14);
    Heap_FreeToHeap(param0->unk_10E4->unk_18);
    Heap_FreeToHeap(param0->unk_10E4);
    Strbuf_Free(param0->unk_BAC);
    Strbuf_Free(param0->unk_BB0);
}

static int ov94_0223EA5C(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223F9A4(param0, 8, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 1);

    return 3;
}

static int ov94_0223EA84(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223EFAC(param0);

    if (gSystem.pressedKeys & PAD_BUTTON_A) {
        int v0 = ov94_0223EF94(param0);

        switch (v0) {
        case 0:
            param0->unk_2C = 3;
            Sound_PlayEffect(1500);
            break;
        case 1:
            if (param0->unk_B7A.species != 0) {
                param0->unk_10E4->unk_20 = SpeciesData_GetSpeciesValue(param0->unk_B7A.species, SPECIES_DATA_GENDER_RATIO);

                if (ov94_02241B80(&param0->unk_B7A, param0->unk_10E4->unk_20)) {
                    Sound_PlayEffect(1500);
                    return 3;
                }
            }
            param0->unk_2C = 8;
            Sound_PlayEffect(1500);
            break;
        case 2:
            param0->unk_2C = 11;
            Sound_PlayEffect(1500);
            break;
        case 3:
            param0->unk_2C = 14;
            Sound_PlayEffect(1500);
            break;
        case 4:
            param0->unk_2C = 17;
            break;
        case 5:
            ov94_0223F9A4(param0, 15, TEXT_SPEED_FAST, 0, 0xf0f);
            ov94_0223C3F4(param0, 23, 25);
            Sound_PlayEffect(1500);
            break;
        }
    } else if (gSystem.pressedKeys & PAD_BUTTON_B) {
        ov94_0223F9A4(param0, 15, TEXT_SPEED_FAST, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 25);
        Sound_PlayEffect(1500);
    } else {
        int v1 = ov94_02244214(param0->unk_118);

        if (param0->unk_10F2) {
            if (v1 >= 0) {
                Sprite_SetAnim(param0->unk_F34[v1 + 1], 16 + v1 * 4);
                param0->unk_2C = 2;
                ov94_0223C4C0(param0, 3, 0);
                param0->unk_11C = v1;
                Sound_PlayEffect(1500);
            }
        }
    }

    return 3;
}

static int ov94_0223EBCC(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_B7A.species == SPECIES_NONE) {
        ov94_0223F9A4(param0, 12, TEXT_SPEED_FAST, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 1);
        Sound_PlayEffect(1523);
    } else {
        if (ov94_0223FB0C(&param0->unk_B7A, &param0->unk_B80, param0->unk_11B0, param0->unk_B88)) {
            ov94_0223F9A4(param0, 33, TEXT_SPEED_FAST, 0, 0xf0f);
            ov94_0223C3F4(param0, 23, 1);
            Sound_PlayEffect(1523);
        } else {
            Sound_PlayEffect(1535);

            ov94_0223F9A4(param0, 13, TEXT_SPEED_FAST, 0, 0xf0f);
            ov94_0223C3F4(param0, 23, 18);
            ov94_022442E4(param0);
        }
    }

    return 3;
}

static int ov94_0223EC74(UnkStruct_ov94_0223FD4C *param0, int param1)
{
    u32 v0;
    RTCDate v1, v2;
    RTCTime v3;
    int v4;

    if (param1 == 1) {
        v0 = sub_0202DA9C(param0->unk_00->unk_00);
    } else {
        v0 = sub_0202DA8C(param0->unk_00->unk_00);
    }

    inline_0202D558(v0, &v1);
    DWC_GetDateTime(&v2, &v3);

    v4 = RTC_ConvertDateToDay(&v2) - RTC_ConvertDateToDay(&v1);

    if ((v4 >= 0) && (v4 < 3)) {
        return 1;
    }

    return 0;
}

static int ov94_0223ECD4(UnkStruct_ov94_0223FD4C *param0)
{
    UnkStruct_ov94_0223BA88_sub3 v0;
    int v1 = 3;

    if (ov94_0223EC74(param0, 1)) {
        v1 += 2;
    }

    if (ov94_0223EC74(param0, 0)) {
        v1 += 2;
    }

    if (param0->unk_11B0 == 0) {
        ov94_0223B9B0(&param0->unk_B7A, v1, param0->unk_250);
    } else {
        UnkStruct_ov94_0223BA24 v2;

        MI_CpuClear8(&v2, sizeof(UnkStruct_ov94_0223BA24));

        v2.species = param0->unk_B7A.species;
        v2.gender = param0->unk_B7A.gender;
        v2.level = param0->unk_B7A.level;
        v2.level2 = param0->unk_B7A.level2;
        v2.unk_05 = param0->unk_B7A.unk_05;
        v2.unk_06 = v1;
        v2.unk_07 = param0->unk_11B0;

        ov94_0223BA24(&v2, param0->unk_250);
    }

    param0->unk_B80 = param0->unk_B7A;
    param0->unk_B88 = param0->unk_11B0;
    param0->unk_14E4 = 0;
    param0->unk_2C = 19;
    param0->unk_10F2 = 0;

    return 3;
}

static int ov94_0223ED94(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = ov94_0223B7B8();

    if (v0) {
        s32 v1 = ov94_0223B7D8();

        param0->unk_14E4 = 0;

        switch (v1) {
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
            param0->unk_118 = v1;
            Sound_StopEffect(1535, 0);
            ov94_02244234(param0, v1, 1);
            param0->unk_2C = 20;
            break;
        case -2:
        case -14:
            param0->unk_2C = 29;
            break;
        case -13:
            sub_02038A0C();
            break;
        case -15:
        case -12:
            param0->unk_2C = 22;
            break;
        default:
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

static int ov94_0223EE40(UnkStruct_ov94_0223FD4C *param0)
{
    if (param0->unk_118 == 0) {
        ov94_0223F9A4(param0, 14, TEXT_SPEED_FAST, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 1);
        Sound_PlayEffect(1523);
    } else {
        ov94_0223F9A4(param0, 30, TEXT_SPEED_FAST, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 21);
        param0->unk_10E0 = 0;
    }

    return 3;
}

static int ov94_0223EE9C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10E0++;

    if (param0->unk_10E0 > 45) {
        ov94_0223F9A4(param0, 32, TEXT_SPEED_FAST, 0, 0xf0f);
        ov94_0223C3F4(param0, 23, 1);
        param0->unk_10F2 = 1;
    }

    return 3;
}

static int ov94_0223EEE0(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_B80.species = SPECIES_NONE;

    ov94_0223F9A4(param0, 38, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 1);
    Sound_PlayEffect(1523);

    return 3;
}

static int ov94_0223EF1C(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223F9A4(param0, 147, TEXT_SPEED_NORMAL, 0, 0xf0f);
    ov94_0223C3F4(param0, 24, 30);
    param0->unk_10E0 = 0;
    Sound_PlayEffect(1523);

    return 3;
}

static int ov94_0223EF58(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223F9A4(param0, 152, TEXT_SPEED_NORMAL, 0, 0xf0f);
    ov94_0223C3F4(param0, 24, 2);
    ov94_0223C4C0(param0, 0, 0);
    Sound_PlayEffect(1523);

    return 3;
}

static int ov94_0223EF94(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    if (param0->unk_10E4->unk_24 == 0) {
        v0 = param0->unk_10E4->unk_28;
    } else {
        v0 = param0->unk_10E4->unk_2C + 4;
    }

    return v0;
}

static void ov94_0223EFAC(UnkStruct_ov94_0223FD4C *param0)
{
    int v0;

    if (gSystem.pressedKeys & PAD_KEY_UP) {
        if (param0->unk_10E4->unk_24 == 0) {
            if (param0->unk_10E4->unk_28 > 0) {
                param0->unk_10E4->unk_28--;
                Sound_PlayEffect(1500);
            }
        } else {
            if (param0->unk_10E4->unk_2C != 0) {
                Sound_PlayEffect(1500);
            }

            param0->unk_10E4->unk_2C = 0;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_DOWN) {
        if (param0->unk_10E4->unk_24 == 0) {
            if (param0->unk_10E4->unk_28 < 3) {
                param0->unk_10E4->unk_28++;
                Sound_PlayEffect(1500);
            }
        } else {
            if (param0->unk_10E4->unk_2C != 1) {
                Sound_PlayEffect(1500);
            }

            param0->unk_10E4->unk_2C = 1;
        }
    } else if (gSystem.pressedKeys & PAD_KEY_RIGHT) {
        if (param0->unk_10E4->unk_24 != 1) {
            Sound_PlayEffect(1500);
        }

        param0->unk_10E4->unk_24 = 1;
    } else if (gSystem.pressedKeys & PAD_KEY_LEFT) {
        if (param0->unk_10E4->unk_24 != 0) {
            Sound_PlayEffect(1500);
        }

        param0->unk_10E4->unk_24 = 0;
    }

    {
        VecFx32 v1;

        v1.x = FX32_ONE * Unk_ov94_02246848[ov94_0223EF94(param0)][0];
        v1.y = FX32_ONE * Unk_ov94_02246848[ov94_0223EF94(param0)][1];

        Sprite_SetPosition(param0->unk_E20, &v1);
    }
}

static int ov94_0223F0A8(UnkStruct_ov94_0223FD4C *param0)
{
    StartScreenTransition(3, 0, 0, 0x0, 6, 1, HEAP_ID_62);

    param0->unk_2C = 0;

    return 4;
}

static int ov94_0223F0D0(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223F9A4(param0, 9, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 4);

    Window_Add(param0->unk_04, &param0->unk_F9C[0], 0, 15, 5, 4, 13, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2));
    Window_FillTilemap(&param0->unk_F9C[0], 0x0);

    Window_Add(param0->unk_04, &param0->unk_F9C[1], 0, 21, 5, 10, 13, 13, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2) + 4 * 13));
    Window_FillTilemap(&param0->unk_F9C[1], 0x0);

    return 3;
}

static int ov94_0223F154(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D8 = ov94_022426A8(param0, &param0->unk_10CC, &param0->unk_F9C[0], param0->unk_B90);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 5;

    return 3;
}

static int ov94_0223F190(UnkStruct_ov94_0223FD4C *param0)
{
    switch (ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        ListMenu_Free(param0->unk_10D8, &param0->unk_10E4->unk_06, &param0->unk_10E4->unk_04);
        StringList_Free(param0->unk_10CC);
        Sound_PlayEffect(1500);
        param0->unk_2C = 6;
        break;
    case 0xfffffffe:
        ListMenu_Free(param0->unk_10D8, &param0->unk_10E4->unk_06, &param0->unk_10E4->unk_04);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->unk_F5C, 0);
        Window_Remove(&param0->unk_F9C[0]);
        Window_Remove(&param0->unk_F9C[1]);
        Sound_PlayEffect(1500);
        param0->unk_2C = 0;
        break;
    }

    return 3;
}

static int ov94_0223F25C(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D8 = ov94_022427C0(param0, &param0->unk_10CC, &param0->unk_F9C[1], param0->unk_B90, param0->unk_B94, param0->unk_10E4, param0->unk_00->unk_10);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 7;

    return 3;
}

static int ov94_0223F2B0(UnkStruct_ov94_0223FD4C *param0)
{
    u32 v0;

    switch (v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
        ListMenu_Free(param0->unk_10D8, &param0->unk_10E4->unk_0A, &param0->unk_10E4->unk_08);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[1], 0);
        Sound_PlayEffect(1500);
        param0->unk_2C = 4;
        ov94_02242AC4(&param0->unk_111C, param0->unk_10E4->unk_06 + param0->unk_10E4->unk_04, param0->unk_10E4->unk_0A, param0->unk_10E4->unk_08);
        break;
    default:
        ListMenu_Free(param0->unk_10D8, &param0->unk_10E4->unk_0A, &param0->unk_10E4->unk_08);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseStandardFrame(&param0->unk_F9C[1], 0);
        Window_Remove(&param0->unk_F9C[0]);
        Window_Remove(&param0->unk_F9C[1]);

        param0->unk_B7A.species = v0;
        param0->unk_2C = 0;

        Sound_PlayEffect(1500);
        Window_FillTilemap(&param0->unk_FCC[1], 0x0);

        ov94_02242158(&param0->unk_FCC[1], param0->unk_B94, v0, 0, 0, TEXT_COLOR(1, 2, 0));
        param0->unk_10E4->unk_20 = SpeciesData_GetSpeciesValue(v0, SPECIES_DATA_GENDER_RATIO);
        ov94_02242AC4(&param0->unk_111C, param0->unk_10E4->unk_06 + param0->unk_10E4->unk_04, param0->unk_10E4->unk_0A, param0->unk_10E4->unk_08);

        if (ov94_02241B80(&param0->unk_B7A, param0->unk_10E4->unk_20)) {
            Window_FillTilemap(&param0->unk_FCC[3], 0x0);
            ov94_02242204(&param0->unk_FCC[3], param0->unk_B90, param0->unk_B7A.gender, 1, 0, 0, TEXT_COLOR(1, 2, 0));
        }
        break;
    }

    return 3;
}

static int ov94_0223F41C(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223F9A4(param0, 10, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 9);

    Window_Add(param0->unk_04, &param0->unk_F9C[0], 0, 21, 10, 10, 8, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2));
    Window_FillTilemap(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_0223F474(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D8 = ov94_02242840(&param0->unk_10CC, &param0->unk_F9C[0], param0->unk_B90);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 10;

    return 3;
}

static int ov94_0223F4B0(UnkStruct_ov94_0223FD4C *param0)
{
    u32 v0;

    switch (v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 0xfffffffe:
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->unk_F5C, 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(1500);
        param0->unk_2C = 0;
        break;
    case 0:
    case 1:
    case 2:
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(1500);

        param0->unk_B7A.gender = v0 + 1;
        param0->unk_2C = 0;

        Window_FillTilemap(&param0->unk_FCC[3], 0x0);
        ov94_02242204(&param0->unk_FCC[3], param0->unk_B90, param0->unk_B7A.gender, 1, 0, 0, TEXT_COLOR(1, 2, 0));
        break;
    }

    return 3;
}

static int ov94_0223F5A0(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223F9A4(param0, 11, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 12);

    Window_Add(param0->unk_04, &param0->unk_F9C[0], 0, 15, 5, 16, 13, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2));
    Window_FillTilemap(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_0223F5F8(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D8 = ov94_022428B0(&param0->unk_10CC, &param0->unk_F9C[0], param0->unk_B90, 1);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 13;

    return 3;
}

static int ov94_0223F638(UnkStruct_ov94_0223FD4C *param0)
{
    u32 v0;

    switch (v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108)) {
    case 0xffffffff:
        break;
    case 0xfffffffe:
    case 11:
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->unk_F5C, 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(1500);
        param0->unk_2C = 0;
        break;
    default:
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(1500);
        ov94_02242934(&param0->unk_B7A, v0, 1);

        param0->unk_2C = 0;

        Window_FillTilemap(&param0->unk_FCC[5], 0x0);
        ov94_022422B8(&param0->unk_FCC[5], param0->unk_B90, v0, 0, 0, TEXT_COLOR(1, 2, 0), 1);
        break;
    }

    return 3;
}

static int ov94_0223F728(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223F9A4(param0, 169, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 15);

    Window_Add(param0->unk_04, &param0->unk_F9C[0], 0, 2, 5, 28, 13, 13, (((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2));
    Window_FillTilemap(&param0->unk_F9C[0], 0x0);

    return 3;
}

static int ov94_0223F780(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D8 = ov94_022429B4(&param0->unk_10CC, &param0->unk_F9C[0], param0->unk_BA0, param0->unk_B90);
    param0->unk_108 = 0xffff;
    param0->unk_2C = 16;

    return 3;
}

static int ov94_0223F7C0(UnkStruct_ov94_0223FD4C *param0)
{
    u32 v0 = ov94_02242A6C(param0->unk_10D8, &param0->unk_108);

    if (v0 == 0xffffffff) {
        (void)0;
    } else if ((v0 == 0xfffffffe) || (v0 == (Unk_ov94_02245FD4 + 1))) {
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_EraseMessageBox(&param0->unk_F5C, 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(1500);
        param0->unk_2C = 0;
    } else {
        ListMenu_Free(param0->unk_10D8, NULL, NULL);
        StringList_Free(param0->unk_10CC);
        Window_EraseStandardFrame(&param0->unk_F9C[0], 0);
        Window_Remove(&param0->unk_F9C[0]);
        Sound_PlayEffect(1500);

        ov94_02242A44(param0, v0);
        param0->unk_2C = 0;
        Window_FillTilemap(&param0->unk_10AC[1], 0x0);
        ov94_0224218C(&param0->unk_10AC[1], param0->unk_BA0, param0->unk_B90, param0->unk_11B0, 0, 0, TEXT_COLOR(1, 2, 0));
    }

    return 3;
}

static int ov94_0223F8B4(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_10D0 = ov94_0223C3C0(param0->unk_04, 15, ((((((1 + (18 + 12)) + 9) + 28 * 2) + 27 * 2) + 8 * 2 * 2) + 16 * 13));
    param0->unk_2C = 26;

    return 3;
}

static int ov94_0223F8D8(UnkStruct_ov94_0223FD4C *param0)
{
    int v0 = Menu_ProcessInputAndHandleExit(param0->unk_10D0, 62);

    if (v0 != 0xffffffff) {
        if (v0 == 0xfffffffe) {
            param0->unk_2C = 0;
        } else {
            param0->unk_2C = 2;
            ov94_0223C4C0(param0, 1, 0);
            ov94_022442E4(param0);
            param0->unk_118 = 0;
        }
    }

    return 3;
}

static int ov94_0223F920(UnkStruct_ov94_0223FD4C *param0)
{
    param0->unk_2C = 1;
    return 3;
}

static int ov94_0223F928(UnkStruct_ov94_0223FD4C *param0)
{
    ov94_0223F9A4(param0, 146, TEXT_SPEED_FAST, 0, 0xf0f);
    ov94_0223C3F4(param0, 23, 1);

    return 3;
}

static int ov94_0223F950(UnkStruct_ov94_0223FD4C *param0)
{
    if (Text_IsPrinterActive(param0->unk_BE0) == 0) {
        param0->unk_2C = param0->unk_30;
    }

    return 3;
}

static int ov94_0223F970(UnkStruct_ov94_0223FD4C *param0)
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

static void ov94_0223F9A4(UnkStruct_ov94_0223FD4C *param0, int param1, int param2, int param3, u16 param4)
{
    Strbuf *v0;

    MessageLoader_GetStrbuf(param0->unk_B90, param1, param0->unk_BAC);
    Window_FillTilemap(&param0->unk_F5C, 0xf0f);
    Window_DrawMessageBoxWithScrollCursor(&param0->unk_F5C, 0, 1, 10);

    param0->unk_BE0 = Text_AddPrinterWithParams(&param0->unk_F5C, FONT_MESSAGE, param0->unk_BAC, 0, 0, param2, NULL);
}

static void ov94_0223F9FC(Window *param0, Window *param1, MessageLoader *param2)
{
    Strbuf *v0, *v1, *v2;

    v0 = MessageLoader_GetNewStrbuf(param2, 59);
    ov94_02245900(&param0[0], v0, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Strbuf_Free(v0);

    v2 = MessageLoader_GetNewStrbuf(param2, 61);
    ov94_02245900(&param0[2], v2, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Strbuf_Free(v2);

    v1 = MessageLoader_GetNewStrbuf(param2, 63);
    ov94_02245900(&param0[4], v1, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Strbuf_Free(v1);

    v1 = MessageLoader_GetNewStrbuf(param2, 165);
    ov94_02245900(&param1[0], v1, 0, 0, 0, TEXT_COLOR(15, 2, 0));
    Strbuf_Free(v1);

    v0 = MessageLoader_GetNewStrbuf(param2, 65);

    {
        int v3 = Font_CalcCenterAlignment(FONT_SYSTEM, v0, 0, param0[6].width * 8);
        ov94_02245900(&param0[6], v0, v3, 0, 0, TEXT_COLOR(1, 2, 0));
    }

    Strbuf_Free(v0);

    v0 = MessageLoader_GetNewStrbuf(param2, 66);

    {
        int v4 = Font_CalcCenterAlignment(FONT_SYSTEM, v0, 0, param0[7].width * 8);
        ov94_02245900(&param0[7], v0, v4, 0, 0, TEXT_COLOR(1, 2, 0));
    }

    Strbuf_Free(v0);
}

static int ov94_0223FB0C(const UnkStruct_ov94_0223BA88_sub3 *param0, const UnkStruct_ov94_0223BA88_sub3 *param1, int param2, int param3)
{
    return (param0->species == param1->species)
        && (param0->gender == param1->gender)
        && (param0->level == param1->level)
        && (param0->level2 == param1->level2)
        && (param2 == param3);
}
