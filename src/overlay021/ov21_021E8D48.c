#include "overlay021/ov21_021E8D48.h"

#include <nitro.h>
#include <string.h>

#include "overlay021/ov21_021D1F90.h"
#include "overlay021/ov21_021D1FA4.h"
#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021DE668.h"
#include "overlay021/pokedex_main.h"
#include "overlay021/struct_ov21_021D1FA4.h"
#include "overlay021/struct_ov21_021D22F8.h"
#include "overlay021/struct_ov21_021D4C0C_decl.h"
#include "overlay021/struct_ov21_021D4CA0.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021E8E0C.h"

#include "bg_window.h"
#include "char_transfer.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "pokedex_data_index.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "strbuf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02005474.h"
#include "vram_transfer.h"

#include "res/text/bank/pokedex.h"

typedef struct {
    Sprite *unk_00;
    SpriteResource *unk_04[4];
} UnkStruct_ov21_021E94F8;

typedef struct {
    Sprite *unk_00;
    UnkStruct_ov21_021D4CA0 *unk_04;
} UnkStruct_ov21_021E95B0;

typedef struct {
    Sprite *unk_00[2];
    SpriteResource *unk_08[4];
} UnkStruct_ov21_021E968C;

typedef struct {
    void *unk_00[2];
    NNSG2dPaletteData *unk_08[2];
    int unk_10;
    int unk_14[2];
    int unk_1C;
} UnkStruct_ov21_021E9A9C;

typedef struct UnkStruct_ov21_021E8D48_t {
    BgConfig *unk_00;
    Window *unk_04;
    PaletteData *unk_08;
    PokemonSprite *unk_0C;
    G2dRenderer unk_10;
    SpriteList *unk_19C;
    SpriteResourceCollection *unk_1A0[4];
    UnkStruct_ov21_021D4C0C *unk_1B0;
    UnkStruct_ov21_021D22F8 unk_1B4;
    UnkStruct_ov21_021E94F8 unk_1E4;
    UnkStruct_ov21_021E95B0 unk_1F8;
    UnkStruct_ov21_021E968C unk_200;
    u32 unk_218;
    u32 unk_21C;
    u32 unk_220;
    SysTask *unk_224;
    UnkStruct_ov21_021E9A9C unk_228;
    BOOL unk_248;
} UnkStruct_ov21_021E8D48;

