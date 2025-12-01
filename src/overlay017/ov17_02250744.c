#include "overlay017/ov17_02250744.h"

#include <nitro.h>
#include <string.h>

#include "constants/narc.h"

#include "struct_defs/struct_02095C48.h"

#include "overlay017/ov17_0223F118.h"
#include "overlay017/struct_ov17_0224FCA0.h"
#include "overlay017/struct_ov17_022507C4.h"
#include "overlay017/struct_ov17_022508E4.h"
#include "overlay017/struct_ov17_02254C0C.h"

#include "assert.h"
#include "bg_window.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_icon.h"
#include "pokemon_sprite.h"
#include "render_window.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_020933F8.h"
#include "unk_02094EDC.h"

typedef struct {
    UnkStruct_ov17_0224FCA0 *unk_00;
    u8 *unk_04;
    s32 unk_08;
    s32 unk_0C;
    u8 unk_10;
} UnkStruct_ov17_02251598;

typedef struct {
    PokemonSprite *unk_00;
    u8 *unk_04;
    s32 unk_08;
    s32 unk_0C;
    u8 unk_10;
} UnkStruct_ov17_02251718;

typedef struct {
    UnkStruct_ov17_0224FCA0 *unk_00;
    s16 unk_04;
} UnkStruct_ov17_02250FE4;

typedef struct {
    UnkStruct_ov17_0224FCA0 *unk_00;
    ManagedSprite *unk_04;
    s32 unk_08;
    s32 unk_0C;
    s16 unk_10;
    s16 unk_12;
    s32 unk_14;
    s32 unk_18;
    s32 unk_1C;
} UnkStruct_ov17_02251070;

static void ov17_022507F0(UnkStruct_ov17_0224FCA0 *param0, int param1, const UnkStruct_ov17_022508E4 *param2);
static void ov17_022508E4(UnkStruct_ov17_0224FCA0 *param0, MessageLoader *param1, u32 param2, int param3, const UnkStruct_ov17_022508E4 *param4);
void ov17_02250744(UnkStruct_ov17_0224FCA0 *param0);
void ov17_022507C4(UnkStruct_ov17_022507C4 *param0);
void ov17_02250968(UnkStruct_ov17_0224FCA0 *param0, u32 param1, const UnkStruct_ov17_022508E4 *param2);
int ov17_0225099C(UnkStruct_ov17_0224FCA0 *param0);
void ov17_02250DB0(UnkStruct_ov17_0224FCA0 *param0);
void ov17_02250EFC(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_02250F4C(SysTask *param0, void *param1);
void ov17_02250F68(UnkStruct_ov17_0224FCA0 *param0, NARC *param1);
void ov17_02250FBC(UnkStruct_ov17_0224FCA0 *param0);
void ov17_0225122C(UnkStruct_ov17_0224FCA0 *param0, NARC *param1);
void ov17_022512E0(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_022515F4(SysTask *param0, void *param1);
static void ov17_02251688(SysTask *param0, void *param1);
static void ov17_02251784(SysTask *param0, void *param1);
static void ov17_022517F0(SysTask *param0, void *param1);
static void ov17_0225102C(SysTask *param0, void *param1);
static void ov17_02251070(UnkStruct_ov17_0224FCA0 *param0);
static void ov17_02251140(SysTask *param0, void *param1);

__attribute__((aligned(4))) static const s16 Unk_ov17_02254BF4[4][3] = {
    { 0x2C, 0x46, 0xFFFFFFFFFFFFFE00 },
    { 0x64, 0x46, 0xFFFFFFFFFFFFFD80 },
    { 0x9C, 0x46, 0xFFFFFFFFFFFFFD80 },
    { 0xD4, 0x46, 0xFFFFFFFFFFFFFD80 }
};

static const struct {
    s16 unk_00;
    s16 unk_02;
} Unk_ov17_02254BD4[] = {
    { 0x1C, 0x14 },
    { 0x1C, 0x34 },
    { 0x1C, 0x54 },
    { 0x1C, 0x74 }
};

static const struct {
    s16 unk_00;
    s16 unk_02;
} Unk_ov17_02254BE4[] = {
    { 0xE8, 0xD },
    { 0xE8, 0x2D },
    { 0xE8, 0x4D },
    { 0xE8, 0x6D }
};

static const UnkStruct_ov17_02254C0C Unk_ov17_02254C0C[] = {
    { 0x0, 0x0 },
    { 0x0, 0x0 },
    { 0x1, 0x0 },
    { 0x2, 0x0 },
    { 0x3, 0x0 },
    { 0x4, 0x3 },
    { 0x5, 0x0 }
};

static const SpriteTemplate Unk_ov17_02254C5C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80EA, 0x80EB, 0x80EA, 0x80EA, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_02254C28 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x14,
    0x2,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80EF, 0x80E9, 0x80EC, 0x80EC, 0xFFFFFFFF, 0xFFFFFFFF },
    0x1,
    0x0
};

static const SpriteTemplate Unk_ov17_02254C90 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x64,
    0x3,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80EE, 0x80E9, 0x80EB, 0x80EB, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_02254CC4 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x6E,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F0, 0x80EC, 0x80ED, 0x80ED, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

