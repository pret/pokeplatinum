#include "overlay017/ov17_022413D8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020954F0.h"
#include "struct_defs/struct_02095C48.h"

#include "battle_anim/is_form_symmetrical.h"
#include "overlay017/const_ov17_022536B4.h"
#include "overlay017/ov17_0223B140.h"
#include "overlay017/ov17_0223F118.h"
#include "overlay017/struct_ov17_0223F88C.h"
#include "overlay017/struct_ov17_0224145C.h"
#include "overlay017/struct_ov17_0224290C.h"
#include "overlay017/struct_ov17_0224365C.h"
#include "overlay017/struct_ov17_022439C8.h"
#include "overlay017/struct_ov17_022449B8.h"
#include "overlay017/struct_ov17_02246F24.h"
#include "overlay017/struct_ov17_022472F8.h"
#include "overlay017/struct_ov17_022538F0.h"

#include "assert.h"
#include "bg_window.h"
#include "game_options.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sound.h"
#include "sound_playback.h"
#include "sprite.h"
#include "sprite_system.h"
#include "strbuf.h"
#include "string_template.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "text.h"
#include "unk_02012744.h"
#include "unk_0208C098.h"
#include "unk_02094EDC.h"

typedef struct {
    UnkStruct_ov17_02246F24 *unk_00;
    u8 *unk_04;
    s16 unk_08;
    s16 unk_0A;
    u8 unk_0C;
    u8 unk_0D;
} UnkStruct_ov17_022426E8;

typedef struct {
    UnkStruct_ov17_02246F24 *unk_00;
    int unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    s8 unk_0F;
    u8 *unk_10;
} UnkStruct_ov17_022431A0;

typedef struct {
    ManagedSprite *unk_00;
    f32 unk_04;
    f32 unk_08;
    u8 unk_0C;
    u8 unk_0D;
} UnkStruct_ov17_02242048;

typedef struct {
    UnkStruct_ov17_02246F24 *unk_00;
    UnkStruct_ov17_0224145C *unk_04;
    ManagedSprite *unk_08;
    u8 *unk_0C;
    u32 unk_10;
    u32 unk_14;
    s32 unk_18;
    u16 unk_1C;
    u16 unk_1E;
    u8 unk_20;
    u8 unk_21;
    u8 unk_22;
    u8 unk_23;
    u8 unk_24;
} UnkStruct_ov17_0224331C;

typedef struct {
    UnkStruct_ov17_02246F24 *unk_00;
    u8 *unk_04;
    u8 unk_08;
    s8 unk_09;
    u8 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    s32 unk_10;
    s32 unk_14;
    u8 unk_18;
    union {
        struct {
            u8 unk_00;
        } unk_1C_val1;
        struct {
            u8 unk_00;
        } unk_1C_val2;
        struct {
            s32 unk_00;
            s32 unk_04;
            s16 unk_08;
            s16 unk_0A;
        } unk_1C_val3;
    };
} UnkStruct_ov17_02241B3C;

typedef struct {
    UnkStruct_ov17_0223F88C *unk_00;
    ManagedSprite *unk_04;
    ManagedSprite *unk_08;
    fx32 unk_0C;
    s32 unk_10;
    s32 unk_14;
    s32 unk_18;
    s32 unk_1C;
    s32 unk_20;
    s32 unk_24;
    s16 unk_28;
    s16 unk_2A;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    u8 unk_2F;
    u8 unk_30;
    u8 unk_31;
} UnkStruct_ov17_022422B8;

typedef struct {
    UnkStruct_ov17_02246F24 *unk_00;
    ManagedSprite *unk_04;
    u8 *unk_08;
    u16 unk_0C;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    s32 unk_14;
    s32 unk_18;
    s32 unk_1C;
    s32 unk_20;
    s16 unk_24;
} UnkStruct_ov17_022436D0;

void include_unk_ov17_02253784();
void ov17_02242EE4(UnkStruct_ov17_02246F24 *param0, int param1);
void ov17_02242FA4(UnkStruct_ov17_02246F24 *param0);
void ov17_02242FC0(UnkStruct_ov17_02246F24 *param0);
void ov17_02242FE8(UnkStruct_ov17_02246F24 *param0);
void ov17_022426E8(UnkStruct_ov17_02246F24 *param0, int param1, u8 *param2);
static void ov17_02242720(SysTask *param0, void *param1);
static void ov17_02242884(SysTask *param0, void *param1);
static void ov17_022431E8(SysTask *param0, void *param1);
static void ov17_02242048(ManagedSprite *param0);
static void ov17_0224207C(SysTask *param0, void *param1);
static void ov17_02241C2C(SysTask *param0, void *param1);
static void ov17_02241CF0(SysTask *param0, void *param1);
static void ov17_022434E0(SysTask *param0, void *param1);
static void ov17_022436A4(SysTask *param0, void *param1);
static void ov17_02243750(SysTask *param0, void *param1);
static void ov17_022414C0(SysTask *param0, void *param1);

static const SpriteTemplate Unk_ov17_022538BC = {
    0x60,
    0x28,
    0x0,
    0x0,
    0x2713,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x0, 0x0, 0x0, 0x0, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_02253820 = {
    0x60,
    0x20,
    0x0,
    0x0,
    0x2712,
    0x2,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80EC, 0x80E9, 0x80EC, 0x80EC, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_02253854 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x2710,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80ED, 0x80E9, 0x80ED, 0x80ED, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_02253888 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xB,
    0x3,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80EE, 0x80E9, 0x80EE, 0x80EE, 0xFFFFFFFF, 0xFFFFFFFF },
    0x0,
    0x0
};

static const SpriteTemplate Unk_ov17_022537EC = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xD,
    0x2,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F0, 0x80E9, 0x80F0, 0x80F0, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_0225371C = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xC,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80EF, 0x80E9, 0x80EF, 0x80EF, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

static const SpriteTemplate Unk_ov17_02253750 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xE,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F1, 0x80E9, 0x80F1, 0x80F1, 0xFFFFFFFF, 0xFFFFFFFF },
    0x0,
    0x0
};

static const SpriteTemplate Unk_ov17_02253784 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0xA,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F2, 0x80EE, 0x80F2, 0x80F2, 0xFFFFFFFF, 0xFFFFFFFF },
    0x0,
    0x0
};

static const SpriteTemplate Unk_ov17_022537B8 = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x2711,
    0x0,
    NNS_G2D_VRAM_TYPE_2DMAIN,
    { 0x80F5, 0x80E9, 0x80F3, 0x80F3, 0xFFFFFFFF, 0xFFFFFFFF },
    0x3,
    0x0
};

__attribute__((aligned(4))) static const s16 Unk_ov17_0225370C[4][2] = {
    { 0x5, 0x2B },
    { 0x5, 0x5B },
    { 0x5, 0x8B },
    { 0x5, 0xBB }
};

__attribute__((aligned(4))) static const s16 Unk_ov17_022536D8[(1 + 2)][2] = {
    { 0x58, 0xC },
    { 0x78, 0xC },
    { 0x98, 0xC }
};

static const struct {
    s16 unk_00;
    s16 unk_02;
} Unk_ov17_022536E4[] = {
    { 0x60, 0x14 },
    { 0x80, 0x14 },
    { 0xA0, 0x14 }
};

static const UnkStruct_ov17_022538F0 Unk_ov17_022538F0[] = {
    { 0x0, 0x0, 0x0 },
    { 0x0, 0x5, 0x1 },
    { 0x1, 0x5, 0x1 },
    { 0x2, 0x5, 0x1 },
    { 0x3, 0x1B, 0x0 },
    { 0x4, 0x0, 0x0 },
    { 0x5, 0x6, 0x0 },
    { 0x6, 0x1C, 0x0 },
    { 0x7, 0x1C, 0x0 },
    { 0x8, 0x1C, 0x0 },
    { 0x9, 0x1C, 0x0 },
    { 0xA, 0x6, 0x0 },
    { 0xB, 0x6, 0x0 },
    { 0xC, 0x6, 0x0 },
    { 0xD, 0x6, 0x0 },
    { 0xE, 0x6, 0x0 },
    { 0xF, 0x6, 0x0 },
    { 0x10, 0x6, 0x0 },
    { 0x11, 0x6, 0x0 },
    { 0x12, 0x6, 0x0 },
    { 0x13, 0x6, 0x0 },
    { 0x14, 0x6, 0x0 },
    { 0x15, 0x6, 0x0 },
    { 0x16, 0x0, 0x0 },
    { 0x17, 0x0, 0x0 },
    { 0x18, 0x0, 0x0 },
    { 0x19, 0x5, 0x0 },
    { 0x1A, 0x0, 0x0 },
    { 0x1B, 0x0, 0x0 },
    { 0x1C, 0x0, 0x0 },
    { 0x1D, 0x0, 0x0 },
    { 0x1E, 0x2, 0x0 },
    { 0x1F, 0x2, 0x0 },
    { 0x20, 0x2, 0x0 },
    { 0x21, 0x2, 0x0 },
    { 0x22, 0x2, 0x0 },
    { 0x23, 0x0, 0x0 },
    { 0x24, 0x0, 0x0 },
    { 0x25, 0x0, 0x0 },
    { 0x26, 0x0, 0x0 },
    { 0x27, 0x0, 0x0 },
    { 0x28, 0x0, 0x0 },
    { 0x44, 0x0, 0x0 },
    { 0x45, 0x0, 0x0 },
    { 0x46, 0x0, 0x0 },
    { 0x47, 0x0, 0x0 },
    { 0x48, 0x0, 0x1 }
};

