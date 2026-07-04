#include "overlay104/frontier_scenes.h"

#include <nitro.h>

#include "constants/battle_frontier.h"
#include "generated/sdat.h"
#include "generated/text_banks.h"

#include "graphics/frontier/backgrounds/frontier_backgrounds.naix"
#include "overlay104/ov104_0223C164.h"
#include "overlay104/ov104_0223D9E4.h"

#include "bg_window.h"
#include "gx_layers.h"
#include "heap.h"

#include "res/field/frontier_scripts/fr_script.naix"

typedef void (*FrontierSceneSetupDestroyFunc)(FrontierGraphics *, void **);

typedef struct FrontierScene {
    GXBGMode bgMode;
    FrontierSceneSetupDestroyFunc setupFunc;
    FrontierSceneSetupDestroyFunc destroyFunc;
    u16 scriptID;
    u16 textBankID;
    u16 bgmID;
    u16 screenSize;
    u16 narcID;
    u16 tilemapIdx;
    u16 tilesIdx;
    u16 plttIdx;
    u16 subTilemapIdx;
    u16 subTilesIdx;
    u16 subPlttIdx;
    u8 unk_22;
    u8 unk_23;
    u16 unused;
} FrontierScene;

static void ov104_0222EBBC(FrontierGraphics *graphics, void **sceneData);
static void ov104_0222EBCC(FrontierGraphics *graphics, void **sceneData);
static void BattleHallBattleRoomSceneSetup(FrontierGraphics *graphics, void **sceneData);
static void BattleHallBattleRoomSceneDestroy(FrontierGraphics *graphics, void **sceneData);
static void BattleArcadeCorridorSceneSetup(FrontierGraphics *graphics, void **sceneData);
static void BattleArcadeCorridorSceneDestroy(FrontierGraphics *graphics, void **sceneData);
static void BattleArcadeBattleRoomSceneSetup(FrontierGraphics *graphics, void **sceneData);
static void BattleArcadeBattleRoomSceneDestroy(FrontierGraphics *graphics, void **sceneData);
static void BattleFactoryCorridorSceneSetup(FrontierGraphics *graphics, void **sceneData);
static void BattleFactoryCorridorSceneDestroy(FrontierGraphics *graphics, void **sceneData);
static void BattleFactoryBattleRoomSceneSetup(FrontierGraphics *graphics, void **sceneData);
static void BattleFactoryBattleRoomSceneDestroy(FrontierGraphics *graphics, void **sceneData);
static void ov104_0222EC90(FrontierGraphics *graphics, void **sceneData);
static void ov104_0222ECA0(FrontierGraphics *graphics, void **sceneData);
static void BattleCastleBattleRoomSceneSetup(FrontierGraphics *graphics, void **sceneData);
static void BattleCastleBattleRoomSceneDestroy(FrontierGraphics *graphics, void **sceneData);

