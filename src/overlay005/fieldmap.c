#include "overlay005/fieldmap.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/field/map.h"
#include "constants/field/map_load.h"
#include "constants/heap.h"

#include "struct_decls/struct_02020C44_decl.h"
#include "struct_decls/struct_0203A790_decl.h"
#include "struct_defs/struct_02099F80.h"

#include "field/field_system.h"
#include "field/field_system_sub2_decl.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/area_data.h"
#include "overlay005/area_light.h"
#include "overlay005/const_ov5_021FF6B8.h"
#include "overlay005/const_ov5_021FF744.h"
#include "overlay005/const_ov5_021FF7D0.h"
#include "overlay005/dynamic_terrain_height.h"
#include "overlay005/field_camera.h"
#include "overlay005/hblank_system.h"
#include "overlay005/honey_tree.h"
#include "overlay005/land_data.h"
#include "overlay005/map_name_popup.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"
#include "overlay005/model_attributes.h"
#include "overlay005/ov5_021D1A94.h"
#include "overlay005/ov5_021D57BC.h"
#include "overlay005/ov5_021D5BC0.h"
#include "overlay005/ov5_021D5CB0.h"
#include "overlay005/ov5_021D5EB8.h"
#include "overlay005/ov5_021DF440.h"
#include "overlay005/ov5_021EA714.h"
#include "overlay005/ov5_021ECC20.h"
#include "overlay005/ov5_021ECE40.h"
#include "overlay005/ov5_021EE75C.h"
#include "overlay005/ov5_021EF4BC.h"
#include "overlay005/ov5_021F0824.h"
#include "overlay005/ov5_021F10E8.h"
#include "overlay005/signpost.h"
#include "overlay005/struct_ov5_021D1A68_decl.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay009/ov9_02249960.h"

#include "bg_window.h"
#include "camera.h"
#include "char_transfer.h"
#include "comm_player_manager.h"
#include "dynamic_map_features.h"
#include "easy3d.h"
#include "field_map_change.h"
#include "field_message.h"
#include "field_overworld_state.h"
#include "field_system.h"
#include "field_task.h"
#include "game_overlay.h"
#include "graphics.h"
#include "gx_layers.h"
#include "heap.h"
#include "inlines.h"
#include "map_header.h"
#include "map_header_data.h"
#include "map_matrix.h"
#include "map_object.h"
#include "narc.h"
#include "overlay_manager.h"
#include "overworld_map_history.h"
#include "persisted_map_features.h"
#include "player_avatar.h"
#include "pltt_transfer.h"
#include "pokeradar.h"
#include "render_oam.h"
#include "savedata_misc.h"
#include "screen_fade.h"
#include "script_manager.h"
#include "system.h"
#include "unk_02020AEC.h"
#include "unk_0202419C.h"
#include "unk_020553DC.h"
#include "unk_020559DC.h"
#include "unk_02055C50.h"
#include "vram_transfer.h"

FS_EXTERN_OVERLAY(overlay6);
FS_EXTERN_OVERLAY(overlay7);
FS_EXTERN_OVERLAY(overlay8);
FS_EXTERN_OVERLAY(overlay9);

struct UnkStruct_ov5_021D1A68_t {
    u16 unk_00;
    int unk_02[24];
};

static void ov5_021D1444(BgConfig *bgl);
static void ov5_021D1524(BgConfig *bgl);
static void ov5_021D154C(void);
static void ov5_021D1570(void);
static void FieldMap_InitModelAttributes(ModelAttributes *modelAttrs);
static void ov5_021D15F4(FieldSystem *fieldSystem);
static void ov5_021D173C(FieldSystem *fieldSystem);
static void ov5_021D1414(void);
static void ov5_021D15B4(void);
static void ov5_021D15E8(void);
static void ov5_021D1790(FieldSystem *fieldSystem);
static void ov5_021D17EC(FieldSystem *fieldSystem);
static void ov5_021D1878(FieldSystem *fieldSystem);
static void ov5_021D1968(FieldSystem *fieldSystem);
static BOOL FieldMap_Init(ApplicationManager *appMan, int *param1);
static BOOL FieldMap_Main(ApplicationManager *appMan, int *param1);
static BOOL FieldMap_Exit(ApplicationManager *appMan, int *param1);
static BOOL FieldMap_ChangeZone(FieldSystem *fieldSystem);
static void ov5_021D134C(FieldSystem *fieldSystem, u8 param1);
static BOOL ov5_021D119C(FieldSystem *fieldSystem);
static void fieldmap(void *param0);
static void ov5_021D13B4(FieldSystem *fieldSystem);
static int ov5_021D1178(FieldSystem *fieldSystem);
static BOOL FieldMap_InDistortionWorld(FieldSystem *fieldSystem);
static UnkStruct_ov5_021D1A68 *ov5_021D1A14(int param0, int param1);
static const int *ov5_021D1A68(const UnkStruct_ov5_021D1A68 *param0);
static const int ov5_021D1A6C(const UnkStruct_ov5_021D1A68 *param0);
static void ov5_021D1A70(UnkStruct_ov5_021D1A68 *param0);