static void ov21_021E9828(SysTask *param0, void *param1);
static void ov21_021E98D8(PaletteData *param0, PokemonSprite *param1);
static void ov21_021E98F8(PaletteData *param0, PokemonSprite *param1, int param2, int param3, int param4, int param5, int param6);
static BOOL ov21_021E9948(PaletteData *param0, PokemonSprite *param1);
static void ov21_021E8E0C(UnkStruct_ov21_021E8D48 *param0, const UnkStruct_ov21_021E8E0C *param1);
static void ov21_021E900C(UnkStruct_ov21_021E8D48 *param0);
static void ov21_021E90B0(BgConfig *param0, int param1);
static void ov21_021E9194(BgConfig *param0);
static Window *ov21_021E91B0(BgConfig *param0, int param1);
static void ov21_021E91F0(Window *param0);
static void ov21_021E9208(SpriteResourceCollection **param0, int param1);
static void ov21_021E9228(SpriteResourceCollection **param0);
static void ov21_021E9240(UnkStruct_ov21_021D22F8 *param0, UnkStruct_ov21_021D4C0C *param1, int param2, int param3, int param4);
static void ov21_021E92B0(UnkStruct_ov21_021D22F8 *param0);
static PokemonSprite *ov21_021E99E0(PokemonSpriteManager *param0, Pokemon *param1, int param2, int param3, int param4);
static void ov21_021E92C4(SpriteResource **param0, SpriteResourceCollection **param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9);
static void ov21_021E9344(SpriteResource **param0, SpriteResourceCollection **param1, int param2, NARC *param3, int param4, int param5, int param6, int param7, int param8, int param9);
static void ov21_021E93C4(SpriteResource **param0, SpriteResourceCollection **param1);
static void ov21_021E93F8(SpriteResource **param0, SpriteResourceCollection **param1, SpriteResourcesHeader *param2, int param3);
static void ov21_021E9458(UnkStruct_ov21_021E94F8 *param0, SpriteResourceCollection **param1, int param2, int param3);
static void ov21_021E94A4(UnkStruct_ov21_021E94F8 *param0, SpriteResourceCollection **param1);
static void ov21_021E94B0(UnkStruct_ov21_021E94F8 *param0, SpriteList *param1, SpriteResourceCollection **param2, int param3);
static void ov21_021E94F8(UnkStruct_ov21_021E94F8 *param0);
static void ov21_021E9504(UnkStruct_ov21_021E95B0 *param0, SpriteList *param1, SpriteResourceCollection **param2, int param3, SpriteResource **param4);
static void ov21_021E9554(UnkStruct_ov21_021E95B0 *param0);
static void ov21_021E9560(UnkStruct_ov21_021E95B0 *param0, UnkStruct_ov21_021D4C0C *param1, int param2, int param3, SpriteResource *param4);
static void ov21_021E95B0(UnkStruct_ov21_021E95B0 *param0);
static void ov21_021E95BC(UnkStruct_ov21_021E968C *param0, SpriteResourceCollection **param1, int param2, int param3, NARC *param4);
static void ov21_021E95EC(UnkStruct_ov21_021E968C *param0, SpriteResourceCollection **param1);
static void ov21_021E95F8(UnkStruct_ov21_021E968C *param0, SpriteList *param1, SpriteResourceCollection **param2, int param3, int param4);
static void ov21_021E968C(UnkStruct_ov21_021E968C *param0);
static void ov21_021E96A8(BgConfig *param0, int param1, NARC *param2);
static void ov21_021E97C4(BgConfig *param0, int param1, NARC *param2);
static void ov21_021E9968(Window *param0, int param1, int param2);
static void ov21_021E998C(Window *param0, enum HeapId heapID);
static void ov21_021E9A0C(int param0);
static void ov21_021E9A38(void);
static void ov21_021E9A40(UnkStruct_ov21_021E9A9C *param0, int param1, int param2, NARC *param3);
static void ov21_021E9A9C(UnkStruct_ov21_021E9A9C *param0);
static void ov21_021E9AC8(UnkStruct_ov21_021E9A9C *param0);
static void ov21_021E9AE8(UnkStruct_ov21_021E9A9C *param0, int param1);
static void ov21_021E9B08(UnkStruct_ov21_021E9A9C *param0, int param1);

UnkStruct_ov21_021E8D48 *ov21_021E8D48(const UnkStruct_ov21_021E8E0C *param0)
{
    UnkStruct_ov21_021E8D48 *v0 = Heap_AllocFromHeap(param0->heapId, sizeof(UnkStruct_ov21_021E8D48));

    memset(v0, 0, sizeof(UnkStruct_ov21_021E8D48));

    {
        u32 v1;
        u32 v2;

        v1 = Pokemon_GetValue(param0->unk_10, MON_DATA_SPECIES, NULL);
        v2 = Pokemon_GetValue(param0->unk_10, MON_DATA_FORM, NULL);

        if (v1 == SPECIES_GIRATINA) {
            Pokedex_SetupGiratina(v2);
        } else {
            Pokedex_SetupGiratina(1);
        }
    }

    ov21_021E8E0C(v0, param0);
    ov21_021E98D8(v0->unk_08, v0->unk_0C);
    ov21_021E98F8(v0->unk_08, v0->unk_0C, 10, 15, 0, 0, 0x0);

    v0->unk_224 = SysTask_Start(ov21_021E9828, v0, 0);

    return v0;
}

void ov21_021E8DD0(UnkStruct_ov21_021E8D48 *param0)
{
    ov21_021E900C(param0);

    SysTask_Done(param0->unk_224);
    Heap_FreeToHeap(param0);
}

