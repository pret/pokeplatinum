#include "overlay021/ov21_021D1FA4.h"

#include <nitro.h>
#include <string.h>

#include "overlay021/ov21_021D4C0C.h"
#include "overlay021/ov21_021D4EE4.h"
#include "overlay021/pokedex_graphic_data.h"
#include "overlay021/struct_ov21_021D1FA4.h"
#include "overlay021/struct_ov21_021D22F8.h"
#include "overlay021/struct_ov21_021D23F8.h"
#include "overlay021/struct_ov21_021D2584.h"
#include "overlay021/struct_ov21_021D2648.h"
#include "overlay021/struct_ov21_021D3124.h"
#include "overlay021/struct_ov21_021D4CB8.h"
#include "overlay021/struct_ov21_021D4EE4_decl.h"
#include "overlay022/struct_ov22_022550D4.h"

#include "bg_window.h"
#include "font.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_resource.h"
#include "sprite_transfer.h"
#include "sprite_util.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "unk_02012744.h"
#include "unk_02015064.h"

static void ov21_021D2830(BgConfig *param0, int param1);
static void ov21_021D299C(BgConfig *param0);
static void ov21_021D29D0(PokedexGraphicData *param0, int param1);
static void ov21_021D2A00(PokedexGraphicData *param0);
static void ov21_021D2A0C(PokedexGraphicData *param0, int heapID);
static void ov21_021D2AB4(PokedexGraphicData *param0);
static void ov21_021D2AE8(PokedexGraphicData *param0, int param1);
static void ov21_021D2C10(PokedexGraphicData *param0);
static void ov21_021D2C8C(PokedexGraphicData *param0, int param1);
static void ov21_021D2D4C(PokedexGraphicData *param0);
static void ov21_021D2E70(PokedexGraphicData *param0, int param1);
static void ov21_021D2F14(PokedexGraphicData *param0);
static void ov21_021D2F5C(PokedexGraphicData *param0, int param1);
static void ov21_021D300C(PokedexGraphicData *param0);
static void ov21_021D3034(PokedexGraphicData *param0);
static void ov21_021D3054(PokedexGraphicData *param0);
static void ov21_021D3064(SysTask *param0, void *param1);
static void ov21_021D30D8(UnkStruct_ov21_021D2584 *param0, int param1, int param2, int param3, int param4);
static void ov21_021D31D0(PokedexGraphicData *param0);
static void ov21_021D31F0(PokedexGraphicData *param0);
static void ov21_021D3124(PokedexGraphicData *param0, int param1, int param2, int param3, int param4);
static void ov21_021D3194(SysTask *param0, void *param1);

void ov21_021D1FA4(PokedexGraphicData *param0, int heapID)
{
    GraphicsModes v0;
    UnkStruct_ov21_021D1FA4 v1;

    param0->pokedexGraphics = NARC_ctor(NARC_INDEX_RESOURCE__ENG__ZUKAN__ZUKAN, heapID);
    param0->bgConfig = BgConfig_New(heapID);

    v0.displayMode = GX_DISPMODE_GRAPHICS;
    v0.mainBgMode = GX_BGMODE_0;
    v0.subBgMode = GX_BGMODE_1;
    v0.bg0As2DOr3D = GX_BG0_AS_3D;

    SetAllGraphicsModes(&v0);

    ov21_021D2830(param0->bgConfig, heapID);
    ov21_021D29D0(param0, heapID);

    param0->spriteList = SpriteList_InitRendering(128, &param0->g2Renderer, heapID);
    param0->spriteResourceCollection[0] = SpriteResourceCollection_New(32, 0, heapID);
    param0->spriteResourceCollection[1] = SpriteResourceCollection_New(32, 1, heapID);
    param0->spriteResourceCollection[2] = SpriteResourceCollection_New(32, 2, heapID);
    param0->spriteResourceCollection[3] = SpriteResourceCollection_New(32, 3, heapID);

    GXLayers_EngineAToggleLayers(GX_PLANEMASK_OBJ, 1);
    GXLayers_EngineBToggleLayers(GX_PLANEMASK_OBJ, 1);

    v1.unk_00 = param0->spriteList;
    v1.unk_04 = param0->bgConfig;
    v1.unk_08 = 16;
    v1.heapID = heapID;

    param0->unk_14C = ov21_021D4C0C(&v1);

    Font_InitManager(FONT_SUBSCREEN, heapID);

    ov21_021D2A0C(param0, heapID);
    ov21_021D2AE8(param0, heapID);
    ov21_021D2C8C(param0, heapID);
    ov21_021D2E70(param0, heapID);
    ov21_021D2F5C(param0, heapID);
}