static const FrontierScene sFrontierScenes[] = {
    [FRONTIER_SCENE_0] = {
        .bgMode = GX_BGMODE_0,
        .setupFunc = ov104_0222EBBC,
        .destroyFunc = ov104_0222EBCC,
        0x4,
        .textBankID = 204,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_factory_battle_room_NSCR_lz,
        .tilesIdx = battle_factory_NCGR_lz,
        .plttIdx = battle_factory_NCLR,
        .subTilemapIdx = battle_factory_corridor_floor_NSCR_lz,
        .subTilesIdx = battle_factory_NCGR_lz,
        .subPlttIdx = battle_factory_NCLR,
        .unk_22 = 0,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_1] = {
        .bgMode = GX_BGMODE_0,
        .setupFunc = NULL,
        .destroyFunc = NULL,
        0x0,
        .textBankID = 0xCC,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_factory_corridor_NSCR_lz,
        .tilesIdx = battle_factory_NCGR_lz,
        .plttIdx = battle_factory_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 0,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_2] = {
        .bgMode = GX_BGMODE_0,
        .setupFunc = NULL,
        .destroyFunc = NULL,
        0x5,
        .textBankID = 206,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_factory_battle_room_NSCR_lz,
        .tilesIdx = battle_factory_NCGR_lz,
        .plttIdx = battle_factory_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 0,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_FACTORY_CORRIDOR] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = BattleFactoryCorridorSceneSetup,
        .destroyFunc = BattleFactoryCorridorSceneDestroy,
        .scriptID = frontier_scripts_battle_factory,
        .textBankID = TEXT_BANK_BATTLE_FACTORY_SCENE,
        .bgmID = SEQ_PL_BF_FACTORY,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_factory_corridor_NSCR_lz,
        .tilesIdx = battle_factory_NCGR_lz,
        .plttIdx = battle_factory_NCLR,
        .subTilemapIdx = battle_factory_corridor_floor_NSCR_lz,
        .subTilesIdx = battle_factory_NCGR_lz,
        .subPlttIdx = battle_factory_NCLR,
        .unk_22 = 1,
        .unk_23 = 0,
    },
    [FRONTIER_SCENE_FACTORY_BATTLE_ROOM] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = BattleFactoryBattleRoomSceneSetup,
        .destroyFunc = BattleFactoryBattleRoomSceneDestroy,
        .scriptID = frontier_scripts_battle_factory,
        .textBankID = TEXT_BANK_BATTLE_FACTORY_SCENE,
        .bgmID = SEQ_PL_BF_FACTORY,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_factory_battle_room_NSCR_lz,
        .tilesIdx = battle_factory_NCGR_lz,
        .plttIdx = battle_factory_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_TOWER_CORRIDOR] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = NULL,
        .destroyFunc = NULL,
        .scriptID = frontier_scripts_battle_tower_corridor,
        .textBankID = TEXT_BANK_BATTLE_TOWER,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_tower_corridor_NSCR_lz,
        .tilesIdx = battle_tower_NCGR_lz,
        .plttIdx = battle_tower_NCLR,
        .subTilemapIdx = battle_tower_corridor_fg_NSCR_lz,
        .subTilesIdx = battle_tower_NCGR_lz,
        .subPlttIdx = battle_tower_NCLR,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_TOWER_MULTI_CORRIDOR] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = NULL,
        .destroyFunc = NULL,
        .scriptID = frontier_scripts_battle_tower_corridor_multi,
        .textBankID = TEXT_BANK_BATTLE_TOWER,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_tower_multi_corridor_NSCR_lz,
        .tilesIdx = battle_tower_NCGR_lz,
        .plttIdx = battle_tower_NCLR,
        .subTilemapIdx = battle_tower_multi_corridor_fg_NSCR_lz,
        .subTilesIdx = battle_tower_NCGR_lz,
        .subPlttIdx = battle_tower_NCLR,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_TOWER_BATTLE_ROOM] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = NULL,
        .destroyFunc = NULL,
        .scriptID = frontier_scripts_battle_tower_battle_room,
        .textBankID = TEXT_BANK_BATTLE_TOWER_BATTLE_ROOM,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_tower_battle_room_NSCR_lz,
        .tilesIdx = battle_tower_NCGR_lz,
        .plttIdx = battle_tower_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_TOWER_MULTI_BATTLE_ROOM] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = NULL,
        .destroyFunc = NULL,
        .scriptID = frontier_scripts_battle_tower_multi_battle_room,
        .textBankID = TEXT_BANK_BATTLE_TOWER_MULTI_BATTLE_ROOM,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_tower_multi_battle_room_NSCR_lz,
        .tilesIdx = battle_tower_NCGR_lz,
        .plttIdx = battle_tower_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_HALL_CORRIDOR] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = NULL,
        .destroyFunc = NULL,
        .scriptID = frontier_scripts_battle_hall,
        .textBankID = TEXT_BANK_BATTLE_HALL_SCENE,
        .bgmID = SEQ_PL_BF_STAGE,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_hall_corridor_NSCR_lz,
        .tilesIdx = battle_hall_corridor_NCGR_lz,
        .plttIdx = battle_hall_corridor_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_HALL_BATTLE_ROOM] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = BattleHallBattleRoomSceneSetup,
        .destroyFunc = BattleHallBattleRoomSceneDestroy,
        .scriptID = frontier_scripts_battle_hall,
        .textBankID = TEXT_BANK_BATTLE_HALL_SCENE,
        .bgmID = SEQ_PL_BF_STAGE,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_hall_battle_room_NSCR_lz,
        .tilesIdx = battle_hall_battle_room_NCGR_lz,
        .plttIdx = battle_hall_battle_room_NCLR,
        .subTilemapIdx = battle_hall_battle_room_lights_NSCR_lz,
        .subTilesIdx = battle_hall_battle_room_lights_NCGR_lz,
        .subPlttIdx = battle_hall_battle_room_lights_NCLR,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_CASTLE_CORRIDOR] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = NULL,
        .destroyFunc = NULL,
        .scriptID = frontier_scripts_battle_castle,
        .textBankID = TEXT_BANK_BATTLE_CASTLE_SCENE,
        .bgmID = SEQ_PL_BF_CASTLE,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_castle_corridor_NSCR_lz,
        .tilesIdx = battle_castle_corridor_NCGR_lz,
        .plttIdx = battle_castle_corridor_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_CASTLE_BATTLE_ROOM] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = BattleCastleBattleRoomSceneSetup,
        .destroyFunc = BattleCastleBattleRoomSceneDestroy,
        .scriptID = frontier_scripts_battle_castle,
        .textBankID = TEXT_BANK_BATTLE_CASTLE_SCENE,
        .bgmID = SEQ_PL_BF_CASTLE,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_castle_battle_room_NSCR_lz,
        .tilesIdx = battle_castle_battle_room_NCGR_lz,
        .plttIdx = battle_castle_battle_room_NCLR,
        .subTilemapIdx = battle_castle_battle_room_curtains_NSCR_lz,
        .subTilesIdx = battle_castle_battle_room_NCGR_lz,
        .subPlttIdx = battle_castle_battle_room_NCLR,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_13] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = NULL,
        .destroyFunc = NULL,
        .scriptID = frontier_scripts_battle_castle,
        .textBankID = TEXT_BANK_BATTLE_CASTLE_SCENE,
        .bgmID = SEQ_PL_BF_CASTLE,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_castle_unknown_NSCR_lz,
        .tilesIdx = battle_castle_unknown_NCGR_lz,
        .plttIdx = battle_castle_unknown_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_14] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = ov104_0222EC90,
        .destroyFunc = ov104_0222ECA0,
        .scriptID = frontier_scripts_unknown_10,
        .textBankID = TEXT_BANK_UNK_0015,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = unknown_10_NSCR_lz,
        .tilesIdx = unknown_10_NCGR_lz,
        .plttIdx = unknown_10_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_ARCADE_CORRIDOR] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = BattleArcadeCorridorSceneSetup,
        .destroyFunc = BattleArcadeCorridorSceneDestroy,
        .scriptID = frontier_scripts_battle_arcade,
        .textBankID = TEXT_BANK_BATTLE_ARCADE_SCENE,
        .bgmID = SEQ_PL_BF_ROULETTE,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_arcade_corridor_NSCR_lz,
        .tilesIdx = battle_arcade_corridor_NCGR_lz,
        .plttIdx = battle_arcade_corridor_NCLR,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    [FRONTIER_SCENE_ARCADE_BATTLE_ROOM] = {
        .bgMode = GX_BGMODE_5,
        .setupFunc = BattleArcadeBattleRoomSceneSetup,
        .destroyFunc = BattleArcadeBattleRoomSceneDestroy,
        .scriptID = frontier_scripts_battle_arcade,
        .textBankID = TEXT_BANK_BATTLE_ARCADE_SCENE,
        .bgmID = SEQ_PL_BF_ROULETTE,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_FRONTIER_BACKGROUNDS,
        .tilemapIdx = battle_arcade_battle_room_NSCR_lz,
        .tilesIdx = battle_arcade_battle_room_NCGR_lz,
        .plttIdx = battle_arcade_battle_room_NCLR,
        .subTilemapIdx = battle_arcade_screen_lower_ally_hp_NSCR_lz,
        .subTilesIdx = battle_arcade_screen_lower_hp_NCGR_lz,
        .subPlttIdx = battle_arcade_screen_default_NCLR,
        .unk_22 = 1,
        .unk_23 = 1,
    },
};