void ov17_02250744(UnkStruct_ov17_0224FCA0 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        v1 = param0->unk_39A.unk_30[v0];

        GF_ASSERT(param0->unk_10.pokemonSpriteDataArray[v1].tiles == NULL);

        param0->unk_10.pokemonSpriteDataArray[v1].tiles = Heap_Alloc(HEAP_ID_24, (32 * 10 * 10));
        param0->unk_10.unk_08[v1] = sub_02095484(param0->unk_10.unk_04, v0, param0->unk_10.unk_00->unk_00[v1], 2, &param0->unk_10.pokemonSpriteDataArray[v1], HEAP_ID_24, Unk_ov17_02254BF4[v0][0], Unk_ov17_02254BF4[v0][1], Unk_ov17_02254BF4[v0][2]);
    }
}

void ov17_022507C4(UnkStruct_ov17_022507C4 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        PokemonSprite_Delete(param0->unk_08[v0]);
        Heap_Free(param0->pokemonSpriteDataArray[v0].tiles);
        param0->pokemonSpriteDataArray[v0].tiles = NULL;
    }
}

static void ov17_022507F0(UnkStruct_ov17_0224FCA0 *param0, int param1, const UnkStruct_ov17_022508E4 *param2)
{
    u32 v0;

    if (param1 != 0) {
        GF_ASSERT(param2 != NULL);
    }

    switch (param1) {
    case 0:
        break;
    case 1:
        v0 = sub_02095848(param0->unk_00->unk_00.unk_110, param0->unk_00->unk_00.unk_111, param0->unk_00->unk_155);
        StringTemplate_SetContestRankName(param0->unk_10.unk_B8, 0, v0);
        break;
    case 2:
        StringTemplate_SetStrbuf(param0->unk_10.unk_B8, 0, param0->unk_00->unk_00.unk_D8[param2->unk_00], param0->unk_00->unk_00.unk_F8[param2->unk_00], 1, GAME_LANGUAGE);
        StringTemplate_SetNickname(param0->unk_10.unk_B8, 1, Pokemon_GetBoxPokemon(param0->unk_10.unk_00->unk_00[param2->unk_00]));
        break;
    case 3:
        StringTemplate_SetNumber(param0->unk_10.unk_B8, 0, param2->unk_04, 1, 0, 1);
        StringTemplate_SetStrbuf(param0->unk_10.unk_B8, 1, param0->unk_00->unk_00.unk_D8[param2->unk_00], param0->unk_00->unk_00.unk_F8[param2->unk_00], 1, GAME_LANGUAGE);
        StringTemplate_SetNickname(param0->unk_10.unk_B8, 2, Pokemon_GetBoxPokemon(param0->unk_10.unk_00->unk_00[param2->unk_00]));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void ov17_022508E4(UnkStruct_ov17_0224FCA0 *param0, MessageLoader *param1, u32 param2, int param3, const UnkStruct_ov17_022508E4 *param4)
{
    Strbuf *v0;
    int v1;

    if (param0->unk_00->unk_155 == 0) {
        v1 = Options_TextFrameDelay(param0->unk_00->options);
    } else {
        v1 = TEXT_SPEED_FAST;
    }

    v0 = MessageLoader_GetNewStrbuf(param1, param2);
    ov17_022507F0(param0, param3, param4);

    StringTemplate_Format(param0->unk_10.unk_B8, param0->unk_10.unk_BC, v0);
    Window_FillTilemap(&param0->unk_10.unk_24[0], 0xff);

    param0->unk_10.unk_388 = Text_AddPrinterWithParams(&param0->unk_10.unk_24[0], FONT_MESSAGE, param0->unk_10.unk_BC, 0, 0, v1, NULL);

    Strbuf_Free(v0);
}

void ov17_02250968(UnkStruct_ov17_0224FCA0 *param0, u32 param1, const UnkStruct_ov17_022508E4 *param2)
{
    u32 v0, v1;

    GF_ASSERT(param1 < NELEMS(Unk_ov17_02254C0C));

    v0 = Unk_ov17_02254C0C[param1].unk_00;
    v1 = Unk_ov17_02254C0C[param1].unk_02;

    ov17_022508E4(param0, param0->unk_10.unk_B4, v0, v1, param2);
}

int ov17_0225099C(UnkStruct_ov17_0224FCA0 *param0)
{
    return Text_IsPrinterActive(param0->unk_10.unk_388);
}

void ov17_022509AC(UnkStruct_ov17_0224FCA0 *param0)
{
    int v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, HEAP_ID_24);

    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 23, param0->unk_10.unk_20, 3, 0, 0, 1, HEAP_ID_24);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 22, param0->unk_10.unk_20, 3, 0, 0, 1, HEAP_ID_24);
    Bg_ClearTilemap(param0->unk_10.unk_20, 1);
    PaletteData_LoadBufferFromFileStart(param0->unk_10.unk_C0, 45, 35, 24, 0, 0, 0);
    PaletteData_LoadBufferFromFileStart(param0->unk_10.unk_C0, 45, 36, 24, 0, 0x20, 13 * 16);

    v0 = Options_Frame(param0->unk_00->options);

    LoadMessageBoxGraphics(param0->unk_10.unk_20, 1, 1, 15, v0, HEAP_ID_24);
    PaletteData_LoadBufferFromFileStart(param0->unk_10.unk_C0, 38, GetMessageBoxPaletteNARCMember(v0), 24, 0, 0x20, 14 * 16);
    Bg_ClearTilemap(param0->unk_10.unk_20, 2);
    NARC_dtor(v1);
}