void ov21_021D2098(PokedexGraphicData *param0)
{
    ov21_021D2D4C(param0);
    ov21_021D2C10(param0);
    ov21_021D300C(param0);
    ov21_021D2F14(param0);
    ov21_021D2A00(param0);
    ov21_021D299C(param0->bgConfig);

    Heap_FreeToHeap(param0->bgConfig);
    SpriteList_Delete(param0->spriteList);
    SpriteResourceCollection_Delete(param0->spriteResourceCollection[0]);
    SpriteResourceCollection_Delete(param0->spriteResourceCollection[1]);
    SpriteResourceCollection_Delete(param0->spriteResourceCollection[2]);
    SpriteResourceCollection_Delete(param0->spriteResourceCollection[3]);

    ov21_021D4C6C(param0->unk_14C);
    Font_Free(FONT_SUBSCREEN);
    ov21_021D2AB4(param0);
    NARC_dtor(param0->pokedexGraphics);

    memset(param0, 0, sizeof(PokedexGraphicData));
}

void ov21_021D2124(PokedexGraphicData *param0)
{
    SpriteList_Update(param0->spriteList);

    NNS_G2dSetupSoftwareSpriteCamera();

    PokemonSpriteManager_DrawSprites(param0->unk_150);
    sub_020150EC(param0->unk_164);
}

void ov21_021D214C(PokedexGraphicData *param0)
{
    Bg_RunScheduledUpdates(param0->bgConfig);
    PokemonSpriteManager_UpdateCharAndPltt(param0->unk_150);
}

void ov21_021D2164(PokedexGraphicData *param0, int param1, int param2)
{
    ov21_021D222C(param0, param1, param2, 0);
}

PokemonSprite *ov21_021D2170(const PokedexGraphicData *param0)
{
    return ov21_021D2274(param0, 0);
}

void ov21_021D217C(const PokedexGraphicData *param0, BOOL param1)
{
    ov21_021D2280(param0, param1, 0);
}

void Pokedex_LoadPokemonSprite(PokedexGraphicData *param0, int species, int gender, int face, int shiny, u8 form, u32 personality, int param7, int param8, int param9)
{
    PokemonSpriteTemplate spriteTemplate;
    s16 yOffset;

    if (param0->pokemonSprite[param9]) {
        PokemonSprite_Delete(param0->pokemonSprite[param9]);
    }

    if (gender == -1) {
        gender = Pokemon_GetGenderOf(species, 0);
    }

    BuildPokemonSpriteTemplate(&spriteTemplate, species, gender, face, shiny, form, personality);

    if (face == 0) {
        yOffset = LoadPokemonSpriteYOffset(species, gender, face, form, personality);
        yOffset += 0;
    } else {
        yOffset = 0;
    }

    param0->pokemonSprite[param9] = PokemonSpriteManager_CreateSprite(param0->unk_150, &spriteTemplate, param7, param8 + yOffset, 0, 0, NULL, NULL);
}

void ov21_021D222C(PokedexGraphicData *param0, int param1, int param2, int param3)
{
    PokemonSprite_SetAttribute(param0->pokemonSprite[param3], MON_SPRITE_X_CENTER, param1);
    PokemonSprite_SetAttribute(param0->pokemonSprite[param3], MON_SPRITE_Y_CENTER, param2);
}

void ov21_021D2250(PokedexGraphicData *param0, int *param1, int *param2, int param3)
{
    *param1 = PokemonSprite_GetAttribute(param0->pokemonSprite[param3], MON_SPRITE_X_CENTER);
    *param2 = PokemonSprite_GetAttribute(param0->pokemonSprite[param3], MON_SPRITE_Y_CENTER);
}

PokemonSprite *ov21_021D2274(const PokedexGraphicData *param0, int param1)
{
    return param0->pokemonSprite[param1];
}

void ov21_021D2280(const PokedexGraphicData *param0, BOOL param1, int param2)
{
    if (param0->pokemonSprite[param2] == NULL) {
        return;
    }

    if (param1 == 1) {
        PokemonSprite_SetAttribute(param0->pokemonSprite[param2], MON_SPRITE_HIDE, 0);
    } else {
        PokemonSprite_SetAttribute(param0->pokemonSprite[param2], MON_SPRITE_HIDE, 1);
    }
}

Sprite *ov21_021D22A8(const PokedexGraphicData *param0)
{
    GF_ASSERT(param0->unk_1B0.unk_00);
    return param0->unk_1B0.unk_00;
}

Sprite *ov21_021D22C4(const PokedexGraphicData *param0)
{
    GF_ASSERT(param0->unk_1B0.unk_04);
    return param0->unk_1B0.unk_04;
}

void ov21_021D22E0(PokedexGraphicData *param0, UnkStruct_ov21_021D4CB8 *param1, int param2, int param3, u32 param4)
{
    ov21_021D22F8(&param0->unk_1B0, param1, param2, param3, param4);
}

void ov21_021D22F8(UnkStruct_ov21_021D22F8 *param0, UnkStruct_ov21_021D4CB8 *param1, int param2, int param3, u32 param4)
{
    if ((param3 == param0->unk_28) && (param4 == param0->unk_2C)) {
        sub_020129D0(param0->unk_08->unk_00, 1);
        return;
    } else {
        param0->unk_28 = param3;
        param0->unk_2C = param4;
    }

    if (param0->unk_08) {
        ov21_021D4D1C(param0->unk_08);
    }

    if (param2 != 0) {
        param0->unk_08 = ov21_021D4CB8(param1, param2);
    } else {
        param0->unk_08 = ov21_021D4CA0(param1);
    }
}