static inline void inline_fieldmap(FieldSystem *fieldSystem)
{
    UnkStruct_ov5_021ED0A4 *v0 = sub_0206285C(fieldSystem->mapObjMan);
    UnkStruct_02020C44 *v1 = ov5_021EDC8C(v0);

    sub_02020D68(v1);
}

static void fieldmap(void *param0)
{
    FieldSystem *fieldSystem = param0;

    Bg_RunScheduledUpdates(fieldSystem->bgConfig);
    VramTransfer_Process();
    RenderOam_Transfer();

    inline_fieldmap(fieldSystem);
}

static BOOL FieldMap_Init(ApplicationManager *appMan, int *param1)
{
    FieldSystem *fieldSystem;
    BOOL ret = FALSE;

    fieldSystem = ApplicationManager_Args(appMan);

    switch (*param1) {
    case 0:
        SetVBlankCallback(NULL, NULL);
        DisableHBlank();

        G2_BlendNone();
        G2S_BlendNone();

        ResetVisibleHardwareWindows(DS_SCREEN_MAIN);
        ResetVisibleHardwareWindows(DS_SCREEN_SUB);
        ov5_021D173C(fieldSystem);
        FieldMapChange_Set3DDisplay(fieldSystem);

        if (fieldSystem->mapLoadMode->unk_00_20) {
            Overlay_LoadByID(FS_OVERLAY_ID(overlay6), 2);

            switch (ov5_021D1178(fieldSystem)) {
            case 0:
                Overlay_LoadByID(FS_OVERLAY_ID(overlay8), 2);
                break;
            case 1:
                Overlay_LoadByID(FS_OVERLAY_ID(overlay7), 2);
                break;
            case 2:
                Overlay_LoadByID(FS_OVERLAY_ID(overlay9), 2);
                break;
            }
        }

        Heap_Create(HEAP_ID_APPLICATION, HEAP_ID_FIELD, fieldSystem->mapLoadMode->unk_04);
        GF_ASSERT(fieldSystem->unk_04 == NULL);

        fieldSystem->unk_04 = Heap_AllocFromHeap(HEAP_ID_FIELD, sizeof(FieldSystem_sub2));
        MI_CpuClear8(fieldSystem->unk_04, sizeof(FieldSystem_sub2));
        fieldSystem->unk_04->unk_04 = ov5_021D1A94(fieldSystem, HEAP_ID_FIELD, 8);

        ov5_021D1414();

        VramTransfer_New(128, HEAP_ID_FIELD);
        sub_02020B90(4, HEAP_ID_FIELD);
        Easy3D_Init(HEAP_ID_FIELD);

        ov5_021D15B4();
        ov5_021D154C();

        GXLayers_SwapDisplay();
        fieldSystem->bgConfig = BgConfig_New(HEAP_ID_FIELD);
        ov5_021D1444(fieldSystem->bgConfig);
        FieldMessage_LoadTextPalettes(PAL_LOAD_MAIN_BG, TRUE);
        sub_0203F5C0(fieldSystem, 4);
        break;
    case 1:
        ov5_021D1790(fieldSystem);
        AreaDataManager_Load(fieldSystem->areaDataManager);

        fieldSystem->mapPropManager = MapPropManager_New(HEAP_ID_FIELD);

        ov5_021F0824(fieldSystem);
        ov5_021D17EC(fieldSystem);
        ov5_021D1878(fieldSystem);
        ov5_021D1968(fieldSystem);

        if (fieldSystem->unk_04->unk_0C != NULL) {
            u16 v3 = FieldOverworldState_GetWeather(SaveData_GetFieldOverworldState(fieldSystem->saveData));
            ov5_021D5F24(fieldSystem->unk_04->unk_0C, v3);
        }

        sub_020556A0(fieldSystem, fieldSystem->location->mapId);
        sub_0203F5C0(fieldSystem, 3);

        fieldSystem->unk_04->hBlankSystem = HBlankSystem_New(4);
        HBlankSystem_Start(fieldSystem->unk_04->hBlankSystem);
        fieldSystem->unk_04->unk_20 = ov5_021EF4BC(HEAP_ID_FIELD, fieldSystem->unk_04->hBlankSystem);
        break;
    case 2:
        ov5_021D5BD8(fieldSystem);
        break;
    case 3:
        if (ov5_021D5BF4(fieldSystem)) {
            fieldSystem->runningFieldMap = TRUE;
            ret = TRUE;
        }
        break;
    }

    (*param1)++;
    return ret;
}