BOOL ov21_021E8DEC(const UnkStruct_ov21_021E8D48 *param0)
{
    if (param0->unk_21C == 4) {
        return 1;
    }

    return 0;
}

PokemonSprite *ov21_021E8E00(UnkStruct_ov21_021E8D48 *param0)
{
    return param0->unk_0C;
}

void ov21_021E8E04(UnkStruct_ov21_021E8D48 *param0, BOOL param1)
{
    param0->unk_248 = param1;
}

static void ov21_021E8E0C(UnkStruct_ov21_021E8D48 *param0, const UnkStruct_ov21_021E8E0C *param1)
{
    UnkStruct_ov21_021D1FA4 v0;
    NARC *v1 = NARC_ctor(NARC_INDEX_RESOURCE__ENG__ZUKAN__ZUKAN, param1->heapId);
    int v2;

    param0->unk_220 = Pokemon_GetValue(param1->unk_10, MON_DATA_SPECIES, NULL);
    v2 = Pokemon_GetValue(param1->unk_10, MON_DATA_FORM, NULL);

    param0->unk_00 = param1->unk_00;
    param0->unk_19C = SpriteList_InitRendering(32, &param0->unk_10, param1->heapId);

    Utility_Clear2DMainOAM(param1->heapId);
    ov21_021E9A0C(param1->heapId);

    param0->unk_0C = ov21_021E99E0(param1->unk_08, param1->unk_10, 48, 72, param1->heapId);
    param0->unk_08 = param1->unk_04;

    v0.unk_00 = param0->unk_19C;
    v0.unk_04 = param0->unk_00;
    v0.unk_08 = 3;
    v0.heapId = param1->heapId;

    param0->unk_1B0 = ov21_021D4C0C(&v0);

    ov21_021E90B0(param0->unk_00, param1->heapId);
    G2_SetBlendBrightness((GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD), -16);

    param0->unk_04 = ov21_021E91B0(param0->unk_00, param1->heapId);

    ov21_021E9208(param0->unk_1A0, param1->heapId);
    ov21_021D2B88(&param0->unk_1B4, param0->unk_1A0, param1->heapId, v1);
    ov21_021D2D88(&param0->unk_1B4, param0->unk_19C, param0->unk_1A0, param1->heapId, 2);
    ov21_021E9240(&param0->unk_1B4, param0->unk_1B0, param1->heapId, param0->unk_220, param1->unk_14);
    ov21_021D1858(&param0->unk_1B4, 172, 32);
    ov21_021D2E44(&param0->unk_1B4, 1);

    {
        int v3;

        if ((param0->unk_220 == SPECIES_GIRATINA) && (v2 > 0)) {
            v3 = 11;
        } else {
            v3 = param0->unk_220;
        }

        ov21_021E9458(&param0->unk_1E4, param0->unk_1A0, v3, param1->heapId);
        ov21_021E94B0(&param0->unk_1E4, param0->unk_19C, param0->unk_1A0, param1->heapId);
    }

    ov21_021E95BC(&param0->unk_200, param0->unk_1A0, param0->unk_220, param1->heapId, v1);
    ov21_021E95F8(&param0->unk_200, param0->unk_19C, param0->unk_1A0, param1->heapId, param0->unk_220);
    ov21_021E9504(&param0->unk_1F8, param0->unk_19C, param0->unk_1A0, param1->heapId, param0->unk_200.unk_08);
    ov21_021E9560(&param0->unk_1F8, param0->unk_1B0, param1->heapId, param0->unk_220, param0->unk_1B4.unk_0C[1]);
    ov21_021E96A8(param0->unk_00, param1->heapId, v1);
    ov21_021E97C4(param0->unk_00, param1->heapId, v1);
    ov21_021E9968(param0->unk_04, param1->heapId, param0->unk_220);
    ov21_021E9A40(&param0->unk_228, param1->heapId, param1->unk_14, v1);

    param0->unk_248 = 1;

    NARC_dtor(v1);
}