SpriteResource *ov21_021D2344(const PokedexGraphicData *param0, int param1)
{
    GF_ASSERT(param1 <= 3);
    return param0->unk_1B0.unk_0C[param1];
}

void ov21_021D2360(const PokedexGraphicData *param0, GXOamMode param1)
{
    Sprite_SetExplicitOAMMode(param0->unk_1B0.unk_00, param1);
    Sprite_SetExplicitOAMMode(param0->unk_1B0.unk_04, param1);
    sub_02012AF0(param0->unk_1B0.unk_08->unk_00, param1);
}

void ov21_021D238C(const PokedexGraphicData *param0, int param1)
{
    Sprite_SetExplicitPriority(param0->unk_1B0.unk_00, param1);
    Sprite_SetExplicitPriority(param0->unk_1B0.unk_04, param1);
    sub_02012A00(param0->unk_1B0.unk_08->unk_00, param1);
}

void ov21_021D23C0(const PokedexGraphicData *param0, BOOL param1)
{
    if (param0->unk_1B0.unk_00) {
        Sprite_SetDrawFlag(param0->unk_1B0.unk_00, param1);
    }

    if (param0->unk_1B0.unk_04) {
        Sprite_SetDrawFlag(param0->unk_1B0.unk_04, param1);
    }

    if (param0->unk_1B0.unk_08->unk_00) {
        sub_020129D0(param0->unk_1B0.unk_08->unk_00, param1);
    }
}

void ov21_021D23F8(UnkStruct_ov21_021D23F8 *param0, u8 param1, int param2, int param3, int param4, int param5, int param6, int param7, int param8)
{
    param0->unk_00 = param8;
    param0->unk_04 = param6;
    param0->unk_08 = param7 | GX_BLEND_PLANEMASK_BD;
    param0->unk_0C = param2;
    param0->unk_10 = param3 - param2;
    param0->unk_14 = param4;
    param0->unk_18 = param5 - param4;
    param0->unk_1C = param1;
    param0->unk_20 = 0;
}

BOOL ov21_021D2424(UnkStruct_ov21_021D23F8 *param0)
{
    int v0, v1;

    if (ov21_021D24EC(param0) == 0) {
        v0 = ov21_021D2484(param0);
        v1 = ov21_021D24B8(param0);

        if (param0->unk_00 == 0) {
            G2_SetBlendBrightnessExt(param0->unk_04, param0->unk_08, v0, 0, v1);
        } else {
            G2S_SetBlendBrightnessExt(param0->unk_04, param0->unk_08, v0, 0, v1);
        }

        param0->unk_20++;
    }

    return ov21_021D24EC(param0);
}

int ov21_021D2484(UnkStruct_ov21_021D23F8 *param0)
{
    fx32 v0;

    v0 = FX_Mul(param0->unk_18 << FX32_SHIFT, param0->unk_20 << FX32_SHIFT);
    v0 = FX_Div(v0, param0->unk_1C << FX32_SHIFT);

    return (v0 >> FX32_SHIFT) + param0->unk_14;
}

int ov21_021D24B8(UnkStruct_ov21_021D23F8 *param0)
{
    fx32 v0;

    v0 = FX_Mul(param0->unk_10 << FX32_SHIFT, param0->unk_20 << FX32_SHIFT);
    v0 = FX_Div(v0, param0->unk_1C << FX32_SHIFT);

    return (v0 >> FX32_SHIFT) + param0->unk_0C;
}

BOOL ov21_021D24EC(UnkStruct_ov21_021D23F8 *param0)
{
    if (param0->unk_20 <= param0->unk_1C) {
        return 0;
    }

    return 1;
}

void ov21_021D24FC(const PokedexGraphicData *param0, UnkStruct_ov21_021D23F8 *param1)
{
    PokemonSprite *v0;
    int v1 = -ov21_021D24B8(param1);
    v0 = ov21_021D2170(param0);

    PokemonSprite_StartFade(v0, v1, v1, 0, 0);
}

void ov21_021D251C(const PokedexGraphicData *param0, UnkStruct_ov21_021D23F8 *param1, int param2)
{
    PokemonSprite *v0;
    int v1 = -ov21_021D24B8(param1);
    v0 = ov21_021D2274(param0, param2);

    PokemonSprite_StartFade(v0, v1, v1, 0, 0);
}

void ov21_021D2544(const UnkStruct_ov21_021D4EE4 *param0, PokedexGraphicData *param1)
{
    int v0, v1, v2, v3;

    ov21_021D4F94(param0, &v0, &v1);
    ov21_021D4FBC(param0, &v2, &v3);
    ov21_021D2574(param1, v0, v1, v2, v3);
}

void ov21_021D2574(PokedexGraphicData *param0, int param1, int param2, int param3, int param4)
{
    ov21_021D3124(param0, param1, param2, param3, param4);
}