__attribute__((aligned(4))) static const int Unk_ov17_022536FC[] = {
    0x0,
    0x28,
    0x46,
    0x64
};

__attribute__((aligned(4))) const u8 Unk_ov17_022536B4[] = {
    0x6,
    0x7,
    0xA,
    0xB
};

void include_unk_ov17_02253784()
{
    s16 dummy = Unk_ov17_02253784.x;
}

void ov17_022413D8(void)
{
    G2_BlendNone();
}

void ov17_022413E4(UnkStruct_ov17_02246F24 *param0, int param1, int param2)
{
    u16 *v0;
    int v1, v2;

    v0 = Bg_GetTilemapBuffer(param0->unk_0C.unk_24, 2);
    v0 = &v0[32 * (param1 * 6) + 0];

    for (v2 = 0; v2 < 6; v2++) {
        for (v1 = 0; v1 < 10; v1++) {
            v0[v2 * 32 + v1] = (v0[v2 * 32 + v1] & 0xfff) | (param2 << 12);
        }
    }
}

void ov17_02241428(UnkStruct_ov17_02246F24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov17_022413E4(param0, v0, Unk_ov17_022536B4[param0->unk_220.unk_01[v0]]);
    }

    Bg_ScheduleTilemapTransfer(param0->unk_0C.unk_24, 2);
}

UnkStruct_ov17_0224145C *ov17_0224145C(UnkStruct_ov17_02246F24 *param0, int param1)
{
    UnkStruct_ov17_0224145C *v0 = Heap_Alloc(HEAP_ID_21, sizeof(UnkStruct_ov17_0224145C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0224145C));

    v0->unk_00 = param0->unk_0C.unk_50;
    v0->unk_0A = param1;
    v0->unk_04 = SysTask_Start(ov17_022414C0, v0, (40000 + 100));

    return v0;
}

void ov17_02241494(UnkStruct_ov17_0224145C *param0)
{
    GF_ASSERT(param0->unk_0B == 0);

    SysTask_Done(param0->unk_04);
    Heap_Free(param0);
}

void ov17_022414B0(UnkStruct_ov17_0224145C *param0)
{
    param0->unk_0B = 1;
    param0->unk_08 = (10 << 8);
}

BOOL ov17_022414BC(UnkStruct_ov17_0224145C *param0)
{
    return param0->unk_0B;
}

static void ov17_022414C0(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224145C *v0 = param1;

    if (v0->unk_0B == 0) {
        return;
    }

    PaletteData_Blend(v0->unk_00, 0, Unk_ov17_022536B4[v0->unk_0A] * 16 + 1, 4, v0->unk_08 >> 8, 0x7fff);

    if (v0->unk_08 == 0) {
        v0->unk_0B = 0;
        return;
    }

    v0->unk_08 -= 0x280;

    if (v0->unk_08 < 0) {
        v0->unk_08 = 0;
    }
}

void ov17_02241524(UnkStruct_ov17_0223F88C *param0, int param1)
{
    PokemonSprite_Delete(param0->unk_08[param1]);

    GF_ASSERT(param0->pokemonSpriteDataArray[param1].tiles != NULL);
    MI_CpuClear8(param0->pokemonSpriteDataArray[param1].tiles, (32 * 10 * 10));

    param0->unk_08[param1] = sub_02095484(param0->unk_04, param1, param0->unk_00->unk_00[param1], 0, &param0->pokemonSpriteDataArray[param1], HEAP_ID_21, (256 - 40) - 32 * param1, (104 + 8) - 32 * param1, -0x200);

    PokemonSprite_SetAttribute(param0->unk_08[param1], MON_SPRITE_HIDE, 1);
    PokemonSprite_SetAttribute(param0->unk_08[param1], MON_SPRITE_HIDE_2, 1);

    {
        u32 v0, v1;

        v0 = Pokemon_GetValue(param0->unk_00->unk_00[param1], MON_DATA_SPECIES, NULL);
        v1 = Pokemon_GetValue(param0->unk_00->unk_00[param1], MON_DATA_FORM, NULL);

        if (IsFormSymmetrical(v0, v1) == 1) {
            PokemonSprite_SetAttribute(param0->unk_08[param1], MON_SPRITE_FLIP_H, 1);
        }
    }
}

void ov17_022415E4(UnkStruct_ov17_0223F88C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        GF_ASSERT(param0->pokemonSpriteDataArray[v0].tiles == NULL);

        param0->pokemonSpriteDataArray[v0].tiles = Heap_Alloc(HEAP_ID_21, (32 * 10 * 10));
        param0->unk_08[v0] = sub_02095484(param0->unk_04, v0, param0->unk_00->unk_00[v0], 0, &param0->pokemonSpriteDataArray[v0], HEAP_ID_21, (256 - 40) - 32 * v0, (104 + 8) - 32 * v0, -0x200);

        PokemonSprite_SetAttribute(param0->unk_08[v0], MON_SPRITE_HIDE, 1);
        PokemonSprite_SetAttribute(param0->unk_08[v0], MON_SPRITE_HIDE_2, 1);

        {
            u32 v1, v2;

            v1 = Pokemon_GetValue(param0->unk_00->unk_00[v0], MON_DATA_SPECIES, NULL);
            v2 = Pokemon_GetValue(param0->unk_00->unk_00[v0], MON_DATA_FORM, NULL);

            if (IsFormSymmetrical(v1, v2) == 1) {
                PokemonSprite_SetAttribute(param0->unk_08[v0], MON_SPRITE_FLIP_H, 1);
            }
        }
    }

    GF_ASSERT(param0->pokemonSpriteData.tiles == NULL);

    param0->pokemonSpriteData.tiles = Heap_Alloc(HEAP_ID_21, (32 * 10 * 10));
    param0->pokemonSpriteData.palette = param0->pokemonSpriteDataArray[0].palette;
    param0->pokemonSpriteData.narcID = param0->pokemonSpriteDataArray[0].narcID;

    MI_CpuClear32(param0->pokemonSpriteData.tiles, (32 * 10 * 10));
}

void ov17_022416E4(UnkStruct_ov17_0223F88C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        PokemonSprite_Delete(param0->unk_08[v0]);
        Heap_Free(param0->pokemonSpriteDataArray[v0].tiles);
        param0->pokemonSpriteDataArray[v0].tiles = NULL;
    }

    Heap_Free(param0->pokemonSpriteData.tiles);
    param0->pokemonSpriteData.tiles = NULL;
}

static ManagedSprite *ov17_02241720(PaletteData *param0, SpriteSystem *param1, SpriteManager *param2, const UnkStruct_020954F0 *param3, int param4, NARC *param5)
{
    ManagedSprite *v0;
    SpriteTemplate v1;
    u32 v2, v3, v4, v5;

    switch (param4) {
    case 0:
        v2 = 31;
        v3 = 1;
        v4 = 32;
        v5 = 30;
        break;
    case 1:
        v2 = 37;
        v3 = 3;
        v4 = 38;
        v5 = 36;
        break;
    default:
        v2 = 34;
        v3 = 2;
        v4 = 35;
        v5 = 33;
        break;
    }

    SpriteSystem_LoadCharResObjFromOpenNarc(param1, param2, param5, v2, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33001 + param4);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(param0, PLTTBUF_MAIN_OBJ, param1, param2, param5, v3, FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 33002 + param4);
    SpriteSystem_LoadCellResObjFromOpenNarc(param1, param2, param5, v4, TRUE, 33001 + param4);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param1, param2, param5, v5, TRUE, 33001 + param4);

    v1 = Unk_ov17_022538BC;
    v1.resources[0] = 33001 + param4;
    v1.resources[1] = 33002 + param4;
    v1.resources[2] = 33001 + param4;
    v1.resources[3] = 33001 + param4;
    v1.x = (8 * 12) + (4 * 8) * param4;
    v1.y = (8 * 5) + 0 * param4;

    v0 = SpriteSystem_NewSprite(param1, param2, &v1);
    Sprite_TickFrame(v0->sprite);

    return v0;
}