void ov17_02250A84(UnkStruct_ov17_0224FCA0 *param0)
{
    return;
}

void ov17_02250A88(UnkStruct_ov17_0224FCA0 *param0)
{
    ov17_0223F560(param0->unk_10.unk_18, param0->unk_10.unk_1C, param0->unk_10.unk_C0, 33001, 33002, 33001, 33001);
    ov17_0223F630(&param0->unk_10.unk_108, param0->unk_10.unk_18, param0->unk_10.unk_1C, 33001, 33002, 33001, 33001, 0, 200, 3, 50000);
}

void ov17_02250AD8(UnkStruct_ov17_0224FCA0 *param0)
{
    ov17_0223F6C4(&param0->unk_10.unk_108);
    ov17_0223F5E8(param0->unk_10.unk_1C, 33001, 33002, 33001, 33001);
}

void ov17_02250B00(UnkStruct_ov17_0224FCA0 *param0)
{
    int v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, HEAP_ID_24);

    Graphics_LoadTilesToBgLayerFromOpenNARC(v1, 27, param0->unk_10.unk_20, 3, 0, 0, 1, HEAP_ID_24);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 25, param0->unk_10.unk_20, 3, 0, 0, 1, HEAP_ID_24);
    Graphics_LoadTilemapToBgLayerFromOpenNARC(v1, 26, param0->unk_10.unk_20, 2, 0, 0, 1, HEAP_ID_24);
    Bg_ClearTilemap(param0->unk_10.unk_20, 1);
    PaletteData_LoadBufferFromFileStart(param0->unk_10.unk_C0, 45, 39, 24, 0, 0, 0);
    PaletteData_LoadBufferFromFileStart(param0->unk_10.unk_C0, 45, 36, 24, 0, 0x20, 13 * 16);

    v0 = Options_Frame(param0->unk_00->options);

    LoadMessageBoxGraphics(param0->unk_10.unk_20, 1, 1, 15, v0, HEAP_ID_24);
    PaletteData_LoadBufferFromFileStart(param0->unk_10.unk_C0, 38, GetMessageBoxPaletteNARCMember(v0), 24, 0, 0x20, 14 * 16);

    {
        Strbuf *v2;
        int v3, v4;

        v2 = Strbuf_Init(12, HEAP_ID_24);

        for (v3 = 0; v3 < 4; v3++) {
            v4 = param0->unk_39A.unk_30[v3];
            Pokemon_GetValue(param0->unk_10.unk_00->unk_00[v4], MON_DATA_NICKNAME_STRING, v2);
            Window_FillTilemap(&param0->unk_10.unk_24[1 + v3], 0x0);
            Window_FillTilemap(&param0->unk_10.unk_24[5 + v3], 0x0);
            Text_AddPrinterWithParamsAndColor(&param0->unk_10.unk_24[1 + v3], FONT_SYSTEM, v2, 0, 3, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
            Text_AddPrinterWithParamsAndColor(&param0->unk_10.unk_24[5 + v3], FONT_SYSTEM, param0->unk_00->unk_00.unk_D8[v4], 0, 3, TEXT_SPEED_INSTANT, TEXT_COLOR(1, 2, 0), NULL);
        }

        Strbuf_Free(v2);
    }

    GX_SetVisibleWnd(GX_WNDMASK_W0 | GX_WNDMASK_W1);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWnd1InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
    G2_SetWndOutsidePlane((GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ) ^ (GX_WND_PLANEMASK_BG2), 1);
    G2_SetWnd0Position(0, 0, 255, 0);
    G2_SetWnd1Position(0, 0, 255, 0);

    NARC_dtor(v1);
}

void ov17_02250CEC(UnkStruct_ov17_0224FCA0 *param0)
{
    PaletteData_FillBufferRange(param0->unk_10.unk_C0, 1, 2, 0x0, 0, 16 * 16);
    PaletteData_FillBufferRange(param0->unk_10.unk_C0, 3, 2, 0x0, 0, 16 * 16);
}

void ov17_02250D24(UnkStruct_ov17_0224FCA0 *param0)
{
    return;
}

void ov17_02250D28(UnkStruct_ov17_0224FCA0 *param0)
{
    NARC *v0 = NARC_ctor(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_OBJ, HEAP_ID_24);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_10.unk_C0, 2, param0->unk_10.unk_18, param0->unk_10.unk_1C, v0, 10, 0, 4, NNS_G2D_VRAM_TYPE_2DMAIN, 33001);

    ov17_02250F68(param0, v0);
    ov17_02250DB0(param0);
    ov17_0225122C(param0, v0);
    ov17_02251344(param0, v0);

    NARC_dtor(v0);
}