static BOOL FieldMap_Main(ApplicationManager *appMan, int *param1)
{
    FieldSystem *fieldSystem = ApplicationManager_Args(appMan);

    if (ov5_021D119C(fieldSystem)) {
        sub_02055D94(fieldSystem);
        ov5_021D13B4(fieldSystem);
        ov5_021EA714(fieldSystem, 1, 1);

        FieldMap_ChangeZone(fieldSystem);
    }

    ov5_021D134C(fieldSystem, fieldSystem->unk_C0);

    if (fieldSystem->runningFieldMap) {
        return FALSE;
    } else {
        return TRUE;
    }
}

static BOOL FieldMap_Exit(ApplicationManager *appMan, int *param1)
{
    FieldSystem *fieldSystem = ApplicationManager_Args(appMan);
    LandDataManager_Tick(fieldSystem, fieldSystem->landDataMan);

    switch (*param1) {
    case 0:
        DynamicMapFeatures_Free(fieldSystem);
        LandDataManager_ForgetTrackedTarget(fieldSystem->landDataMan);

        fieldSystem->location->x = Player_GetXPos(fieldSystem->playerAvatar);
        fieldSystem->location->z = Player_GetZPos(fieldSystem->playerAvatar);
        fieldSystem->location->faceDirection = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        DynamicTerrainHeightManager_Free(fieldSystem->dynamicTerrainHeightMan);

        {
            GF_ASSERT(fieldSystem->mapPropAnimMan != 0);
            LandDataManager_End(fieldSystem->landDataMan);
        }

        MapPropAnimationManager_UnloadAllAnimations(fieldSystem->mapPropAnimMan);
        MapPropAnimationManager_Free(fieldSystem->mapPropAnimMan);
        MapPropOneShotAnimationManager_Free(&fieldSystem->mapPropOneShotAnimMan);
        ov5_021D5E8C(fieldSystem->unk_04->unk_10);
        ov5_021D5EAC(fieldSystem->unk_04->unk_10);

        fieldSystem->unk_04->unk_10 = NULL;

        sub_02061BF0(fieldSystem->mapObjMan);
        ov5_021ECC78(fieldSystem->mapObjMan);

        MapObjectMan_StopAllMovement(fieldSystem->mapObjMan);
        ov5_021DF500(fieldSystem->unk_40);

        ov5_021D1A70(fieldSystem->unk_34);
        fieldSystem->unk_34 = NULL;
        MapPropManager_Free(fieldSystem->mapPropManager);

        (*param1)++;
        break;
    case 1:
        if (LandDataManager_HasEnded(fieldSystem->landDataMan) == TRUE) {
            AreaDataManager_Free(&fieldSystem->areaDataManager);
            LandDataManager_FreeNARCAndLoadedMapBuffers(fieldSystem->landDataMan);
            HoneyTree_FreeShakeData(&fieldSystem->unk_A8);
            FieldCamera_Delete(fieldSystem);
            AreaLightManager_Free(&fieldSystem->areaLightMan);
            Signpost_Free(fieldSystem->signpost);
            MapNamePopUp_Destroy(fieldSystem->unk_04->unk_08);

            if (fieldSystem->unk_04->unk_0C != NULL) {
                ov5_021D5EF8(fieldSystem->unk_04->unk_0C);
            }

            ov5_021EF4F8(fieldSystem->unk_04->unk_20);
            HBlankSystem_Delete(fieldSystem->unk_04->hBlankSystem);
            sub_02055CBC(fieldSystem->unk_04->unk_18);
            ov5_021D57D8(&fieldSystem->unk_48);
            ModelAttributes_Free(&fieldSystem->areaModelAttrs);
            ov5_021D1570();
            ov5_021D1524(fieldSystem->bgConfig);
            ov5_021D5C14(fieldSystem);
            (*param1)++;
        }
        break;
    case 2:
        if (ov5_021D5C30(fieldSystem)) {
            ov5_021D15E8();
            sub_02020BD0();
            VramTransfer_Free();
            Easy3D_Shutdown();
            ov5_021D1AE4(fieldSystem->unk_04->unk_04);
            SetVBlankCallback(NULL, NULL);
            Heap_Free(fieldSystem->bgConfig);
            Heap_Free(fieldSystem->unk_04);

            fieldSystem->unk_04 = NULL;

            Heap_Destroy(HEAP_ID_FIELD);

            if (fieldSystem->mapLoadMode->unk_00_20) {
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay6));
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay8));
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay7));
                Overlay_UnloadByID(FS_OVERLAY_ID(overlay9));
            }

            return TRUE;
        }
        break;
    }

    return FALSE;
}