static void ov17_02241814(SpriteManager *param0, ManagedSprite *param1, int param2)
{
    Sprite_DeleteAndFreeResources(param1);
    SpriteManager_UnloadCharObjById(param0, 33001 + param2);
    SpriteManager_UnloadPlttObjById(param0, 33002 + param2);
    SpriteManager_UnloadCellObjById(param0, 33001 + param2);
    SpriteManager_UnloadAnimObjById(param0, 33001 + param2);
}

static void ov17_02241854(PaletteData *param0, SpriteSystem *param1, SpriteManager *param2, NARC *param3)
{
    u32 v0 = 39;
    u32 v1 = 40;
    u32 v2 = 41;

    SpriteSystem_LoadCharResObjFromOpenNarc(param1, param2, param3, v0, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33004);
    SpriteSystem_LoadCellResObjFromOpenNarc(param1, param2, param3, v1, TRUE, 33004);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param1, param2, param3, v2, TRUE, 33004);
}

static ManagedSprite *ov17_022418A4(SpriteSystem *param0, SpriteManager *param1, int param2)
{
    ManagedSprite *v0;
    SpriteTemplate v1;
    const int v2[] = {
        2,
        4,
        5,
    };

    v1 = Unk_ov17_02253820;
    v1.x = (8 * 12) + (4 * 8) * param2;
    v1.y = (8 * 4) + 0 * param2;
    v1.plttIdx = v2[param2];

    v0 = SpriteSystem_NewSprite(param0, param1, &v1);
    Sprite_TickFrame(v0->sprite);

    return v0;
}

static void ov17_02241900(ManagedSprite *param0)
{
    Sprite_DeleteAndFreeResources(param0);
}

static void ov17_02241908(SpriteManager *param0)
{
    SpriteManager_UnloadCharObjById(param0, 33004);
    SpriteManager_UnloadCellObjById(param0, 33004);
    SpriteManager_UnloadAnimObjById(param0, 33004);
}

void ov17_02241928(UnkStruct_ov17_0223F88C *param0, UnkStruct_02095C48 *param1, NARC *param2)
{
    int v0;

    ov17_02241854(param0->unk_50, param0->unk_18, param0->unk_1C, param2);

    for (v0 = 0; v0 < (1 + 2); v0++) {
        param0->unk_B4[v0] = ov17_022418A4(param0->unk_18, param0->unk_1C, v0);
        param0->unk_A8[v0] = ov17_02241720(param0->unk_50, param0->unk_18, param0->unk_1C, &param1->unk_00.unk_C0[v0], v0, param2);
    }
}

void ov17_0224197C(UnkStruct_ov17_0223F88C *param0)
{
    int v0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        ov17_02241814(param0->unk_1C, param0->unk_A8[v0], v0);
        ov17_02241900(param0->unk_B4[v0]);
    }

    ov17_02241908(param0->unk_1C);
}

void ov17_022419AC(PaletteData *param0, SpriteSystem *param1, SpriteManager *param2, NARC *param3)
{
    u32 v0 = 14;
    u32 v1 = 13;
    u32 v2 = 12;

    SpriteSystem_LoadCharResObjFromOpenNarc(param1, param2, param3, v0, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33013);
    SpriteSystem_LoadCellResObjFromOpenNarc(param1, param2, param3, v1, TRUE, 33011);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param1, param2, param3, v2, TRUE, 33011);
}

void ov17_02241A00(SpriteManager *param0)
{
    SpriteManager_UnloadCharObjById(param0, 33013);
    SpriteManager_UnloadCellObjById(param0, 33011);
    SpriteManager_UnloadAnimObjById(param0, 33011);
}

void ov17_02241A24(UnkStruct_ov17_0223F88C *param0)
{
    ManagedSprite *v0;
    SpriteTemplate v1;

    v1 = Unk_ov17_022537B8;
    v0 = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &v1);

    ManagedSprite_SetDrawFlag(v0, 0);
    Sprite_TickFrame(v0->sprite);

    param0->unk_17C = v0;
}

void ov17_02241A64(UnkStruct_ov17_0223F88C *param0)
{
    GF_ASSERT(param0->unk_17C != NULL);

    Sprite_DeleteAndFreeResources(param0->unk_17C);
    param0->unk_17C = NULL;
}

void ov17_02241A8C(UnkStruct_ov17_0223F88C *param0, int param1, int param2)
{
    GF_ASSERT(param0->unk_17C != NULL);

    ManagedSprite_SetPositionXY(param0->unk_17C, Unk_ov17_022536E4[param1].unk_00, Unk_ov17_022536E4[param1].unk_02);
    ManagedSprite_SetAnim(param0->unk_17C, param2);
    ManagedSprite_SetDrawFlag(param0->unk_17C, 1);

    switch (param2) {
    case 0:
        Sound_PlayEffect(SEQ_SE_DP_CON_003);
        break;
    case 1:
        Sound_PlayEffect(SEQ_SE_DP_CON_001);
        break;
    case 2:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        break;
    case 3:
        Sound_PlayEffect(SEQ_SE_DP_DECIDE);
        break;
    }
}

void ov17_02241B1C(UnkStruct_ov17_0223F88C *param0)
{
    GF_ASSERT(param0->unk_17C != NULL);
    ManagedSprite_SetDrawFlag(param0->unk_17C, 0);
}

void ov17_02241B3C(UnkStruct_ov17_02246F24 *param0, int param1, int param2, u8 *param3)
{
    UnkStruct_ov17_02241B3C *v0 = Heap_Alloc(HEAP_ID_21, sizeof(UnkStruct_ov17_02241B3C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_02241B3C));

    *param3 = 0;

    v0->unk_04 = param3;
    v0->unk_00 = param0;
    v0->unk_08 = param1;

    ManagedSprite_GetPositionXY(param0->unk_0C.unk_A8[param1], &v0->unk_0C, &v0->unk_0E);

    switch (param2) {
    case 0:
    default:
        v0->unk_18 = 1;
        v0->unk_1C_val3.unk_08 = -0x200;
        v0->unk_1C_val3.unk_0A = -0x200;
        SysTask_Start(ov17_02241CF0, v0, 40000);
        break;
    case 1:
        SysTask_Start(ov17_02241C2C, v0, 40000);
        break;
    case 2:
        v0->unk_1C_val3.unk_08 = -0x300;
        SysTask_Start(ov17_02241CF0, v0, 40000);
        break;
    case 3:
        v0->unk_1C_val3.unk_08 = -0x400;
        SysTask_Start(ov17_02241CF0, v0, 40000);
        break;
    case 4:
        v0->unk_1C_val3.unk_08 = -0x480;
        SysTask_Start(ov17_02241CF0, v0, 40000);
        break;
    case 5:
        v0->unk_1C_val3.unk_08 = -0x280;
        SysTask_Start(ov17_02241CF0, v0, 40000);
        break;
    case 6:
        v0->unk_1C_val3.unk_08 = -0x100;
        SysTask_Start(ov17_02241CF0, v0, 40000);
        break;
    }
}

static void ov17_02241C2C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02241B3C *v0 = param1;

    switch (v0->unk_0A) {
    case 0:
        v0->unk_10 = v0->unk_0C * 0x100;
        v0->unk_14 = v0->unk_0E * 0x100;
        v0->unk_0A++;
    case 1:
        if (v0->unk_18 & 1) {
            v0->unk_10 = v0->unk_0C * 0x100 + 0x200;
        } else {
            v0->unk_10 = v0->unk_0C * 0x100 - 0x200;
        }

        v0->unk_18++;

        if (v0->unk_18 > 4) {
            v0->unk_10 = v0->unk_0C * 0x100;
            v0->unk_18 = 0;
            v0->unk_0A++;
        }
        break;
    case 2:
        v0->unk_09++;

        if (v0->unk_09 > 15) {
            v0->unk_09 = 0;
            v0->unk_0A++;
        }
        break;
    default:
        *(v0->unk_04) = 1;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }

    ManagedSprite_SetPositionXY(v0->unk_00->unk_0C.unk_A8[v0->unk_08], v0->unk_10 / 0x100, v0->unk_14 / 0x100);
}

static void ov17_02241CF0(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02241B3C *v0 = param1;

    switch (v0->unk_0A) {
    case 0:
        v0->unk_10 = v0->unk_0C * 0x100;
        v0->unk_14 = v0->unk_0E * 0x100;
        v0->unk_0A++;
    case 1:
        v0->unk_14 += v0->unk_1C_val3.unk_08;
        v0->unk_1C_val3.unk_08 += (0x100 / 2);

        if (v0->unk_14 >= v0->unk_0E * 0x100) {
            v0->unk_14 = v0->unk_0E * 0x100;

            if (v0->unk_18 > 0) {
                v0->unk_1C_val3.unk_08 = v0->unk_1C_val3.unk_0A;
                v0->unk_18--;
                v0->unk_0A--;
            } else {
                v0->unk_0A++;
            }
        }

        ManagedSprite_SetPositionXY(v0->unk_00->unk_0C.unk_A8[v0->unk_08], v0->unk_10 / 0x100, v0->unk_14 / 0x100);
        break;
    default:
        *(v0->unk_04) = 1;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

void ov17_02241D94(UnkStruct_ov17_0223F88C *param0, int param1, NARC *param2)
{
    GF_ASSERT(param0->unk_C0 == NULL);

    SpriteSystem_LoadCharResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param2, 20, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33005);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param2, 19, TRUE, 33005);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0->unk_18, param0->unk_1C, param2, 18, TRUE, 33005);

    param0->unk_C0 = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &Unk_ov17_02253854);

    Sprite_TickFrame(param0->unk_C0->sprite);
    ManagedSprite_SetPositionXY(param0->unk_C0, (8 * 12) + (4 * 8) * param1, (7 * 8));
}