static void ov21_021E900C(UnkStruct_ov21_021E8D48 *param0)
{
    ov21_021E9AC8(&param0->unk_228);
    ov21_021E968C(&param0->unk_200);
    ov21_021E95EC(&param0->unk_200, param0->unk_1A0);
    ov21_021E95B0(&param0->unk_1F8);
    ov21_021E9554(&param0->unk_1F8);
    ov21_021E94F8(&param0->unk_1E4);
    ov21_021E94A4(&param0->unk_1E4, param0->unk_1A0);
    ov21_021E92B0(&param0->unk_1B4);
    ov21_021D2E1C(&param0->unk_1B4);
    ov21_021D2C58(&param0->unk_1B4, param0->unk_1A0);
    ov21_021E9228(param0->unk_1A0);

    SpriteList_Delete(param0->unk_19C);

    ov21_021E91F0(param0->unk_04);
    ov21_021E9194(param0->unk_00);
    ov21_021D4C6C(param0->unk_1B0);
    ov21_021E9A38();
}

static void ov21_021E90B0(BgConfig *param0, int param1)
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
            1,
            0,
            0,
            0
        };

        Bg_FreeTilemapBuffer(param0, 1);
        Bg_InitFromTemplate(param0, 1, &v0, 0);
        Bg_ClearTilesRange(1, 32, 0, param1);
        Bg_ClearTilemap(param0, 1);
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
            2,
            0,
            0,
            0
        };

        Bg_FreeTilemapBuffer(param0, 2);
        Bg_InitFromTemplate(param0, 2, &v1, 0);
        Bg_ClearTilesRange(2, 32, 0, param1);
        Bg_ClearTilemap(param0, 2);
    }

    Bg_SetPriority(0, 0);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    Bg_FreeTilemapBuffer(param0, 0);

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
            3,
            0,
            0,
            0
        };

        Bg_FreeTilemapBuffer(param0, 3);
        Bg_InitFromTemplate(param0, 3, &v2, 0);
        Bg_ClearTilesRange(3, 32, 0, param1);
        Bg_ClearTilemap(param0, 3);
    }
}

static void ov21_021E9194(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, 1);
    Bg_FreeTilemapBuffer(param0, 2);
    Bg_FreeTilemapBuffer(param0, 3);
}

static Window *ov21_021E91B0(BgConfig *param0, int param1)
{
    Window *v0 = Window_New(param1, 1);

    Window_Add(param0, v0, 1, 0, 0, 32, 32, 0xc, 0);
    Window_FillTilemap(v0, 0);
    Window_CopyToVRAM(v0);

    return v0;
}

static void ov21_021E91F0(Window *param0)
{
    Window_ClearAndCopyToVRAM(param0);
    Window_Remove(param0);
    Windows_Delete(param0, 1);
}

static void ov21_021E9208(SpriteResourceCollection **param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        param0[v0] = SpriteResourceCollection_New(8, v0, param1);
    }
}

static void ov21_021E9228(SpriteResourceCollection **param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        SpriteResourceCollection_Delete(param0[v0]);
        param0[v0] = NULL;
    }
}

static void ov21_021E9240(UnkStruct_ov21_021D22F8 *param0, UnkStruct_ov21_021D4C0C *param1, int param2, int param3, int param4)
{
    UnkStruct_ov21_021D4CB8 v0;
    Window *v1;
    SpriteResource *v2 = param0->unk_0C[1];

    v0.unk_00 = param1;
    v0.unk_08 = SpriteTransfer_GetPaletteProxy(v2, NULL);
    v0.unk_0C = param0->unk_00;
    v0.unk_10 = -(128 / 2);
    v0.unk_14 = -(16 / 2);
    v0.unk_18 = 2;
    v0.unk_1C = 0;
    v0.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.heapID = param2;

    if (param4 == 0) {
        v1 = PokedexMain_DisplayNameNumberLocal(param1, param2, param3);
    } else {
        v1 = PokedexMain_DisplayNameNumberNational(param1, param2, param3);
    }

    v0.unk_04 = v1;

    ov21_021D22F8(param0, &v0, 0, param3, param4);
    ov21_021D4DA0(v1);
}

