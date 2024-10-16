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

#include "battle/graphic/pl_batt_obj/pl_batt_obj.naix"

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
    [TERRAIN_PLAIN] = battle_terrain_path_player_ncgr,
    [TERRAIN_SAND] = battle_terrain_sand_player_ncgr,
    [TERRAIN_GRASS] = battle_terrain_grass_player_ncgr,
    [TERRAIN_PUDDLE] = battle_terrain_puddle_player_ncgr,
    [TERRAIN_MOUNTAIN] = battle_terrain_mountain_player_ncgr,
    [TERRAIN_CAVE] = battle_terrain_cave_player_ncgr,
    [TERRAIN_SNOW] = battle_terrain_snow_player_ncgr,
    [TERRAIN_WATER] = battle_terrain_surf_player_ncgr,
    [TERRAIN_ICE] = battle_terrain_ice_player_ncgr,
    [TERRAIN_BUILDING] = battle_terrain_indoors_player_ncgr,
    [TERRAIN_GREAT_MARSH] = battle_terrain_mud_player_ncgr,
    [TERRAIN_BRIDGE] = battle_terrain_puddle_player_ncgr,
    [TERRAIN_AARON] = battle_terrain_elite4_aaron_player_ncgr,
    [TERRAIN_BERTHA] = battle_terrain_elite4_bertha_player_ncgr,
    [TERRAIN_FLINT] = battle_terrain_elite4_flint_player_ncgr,
    [TERRAIN_LUCIAN] = battle_terrain_elite4_lucian_player_ncgr,
    [TERRAIN_CYNTHIA] = battle_terrain_champion_player_ncgr,
    [TERRAIN_DISTORTION_WORLD] = battle_terrain_distortion_world_player_ncgr,
    [TERRAIN_BATTLE_TOWER] = battle_terrain_tower_player_ncgr,
    [TERRAIN_BATTLE_FACTORY] = battle_terrain_factory_player_ncgr,
    [TERRAIN_BATTLE_ARCADE] = battle_terrain_arcade_player_ncgr,
    [TERRAIN_BATTLE_CASTLE] = battle_terrain_castle_player_ncgr,
    [TERRAIN_BATTLE_HALL] = battle_terrain_hall_player_ncgr,
    [TERRAIN_GIRATINA] = battle_terrain_giratina_player_ncgr
};

/*
 * Maps a battle terrain index to the NARC member in pl_batt_obj containing the opponent's sprite for it.
 */
__attribute__((aligned(4))) static const u16 sov16_BattleTerrainIndexToOpponentNARCMember[] = {
    [TERRAIN_PLAIN] = battle_terrain_path_opponent_ncgr,
    [TERRAIN_SAND] = battle_terrain_sand_opponent_ncgr,
    [TERRAIN_GRASS] = battle_terrain_grass_opponent_ncgr,
    [TERRAIN_PUDDLE] = battle_terrain_puddle_opponent_ncgr,
    [TERRAIN_MOUNTAIN] = battle_terrain_mountain_opponent_ncgr,
    [TERRAIN_CAVE] = battle_terrain_cave_opponent_ncgr,
    [TERRAIN_SNOW] = battle_terrain_snow_opponent_ncgr,
    [TERRAIN_WATER] = battle_terrain_surf_opponent_ncgr,
    [TERRAIN_ICE] = battle_terrain_ice_opponent_ncgr,
    [TERRAIN_BUILDING] = battle_terrain_indoors_opponent_ncgr,
    [TERRAIN_GREAT_MARSH] = battle_terrain_mud_opponent_ncgr,
    [TERRAIN_BRIDGE] = battle_terrain_mud_opponent_ncgr,
    [TERRAIN_AARON] = battle_terrain_elite4_aaron_opponent_ncgr,
    [TERRAIN_BERTHA] = battle_terrain_elite4_bertha_opponent_ncgr,
    [TERRAIN_FLINT] = battle_terrain_elite4_flint_opponent_ncgr,
    [TERRAIN_LUCIAN] = battle_terrain_elite4_lucian_opponent_ncgr,
    [TERRAIN_CYNTHIA] = battle_terrain_champion_opponent_ncgr,
    [TERRAIN_DISTORTION_WORLD] = battle_terrain_distortion_world_opponent_ncgr,
    [TERRAIN_BATTLE_TOWER] = battle_terrain_tower_opponent_ncgr,
    [TERRAIN_BATTLE_FACTORY] = battle_terrain_factory_opponent_ncgr,
    [TERRAIN_BATTLE_ARCADE] = battle_terrain_arcade_opponent_ncgr,
    [TERRAIN_BATTLE_CASTLE] = battle_terrain_castle_opponent_ncgr,
    [TERRAIN_BATTLE_HALL] = battle_terrain_hall_opponent_ncgr,
    [TERRAIN_GIRATINA] = battle_terrain_giratina_opponent_ncgr
};

/*
 * Maps a battle terrain ID to the NARC member in pl_batt_obj containing a palette for it.
 * Each battle terrain has 3 palette options for different times of day.
 */