void ov17_02241E24(UnkStruct_ov17_0223F88C *param0)
{
    SpriteManager_UnloadCharObjById(param0->unk_1C, 33005);
    SpriteManager_UnloadCellObjById(param0->unk_1C, 33005);
    SpriteManager_UnloadAnimObjById(param0->unk_1C, 33005);
    Sprite_DeleteAndFreeResources(param0->unk_C0);

    param0->unk_C0 = NULL;
}

void ov17_02241E58(SpriteSystem *param0, SpriteManager *param1, NARC *param2)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0, param1, param2, 17, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33006);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0, param1, param2, 16, TRUE, 33006);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0, param1, param2, 15, TRUE, 33006);
}

void ov17_02241EA4(SpriteManager *param0)
{
    SpriteManager_UnloadCharObjById(param0, 33006);
    SpriteManager_UnloadCellObjById(param0, 33006);
    SpriteManager_UnloadAnimObjById(param0, 33006);
}

static inline void inline_ov17_02241EC4(UnkStruct_ov17_0223F88C *param0, int param1, int param2)
{
    if (param0->unk_C4[param1][param2] != NULL) {
        Sprite_DeleteAndFreeResources(param0->unk_C4[param1][param2]);
        param0->unk_C4[param1][param2] = NULL;
    }
}

static void ov17_02241EC4(UnkStruct_ov17_0223F88C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 6; v0++) {
        inline_ov17_02241EC4(param0, param1, v0);
    }
}

void ov17_02241EF0(UnkStruct_ov17_0223F88C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov17_02241EC4(param0, v0);
    }
}

static ManagedSprite *ov17_02241F08(SpriteSystem *param0, SpriteManager *param1, int param2, int param3)
{
    ManagedSprite *v0 = SpriteSystem_NewSprite(param0, param1, &Unk_ov17_02253888);

    Sprite_TickFrame(v0->sprite);
    ManagedSprite_SetPositionXY(v0, param2, param3);

    return v0;
}

void ov17_02241F34(UnkStruct_ov17_0223F88C *param0, int param1, int param2, int param3)
{
    int v0, v1, v2, v3;

    v0 = param3 / 10;

    if (v0 > 6 * 4) {
        v0 = 6 * 4;
    }

    for (v1 = v0; v1 < 6; v1++) {
        inline_ov17_02241EC4(param0, param1, v1);
    }

    for (v1 = v0 - 1; v1 > -1; v1--) {
        v2 = v1 % 6;
        v3 = v1 / 6;

        if (param0->unk_C4[param1][v2] == NULL) {
            param0->unk_C4[param1][v2] = ov17_02241F08(param0->unk_18, param0->unk_1C, Unk_ov17_0225370C[param2][0] + v2 * 8, Unk_ov17_0225370C[param2][1]);
            ManagedSprite_SetAnim(param0->unk_C4[param1][v2], v3);
            ov17_02242048(param0->unk_C4[param1][v2]);
        } else if (ManagedSprite_GetActiveAnim(param0->unk_C4[param1][v2]) < v3) {
            ManagedSprite_SetAnim(param0->unk_C4[param1][v2], v3);
            ov17_02242048(param0->unk_C4[param1][v2]);
        }
    }

    Sound_PlayEffect(SEQ_SE_DP_CON_003);
    Sound_SetPitchForSequence(1761, 0xffff, 64 * (v0 - 1));
}

static void ov17_02242048(ManagedSprite *param0)
{
    UnkStruct_ov17_02242048 *v0 = Heap_Alloc(HEAP_ID_21, sizeof(UnkStruct_ov17_02242048));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_02242048));
    v0->unk_00 = param0;

    ManagedSprite_SetDrawFlag(param0, 0);
    SysTask_Start(ov17_0224207C, v0, 40000);
}

static void ov17_0224207C(SysTask *param0, void *param1)
{
    UnkStruct_ov17_02242048 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        ManagedSprite_SetAffineOverwriteMode(v0->unk_00, AFFINE_OVERWRITE_MODE_DOUBLE);
        v0->unk_04 = (0.1f);
        v0->unk_08 = (0.1f);
        ManagedSprite_SetDrawFlag(v0->unk_00, TRUE);
        v0->unk_0C++;
    case 1:
        v0->unk_04 += (0.3f);
        v0->unk_08 += (0.3f);

        ManagedSprite_SetAffineScale(v0->unk_00, v0->unk_04, v0->unk_08);
        ManagedSprite_OffsetAffineZRotation(v0->unk_00, 0);

        if (v0->unk_04 >= (1.5f)) {
            v0->unk_0C++;
        }
        break;
    case 2:
        v0->unk_04 -= (0.3f);
        v0->unk_08 -= (0.3f);

        ManagedSprite_SetAffineScale(v0->unk_00, v0->unk_04, v0->unk_08);
        ManagedSprite_OffsetAffineZRotation(v0->unk_00, 0);

        if (v0->unk_04 <= (1.0f)) {
            ManagedSprite_SetAffineScale(v0->unk_00, (1.0f), (1.0f));
            ManagedSprite_SetAffineZRotation(v0->unk_00, 0);
            v0->unk_0C++;
        }
        break;
    default:
        ManagedSprite_SetAffineOverwriteMode(v0->unk_00, AFFINE_OVERWRITE_MODE_NONE);
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

void ov17_02242154(SpriteSystem *param0, SpriteManager *param1, NARC *param2)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0, param1, param2, 26, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33008);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0, param1, param2, 25, TRUE, 33008);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0, param1, param2, 24, TRUE, 33008);
    SpriteSystem_LoadCharResObjFromOpenNarc(param0, param1, param2, 29, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33007);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0, param1, param2, 28, TRUE, 33007);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0, param1, param2, 27, TRUE, 33007);
}

void ov17_022421E0(SpriteManager *param0)
{
    SpriteManager_UnloadCharObjById(param0, 33008);
    SpriteManager_UnloadCellObjById(param0, 33008);
    SpriteManager_UnloadAnimObjById(param0, 33008);
    SpriteManager_UnloadCharObjById(param0, 33007);
    SpriteManager_UnloadCellObjById(param0, 33007);
    SpriteManager_UnloadAnimObjById(param0, 33007);
}

static inline void inline_ov17_0224221C(UnkStruct_ov17_0223F88C *param0, int param1, int param2)
{
    Sprite_DeleteAndFreeResources(param0->unk_124[param1][param2]);
    param0->unk_124[param1][param2] = NULL;
}

static void ov17_0224221C(UnkStruct_ov17_0223F88C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_124[param1][v0] != NULL) {
            inline_ov17_0224221C(param0, param1, v0);
        }
    }
}

void ov17_02242248(UnkStruct_ov17_0223F88C *param0)
{
    int v0;

    for (v0 = 0; v0 < (1 + 2); v0++) {
        ov17_0224221C(param0, v0);
    }
}

static ManagedSprite *ov17_02242260(SpriteSystem *param0, SpriteManager *param1, int param2, int param3)
{
    ManagedSprite *v0 = SpriteSystem_NewSprite(param0, param1, &Unk_ov17_022537EC);

    Sprite_TickFrame(v0->sprite);
    ManagedSprite_SetPositionXY(v0, param2, param3);

    return v0;
}

static ManagedSprite *ov17_0224228C(SpriteSystem *param0, SpriteManager *param1, int param2, int param3)
{
    ManagedSprite *v0 = SpriteSystem_NewSprite(param0, param1, &Unk_ov17_0225371C);

    Sprite_TickFrame(v0->sprite);
    ManagedSprite_SetPositionXY(v0, param2, param3);

    return v0;
}