static void ov21_021E92B0(UnkStruct_ov21_021D22F8 *param0)
{
    if (param0->unk_08) {
        ov21_021D4D1C(param0->unk_08);
        param0->unk_08 = NULL;
    }
}

static void ov21_021E92C4(SpriteResource **param0, SpriteResourceCollection **param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    param0[0] = SpriteResourceCollection_AddTiles(param1[0], param3, param4, 1, param9, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param0[0]);
    SpriteResource_ReleaseData(param0[0]);

    param0[1] = SpriteResourceCollection_AddPalette(param1[1], param3, param5, 0, param9, NNS_G2D_VRAM_TYPE_2DMAIN, param8, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0[1]);
    SpriteResource_ReleaseData(param0[1]);

    param0[2] = SpriteResourceCollection_Add(param1[2], param3, param6, 1, param9, 2, param2);
    param0[3] = SpriteResourceCollection_Add(param1[3], param3, param7, 1, param9, 3, param2);
}

static void ov21_021E9344(SpriteResource **param0, SpriteResourceCollection **param1, int param2, NARC *param3, int param4, int param5, int param6, int param7, int param8, int param9)
{
    param0[0] = SpriteResourceCollection_AddTilesFrom(param1[0], param3, param4, 1, param9, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param0[0]);
    SpriteResource_ReleaseData(param0[0]);

    param0[1] = SpriteResourceCollection_AddPaletteFrom(param1[1], param3, param5, 0, param9, NNS_G2D_VRAM_TYPE_2DMAIN, param8, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0[1]);
    SpriteResource_ReleaseData(param0[1]);

    param0[2] = SpriteResourceCollection_AddFrom(param1[2], param3, param6, 1, param9, 2, param2);
    param0[3] = SpriteResourceCollection_AddFrom(param1[3], param3, param7, 1, param9, 3, param2);
}

static void ov21_021E93C4(SpriteResource **param0, SpriteResourceCollection **param1)
{
    SpriteTransfer_ResetCharTransfer(param0[0]);
    SpriteTransfer_ResetPlttTransfer(param0[1]);

    SpriteResourceCollection_Remove(param1[0], param0[0]);
    SpriteResourceCollection_Remove(param1[1], param0[1]);
    SpriteResourceCollection_Remove(param1[2], param0[2]);
    SpriteResourceCollection_Remove(param1[3], param0[3]);
}

static void ov21_021E93F8(SpriteResource **param0, SpriteResourceCollection **param1, SpriteResourcesHeader *param2, int param3)
{
    SpriteResourcesHeader_Init(param2, SpriteResource_GetID(param0[0]), SpriteResource_GetID(param0[1]), SpriteResource_GetID(param0[2]), SpriteResource_GetID(param0[3]), 0xffffffff, 0xffffffff, 0, param3, param1[0], param1[1], param1[2], param1[3], NULL, NULL);
}

static void ov21_021E9458(UnkStruct_ov21_021E94F8 *param0, SpriteResourceCollection **param1, int param2, int param3)
{
    int v0 = ov21_021D1F90();
    int v1 = ov21_021D1F94(param2);
    int v2 = ov21_021D1F98();
    int v3 = ov21_021D1F9C();
    int v4 = ov21_021D1FA0();

    ov21_021E92C4(param0->unk_04, param1, param3, v0, v1, v2, v3, v4, 1, 4000);
}

static void ov21_021E94A4(UnkStruct_ov21_021E94F8 *param0, SpriteResourceCollection **param1)
{
    ov21_021E93C4(param0->unk_04, param1);
}

static void ov21_021E94B0(UnkStruct_ov21_021E94F8 *param0, SpriteList *param1, SpriteResourceCollection **param2, int param3)
{
    SpriteListTemplate v0;
    SpriteResourcesHeader v1;

    ov21_021E93F8(param0->unk_04, param2, &v1, 2);

    v0.list = param1;
    v0.resourceData = &v1;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.priority = 32;
    v0.heapID = param3;
    v0.position.x = (120 * FX32_ONE);
    v0.position.y = (88 * FX32_ONE);

    param0->unk_00 = SpriteList_Add(&v0);
    GF_ASSERT(param0->unk_00);
}