void ov17_02250D8C(UnkStruct_ov17_0224FCA0 *param0)
{
    ov17_02250EFC(param0);
    ov17_022512E0(param0);
    ov17_02251544(param0);
    ov17_02250FBC(param0);
    ov17_022513C0(param0);
}

void ov17_02250DB0(UnkStruct_ov17_0224FCA0 *param0)
{
    SpriteTemplate v0;
    int v1, v2;
    NARC *v3 = NARC_ctor(NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, HEAP_ID_24);

    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_10.unk_C0, PLTTBUF_MAIN_OBJ, param0->unk_10.unk_18, param0->unk_10.unk_1C, v3, PokeIconPalettesFileIndex(), FALSE, 3, NNS_G2D_VRAM_TYPE_2DMAIN, 33003);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, v3, PokeIcon64KCellsFileIndex(), FALSE, 33002);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, v3, PokeIcon64KAnimationFileIndex(), FALSE, 33002);

    v0 = Unk_ov17_02254C5C;

    for (v2 = 0; v2 < 4; v2++) {
        SpriteSystem_LoadCharResObjAtEndWithHardwareMappingType(param0->unk_10.unk_18, param0->unk_10.unk_1C, NARC_INDEX_POKETOOL__ICONGRA__PL_POKE_ICON, Pokemon_IconSpriteIndex(param0->unk_00->unk_00.unk_00[v2]), FALSE, NNS_G2D_VRAM_TYPE_2DMAIN, 33002 + v2);

        v0.resources[0] = 33002 + v2;
        param0->unk_10.unk_128[v2] = SpriteSystem_NewSprite(param0->unk_10.unk_18, param0->unk_10.unk_1C, &v0);

        ManagedSprite_SetAnim(param0->unk_10.unk_128[v2], 1);
        Sprite_SetExplicitPaletteOffsetAutoAdjust(param0->unk_10.unk_128[v2]->sprite, Pokemon_IconPaletteIndex(param0->unk_00->unk_00.unk_00[v2]));
        ManagedSprite_TickFrame(param0->unk_10.unk_128[v2]);
    }

    for (v2 = 0; v2 < 4; v2++) {
        v1 = param0->unk_39A.unk_30[v2];
        ManagedSprite_SetPositionXY(param0->unk_10.unk_128[v1], Unk_ov17_02254BD4[v2].unk_00, Unk_ov17_02254BD4[v2].unk_02);
    }

    param0->unk_10.unk_124 = SysTask_Start(ov17_02250F4C, param0, (50000 + 1000));

    NARC_dtor(v3);
}

void ov17_02250EFC(UnkStruct_ov17_0224FCA0 *param0)
{
    int v0;

    SpriteManager_UnloadCellObjById(param0->unk_10.unk_1C, 33002);
    SpriteManager_UnloadAnimObjById(param0->unk_10.unk_1C, 33002);
    SpriteManager_UnloadPlttObjById(param0->unk_10.unk_1C, 33003);

    for (v0 = 0; v0 < 4; v0++) {
        SpriteManager_UnloadCharObjById(param0->unk_10.unk_1C, 33002 + v0);
        Sprite_DeleteAndFreeResources(param0->unk_10.unk_128[v0]);
    }

    SysTask_Done(param0->unk_10.unk_124);
}

static void ov17_02250F4C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224FCA0 *v0 = param1;
    int v1;

    for (v1 = 0; v1 < 4; v1++) {
        ManagedSprite_TickFrame(v0->unk_10.unk_128[v1]);
    }
}

void ov17_02250F68(UnkStruct_ov17_0224FCA0 *param0, NARC *param1)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 102, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33007);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 101, TRUE, 33004);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 100, TRUE, 33004);
}

void ov17_02250FBC(UnkStruct_ov17_0224FCA0 *param0)
{
    SpriteManager_UnloadCharObjById(param0->unk_10.unk_1C, 33007);
    SpriteManager_UnloadCellObjById(param0->unk_10.unk_1C, 33004);
    SpriteManager_UnloadAnimObjById(param0->unk_10.unk_1C, 33004);
}

void ov17_02250FE4(UnkStruct_ov17_0224FCA0 *param0)
{
    UnkStruct_ov17_02250FE4 *v0;
    int v1;

    v0 = Heap_Alloc(HEAP_ID_24, sizeof(UnkStruct_ov17_02250FE4));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_02250FE4));

    v0->unk_00 = param0;

    for (v1 = 0; v1 < 8; v1++) {
        ov17_02251070(param0);
    }

    SysTask_Start(ov17_0225102C, v0, (50000 + 10));
}

void ov17_02251020(UnkStruct_ov17_0224FCA0 *param0)
{
    param0->unk_1279 = 1;
}