int FrontierScene_GetParam(enum BattleFrontierScene sceneID, enum FrontierSceneParam sceneParam)
{
    switch (sceneParam) {
    case FR_SCENE_BGMODE:
        return sFrontierScenes[sceneID].bgMode;
    case FR_SCENE_SCRIPT_ID:
        return sFrontierScenes[sceneID].scriptID;
    case FR_SCENE_BANK_ID:
        return sFrontierScenes[sceneID].textBankID;
    case FR_SCENE_BGM_ID:
        return sFrontierScenes[sceneID].bgmID;
    case FR_SCENE_SCREEN_SIZE:
        return sFrontierScenes[sceneID].screenSize;
    case FR_SCENE_NARC_ID:
        return sFrontierScenes[sceneID].narcID;
    case FR_SCENE_TILEMAP_IDX:
        return sFrontierScenes[sceneID].tilemapIdx;
    case FR_SCENE_TILES_IDX:
        return sFrontierScenes[sceneID].tilesIdx;
    case FR_SCENE_PLTT_IDX:
        return sFrontierScenes[sceneID].plttIdx;
    case FR_SCENE_SUB_TILEMAP_IDX:
        return sFrontierScenes[sceneID].subTilemapIdx;
    case FR_SCENE_SUB_TILES_IDX:
        return sFrontierScenes[sceneID].subTilesIdx;
    case FR_SCENE_SUB_PLTT_IDX:
        return sFrontierScenes[sceneID].subPlttIdx;
    case FR_SCENE_FLAG_1:
        return sFrontierScenes[sceneID].unk_22;
    case FR_SCENE_FLAG_2:
        return sFrontierScenes[sceneID].unk_23;
    }

    GF_ASSERT(FALSE);
    return 0;
}