void ov21_021D2584(UnkStruct_ov21_021D2584 *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        Sprite_SetDrawFlag(param0->unk_00[v0], param1);
    }
}

BOOL ov21_021D25A0(UnkStruct_ov21_021D2584 *param0)
{
    return Sprite_GetDrawFlag(param0->unk_00[0]);
}

void ov21_021D25AC(UnkStruct_ov21_021D2584 *param0, BOOL param1)
{
    param0->unk_30 = param1;

    if (param1 == 0) {
        param0->unk_34 = 0;
    }
}

void ov21_021D25B8(const UnkStruct_ov21_021D4EE4 *param0, PokedexGraphicData *param1)
{
    int v0, v1, v2, v3;

    ov21_021D4F94(param0, &v0, &v1);
    ov21_021D4FBC(param0, &v2, &v3);
    ov21_021D25E8(param1, v0, v1, v2, v3);
}

void ov21_021D25E8(PokedexGraphicData *param0, int param1, int param2, int param3, int param4)
{
    param0->unk_1E0.unk_20 = param1;
    param0->unk_1E0.unk_24 = param2;
    param0->unk_1E0.unk_28 = param3;
    param0->unk_1E0.unk_2C = param4;

    ov21_021D30D8(&param0->unk_1E0, param0->unk_1E0.unk_20, param0->unk_1E0.unk_24, param0->unk_1E0.unk_28, param0->unk_1E0.unk_2C);

    param0->unk_218.unk_44 = param1;
    param0->unk_218.unk_48 = param2;
    param0->unk_218.unk_4C = param3;
    param0->unk_218.unk_50 = param4;
    param0->unk_218.unk_54 = 0;
}

void ov21_021D2648(UnkStruct_ov21_021D2648 *param0, int param1, int param2, int param3, int param4, int param5)
{
    param0->unk_00 = param1;
    param0->unk_04 = param3;
    param0->unk_08 = param1;
    param0->unk_0C = param3;
    param0->unk_10 = param2 - param1;
    param0->unk_14 = param4 - param3;
    param0->unk_1C = param5;
    param0->unk_18 = 0;
}

BOOL ov21_021D2664(UnkStruct_ov21_021D2648 *param0)
{
    fx32 v0, v1;

    v0 = FX_Mul(param0->unk_10 << FX32_SHIFT, param0->unk_18 << FX32_SHIFT);
    v0 = FX_Div(v0, param0->unk_1C << FX32_SHIFT);
    v1 = FX_Mul(param0->unk_14 << FX32_SHIFT, param0->unk_18 << FX32_SHIFT);
    v1 = FX_Div(v1, param0->unk_1C << FX32_SHIFT);

    param0->unk_00 = (v0 >> FX32_SHIFT) + param0->unk_08;
    param0->unk_04 = (v1 >> FX32_SHIFT) + param0->unk_0C;

    if ((param0->unk_18 + 1) <= param0->unk_1C) {
        param0->unk_18++;
        return 0;
    }

    param0->unk_18 = param0->unk_1C;
    return 1;
}

NARC *ov21_021D26E0(PokedexGraphicData *param0)
{
    return param0->pokedexGraphics;
}

static void *ov21_021D26E8(PokedexGraphicData *param0, u32 param1, BOOL param2, u32 heapID)
{
    void *v0 = NARC_AllocAndReadWholeMember(param0->pokedexGraphics, param1, heapID);

    if (v0 != NULL) {
        if (param2) {
            void *v1;

            v1 = Heap_AllocFromHeap(heapID, MI_GetUncompressedSize(v0));

            if (v1) {
                MI_UncompressLZ8(v0, v1);
                Heap_FreeToHeap(v0);
            }

            v0 = v1;
        }
    }

    return v0;
}

u32 ov21_021D2724(PokedexGraphicData *param0, u32 param1, BgConfig *param2, u32 param3, u32 param4, u32 param5, BOOL param6, u32 heapID)
{
    void *v0 = ov21_021D26E8(param0, param1, param6, heapID);

    if (v0 != NULL) {
        NNSG2dCharacterData *v1;

        if (NNS_G2dGetUnpackedBGCharacterData(v0, &v1)) {
            if (param5 == 0) {
                param5 = v1->szByte;
            }

            Bg_LoadTiles(param2, param3, v1->pRawData, param5, param4);
        }

        Heap_FreeToHeap(v0);
    }

    return param5;
}

void ov21_021D276C(PokedexGraphicData *param0, u32 param1, int param2, u32 param3, u32 param4, u32 heapID)
{
    static void (*const v0[])(const void *, u32, u32) = {
        GX_LoadBGPltt,
        GX_LoadOBJPltt,
        GX_LoadBGExtPltt,
        GX_LoadOBJExtPltt,
        GXS_LoadBGPltt,
        GXS_LoadOBJPltt,
        GXS_LoadBGExtPltt,
        GXS_LoadOBJExtPltt
    };

    void *v1 = ov21_021D26E8(param0, param1, 0, heapID);

    if (v1 != NULL) {
        NNSG2dPaletteData *v2;

        if (NNS_G2dGetUnpackedPaletteData(v1, &v2)) {
            if (param4 == 0) {
                param4 = v2->szByte;
            }

            DC_FlushRange(v2->pRawData, param4);
            v0[param2](v2->pRawData, param3, param4);
        }

        Heap_FreeToHeap(v1);
    }
}

