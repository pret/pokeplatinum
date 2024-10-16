#include "battle/ov16_02268520.h"

#include <nitro.h>
#include <string.h>

#include "struct_decls/battle_system.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_defs/sprite_template.h"
#include "struct_defs/struct_0200D0F4.h"

#include "battle/ov16_0223DF00.h"
#include "battle/struct_ov16_02268520.h"

#include "consts/battle.h"

#include "narc.h"
#include "unk_02002F38.h"
#include "unk_0200C6E4.h"

static const SpriteTemplate Unk_ov16_022700CC[] = {
    {
        0x150,
        0x88,
        0x0,
        0x0,
        0x3E8,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x4E2D, 0x4E29, 0x4E25, 0x4E25, 0xFFFFFFFF, 0xFFFFFFFF },
        0x3,
        0x0,
    },
    {
        0xFFFFFFFFFFFFFFB0,
        0x58,
        0x0,
        0x0,
        0x3E8,
        0x0,
        NNS_G2D_VRAM_TYPE_2DMAIN,
        { 0x4E2E, 0x4E29, 0x4E26, 0x4E26, 0xFFFFFFFF, 0xFFFFFFFF },
        0x3,
        0x0,
    },
};

/*
 * Maps a battle terrain index to the NARC member in pl_batt_obj containing the player's sprite for it.
 */
__attribute__((aligned(4))) static const u16 sov16_BattleTerrainIndexToNARCMember[] = {
    [TERRAIN_PLAIN] = 0x87,
    [TERRAIN_SAND] = 0x91,
    [TERRAIN_GRASS] = 0x7F,
    [TERRAIN_PUDDLE] = 0x97,
    [TERRAIN_MOUNTAIN] = 0x8B,
    [TERRAIN_CAVE] = 0x95,
    [TERRAIN_SNOW] = 0x8D,
    [TERRAIN_WATER] = 0x85,
    [TERRAIN_ICE] = 0x89,
    [TERRAIN_BUILDING] = 0x8F,
    [TERRAIN_GREAT_MARSH] = 0x93,
    [TERRAIN_BRIDGE] = 0x97,
    [TERRAIN_AARON] = 0x99,
    [TERRAIN_BERTHA] = 0x9B,
    [TERRAIN_FLINT] = 0x9D,
    [TERRAIN_LUCIAN] = 0x9F,
    [TERRAIN_CYNTHIA] = 0xA1,
    [TERRAIN_DISTORTION_WORLD] = 0xA3,
    [TERRAIN_BATTLE_TOWER] = 0xA5,
    [TERRAIN_BATTLE_FACTORY] = 0xA7,
    [TERRAIN_BATTLE_ARCADE] = 0xA9,
    [TERRAIN_BATTLE_CASTLE] = 0xAB,
    [TERRAIN_BATTLE_HALL] = 0xAD,
    [TERRAIN_GIRATINA] = 0xAF
};

/*
 * Maps a battle terrain index to the NARC member in pl_batt_obj containing the opponent's sprite for it.
 */
__attribute__((aligned(4))) static const u16 sov16_BattleTerrainIndexToOpponentNARCMember[] = {
    [TERRAIN_PLAIN] = 0x88,
    [TERRAIN_SAND] = 0x92,
    [TERRAIN_GRASS] = 0x82,
    [TERRAIN_PUDDLE] = 0x98,
    [TERRAIN_MOUNTAIN] = 0x8C,
    [TERRAIN_CAVE] = 0x96,
    [TERRAIN_SNOW] = 0x8E,
    [TERRAIN_WATER] = 0x86,
    [TERRAIN_ICE] = 0x8A,
    [TERRAIN_BUILDING] = 0x90,
    [TERRAIN_GREAT_MARSH] = 0x94,
    [TERRAIN_BRIDGE] = 0x94,
    [TERRAIN_AARON] = 0x9A,
    [TERRAIN_BERTHA] = 0x9C,
    [TERRAIN_FLINT] = 0x9E,
    [TERRAIN_LUCIAN] = 0xA0,
    [TERRAIN_CYNTHIA] = 0xA2,
    [TERRAIN_DISTORTION_WORLD] = 0xA4,
    [TERRAIN_BATTLE_TOWER] = 0xA6,
    [TERRAIN_BATTLE_FACTORY] = 0xA8,
    [TERRAIN_BATTLE_ARCADE] = 0xAA,
    [TERRAIN_BATTLE_CASTLE] = 0xAC,
    [TERRAIN_BATTLE_HALL] = 0xAE,
    [TERRAIN_GIRATINA] = 0xB0
};

/*
 * Maps a battle terrain ID to the NARC member in pl_batt_obj containing a palette for it.
 * Each battle terrain has 3 palette options for different times of day.
 */