void FrontierScene_CallSetupFunc(FrontierGraphics *graphics, void **sceneData, enum BattleFrontierScene sceneID)
{
    if (sFrontierScenes[sceneID].setupFunc != NULL) {
        sFrontierScenes[sceneID].setupFunc(graphics, sceneData);
    }
}

void FrontierScene_CallDestroyFunc(FrontierGraphics *graphics, void **sceneData, enum BattleFrontierScene sceneID)
{
    if (sFrontierScenes[sceneID].destroyFunc != NULL) {
        sFrontierScenes[sceneID].destroyFunc(graphics, sceneData);
    }
}

static void ov104_0222EBBC(FrontierGraphics *graphics, void **sceneData)
{
    *sceneData = Heap_Alloc(HEAP_ID_94, 32);
}

static void ov104_0222EBCC(FrontierGraphics *graphics, void **sceneData)
{
    Heap_Free(*sceneData);
}

static void BattleHallBattleRoomSceneSetup(FrontierGraphics *graphics, void **sceneData)
{
    *sceneData = ov104_0223D9E4(graphics->bgConfig, graphics->plttData);

    Bg_SetPriority(BG_LAYER_MAIN_0, 1);
    Bg_SetPriority(BG_LAYER_MAIN_2, 2);
    Bg_SetPriority(BG_LAYER_MAIN_3, 3);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
}

static void BattleHallBattleRoomSceneDestroy(FrontierGraphics *graphics, void **sceneData)
{
    ov104_0223DA28(*sceneData);
}

static void BattleArcadeCorridorSceneSetup(FrontierGraphics *graphics, void **sceneData)
{
}

static void BattleArcadeCorridorSceneDestroy(FrontierGraphics *graphics, void **sceneData)
{
}

static void BattleArcadeBattleRoomSceneSetup(FrontierGraphics *graphics, void **sceneData)
{
    Bg_SetPriority(BG_LAYER_MAIN_0, 1);
    Bg_SetPriority(BG_LAYER_MAIN_2, 2);
    Bg_SetPriority(BG_LAYER_MAIN_3, 3);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 20, 20);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, FALSE);
}

static void BattleArcadeBattleRoomSceneDestroy(FrontierGraphics *graphics, void **sceneData)
{
}

static void BattleFactoryCorridorSceneSetup(FrontierGraphics *graphics, void **sceneData)
{
    Bg_SetPriority(BG_LAYER_MAIN_2, 3);
    Bg_SetPriority(BG_LAYER_MAIN_3, 2);
}

static void BattleFactoryCorridorSceneDestroy(FrontierGraphics *graphics, void **sceneData)
{
}

static void BattleFactoryBattleRoomSceneSetup(FrontierGraphics *graphics, void **sceneData)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 20, 20);
}

static void BattleFactoryBattleRoomSceneDestroy(FrontierGraphics *graphics, void **sceneData)
{
}

static void ov104_0222EC90(FrontierGraphics *graphics, void **sceneData)
{
    *sceneData = ov104_0223C164(graphics->bgConfig);
}

static void ov104_0222ECA0(FrontierGraphics *graphics, void **sceneData)
{
    ov104_0223C23C(*sceneData);
}

static void BattleCastleBattleRoomSceneSetup(FrontierGraphics *graphics, void **sceneData)
{
    Bg_SetPriority(BG_LAYER_MAIN_1, 0);
    Bg_SetPriority(BG_LAYER_MAIN_0, 2);
    Bg_SetPriority(BG_LAYER_MAIN_2, 2);
    Bg_SetPriority(BG_LAYER_MAIN_3, 3);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 20, 20);
}

static void BattleCastleBattleRoomSceneDestroy(FrontierGraphics *graphics, void **sceneData)
{
}
