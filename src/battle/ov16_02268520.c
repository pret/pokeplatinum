#include "battle/ov16_02268520.h"

#include "generated/battle_terrains.h"

#include "struct_decls/battle_system.h"

#include "battle/battle_system.h"
#include "battle/struct_ov16_02268520.h"

#include "narc.h"
#include "palette.h"
#include "sprite_system.h"

#include "res/graphics/battle/sprites.naix"

static const SpriteTemplate sTerrainSpriteTemplates[] = {
    {
        .x = 336,
        .y = 136,
        .z = 0,
        .animIdx = 0,
        .priority = 1000,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = {
            0x4E2D,
            0x4E29,
            0x4E25,
            0x4E25,
            0xFFFFFFFF,
            0xFFFFFFFF,
        },
        .bgPriority = 3,
        .vramTransfer = FALSE,
    },
    {
        .x = -80,
        .y = 88,
        .z = 0,
        .animIdx = 0,
        .priority = 1000,
        .plttIdx = 0,
        .vramType = NNS_G2D_VRAM_TYPE_2DMAIN,
        .resources = {
            0x4E2E,
            0x4E29,
            0x4E26,
            0x4E26,
            0xFFFFFFFF,
            0xFFFFFFFF,
        },
        .bgPriority = 3,
        .vramTransfer = FALSE,
    },
};

// clang-format off
ALIGN_4 static const u16 sTerrainSpriteSource_PlayerSide[TERRAIN_MAX] = {
    [TERRAIN_PLAIN]            = terrain_path_player_NCGR_lz,
    [TERRAIN_SAND]             = terrain_sand_player_NCGR_lz,
    [TERRAIN_GRASS]            = terrain_grass_player_NCGR_lz,
    [TERRAIN_PUDDLE]           = terrain_path_puddles_player_NCGR_lz,
    [TERRAIN_MOUNTAIN]         = terrain_rocky_player_NCGR_lz,
    [TERRAIN_CAVE]             = terrain_cave_player_NCGR_lz,
    [TERRAIN_SNOW]             = terrain_snow_player_NCGR_lz,
    [TERRAIN_WATER]            = terrain_water_player_NCGR_lz,
    [TERRAIN_ICE]              = terrain_ice_player_NCGR_lz,
    [TERRAIN_BUILDING]         = terrain_indoors_player_NCGR_lz,
    [TERRAIN_GREAT_MARSH]      = terrain_mud_player_NCGR_lz,
    [TERRAIN_BRIDGE]           = terrain_path_puddles_player_NCGR_lz,
    [TERRAIN_AARON]            = terrain_league_aaron_player_NCGR_lz,
    [TERRAIN_BERTHA]           = terrain_league_bertha_player_NCGR_lz,
    [TERRAIN_FLINT]            = terrain_league_flint_player_NCGR_lz,
    [TERRAIN_LUCIAN]           = terrain_league_lucian_player_NCGR_lz,
    [TERRAIN_CYNTHIA]          = terrain_league_cynthia_player_NCGR_lz,
    [TERRAIN_DISTORTION_WORLD] = terrain_distortion_world_player_NCGR_lz,
    [TERRAIN_BATTLE_TOWER]     = terrain_battle_tower_player_NCGR_lz,
    [TERRAIN_BATTLE_FACTORY]   = terrain_battle_factory_player_NCGR_lz,
    [TERRAIN_BATTLE_ARCADE]    = terrain_battle_arcade_player_NCGR_lz,
    [TERRAIN_BATTLE_CASTLE]    = terrain_battle_castle_player_NCGR_lz,
    [TERRAIN_BATTLE_HALL]      = terrain_battle_hall_player_NCGR_lz,
    [TERRAIN_GIRATINA]         = terrain_giratina_player_NCGR_lz,
};

ALIGN_4 static const u16 sTerrainSpriteSource_EnemySide[TERRAIN_MAX] = {
    [TERRAIN_PLAIN]            = terrain_path_enemy_NCGR_lz,
    [TERRAIN_SAND]             = terrain_sand_enemy_NCGR_lz,
    [TERRAIN_GRASS]            = terrain_grass_enemy_NCGR_lz,
    [TERRAIN_PUDDLE]           = terrain_path_puddles_enemy_NCGR_lz,
    [TERRAIN_MOUNTAIN]         = terrain_rocky_enemy_NCGR_lz,
    [TERRAIN_CAVE]             = terrain_cave_enemy_NCGR_lz,
    [TERRAIN_SNOW]             = terrain_snow_enemy_NCGR_lz,
    [TERRAIN_WATER]            = terrain_water_enemy_NCGR_lz,
    [TERRAIN_ICE]              = terrain_ice_enemy_NCGR_lz,
    [TERRAIN_BUILDING]         = terrain_indoors_enemy_NCGR_lz,
    [TERRAIN_GREAT_MARSH]      = terrain_mud_enemy_NCGR_lz,
    [TERRAIN_BRIDGE]           = terrain_mud_enemy_NCGR_lz,
    [TERRAIN_AARON]            = terrain_league_aaron_enemy_NCGR_lz,
    [TERRAIN_BERTHA]           = terrain_league_bertha_enemy_NCGR_lz,
    [TERRAIN_FLINT]            = terrain_league_flint_enemy_NCGR_lz,
    [TERRAIN_LUCIAN]           = terrain_league_lucian_enemy_NCGR_lz,
    [TERRAIN_CYNTHIA]          = terrain_league_cynthia_enemy_NCGR_lz,
    [TERRAIN_DISTORTION_WORLD] = terrain_distortion_world_enemy_NCGR_lz,
    [TERRAIN_BATTLE_TOWER]     = terrain_battle_tower_enemy_NCGR_lz,
    [TERRAIN_BATTLE_FACTORY]   = terrain_battle_factory_enemy_NCGR_lz,
    [TERRAIN_BATTLE_ARCADE]    = terrain_battle_arcade_enemy_NCGR_lz,
    [TERRAIN_BATTLE_CASTLE]    = terrain_battle_castle_enemy_NCGR_lz,
    [TERRAIN_BATTLE_HALL]      = terrain_battle_hall_enemy_NCGR_lz,
    [TERRAIN_GIRATINA]         = terrain_giratina_enemy_NCGR_lz,
};