__attribute__((aligned(4))) static const u16 sov16_BattleTerrainIndexToPaletteMember[][3] = {
    [TERRAIN_PLAIN] = { battle_terrain_path_day_nclr, battle_terrain_path_afternoon_nclr, battle_terrain_path_night_nclr },
    [TERRAIN_SAND] = { battle_terrain_sand_day_nclr, battle_terrain_sand_afternoon_nclr, battle_terrain_sand_night_nclr },
    [TERRAIN_GRASS] = { battle_terrain_grass_day_nclr, battle_terrain_grass_afternoon_nclr, battle_terrain_grass_night_nclr },
    [TERRAIN_PUDDLE] = { battle_terrain_puddle_day_nclr, battle_terrain_puddle_afternoon_nclr, battle_terrain_puddle_night_nclr },
    [TERRAIN_MOUNTAIN] = { battle_terrain_mountain_day_nclr, battle_terrain_mountain_afternoon_nclr, battle_terrain_mountain_night_nclr },
    [TERRAIN_CAVE] = { battle_terrain_cave_day_nclr, battle_terrain_cave_afternoon_nclr, battle_terrain_cave_night_nclr },
    [TERRAIN_SNOW] = { battle_terrain_snow_day_nclr, battle_terrain_snow_afternoon_nclr, battle_terrain_snow_night_nclr },
    [TERRAIN_WATER] = { battle_terrain_surf_day_nclr, battle_terrain_surf_afternoon_nclr, battle_terrain_surf_night_nclr },
    [TERRAIN_ICE] = { battle_terrain_ice_day_nclr, battle_terrain_ice_afternoon_nclr, battle_terrain_ice_night_nclr },
    [TERRAIN_BUILDING] = { battle_terrain_indoors_day_nclr, battle_terrain_indoors_afternoon_nclr, battle_terrain_indoors_night_nclr },
    [TERRAIN_GREAT_MARSH] = { battle_terrain_mud_day_nclr, battle_terrain_mud_afternoon_nclr, battle_terrain_mud_night_nclr },
    [TERRAIN_BRIDGE] = { battle_terrain_mud_day_nclr, battle_terrain_mud_afternoon_nclr, battle_terrain_mud_night_nclr },
    [TERRAIN_AARON] = { battle_terrain_elite4_aaron_day_nclr, battle_terrain_elite4_aaron_afternoon_nclr, battle_terrain_elite4_aaron_night_nclr },
    [TERRAIN_BERTHA] = { battle_terrain_elite4_bertha_day_nclr, battle_terrain_elite4_bertha_afternoon_nclr, battle_terrain_elite4_bertha_night_nclr },
    [TERRAIN_FLINT] = { battle_terrain_elite4_flint_day_nclr, battle_terrain_elite4_flint_afternoon_nclr, battle_terrain_elite4_flint_night_nclr },
    [TERRAIN_LUCIAN] = { battle_terrain_elite4_lucian_day_nclr, battle_terrain_elite4_lucian_afternoon_nclr, battle_terrain_elite4_lucian_night_nclr },
    [TERRAIN_CYNTHIA] = { battle_terrain_champion_day_nclr, battle_terrain_champion_afternoon_nclr, battle_terrain_champion_night_nclr },
    [TERRAIN_DISTORTION_WORLD] = { battle_terrain_distortion_world_day_nclr, battle_terrain_distortion_world_afternoon_nclr, battle_terrain_distortion_world_night_nclr },
    [TERRAIN_BATTLE_TOWER] = { battle_terrain_tower_day_nclr, battle_terrain_tower_afternoon_nclr, battle_terrain_tower_night_nclr },
    [TERRAIN_BATTLE_FACTORY] = { battle_terrain_factory_day_nclr, battle_terrain_factory_afternoon_nclr, battle_terrain_factory_night_nclr },
    [TERRAIN_BATTLE_ARCADE] = { battle_terrain_arcade_day_nclr, battle_terrain_arcade_afternoon_nclr, battle_terrain_arcade_night_nclr },
    [TERRAIN_BATTLE_CASTLE] = { battle_terrain_castle_day_nclr, battle_terrain_castle_afternoon_nclr, battle_terrain_castle_night_nclr },
    [TERRAIN_BATTLE_HALL] = { battle_terrain_hall_day_nclr, battle_terrain_hall_afternoon_nclr, battle_terrain_hall_night_nclr },
    [TERRAIN_GIRATINA] = { battle_terrain_giratina_day_nclr, battle_terrain_giratina_afternoon_nclr, battle_terrain_giratina_night_nclr }
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
        v5 = battle_terrain_player_ncer;
        v6 = 20005;
        v7 = battle_terrain_player_nanr;
        v8 = 20005;
    } else {
        v3 = sov16_BattleTerrainIndexToOpponentNARCMember[param0->unk_09];
        v4 = 20014;
        v5 = battle_terrain_opponent_ncer;
        v6 = 20006;
        v7 = battle_terrain_opponent_nanr;
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