static void ov17_0225102C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02250FE4 *v0 = param1;

    if (v0->unk_00->unk_1279 == 1) {
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }

    if (v0->unk_00->unk_127A < 48) {
        v0->unk_04++;

        if (v0->unk_04 > 4) {
            v0->unk_04 = 0;
            ov17_02251070(v0->unk_00);
        }
    }
}

static void ov17_02251070(UnkStruct_ov17_0224FCA0 *param0)
{
    ManagedSprite *v0;
    UnkStruct_ov17_02251070 *v1;
    s32 v2, v3;

    v1 = Heap_Alloc(HEAP_ID_24, sizeof(UnkStruct_ov17_02251070));
    MI_CpuClear8(v1, sizeof(UnkStruct_ov17_02251070));

    v1->unk_00 = param0;
    v1->unk_04 = SpriteSystem_NewSprite(param0->unk_10.unk_18, param0->unk_10.unk_1C, &Unk_ov17_02254C28);

    v2 = (sub_02094E98(param0->unk_00) & 0xff) + 20;
    v3 = -16 + (sub_02094E98(param0->unk_00) % (96 - 32 - 16));

    v1->unk_08 = v2 * 0x100;
    v1->unk_0C = v3 * 0x100;

    ManagedSprite_SetPositionXY(v1->unk_04, v2, v3);

    v1->unk_14 = (sub_02094E98(param0->unk_00) % 0x200) + 0x60;
    v1->unk_18 = (sub_02094E98(param0->unk_00) % 0x300) + 0x100;
    v1->unk_12 = (sub_02094E98(param0->unk_00) % 24) + 16;

    ManagedSprite_SetAnim(v1->unk_04, sub_02094E98(param0->unk_00) % 0x9);
    ManagedSprite_TickFrame(v1->unk_04);
    SysTask_Start(ov17_02251140, v1, ((50000 + 10) + 1));

    param0->unk_127A++;
}

static void ov17_02251140(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02251070 *v0 = param1;

    if ((v0->unk_00->unk_1279 == 1) || ((v0->unk_0C / 0x100) > (192 + 16)) || (((v0->unk_08 + v0->unk_10) / 0x100) < -16)) {
        v0->unk_00->unk_127A--;
        Sprite_DeleteAndFreeResources(v0->unk_04);
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }

    v0->unk_1C += v0->unk_18;

    if (v0->unk_1C >= (360 << 8)) {
        v0->unk_1C -= 360 << 8;
    }

    v0->unk_10 = FX_Mul(CalcSineDegrees(v0->unk_1C / 0x100), v0->unk_12 << FX32_SHIFT) / FX32_ONE;
    v0->unk_08 -= v0->unk_14;
    v0->unk_0C += 0x280;

    ManagedSprite_SetPositionXY(v0->unk_04, (v0->unk_08 / 0x100) + v0->unk_10, v0->unk_0C / 0x100);
    ManagedSprite_TickFrame(v0->unk_04);
}

void ov17_0225122C(UnkStruct_ov17_0224FCA0 *param0, NARC *param1)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 84, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33006);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 83, TRUE, 33003);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 82, TRUE, 33003);

    {
        int v0, v1;

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_10.unk_138[v0] = SpriteSystem_NewSprite(param0->unk_10.unk_18, param0->unk_10.unk_1C, &Unk_ov17_02254C90);
            ManagedSprite_TickFrame(param0->unk_10.unk_138[v0]);
            ManagedSprite_SetDrawFlag(param0->unk_10.unk_138[v0], 0);
        }

        for (v0 = 0; v0 < 4; v0++) {
            v1 = param0->unk_39A.unk_30[v0];
            ManagedSprite_SetPositionXY(param0->unk_10.unk_138[v1], Unk_ov17_02254BE4[v0].unk_00, Unk_ov17_02254BE4[v0].unk_02);
        }
    }
}

void ov17_022512E0(UnkStruct_ov17_0224FCA0 *param0)
{
    SpriteManager_UnloadCharObjById(param0->unk_10.unk_1C, 33006);
    SpriteManager_UnloadCellObjById(param0->unk_10.unk_1C, 33003);
    SpriteManager_UnloadAnimObjById(param0->unk_10.unk_1C, 33003);

    {
        int v0;

        for (v0 = 0; v0 < 4; v0++) {
            Sprite_DeleteAndFreeResources(param0->unk_10.unk_138[v0]);
        }
    }
}

void ov17_0225131C(UnkStruct_ov17_0224FCA0 *param0, int param1, int param2)
{
    ManagedSprite_SetAnim(param0->unk_10.unk_138[param1], param2);
    ManagedSprite_SetDrawFlag(param0->unk_10.unk_138[param1], 1);
    Sound_PlayEffect(SEQ_SE_DP_DECIDE);
}

void ov17_02251344(UnkStruct_ov17_0224FCA0 *param0, NARC *param1)
{
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0->unk_10.unk_C0, PLTTBUF_MAIN_OBJ, param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 11, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33004);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 87, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33008);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 86, TRUE, 33005);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_10.unk_18, param0->unk_10.unk_1C, param1, 85, TRUE, 33005);
}