const ApplicationManagerTemplate gFieldMapTemplate = {
    FieldMap_Init,
    FieldMap_Main,
    FieldMap_Exit,
    0xffffffff
};

static int ov5_021D1178(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    int v1 = PersistedMapFeatures_GetID(v0);

    if (v1 == DYNAMIC_MAP_FEATURES_NONE) {
        return 1;
    }

    if (v1 == DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) {
        return 2;
    }

    return 0;
}

static BOOL ov5_021D119C(FieldSystem *fieldSystem)
{
    int x = Player_GetXPos(fieldSystem->playerAvatar);
    int y = Player_GetZPos(fieldSystem->playerAvatar);

    if ((x != fieldSystem->location->x) || (y != fieldSystem->location->z)) {
        fieldSystem->location->x = x;
        fieldSystem->location->z = y;
        return TRUE;
    } else {
        return FALSE;
    }
}

static BOOL FieldMap_ChangeZone(FieldSystem *fieldSystem)
{
    u32 v0;
    u32 mapId;
    int x, y;
    FieldOverworldState *fieldState;

    if (FieldMap_InDistortionWorld(fieldSystem) == TRUE) {
        return FALSE;
    }

    x = (Player_GetXPos(fieldSystem->playerAvatar) - LandDataManager_GetOffsetTileX(fieldSystem->landDataMan)) / MAP_TILES_COUNT_X;
    y = (Player_GetZPos(fieldSystem->playerAvatar) - LandDataManager_GetOffsetTileZ(fieldSystem->landDataMan)) / MAP_TILES_COUNT_Z;
    v0 = MapMatrix_GetMapHeaderIDAtCoords(fieldSystem->mapMatrix, x, y);
    mapId = fieldSystem->location->mapId;

    if (v0 == mapId) {
        return FALSE;
    }

    fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    fieldSystem->location->mapId = v0;

    MapHeaderData_Load(fieldSystem, v0);
    FieldMapChange_UpdateGameData(fieldSystem, 1);

    int objEventCount = MapHeaderData_GetNumObjectEvents(fieldSystem);
    const ObjectEvent *objEventList = MapHeaderData_GetObjectEvents(fieldSystem);

    sub_0206184C(fieldSystem->mapObjMan, mapId, v0, objEventCount, objEventList);

    RadarChain_Clear(fieldSystem->chain);
    Sound_TryFadeOutToBGM(fieldSystem, Sound_GetOverrideBGM(fieldSystem, fieldSystem->location->mapId), 1);
    sub_0203A418(fieldSystem);

    if (fieldSystem->unk_04->unk_0C != NULL) {
        ov5_021D5F7C(
            fieldSystem->unk_04->unk_0C, FieldOverworldState_GetWeather(fieldState));
    }

    int v7, v8;
    int v9;

    v7 = MapHeader_GetMapLabelTextID(mapId);
    v8 = MapHeader_GetMapLabelTextID(v0);
    v9 = MapHeader_GetMapLabelWindowID(v0);

    if (v7 != v8) {
        if (v9 != 0) {
            v9--;
        }

        MapNamePopUp_Show(fieldSystem->unk_04->unk_08, v8, v9);
    }

    return TRUE;
}