static void ov17_022422B8(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022422B8 *v0 = param1;

    switch (v0->unk_2E) {
    case 0:
        ManagedSprite_SetAffineOverwriteMode(v0->unk_04, AFFINE_OVERWRITE_MODE_NORMAL);

        v0->unk_20 = v0->unk_10 + (32 << 8);
        v0->unk_24 = v0->unk_14 + (72 << 8);
        v0->unk_28 = (v0->unk_20 - v0->unk_10) / 10;
        v0->unk_2A = (v0->unk_24 - v0->unk_14) / 10;
        v0->unk_2E++;
    case 1:
        v0->unk_10 += v0->unk_28;
        v0->unk_14 += v0->unk_2A;

        if (((v0->unk_28 > 0) && (v0->unk_10 >= v0->unk_20)) || ((v0->unk_28 < 0) && (v0->unk_10 <= v0->unk_20))) {
            v0->unk_2E++;
        }
        break;
    case 2:
        v0->unk_2F++;

        if (v0->unk_2F > 3) {
            v0->unk_2F = 0;
            v0->unk_2E++;
        }
        break;
    case 3:
        v0->unk_20 = v0->unk_2C << 8;
        v0->unk_24 = v0->unk_2D << 8;
        v0->unk_28 = (v0->unk_20 - v0->unk_10) / 6;
        v0->unk_2A = (v0->unk_24 - v0->unk_14) / 6;
        v0->unk_2E++;
    case 4:
        v0->unk_10 += v0->unk_28;
        v0->unk_14 += v0->unk_2A;

        if (((v0->unk_28 > 0) && (v0->unk_10 >= v0->unk_20)) || ((v0->unk_28 < 0) && (v0->unk_10 <= v0->unk_20))) {
            v0->unk_10 = v0->unk_2C << 8;
            v0->unk_14 = v0->unk_2D << 8;
            v0->unk_2E++;
        }
        break;
    case 5:
        v0->unk_2F++;

        if (v0->unk_2F > 2) {
            v0->unk_2F = 0;
            v0->unk_2E++;
        }
        break;
    default:
        Sprite_DeleteAndFreeResources(v0->unk_04);
        ManagedSprite_SetDrawFlag(v0->unk_08, 1);
        Sound_PlayEffect(SEQ_SE_DP_CON_002);
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }

    ManagedSprite_OffsetAffineZRotation(v0->unk_04, 0x2000);
    ManagedSprite_SetPositionXY(v0->unk_04, v0->unk_10 / 0x100, v0->unk_14 / 0x100);
}

BOOL ov17_022424A8(UnkStruct_ov17_0223F88C *param0, int param1)
{
    int v0;

    for (v0 = 0; v0 < 5; v0++) {
        if (param0->unk_124[param1][v0] != NULL) {
            if (ManagedSprite_GetDrawFlag(param0->unk_124[param1][v0]) == 0) {
                return 0;
            }
        }
    }

    return 1;
}

void ov17_022424D4(UnkStruct_ov17_0223F88C *param0, int param1, int param2)
{
    int v0, v1;
    UnkStruct_ov17_022422B8 *v2;

    v0 = param2 / 10;
    GF_ASSERT(v0 <= 5);

    for (v1 = 0; v1 < v0; v1++) {
        if (param0->unk_124[param1][v1] == NULL) {
            param0->unk_124[param1][v1] = ov17_02242260(param0->unk_18, param0->unk_1C, Unk_ov17_022536D8[param1][0] + v1 * 5, Unk_ov17_022536D8[param1][1]);
            ManagedSprite_SetDrawFlag(param0->unk_124[param1][v1], 0);

            v2 = Heap_Alloc(HEAP_ID_21, sizeof(UnkStruct_ov17_022422B8));
            MI_CpuClear8(v2, sizeof(UnkStruct_ov17_022422B8));

            v2->unk_00 = param0;
            v2->unk_08 = param0->unk_124[param1][v1];
            v2->unk_04 = ov17_0224228C(param0->unk_18, param0->unk_1C, Unk_ov17_022536E4[param1].unk_00, Unk_ov17_022536E4[param1].unk_02);
            v2->unk_10 = Unk_ov17_022536E4[param1].unk_00 << 8;
            v2->unk_14 = Unk_ov17_022536E4[param1].unk_02 << 8;
            v2->unk_2C = Unk_ov17_022536D8[param1][0] + v1 * 5;
            v2->unk_2D = Unk_ov17_022536D8[param1][1];
            v2->unk_30 = param1;
            v2->unk_31 = param2;

            SysTask_Start(ov17_022422B8, v2, 40000);
        }
    }

    for (; v1 < 5; v1++) {
        if (param0->unk_124[param1][v1] != NULL) {
            inline_ov17_0224221C(param0, param1, v1);
        }
    }
}

static void ov17_0224262C(UnkStruct_ov17_02246F24 *param0, GXOamMode param1, int param2)
{
    int v0, v1;
    int v2, v3;

    if (param2 == 1) {
        v2 = 1;
        v3 = 1;
    } else {
        v2 = 0;
        v3 = 0;
    }

    for (v0 = 0; v0 < 4; v0++) {
        for (v1 = 0; v1 < 6; v1++) {
            if (param0->unk_0C.unk_C4[v0][v1] != NULL) {
                ManagedSprite_SetExplicitOamMode(param0->unk_0C.unk_C4[v0][v1], param1);
                ManagedSprite_SetDrawFlag(param0->unk_0C.unk_C4[v0][v1], v2);
            }
        }

        if (param0->unk_0C.unk_160[v0] != NULL) {
            ManagedSprite_SetExplicitOamMode(param0->unk_0C.unk_160[v0], param1);
            ManagedSprite_SetDrawFlag(param0->unk_0C.unk_160[v0], v2);
        }

        sub_02012AF0(param0->unk_0C.unk_180[v0].unk_00, param1);
        sub_02012AF0(param0->unk_0C.unk_1C8[v0].unk_00, param1);
        sub_020129D0(param0->unk_0C.unk_180[v0].unk_00, v3);
        sub_020129D0(param0->unk_0C.unk_1C8[v0].unk_00, v3);
    }
}

void ov17_022426E8(UnkStruct_ov17_02246F24 *param0, int param1, u8 *param2)
{
    UnkStruct_ov17_022426E8 *v0;

    *param2 = 0;

    v0 = Heap_Alloc(HEAP_ID_21, sizeof(UnkStruct_ov17_022426E8));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_022426E8));

    v0->unk_00 = param0;
    v0->unk_0D = param1;
    v0->unk_04 = param2;

    SysTask_Start(ov17_02242720, v0, 1000);
}

static void ov17_02242720(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022426E8 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        if (v0->unk_0D == 0) {
            v0->unk_08 = 16 << 8;
            v0->unk_0A = 0;
            G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG1, 16, 0);
            ov17_0224262C(v0->unk_00, GX_OAM_MODE_XLU, 1);
        } else {
            v0->unk_08 = 0;
            v0->unk_0A = 16 << 8;
            G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG1, 0, 16);
            ov17_0223BB14(v0->unk_00, 0, 1);
        }

        SysTask_ExecuteAfterVBlank(ov17_02242884, v0, 10);
        v0->unk_0C++;
        break;
    case 1:
        if ((v0->unk_0D == 0) && (v0->unk_08 == 0)) {
            ov17_0224262C(v0->unk_00, GX_OAM_MODE_NORMAL, 0);
            v0->unk_0C++;
        } else if ((v0->unk_0D == 1) && (v0->unk_0A == 0)) {
            v0->unk_0C++;
        }
        break;
    case 2:
        if (v0->unk_0D == 0) {
            v0->unk_08 = 16 << 8;
            v0->unk_0A = 0;
            G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_BG1, 16, 0);
        } else {
            v0->unk_08 = 0;
            v0->unk_0A = 16 << 8;
            G2_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG3, 0, 16);
            ov17_0224262C(v0->unk_00, GX_OAM_MODE_XLU, 1);
        }

        SysTask_ExecuteAfterVBlank(ov17_02242884, v0, 10);
        v0->unk_0C++;
        break;
    case 3:
        if ((v0->unk_0D == 0) && (v0->unk_08 == 0)) {
            ov17_0223BB14(v0->unk_00, 1, 1);
            v0->unk_0C++;
        } else if ((v0->unk_0D == 1) && (v0->unk_0A == 0)) {
            ov17_0224262C(v0->unk_00, GX_OAM_MODE_NORMAL, 1);
            v0->unk_0C++;
        }
        break;
    default:
        ov17_022413D8();
        *(v0->unk_04) = 1;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

static void ov17_02242884(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022426E8 *v0 = param1;
    int v1 = 0;

    if (v0->unk_0D == 0) {
        v0->unk_08 -= 0x800;
        v0->unk_0A += 0x800;

        if (v0->unk_08 <= 0) {
            v0->unk_08 = 0;
            v1++;
        }

        if (v0->unk_0A >= (16 << 8)) {
            v0->unk_0A = 16 << 8;
        }
    } else {
        v0->unk_08 += 0x800;
        v0->unk_0A -= 0x800;

        if (v0->unk_08 >= (16 << 8)) {
            v0->unk_08 = 16 << 8;
            v1++;
        }

        if (v0->unk_0A <= 0) {
            v0->unk_0A = 0;
        }
    }

    G2_ChangeBlendAlpha(v0->unk_08 >> 8, v0->unk_0A >> 8);

    if (v1 > 0) {
        SysTask_Done(param0);
        return;
    }
}