ALIGN_4 static const u16 sTerrainPaletteSource[TERRAIN_MAX][3] = {
    [TERRAIN_PLAIN]            = { terrain_path_day_NCLR,             terrain_path_evening_NCLR,           terrain_path_night_NCLR             },
    [TERRAIN_SAND]             = { terrain_sand_day_NCLR,             terrain_sand_evening_NCLR,           terrain_sand_night_NCLR             },
    [TERRAIN_GRASS]            = { terrain_grass_day_NCLR,            terrain_grass_evening_NCLR,          terrain_grass_night_NCLR            },
    [TERRAIN_PUDDLE]           = { terrain_path_puddles_day_NCLR,     terrain_path_puddles_evening_NCLR,   terrain_path_puddles_night_NCLR     },
    [TERRAIN_MOUNTAIN]         = { terrain_rocky_day_NCLR,            terrain_rocky_evening_NCLR,          terrain_rocky_night_NCLR            },
    [TERRAIN_CAVE]             = { terrain_cave_all_NCLR,             terrain_cave_all_NCLR_1,             terrain_cave_all_NCLR_2             },
    [TERRAIN_SNOW]             = { terrain_snow_day_NCLR,             terrain_snow_evening_NCLR,           terrain_snow_night_NCLR             },
    [TERRAIN_WATER]            = { terrain_water_day_NCLR,            terrain_water_evening_NCLR,          terrain_water_night_NCLR            },
    [TERRAIN_ICE]              = { terrain_ice_day_NCLR,              terrain_ice_evening_NCLR,            terrain_ice_night_NCLR              },
    [TERRAIN_BUILDING]         = { terrain_indoors_all_NCLR,          terrain_indoors_all_NCLR_1,          terrain_indoors_all_NCLR_2          },
    [TERRAIN_GREAT_MARSH]      = { terrain_mud_day_NCLR,              terrain_mud_evening_NCLR,            terrain_mud_night_NCLR              },
    [TERRAIN_BRIDGE]           = { terrain_mud_day_NCLR,              terrain_mud_evening_NCLR,            terrain_mud_night_NCLR              },
    [TERRAIN_AARON]            = { terrain_league_aaron_all_NCLR,     terrain_league_aaron_all_NCLR_1,     terrain_league_aaron_all_NCLR_2     },
    [TERRAIN_BERTHA]           = { terrain_league_bertha_all_NCLR,    terrain_league_bertha_all_NCLR_1,    terrain_league_bertha_all_NCLR_2    },
    [TERRAIN_FLINT]            = { terrain_league_flint_all_NCLR,     terrain_league_flint_all_NCLR_1,     terrain_league_flint_all_NCLR_2     },
    [TERRAIN_LUCIAN]           = { terrain_league_lucian_all_NCLR,    terrain_league_lucian_all_NCLR_1,    terrain_league_lucian_all_NCLR_2    },
    [TERRAIN_CYNTHIA]          = { terrain_league_cynthia_all_NCLR,   terrain_league_cynthia_all_NCLR_1,   terrain_league_cynthia_all_NCLR_2   },
    [TERRAIN_DISTORTION_WORLD] = { terrain_distortion_world_all_NCLR, terrain_distortion_world_all_NCLR_1, terrain_distortion_world_all_NCLR_2 },
    [TERRAIN_BATTLE_TOWER]     = { terrain_battle_tower_all_NCLR,     terrain_battle_tower_all_NCLR_1,     terrain_battle_tower_all_NCLR_2     },
    [TERRAIN_BATTLE_FACTORY]   = { terrain_battle_factory_all_NCLR,   terrain_battle_factory_all_NCLR_1,   terrain_battle_factory_all_NCLR_2   },
    [TERRAIN_BATTLE_ARCADE]    = { terrain_battle_arcade_all_NCLR,    terrain_battle_arcade_all_NCLR_1,    terrain_battle_arcade_all_NCLR_2    },
    [TERRAIN_BATTLE_CASTLE]    = { terrain_battle_castle_all_NCLR,    terrain_battle_castle_all_NCLR_1,    terrain_battle_castle_all_NCLR_2    },
    [TERRAIN_BATTLE_HALL]      = { terrain_battle_hall_all_NCLR,      terrain_battle_hall_all_NCLR_1,      terrain_battle_hall_all_NCLR_2      },
    [TERRAIN_GIRATINA]         = { terrain_giratina_all_NCLR,         terrain_giratina_all_NCLR_1,         terrain_giratina_all_NCLR_2         },
};
// clang-format on