void ov5_021D12D0(FieldSystem *fieldSystem, u32 param1)
{
    u32 mapId;
    FieldOverworldState *fieldState;

    mapId = fieldSystem->location->mapId;
    fieldState = SaveData_GetFieldOverworldState(fieldSystem->saveData);

    fieldSystem->location->mapId = param1;

    MapHeaderData_Load(fieldSystem, param1);
    FieldMapChange_UpdateGameDataDistortionWorld(fieldSystem, 1);

    int objEventCount = MapHeaderData_GetNumObjectEvents(fieldSystem);
    const ObjectEvent *objEventList = MapHeaderData_GetObjectEvents(fieldSystem);

    sub_0206184C(fieldSystem->mapObjMan, mapId, param1, objEventCount, objEventList);

    Sound_TryFadeOutToBGM(fieldSystem, Sound_GetOverrideBGM(fieldSystem, fieldSystem->location->mapId), 1);
    sub_0203A418(fieldSystem);

    if (fieldSystem->unk_04->unk_0C != NULL) {
        ov5_021D5F7C(fieldSystem->unk_04->unk_0C, FieldOverworldState_GetWeather(fieldState));
    }
}

static void ov5_021D134C(FieldSystem *fieldSystem, u8 param1)
{
    if (FieldSystem_IsRunningTask(fieldSystem) == 0) {
        sub_020559DC(fieldSystem);
    }

    AreaLightManager_UpdateActiveTemplate(fieldSystem->areaLightMan);
    Signpost_DoCurrentCommand(fieldSystem);

    if ((param1 & 1) != 0) {
        ov5_021D5DEC(fieldSystem->unk_04->unk_10);
    }

    if ((param1 & 8) != 0) {
        MapPropAnimationManager_AdvanceAnimations(fieldSystem->mapPropAnimMan);
    }

    if ((param1 & 2) != 0) {
        LandDataManager_Tick(fieldSystem, fieldSystem->landDataMan);

        if (FieldMap_InDistortionWorld(fieldSystem) == TRUE) {
            ov9_0224CA5C(fieldSystem);
        }
    }

    if ((param1 & 4) != 0) {
        ov5_021D15F4(fieldSystem);
    }
}

static void ov5_021D13B4(FieldSystem *fieldSystem)
{
    if (MapHeader_IsOnMainMatrix(fieldSystem->location->mapId) == 0) {
        return;
    }

    OverworldMapHistory *mapHistory = FieldOverworldState_GetMapHistory(SaveData_GetFieldOverworldState(fieldSystem->saveData));
    int mapX = (Player_GetXPos(fieldSystem->playerAvatar) - LandDataManager_GetOffsetTileX(fieldSystem->landDataMan)) / MAP_TILES_COUNT_X;
    int mapZ = (Player_GetZPos(fieldSystem->playerAvatar) - LandDataManager_GetOffsetTileZ(fieldSystem->landDataMan)) / MAP_TILES_COUNT_Z;
    int faceDirection = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

    OverworldMapHistory_Push(mapHistory, mapX, mapZ, faceDirection);
}

static void ov5_021D1414(void)
{
    UnkStruct_02099F80 v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_32_FG,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    GXLayers_SetBanks(&v0);
}

void ov5_021D1434(BgConfig *bgl)
{
    ov5_021D1444(bgl);
}

void ov5_021D143C(BgConfig *bgl)
{
    ov5_021D1524(bgl);
}