void ov17_022513C0(UnkStruct_ov17_0224FCA0 *param0)
{
    SpriteManager_UnloadPlttObjById(param0->unk_10.unk_1C, 33004);
    SpriteManager_UnloadCharObjById(param0->unk_10.unk_1C, 33008);
    SpriteManager_UnloadCellObjById(param0->unk_10.unk_1C, 33005);
    SpriteManager_UnloadAnimObjById(param0->unk_10.unk_1C, 33005);
}

void ov17_022513F4(UnkStruct_ov17_0224FCA0 *param0, int param1, int param2, int param3, int param4)
{
    int v0;
    ManagedSprite **v1;
    int v2;
    int v3, v4, v5, v6, v7, v8;

    switch (param2) {
    case 0:
        v0 = 0;
        v2 = 1;
        v1 = param0->unk_10.unk_148[param1];
        break;
    case 1:
        v0 = param0->unk_39A.unk_82[param1];
        v2 = 17;
        v1 = param0->unk_10.unk_208[param1];
        break;
    case 2:
        v0 = param0->unk_39A.unk_82[param1] + param0->unk_39A.unk_8A[param1];
        v2 = 33;
        v1 = param0->unk_10.unk_2C8[param1];
        break;
    default:
        GF_ASSERT(0);
        return;
    }

    v3 = 48 + v0;
    v4 = 32 + 32 * param4;
    v5 = param3 / 16;

    if (param3 % 16 != 0) {
        v5++;
    }

    GF_ASSERT(v5 <= ((24 * 8) / 16));

    for (v6 = 0; v6 < v5; v6++) {
        if (v1[v6] == NULL) {
            v1[v6] = SpriteSystem_NewSprite(param0->unk_10.unk_18, param0->unk_10.unk_1C, &Unk_ov17_02254CC4);
        }
    }

    v7 = 0;

    for (v8 = param3; v8 >= 16; v8 -= 16) {
        ManagedSprite_SetAnim(v1[v7], v2 + 16 - 1);
        v7++;
    }

    if ((v8 > 0) && (v7 < v5)) {
        ManagedSprite_SetAnim(v1[v7], v2 + v8 - 1);
    }

    for (v6 = 0; v6 < v5; v6++) {
        ManagedSprite_SetPositionXY(v1[v6], v3 + v6 * 16, v4);
        ManagedSprite_TickFrame(v1[v6]);
    }
}

void ov17_02251544(UnkStruct_ov17_0224FCA0 *param0)
{
    int v0, v1;

    for (v1 = 0; v1 < 4; v1++) {
        for (v0 = 0; v0 < ((24 * 8) / 16); v0++) {
            if (param0->unk_10.unk_148[v1][v0] != NULL) {
                Sprite_DeleteAndFreeResources(param0->unk_10.unk_148[v1][v0]);
            }

            if (param0->unk_10.unk_208[v1][v0] != NULL) {
                Sprite_DeleteAndFreeResources(param0->unk_10.unk_208[v1][v0]);
            }

            if (param0->unk_10.unk_2C8[v1][v0] != NULL) {
                Sprite_DeleteAndFreeResources(param0->unk_10.unk_2C8[v1][v0]);
            }
        }
    }
}

void ov17_02251598(UnkStruct_ov17_0224FCA0 *param0, int param1, u8 *param2)
{
    UnkStruct_ov17_02251598 *v0;

    *param2 = 0;
    v0 = Heap_Alloc(HEAP_ID_24, sizeof(UnkStruct_ov17_02251598));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_02251598));

    v0->unk_00 = param0;
    v0->unk_04 = param2;

    if (param1 == 0) {
        v0->unk_08 = (192 / 2) << 8;
        v0->unk_0C = (192 / 2) << 8;
        SysTask_Start(ov17_022515F4, v0, ((30000 + 10000) + 1000));
    } else {
        v0->unk_08 = ((192 / 2) - (12 * 8) / 2) << 8;
        v0->unk_0C = ((192 / 2) + (12 * 8) / 2) << 8;
        SysTask_Start(ov17_02251688, v0, ((30000 + 10000) + 1000));
    }
}