void ov16_02268520(UnkStruct_ov16_02268520 *param0)
{
    SpriteSystem *v0;
    SpriteManager *v1;
    const SpriteTemplate *v2;
    int v3, v4, v5, v6, v7, v8;
    int v9;
    NARC *v10 = NARC_ctor(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, HEAP_ID_BATTLE);
    v0 = BattleSystem_GetSpriteSystem(param0->unk_04);
    v1 = BattleSystem_GetSpriteManager(param0->unk_04);
    v9 = BattleSystem_GetBackgroundTimeOffset(param0->unk_04);
    v2 = &sTerrainSpriteTemplates[param0->unk_08];

    if (param0->unk_08 == 0) {
        v3 = sTerrainSpriteSource_PlayerSide[param0->unk_09];
        v4 = 20013;
        v5 = terrain_player_cell_NCER_lz;
        v6 = 20005;
        v7 = terrain_player_anim_NANR_lz;
        v8 = 20005;
    } else {
        v3 = sTerrainSpriteSource_EnemySide[param0->unk_09];
        v4 = 20014;
        v5 = terrain_enemy_cell_NCER_lz;
        v6 = 20006;
        v7 = terrain_enemy_anim_NANR_lz;
        v8 = 20006;
    }

    SpriteSystem_LoadCharResObjFromOpenNarc(v0, v1, v10, v3, TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, v4);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(BattleSystem_GetPaletteData(param0->unk_04), PLTTBUF_MAIN_OBJ, v0, v1, v10, sTerrainPaletteSource[param0->unk_09][v9], FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 20009);
    PaletteData_LoadBufferFromFileStart(BattleSystem_GetPaletteData(param0->unk_04), NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_OBJ, sTerrainPaletteSource[param0->unk_09][v9], 5, PLTTBUF_MAIN_BG, 0x20, 0x7 * 0x10);
    SpriteSystem_LoadCellResObjFromOpenNarc(v0, v1, v10, v5, TRUE, v6);
    SpriteSystem_LoadAnimResObjFromOpenNarc(v0, v1, v10, v7, TRUE, v8);
    NARC_dtor(v10);
}

void ov16_0226862C(UnkStruct_ov16_02268520 *param0)
{
    SpriteSystem *v0;
    SpriteManager *v1;
    const SpriteTemplate *v2;

    v0 = BattleSystem_GetSpriteSystem(param0->unk_04);
    v1 = BattleSystem_GetSpriteManager(param0->unk_04);
    v2 = &sTerrainSpriteTemplates[param0->unk_08];

    param0->unk_00 = SpriteSystem_NewSprite(v0, v1, v2);
    Sprite_TickFrame(param0->unk_00->sprite);
}

void ov16_02268660(UnkStruct_ov16_02268520 *param0)
{
    if (param0->unk_00 == NULL) {
        return;
    }

    Sprite_DeleteAndFreeResources(param0->unk_00);
    param0->unk_00 = NULL;
}

void ov16_02268674(UnkStruct_ov16_02268520 *param0)
{
    SpriteManager *v0;
    int v1, v2, v3;

    v0 = BattleSystem_GetSpriteManager(param0->unk_04);

    if (param0->unk_08 == 0) {
        v1 = 20013;
        v2 = 20005;
        v3 = 20005;
    } else {
        v1 = 20014;
        v2 = 20006;
        v3 = 20006;
    }

    SpriteManager_UnloadCharObjById(v0, v1);
    SpriteManager_UnloadPlttObjById(v0, 20009);
    SpriteManager_UnloadCellObjById(v0, v2);
    SpriteManager_UnloadAnimObjById(v0, v3);
}

void ov16_022686BC(UnkStruct_ov16_02268520 *param0, int param1)
{
    if (param0->unk_00 == NULL) {
        return;
    }

    ManagedSprite_SetDrawFlag(param0->unk_00, param1);
}

void ov16_022686CC(UnkStruct_ov16_02268520 *param0, BattleSystem *battleSys, u16 param2, int param3)
{
    MI_CpuClearFast(param0, sizeof(UnkStruct_ov16_02268520));

    param0->unk_04 = battleSys;
    param0->unk_08 = param2;
    param0->unk_09 = param3;

    if (param3 >= TERRAIN_MAX) {
        GF_ASSERT(FALSE);
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