static void ov17_0224290C(UnkStruct_ov17_02246F24 *param0, int param1, const UnkStruct_ov17_022449B8 *param2, const void *param3)
{
    GF_ASSERT(param1 < 2 || param2 != NULL);

    if (param2 != NULL) {
        (void)0;
    }

    switch (param1) {
    case 0:
        break;
    case 1:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param0->unk_304.unk_00]));
        break;
    case 2:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    case 3:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_01]));
        break;
    case 4:
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 0, param2->unk_02);
        break;
    case 5:
        StringTemplate_SetNumber(param0->unk_0C.unk_48, 0, param2->unk_04, 1, 0, 1);
        break;
    case 6:
        StringTemplate_SetContestJudgeName(param0->unk_0C.unk_48, 0, param0->unk_0C.unk_00->unk_C0[param2->unk_05].unk_00);
        break;
    case 7:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_01]));
        break;
    case 8:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 1, param2->unk_02);
        break;
    case 9:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        StringTemplate_SetNumber(param0->unk_0C.unk_48, 1, param2->unk_04, 1, 0, 1);
        break;
    case 10:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        StringTemplate_SetContestJudgeName(param0->unk_0C.unk_48, 1, param0->unk_0C.unk_00->unk_C0[param2->unk_05].unk_00);
        break;
    case 11:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_01]));
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    case 12:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_01]));
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 1, param2->unk_02);
        break;
    case 13:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_01]));
        StringTemplate_SetNumber(param0->unk_0C.unk_48, 1, param2->unk_04, 1, 0, 1);
        break;
    case 14:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_01]));
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    case 15:
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 0, param2->unk_02);
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    case 16:
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 0, param2->unk_02);
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_01]));
        break;
    case 17:
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 0, param2->unk_02);
        StringTemplate_SetNumber(param0->unk_0C.unk_48, 1, param2->unk_04, 1, 0, 1);
        break;
    case 18:
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 0, param2->unk_02);
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    case 19:
        StringTemplate_SetNumber(param0->unk_0C.unk_48, 0, param2->unk_04, 1, 0, 1);
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    case 20:
        StringTemplate_SetNumber(param0->unk_0C.unk_48, 0, param2->unk_04, 1, 0, 1);
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_01]));
        break;
    case 21:
        StringTemplate_SetNumber(param0->unk_0C.unk_48, 0, param2->unk_04, 1, 0, 1);
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 1, param2->unk_02);
        break;
    case 22:
        StringTemplate_SetNumber(param0->unk_0C.unk_48, 0, param2->unk_04, 1, 0, 1);
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    case 23:
        StringTemplate_SetContestJudgeName(param0->unk_0C.unk_48, 0, param0->unk_0C.unk_00->unk_C0[param2->unk_05].unk_00);
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        break;
    case 24:
        StringTemplate_SetContestJudgeName(param0->unk_0C.unk_48, 0, param0->unk_0C.unk_00->unk_C0[param2->unk_05].unk_00);
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_01]));
        break;
    case 25:
        StringTemplate_SetContestJudgeName(param0->unk_0C.unk_48, 0, param0->unk_0C.unk_00->unk_C0[param2->unk_05].unk_00);
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 1, param2->unk_02);
        break;
    case 26:
        StringTemplate_SetContestJudgeName(param0->unk_0C.unk_48, 0, param0->unk_0C.unk_00->unk_C0[param2->unk_05].unk_00);
        StringTemplate_SetNumber(param0->unk_0C.unk_48, 1, param2->unk_04, 1, 0, 1);
        break;
    case 27:
        StringTemplate_SetNickname(param0->unk_0C.unk_48, 0, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[param2->unk_00]));
        StringTemplate_SetContestJudgeName(param0->unk_0C.unk_48, 1, param0->unk_0C.unk_00->unk_C0[param2->unk_05].unk_00);
        StringTemplate_SetMoveName(param0->unk_0C.unk_48, 2, param2->unk_02);
        break;
    case 28: {
        const UnkStruct_ov17_0224290C *v0 = param3;
        int v1;

        StringTemplate_SetContestJudgeName(param0->unk_0C.unk_48, 0, param0->unk_0C.unk_00->unk_C0[v0->unk_00].unk_00);

        for (v1 = 0; v1 < 4; v1++) {
            if (v0->unk_01[v1] == 4) {
                break;
            }

            StringTemplate_SetNickname(param0->unk_0C.unk_48, 1 + v1, Pokemon_GetBoxPokemon(param0->unk_0C.unk_00->unk_00[v0->unk_01[v1]]));
        }
    } break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

void ov17_02242DA8(UnkStruct_ov17_02246F24 *param0)
{
    Window_FillTilemap(&param0->unk_0C.unk_28[0], 0xff);
    Window_CopyToVRAM(&param0->unk_0C.unk_28[0]);
}

static void ov17_02242DC0(UnkStruct_ov17_02246F24 *param0, MessageLoader *param1, u32 param2, int param3, const UnkStruct_ov17_022449B8 *param4, const void *param5, int param6)
{
    Strbuf *v0;
    u32 v1;

    if (param6 == 1) {
        v1 = TEXT_SPEED_INSTANT;
    } else {
        if (param0->unk_00->unk_155 == 0) {
            v1 = Options_TextFrameDelay(param0->unk_00->options);
        } else {
            v1 = TEXT_SPEED_FAST;
        }
    }

    v0 = MessageLoader_GetNewStrbuf(param1, param2);
    ov17_0224290C(param0, param3, param4, param5);

    StringTemplate_Format(param0->unk_0C.unk_48, param0->unk_0C.unk_4C, v0);
    Window_FillTilemap(&param0->unk_0C.unk_28[0], 0xff);

    param0->unk_0C.unk_210 = Text_AddPrinterWithParams(&param0->unk_0C.unk_28[0], FONT_MESSAGE, param0->unk_0C.unk_4C, 0, 0, v1, NULL);

    if (v1 == 0) {
        param0->unk_0C.unk_210 = 0xff;
        Window_CopyToVRAM(&param0->unk_0C.unk_28[0]);
    }

    if (Bg_GetXOffset(param0->unk_0C.unk_24, 1) == 0) {
        (void)0;
    }

    Strbuf_Free(v0);
}

void ov17_02242E5C(UnkStruct_ov17_02246F24 *param0, u32 param1, const UnkStruct_ov17_022449B8 *param2, const void *param3)
{
    u32 v0, v1, v2;

    GF_ASSERT(param1 < NELEMS(Unk_ov17_022538F0));

    v0 = Unk_ov17_022538F0[param1].unk_00;
    v1 = Unk_ov17_022538F0[param1].unk_02;
    v2 = Unk_ov17_022538F0[param1].unk_03;

    ov17_02242DC0(param0, param0->unk_0C.unk_38, v0, v1, param2, param3, v2);
}

void ov17_02242E9C(UnkStruct_ov17_02246F24 *param0, int param1, int param2, const UnkStruct_ov17_022449B8 *param3, const void *param4)
{
    u32 v0, v1;

    sub_02095790(param1, param2, &v0, &v1);
    ov17_02242DC0(param0, param0->unk_0C.unk_44, v0, v1, param3, param4, 0);
}

int ov17_02242ECC(UnkStruct_ov17_02246F24 *param0)
{
    if (param0->unk_0C.unk_210 == 0xff) {
        return 0;
    }

    return Text_IsPrinterActive(param0->unk_0C.unk_210);
}

void ov17_02242EE4(UnkStruct_ov17_02246F24 *param0, int param1)
{
    Strbuf *v0;
    TextColor v1;

    v0 = Strbuf_Init(12, HEAP_ID_21);

    Pokemon_GetValue(param0->unk_0C.unk_00->unk_00[param1], MON_DATA_NICKNAME_STRING, v0);

    if (param1 == param0->unk_00->unk_00.unk_113) {
        v1 = TEXT_COLOR(1, 2, 0);
    } else {
        v1 = TEXT_COLOR(5, 6, 0);
    }

    ov17_0223F1E8(HEAP_ID_21, param0->unk_0C.unk_24, param0->unk_0C.unk_1C, param0->unk_0C.unk_54, &param0->unk_0C.unk_1C8[param1], v0, FONT_SYSTEM, v1, 0, 33005, 0, 0, 0, 0, 15);
    ov17_0223F1E8(HEAP_ID_21, param0->unk_0C.unk_24, param0->unk_0C.unk_1C, param0->unk_0C.unk_54, &param0->unk_0C.unk_180[param1], param0->unk_00->unk_00.unk_D8[param1], FONT_SYSTEM, v1, 0, 33005, 0, 0, 0, 0, 15);

    Strbuf_Free(v0);
}