static void ov17_022515F4(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02251598 *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        v0->unk_08 -= 0x400;
        v0->unk_0C += 0x400;

        if (v0->unk_08 <= ((192 / 2) << 8) - (((12 * 8) / 2) << 8)) {
            v0->unk_08 = (192 / 2 - (12 * 8) / 2) << 8;
            v0->unk_0C = (192 / 2 + (12 * 8) / 2) << 8;
            v0->unk_10++;
        }

        v0->unk_00->unk_851 = 0;
        v0->unk_00->unk_852 = v0->unk_08 >> 8;
        v0->unk_00->unk_853 = 255;
        v0->unk_00->unk_854 = v0->unk_0C >> 8;
        v0->unk_00->unk_855 = 1;
        v0->unk_00->unk_856 = v0->unk_08 >> 8;
        v0->unk_00->unk_857 = 0;
        v0->unk_00->unk_858 = v0->unk_0C >> 8;
        break;
    default:
        *(v0->unk_04) = 1;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

static void ov17_02251688(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02251598 *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        v0->unk_08 += 0x400;
        v0->unk_0C -= 0x400;

        if (v0->unk_08 >= ((192 / 2) << 8)) {
            v0->unk_08 = (192 / 2) << 8;
            v0->unk_0C = (192 / 2) << 8;
            v0->unk_10++;
        }

        v0->unk_00->unk_851 = 0;
        v0->unk_00->unk_852 = v0->unk_08 >> 8;
        v0->unk_00->unk_853 = 255;
        v0->unk_00->unk_854 = v0->unk_0C >> 8;
        v0->unk_00->unk_855 = 1;
        v0->unk_00->unk_856 = v0->unk_08 >> 8;
        v0->unk_00->unk_857 = 0;
        v0->unk_00->unk_858 = v0->unk_0C >> 8;
        break;
    default:
        *(v0->unk_04) = 1;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

void ov17_02251718(UnkStruct_ov17_0224FCA0 *param0, int param1, int param2, u8 *param3)
{
    UnkStruct_ov17_02251718 *v0;

    *param3 = 0;
    v0 = Heap_Alloc(HEAP_ID_24, sizeof(UnkStruct_ov17_02251718));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_02251718));

    v0->unk_00 = param0->unk_10.unk_08[param1];
    v0->unk_04 = param3;

    if (param2 == 0) {
        v0->unk_08 = (256 + 80 / 2) << 8;
        v0->unk_0C = (192 / 2) << 8;
        SysTask_Start(ov17_02251784, v0, 50000);
    } else {
        v0->unk_08 = (256 / 2) << 8;
        v0->unk_0C = (192 / 2) << 8;
        SysTask_Start(ov17_022517F0, v0, 50000);
    }
}

static void ov17_02251784(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02251718 *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_HIDE, 0);
        v0->unk_10++;
    case 1:
        v0->unk_08 -= 0x800;

        if (v0->unk_08 <= (256 / 2) << 8) {
            v0->unk_08 = (256 / 2) << 8;
            v0->unk_10++;
        }

        PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_X_CENTER, v0->unk_08 >> 8);
        PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_Y_CENTER, v0->unk_0C >> 8);
        break;
    default:
        *(v0->unk_04) = 1;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

static void ov17_022517F0(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02251718 *v0 = param1;

    switch (v0->unk_10) {
    case 0:
        v0->unk_10++;
    case 1:
        v0->unk_08 -= 0x800;

        if (v0->unk_08 <= -(80 / 2) * 0x100) {
            v0->unk_10++;
        }

        PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_X_CENTER, v0->unk_08 / 0x100);
        PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_Y_CENTER, v0->unk_0C >> 8);
        break;
    default:
        PokemonSprite_SetAttribute(v0->unk_00, MON_SPRITE_HIDE, 1);
        *(v0->unk_04) = 1;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

static int ov17_02251860(UnkStruct_02095C48 *param0, int param1)
{
    switch (param0->unk_00.unk_111) {
    case 0:
        switch (param1) {
        case 0:
            return 60 * 100;
        case 2:
            return 40 * 100;
        default:
            return 0;
        }
        break;
    case 1:
        switch (param1) {
        case 0:
            return 70 * 100;
        case 1:
            return 30 * 100;
        default:
            return 0;
        }
        break;
    case 2:
        switch (param1) {
        case 0:
            return 3333;
        case 1:
            return 3333;
        case 2:
            return 3333;
        default:
            return 0;
        }
        break;
    case 3:
    case 4:
        if (param1 == 0) {
            return 10000;
        }
        return 0;
    case 5:
    case 6:
        if (param1 == 1) {
            return 10000;
        }

        return 0;
    case 7:
    case 8:
        if (param1 == 2) {
            return 10000;
        }
        return 0;
    default:
        return 0;
    }
}

static int ov17_02251914(UnkStruct_02095C48 *param0, int param1)
{
    int v0 = ov17_02251860(param0, param1);
    int v1 = (24 * 8) * v0;
    v1 = (v1 + 5000) / 10000;

    return v1;
}

void ov17_02251930(UnkStruct_02095C48 *param0, int param1, s16 param2[])
{
    int v0[4];
    int v1[4];
    int v2, v3, v4, v5;

    for (v4 = 0; v4 < 4; v4++) {
        switch (param1) {
        case 0:
            v0[v4] = sub_02095928(param0, v4) + sub_0209598C(param0, v4);
            break;
        case 1:
            v0[v4] = param0->unk_00.unk_118[v4].unk_04;
            break;
        case 2:
            v0[v4] = param0->unk_00.unk_118[v4].unk_06;
            break;
        default:
            GF_ASSERT(0);
            return;
        }
    }

    v5 = 0;

    for (v4 = 1; v4 < 4; v4++) {
        if (v0[v5] < v0[v4]) {
            v5 = v4;
        }
    }

    v2 = ov17_02251860(param0, param1);
    v3 = v2 / v0[v5];

    for (v4 = 0; v4 < 4; v4++) {
        v1[v4] = v0[v4] * v3;
        v1[v4] = (v1[v4] + 50) / 100;
    }

    for (v4 = 0; v4 < 4; v4++) {
        switch (param1) {
        case 0:
            param2[v4] = v1[v4];
            break;
        case 1:
            param2[v4] = v1[v4];
            break;
        case 2:
            param2[v4] = v1[v4];
            break;
        }
    }
}