void *ov21_021D27B8(PokedexGraphicData *param0, u32 param1, BOOL param2, NNSG2dScreenData **param3, u32 heapID)
{
    void *v0 = ov21_021D26E8(param0, param1, param2, heapID);

    if (v0 != NULL) {
        if (NNS_G2dGetUnpackedScreenData(v0, param3) == 0) {
            Heap_FreeToHeap(v0);
            return NULL;
        }
    }

    return v0;
}

void *ov21_021D27E0(PokedexGraphicData *param0, u32 param1, NNSG2dPaletteData **param2, u32 heapID)
{
    void *v0 = ov21_021D26E8(param0, param1, 0, heapID);

    if (v0 != NULL) {
        if (NNS_G2dGetUnpackedPaletteData(v0, param2) == 0) {
            Heap_FreeToHeap(v0);
            return NULL;
        }
    }

    return v0;
}

void *ov21_021D2808(PokedexGraphicData *param0, u32 param1, BOOL param2, NNSG2dCharacterData **param3, u32 heapID)
{
    void *v0 = ov21_021D26E8(param0, param1, param2, heapID);

    if (v0 != NULL) {
        if (NNS_G2dGetUnpackedBGCharacterData(v0, param3) == 0) {
            Heap_FreeToHeap(v0);
            return NULL;
        }
    }

    return v0;
}

static void ov21_021D2830(BgConfig *param0, int param1)
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
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 2, &v1, 0);
        Bg_ClearTilesRange(2, 32, 0, param1);
        Bg_ClearTilemap(param0, 2);
    }

    Bg_SetPriority(0, 2);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);

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

        Bg_InitFromTemplate(param0, 3, &v2, 0);
        Bg_ClearTilesRange(3, 32, 0, param1);
        Bg_ClearTilemap(param0, 3);
    }

    {
        BgTemplate v3 = {
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

        Bg_InitFromTemplate(param0, 5, &v3, 0);
        Bg_ClearTilesRange(5, 32, 0, param1);
        Bg_ClearTilemap(param0, 5);
    }

    {
        BgTemplate v4 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_01,
            2,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 6, &v4, 0);
        Bg_ClearTilesRange(6, 32, 0, param1);
        Bg_ClearTilemap(param0, 6);
    }

    {
        BgTemplate v5 = {
            0,
            0,
            0x400,
            0,
            1,
            GX_BG_COLORMODE_256,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            1,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(param0, 7, &v5, 1);
        Bg_ClearTilesRange(7, 64, 0, param1);
        Bg_ClearTilemap(param0, 7);
    }
}

static void ov21_021D299C(BgConfig *param0)
{
    Bg_FreeTilemapBuffer(param0, 1);
    Bg_FreeTilemapBuffer(param0, 2);
    Bg_FreeTilemapBuffer(param0, 3);
    Bg_FreeTilemapBuffer(param0, 5);
    Bg_FreeTilemapBuffer(param0, 7);
    Bg_FreeTilemapBuffer(param0, 6);
}

static void ov21_021D29D0(PokedexGraphicData *param0, int param1)
{
    Window_Add(param0->bgConfig, &param0->window, 1, 0, 0, 32, 32, 0, 0);
    Window_FillTilemap(&param0->window, 0);
    Window_CopyToVRAM(&param0->window);
}

static void ov21_021D2A00(PokedexGraphicData *param0)
{
    Window_Remove(&param0->window);
}

static void ov21_021D2A0C(PokedexGraphicData *param0, int heapID)
{
    NNSGfdTexKey v0;
    NNSGfdPlttKey v1;
    int v2;

    param0->unk_150 = PokemonSpriteManager_New(heapID);

    v0 = NNS_GfdAllocTexVram(0x8000, 0, 0);
    v1 = NNS_GfdAllocPlttVram(0x80, 0, NNS_GFD_ALLOC_FROM_LOW);

    PokemonSpriteManager_SetCharBaseAddrAndSize(param0->unk_150, NNS_GfdGetTexKeyAddr(v0), NNS_GfdGetTexKeySize(v0));
    PokemonSpriteManager_SetPlttBaseAddrAndSize(param0->unk_150, NNS_GfdGetPlttKeyAddr(v1), NNS_GfdGetPlttKeySize(v1));

    for (v2 = 0; v2 < 4; v2++) {
        param0->pokemonSprite[v2] = NULL;
    }

    {
        UnkStruct_ov22_022550D4 v3 = {
            .unk_00 = 8,
            .unk_04 = 8,
            .unk_08 = 8,
            .heapID = HEAP_ID_SYSTEM
        };

        v3.heapID = heapID;
        param0->unk_164 = sub_02015064(&v3);
    }
}