void ov17_02242FA4(UnkStruct_ov17_02246F24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov17_02242EE4(param0, v0);
    }

    ov17_02242FE8(param0);
}

void ov17_02242FC0(UnkStruct_ov17_02246F24 *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        ov17_0223F2E4(&param0->unk_0C.unk_1C8[v0]);
        ov17_0223F2E4(&param0->unk_0C.unk_180[v0]);
    }
}

void ov17_02242FE8(UnkStruct_ov17_02246F24 *param0)
{
    int v0, v1;

    for (v0 = 0; v0 < 4; v0++) {
        v1 = param0->unk_220.unk_01[v0];
        ov17_0223F2F8(&param0->unk_0C.unk_1C8[v1], 1, 12 + 48 * v0, 0);
        ov17_0223F2F8(&param0->unk_0C.unk_180[v1], 1, (12 + 16) + 48 * v0, 0);
    }
}

void ov17_02243040(SpriteSystem *param0, SpriteManager *param1, NARC *param2)
{
    SpriteSystem_LoadCharResObjFromOpenNarc(param0, param1, param2, 23, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, 33009);
    SpriteSystem_LoadCellResObjFromOpenNarc(param0, param1, param2, 22, TRUE, 33009);
    SpriteSystem_LoadAnimResObjFromOpenNarc(param0, param1, param2, 21, TRUE, 33009);
}

void ov17_0224308C(SpriteManager *param0)
{
    SpriteManager_UnloadCharObjById(param0, 33009);
    SpriteManager_UnloadCellObjById(param0, 33009);
    SpriteManager_UnloadAnimObjById(param0, 33009);
}

void ov17_022430AC(UnkStruct_ov17_0223F88C *param0, int param1, int param2)
{
    if (param0->unk_160[param1] == NULL) {
        param0->unk_160[param1] = SpriteSystem_NewSprite(param0->unk_18, param0->unk_1C, &Unk_ov17_02253750);
    }

    ManagedSprite_SetAnim(param0->unk_160[param1], param2);
    ManagedSprite_SetPositionXY(param0->unk_160[param1], (8 * 8), (5 * 8 + 2) + param1 * (6 * 8));
    Sprite_TickFrame(param0->unk_160[param1]->sprite);
}

void ov17_022430F8(UnkStruct_ov17_0223F88C *param0)
{
    int v0;

    for (v0 = 0; v0 < 4; v0++) {
        if (param0->unk_160[v0] != NULL) {
            Sprite_DeleteAndFreeResources(param0->unk_160[v0]);
            param0->unk_160[v0] = NULL;
        }
    }
}

void ov17_02243120(UnkStruct_ov17_02246F24 *param0, UnkStruct_ov17_022449B8 *param1, int param2)
{
    MI_CpuClear8(param1, sizeof(UnkStruct_ov17_022449B8));

    param1->unk_00 = param2;
    param1->unk_02 = param0->unk_220.unk_06[param2];
    param1->unk_05 = param0->unk_220.unk_0E[param2];
}

u32 ov17_0224314C(int param0, int param1, UnkStruct_ov17_022449B8 *param2)
{
    int v0;

    param2->unk_00 = param0;

    if (param1 <= 0) {
        v0 = 31;
    } else if (param1 <= 20) {
        v0 = 32;
    } else if (param1 <= 50) {
        v0 = 33;
    } else if (param1 <= 90) {
        v0 = 34;
    } else {
        v0 = 35;
    }

    return v0;
}

int ov17_02243174(int param0)
{
    int v0;
    int v1;

    v0 = param0 / 50;

    if (v0 >= (NELEMS(Unk_ov17_022536FC))) {
        v0 = NELEMS(Unk_ov17_022536FC) - 1;
    }

    v1 = Unk_ov17_022536FC[v0];

    GF_ASSERT(v1 >= 0);
    GF_ASSERT(v1 <= 127);

    return v1;
}

void ov17_022431A0(UnkStruct_ov17_02246F24 *param0, int param1, u8 param2, int param3, int param4, u8 *param5)
{
    UnkStruct_ov17_022431A0 *v0;

    *param5 = 0;

    v0 = Heap_Alloc(HEAP_ID_21, sizeof(UnkStruct_ov17_022431A0));

    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_022431A0));

    v0->unk_00 = param0;
    v0->unk_10 = param5;
    v0->unk_0D = param2;
    v0->unk_0B = param1;
    v0->unk_04 = param3;
    v0->unk_0E = param4;

    SysTask_Start(ov17_022431E8, v0, 3000);
}

static void ov17_022431E8(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022431A0 *v0 = param1;

    switch (v0->unk_08) {
    case 0:
        if (v0->unk_0D > 0) {
            v0->unk_0D--;
            break;
        }

        Sound_PlayEffect(SEQ_SE_DP_CON_007);
        Sound_SetInitialVolumeForSequence(1765, v0->unk_04);
        v0->unk_08++;
    case 1: {
        u32 v1;

        if (v0->unk_09 == 0) {
            v1 = 0;
        } else {
            v1 = 2;
        }

        Graphics_LoadTilemapToBgLayer(NARC_INDEX_CONTEST__GRAPHIC__CONTEST_BG, v1, v0->unk_00->unk_0C.unk_24, 3, 0, 0, 1, HEAP_ID_21);
    }

        v0->unk_08++;
        break;
    case 2:
        v0->unk_0C++;

        if (v0->unk_0C > 2) {
            v0->unk_0C = 0;
            v0->unk_09 ^= 1;
            v0->unk_08--;

            if (v0->unk_09 == 0) {
                v0->unk_0A++;

                if (v0->unk_0A > 2) {
                    v0->unk_08 = 0xff;
                    break;
                }
            }
        }

        if (v0->unk_0E == 1) {
            int v2;

            v2 = v0->unk_0B * 16 / (10 * 5);

            if (v0->unk_0F < v2) {
                v0->unk_0F += 2;

                if (v0->unk_0F > v2) {
                    v0->unk_0F = v2;
                }

                PaletteData_Blend(v0->unk_00->unk_0C.unk_50, 0, (0 * 16 + 1), 2, v0->unk_0F, 0x237e);
            }
        }
        break;
    default:
        if (v0->unk_0E == 1) {
            if (v0->unk_0F != 0) {
                v0->unk_0F -= 2;

                if (v0->unk_0F < 0) {
                    v0->unk_0F = 0;
                }

                PaletteData_Blend(v0->unk_00->unk_0C.unk_50, 0, (0 * 16 + 1), 2, v0->unk_0F, 0x237e);
                break;
            }
        }

        *(v0->unk_10) = 1;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

void ov17_0224331C(UnkStruct_ov17_02246F24 *param0, int param1, int param2, u8 *param3, UnkStruct_ov17_0224145C *param4)
{
    UnkStruct_ov17_0224331C *v0;
    s32 v1, v2;
    s16 v3, v4, v5, v6;
    int v7;
    u32 v8;
    u16 v9;

    *param3 = 0;

    v1 = (10 * 8) / 2;
    v2 = (6 * 8) / 2 + param2 * (6 * 8);
    v8 = 0;
    v9 = 0;

    for (v7 = 0; v7 < 6; v7++) {
        if (param0->unk_0C.unk_C4[param1][v7] == NULL) {
            continue;
        }

        if (*param3 == 0) {
            ManagedSprite_GetPositionXY(param0->unk_0C.unk_C4[param1][v7], &v3, &v4);
            v8 = sub_0208C0A4(
                     MATH_IAbs(v3 - v1), MATH_IAbs(v4 - v2))
                * 0x100;

            {
                f32 v10, v11;

                v10 = v3 - v1;
                v11 = v4 - v2;
                v9 = FX_Atan2Idx(FX_F32_TO_FX32(v11), FX_F32_TO_FX32(v10));
                v9 = (360 * 100) * v9 / 65535;
            }
        }

        v0 = Heap_Alloc(HEAP_ID_21, sizeof(UnkStruct_ov17_0224331C));
        MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0224331C));

        v0->unk_04 = param4;
        v0->unk_08 = param0->unk_0C.unk_C4[param1][v7];
        v0->unk_10 = v8;
        v0->unk_1E = v9;
        v0->unk_14 = 0x800;
        v0->unk_21 = v1;
        v0->unk_22 = v2;
        v0->unk_0C = param3;
        v0->unk_23 = v3;
        v0->unk_24 = v4;

        ManagedSprite_GetPositionXY(param0->unk_0C.unk_C4[param1][v7], &v5, &v6);

        v0->unk_1C = (MATH_IAbs(v3 - v5) << 8) / (3 * (*param3));
        v0->unk_18 = v5 << 8;

        SysTask_Start(ov17_022434E0, v0, 40000);
        (*param3)++;
    }
}