void ov17_02251A1C(UnkStruct_ov17_0224FCA0 *param0)
{
    int v0;

    switch (param0->unk_00->unk_00.unk_111) {
    case 0:
        ov17_02251930(param0->unk_00, 0, param0->unk_39A.unk_3A);
        ov17_02251930(param0->unk_00, 2, param0->unk_39A.unk_4A);
        break;
    case 1:
        ov17_02251930(param0->unk_00, 0, param0->unk_39A.unk_3A);
        ov17_02251930(param0->unk_00, 1, param0->unk_39A.unk_42);
        break;
    case 2:
        ov17_02251930(param0->unk_00, 0, param0->unk_39A.unk_3A);
        ov17_02251930(param0->unk_00, 1, param0->unk_39A.unk_42);
        ov17_02251930(param0->unk_00, 2, param0->unk_39A.unk_4A);
        break;
    case 3:
    case 4:
        ov17_02251930(param0->unk_00, 0, param0->unk_39A.unk_3A);
        break;
    case 5:
    case 6:
        ov17_02251930(param0->unk_00, 1, param0->unk_39A.unk_42);
        break;
    case 7:
    case 8:
        ov17_02251930(param0->unk_00, 2, param0->unk_39A.unk_4A);
        break;
    }

    for (v0 = 0; v0 < 4; v0++) {
        param0->unk_39A.unk_52[v0] = param0->unk_39A.unk_3A[v0] + param0->unk_39A.unk_42[v0] + param0->unk_39A.unk_4A[v0];
    }

    {
        s32 v1, v2;

        v2 = 0;

        for (v0 = 1; v0 < 4; v0++) {
            if (param0->unk_39A.unk_3A[v2] < param0->unk_39A.unk_3A[v0]) {
                v2 = v0;
            }
        }

        v1 = param0->unk_39A.unk_3A[v2];

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_39A.unk_5A[v0] = 100 * param0->unk_39A.unk_3A[v0] / v1;
        }

        v2 = 0;

        for (v0 = 1; v0 < 4; v0++) {
            if (param0->unk_39A.unk_42[v2] < param0->unk_39A.unk_42[v0]) {
                v2 = v0;
            }
        }

        v1 = param0->unk_39A.unk_42[v2];

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_39A.unk_62[v0] = 100 * param0->unk_39A.unk_42[v0] / v1;
        }

        v2 = 0;

        for (v0 = 1; v0 < 4; v0++) {
            if (param0->unk_39A.unk_4A[v2] < param0->unk_39A.unk_4A[v0]) {
                v2 = v0;
            }
        }

        v1 = param0->unk_39A.unk_4A[v2];

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_39A.unk_6A[v0] = 100 * param0->unk_39A.unk_4A[v0] / v1;
        }
    }

    {
        int v3;

        v3 = ov17_02251914(param0->unk_00, 0);

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_39A.unk_82[v0] = v3 * param0->unk_39A.unk_5A[v0] / 100;
        }

        v3 = ov17_02251914(param0->unk_00, 1);

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_39A.unk_8A[v0] = v3 * param0->unk_39A.unk_62[v0] / 100;
        }

        v3 = ov17_02251914(param0->unk_00, 2);

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_39A.unk_92[v0] = v3 * param0->unk_39A.unk_6A[v0] / 100;
        }

        for (v0 = 0; v0 < 4; v0++) {
            param0->unk_39A.unk_7A[v0] = param0->unk_39A.unk_82[v0] + param0->unk_39A.unk_8A[v0] + param0->unk_39A.unk_92[v0];
        }
    }

    {
        s32 v4[4];
        s32 v5[4];
        s32 v6[4];
        int v7, v8, v9;

        for (v7 = 0; v7 < 4; v7++) {
            v5[v7] = v7;
            v6[v7] = param0->unk_39A.unk_7A[v7];
            v4[v7] = sub_02094E98(param0->unk_00);
        }

        for (v7 = 0; v7 < 4 - 1; v7++) {
            for (v8 = 4 - 1; v8 > v7; v8--) {
                if ((v6[v8 - 1] < v6[v8]) || ((v6[v8 - 1] == v6[v8]) && (v4[v8 - 1] < v4[v8]))) {
                    v9 = v6[v8];
                    v6[v8] = v6[v8 - 1];
                    v6[v8 - 1] = v9;

                    v9 = v5[v8];
                    v5[v8] = v5[v8 - 1];
                    v5[v8 - 1] = v9;

                    v9 = v4[v8];
                    v4[v8] = v4[v8 - 1];
                    v4[v8 - 1] = v9;
                }
            }
        }

        for (v7 = 0; v7 < 4; v7++) {
            param0->unk_39A.unk_35[v7] = v5[v7];
            param0->unk_00->unk_00.unk_118[v5[v7]].unk_08 = v7;
        }
    }
}