static void ov21_021E94F8(UnkStruct_ov21_021E94F8 *param0)
{
    Sprite_Delete(param0->unk_00);
}

static void ov21_021E9504(UnkStruct_ov21_021E95B0 *param0, SpriteList *param1, SpriteResourceCollection **param2, int param3, SpriteResource **param4)
{
    SpriteListTemplate v0;
    SpriteResourcesHeader v1;

    ov21_021E93F8(param4, param2, &v1, 2);

    v0.list = param1;
    v0.resourceData = &v1;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.priority = 32;
    v0.heapID = param3;
    v0.position.x = (192 * FX32_ONE);
    v0.position.y = (52 * FX32_ONE);

    param0->unk_00 = SpriteList_Add(&v0);

    GF_ASSERT(param0->unk_00);
    Sprite_SetAnim(param0->unk_00, 0x11);
}

static void ov21_021E9554(UnkStruct_ov21_021E95B0 *param0)
{
    Sprite_Delete(param0->unk_00);
}

static void ov21_021E9560(UnkStruct_ov21_021E95B0 *param0, UnkStruct_ov21_021D4C0C *param1, int param2, int param3, SpriteResource *param4)
{
    Window *v0;
    UnkStruct_ov21_021D4CB8 v1;

    v0 = ov21_021DF30C(param1, param3, param2);

    v1.unk_00 = param1;
    v1.unk_08 = SpriteTransfer_GetPaletteProxy(param4, NULL);
    v1.unk_0C = param0->unk_00;
    v1.unk_10 = -78;
    v1.unk_14 = -8;
    v1.unk_18 = 2;
    v1.unk_1C = 32 - 1;
    v1.unk_20 = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param2;
    v1.unk_04 = v0;

    param0->unk_04 = ov21_021D4CA0(&v1);

    ov21_021D4DA0(v0);
}

static void ov21_021E95B0(UnkStruct_ov21_021E95B0 *param0)
{
    ov21_021D4D1C(param0->unk_04);
}

static void ov21_021E95BC(UnkStruct_ov21_021E968C *param0, SpriteResourceCollection **param1, int param2, int param3, NARC *param4)
{
    ov21_021E9344(param0->unk_08, param1, param3, param4, 90, 13, 88, 89, 5, 17000);
}

static void ov21_021E95EC(UnkStruct_ov21_021E968C *param0, SpriteResourceCollection **param1)
{
    ov21_021E93C4(param0->unk_08, param1);
}

static void ov21_021E95F8(UnkStruct_ov21_021E968C *param0, SpriteList *param1, SpriteResourceCollection **param2, int param3, int param4)
{
    SpriteListTemplate v0;
    SpriteResourcesHeader v1;
    int type1 = SpeciesData_GetSpeciesValue(param4, SPECIES_DATA_TYPE_1);
    int type2 = SpeciesData_GetSpeciesValue(param4, SPECIES_DATA_TYPE_2);
    type1 = ov21_021DF180(type1);
    type2 = ov21_021DF180(type2);

    ov21_021E93F8(param0->unk_08, param2, &v1, 2);

    v0.list = param1;
    v0.resourceData = &v1;
    v0.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v0.priority = 32;
    v0.heapID = param3;
    v0.position.x = (170 * FX32_ONE);
    v0.position.y = (72 * FX32_ONE);

    param0->unk_00[0] = SpriteList_Add(&v0);

    Sprite_SetAnim(param0->unk_00[0], 0 + type1);

    if (type1 != type2) {
        v0.position.x = (220 * FX32_ONE);
        v0.position.y = (72 * FX32_ONE);
        param0->unk_00[1] = SpriteList_Add(&v0);
        Sprite_SetAnim(param0->unk_00[1], 0 + type2);
    } else {
        param0->unk_00[1] = NULL;
    }
}