static void ov5_021D1444(BgConfig *bgl)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetAllGraphicsModes(&v0);
    }

    {
        BgTemplate v1 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0000,
            GX_BG_CHARBASE_0x10000,
            GX_BG_EXTPLTT_01,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgl, BG_LAYER_MAIN_1, &v1, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_1, 32, 0, HEAP_ID_FIELD);
        Bg_ClearTilemap(bgl, BG_LAYER_MAIN_1);
    }

    {
        BgTemplate v2 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x0800,
            GX_BG_CHARBASE_0x14000,
            GX_BG_EXTPLTT_23,
            3,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgl, BG_LAYER_MAIN_2, &v2, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_2, 32, 0, HEAP_ID_FIELD);
        Bg_ClearTilemap(bgl, BG_LAYER_MAIN_2);
    }
    {
        BgTemplate v3 = {
            0,
            0,
            0x800,
            0,
            1,
            GX_BG_COLORMODE_16,
            GX_BG_SCRBASE_0x1000,
            GX_BG_CHARBASE_0x08000,
            GX_BG_EXTPLTT_23,
            0,
            0,
            0,
            0
        };

        Bg_InitFromTemplate(bgl, BG_LAYER_MAIN_3, &v3, 0);
        Bg_ClearTilesRange(BG_LAYER_MAIN_3, 32, 0, HEAP_ID_FIELD);
        Bg_ClearTilemap(bgl, BG_LAYER_MAIN_3);
    }

    {
        u16 v4 = 0x0;

        DC_FlushRange((void *)v4, 2);
        GX_LoadBGPltt(&v4, 0, 2);
    }
}

static void ov5_021D1524(BgConfig *bgl)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, 0);
    Bg_FreeTilemapBuffer(bgl, BG_LAYER_MAIN_1);
    Bg_FreeTilemapBuffer(bgl, BG_LAYER_MAIN_2);
    Bg_FreeTilemapBuffer(bgl, BG_LAYER_MAIN_3);
}

static void ov5_021D154C(void)
{
    NNS_G2dInitOamManagerModule();
    RenderOam_Init(0, 124, 0, 31, 0, 124, 0, 31, 4);
}

static void ov5_021D1570(void)
{
    RenderOam_Free();
}

static void FieldMap_InitModelAttributes(ModelAttributes *modelAttrs)
{
    ModelAttributes_SetPolygonMode(modelAttrs, GX_POLYGONMODE_MODULATE, FALSE);
    ModelAttributes_SetCullMode(modelAttrs, GX_CULL_BACK, FALSE);
    ModelAttributes_SetAlpha(modelAttrs, 31, FALSE);
    ModelAttributes_SetMiscAttrEnabled(modelAttrs, GX_POLYGON_ATTR_MISC_FOG, TRUE, FALSE);
    ModelAttributes_ApplyGlobal(modelAttrs, MODEL_ATTRIBUTES_LAST_BIT);
}

void ov5_021D15B4(void)
{
    {
        CharTransferTemplate v0 = {
            20, 0x8000, 0x4000, 4
        };

        CharTransfer_InitWithVramModes(&v0, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    }

    PlttTransfer_Init(20, HEAP_ID_FIELD);
    CharTransfer_ClearBuffers();
    PlttTransfer_Clear();
}

void ov5_021D15E8(void)
{
    CharTransfer_Free();
    PlttTransfer_Free();
}

static void ov5_021D15F4(FieldSystem *fieldSystem)
{
    MtxFx44 v0, v1;

    sub_020241B4();

    if (fieldSystem->unk_20 == 1) {
        if (FieldMap_InDistortionWorld(fieldSystem) == TRUE) {
            DistWorld_UpdateCameraAngle(fieldSystem);
        }

        Camera_ComputeViewMatrixWithRoll();
    } else {
        Camera_ComputeViewMatrix();
    }

    sub_0206979C(fieldSystem);
    LandDataManager_RenderLoadedMaps(fieldSystem->landDataMan, fieldSystem->areaModelAttrs);

    if (FieldMap_InDistortionWorld(fieldSystem) == TRUE) {
        ov9_0224CA50(fieldSystem);
    }

    MapPropManager_Render2(fieldSystem->mapPropManager, fieldSystem->areaDataManager);

    {
        const MtxFx44 *v2;

        v2 = NNS_G3dGlbGetProjectionMtx();
        v0 = *v2;
        v1 = v0;
        v1._32 += FX_Mul(v1._22, 4 * FX32_ONE);

        NNS_G3dGlbSetProjectionMtx(&v1);
        NNS_G3dGlbFlush();
    }

    ov5_021DF4F8(fieldSystem->unk_40);
    sub_02020C08();

    if (FieldMap_InDistortionWorld(fieldSystem) == TRUE) {
        ov9_02250780(fieldSystem);
    }

    {
        NNS_G3dGlbSetProjectionMtx(&v0);
        NNS_G3dGlbFlush();
    }

    ov5_021D1B18(fieldSystem->unk_04->unk_04);
    G3_RequestSwapBuffers(GX_SORTMODE_AUTO, gBufferMode);
}

void ov5_021D16F4(FieldSystem *fieldSystem, BOOL param1)
{
    if (param1 == 1) {
        fieldSystem->unk_C0 |= 4;
    } else {
        fieldSystem->unk_C0 &= ~4;
    }
}

void ov5_021D1718(FieldSystem *fieldSystem, BOOL param1)
{
    if (param1 == 1) {
        fieldSystem->unk_C0 |= 1;
    } else {
        fieldSystem->unk_C0 &= ~1;
    }
}

static void ov5_021D173C(FieldSystem *fieldSystem)
{
    fieldSystem->unk_C0 = (8 | 1 | 2 | 4);
}

void ov5_021D1744(const u8 param0)
{
    if (param0 == 1) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_BLACK, 6, 1, HEAP_ID_FIELD);
    } else if (param0 == 0) {
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_BLACK, 6, 1, HEAP_ID_FIELD);
    } else {
        GF_ASSERT(FALSE);
    }
}