static void ov21_021D2AB4(PokedexGraphicData *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->pokemonSprite[v0]) {
            PokemonSprite_Delete(param0->pokemonSprite[v0]);
        }
    }

    PokemonSpriteManager_Free(param0->unk_150);
    sub_020150A8(param0->unk_164);
}

static void ov21_021D2AE8(PokedexGraphicData *param0, int param1)
{
    UnkStruct_ov21_021D22F8 *v0 = &param0->unk_1B0;
    NARC *v1 = ov21_021D26E0(param0);

    v0->unk_0C[0] = SpriteResourceCollection_AddTilesFrom(param0->spriteResourceCollection[0], v1, 78, 1, 3000, NNS_G2D_VRAM_TYPE_2DMAIN, param1);

    SpriteTransfer_RequestCharAtEnd(v0->unk_0C[0]);
    SpriteResource_ReleaseData(v0->unk_0C[0]);

    v0->unk_0C[1] = SpriteResourceCollection_AddPaletteFrom(param0->spriteResourceCollection[1], v1, 3, 0, 3000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param1);

    SpriteTransfer_RequestPlttFreeSpace(v0->unk_0C[1]);
    SpriteResource_ReleaseData(v0->unk_0C[1]);

    v0->unk_0C[2] = SpriteResourceCollection_AddFrom(param0->spriteResourceCollection[2], v1, 76, 1, 3000, 2, param1);
    v0->unk_0C[3] = SpriteResourceCollection_AddFrom(param0->spriteResourceCollection[3], v1, 77, 1, 3000, 3, param1);
}

void ov21_021D2B88(UnkStruct_ov21_021D22F8 *param0, SpriteResourceCollection **param1, int param2, NARC *param3)
{
    param0->unk_0C[0] = SpriteResourceCollection_AddTilesFrom(param1[0], param3, 78, 1, 3000, NNS_G2D_VRAM_TYPE_2DMAIN, param2);

    SpriteTransfer_RequestCharAtEnd(param0->unk_0C[0]);
    SpriteResource_ReleaseData(param0->unk_0C[0]);

    param0->unk_0C[1] = SpriteResourceCollection_AddPaletteFrom(param1[1], param3, 3, 0, 3000, NNS_G2D_VRAM_TYPE_2DMAIN, 1, param2);

    SpriteTransfer_RequestPlttFreeSpace(param0->unk_0C[1]);
    SpriteResource_ReleaseData(param0->unk_0C[1]);

    param0->unk_0C[2] = SpriteResourceCollection_AddFrom(param1[2], param3, 76, 1, 3000, 2, param2);
    param0->unk_0C[3] = SpriteResourceCollection_AddFrom(param1[3], param3, 77, 1, 3000, 3, param2);
}

static void ov21_021D2C10(PokedexGraphicData *param0)
{
    UnkStruct_ov21_021D22F8 *v0 = &param0->unk_1B0;

    SpriteTransfer_ResetCharTransfer(v0->unk_0C[0]);
    SpriteTransfer_ResetPlttTransfer(v0->unk_0C[1]);

    SpriteResourceCollection_Remove(param0->spriteResourceCollection[0], v0->unk_0C[0]);
    SpriteResourceCollection_Remove(param0->spriteResourceCollection[1], v0->unk_0C[1]);
    SpriteResourceCollection_Remove(param0->spriteResourceCollection[2], v0->unk_0C[2]);
    SpriteResourceCollection_Remove(param0->spriteResourceCollection[3], v0->unk_0C[3]);
}

void ov21_021D2C58(UnkStruct_ov21_021D22F8 *param0, SpriteResourceCollection **param1)
{
    SpriteTransfer_ResetCharTransfer(param0->unk_0C[0]);
    SpriteTransfer_ResetPlttTransfer(param0->unk_0C[1]);

    SpriteResourceCollection_Remove(param1[0], param0->unk_0C[0]);
    SpriteResourceCollection_Remove(param1[1], param0->unk_0C[1]);
    SpriteResourceCollection_Remove(param1[2], param0->unk_0C[2]);
    SpriteResourceCollection_Remove(param1[3], param0->unk_0C[3]);
}

static void ov21_021D2C8C(PokedexGraphicData *param0, int param1)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;

    SpriteResourcesHeader_Init(&v0, 3000, 3000, 3000, 3000, 0xffffffff, 0xffffffff, 0, 0, param0->spriteResourceCollection[0], param0->spriteResourceCollection[1], param0->spriteResourceCollection[2], param0->spriteResourceCollection[3], NULL, NULL);

    v1.list = param0->spriteList;
    v1.resourceData = &v0;
    v1.priority = 0;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param1;
    v1.position.x = 0;
    v1.position.y = 0;

    param0->unk_1B0.unk_00 = SpriteList_Add(&v1);

    Sprite_SetDrawFlag(param0->unk_1B0.unk_00, 0);
    Sprite_SetPriority(param0->unk_1B0.unk_00, 1);

    v1.position.x = 0;
    v1.position.y = 0;

    param0->unk_1B0.unk_04 = SpriteList_Add(&v1);

    Sprite_SetDrawFlag(param0->unk_1B0.unk_04, 0);
    Sprite_SetAnim(param0->unk_1B0.unk_04, 1);

    param0->unk_1B0.unk_08 = NULL;
    param0->unk_1B0.unk_28 = 0;
    param0->unk_1B0.unk_2C = 0;
}