static void ov17_022434E0(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224331C *v0 = param1;
    int v1, v2, v3;
    s16 v4, v5;

    switch (v0->unk_20) {
    case 0:
        v0->unk_18 -= v0->unk_1C;

        if (v0->unk_18 <= (v0->unk_23 << 8)) {
            v0->unk_18 = v0->unk_23 << 8;
            v0->unk_20++;
        }

        ManagedSprite_GetPositionXY(v0->unk_08, &v4, &v5);
        v4 = v0->unk_18 >> 8;
        ManagedSprite_SetPositionXY(v0->unk_08, v4, v5);
        break;
    case 1:
        v0->unk_1E += v0->unk_14;
        v0->unk_14 += 0;

        if (v0->unk_1E >= 360 * 100) {
            v0->unk_1E -= 360 * 100;
        }

        if (v0->unk_10 > 0x300) {
            v0->unk_10 -= 0x300;
        } else {
            v0->unk_10 = 0;
        }

        if (v0->unk_10 <= 0x200) {
            v0->unk_20++;
        }

        v3 = v0->unk_10 / 0x100;
        v1 = FX_Mul(CalcCosineDegrees(v0->unk_1E / 100), v3 << FX32_SHIFT) / FX32_ONE;
        v2 = FX_Mul(CalcSineDegrees(v0->unk_1E / 100), v3 << FX32_SHIFT) / FX32_ONE;
        ManagedSprite_SetPositionXY(v0->unk_08, v0->unk_21 + v1, v0->unk_22 + v2);
        break;
    default:
        ManagedSprite_SetDrawFlag(v0->unk_08, 0);
        Sound_PlayEffect(SEQ_SE_DP_SELECT5);
        ov17_022414B0(v0->unk_04);

        (*(v0->unk_0C))--;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

UnkStruct_ov17_0224365C *ov17_0224365C(UnkStruct_ov17_02246F24 *param0, int param1)
{
    UnkStruct_ov17_0224365C *v0 = Heap_Alloc(HEAP_ID_21, sizeof(UnkStruct_ov17_0224365C));
    MI_CpuClear8(v0, sizeof(UnkStruct_ov17_0224365C));

    v0->unk_00 = param0;
    v0->unk_08 = param1;
    v0->unk_04 = SysTask_Start(ov17_022436A4, v0, 40000);

    return v0;
}

void ov17_02243690(UnkStruct_ov17_0224365C *param0)
{
    SysTask_Done(param0->unk_04);
    Heap_Free(param0);
}

static void ov17_022436A4(SysTask *param0, void *param1)
{
    UnkStruct_ov17_0224365C *v0 = param1;
    int v1;

    for (v1 = 0; v1 < 5; v1++) {
        if (v0->unk_00->unk_0C.unk_124[v0->unk_08][v1] == NULL) {
            continue;
        }

        ManagedSprite_TickFrame(v0->unk_00->unk_0C.unk_124[v0->unk_08][v1]);
    }
}

void ov17_022436D0(UnkStruct_ov17_02246F24 *param0, int param1, int param2, int param3, u8 *param4)
{
    UnkStruct_ov17_022436D0 *v0;
    int v1;
    int v2, v3;

    *param4 = 0;

    v2 = (10 * 8) / 2;
    v3 = (6 * 8) / 2 + param2 * (6 * 8);

    for (v1 = 0; v1 < 5; v1++) {
        if (param0->unk_0C.unk_124[param3][v1] == NULL) {
            continue;
        }

        v0 = Heap_Alloc(HEAP_ID_21, sizeof(UnkStruct_ov17_022436D0));
        MI_CpuClear8(v0, sizeof(UnkStruct_ov17_022436D0));

        v0->unk_00 = param0;
        v0->unk_04 = param0->unk_0C.unk_124[param3][v1];
        v0->unk_08 = param4;
        v0->unk_0F = v2;
        v0->unk_10 = v3;
        v0->unk_24 = 12 * (*param4);

        SysTask_Start(ov17_02243750, v0, 40000);

        (*param4)++;
    }
}

static void ov17_02243750(SysTask *param0, void *param1)
{
    UnkStruct_ov17_022436D0 *v0 = param1;
    s16 v1, v2;
    int v3, v4;

    switch (v0->unk_0E) {
    case 0:
        if (v0->unk_24 > 0) {
            v0->unk_24--;
            break;
        }

        ManagedSprite_GetPositionXY(v0->unk_04, &v1, &v2);

        v2 += (6 << FX32_SHIFT) >> FX32_SHIFT;
        v0->unk_1C = v1 << 8;
        v0->unk_20 = v2 << 8;

        Sound_PlayEffect(SEQ_SE_DP_W234);
        v0->unk_0E++;
    case 1:
        v0->unk_0C += 0x800;

        if (v0->unk_0C >= 360 * 100) {
            v0->unk_0C -= 360 * 100;
        }

        v3 = FX_Mul(CalcSineDegrees(v0->unk_0C / 100), (12 << FX32_SHIFT)) / FX32_ONE;
        v4 = FX_Mul(CalcCosineDegrees(v0->unk_0C / 100), (6 << FX32_SHIFT)) / FX32_ONE;

        v0->unk_20 += 0x80;
        ManagedSprite_SetPositionXY(v0->unk_04, (v0->unk_1C >> 8) + v3, (v0->unk_20 >> 8) + v4);
        v0->unk_24++;

        if (v0->unk_24 > 80) {
            v0->unk_24 = 0;
            ManagedSprite_GetPositionXY(v0->unk_04, &v1, &v2);
            v0->unk_1C = v1 << 8;
            v0->unk_20 = v2 << 8;
            {
                s32 v5, v6, v7;

                v5 = (MATH_IAbs(v1 - v0->unk_0F) << 8);
                v6 = (MATH_IAbs(v2 - v0->unk_10) << 8);
                v7 = v5 / 0x300;
                v0->unk_14 = 0x300;
                v0->unk_18 = v6 / v7;

                if (v0->unk_10 < v2) {
                    v0->unk_18 = -v0->unk_18;
                }
            }
            Sound_PlayEffect(SEQ_SE_DP_CON_013);
            v0->unk_0E++;
        }
        break;
    case 2:
        v0->unk_1C -= v0->unk_14;
        v0->unk_20 += v0->unk_18;

        if (v0->unk_1C <= (v0->unk_0F << 8)) {
            v0->unk_1C = v0->unk_0F << 8;
            v0->unk_0E++;
        }

        ManagedSprite_SetPositionXY(v0->unk_04, v0->unk_1C >> 8, v0->unk_20 >> 8);
        break;
    default:
        ManagedSprite_SetDrawFlag(v0->unk_04, 0);
        Sound_PlayEffect(SEQ_SE_DP_SELECT5);
        (*(v0->unk_08))--;
        Heap_Free(param1);
        SysTask_Done(param0);
        return;
    }
}

u32 ov17_02243944(int param0)
{
    const u16 v0[] = {
        41,
        40,
        36,
        38,
        39,
    };

    return v0[param0];
}

u32 ov17_02243970(int param0)
{
    const u16 v0[] = {
        12,
        13,
        14,
        15,
        16,
    };

    return v0[param0];
}

u32 ov17_0224399C(int param0)
{
    const u16 v0[] = {
        18,
        19,
        20,
        21,
        22,
    };

    return v0[param0];
}

void ov17_022439C8(UnkStruct_02095C48 *param0, int param1, int param2, UnkStruct_ov17_022439C8 *param3)
{
    MI_CpuClear8(param3, sizeof(UnkStruct_ov17_022439C8));

    param3->unk_04 = param2;

    switch (param2) {
    case 76:
    case 13:
    case 130:
    case 143:
        param3->unk_06 = 1;
        break;
    case 216:
        param3->unk_08 = 255;
        break;
    case 218:
        param3->unk_08 = 0;
        break;
    case 174: {
        int v0, v1;

        v0 = Pokemon_GetValue(param0->unk_00.unk_00[param1], MON_DATA_TYPE_1, NULL);
        v1 = Pokemon_GetValue(param0->unk_00.unk_00[param1], MON_DATA_TYPE_2, NULL);

        if ((v0 == TYPE_GHOST) || (v1 == TYPE_GHOST)) {
            param3->unk_07 = 1;
        } else {
            param3->unk_07 = 0;
        }
    } break;
    case 119:
        param3->unk_04 = 1;
        break;
    case 267:
        param3->unk_04 = 161;
        break;
    case 280:
        param3->unk_07 = 1;
        break;
    case 467:
        param3->unk_06 = 1;
        param3->unk_00 = (0x40 | 0x80 | 0x40000 | 0x20000000);
        break;
    }
}

int ov17_02243A98(UnkStruct_ov17_022472F8 *param0, int param1, int param2)
{
    if (param2 == 0) {
        return 0;
    }

    if ((param2 == param0->unk_26[param1]) && (param0->unk_30.unk_A0[param1].unk_00_0 != param2)) {
        return 0;
    }

    return 1;
}