static void ov5_021D1790(FieldSystem *fieldSystem)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, gBufferMode);

    fieldSystem->mapPropAnimMan = MapPropAnimationManager_New();
    fieldSystem->mapPropOneShotAnimMan = MapPropOneShotAnimationManager_New();

    {
        u16 areaDataArchiveID, v1;

        areaDataArchiveID = MapHeader_GetAreaDataArchiveID(fieldSystem->location->mapId);
        fieldSystem->areaDataManager = AreaDataManager_Alloc(areaDataArchiveID, fieldSystem->mapPropAnimMan);

        v1 = sub_0203A04C(fieldSystem->location->mapId);
        GF_ASSERT(fieldSystem->unk_34 == NULL);

        fieldSystem->unk_34 = ov5_021D1A14(4, v1);
    }
}

static void ov5_021D17EC(FieldSystem *fieldSystem)
{
    fieldSystem->landDataMan = LandDataManager_New(fieldSystem->mapMatrix, fieldSystem->areaDataManager, fieldSystem->mapPropAnimMan, fieldSystem->skipMapAttributes);

    if (FieldMap_InDistortionWorld(fieldSystem) == TRUE) {
        int v0 = 0, v1 = 0, v2 = 0;

        ov9_02251094(fieldSystem->location->mapId, &v0, &v1, &v2);
        LandDataManager_DistortionWorldSetOffsets(fieldSystem->landDataMan, v0, v1, v2);
        LandDataManager_SetInDistortionWorld(fieldSystem->landDataMan, TRUE);
        LandDataManager_SetSkipMapProps(fieldSystem->landDataMan, TRUE);
    }

    fieldSystem->dynamicTerrainHeightMan = DynamicTerrainHeightManager_New(8, HEAP_ID_FIELD);
    fieldSystem->unk_A8 = HoneyTree_ShakeDataInit();

    if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_OVERWORLD) {
        LandDataManager_SetMapLoadedCallback(fieldSystem->landDataMan, ov5_021F0030, fieldSystem);
    }

    LandDataManager_InitialLoad(fieldSystem->landDataMan, fieldSystem->location->x, fieldSystem->location->z);
}

static void ov5_021D1878(FieldSystem *fieldSystem)
{
    fieldSystem->unk_40 = ov5_021DF440(fieldSystem, 34, HEAP_ID_FIELD);

    {
        int v0 = 80;

        if (FieldMap_InDistortionWorld(fieldSystem) == TRUE) {
            v0 = 112;
        }

        ov5_021DF47C(fieldSystem->unk_40, v0);
    }

    ov5_021DF488(fieldSystem->unk_40, HEAP_ID_FIELD, 32, 32, 32, 32, (0x500 * (32 / 2)), (0x80 * (32 / 2)), (0x800 * 32));

    if ((fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNDERGROUND) || (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNION)) {
        MapObjectMan_SetEndMovement(fieldSystem->mapObjMan, 0);
    }

    {
        const u32 *v1;

        if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNDERGROUND) {
            v1 = Unk_ov5_021FF7D0;
        } else {
            if (FieldMap_InDistortionWorld(fieldSystem) == TRUE) {
                v1 = Unk_ov5_021FF6B8;
            } else {
                v1 = Unk_ov5_021FF744;
            }
        }

        ov5_021DF4C8(fieldSystem->unk_40, v1);
    }

    {
        int v2 = 10;

        if (fieldSystem->mapLoadType == MAP_LOAD_TYPE_UNION) {
            v2 = 5;
        }

        ov5_021ECC20(fieldSystem->mapObjMan, 32, ov5_021D1A6C(fieldSystem->unk_34) + 3, ov5_021D1A68(fieldSystem->unk_34), v2);
    }

    FieldEffect_InitRenderObject(fieldSystem->unk_40);

    {
        PersistedMapFeatures *v3 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
        int v4 = PersistedMapFeatures_GetID(v3);

        PlayerAvatar_InitDraw(fieldSystem->playerAvatar, v4);
    }

    sub_02061C48(fieldSystem->mapObjMan);
    CommPlayerMan_ForcePos();
    sub_02062C3C(fieldSystem->mapObjMan);
    LandDataManager_TrackTarget(PlayerAvatar_PosVector(fieldSystem->playerAvatar), fieldSystem->landDataMan);

    fieldSystem->unk_04->unk_18 = sub_02055C8C(fieldSystem, 4);
}