static void ov21_021D2D4C(PokedexGraphicData *param0)
{
    Sprite_Delete(param0->unk_1B0.unk_00);
    param0->unk_1B0.unk_00 = NULL;

    Sprite_Delete(param0->unk_1B0.unk_04);
    param0->unk_1B0.unk_04 = NULL;

    if (param0->unk_1B0.unk_08) {
        ov21_021D4D1C(param0->unk_1B0.unk_08);
        param0->unk_1B0.unk_08 = NULL;
    }
}

void ov21_021D2D88(UnkStruct_ov21_021D22F8 *param0, SpriteList *param1, SpriteResourceCollection **param2, int param3, int param4)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;

    SpriteResourcesHeader_Init(&v0, 3000, 3000, 3000, 3000, 0xffffffff, 0xffffffff, 0, param4, param2[0], param2[1], param2[2], param2[3], NULL, NULL);

    v1.list = param1;
    v1.resourceData = &v0;
    v1.priority = 0;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
    v1.heapID = param3;
    v1.position.x = 0;
    v1.position.y = 0;

    param0->unk_00 = SpriteList_Add(&v1);

    Sprite_SetDrawFlag(param0->unk_00, 0);
    Sprite_SetPriority(param0->unk_00, 1);

    v1.position.x = 0;
    v1.position.y = 0;

    param0->unk_04 = SpriteList_Add(&v1);

    Sprite_SetDrawFlag(param0->unk_04, 0);
    Sprite_SetAnim(param0->unk_04, 1);

    param0->unk_08 = NULL;
    param0->unk_28 = 0;
    param0->unk_2C = 0;
}

void ov21_021D2E1C(UnkStruct_ov21_021D22F8 *param0)
{
    Sprite_Delete(param0->unk_00);
    param0->unk_00 = NULL;

    Sprite_Delete(param0->unk_04);
    param0->unk_04 = NULL;

    if (param0->unk_08) {
        ov21_021D4D1C(param0->unk_08);
        param0->unk_08 = NULL;
    }
}

void ov21_021D2E44(UnkStruct_ov21_021D22F8 *param0, BOOL param1)
{
    if (param0->unk_00) {
        Sprite_SetDrawFlag(param0->unk_00, param1);
    }

    if (param0->unk_04) {
        Sprite_SetDrawFlag(param0->unk_04, param1);
    }

    if (param0->unk_08->unk_00) {
        sub_020129D0(param0->unk_08->unk_00, param1);
    }
}

static void ov21_021D2E70(PokedexGraphicData *param0, int param1)
{
    UnkStruct_ov21_021D2584 *v0 = &param0->unk_1E0;
    NARC *v1 = ov21_021D26E0(param0);

    v0->unk_10[0] = SpriteResourceCollection_AddTilesFrom(param0->spriteResourceCollection[0], v1, 119, 1, 12000, NNS_G2D_VRAM_TYPE_2DSUB, param1);

    SpriteTransfer_RequestCharAtEnd(v0->unk_10[0]);
    SpriteResource_ReleaseData(v0->unk_10[0]);

    v0->unk_10[1] = SpriteResourceCollection_AddPaletteFrom(param0->spriteResourceCollection[1], v1, 21, 0, 12000, NNS_G2D_VRAM_TYPE_2DSUB, 1, param1);

    SpriteTransfer_RequestPlttFreeSpace(v0->unk_10[1]);
    SpriteResource_ReleaseData(v0->unk_10[1]);

    v0->unk_10[2] = SpriteResourceCollection_AddFrom(param0->spriteResourceCollection[2], v1, 120, 1, 12000, 2, param1);
    v0->unk_10[3] = SpriteResourceCollection_AddFrom(param0->spriteResourceCollection[3], v1, 118, 1, 12000, 3, param1);
}

static void ov21_021D2F14(PokedexGraphicData *param0)
{
    UnkStruct_ov21_021D2584 *v0 = &param0->unk_1E0;

    SpriteTransfer_ResetCharTransfer(v0->unk_10[0]);
    SpriteTransfer_ResetPlttTransfer(v0->unk_10[1]);

    SpriteResourceCollection_Remove(param0->spriteResourceCollection[0], v0->unk_10[0]);
    SpriteResourceCollection_Remove(param0->spriteResourceCollection[1], v0->unk_10[1]);
    SpriteResourceCollection_Remove(param0->spriteResourceCollection[2], v0->unk_10[2]);
    SpriteResourceCollection_Remove(param0->spriteResourceCollection[3], v0->unk_10[3]);
}

