#include "overlay104/ov104_0222EA90.h"

#include <nitro.h>

#include "generated/sdat.h"
#include "generated/text_banks.h"

#include "overlay104/ov104_0223C164.h"
#include "overlay104/ov104_0223D9E4.h"
#include "overlay104/struct_ov104_0223C4CC.h"

#include "bg_window.h"
#include "gx_layers.h"
#include "heap.h"
#include "narc_frontier_bg.h"

#include "res/field/frontier_scripts/fr_script.naix"

typedef void (*UnkFuncPtr_ov104_0223F394)(UnkStruct_ov104_0223C4CC *, void **);

typedef struct FrontierScene {
    GXBGMode bgMode;
    UnkFuncPtr_ov104_0223F394 unk_04;
    UnkFuncPtr_ov104_0223F394 unk_08;
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

static void ov104_0222EBBC(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EBCC(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EBD8(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC0C(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC18(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC1C(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC20(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC58(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC5C(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC70(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC74(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC8C(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222EC90(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222ECA0(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222ECAC(UnkStruct_ov104_0223C4CC *param0, void **param1);
static void ov104_0222ECE4(UnkStruct_ov104_0223C4CC *param0, void **param1);

static const FrontierScene sFrontierScenes[] = {
    {
        .bgMode = GX_BGMODE_0,
        ov104_0222EBBC,
        ov104_0222EBCC,
        0x4,
        .textBankID = 204,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_FACTORY_BATTLE_ROOM_TILEMAP,
        .tilesIdx = BATTLE_FACTORY_TILES,
        .plttIdx = BATTLE_FACTORY_PLTT,
        .subTilemapIdx = BATTLE_FACTORY_CORRIDOR_FLOOR_TILEMAP,
        .subTilesIdx = BATTLE_FACTORY_TILES,
        .subPlttIdx = BATTLE_FACTORY_PLTT,
        .unk_22 = 0,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_0,
        NULL,
        NULL,
        0x0,
        .textBankID = 0xCC,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_FACTORY_CORRIDOR_TILEMAP,
        .tilesIdx = BATTLE_FACTORY_TILES,
        .plttIdx = BATTLE_FACTORY_PLTT,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 0,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_0,
        NULL,
        NULL,
        0x5,
        .textBankID = 206,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_FACTORY_BATTLE_ROOM_TILEMAP,
        .tilesIdx = BATTLE_FACTORY_TILES,
        .plttIdx = BATTLE_FACTORY_PLTT,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 0,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        ov104_0222EC5C,
        ov104_0222EC70,
        .scriptID = frontier_scripts_battle_factory,
        .textBankID = TEXT_BANK_BATTLE_FACTORY_SCENE,
        .bgmID = SEQ_PL_BF_FACTORY,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_FACTORY_CORRIDOR_TILEMAP,
        .tilesIdx = BATTLE_FACTORY_TILES,
        .plttIdx = BATTLE_FACTORY_PLTT,
        .subTilemapIdx = BATTLE_FACTORY_CORRIDOR_FLOOR_TILEMAP,
        .subTilesIdx = BATTLE_FACTORY_TILES,
        .subPlttIdx = BATTLE_FACTORY_PLTT,
        .unk_22 = 1,
        .unk_23 = 0,
    },
    {
        .bgMode = GX_BGMODE_5,
        ov104_0222EC74,
        ov104_0222EC8C,
        .scriptID = frontier_scripts_battle_factory,
        .textBankID = TEXT_BANK_BATTLE_FACTORY_SCENE,
        .bgmID = SEQ_PL_BF_FACTORY,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_FACTORY_BATTLE_ROOM_TILEMAP,
        .tilesIdx = BATTLE_FACTORY_TILES,
        .plttIdx = BATTLE_FACTORY_PLTT,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        NULL,
        NULL,
        .scriptID = frontier_scripts_battle_tower_corridor,
        .textBankID = TEXT_BANK_BATTLE_TOWER,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_TOWER_CORRIDOR_TILEMAP,
        .tilesIdx = BATTLE_TOWER_TILES,
        .plttIdx = BATTLE_TOWER_PLTT,
        .subTilemapIdx = BATTLE_TOWER_CORRIDOR_FG_TILEMAP,
        .subTilesIdx = BATTLE_TOWER_TILES,
        .subPlttIdx = BATTLE_TOWER_PLTT,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        NULL,
        NULL,
        .scriptID = frontier_scripts_battle_tower_corridor_multi,
        .textBankID = TEXT_BANK_BATTLE_TOWER,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_TOWER_MULTI_CORRIDOR_TILEMAP,
        .tilesIdx = BATTLE_TOWER_TILES,
        .plttIdx = BATTLE_TOWER_PLTT,
        .subTilemapIdx = BATTLE_TOWER_MULTI_CORRIDOR_FG_TILEMAP,
        .subTilesIdx = BATTLE_TOWER_TILES,
        .subPlttIdx = BATTLE_TOWER_PLTT,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        NULL,
        NULL,
        .scriptID = frontier_scripts_battle_tower_battle_room,
        .textBankID = TEXT_BANK_BATTLE_TOWER_BATTLE_ROOM,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_TOWER_BATTLE_ROOM_TILEMAP,
        .tilesIdx = BATTLE_TOWER_TILES,
        .plttIdx = BATTLE_TOWER_PLTT,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        NULL,
        NULL,
        .scriptID = frontier_scripts_battle_tower_multi_battle_room,
        .textBankID = TEXT_BANK_BATTLE_TOWER_MULTI_BATTLE_ROOM,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_TOWER_MULTI_BATTLE_ROOM_TILEMAP,
        .tilesIdx = BATTLE_TOWER_TILES,
        .plttIdx = BATTLE_TOWER_PLTT,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        NULL,
        NULL,
        .scriptID = frontier_scripts_battle_hall,
        .textBankID = TEXT_BANK_BATTLE_HALL_SCENE,
        .bgmID = SEQ_PL_BF_STAGE,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_HALL_CORRIDOR_TILEMAP,
        .tilesIdx = BATTLE_HALL_CORRIDOR_TILES,
        .plttIdx = BATTLE_HALL_CORRIDOR_PLTT,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        ov104_0222EBD8,
        ov104_0222EC0C,
        .scriptID = frontier_scripts_battle_hall,
        .textBankID = TEXT_BANK_BATTLE_HALL_SCENE,
        .bgmID = SEQ_PL_BF_STAGE,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_HALL_BATTLE_ROOM_TILEMAP,
        .tilesIdx = BATTLE_HALL_BATTLE_ROOM_TILES,
        .plttIdx = BATTLE_HALL_BATTLE_ROOM_PLTT,
        .subTilemapIdx = BATTLE_HALL_BATTLE_ROOM_LIGHTS_TILEMAP,
        .subTilesIdx = BATTLE_HALL_BATTLE_ROOM_LIGHTS_TILES,
        .subPlttIdx = BATTLE_HALL_BATTLE_ROOM_LIGHTS_PLTT,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        NULL,
        NULL,
        .scriptID = frontier_scripts_battle_castle,
        .textBankID = TEXT_BANK_BATTLE_CASTLE_SCENE,
        .bgmID = SEQ_PL_BF_CASTLE,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_CASTLE_CORRIDOR_TILEMAP,
        .tilesIdx = BATTLE_CASTLE_CORRIDOR_TILES,
        .plttIdx = BATTLE_CASTLE_CORRIDOR_PLTT,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        ov104_0222ECAC,
        ov104_0222ECE4,
        .scriptID = frontier_scripts_battle_castle,
        .textBankID = TEXT_BANK_BATTLE_CASTLE_SCENE,
        .bgmID = SEQ_PL_BF_CASTLE,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_CASTLE_BATTLE_ROOM_TILEMAP,
        .tilesIdx = BATTLE_CASTLE_BATTLE_ROOM_TILES,
        .plttIdx = BATTLE_CASTLE_BATTLE_ROOM_PLTT,
        .subTilemapIdx = BATTLE_CASTLE_BATTLE_ROOM_CURTAINS_TILEMAP,
        .subTilesIdx = BATTLE_CASTLE_BATTLE_ROOM_TILES,
        .subPlttIdx = BATTLE_CASTLE_BATTLE_ROOM_PLTT,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        NULL,
        NULL,
        .scriptID = frontier_scripts_battle_castle,
        .textBankID = TEXT_BANK_BATTLE_CASTLE_SCENE,
        .bgmID = SEQ_PL_BF_CASTLE,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = 28,
        .tilesIdx = 27,
        .plttIdx = 136,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        ov104_0222EC90,
        ov104_0222ECA0,
        .scriptID = frontier_scripts_unknown_10,
        .textBankID = TEXT_BANK_UNK_0015,
        .bgmID = SEQ_BF_TOWWER,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = 128,
        .tilesIdx = 127,
        .plttIdx = 172,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        ov104_0222EC18,
        ov104_0222EC1C,
        .scriptID = frontier_scripts_battle_arcade,
        .textBankID = TEXT_BANK_BATTLE_ARCADE_SCENE,
        .bgmID = SEQ_PL_BF_ROULETTE,
        .screenSize = BG_SCREEN_SIZE_256x256,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_ARCADE_CORRIDOR_TILEMAP,
        .tilesIdx = BATTLE_ARCADE_CORRIDOR_TILES,
        .plttIdx = BATTLE_ARCADE_CORRIDOR_PLTT,
        .subTilemapIdx = -1,
        .subTilesIdx = -1,
        .subPlttIdx = -1,
        .unk_22 = 1,
        .unk_23 = 1,
    },
    {
        .bgMode = GX_BGMODE_5,
        ov104_0222EC20,
        ov104_0222EC58,
        .scriptID = frontier_scripts_battle_arcade,
        .textBankID = TEXT_BANK_BATTLE_ARCADE_SCENE,
        .bgmID = SEQ_PL_BF_ROULETTE,
        .screenSize = BG_SCREEN_SIZE_512x512,
        .narcID = NARC_INDEX_RESOURCE__ENG__FRONTIER_GRAPHIC__FRONTIER_BG,
        .tilemapIdx = BATTLE_ARCADE_BATTLE_ROOM_TILEMAP,
        .tilesIdx = BATTLE_ARCADE_BATTLE_ROOM_TILES,
        .plttIdx = BATTLE_ARCADE_BATTLE_ROOM_PLTT,
        .subTilemapIdx = BATTLE_ARCADE_BATTLE_ROOM_HP_SCREEN_TILEMAP,
        .subTilesIdx = BATTLE_ARCADE_BATTLE_ROOM_HP_SCREEN_TILES,
        .subPlttIdx = BATTLE_ARCADE_BATTLE_ROOM_HP_SCREEN_PLTT,
        .unk_22 = 1,
        .unk_23 = 1,
    },
};

int GetFrontierSceneValue(int scene, enum FrontierSceneParam sceneParam)
{
    switch (sceneParam) {
    case FR_SCENE_BGMODE:
        return sFrontierScenes[scene].bgMode;
    case FR_SCENE_SCRIPT_ID:
        return sFrontierScenes[scene].scriptID;
    case FR_SCENE_BANK_ID:
        return sFrontierScenes[scene].textBankID;
    case FR_SCENE_BGM_ID:
        return sFrontierScenes[scene].bgmID;
    case FR_SCENE_SCREEN_SIZE:
        return sFrontierScenes[scene].screenSize;
    case FR_SCENE_NARC_ID:
        return sFrontierScenes[scene].narcID;
    case FR_SCENE_TILEMAP_IDX:
        return sFrontierScenes[scene].tilemapIdx;
    case FR_SCENE_TILES_IDX:
        return sFrontierScenes[scene].tilesIdx;
    case FR_SCENE_PLTT_IDX:
        return sFrontierScenes[scene].plttIdx;
    case FR_SCENE_SUB_TILEMAP_IDX:
        return sFrontierScenes[scene].subTilemapIdx;
    case FR_SCENE_SUB_TILES_IDX:
        return sFrontierScenes[scene].subTilesIdx;
    case FR_SCENE_SUB_PLTT_IDX:
        return sFrontierScenes[scene].subPlttIdx;
    case FR_SCENE_FLAG_1:
        return sFrontierScenes[scene].unk_22;
    case FR_SCENE_FLAG_2:
        return sFrontierScenes[scene].unk_23;
    }

    GF_ASSERT(0);
    return 0;
}

void ov104_0222EB8C(UnkStruct_ov104_0223C4CC *param0, void **param1, int param2)
{
    if (sFrontierScenes[param2].unk_04 != NULL) {
        sFrontierScenes[param2].unk_04(param0, param1);
    }
}

void ov104_0222EBA4(UnkStruct_ov104_0223C4CC *param0, void **param1, int param2)
{
    if (sFrontierScenes[param2].unk_08 != NULL) {
        sFrontierScenes[param2].unk_08(param0, param1);
    }
}

static void ov104_0222EBBC(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    *param1 = Heap_Alloc(HEAP_ID_94, 32);
}

static void ov104_0222EBCC(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    Heap_Free(*param1);
}

static void ov104_0222EBD8(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    *param1 = ov104_0223D9E4(param0->unk_00, param0->unk_04);

    Bg_SetPriority(BG_LAYER_MAIN_0, 1);
    Bg_SetPriority(BG_LAYER_MAIN_2, 2);
    Bg_SetPriority(BG_LAYER_MAIN_3, 3);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

    return;
}

static void ov104_0222EC0C(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    ov104_0223DA28(*param1);
    return;
}

static void ov104_0222EC18(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    return;
}

static void ov104_0222EC1C(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    return;
}

static void ov104_0222EC20(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    Bg_SetPriority(BG_LAYER_MAIN_0, 1);
    Bg_SetPriority(BG_LAYER_MAIN_2, 2);
    Bg_SetPriority(BG_LAYER_MAIN_3, 3);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 20, 20);
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG2, 0);

    return;
}

static void ov104_0222EC58(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    return;
}

static void ov104_0222EC5C(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    Bg_SetPriority(BG_LAYER_MAIN_2, 3);
    Bg_SetPriority(BG_LAYER_MAIN_3, 2);
    return;
}

static void ov104_0222EC70(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    return;
}

static void ov104_0222EC74(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 20, 20);
    return;
}

static void ov104_0222EC8C(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    return;
}

static void ov104_0222EC90(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    *param1 = ov104_0223C164(param0->unk_00);
    return;
}

static void ov104_0222ECA0(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    ov104_0223C23C(*param1);
    return;
}

static void ov104_0222ECAC(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    Bg_SetPriority(BG_LAYER_MAIN_1, 0);
    Bg_SetPriority(BG_LAYER_MAIN_0, 2);
    Bg_SetPriority(BG_LAYER_MAIN_2, 2);
    Bg_SetPriority(BG_LAYER_MAIN_3, 3);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 20, 20);
    return;
}

static void ov104_0222ECE4(UnkStruct_ov104_0223C4CC *param0, void **param1)
{
    return;
}