static void ov5_021D1968(FieldSystem *fieldSystem)
{
    GXLayers_EngineAToggleLayers(GX_PLANEMASK_BG0, 1);
    GXLayers_TurnBothDispOn();
    fieldSystem->areaModelAttrs = ModelAttributes_New();
    FieldMap_InitModelAttributes(fieldSystem->areaModelAttrs);
    fieldSystem->unk_48 = ov5_021D57BC();

    {
        int v0 = FieldOverworldState_GetCameraType(SaveData_GetFieldOverworldState(fieldSystem->saveData));
        FieldCamera_Create(PlayerAvatar_PosVector(fieldSystem->playerAvatar), fieldSystem, v0, 1);
    }

    fieldSystem->areaLightMan = AreaLightManager_New(fieldSystem->areaModelAttrs, AreaDataManager_GetAreaLightArchiveID(fieldSystem->areaDataManager));

    if (FieldMap_InDistortionWorld(fieldSystem) == TRUE) {
        fieldSystem->unk_04->unk_0C = NULL;
    } else {
        fieldSystem->unk_04->unk_0C = ov5_021D5EB8(fieldSystem);
    }

    fieldSystem->unk_04->unk_08 = MapNamePopUp_Create(fieldSystem->bgConfig);
    fieldSystem->signpost = Signpost_Init(HEAP_ID_FIELD);
    fieldSystem->unk_04->unk_10 = ov5_021D5CB0();

    ov5_021D5CE4(fieldSystem->unk_04->unk_10, AreaDataManager_GetMapTexture(fieldSystem->areaDataManager));
    DynamicMapFeatures_Init(fieldSystem);
    ov5_021EE7C0(fieldSystem);
    SetVBlankCallback(fieldmap, fieldSystem);
}

static UnkStruct_ov5_021D1A68 *ov5_021D1A14(int fieldSystem, int param1)
{
    int v0;
    u16 *v1;
    UnkStruct_ov5_021D1A68 *v2 = Heap_AllocFromHeap(fieldSystem, sizeof(UnkStruct_ov5_021D1A68));
    v1 = NARC_AllocAtEndAndReadWholeMemberByIndexPair(NARC_INDEX_FIELDDATA__MM_LIST__MOVE_MODEL_LIST, param1, fieldSystem);

    for (v0 = 0; v0 < 24; v0++) {
        v2->unk_02[v0] = 0xffff;
    }

    for (v0 = 0; v0 < 24; v0++) {
        v2->unk_02[v0] = v1[v0];

        if (v1[v0] == 0xffff) {
            break;
        }
    }

    v2->unk_00 = v0;
    Heap_Free(v1);
    return v2;
}

static const int *ov5_021D1A68(const UnkStruct_ov5_021D1A68 *param0)
{
    return param0->unk_02;
}

static const int ov5_021D1A6C(const UnkStruct_ov5_021D1A68 *param0)
{
    return param0->unk_00;
}

static void ov5_021D1A70(UnkStruct_ov5_021D1A68 *param0)
{
    Heap_Free(param0);
}

static BOOL FieldMap_InDistortionWorld(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    int v1 = PersistedMapFeatures_GetID(v0);

    if (v1 == DYNAMIC_MAP_FEATURES_DISTORTION_WORLD) {
        return TRUE;
    }

    return FALSE;
}