static void ov21_021E968C(UnkStruct_ov21_021E968C *param0)
{
    if (param0->unk_00[0]) {
        Sprite_Delete(param0->unk_00[0]);
    }

    if (param0->unk_00[1]) {
        Sprite_Delete(param0->unk_00[1]);
    }
}

static void ov21_021E96A8(BgConfig *param0, int param1, NARC *param2)
{
    void *v0;
    NNSG2dScreenData *v1;

    Graphics_LoadPaletteFromOpenNARC(param2, 6, 0, 0, 0, param1);
    Graphics_LoadTilesToBgLayerFromOpenNARC(param2, 33, param0, 3, 0, 0, 1, param1);

    v0 = Graphics_GetScrnDataFromOpenNARC(param2, 50, 1, &v1, param1);

    Bg_LoadToTilemapRect(param0, 3, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = Graphics_GetScrnDataFromOpenNARC(param2, 51, 1, &v1, param1);

    Bg_LoadToTilemapRect(param0, 3, v1->rawData, 0, 3, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = Graphics_GetScrnDataFromOpenNARC(param2, 52, 1, &v1, param1);

    Bg_LoadToTilemapRect(param0, 3, v1->rawData, 12, 8, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);

    v0 = Graphics_GetScrnDataFromOpenNARC(param2, 54, 1, &v1, param1);

    Bg_LoadToTilemapRect(param0, 3, v1->rawData, 0, 16, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0, 3);
}

static void ov21_021E97C4(BgConfig *param0, int param1, NARC *param2)
{
    void *v0;
    NNSG2dScreenData *v1;

    Graphics_LoadTilesToBgLayerFromOpenNARC(param2, 33, param0, 2, 0, 0, 1, param1);

    v0 = Graphics_GetScrnDataFromOpenNARC(param2, 57, 1, &v1, param1);

    Bg_LoadToTilemapRect(param0, 2, v1->rawData, 0, 0, v1->screenWidth / 8, v1->screenHeight / 8);
    Heap_FreeToHeap(v0);
    Bg_ScheduleTilemapTransfer(param0, 2);
}

static void ov21_021E9828(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021E8D48 *v0 = param1;
    BOOL v1;

    switch (v0->unk_21C) {
    case 0:
        G2_BlendNone();
        v0->unk_21C++;
        break;
    case 1:
        if (ov21_021E9948(v0->unk_08, v0->unk_0C)) {
            v0->unk_21C++;
        }
        break;
    case 2:
        v1 = Sound_PlayPokemonCry(POKECRY_POKEDEX, v0->unk_220, 0x1ff, 0x1ff, 0x1ff, 0);
        GF_ASSERT(v1);
        v0->unk_21C++;
        break;
    case 3:
        if (sub_0200598C() == 0) {
            v0->unk_21C++;
        }
        break;
    case 4:
        break;
    default:
        break;
    }

    if (v0->unk_248) {
        ov21_021E9A9C(&v0->unk_228);
    }

    SpriteList_Update(v0->unk_19C);
}

static void ov21_021E98D8(PaletteData *param0, PokemonSprite *param1)
{
    PaletteData_LoadBufferFromHardware(param0, 0, 0, 32 * 0x10);
    PaletteData_LoadBufferFromHardware(param0, 2, 0, (((16 - 2) * 16) * sizeof(u16)));
}

static void ov21_021E98F8(PaletteData *param0, PokemonSprite *param1, int param2, int param3, int param4, int param5, int param6)
{
    PokemonSprite_StartFade(param1, param2, param4, param5, param6);
    PaletteData_StartFade(param0, 0x1 | 0x4, 0xffff, param5, param3, param4, param6);
    PaletteData_SetAutoTransparent(param0, 0);
}

static BOOL ov21_021E9948(PaletteData *param0, PokemonSprite *param1)
{
    BOOL v0[2];

    v0[0] = PaletteData_GetSelectedBuffersMask(param0);
    v0[1] = PokemonSprite_IsFadeActive(param1);

    if ((v0[0] == 0) && (v0[1] == 0)) {
        return 1;
    }

    return 0;
}

static void ov21_021E9968(Window *param0, int param1, int param2)
{
    ov21_021DEB8C(param0, param2, param1, 0, TEXT_COLOR(2, 1, 0));
    ov21_021E998C(param0, param1);
}

static void ov21_021E998C(Window *param0, enum HeapId heapID)
{
    Strbuf *v0 = Strbuf_Init(64, heapID);
    MessageLoader *pokedexMessageBank = MessageLoader_Init(MESSAGE_LOADER_BANK_HANDLE, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_POKEDEX, heapID);

    MessageLoader_GetStrbuf(pokedexMessageBank, pl_msg_pokedex_registered, v0);
    Text_AddPrinterWithParamsAndColor(param0, FONT_SYSTEM, v0, 32, 0, TEXT_SPEED_INSTANT, TEXT_COLOR(3, 4, 0), NULL);

    Strbuf_Free(v0);
    MessageLoader_Free(pokedexMessageBank);
}

static PokemonSprite *ov21_021E99E0(PokemonSpriteManager *param0, Pokemon *param1, int param2, int param3, int param4)
{
    PokemonSpriteTemplate v0;

    Pokemon_BuildSpriteTemplate(&v0, param1, 2);
    return PokemonSpriteManager_CreateSprite(param0, &v0, param2, param3, 0, 0, NULL, NULL);
}

static void ov21_021E9A0C(int param0)
{
    CharTransferTemplate v0 = {
        32, (1024 * 0x40), (512 * 0x20), 0
    };

    v0.heapID = param0;
    CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K);
}

static void ov21_021E9A38(void)
{
    CharTransfer_Free();
}

static void ov21_021E9A40(UnkStruct_ov21_021E9A9C *param0, int param1, int param2, NARC *param3)
{
    int v0;

    if (param2 == 0) {
        param0->unk_00[0] = Graphics_GetPlttDataFromOpenNARC(param3, 23, &param0->unk_08[0], param1);
    } else {
        param0->unk_00[0] = Graphics_GetPlttDataFromOpenNARC(param3, 24, &param0->unk_08[0], param1);
    }

    param0->unk_00[1] = Graphics_GetPlttDataFromOpenNARC(param3, 26, &param0->unk_08[1], param1);
    param0->unk_10 = 0;
    param0->unk_1C = 0;

    for (v0 = 0; v0 < 2; v0++) {
        param0->unk_14[v0] = (v0 + 1) * 16;
    }

    ov21_021E9AE8(param0, param0->unk_1C);
}

static void ov21_021E9A9C(UnkStruct_ov21_021E9A9C *param0)
{
    if (param0->unk_14[param0->unk_1C] <= param0->unk_10) {
        param0->unk_1C++;

        if (param0->unk_1C >= 2) {
            param0->unk_1C = 0;
            param0->unk_10 = 0;
        }

        ov21_021E9B08(param0, param0->unk_1C);
    } else {
        param0->unk_10++;
    }
}

static void ov21_021E9AC8(UnkStruct_ov21_021E9A9C *param0)
{
    int v0;

    for (v0 = 0; v0 < 2; v0++) {
        Heap_FreeToHeap(param0->unk_00[0]);
    }

    memset(param0, 0, sizeof(UnkStruct_ov21_021E9A9C));
}

static void ov21_021E9AE8(UnkStruct_ov21_021E9A9C *param0, int param1)
{
    DC_FlushRange((void *)param0->unk_08[param1]->pRawData, 1 * 32);
    GX_LoadBGPltt(param0->unk_08[param1]->pRawData, 0 * 32, 1 * 32);
}

static void ov21_021E9B08(UnkStruct_ov21_021E9A9C *param0, int param1)
{
    VramTransfer_Request(NNS_GFD_DST_2D_BG_PLTT_MAIN, 0 * 32, param0->unk_08[param1]->pRawData, 1 * 32);
}