__attribute__((aligned(4))) static const u16 sov16_BattleTerrainIndexToPaletteMember[][3] = {
    [TERRAIN_PLAIN] = { 0x7, 0x8, 0x9 },
    [TERRAIN_SAND] = { 0x16, 0x17, 0x18 },
    [TERRAIN_GRASS] = { 0x1, 0x2, 0x3 },
    [TERRAIN_PUDDLE] = { 0x1F, 0x20, 0x21 },
    [TERRAIN_MOUNTAIN] = { 0xD, 0xE, 0xF },
    [TERRAIN_CAVE] = { 0x1C, 0x1D, 0x1E },
    [TERRAIN_SNOW] = { 0x10, 0x11, 0x12 },
    [TERRAIN_WATER] = { 0x4, 0x5, 0x6 },
    [TERRAIN_ICE] = { 0xA, 0xB, 0xC },
    [TERRAIN_BUILDING] = { 0x13, 0x14, 0x15 },
    [TERRAIN_GREAT_MARSH] = { 0x19, 0x1A, 0x1B },
    [TERRAIN_BRIDGE] = { 0x19, 0x1A, 0x1B },
    [TERRAIN_AARON] = { 0x22, 0x23, 0x24 },
    [TERRAIN_BERTHA] = { 0x25, 0x26, 0x27 },
    [TERRAIN_FLINT] = { 0x28, 0x29, 0x2A },
    [TERRAIN_LUCIAN] = { 0x2B, 0x2C, 0x2D },
    [TERRAIN_CYNTHIA] = { 0x2E, 0x2F, 0x30 },
    [TERRAIN_DISTORTION_WORLD] = { 0x31, 0x32, 0x33 },
    [TERRAIN_BATTLE_TOWER] = { 0x34, 0x35, 0x36 },
    [TERRAIN_BATTLE_FACTORY] = { 0x37, 0x38, 0x39 },
    [TERRAIN_BATTLE_ARCADE] = { 0x3A, 0x3B, 0x3C },
    [TERRAIN_BATTLE_CASTLE] = { 0x3D, 0x3E, 0x3F },
    [TERRAIN_BATTLE_HALL] = { 0x40, 0x41, 0x42 },
    [TERRAIN_GIRATINA] = { 0x43, 0x44, 0x45 }
};

void ov16_02268520(UnkStruct_ov16_02268520 *param0)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    const SpriteTemplate *v2;
    int v3, v4, v5, v6, v7, v8;
    int v9;
    NARC *v10;

    v10 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, 5);
    v0 = ov16_0223E010(param0->unk_04);
    v1 = ov16_0223E018(param0->unk_04);
    v9 = ov16_0223EC04(param0->unk_04);
    v2 = &Unk_ov16_022700CC[param0->unk_08];

    if (param0->unk_08 == 0) {
        v3 = sov16_BattleTerrainIndexToNARCMember[param0->unk_09];
        v4 = 20013;
        v5 = 128;
        v6 = 20005;
        v7 = 129;
        v8 = 20005;
    } else {
        v3 = sov16_BattleTerrainIndexToOpponentNARCMember[param0->unk_09];
        v4 = 20014;
        v5 = 131;
        v6 = 20006;
        v7 = 132;
        v8 = 20006;
    }

    SpriteRenderer_LoadCharResObjFromOpenNarc(v0, v1, v10, v3, 1, NNS_G2D_VRAM_TYPE_2DMAIN, v4);
    SpriteRenderer_LoadPalette(BattleSystem_PaletteSys(param0->unk_04), 2, v0, v1, v10, sov16_BattleTerrainIndexToPaletteMember[param0->unk_09][v9], 0, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20009);
    PaletteSys_LoadPalette(BattleSystem_PaletteSys(param0->unk_04), 27, sov16_BattleTerrainIndexToPaletteMember[param0->unk_09][v9], 5, 0, 0x20, 0x7 * 0x10);
    SpriteRenderer_LoadCellResObjFromOpenNarc(v0, v1, v10, v5, 1, v6);
    SpriteRenderer_LoadAnimResObjFromOpenNarc(v0, v1, v10, v7, 1, v8);
    NARC_dtor(v10);
}

void ov16_0226862C(UnkStruct_ov16_02268520 *param0)
{
    SpriteRenderer *v0;
    SpriteGfxHandler *v1;
    const SpriteTemplate *v2;

    v0 = ov16_0223E010(param0->unk_04);
    v1 = ov16_0223E018(param0->unk_04);
    v2 = &Unk_ov16_022700CC[param0->unk_08];

    param0->unk_00 = SpriteActor_LoadResources(v0, v1, v2);
    SpriteActor_UpdateObject(param0->unk_00->unk_00);
}

void ov16_02268660(UnkStruct_ov16_02268520 *param0)
{
    if (param0->unk_00 == NULL) {
        return;
    }

    sub_0200D0F4(param0->unk_00);
    param0->unk_00 = NULL;
}

void ov16_02268674(UnkStruct_ov16_02268520 *param0)
{
    SpriteGfxHandler *v0;
    int v1, v2, v3;

    v0 = ov16_0223E018(param0->unk_04);

    if (param0->unk_08 == 0) {
        v1 = 20013;
        v2 = 20005;
        v3 = 20005;
    } else {
        v1 = 20014;
        v2 = 20006;
        v3 = 20006;
    }

    SpriteGfxHandler_UnloadCharObjById(v0, v1);
    SpriteGfxHandler_UnloadPlttObjById(v0, 20009);
    SpriteGfxHandler_UnloadCellObjById(v0, v2);
    SpriteGfxHandler_UnloadAnimObjById(v0, v3);
}

void ov16_022686BC(UnkStruct_ov16_02268520 *param0, int param1)
{
    if (param0->unk_00 == NULL) {
        return;
    }

    SpriteActor_EnableObject(param0->unk_00, param1);
}

void ov16_022686CC(UnkStruct_ov16_02268520 *param0, BattleSystem *param1, u16 param2, int param3)
{
    MI_CpuClearFast(param0, sizeof(UnkStruct_ov16_02268520));

    param0->unk_04 = param1;
    param0->unk_08 = param2;
    param0->unk_09 = param3;

    if (param3 >= 24) {
        GF_ASSERT(0);
        param0->unk_09 = 0;
    }

    ov16_02268520(param0);
    ov16_0226862C(param0);
}

void ov16_02268700(UnkStruct_ov16_02268520 *param0)
{
    ov16_02268660(param0);
    ov16_02268674(param0);
    MI_CpuClearFast(param0, sizeof(UnkStruct_ov16_02268520));
}