static void ov21_021D2F5C(PokedexGraphicData *param0, int param1)
{
    SpriteResourcesHeader v0;
    SpriteListTemplate v1;
    int v2;
    UnkStruct_ov21_021D2584 *v3 = &param0->unk_1E0;

    SpriteResourcesHeader_Init(&v0, 12000, 12000, 12000, 12000, 0xffffffff, 0xffffffff, 0, 0, param0->spriteResourceCollection[0], param0->spriteResourceCollection[1], param0->spriteResourceCollection[2], param0->spriteResourceCollection[3], NULL, NULL);

    v1.list = param0->spriteList;
    v1.resourceData = &v0;
    v1.priority = 0;
    v1.vramType = NNS_G2D_VRAM_TYPE_2DSUB;
    v1.heapID = param1;
    v1.position.y = (192 << FX32_SHIFT) + (100 * FX32_ONE);
    v1.position.x = (100 * FX32_ONE);

    for (v2 = 0; v2 < 4; v2++) {
        v3->unk_00[v2] = SpriteList_Add(&v1);
        Sprite_SetAnim(v3->unk_00[v2], v2);
    }

    ov21_021D2584(v3, 0);
    ov21_021D3034(param0);
    ov21_021D31D0(param0);
}

static void ov21_021D300C(PokedexGraphicData *param0)
{
    int v0;
    UnkStruct_ov21_021D2584 *v1 = &param0->unk_1E0;

    ov21_021D31F0(param0);
    ov21_021D3054(param0);

    for (v0 = 0; v0 < 4; v0++) {
        Sprite_Delete(v1->unk_00[v0]);
    }
}

static void ov21_021D3034(PokedexGraphicData *param0)
{
    param0->unk_270 = SysTask_Start(ov21_021D3064, &param0->unk_1E0, 1);
}

static void ov21_021D3054(PokedexGraphicData *param0)
{
    SysTask_Done(param0->unk_270);
}

static void ov21_021D3064(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021D2584 *v0 = param1;
    int v1;
    int v2, v3;
    fx32 v4;
    int v5;

    if (v0->unk_30) {
        ov21_021D30D8(v0, v0->unk_20, v0->unk_24, v0->unk_28, v0->unk_2C);
        return;
    }

    v0->unk_34 = (v0->unk_34 + 1) % (32 * 2);

    if (v0->unk_34 < 32) {
        v5 = v0->unk_34;
    } else {
        v5 = (32 * 2) - (v0->unk_34 + 1);
    }

    v4 = FX_Mul(4 << FX32_SHIFT, v5 << FX32_SHIFT);
    v4 = FX_Div(v4, 32 << FX32_SHIFT);
    v4 >>= FX32_SHIFT;
    v2 = v0->unk_28 + v4;
    v3 = v0->unk_2C + v4;

    ov21_021D30D8(v0, v0->unk_20, v0->unk_24, v2, v3);
}

static void ov21_021D30D8(UnkStruct_ov21_021D2584 *param0, int param1, int param2, int param3, int param4)
{
    VecFx32 v0;
    int v1, v2;
    int v3;

    for (v3 = 0; v3 < 4; v3++) {
        ov21_021D4FFC(v3, &v1, &v2, param1, param2, param3, param4);
        v0.x = v1 << FX32_SHIFT;
        v0.y = (v2 << FX32_SHIFT) + (192 << FX32_SHIFT);

        Sprite_SetPosition(param0->unk_00[v3], &v0);
    }
}

static void ov21_021D3124(PokedexGraphicData *param0, int param1, int param2, int param3, int param4)
{
    UnkStruct_ov21_021D3124 *v0 = &param0->unk_218;

    if ((v0->unk_44 == param1) && (v0->unk_48 == param2) && (v0->unk_4C == param3) && (v0->unk_50 == param4)) {
        return;
    }

    v0->unk_00 = &param0->unk_1E0;

    ov21_021D2648(&v0->unk_04, v0->unk_00->unk_20, param1, v0->unk_00->unk_24, param2, 3);
    ov21_021D2648(&v0->unk_24, v0->unk_00->unk_28, param3, v0->unk_00->unk_2C, param4, 3);

    v0->unk_44 = param1;
    v0->unk_48 = param2;
    v0->unk_4C = param3;
    v0->unk_50 = param4;
    v0->unk_54 = 1;
}

static void ov21_021D3194(SysTask *param0, void *param1)
{
    UnkStruct_ov21_021D3124 *v0 = param1;
    BOOL v1;

    if (v0->unk_54 == 0) {
        return;
    }

    v1 = ov21_021D2664(&v0->unk_04);
    ov21_021D2664(&v0->unk_24);

    v0->unk_00->unk_20 = v0->unk_04.unk_00;
    v0->unk_00->unk_24 = v0->unk_04.unk_04;
    v0->unk_00->unk_28 = v0->unk_24.unk_00;
    v0->unk_00->unk_2C = v0->unk_24.unk_04;

    if (v1 == 1) {
        v0->unk_54 = 0;
    }
}

static void ov21_021D31D0(PokedexGraphicData *param0)
{
    param0->unk_274 = SysTask_Start(ov21_021D3194, &param0->unk_218, 0);
}

static void ov21_021D31F0(PokedexGraphicData *param0)
{
    SysTask_Done(param0->unk_274);
    param0->unk_274 = NULL;
}
