#include "overlay008/ov8_02249960.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/field/map.h"
#include "generated/movement_actions.h"
#include "generated/movement_types.h"

#include "struct_decls/struct_0205E884_decl.h"
#include "struct_decls/struct_02061830_decl.h"
#include "struct_decls/struct_02061AB4_decl.h"
#include "struct_defs/struct_02071B10.h"
#include "struct_defs/struct_02071B30.h"
#include "struct_defs/struct_02071B6C.h"
#include "struct_defs/struct_02071BD0.h"
#include "struct_defs/struct_02071BF8.h"
#include "struct_defs/struct_02071C18.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/dynamic_terrain_height.h"
#include "overlay005/field_effect_manager.h"
#include "overlay005/land_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"
#include "overlay005/ov5_021D57BC.h"
#include "overlay005/ov5_021F4018.h"
#include "overlay005/ov5_021F428C.h"
#include "overlay005/ov5_021F47B0.h"
#include "overlay005/ov5_021F5A10.h"
#include "overlay005/struct_ov5_021D57D8_decl.h"
#include "overlay008/struct_ov8_02249FB8.h"

#include "bg_window.h"
#include "camera.h"
#include "field_message.h"
#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "map_header_data.h"
#include "map_object.h"
#include "map_object_move.h"
#include "map_tile_behavior.h"
#include "math_util.h"
#include "message.h"
#include "overworld_anim_manager.h"
#include "persisted_map_features.h"
#include "player_avatar.h"
#include "render_window.h"
#include "save_player.h"
#include "savedata_misc.h"
#include "script_manager.h"
#include "sound_playback.h"
#include "string_gf.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "system_vars.h"
#include "terrain_collision_manager.h"
#include "trainer_info.h"
#include "unk_0205F180.h"
#include "unk_020655F4.h"
#include "unk_02067A84.h"
#include "vars_flags.h"

#include "res/field/props/models/prop_models.naix"
#include "res/text/bank/eterna_city_gym.h"

typedef struct {
    int unk_00;
} UnkStruct_ov8_0224997C;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
} UnkStruct_ov8_0224A1E4_sub1;

typedef struct {
    FieldSystem *fieldSystem;
    int unk_04;
    int unk_08;
    int unk_0C;
    u8 unk_10[24];
    u8 unk_28[24];
    UnkStruct_ov8_0224A1E4_sub1 unk_40[24];
    int unk_88[24];
    u8 unk_E8;
    fx32 unk_EC;
    int unk_F0;
} UnkStruct_ov8_0224A1E4;

typedef struct {
    int unk_00;
    UnkStruct_ov8_0224A1E4_sub1 unk_04;
    UnkStruct_ov8_0224A1E4_sub1 unk_07;
    u8 unk_0A;
    u8 unk_0B;
    u16 unk_0C;
} UnkStruct_ov8_0224CB68;

typedef struct {
    FieldSystem *fieldSystem;
    u8 unk_04[13];
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u16 unk_14;
    u16 unk_16;
    u16 unk_18;
} UnkStruct_ov8_0224ABD4;

typedef struct {
    int unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07_0 : 2;
    u8 unk_07_2 : 1;
    u8 unk_07_3 : 1;
    u8 unk_07_4 : 4;
} UnkStruct_ov8_0224C788;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
} UnkStruct_ov8_0224C8A4;

typedef struct {
    int unk_00;
    const u8 *unk_04[4];
} UnkStruct_ov8_0224E740;

typedef struct {
    s16 unk_00;
    s16 unk_02;
} UnkStruct_ov8_0224C774;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    int unk_04;
} UnkStruct_ov8_0224C7F0;

typedef struct {
    VecFx32 unk_00;
    u32 unk_0C;
    u16 unk_10;
    MapProp *unk_14;
} UnkStruct_ov8_0224AF58;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    int unk_08;
    UnkStruct_ov8_0224AF58 unk_0C[2];
    FieldSystem *fieldSystem;
} UnkStruct_ov8_0224AF00;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    MapObject *unk_20;
} UnkStruct_ov8_0224B28C;

typedef struct {
    int unk_00;
    int unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    FieldSystem *fieldSystem;
    UnkStruct_02071BD0 *unk_14;
    UnkStruct_ov8_0224AF00 *unk_18;
    UnkStruct_ov8_0224B28C unk_1C;
    u32 unk_40;
    Window *unk_44;
    MessageLoader *unk_48;
    String *unk_4C;
} UnkStruct_ov8_0224B67C;

typedef struct {
    int unk_00;
    int unk_04;
} UnkStruct_ov8_0224C90C;

typedef struct {
    int unk_00;
    int unk_04;
    MapObject *unk_08;
    OverworldAnimManager *unk_0C;
} UnkStruct_ov8_0224B80C;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov8_0224B80C unk_08;
} UnkStruct_ov8_0224BCA8;

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov8_0224B80C unk_08;
} UnkStruct_ov8_0224B8A0;

typedef struct {
    FieldSystem *fieldSystem;
    UnkStruct_ov8_0224B8A0 unk_04[11];
    UnkStruct_ov8_0224BCA8 unk_10C[9];
} UnkStruct_ov8_0224B8D0;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    MapObject *unk_30;
    FieldSystem *fieldSystem;
} UnkStruct_ov8_0224C0C4;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    VecFx32 unk_20;
    fx32 unk_2C;
    fx32 unk_30;
    UnkStruct_ov8_0224BCA8 *unk_34;
    UnkStruct_ov8_0224B8A0 *unk_38;
    UnkStruct_ov8_0224B8D0 *unk_3C;
    UnkStruct_ov8_0224C0C4 unk_40;
} UnkStruct_ov8_0224C098;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
} UnkStruct_ov8_0224C8D4;

typedef struct {
    UnkStruct_ov5_021D57D8 *unk_00;
    int unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
    char unk_0C[32];
} UnkStruct_ov8_0224C3B4;

typedef struct {
    int unk_00;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_ov8_0224C7D0;

typedef struct UnkStruct_ov8_0224C444_t UnkStruct_ov8_0224C444;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    SysTask *unk_0C;
    OverworldAnimManager *unk_10;
    MapObject *unk_14;
    UnkStruct_ov8_0224C444 *unk_18;
} UnkStruct_ov8_0224C4F8;

typedef struct UnkStruct_ov8_0224C444_t {
    FieldSystem *fieldSystem;
    UnkStruct_ov8_0224C4F8 unk_04[16];
    UnkStruct_ov8_0224C3B4 unk_1C4;
    u32 unk_1F0;
    SysTask *unk_1F4;
} UnkStruct_ov8_0224C444;

void include_ov8_02249960(void);

static u8 ov8_02249960(const u8 param0, const int param1);
static void ov8_0224996C(const u8 param0, int *param1);
static BOOL ov8_02249A94(FieldTask *param0);
static BOOL ov8_02249B74(FieldTask *param0);
static BOOL ov8_02249CD8(FieldTask *param0);
static void ov8_02249F14(const u8 param0, MapPropAnimationManager *param1);
static BOOL ov8_0224A018(FieldTask *param0);
static BOOL ov8_0224A0E8(FieldTask *param0);
static BOOL ov8_0224A4FC(FieldTask *param0);
static BOOL ov8_0224A620(FieldTask *param0);
static BOOL ov8_0224A770(FieldTask *param0);
static BOOL ov8_0224ADE8(FieldTask *param0);
static void ov8_0224B8D0(UnkStruct_ov8_0224B8D0 *param0);
static void ov8_0224B958(UnkStruct_ov8_0224B8D0 *param0);
static void ov8_0224BFCC(FieldSystem *fieldSystem, UnkStruct_ov8_0224C098 *param1, UnkStruct_ov8_0224B80C *param2, int param3);
static void ov8_0224C098(UnkStruct_ov8_0224C098 *param0);
static BOOL ov8_0224C0C4(UnkStruct_ov8_0224C098 *param0);
static BOOL ov8_0224C0C8(UnkStruct_ov8_0224C098 *param0, UnkStruct_ov8_0224B80C *param1, int param2);
static void ov8_0224C0FC(UnkStruct_ov8_0224C098 *param0, int param1);
static void ov8_0224C11C(UnkStruct_ov8_0224C098 *param0, int param1);
static void ov8_0224C170(UnkStruct_ov8_0224C098 *param0, fx32 param1);
static void ov8_0224C3B0(SysTask *param0, void *param1);
static void ov8_0224C3B4(UnkStruct_ov8_0224C444 *param0);
static void ov8_0224C444(UnkStruct_ov8_0224C444 *param0);
static void ov8_0224C4F8(UnkStruct_ov8_0224C444 *param0);
static void ov8_0224C518(SysTask *param0, void *param1);

static u8 ov8_02249960(const u8 param0, const int param1)
{
    u8 v0 = (param1 >> param0) & 0x1;
    return v0;
}

static void ov8_0224996C(const u8 param0, int *param1)
{
    (*param1) ^= (0x1 << param0);
}

void PastoriaGym_PressButton(FieldSystem *fieldSystem)
{
    TerrainCollisionHitbox terrainCollision;
    BOOL hasCollisionHit;
    int mapPropModelID;
    int pastoriaButtonTypes[] = {
        pastoria_gym_blue_button_nsbmd,
        pastoria_gym_green_button_nsbmd,
        pastoria_gym_orange_button_nsbmd
    };

    int playerX = Player_GetXPos(fieldSystem->playerAvatar);
    int playerY = Player_GetZPos(fieldSystem->playerAvatar);

    TerrainCollisionHitbox_Init(playerX, playerY, 0, 0, 1, 1, &terrainCollision);

    hasCollisionHit = FieldSystem_FindCollidingLoadedMapPropByModelIDs(fieldSystem, pastoriaButtonTypes, NELEMS(pastoriaButtonTypes), &terrainCollision, NULL, &mapPropModelID);

    if (hasCollisionHit) {
        UnkStruct_ov8_0224997C *v6;
        PersistedMapFeatures *v7;
        UnkStruct_02071B10 *v8;

        v7 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
        v8 = (UnkStruct_02071B10 *)PersistedMapFeatures_GetBuffer(v7, DYNAMIC_MAP_FEATURES_PASTORIA_GYM);

        v6 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_ov8_0224997C));
        v6->unk_00 = 0;

        if (mapPropModelID == pastoria_gym_blue_button_nsbmd) {
            FieldTask_InitCall(fieldSystem->task, ov8_02249CD8, v6);
            v8->unk_00 = 2;
        } else if (mapPropModelID == pastoria_gym_green_button_nsbmd) {
            FieldTask_InitCall(fieldSystem->task, ov8_02249B74, v6);
            v8->unk_00 = 1;
        } else if (mapPropModelID == pastoria_gym_orange_button_nsbmd) {
            FieldTask_InitCall(fieldSystem->task, ov8_02249A94, v6);
            v8->unk_00 = 0;
        } else {
            GF_ASSERT(FALSE);
        }
    }
}

BOOL PastoriaGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, tileX, tileZ);

    if (TileBehavior_IsPastoriaGymHighGround(tileBehavior)) {
        if (height != MAP_OBJECT_TILE_SIZE * 0) {
            *isColliding = TRUE;
            return TRUE;
        }
    } else if (TileBehavior_IsPastoriaGymMiddleGround(tileBehavior)) {
        if (height != MAP_OBJECT_TILE_SIZE * 2) {
            *isColliding = TRUE;
            return TRUE;
        }
    } else if (TileBehavior_IsPastoriaGymLowGround(tileBehavior)) {
        if (height != MAP_OBJECT_TILE_SIZE * 4) {
            *isColliding = TRUE;
            return TRUE;
        }
    }

    *isColliding = FALSE;
    return FALSE;
}

static BOOL ov8_02249A94(FieldTask *taskMan)
{
    MapProp *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov8_0224997C *v2 = FieldTask_GetEnv(taskMan);

    switch (v2->unk_00) {
    case 0:

        ov8_02249F14(0, fieldSystem->mapPropAnimMan);
        (v2->unk_00)++;
        break;
    case 1: {
        MapPropAnimation *v3;
        MapPropAnimation *v4;
        MapPropAnimation *v5;

        v3 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(1, fieldSystem->mapPropAnimMan);
        v4 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(2, fieldSystem->mapPropAnimMan);
        v5 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(3, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsLoopFinished(v3) && MapPropAnimation_IsLoopFinished(v4) && MapPropAnimation_IsLoopFinished(v5)) {
            v0 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

            {
                VecFx32 v6;

                v6 = MapProp_GetPosition(v0);
                v6.y -= (FX32_ONE);

                if (v6.y <= (FX32_ONE * 0)) {
                    v6.y = (FX32_ONE * 0);
                    (v2->unk_00)++;
                }

                MapProp_SetPosition(v0, &v6);
            }
        }
    } break;
    case 2:
        DynamicTerrainHeightManager_SetHeight(0, (FX32_ONE * 16 * 0), fieldSystem->dynamicTerrainHeightMan);
        Sound_StopEffect(1626, 0);
        (v2->unk_00)++;
        break;
    case 3:
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

static BOOL ov8_02249B74(FieldTask *taskMan)
{
    MapProp *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov8_0224997C *v2 = FieldTask_GetEnv(taskMan);

    switch (v2->unk_00) {
    case 0:
        ov8_02249F14(1, fieldSystem->mapPropAnimMan);
        (v2->unk_00)++;
        break;
    case 1: {
        MapPropAnimation *v3;
        MapPropAnimation *v4;
        MapPropAnimation *v5;

        v3 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(1, fieldSystem->mapPropAnimMan);
        v4 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(2, fieldSystem->mapPropAnimMan);
        v5 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(3, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsLoopFinished(v3) && MapPropAnimation_IsLoopFinished(v4) && MapPropAnimation_IsLoopFinished(v5)) {
            v0 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);
            {
                VecFx32 v6;

                v6 = MapProp_GetPosition(v0);

                if (v6.y == (FX32_ONE * 0)) {
                    (v2->unk_00) = 2;
                } else if (v6.y == (FX32_ONE * 16 * 2)) {
                    Heap_Free(v2);
                    return 1;
                } else if (v6.y == (FX32_ONE * 16 * 4)) {
                    (v2->unk_00) = 3;
                } else {
                    GF_ASSERT(0);
                }
            }
        }
    } break;
    case 2:
        v0 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

        {
            VecFx32 v7;

            v7 = MapProp_GetPosition(v0);
            v7.y += (FX32_ONE);

            if (v7.y >= (FX32_ONE * 16 * 2)) {
                v7.y = (FX32_ONE * 16 * 2);
                (v2->unk_00) = 4;
            }

            MapProp_SetPosition(v0, &v7);
        }
        break;
    case 3:
        v0 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

        {
            VecFx32 v8;

            v8 = MapProp_GetPosition(v0);
            v8.y -= (FX32_ONE);

            if (v8.y <= (FX32_ONE * 16 * 2)) {
                v8.y = (FX32_ONE * 16 * 2);
                (v2->unk_00) = 4;
            }

            MapProp_SetPosition(v0, &v8);
        }
        break;
    case 4:
        DynamicTerrainHeightManager_SetHeight(0, (FX32_ONE * 16 * 2), fieldSystem->dynamicTerrainHeightMan);
        Sound_StopEffect(1626, 0);
        (v2->unk_00)++;
        break;
    case 5:
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

static BOOL ov8_02249CD8(FieldTask *taskMan)
{
    MapProp *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov8_0224997C *v2 = FieldTask_GetEnv(taskMan);

    switch (v2->unk_00) {
    case 0:
        ov8_02249F14(2, fieldSystem->mapPropAnimMan);
        (v2->unk_00)++;
        break;
    case 1: {
        MapPropAnimation *v3;
        MapPropAnimation *v4;
        MapPropAnimation *v5;

        v3 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(1, fieldSystem->mapPropAnimMan);
        v4 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(2, fieldSystem->mapPropAnimMan);
        v5 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(3, fieldSystem->mapPropAnimMan);

        if (MapPropAnimation_IsLoopFinished(v3) && MapPropAnimation_IsLoopFinished(v4) && MapPropAnimation_IsLoopFinished(v5)) {
            v0 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

            {
                VecFx32 v6;

                v6 = MapProp_GetPosition(v0);
                v6.y += (FX32_ONE);

                if (v6.y >= (FX32_ONE * 16 * 4)) {
                    v6.y = (FX32_ONE * 16 * 4);
                    (v2->unk_00)++;
                }

                MapProp_SetPosition(v0, &v6);
            }
        }
    } break;
    case 2:
        DynamicTerrainHeightManager_SetHeight(0, (FX32_ONE * 16 * 4), fieldSystem->dynamicTerrainHeightMan);
        Sound_StopEffect(1626, 0);
        (v2->unk_00)++;
        break;
    case 3:
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

void PastoriaGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    u8 v0;
    MapProp *v1;
    fx32 v2;
    fx32 v3;
    BOOL v4, v5, v6;
    PersistedMapFeatures *v7 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    UnkStruct_02071B10 *v8 = (UnkStruct_02071B10 *)PersistedMapFeatures_GetBuffer(v7, DYNAMIC_MAP_FEATURES_PASTORIA_GYM);

    {
        VecFx32 v9 = { FX32_ONE * 16 * 16, 0, FX32_ONE * 16 * 16 };
        MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, 242, &v9, NULL, fieldSystem->mapPropAnimMan);
    }

    DynamicTerrainHeightManager_SetPlate(0, 1, 2, 25, 38, (FX32_ONE * 16 * 0), fieldSystem->dynamicTerrainHeightMan);

    v0 = v8->unk_00;

    switch (v0) {
    case 0:
        v2 = (FX32_ONE * 0);
        v3 = (FX32_ONE * 16 * 0);
        v4 = 1;
        v5 = 1;
        v6 = 0;
        break;
    case 1:
        v2 = (FX32_ONE * 16 * 2);
        v3 = (FX32_ONE * 16 * 2);
        v4 = 1;
        v5 = 0;
        v6 = 1;
        break;
    case 2:
        v2 = (FX32_ONE * 16 * 4);
        v3 = (FX32_ONE * 16 * 4);
        v4 = 0;
        v5 = 1;
        v6 = 1;
        break;
    default:
        GF_ASSERT(FALSE);
        v2 = (FX32_ONE * 0);
        v3 = (FX32_ONE * 16 * 0);
        v4 = 1;
        v5 = 1;
        v6 = 0;
    }

    v1 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, pastoria_gym_water_floor_nsbmd);

    {
        VecFx32 v10;

        v10 = MapProp_GetPosition(v1);
        v10.y = v2;

        MapProp_SetPosition(v1, &v10);
    }

    DynamicTerrainHeightManager_SetHeight(0, v3, fieldSystem->dynamicTerrainHeightMan);

    {
        MapPropAnimation *v11;

        v11 = MapPropAnimationManager_GetAnimation(239, 0, fieldSystem->mapPropAnimMan);

        MapPropAnimation_SetPastoriaGymButtonGroup(v11, 1);
        MapPropAnimation_SetReversed(v11, v4);
        MapPropAnimation_SetLoopCount(v11, 1);
        MapPropAnimation_SetAnimationPaused(v11, 1);
        MapPropAnimation_GoToLastFrame(v11);

        v11 = MapPropAnimationManager_GetAnimation(240, 0, fieldSystem->mapPropAnimMan);

        MapPropAnimation_SetPastoriaGymButtonGroup(v11, 2);
        MapPropAnimation_SetReversed(v11, v5);
        MapPropAnimation_SetLoopCount(v11, 1);
        MapPropAnimation_SetAnimationPaused(v11, 1);
        MapPropAnimation_GoToLastFrame(v11);

        v11 = MapPropAnimationManager_GetAnimation(241, 0, fieldSystem->mapPropAnimMan);

        MapPropAnimation_SetPastoriaGymButtonGroup(v11, 3);
        MapPropAnimation_SetReversed(v11, v6);
        MapPropAnimation_SetLoopCount(v11, 1);
        MapPropAnimation_SetAnimationPaused(v11, 1);
        MapPropAnimation_GoToLastFrame(v11);
    }
}

static void ov8_02249F14(const u8 param0, MapPropAnimationManager *param1)
{
    MapPropAnimation *v0;
    int v1, v2, v3;

    if (param0 == 2) {
        v1 = 1;
        v2 = 2;
        v3 = 3;
    } else if (param0 == 1) {
        v1 = 2;
        v2 = 1;
        v3 = 3;
    } else if (param0 == 0) {
        v1 = 3;
        v2 = 1;
        v3 = 2;
    } else {
        GF_ASSERT(0);
    }

    v0 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(v1, param1);

    MapPropAnimation_SetReversed(v0, 0);
    MapPropAnimation_GoToFirstFrame(v0);
    MapPropAnimation_SetAnimationPaused(v0, 0);
    MapPropAnimation_StartLoop(v0);

    v0 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(v2, param1);

    MapPropAnimation_SetReversed(v0, 1);
    MapPropAnimation_GoToFirstFrame(v0);
    MapPropAnimation_SetAnimationPaused(v0, 0);
    MapPropAnimation_StartLoop(v0);

    v0 = MapPropAnimationManager_GetAnimationByPastoriaGymButtonGroup(v3, param1);

    MapPropAnimation_SetReversed(v0, 1);
    MapPropAnimation_GoToFirstFrame(v0);
    MapPropAnimation_SetAnimationPaused(v0, 0);
    MapPropAnimation_StartLoop(v0);

    Sound_PlayEffect(SEQ_SE_DP_FW056);
}

void include_ov8_02249960(void)
{
    VecFx32 dummy = { FX32_ONE * (16 * 9 + 8), 0, FX32_ONE * (16 * 13 + 8) };
    VecFx32 *dummy2 = &dummy;
}

void ov8_02249FB8(FieldSystem *fieldSystem)
{
    UnkStruct_ov8_0224997C *v0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_ov8_0224997C));
    v0->unk_00 = 0;

    {
        VecFx32 v1;
        PersistedMapFeatures *v2;
        UnkStruct_ov8_02249FB8 *v3;

        v2 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
        v3 = (UnkStruct_ov8_02249FB8 *)PersistedMapFeatures_GetBuffer(v2, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM);

        PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &v1);

        if (v1.y == (FX32_ONE * 16 * 0)) {
            FieldTask_InitCall(fieldSystem->task, ov8_0224A018, v0);
            v3->unk_00 = 1;
        } else {
            FieldTask_InitCall(fieldSystem->task, ov8_0224A0E8, v0);
            v3->unk_00 = 0;
        }
    }
}

static BOOL ov8_0224A018(FieldTask *taskMan)
{
    MapProp *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov8_0224997C *v2 = FieldTask_GetEnv(taskMan);

    switch (v2->unk_00) {
    case 0:
        PlayerAvatar_SetHeightCalculationEnabled(fieldSystem->playerAvatar, FALSE);
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
        (v2->unk_00)++;
        break;
    case 1: {
        v0 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, iron_island_platform_lift_nsbmd);

        {
            VecFx32 v3;

            v3 = MapProp_GetPosition(v0);
            v3.y += (FX32_ONE);

            if (v3.y >= (FX32_ONE * 16 * 10)) {
                v3.y = (FX32_ONE * 16 * 10);

                Sound_StopEffect(1553, 0);
                (v2->unk_00)++;
            }

            Player_SetYPos(fieldSystem->playerAvatar, v3.y);
            MapProp_SetPosition(v0, &v3);
        }
    } break;
    case 2:
        DynamicTerrainHeightManager_SetHeight(0, (FX32_ONE * 16 * 10), fieldSystem->dynamicTerrainHeightMan);
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(fieldSystem->playerAvatar, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
        (v2->unk_00)++;
        break;
    case 3:
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

static BOOL ov8_0224A0E8(FieldTask *taskMan)
{
    MapProp *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov8_0224997C *v2 = FieldTask_GetEnv(taskMan);

    switch (v2->unk_00) {
    case 0:
        PlayerAvatar_SetHeightCalculationEnabled(fieldSystem->playerAvatar, FALSE);
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
        (v2->unk_00)++;
        break;
    case 1: {
        v0 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, iron_island_platform_lift_nsbmd);

        {
            VecFx32 v3;

            v3 = MapProp_GetPosition(v0);
            v3.y -= (FX32_ONE);

            if (v3.y <= (FX32_ONE * 0)) {
                v3.y = (FX32_ONE * 0);
                Sound_StopEffect(1553, 0);
                (v2->unk_00)++;
            }

            Player_SetYPos(fieldSystem->playerAvatar, v3.y);
            MapProp_SetPosition(v0, &v3);
        }
    } break;
    case 2:
        DynamicTerrainHeightManager_SetHeight(0, (FX32_ONE * 16 * 0), fieldSystem->dynamicTerrainHeightMan);
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(fieldSystem->playerAvatar, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
        (v2->unk_00)++;
        break;
    case 3:
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

// clang-format off
static const u8 Unk_ov8_0224D035[4][1024] = {
    {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    },
    {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    },
    {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1,
        1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    },
    {
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1,
        1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1,
        1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1,
        1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
    },
};
// clang-format on

static const UnkStruct_ov8_0224CB68 Unk_ov8_0224CB68[24] = {
    {
        0x129,
        { 0x10, 0x0, 0x9 },
        { 0x10, 0x1E, 0x9 },
        0,
        3,
        0x0,
    },
    {
        0x128,
        { 0xB, 0x0, 0xD },
        { 0xB, 0xA, 0xD },
        0,
        1,
        0x0,
    },
    {
        0x128,
        { 0xF, 0x0, 0xD },
        { 0xF, 0xA, 0xD },
        0,
        1,
        0x0,
    },
    {
        0x128,
        { 0x13, 0x0, 0xD },
        { 0x13, 0xA, 0xD },
        0,
        1,
        0x0,
    },
    {
        0x128,
        { 0x18, 0x0, 0xD },
        { 0x18, 0xA, 0xD },
        0,
        1,
        0x0,
    },
    {
        0x128,
        { 0x15, 0x0, 0x16 },
        { 0x15, 0xA, 0x16 },
        0,
        1,
        0x0,
    },
    {
        0x128,
        { 0x19, 0x0, 0x9 },
        { 0x19, 0xA, 0x9 },
        0,
        1,
        0x1,
    },
    {
        0x128,
        { 0x19, 0x0, 0x16 },
        { 0x19, 0xA, 0x16 },
        0,
        1,
        0x1,
    },
    {
        0x128,
        { 0x1D, 0x0, 0x16 },
        { 0x1D, 0xA, 0x16 },
        0,
        1,
        0x1,
    },
    {
        0x128,
        { 0x5, 0xA, 0x1A },
        { 0x5, 0x14, 0x1A },
        1,
        2,
        0x0,
    },
    {
        0x127,
        { 0xB, 0xA, 0x16 },
        { 0x12, 0xA, 0x16 },
        1,
        1,
        0x1,
    },
    {
        0x128,
        { 0x1D, 0xA, 0x9 },
        { 0x1D, 0x14, 0x9 },
        1,
        2,
        0x1,
    },
    {
        0x127,
        { 0xA, 0x14, 0x4 },
        { 0xE, 0x14, 0x4 },
        2,
        2,
        0x0,
    },
    {
        0x127,
        { 0x13, 0x14, 0x4 },
        { 0x16, 0x14, 0x4 },
        2,
        2,
        0x0,
    },
    {
        0x127,
        { 0x7, 0x14, 0xC },
        { 0x16, 0x14, 0xC },
        2,
        2,
        0x0,
    },
    {
        0x127,
        { 0x9, 0x14, 0x1A },
        { 0x15, 0x14, 0x1A },
        2,
        2,
        0x0,
    },
    {
        0x126,
        { 0x2, 0x14, 0x13 },
        { 0x2, 0x14, 0x16 },
        2,
        2,
        0x1,
    },
    {
        0x126,
        { 0x1A, 0x14, 0x10 },
        { 0x1A, 0x14, 0x16 },
        2,
        2,
        0x0,
    },
    {
        0x126,
        { 0x1D, 0x14, 0x10 },
        { 0x1D, 0x14, 0x16 },
        2,
        2,
        0x1,
    },
    {
        0x129,
        { 0x7, 0x0, 0x9 },
        { 0x7, 0x1E, 0x9 },
        0,
        3,
        0x1,
    },
    {
        0x127,
        { 0x13, 0x1E, 0x4 },
        { 0x1A, 0x1E, 0x4 },
        3,
        3,
        0x0,
    },
    {
        0x127,
        { 0x5, 0x1E, 0x1A },
        { 0x1A, 0x1E, 0x1A },
        3,
        3,
        0x1,
    },
    {
        0x126,
        { 0x1D, 0x1E, 0x7 },
        { 0x1D, 0x1E, 0x17 },
        3,
        3,
        0x0,
    },
    {
        0x126,
        { 0x2, 0x1E, 0xC },
        { 0x2, 0x1E, 0x17 },
        3,
        3,
        0x1,
    },
};

static void ov8_0224A1B4(const UnkStruct_ov8_0224A1E4 *param0, const BOOL param1, const int param2)
{
    MapProp *v0;
    int v1;

    for (v1 = 0; v1 < 24; v1++) {
        if (param0->unk_10[v1] == param2) {
            v0 = MapPropManager_GetLoadedProp(param0->fieldSystem->mapPropManager, param0->unk_28[v1]);
            MapProp_SetHidden(v0, param1);
        }
    }
}

static u8 ov8_0224A1E4(UnkStruct_ov8_0224A1E4 *param0)
{
    u8 v0;
    u8 v1;
    u8 v2;
    u8 v3;
    VecFx32 v4;

    PlayerAvatar_PosVectorOut(param0->fieldSystem->playerAvatar, &v4);

    v1 = v4.y / (FX32_ONE * 16);
    v2 = v4.x / (FX32_ONE * 16);
    v3 = v4.z / (FX32_ONE * 16);

    for (v0 = 0; v0 < 24; v0++) {
        if (param0->unk_40[v0].unk_01 == v1) {
            if ((param0->unk_40[v0].unk_00 == v2) && (param0->unk_40[v0].unk_02 == v3)) {
                return v0;
            }
        }
    }

    return 24;
}

static void ov8_0224A254(UnkStruct_ov8_0224A1E4 *param0, const u8 param1)
{
    int v0;
    u8 v1;
    UnkStruct_ov8_0224997C *v2;
    PersistedMapFeatures *v3 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(param0->fieldSystem));
    UnkStruct_02071B30 *v4 = (UnkStruct_02071B30 *)PersistedMapFeatures_GetBuffer(v3, DYNAMIC_MAP_FEATURES_CANALAVE_GYM);
    v2 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_ov8_0224997C));

    v2->unk_00 = 0;
    param0->unk_E8 = param1;

    v0 = param0->unk_88[param1];
    v1 = ov8_02249960(param1, v4->unk_00);

    ov8_0224996C(param1, &v4->unk_00);

    if (v0 == 295) {
        if (v1) {
            param0->unk_F0 = 5;
            param0->unk_EC = Unk_ov8_0224CB68[param1].unk_04.unk_00 * (FX32_ONE * 16) + (FX32_ONE * 8);
            param0->unk_40[param1] = Unk_ov8_0224CB68[param1].unk_04;
        } else {
            param0->unk_F0 = 4;
            param0->unk_EC = Unk_ov8_0224CB68[param1].unk_07.unk_00 * (FX32_ONE * 16) + (FX32_ONE * 8);
            param0->unk_40[param1] = Unk_ov8_0224CB68[param1].unk_07;
        }

        FieldSystem_CreateTask(param0->fieldSystem, ov8_0224A620, v2);
    } else if (v0 == 294) {
        if (v1) {
            param0->unk_F0 = 2;
            param0->unk_EC = Unk_ov8_0224CB68[param1].unk_04.unk_02 * (FX32_ONE * 16) + (FX32_ONE * 8);
            param0->unk_40[param1] = Unk_ov8_0224CB68[param1].unk_04;
        } else {
            param0->unk_F0 = 3;
            param0->unk_EC = Unk_ov8_0224CB68[param1].unk_07.unk_02 * (FX32_ONE * 16) + (FX32_ONE * 8);
            param0->unk_40[param1] = Unk_ov8_0224CB68[param1].unk_07;
        }

        FieldSystem_CreateTask(param0->fieldSystem, ov8_0224A770, v2);
    } else {
        if (v1) {
            param0->unk_F0 = 1;
            param0->unk_EC = Unk_ov8_0224CB68[param1].unk_04.unk_01 * (FX32_ONE * 16);
            param0->unk_40[param1] = Unk_ov8_0224CB68[param1].unk_04;
            param0->unk_10[param1] = Unk_ov8_0224CB68[param1].unk_0A;
        } else {
            param0->unk_F0 = 0;
            param0->unk_EC = Unk_ov8_0224CB68[param1].unk_07.unk_01 * (FX32_ONE * 16);
            param0->unk_40[param1] = Unk_ov8_0224CB68[param1].unk_07;
        }

        FieldSystem_CreateTask(param0->fieldSystem, ov8_0224A4FC, v2);
    }
}

static void ov8_0224A434(UnkStruct_ov8_0224A1E4 *param0, const fx32 param1)
{
    MapProp *v0 = MapPropManager_GetLoadedProp(param0->fieldSystem->mapPropManager, param0->unk_04);
    MapProp *v1 = MapPropManager_GetLoadedProp(param0->fieldSystem->mapPropManager, param0->unk_08);
    MapProp *v2 = MapPropManager_GetLoadedProp(param0->fieldSystem->mapPropManager, param0->unk_0C);

    if (param1 >= (FX32_ONE * 16) * (10 - 9)) {
        MapProp_SetHidden(v0, 0);
        ov8_0224A1B4(param0, 0, 1);
    } else {
        MapProp_SetHidden(v0, 1);
        ov8_0224A1B4(param0, 1, 1);
    }

    if (param1 >= (FX32_ONE * 16) * (10 * 2 - 9)) {
        MapProp_SetHidden(v1, 0);
        ov8_0224A1B4(param0, 0, 2);
    } else {
        MapProp_SetHidden(v1, 1);
        ov8_0224A1B4(param0, 1, 2);
    }

    if (param1 >= (FX32_ONE * 16) * (10 * 3 - 9)) {
        MapProp_SetHidden(v2, 0);
        ov8_0224A1B4(param0, 0, 3);
    } else {
        MapProp_SetHidden(v2, 1);
        ov8_0224A1B4(param0, 1, 3);
    }
}

static BOOL ov8_0224A4FC(FieldTask *taskMan)
{
    MapProp *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov8_0224997C *v2 = FieldTask_GetEnv(taskMan);
    UnkStruct_ov8_0224A1E4 *v3 = (UnkStruct_ov8_0224A1E4 *)fieldSystem->unk_04->dynamicMapFeaturesData;

    switch (v2->unk_00) {
    case 0:
        PlayerAvatar_SetHeightCalculationEnabled(fieldSystem->playerAvatar, FALSE);
        Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
        (v2->unk_00)++;
        break;
    case 1: {
        int v4;

        v4 = v3->unk_28[v3->unk_E8];
        v0 = MapPropManager_GetLoadedProp(fieldSystem->mapPropManager, v4);

        {
            VecFx32 v5;

            v5 = MapProp_GetPosition(v0);

            if (v3->unk_F0 == 0) {
                v5.y += (FX32_ONE * 8);

                if (v5.y >= v3->unk_EC) {
                    v5.y = v3->unk_EC;
                    v3->unk_10[v3->unk_E8] = Unk_ov8_0224CB68[v3->unk_E8].unk_0B;
                    Sound_StopEffect(1553, 0);
                    (v2->unk_00)++;
                }
            } else if (v3->unk_F0 == 1) {
                v5.y -= (FX32_ONE * 8);

                if (v5.y <= v3->unk_EC) {
                    v5.y = v3->unk_EC;
                    Sound_StopEffect(1553, 0);
                    (v2->unk_00)++;
                }
            } else {
                GF_ASSERT(FALSE);
            }

            Player_SetYPos(fieldSystem->playerAvatar, v5.y);

            MapProp_SetPosition(v0, &v5);
            ov8_0224A434(v3, v5.y);
        }
    } break;
    case 2:
        PlayerAvatar_SetHeightCalculationEnabledAndUpdate(fieldSystem->playerAvatar, TRUE);
        Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
        (v2->unk_00)++;
        break;
    case 3:
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

static BOOL ov8_0224A620(FieldTask *taskMan)
{
    MapProp *v0;
    MapObject *v1;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov8_0224997C *v3 = FieldTask_GetEnv(taskMan);
    UnkStruct_ov8_0224A1E4 *v4 = (UnkStruct_ov8_0224A1E4 *)fieldSystem->unk_04->dynamicMapFeaturesData;
    v1 = Player_MapObject(fieldSystem->playerAvatar);

    switch (v3->unk_00) {
    case 0:
        if (LocalMapObj_IsAnimationSet(v1) == 1) {
            LocalMapObj_SetAnimationCode(v1, MOVEMENT_ACTION_PAUSE_ANIMATION);

            Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
            (v3->unk_00)++;
        }
        break;
    case 1: {
        int v5;

        v5 = v4->unk_28[v4->unk_E8];
        v0 = MapPropManager_GetLoadedProp(fieldSystem->mapPropManager, v5);

        {
            VecFx32 v6, v7;

            v6 = MapProp_GetPosition(v0);
            PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &v7);
            v6.x = v7.x;

            if (v4->unk_F0 == 4) {
                if (v6.x >= v4->unk_EC) {
                    v6.x = v4->unk_EC;

                    Sound_StopEffect(1553, 0);
                    (v3->unk_00)++;
                } else {
                    if (LocalMapObj_IsAnimationSet(v1) == 1) {
                        LocalMapObj_SetAnimationCode(v1, MOVEMENT_ACTION_WALK_FASTER_EAST);
                    }
                }
            } else if (v4->unk_F0 == 5) {
                if (v6.x <= v4->unk_EC) {
                    v6.x = v4->unk_EC;

                    Sound_StopEffect(1553, 0);
                    (v3->unk_00)++;
                } else {
                    if (LocalMapObj_IsAnimationSet(v1) == 1) {
                        LocalMapObj_SetAnimationCode(v1, MOVEMENT_ACTION_WALK_FASTER_WEST);
                    }
                }
            } else {
                GF_ASSERT(FALSE);
            }

            MapProp_SetPosition(v0, &v6);
        }
    } break;
    case 2:
        if (LocalMapObj_IsAnimationSet(v1) == 1) {
            LocalMapObj_SetAnimationCode(v1, MOVEMENT_ACTION_RESUME_ANIMATION);
            (v3->unk_00)++;
        }
    case 3:
        if (LocalMapObj_CheckAnimationFinished(v1) == 1) {
            sub_020656AC(v1);
            Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
            (v3->unk_00)++;
        }
        break;
    case 4:
        Heap_Free(v3);
        return 1;
    }

    return 0;
}

static BOOL ov8_0224A770(FieldTask *taskMan)
{
    MapProp *v0;
    MapObject *v1;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov8_0224997C *v3 = FieldTask_GetEnv(taskMan);
    UnkStruct_ov8_0224A1E4 *v4 = (UnkStruct_ov8_0224A1E4 *)fieldSystem->unk_04->dynamicMapFeaturesData;
    v1 = Player_MapObject(fieldSystem->playerAvatar);

    switch (v3->unk_00) {
    case 0:
        if (LocalMapObj_IsAnimationSet(v1) == 1) {
            LocalMapObj_SetAnimationCode(v1, MOVEMENT_ACTION_PAUSE_ANIMATION);

            Sound_PlayEffect(SEQ_SE_DP_ELEBETA);
            (v3->unk_00)++;
        }
        break;
    case 1: {
        int v5;

        v5 = v4->unk_28[v4->unk_E8];
        v0 = MapPropManager_GetLoadedProp(fieldSystem->mapPropManager, v5);

        {
            VecFx32 v6, v7;

            v6 = MapProp_GetPosition(v0);
            PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &v7);
            v6.z = v7.z;

            if (v4->unk_F0 == 3) {
                if (v6.z >= v4->unk_EC) {
                    v6.z = v4->unk_EC;

                    Sound_StopEffect(1553, 0);
                    (v3->unk_00)++;
                } else {
                    if (LocalMapObj_IsAnimationSet(v1) == 1) {
                        LocalMapObj_SetAnimationCode(v1, MOVEMENT_ACTION_WALK_FASTER_SOUTH);
                    }
                }
            } else if (v4->unk_F0 == 2) {
                if (v6.z <= v4->unk_EC) {
                    v6.z = v4->unk_EC;

                    Sound_StopEffect(1553, 0);
                    (v3->unk_00)++;
                } else {
                    if (LocalMapObj_IsAnimationSet(v1) == 1) {
                        LocalMapObj_SetAnimationCode(v1, MOVEMENT_ACTION_WALK_FASTER_NORTH);
                    }
                }
            } else {
                GF_ASSERT(FALSE);
            }

            MapProp_SetPosition(v0, &v6);
        }
    } break;
    case 2:
        if (LocalMapObj_IsAnimationSet(v1) == 1) {
            LocalMapObj_SetAnimationCode(v1, MOVEMENT_ACTION_RESUME_ANIMATION);
            (v3->unk_00)++;
        }
        break;
    case 3: {
        MapObject *v8;

        v8 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v8) == 1) {
            sub_020656AC(v8);
            Sound_PlayEffect(SEQ_SE_DP_KI_GASYAN);
            (v3->unk_00)++;
        }
    } break;
    case 4:
        Heap_Free(v3);
        return 1;
    }

    return 0;
}

void CanalaveGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    UnkStruct_ov8_0224A1E4 *v0;
    PersistedMapFeatures *v1 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    UnkStruct_02071B30 *v2 = (UnkStruct_02071B30 *)PersistedMapFeatures_GetBuffer(v1, DYNAMIC_MAP_FEATURES_CANALAVE_GYM);

    fieldSystem->unk_04->dynamicMapFeaturesData = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_ov8_0224A1E4));

    v0 = fieldSystem->unk_04->dynamicMapFeaturesData;
    v0->fieldSystem = fieldSystem;

    {
        VecFx32 v3 = { FX32_ONE * (16 * 16), 0, FX32_ONE * (16 * 16) };

        v3.y = (FX32_ONE * 16) * 10;
        v0->unk_04 = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, 300, &v3, NULL, fieldSystem->mapPropAnimMan);

        v3.y = (FX32_ONE * 16) * 10 * 2;
        v0->unk_08 = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, 301, &v3, NULL, fieldSystem->mapPropAnimMan);

        v3.y = (FX32_ONE * 16) * 10 * 3;
        v0->unk_0C = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, 302, &v3, NULL, fieldSystem->mapPropAnimMan);
    }

    {
        VecFx32 v4;
        int v5;

        for (v5 = 0; v5 < 24; v5++) {
            if (ov8_02249960(v5, v2->unk_00)) {
                v4.x = (FX32_ONE * 16) * Unk_ov8_0224CB68[v5].unk_07.unk_00;
                v4.y = (FX32_ONE * 16) * Unk_ov8_0224CB68[v5].unk_07.unk_01;
                v4.z = (FX32_ONE * 16) * Unk_ov8_0224CB68[v5].unk_07.unk_02;

                v0->unk_40[v5] = Unk_ov8_0224CB68[v5].unk_07;
                v0->unk_10[v5] = Unk_ov8_0224CB68[v5].unk_0B;
            } else {
                v4.x = (FX32_ONE * 16) * Unk_ov8_0224CB68[v5].unk_04.unk_00;
                v4.y = (FX32_ONE * 16) * Unk_ov8_0224CB68[v5].unk_04.unk_01;
                v4.z = (FX32_ONE * 16) * Unk_ov8_0224CB68[v5].unk_04.unk_02;

                v0->unk_40[v5] = Unk_ov8_0224CB68[v5].unk_04;
                v0->unk_10[v5] = Unk_ov8_0224CB68[v5].unk_0A;
            }

            v4.x += (FX32_ONE * 8);
            v4.z += (FX32_ONE * 8);

            v0->unk_28[v5] = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, Unk_ov8_0224CB68[v5].unk_00, &v4, NULL, fieldSystem->mapPropAnimMan);
            v0->unk_88[v5] = Unk_ov8_0224CB68[v5].unk_00;
        }
    }

    {
        VecFx32 v6;

        PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &v6);
        ov8_0224A434(v0, v6.y);
    }

    Camera_SetClipping(FX32_ONE * 100, FX32_ONE * 1700, fieldSystem->camera);

    ov5_021D57FC(fieldSystem->unk_48, 0xffffffff, 1, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x0200, 0x76a0);
    ov5_021D5834(fieldSystem->unk_48, 0xffffffff, GX_RGB(0, 0, 0), 0);

    {
        int v7;
        char v8[32];

        for (v7 = 0; v7 < 32; v7++) {
            v8[v7] = v7 * (72 / 32);
        }

        ov5_021D585C(fieldSystem->unk_48, v8);
    }
}

BOOL ov8_0224AAA8(FieldSystem *fieldSystem)
{
    u8 v0;
    UnkStruct_ov8_0224A1E4 *v1;

    {
        int v2;
        PersistedMapFeatures *v3;

        v3 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
        v2 = PersistedMapFeatures_GetID(v3);

        if (v2 != DYNAMIC_MAP_FEATURES_CANALAVE_GYM) {
            return 0;
        }
    }

    v1 = (UnkStruct_ov8_0224A1E4 *)fieldSystem->unk_04->dynamicMapFeaturesData;

    if (v1 == NULL) {
        return 0;
    }

    v0 = ov8_0224A1E4(v1);

    if (v0 != 24) {
        ov8_0224A254(v1, v0);
        return 1;
    }

    return 0;
}

void CanalaveGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    UnkStruct_ov8_0224A1E4 *v0 = (UnkStruct_ov8_0224A1E4 *)fieldSystem->unk_04->dynamicMapFeaturesData;
    Heap_Free(v0);
    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

BOOL CanalaveGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    u8 v0;
    const u8 *v1;
    int v2;

    v0 = (height / (FX32_ONE * 16)) / 10;
    GF_ASSERT(v0 <= 3);

    v1 = Unk_ov8_0224D035[v0];
    v2 = tileX + tileZ * 32;

    GF_ASSERT(v2 < 1024);
    (*isColliding) = v1[v2];

    return 1;
}

static const UnkStruct_ov8_0224C788 Unk_ov8_0224C788[3] = {
    { 0x1CB, 0x3, 0x0, 0x8, 0x1, 0x0, 0x0 },
    { 0x1CC, 0x8, 0x0, 0x8, 0x2, 0x1, 0x0 },
    { 0x1CB, 0xD, 0x0, 0x8, 0x0, 0x0, 0x0 }
};

static const UnkStruct_ov8_0224C788 Unk_ov8_0224C874[6] = {
    { 0x1CB, 0x6, 0x0, 0x8, 0x1, 0x0, 0x0 },
    { 0x1CA, 0xB, 0x0, 0x8, 0x3, 0x1, 0x0 },
    { 0x1CF, 0xF, 0x3, 0x8, 0x1, 0x1, 0x1 },
    { 0x1CF, 0x2, 0x3, 0xD, 0x1, 0x0, 0x1 },
    { 0x1CA, 0x6, 0x0, 0xD, 0x2, 0x1, 0x0 },
    { 0x1CD, 0xB, 0x0, 0xD, 0x2, 0x0, 0x0 }
};

static const UnkStruct_ov8_0224C788 Unk_ov8_0224C9F4[13] = {
    { 0x1CD, 0x6, 0x6, 0x8, 0x1, 0x0, 0x0 },
    { 0x1CC, 0xB, 0x6, 0x8, 0x0, 0x1, 0x0 },
    { 0x1CE, 0x10, 0x6, 0x8, 0x0, 0x0, 0x0 },
    { 0x1CF, 0x2, 0x3, 0xD, 0x0, 0x1, 0x1 },
    { 0x1CC, 0x6, 0x6, 0xD, 0x1, 0x1, 0x0 },
    { 0x1CD, 0xB, 0x6, 0xD, 0x3, 0x0, 0x0 },
    { 0x1CE, 0x10, 0x6, 0xD, 0x3, 0x1, 0x0 },
    { 0x1CF, 0x14, 0x3, 0xD, 0x1, 0x0, 0x1 },
    { 0x1D0, 0x2, 0x3, 0x12, 0x0, 0x0, 0x1 },
    { 0x1CB, 0x6, 0x0, 0x12, 0x1, 0x1, 0x0 },
    { 0x1CE, 0xB, 0x0, 0x12, 0x3, 0x0, 0x0 },
    { 0x1CD, 0x10, 0x0, 0x12, 0x0, 0x1, 0x0 },
    { 0x1D0, 0x14, 0x3, 0x12, 0x1, 0x1, 0x1 }
};

static const UnkStruct_ov8_0224C788 *const Unk_ov8_0224C740[3] = {
    Unk_ov8_0224C788,
    Unk_ov8_0224C874,
    Unk_ov8_0224C9F4
};

static const UnkStruct_ov8_0224C8A4 Unk_ov8_0224C8A4[12] = {
    { 0x1, 0x8, 0x2, 0x1 },
    { 0x3, 0x6, 0x1, 0x2 },
    { 0x4, 0x8, 0x2, 0x1 },
    { 0x3, 0x9, 0x1, 0x2 },
    { 0x6, 0x8, 0x2, 0x1 },
    { 0x8, 0x6, 0x1, 0x2 },
    { 0x9, 0x8, 0x2, 0x1 },
    { 0x8, 0x9, 0x1, 0x2 },
    { 0xB, 0x8, 0x2, 0x1 },
    { 0xD, 0x6, 0x1, 0x2 },
    { 0xE, 0x8, 0x2, 0x1 },
    { 0xD, 0x9, 0x1, 0x2 }
};

static const UnkStruct_ov8_0224C8A4 Unk_ov8_0224C954[18] = {
    { 0x4, 0x8, 0x2, 0x1 },
    { 0x6, 0x6, 0x1, 0x2 },
    { 0x7, 0x8, 0x2, 0x1 },
    { 0x6, 0x9, 0x1, 0x2 },
    { 0x9, 0x8, 0x2, 0x1 },
    { 0xB, 0x6, 0x1, 0x2 },
    { 0xC, 0x8, 0x2, 0x1 },
    { 0xB, 0x9, 0x1, 0x2 },
    { 0xF, 0x6, 0x1, 0x5 },
    { 0x2, 0xB, 0x1, 0x5 },
    { 0x4, 0xD, 0x2, 0x1 },
    { 0x6, 0xB, 0x1, 0x2 },
    { 0x7, 0xD, 0x2, 0x1 },
    { 0x6, 0xE, 0x1, 0x2 },
    { 0x9, 0xD, 0x2, 0x1 },
    { 0xB, 0xB, 0x1, 0x2 },
    { 0xC, 0xD, 0x2, 0x1 },
    { 0xB, 0xE, 0x1, 0x2 }
};

static const UnkStruct_ov8_0224C8A4 Unk_ov8_0224CAC5[40] = {
    { 0x4, 0x8, 0x2, 0x1 },
    { 0x6, 0x6, 0x1, 0x2 },
    { 0x7, 0x8, 0x2, 0x1 },
    { 0x6, 0x9, 0x1, 0x2 },
    { 0x9, 0x8, 0x2, 0x1 },
    { 0xB, 0x6, 0x1, 0x2 },
    { 0xC, 0x8, 0x2, 0x1 },
    { 0xB, 0x9, 0x1, 0x2 },
    { 0xE, 0x8, 0x2, 0x1 },
    { 0x10, 0x6, 0x1, 0x2 },
    { 0x11, 0x8, 0x2, 0x1 },
    { 0x10, 0x9, 0x1, 0x2 },
    { 0x2, 0xB, 0x1, 0x5 },
    { 0x4, 0xD, 0x2, 0x1 },
    { 0x6, 0xB, 0x1, 0x2 },
    { 0x7, 0xD, 0x2, 0x1 },
    { 0x6, 0xE, 0x1, 0x2 },
    { 0x9, 0xD, 0x2, 0x1 },
    { 0xB, 0xB, 0x1, 0x2 },
    { 0xC, 0xD, 0x2, 0x1 },
    { 0xB, 0xE, 0x1, 0x2 },
    { 0xE, 0xD, 0x2, 0x1 },
    { 0x10, 0xB, 0x1, 0x2 },
    { 0x11, 0xD, 0x2, 0x1 },
    { 0x10, 0xE, 0x1, 0x2 },
    { 0x14, 0xB, 0x1, 0x5 },
    { 0x2, 0x10, 0x1, 0x5 },
    { 0x4, 0x12, 0x2, 0x1 },
    { 0x6, 0x10, 0x1, 0x2 },
    { 0x7, 0x12, 0x2, 0x1 },
    { 0x6, 0x13, 0x1, 0x2 },
    { 0x9, 0x12, 0x2, 0x1 },
    { 0xB, 0x10, 0x1, 0x2 },
    { 0xC, 0x12, 0x2, 0x1 },
    { 0xB, 0x13, 0x1, 0x2 },
    { 0xE, 0x12, 0x2, 0x1 },
    { 0x10, 0x10, 0x1, 0x2 },
    { 0x11, 0x12, 0x2, 0x1 },
    { 0x10, 0x13, 0x1, 0x2 },
    { 0x14, 0x10, 0x1, 0x5 }
};

static const UnkStruct_ov8_0224C8A4 *const Unk_ov8_0224C74C[3] = {
    Unk_ov8_0224C8A4,
    Unk_ov8_0224C954,
    Unk_ov8_0224CAC5
};

static const u8 Unk_ov8_0224C6E0[] = {
    0x1,
    0x2,
    0x4,
    0x5,
    0xA,
    0xB
};

static const u8 Unk_ov8_0224C6F0[] = {
    0x0,
    0x1,
    0x5,
    0x6,
    0x9,
    0xA
};

static const u8 Unk_ov8_0224C6E8[] = {
    0x0,
    0x3,
    0x6,
    0x7,
    0x8,
    0x9
};

static const u8 Unk_ov8_0224C6D8[] = {
    0x2,
    0x3,
    0x4,
    0x7,
    0x8,
    0xB
};

static const u8 Unk_ov8_0224E050[] = {
    0x1,
    0x2,
    0x4,
    0x5,
    0x7,
    0x8,
    0x9,
    0xA,
    0xB,
    0xC,
    0xF
};

static const u8 Unk_ov8_0224E038[] = {
    0x0,
    0x1,
    0x4,
    0x5,
    0x6,
    0xB,
    0xC,
    0xD,
    0xE,
    0x0,
    0x0
};

static const u8 Unk_ov8_0224E044[] = {
    0x0,
    0x3,
    0x5,
    0x6,
    0x7,
    0x8,
    0x9,
    0xA,
    0xC,
    0xD,
    0x11
};

static const u8 Unk_ov8_0224E05C[] = {
    0x2,
    0x3,
    0x4,
    0x6,
    0x7,
    0xA,
    0xB,
    0xD,
    0x10,
    0x2,
    0x2
};

static const u8 Unk_ov8_0224E068[] = {
    0x2,
    0x6,
    0x7,
    0xB,
    0xE,
    0xF,
    0x11,
    0x15,
    0x19,
    0x1C,
    0x1D,
    0x1F,
    0x26,
    0x27
};

static const u8 Unk_ov8_0224E078[] = {
    0x1,
    0x4,
    0x7,
    0xA,
    0xC,
    0xF,
    0x10,
    0x14,
    0x16,
    0x1A,
    0x1D,
    0x1E,
    0x22,
    0x23
};

static const u8 Unk_ov8_0224E088[] = {
    0x0,
    0x4,
    0x5,
    0x9,
    0xD,
    0x10,
    0x13,
    0x17,
    0x19,
    0x1B,
    0x1E,
    0x21,
    0x24,
    0x27
};

static const u8 Unk_ov8_0224E098[] = {
    0x3,
    0x5,
    0x6,
    0x8,
    0xC,
    0xD,
    0xE,
    0x12,
    0x18,
    0x1A,
    0x1B,
    0x1C,
    0x20,
    0x25
};

UnkStruct_ov8_0224E740 Unk_ov8_0224E740[3] = {
    {
        0x6,
        {
            Unk_ov8_0224C6E0,
            Unk_ov8_0224C6F0,
            Unk_ov8_0224C6E8,
            Unk_ov8_0224C6D8,
        },
    },
    {
        0xB,
        {
            Unk_ov8_0224E050,
            Unk_ov8_0224E038,
            Unk_ov8_0224E044,
            Unk_ov8_0224E05C,
        },
    },
    {
        0xE,
        {
            Unk_ov8_0224E068,
            Unk_ov8_0224E078,
            Unk_ov8_0224E088,
            Unk_ov8_0224E098,
        },
    },
};

static u8 ov8_0224AB40(const u8 param0)
{
    u8 v0;

    switch (param0) {
    case 0:
        v0 = 3;
        break;
    case 1:
        v0 = (4 + 2);
        break;
    case 2:
        v0 = (9 + 4);
        break;
    default:
        GF_ASSERT(0);
        v0 = 0;
    }

    return v0;
}

static void ov8_0224AB64(const UnkStruct_ov8_0224C788 *param0, const u8 param1, VecFx32 *param2)
{
    fx32 *v0 = NULL;
    fx16 v1, v2;

    switch (param0->unk_07_3) {
    case 0:
        v0 = &(param2->y);
        break;
    case 1:
        v0 = &(param2->x);
        break;
    default:
        GF_ASSERT(FALSE);
    }

    v1 = 0;
    GF_ASSERT(param0->unk_07_0 <= 3);

    v1 += (0x4000 * param0->unk_07_0);
    GF_ASSERT(param1 <= 3);

    v2 = 0x4000 * param1;

    if (param0->unk_07_2 == 0) {
        v1 += v2;
    } else if (param0->unk_07_2 == 1) {
        v1 -= v2;
    } else {
        GF_ASSERT(FALSE);
    }

    (*v0) = v1;
}

void SunyshoreGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    UnkStruct_ov8_0224ABD4 *v0;
    PersistedMapFeatures *v1 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    UnkStruct_02071B6C *v2 = (UnkStruct_02071B6C *)PersistedMapFeatures_GetBuffer(v1, DYNAMIC_MAP_FEATURES_SUNYSHORE_GYM);

    fieldSystem->unk_04->dynamicMapFeaturesData = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_ov8_0224ABD4));

    v0 = fieldSystem->unk_04->dynamicMapFeaturesData;

    v0->unk_11 = v2->unk_04;
    v0->unk_13 = v2->unk_00;

    {
        VecFx32 v3;
        VecFx32 v4;
        int v5;
        u8 v6;

        v6 = ov8_0224AB40(v2->unk_04);

        for (v5 = 0; v5 < v6; v5++) {
            const UnkStruct_ov8_0224C788 *v7;

            v7 = Unk_ov8_0224C740[v2->unk_04];

            v3.x = v7[v5].unk_04 * (FX32_ONE * 16);
            v3.y = v7[v5].unk_05 * (FX32_ONE * 16);
            v3.z = v7[v5].unk_06 * (FX32_ONE * 16);

            v3.x += (FX32_ONE * 8);
            v3.z += (FX32_ONE * 8);

            if (v7[v5].unk_07_3 == 1) {
                v3.y += (FX32_ONE * 8);
            }

            {
                v4.x = 0;
                v4.y = 0;
                v4.z = 0;

                ov8_0224AB64(&(v7[v5]), v2->unk_00, &v4);
            }

            v0->unk_04[v5] = MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, v7[v5].unk_00, &v3, &v4, fieldSystem->mapPropAnimMan);
        }
    }
}

void SunyshoreGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    UnkStruct_ov8_0224ABD4 *v0 = (UnkStruct_ov8_0224ABD4 *)fieldSystem->unk_04->dynamicMapFeaturesData;
    Heap_Free(v0);
    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

BOOL SunyshoreGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    int v0, v1, v2;
    u8 const *v3;
    u8 v4;
    UnkStruct_ov8_0224C8A4 const *v5;
    UnkStruct_ov8_0224ABD4 *v6 = (UnkStruct_ov8_0224ABD4 *)fieldSystem->unk_04->dynamicMapFeaturesData;
    v1 = Unk_ov8_0224E740[v6->unk_11].unk_00;
    v2 = v6->unk_13;
    v3 = Unk_ov8_0224E740[v6->unk_11].unk_04[v2];
    v5 = Unk_ov8_0224C74C[v6->unk_11];

    for (v0 = 0; v0 < v1; v0++) {
        v4 = v3[v0];

        if ((v5[v4].unk_00 <= tileX) && (tileX < v5[v4].unk_00 + v5[v4].unk_02) && (v5[v4].unk_01 <= tileZ) && (tileZ < v5[v4].unk_01 + v5[v4].unk_03)) {
            (*isColliding) = 1;
            return 1;
        }
    }

    return 0;
}

void ov8_0224AD34(FieldSystem *fieldSystem, const u8 param1)
{
    UnkStruct_ov8_0224997C *v0;
    UnkStruct_ov8_0224ABD4 *v1;
    PersistedMapFeatures *v2 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    UnkStruct_02071B6C *v3 = (UnkStruct_02071B6C *)PersistedMapFeatures_GetBuffer(v2, DYNAMIC_MAP_FEATURES_SUNYSHORE_GYM);
    v1 = (UnkStruct_ov8_0224ABD4 *)fieldSystem->unk_04->dynamicMapFeaturesData;
    v0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_ov8_0224997C));

    v0->unk_00 = 0;

    {
        s8 v4;

        v1->unk_14 = param1;
        v1->unk_16 = 0;
        v1->unk_12 = ov8_0224AB40(v3->unk_04);
        v4 = v3->unk_00;

        if (param1 == 0) {
            v1->unk_18 = 0x4000;
            v4 = (v4 + 1) % 4;
        } else if (param1 == 1) {
            v1->unk_18 = 0x4000;
            v4--;

            if (v4 < 0) {
                v4 = 3;
            }
        } else if (param1 == 2) {
            v1->unk_18 = 0x8000;
            v4 = (v4 + 2) % 4;
        } else {
            GF_ASSERT(FALSE);
            return;
        }

        v3->unk_00 = v4;
        v1->unk_13 = v4;

        Sound_PlayEffect(SEQ_SE_DP_GAGAGA);
        FieldTask_InitCall(fieldSystem->task, ov8_0224ADE8, v0);
    }
}

static BOOL ov8_0224ADE8(FieldTask *param0)
{
    MapProp *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov8_0224997C *v2 = FieldTask_GetEnv(param0);
    UnkStruct_ov8_0224ABD4 *v3 = (UnkStruct_ov8_0224ABD4 *)fieldSystem->unk_04->dynamicMapFeaturesData;

    switch (v2->unk_00) {
    case 0: {
        u8 v4;
        u16 v5;
        u16 v6;

        if (v3->unk_16 + 0x400 <= v3->unk_18) {
            v6 = 0x400;
        } else {
            v6 = v3->unk_16 + 0x400 - v3->unk_18;
        }

        v3->unk_16 += v6;
        v5 = v6;

        if (v3->unk_14 == 1) {
            v5 = -v5;
        }

        for (v4 = 0; v4 < v3->unk_12; v4++) {
            int v7;

            v7 = v3->unk_04[v4];
            v0 = MapPropManager_GetLoadedProp(fieldSystem->mapPropManager, v7);

            {
                VecFx32 *v8;

                v8 = MapProp_GetRotation(v0);

                {
                    const UnkStruct_ov8_0224C788 *v9;
                    fx32 *v10;
                    u16 v11, v12;

                    v9 = Unk_ov8_0224C740[v3->unk_11];

                    if (v9[v4].unk_07_2 == 1) {
                        v12 = -v5;
                    } else {
                        v12 = v5;
                    }

                    switch (v9[v4].unk_07_3) {
                    case 0:
                        v10 = &(v8->y);
                        break;
                    case 1:
                        v10 = &(v8->x);
                        break;
                    default:
                        GF_ASSERT(FALSE);
                    }

                    v11 = (*v10);
                    v11 += v12;
                    (*v10) = v11;
                }
            }
        }

        if (v3->unk_16 >= v3->unk_18) {
            (v2->unk_00)++;
        }
    } break;
    case 1:
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

static const u32 Unk_ov8_0224C700[2] = {
    0x219,
    0x218
};

static const VecFx32 Unk_ov8_0224C7A0[2] = {
    {
        ((11 << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1),
        FX32_ONE * 12,
        ((13 << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1),
    },
    {
        ((11 << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1),
        FX32_ONE * 13,
        ((13 << 4) * FX32_ONE) + ((16 * FX32_ONE) >> 1),
    }
};

static const u16 Unk_ov8_0224C7B8[12] = {
    0x0,
    0x1559,
    0x2AB2,
    0x4000,
    0x5564,
    0x6ABD,
    0x8000,
    0x956F,
    0xAAC8,
    0xC000,
    0xD57A,
    0xEAD3
};

static const UnkStruct_ov8_0224C774 Unk_ov8_0224C774[5] = {
    { 0x7, 0x19 },
    { 0x6, 0xF },
    { 0x9, 0xF },
    { 0x0, 0x2D },
    { 0x0, 0x1E }
};

static const UnkStruct_ov8_0224C7F0 Unk_ov8_0224C7F0[5] = {
    { -1, -1, 2 },
    { 0xB, 0x12, 1 },
    { 0x6, 0xD, 0 },
    { 0xB, 0x8, 1 },
    { 0xB, 0x8, 1 }
};

static __attribute__((aligned(4))) const u8 Unk_ov8_0224CCE8[5][169] = {
    { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0 },
    { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0 },
    { 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0 },
    { 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0 },
    { 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0 },
};

static __attribute__((aligned(4))) const u8 Unk_ov8_0224CA5C[5][21] = {
    { 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1 },
    { 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1 },
    { 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }
};

static void SetEternaGymFlowerClockState(FieldSystem *fieldSystem, u16 state)
{
    SystemVars_SetEternaGymFlowerClockState(SaveData_GetVarsFlags(fieldSystem->saveData), state);
}

static u32 GetEternaGymFlowerClockState(FieldSystem *fieldSystem)
{
    return SystemVars_GetEternaGymFlowerClockState(SaveData_GetVarsFlags(fieldSystem->saveData));
}

static void ov8_0224AF00(UnkStruct_ov8_0224AF00 *param0, fx32 param1)
{
    param0->unk_04 += param1;

    while (param0->unk_04 >= (FX32_ONE * 60)) {
        param0->unk_04 -= (FX32_ONE * 60);
        param0->unk_00 += (FX32_ONE * 1);
    }

    while (param0->unk_04 < 0) {
        param0->unk_04 += (FX32_ONE * 60);
        param0->unk_00 += (FX32_ONE * 1);
    }

    param0->unk_00 %= (FX32_ONE * 12);
}

static void ov8_0224AF58(UnkStruct_ov8_0224AF58 *param0)
{
    VecFx32 v0 = param0->unk_00;
    VecFx32 *v1 = MapProp_GetRotation(param0->unk_14);

    v1->x = param0->unk_00.x;
    v1->y = (0x10000 - param0->unk_00.y) % 0x10000;
    v1->z = param0->unk_00.z;
}

static void ov8_0224AF84(UnkStruct_ov8_0224AF00 *param0)
{
    int v0, v1;
    UnkStruct_ov8_0224AF58 *v2 = &param0->unk_0C[1];
    v1 = ((param0->unk_04) / FX32_ONE);

    if ((v1 % 15) == 0) {
        v2->unk_00.y = Unk_ov8_0224C7B8[v1 / 5];
    } else {
        v2->unk_00.y = ((v1) * ((((360 / 60) * 0xffff) / 360) + 1));
    }

    v2->unk_00.y += (-0x4000 * 1);
    v2->unk_00.y %= 0x10000;

    ov8_0224AF58(v2);

    v0 = ((param0->unk_00) / FX32_ONE);
    v2 = &param0->unk_0C[0];
    v2->unk_00.y = Unk_ov8_0224C7B8[v0];

    if (param0->unk_08 == 1) {
        v2->unk_00.y += (((5 * ((((360 / 60) * 0xffff) / 360) + 1)) / 60) * (v1));
    }

    v2->unk_00.y += (0x4000 * 2);
    v2->unk_00.y %= 0x10000;

    ov8_0224AF58(v2);
}

void EternaGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    UnkStruct_02071BD0 *v1 = PersistedMapFeatures_GetBuffer(v0, DYNAMIC_MAP_FEATURES_ETERNA_GYM);
    UnkStruct_ov8_0224AF00 *v2 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_ov8_0224AF00));

    memset(v2, 0, sizeof(UnkStruct_ov8_0224AF00));
    fieldSystem->unk_04->dynamicMapFeaturesData = v2;

    {
        v2->fieldSystem = fieldSystem;
    }

    {
        int v3;
        UnkStruct_ov8_0224AF58 *v4 = v2->unk_0C;
        const u32 *v5 = Unk_ov8_0224C700;
        const VecFx32 *v6 = Unk_ov8_0224C7A0;
        const VecFx32 v7 = { 0, 0, 0 };

        for (v3 = 0; v3 < 2; v3++, v4++, v5++, v6++) {
            v4->unk_0C = *v5;

            v4->unk_10 = MapPropManager_LoadOne(
                fieldSystem->mapPropManager, fieldSystem->areaDataManager, *v5, v6, &v7, fieldSystem->mapPropAnimMan);

            v4->unk_14 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, *v5);
        }
    }

    {
        int v8[3] = { 2, 2, 0 };

        v1->unk_00 = GetEternaGymFlowerClockState(fieldSystem);

        {
            const UnkStruct_ov8_0224C774 *v9 = &Unk_ov8_0224C774[v1->unk_00];

            v2->unk_00 = (FX32_ONE * (v9->unk_00));
            v2->unk_04 = (FX32_ONE * (v9->unk_02));

            ov8_0224AF84(v2);
        }

        if (v1->unk_00 < 3) {
            ov5_021F4098(fieldSystem, v8[v1->unk_00]);
        }
    }
}

void EternaGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    UnkStruct_ov8_0224AF00 *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;

    Heap_Free(v0);
    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

BOOL EternaGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    BOOL v0;
    int v1, v2, v3;
    PersistedMapFeatures *v4 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    UnkStruct_02071BD0 *v5 = PersistedMapFeatures_GetBuffer(v4, DYNAMIC_MAP_FEATURES_ETERNA_GYM);
    v1 = v5->unk_00;
    v0 = 0;

    *isColliding = 0;

    if (((tileZ >= 7) && (tileZ <= (7 + 13 - 1))) && ((tileX >= 5) && (tileX <= (5 + 13 - 1)))) {
        v2 = tileX - 5;
        v3 = (tileZ - 7) * 13;
        v0 = Unk_ov8_0224CCE8[v1][v3 + v2];
        *isColliding = v0;
    }

    if ((v0 == 0) && ((tileZ >= 19) && (tileZ <= (19 + 1 - 1))) && ((tileX >= 1) && (tileX <= (1 + 21 - 1)))) {
        v2 = tileX - 1;
        v3 = (tileZ - 19) * 21;
        v0 = Unk_ov8_0224CA5C[v1][v3 + v2];
        *isColliding = v0;
    }

    return v0;
}

static void ov8_0224B18C(FieldSystem *fieldSystem, UnkStruct_ov8_0224B28C *param1, int param2, int param3)
{
    int v0, v1, v2, v3;
    const VecFx32 *v4;

    v0 = Player_GetXPos(fieldSystem->playerAvatar);
    v1 = Player_GetZPos(fieldSystem->playerAvatar);

    param1->unk_10 = v0;
    param1->unk_14 = v1;
    param1->unk_08 = param2;
    param1->unk_0C = param3;

    if ((param1->unk_08 - param1->unk_10) < 0) {
        param1->unk_18 = 2;
    } else {
        param1->unk_18 = 3;
    }

    if ((param1->unk_0C - param1->unk_14) < 0) {
        param1->unk_1C = 0;
    } else {
        param1->unk_1C = 1;
    }

    v2 = param1->unk_08 - param1->unk_10;

    if (v2 < 0) {
        v2 = -v2;
    }

    v3 = param1->unk_0C - param1->unk_14;

    if (v3 < 0) {
        v3 = -v3;
    }

    if (v2 < v3) {
        param1->unk_04 = 1;
    }

    param1->unk_20 = MapObjectMan_AddMapObject(fieldSystem->mapObjMan, v0, v1, 0, 0x2000, 0x0, fieldSystem->location->mapId);

    MapObject_RecalculateObjectHeight(param1->unk_20);
    MapObject_SetHidden(param1->unk_20, 1);
    sub_02062D80(param1->unk_20, 0);
    MapObject_SetHeightCalculationDisabled(param1->unk_20, TRUE);

    v4 = MapObject_GetPos(param1->unk_20);

    LandDataManager_TrackTarget(v4, fieldSystem->landDataMan);
    Camera_TrackTarget(v4, fieldSystem->camera);
}

static void ov8_0224B240(UnkStruct_ov8_0224B28C *param0, int param1, int param2)
{
    int v0, v1, v2, v3;
    const VecFx32 *v4;

    param0->unk_10 = param0->unk_08;
    param0->unk_14 = param0->unk_0C;
    param0->unk_08 = param1;
    param0->unk_0C = param2;

    if ((param0->unk_08 - param0->unk_10) < 0) {
        param0->unk_18 = 2;
    } else {
        param0->unk_18 = 3;
    }

    if ((param0->unk_0C - param0->unk_14) < 0) {
        param0->unk_1C = 0;
    } else {
        param0->unk_1C = 1;
    }

    v2 = param0->unk_08 - param0->unk_10;

    if (v2 < 0) {
        v2 = -v2;
    }

    v3 = param0->unk_0C - param0->unk_14;

    if (v3 < 0) {
        v3 = -v3;
    }

    if (v2 < v3) {
        param0->unk_04 = 1;
    }
}

static void ov8_0224B28C(UnkStruct_ov8_0224B28C *param0)
{
    param0->unk_04 ^= 1;
    param0->unk_08 = param0->unk_10;
    param0->unk_0C = param0->unk_14;
    param0->unk_18 = Direction_GetOpposite(param0->unk_18);
    param0->unk_1C = Direction_GetOpposite(param0->unk_1C);
}

static void ov8_0224B2B4(UnkStruct_ov8_0224B28C *param0, int param1, int param2, int param3, int param4, int param5)
{
    param0->unk_04 = param1;
    param0->unk_08 = param2;
    param0->unk_0C = param3;
    param0->unk_18 = param4;
    param0->unk_1C = param5;
}

static void ov8_0224B2C4(FieldSystem *fieldSystem, UnkStruct_ov8_0224B28C *param1)
{
    const VecFx32 *v0 = PlayerAvatar_PosVector(fieldSystem->playerAvatar);

    LandDataManager_TrackTarget(v0, fieldSystem->landDataMan);
    Camera_TrackTarget(v0, fieldSystem->camera);
    MapObject_Delete(param1->unk_20);
}

static BOOL ov8_0224B2E8(UnkStruct_ov8_0224B28C *param0)
{
    MapObject *v0 = param0->unk_20;

    if (LocalMapObj_IsAnimationSet(param0->unk_20) == 1) {
        int v1 = 0x9a;
        int v2 = MapObject_GetX(v0);
        int v3 = MapObject_GetZ(v0);

        if ((v2 == param0->unk_08) && (v3 == param0->unk_0C)) {
            return 1;
        }

        if (param0->unk_04) {
            if (v2 != param0->unk_08) {
                v1 = MovementAction_TurnActionTowardsDir(param0->unk_18, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
            } else if (v3 != param0->unk_0C) {
                v1 = MovementAction_TurnActionTowardsDir(param0->unk_1C, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
            }
        } else {
            if (v3 != param0->unk_0C) {
                v1 = MovementAction_TurnActionTowardsDir(param0->unk_1C, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
            } else if (v2 != param0->unk_08) {
                v1 = MovementAction_TurnActionTowardsDir(param0->unk_18, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
            }
        }

        if (v1 != 0x9a) {
            LocalMapObj_SetAnimationCode(v0, v1);
        }
    }

    return 0;
}

static BOOL ov8_0224B370(UnkStruct_ov8_0224AF00 *param0, const fx32 param1, const fx32 param2)
{
    BOOL v0 = 1;
    fx32 v1 = param0->unk_00;
    fx32 v2 = param0->unk_04;

    if ((v1 != param1) || (v2 != param2)) {
        fx32 v3, v4;

        ov8_0224AF00(param0, (FX32_ONE * 2));

        v3 = param0->unk_00;
        v4 = param0->unk_04;

        if (v3 == param1) {
            if (v2 > v4) {
                fx32 v5 = v4 + (FX32_ONE * 60);
                fx32 v6 = param2 + (FX32_ONE * 60);

                if ((v2 < v6) && (v5 > v6)) {
                    v4 = param2;
                }
            } else if ((v2 < param2) && (v4 > param2)) {
                v4 = param2;
            }
        }

        param0->unk_00 = v3;
        param0->unk_04 = v4;
    }

    if ((param0->unk_00 != param1) || (param0->unk_04 != param2)) {
        v0 = 0;
    }

    return v0;
}

static BOOL ov8_0224B3D4(FieldTask *param0)
{
    BOOL v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov8_0224B67C *v2 = FieldTask_GetEnv(param0);
    UnkStruct_02071BD0 *v3 = v2->unk_14;
    UnkStruct_ov8_0224AF00 *v4 = v2->unk_18;

    switch (v2->unk_00) {
    case 0:
        ov8_0224B18C(
            fieldSystem, &v2->unk_1C, 11, 13);
        v2->unk_00++;
    case 1:
        if (ov8_0224B2E8(&v2->unk_1C) == 1) {
            v2->unk_00++;
        }
        break;
    case 2:
        v2->unk_04++;

        if (v2->unk_04 < 8) {
            break;
        }

        v2->unk_04 = 0;
        Sound_PlayEffect(SEQ_SE_PL_TOKEI21);
        v2->unk_00++;
    case 3:
        if (v3->unk_00 == 4) {
            if ((v4->unk_00 == v2->unk_08) && (v4->unk_04 > v2->unk_0C)) {
                v4->unk_00 = (FX32_ONE * 11);
            }
        }

        v0 = ov8_0224B370(v4, v2->unk_08, v2->unk_0C);

        if (v3->unk_00 == 4) {
            const UnkStruct_ov8_0224C774 *v5 = &Unk_ov8_0224C774[v3->unk_00];

            v4->unk_00 = (FX32_ONE * (v5->unk_00));
        }

        if (v4->unk_00 == v2->unk_08) {
            if ((v4->unk_04 <= v2->unk_0C) || (v3->unk_00 == 4)) {
                v4->unk_08 = 0;
            }
        } else {
            v4->unk_08 = 1;
        }

        ov8_0224AF84(v4);

        if (v0 == 1) {
            Sound_StopEffect(1355, 0);
            Sound_PlayEffect(SEQ_SE_DP_PIRORIRO2);
            v2->unk_00++;
        }
        break;
    case 4:
        v2->unk_04++;

        if (v2->unk_04 < 8) {
            break;
        }

        v2->unk_04 = 0;

        if ((v3->unk_00 == 2) || (v3->unk_00 == 3)) {
            ov8_0224B2B4(
                &v2->unk_1C, 0, 11, 19, 2, 1);
            v2->unk_00 = 7;
        } else {
            ov8_0224B28C(&v2->unk_1C);
            v2->unk_00++;
        }
        break;
    case 5:
        if (ov8_0224B2E8(&v2->unk_1C) == 1) {
            v2->unk_00++;
        }
        break;
    case 6:
        ov8_0224B2C4(fieldSystem, &v2->unk_1C);
        Heap_Free(v2);
        return 1;
    case 7:
        if (ov8_0224B2E8(&v2->unk_1C) == 1) {
            int v6 = 20, v7 = 19, v8 = 3;

            if (v3->unk_00 == 3) {
                v6 = 2;
                v8 = 2;
            }

            ov8_0224B2B4(
                &v2->unk_1C, 1, v6, v7, v8, 1);
            v2->unk_00++;
        } else {
            break;
        }

    case 8:
        if (ov8_0224B2E8(&v2->unk_1C) == 1) {
            v2->unk_00++;
        }
        break;
    case 9:
        v2->unk_04++;

        if (v2->unk_04 >= 4) {
            v2->unk_04 = 0;

            if (v3->unk_00 == 2) {
                ov5_021F416C(fieldSystem, 1);
            } else if (v3->unk_00 == 3) {
                ov5_021F416C(fieldSystem, 0);
            }

            Sound_PlayEffect(SEQ_SE_DP_T_AME);
            v2->unk_00++;
        }
        break;
    case 10:
        v2->unk_04++;

        if (v2->unk_04 >= 60) {
            v2->unk_04 = 0;
            v2->unk_00++;

            Sound_StopEffect(1593, 0);
            MessageLoader_GetString(v2->unk_48, EternaGym_Text_FountainWaterLevelDropped, v2->unk_4C);
            FieldMessage_AddWindow(fieldSystem->bgConfig, v2->unk_44, 3);
            Window_EraseMessageBox(v2->unk_44, 0);
            FieldMessage_DrawWindow(v2->unk_44, SaveData_GetOptions(fieldSystem->saveData));

            v2->unk_40 = FieldMessage_Print(v2->unk_44, v2->unk_4C, SaveData_GetOptions(fieldSystem->saveData), 1);
        }
        break;
    case 11:
        if (FieldMessage_FinishedPrinting(v2->unk_40) != 1) {
            break;
        }

        v2->unk_00++;
    case 12:
        if (gSystem.pressedKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
            int v9 = Player_GetXPos(fieldSystem->playerAvatar);
            int v10 = Player_GetZPos(fieldSystem->playerAvatar);

            ov8_0224B240(&v2->unk_1C, v9, v10);
            Window_EraseMessageBox(v2->unk_44, 0);
            Window_Remove(v2->unk_44);
            v2->unk_04 = 0;
            v2->unk_00 = 5;
            break;
        }
    }

    return 0;
}

BOOL ov8_0224B67C(FieldSystem *fieldSystem, Window *param1, MessageLoader *param2, String *param3)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    UnkStruct_02071BD0 *v1 = PersistedMapFeatures_GetBuffer(v0, DYNAMIC_MAP_FEATURES_ETERNA_GYM);

    if (v1->unk_00 >= 4) {
        return 0;
    }

    v1->unk_00++;
    SetEternaGymFlowerClockState(fieldSystem, v1->unk_00);

    {
        UnkStruct_ov8_0224B67C *v2;
        UnkStruct_ov8_0224AF00 *v3 = fieldSystem->unk_04->dynamicMapFeaturesData;
        const UnkStruct_ov8_0224C774 *v4 = &Unk_ov8_0224C774[v1->unk_00];

        v2 = Heap_Alloc(HEAP_ID_FIELD2, sizeof(UnkStruct_ov8_0224B67C));
        memset(v2, 0, sizeof(UnkStruct_ov8_0224B67C));

        v2->unk_44 = param1;
        v2->unk_48 = param2;
        v2->unk_4C = param3;
        v2->unk_08 = (FX32_ONE * (v4->unk_00));
        v2->unk_0C = (FX32_ONE * (v4->unk_02));
        v2->fieldSystem = fieldSystem;
        v2->unk_14 = v1;
        v2->unk_18 = v3;

        FieldTask_InitCall(fieldSystem->task, ov8_0224B3D4, v2);
    }

    return 1;
}

BOOL EternaGym_IsHourHandJumpTile(FieldSystem *fieldSystem, int tileX, int tileZ, int direction)
{
    PersistedMapFeatures *v0;
    UnkStruct_02071BD0 *v1;
    const UnkStruct_ov8_0224C7F0 *v2;

    v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    v1 = PersistedMapFeatures_GetBuffer(v0, DYNAMIC_MAP_FEATURES_ETERNA_GYM);
    v2 = &Unk_ov8_0224C7F0[v1->unk_00];

    if ((v2->unk_00 == tileX) && (v2->unk_02 == tileZ)) {
        if (((v2->unk_04 == 0) && ((direction == 2) || (direction == 3))) || ((v2->unk_04 == 1) && ((direction == 0) || (direction == 1)))) {
            return 1;
        }
    }

    return 0;
}

static const UnkStruct_ov8_0224C90C Unk_ov8_0224C90C[9] = {
    { 0x3, 0xC },
    { 0x4, 0x18 },
    { 0x8, 0x9 },
    { 0x8, 0x16 },
    { 0xF, 0x1C },
    { 0x10, 0xC },
    { 0x14, 0x13 },
    { 0x15, 0x1A },
    { 0x17, 0xD }
};

static const UnkStruct_ov8_0224C90C Unk_ov8_0224C99C[11] = {
    { 0x3, 0x17 },
    { 0x8, 0xC },
    { 0x8, 0xE },
    { 0x8, 0x10 },
    { 0xC, 0x9 },
    { 0xC, 0xC },
    { 0x13, 0xC },
    { 0x14, 0xD },
    { 0x14, 0x1C },
    { 0x16, 0x9 },
    { 0x17, 0x1E }
};

static __attribute__((aligned(4))) const u8 Unk_ov8_0224E33C[1024] = {
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 4, 0, 0, 4, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 5, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 4, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
};

static const int Unk_ov8_0224C764[4] = {
    0x3,
    0x4,
    0x4,
    0x4
};

static int (*const Unk_ov8_0224C818[11])(UnkStruct_ov8_0224C098 *);

void VeilstoneGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    UnkStruct_02071BF8 *v1 = PersistedMapFeatures_GetBuffer(v0, DYNAMIC_MAP_FEATURES_VEILSTONE_GYM);
    UnkStruct_ov8_0224B8D0 *v2 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_ov8_0224B8D0));

    memset(v2, 0, sizeof(UnkStruct_ov8_0224B8D0));

    fieldSystem->unk_04->dynamicMapFeaturesData = v2;
    v2->fieldSystem = fieldSystem;

    FieldEffectManager_InitRenderer(fieldSystem->fieldEffMan, 31);
    ov5_021F42D8(fieldSystem->fieldEffMan, 11, 9);

    if (v1->unk_00 == 1) {
        ov8_0224B958(v2);
    } else {
        ov8_0224B8D0(v2);
    }

    v1->unk_00 = 1;
}

void VeilstoneGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    UnkStruct_ov8_0224B8D0 *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;

    Heap_Free(v0);
    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

BOOL VeilstoneGym_DynamicMapFeaturesCheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    return FALSE;
}

static MapObject *ov8_0224B7D8(FieldSystem *fieldSystem, int param1, int param2, int param3)
{
    MapObject *v0 = MapObjectMan_AddMapObject(fieldSystem->mapObjMan, param1, param2, 0, 0x2000, 0x0, fieldSystem->location->mapId);

    MapObject_SetLocalID(v0, 0xfd);
    MapObject_SetDataAt(v0, param3, 0);

    return v0;
}

static void ov8_0224B80C(UnkStruct_ov8_0224B80C *param0, MapObject *param1, FieldSystem *fieldSystem)
{
    param0->unk_08 = param1;
    param0->unk_00 = MapObject_GetX(param1);
    param0->unk_04 = MapObject_GetZ(param1);

    if (MapObject_GetDataAt(param1, 0) == 0) {
        param0->unk_0C = ov5_021F4474(fieldSystem, param0->unk_00, param0->unk_04, 0);
    } else {
        param0->unk_0C = ov5_021F4668(fieldSystem, param0->unk_00, param0->unk_04, 0);
    }
}

static UnkStruct_ov8_0224BCA8 *ov8_0224B854(UnkStruct_ov8_0224B8D0 *param0, int param1, int param2)
{
    int v0 = 0;
    UnkStruct_ov8_0224BCA8 *v1 = param0->unk_10C;

    do {
        if ((v1->unk_08.unk_00 == param1) && (v1->unk_08.unk_04 == param2)) {
            return v1;
        }

        v1++;
        v0++;
    } while (v0 < 9);

    return NULL;
}

static UnkStruct_ov8_0224B8A0 *ov8_0224B878(UnkStruct_ov8_0224B8D0 *param0, int param1, int param2)
{
    int v0 = 0;
    UnkStruct_ov8_0224B8A0 *v1 = param0->unk_04;

    do {
        if (v1->unk_00) {
            if ((v1->unk_08.unk_00 == param1) && (v1->unk_08.unk_04 == param2)) {
                return v1;
            }
        }

        v1++;
        v0++;
    } while (v0 < 11);

    return NULL;
}

static void ov8_0224B8A0(UnkStruct_ov8_0224B8A0 *param0)
{
    GF_ASSERT(param0);
    GF_ASSERT(param0->unk_08.unk_0C);
    GF_ASSERT(param0->unk_08.unk_08);

    OverworldAnimManager_Finish(param0->unk_08.unk_0C);
    MapObject_Delete(param0->unk_08.unk_08);

    param0->unk_00 = 0;
}

static void ov8_0224B8D0(UnkStruct_ov8_0224B8D0 *param0)
{
    int v0;
    MapObject *v1;
    const UnkStruct_ov8_0224C90C *v2;
    FieldSystem *fieldSystem = param0->fieldSystem;
    UnkStruct_ov8_0224B8A0 *v4 = param0->unk_04;
    UnkStruct_ov8_0224BCA8 *v5 = param0->unk_10C;

    memset((u8 *)v4, 0, sizeof(UnkStruct_ov8_0224B8A0) * 11);
    memset((u8 *)v5, 0, sizeof(UnkStruct_ov8_0224BCA8) * 9);

    for (v0 = 0, v2 = Unk_ov8_0224C99C; v0 < 11; v0++, v2++, v4++) {
        v1 = ov8_0224B7D8(fieldSystem, v2->unk_00 + 0, v2->unk_04 + -2, 0);
        ov8_0224B80C(&v4->unk_08, v1, fieldSystem);
        v4->unk_00 = 1;
    }

    for (v0 = 0, v2 = Unk_ov8_0224C90C; v0 < 9; v0++, v2++, v5++) {
        v1 = ov8_0224B7D8(fieldSystem, v2->unk_00 + 0, v2->unk_04 + -2, 1);
        ov8_0224B80C(&v5->unk_08, v1, fieldSystem);
        v5->unk_00 = 1;
    }
}

static void ov8_0224B958(UnkStruct_ov8_0224B8D0 *param0)
{
    int v0 = 0, v1 = 0;
    MapObject *v2;
    FieldSystem *fieldSystem = param0->fieldSystem;
    MapObjectManager *mapObjMan = fieldSystem->mapObjMan;
    UnkStruct_ov8_0224B8A0 *v5 = param0->unk_04;
    UnkStruct_ov8_0224BCA8 *v6 = param0->unk_10C;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &v2, &v0, (1 << 0)) == 1) {
        if (MapObject_GetLocalID(v2) == 0xfd) {
            if (MapObject_GetDataAt(v2, 0) == 0) {
                ov8_0224B80C(&v5->unk_08, v2, fieldSystem);
                v5->unk_00 = 1;
                v5++;
            } else {
                ov8_0224B80C(&v6->unk_08, v2, fieldSystem);
                v6->unk_00 = 1;
                v6++;
            }

            v1++;
            GF_ASSERT(v1 <= (11 + 9));
        }
    }
}

static int ov8_0224B9D8(int param0, int param1)
{
    GF_ASSERT(param0 >= 0);
    GF_ASSERT(param0 < 32);
    GF_ASSERT(param1 >= 0);
    GF_ASSERT(param1 < 32);

    {
        int v0 = Unk_ov8_0224E33C[param0 + (param1 * 32)];
        return v0;
    }
}

static u32 ov8_0224BA0C(UnkStruct_ov8_0224B8D0 *param0, int param1, int param2, int param3)
{
    u32 v0 = 0;
    int v1, v2;

    v1 = ov8_0224B9D8(param1, param2);

    switch (v1) {
    case 4:
        v0 |= (1 << 2);
        break;
    case 2:
        if ((param3 == 0) || (param3 == 1)) {
            v0 |= (1 << 0);
        }
        break;
    case 3:
        if ((param3 == 2) || (param3 == 3)) {
            v0 |= (1 << 0);
        }
        break;
    case 5:
        if (param3 == 2) {
            v0 |= (1 << 0);
        }
        break;
    }

    param1 += MapObject_GetDxFromDir(param3);
    param2 += MapObject_GetDzFromDir(param3);

    v2 = ov8_0224B9D8(param1, param2);

    if (v2 == 1) {
        v0 |= (1 << 0);
    }

    if (ov8_0224B878(param0, param1, param2) != NULL) {
        v0 |= (1 << 1);
    }

    return v0;
}

static u32 ov8_0224BAA0(UnkStruct_ov8_0224B8D0 *param0, int param1, int param2, int param3, int *param4)
{
    u32 v0;

    *param4 = 0;
    v0 = ov8_0224BA0C(param0, param1, param2, param3);

    if ((v0 != 0) && (v0 != (1 << 2))) {
        return v0;
    }

    do {
        param1 += MapObject_GetDxFromDir(param3);
        param2 += MapObject_GetDzFromDir(param3);
        (*param4)++;
        v0 = ov8_0224BA0C(param0, param1, param2, param3);
    } while (v0 == 0);

    return v0;
}

static BOOL ov8_0224BAF4(FieldTask *taskMan)
{
    MapObject *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov8_0224C098 *v2 = FieldTask_GetEnv(taskMan);
    UnkStruct_ov8_0224B8D0 *v3 = v2->unk_3C;

    v0 = Player_MapObject(fieldSystem->playerAvatar);

    switch (v2->unk_00) {
    case 0:
        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            LocalMapObj_SetAnimationCode(v0, MovementAction_TurnActionTowardsDir(v2->unk_08, MOVEMENT_ACTION_WALK_ON_SPOT_FASTER_NORTH));
            ov5_021F4698(v2->unk_34->unk_08.unk_0C, v2->unk_08, 0);
            Sound_PlayEffect(SEQ_SE_PL_SUTYA2);
            v2->unk_00++;
        }
        break;
    case 1:
        if ((LocalMapObj_CheckAnimationFinished(v0) == 1) && (ov5_021F4720(v2->unk_34->unk_08.unk_0C) == 1)) {
            sub_020656AC(v0);
            Heap_Free(v2);
            return 1;
        }
    }

    return 0;
}

static BOOL ov8_0224BB78(FieldTask *taskMan)
{
    int v0;
    UnkStruct_ov8_0224C098 *v1 = FieldTask_GetEnv(taskMan);

    do {
        v0 = Unk_ov8_0224C818[v1->unk_00](v1);
    } while (v0 == 1);

    if (v0 == 2) {
        return 1;
    }

    return 0;
}

static int ov8_0224BBA0(UnkStruct_ov8_0224C098 *param0)
{
    u32 v0;
    UnkStruct_ov8_0224B80C *v1 = &param0->unk_34->unk_08;
    int v2 = v1->unk_00;
    int v3 = v1->unk_04;

    ov8_0224BAA0(param0->unk_3C, v2, v3, param0->unk_08, &param0->unk_1C);
    OverworldAnimManager_GetPosition(v1->unk_0C, &param0->unk_20);

    param0->unk_2C = ((FX32_ONE / 2) / 30);
    param0->unk_00 = 1;

    return 0;
}

static int ov8_0224BBD0(UnkStruct_ov8_0224C098 *param0)
{
    MapObject *v0 = Player_MapObject(param0->unk_3C->fieldSystem->playerAvatar);

    if (LocalMapObj_IsAnimationSet(v0) == 0) {
        return 0;
    }

    LocalMapObj_SetAnimationCode(v0, MovementAction_TurnActionTowardsDir(param0->unk_08, MOVEMENT_ACTION_WALK_ON_SPOT_SLOW_NORTH));

    {
        UnkStruct_ov8_0224BCA8 *v1 = param0->unk_34;
        OverworldAnimManager *v2 = v1->unk_08.unk_0C;

        ov5_021F4698(v2, param0->unk_08, 1);

        if (ov8_0224C0C8(param0, &v1->unk_08, param0->unk_08) == 1) {
            param0->unk_18 = 1;
            ov8_0224BFCC(param0->unk_3C->fieldSystem, param0, &v1->unk_08, param0->unk_08);
            ov8_0224C0FC(param0, 0);
        }
    }

    Sound_PlayEffect(SEQ_SE_PL_SUTYA2);

    param0->unk_00 = 2;
    return 1;
}

static int ov8_0224BC48(UnkStruct_ov8_0224C098 *param0)
{
    VecFx32_StepDirection(param0->unk_08, &param0->unk_20, param0->unk_2C);
    OverworldAnimManager_SetPosition(param0->unk_34->unk_08.unk_0C, &param0->unk_20);

    param0->unk_2C += ((FX32_ONE / 2) / 30);
    param0->unk_30 += param0->unk_2C;
    param0->unk_04++;

    if (param0->unk_04 >= 30) {
        fx32 v0 = (FX32_ONE * (43 - 30));

        v0 /= param0->unk_1C * 16 / 2;
        ov5_021F4714(param0->unk_34->unk_08.unk_0C, v0);
        param0->unk_00 = 3;
        Sound_PlayEffect(SEQ_SE_PL_GYM01);
    }

    return 0;
}

static int ov8_0224BCA8(UnkStruct_ov8_0224C098 *param0)
{
    UnkStruct_ov8_0224BCA8 *v0 = param0->unk_34;

    VecFx32_StepDirection(param0->unk_08, &param0->unk_20, param0->unk_2C);
    OverworldAnimManager_SetPosition(v0->unk_08.unk_0C, &param0->unk_20);

    param0->unk_30 += param0->unk_2C;
    param0->unk_04++;

    if (param0->unk_04 < 36) {
        if (param0->unk_2C < FX32_ONE) {
            param0->unk_2C += param0->unk_2C;
        }
    } else if (param0->unk_04 == 36) {
        if (param0->unk_2C <= (FX32_ONE * 2)) {
            param0->unk_2C = FX32_ONE * 2;
        }
    }

    ov8_0224C170(param0, param0->unk_2C);

    if ((((param0->unk_30) >> 4) / FX32_ONE) > param0->unk_14) {
        u32 v1;

        param0->unk_14 = (((param0->unk_30) >> 4) / FX32_ONE);

        v0->unk_08.unk_00 += MapObject_GetDxFromDir(param0->unk_08);
        v0->unk_08.unk_04 += MapObject_GetDzFromDir(param0->unk_08);

        v1 = ov8_0224BA0C(param0->unk_3C, v0->unk_08.unk_00, v0->unk_08.unk_04, param0->unk_08);

        if (v1 == 0) {
            (void)0;
        } else {
            VecFx32_SetPosFromMapCoords(v0->unk_08.unk_00, v0->unk_08.unk_04, &param0->unk_20);
            MapObject_SetX(v0->unk_08.unk_08, v0->unk_08.unk_00);
            MapObject_SetZ(v0->unk_08.unk_08, v0->unk_08.unk_04);
            MapObject_UpdateCoords(v0->unk_08.unk_08);
            ov5_021F4714(v0->unk_08.unk_0C, FX32_ONE);
            Sound_StopEffect(1356, 0);
            Sound_PlayEffect(SEQ_SE_PL_SUTYA2);
            Sound_PlayEffect(SEQ_SE_PL_GYM02);

            if ((v1 & (1 << 1)) == 0) {
                if (param0->unk_18 == 1) {
                    param0->unk_00 = 6;
                } else {
                    param0->unk_00 = 8;
                }
            } else {
                param0->unk_38 = ov8_0224B878(param0->unk_3C, v0->unk_08.unk_00 + MapObject_GetDxFromDir(param0->unk_08), v0->unk_08.unk_04 + MapObject_GetDzFromDir(param0->unk_08));
                GF_ASSERT(param0->unk_38 != NULL);
                param0->unk_04 = 0;
                param0->unk_00 = 4;
            }
        }
    }

    return 0;
}

static int ov8_0224BDD0(UnkStruct_ov8_0224C098 *param0)
{
    ov8_0224C170(param0, param0->unk_2C);
    param0->unk_04++;

    if (param0->unk_04 >= 4) {
        param0->unk_04 = 0;
        param0->unk_00 = 5;
        ov5_021F44A4(param0->unk_38->unk_08.unk_0C);
        Sound_PlayEffect(SEQ_SE_DP_UG_026);
    }

    return 0;
}

static int ov8_0224BE04(UnkStruct_ov8_0224C098 *param0)
{
    ov8_0224C170(param0, param0->unk_2C);

    if (ov5_021F453C(param0->unk_38->unk_08.unk_0C)) {
        ov8_0224B8A0(param0->unk_38);
        param0->unk_04 = 0;

        if (param0->unk_18 == 1) {
            param0->unk_00 = 6;
        } else {
            param0->unk_00 = 8;
        }
    }

    return 0;
}

static int ov8_0224BE38(UnkStruct_ov8_0224C098 *param0)
{
    ov8_0224C170(param0, param0->unk_2C);

    if ((ov8_0224C0C4(param0) == 1) && (ov5_021F4720(param0->unk_34->unk_08.unk_0C) == 1)) {
        ov8_0224C0FC(param0, 1);
        param0->unk_00 = 7;
    }

    return 0;
}

static int ov8_0224BE68(UnkStruct_ov8_0224C098 *param0)
{
    ov8_0224C11C(param0, 0x10);

    if (ov8_0224C0C4(param0) == 1) {
        ov8_0224C098(param0);
        param0->unk_00 = 9;
    }

    return 0;
}

static int ov8_0224BE8C(UnkStruct_ov8_0224C098 *param0)
{
    if (ov5_021F4720(param0->unk_34->unk_08.unk_0C) == 1) {
        param0->unk_00 = 9;
    }

    return 0;
}

static int ov8_0224BEA4(UnkStruct_ov8_0224C098 *param0)
{
    MapObject *v0 = Player_MapObject(param0->unk_3C->fieldSystem->playerAvatar);

    if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
        sub_020656AC(v0);
        param0->unk_00 = 10;
    }

    return 0;
}

static int ov8_0224BECC(UnkStruct_ov8_0224C098 *param0)
{
    Heap_Free(param0);
    return 2;
}

static int (*const Unk_ov8_0224C818[11])(UnkStruct_ov8_0224C098 *) = {
    ov8_0224BBA0,
    ov8_0224BBD0,
    ov8_0224BC48,
    ov8_0224BCA8,
    ov8_0224BDD0,
    ov8_0224BE04,
    ov8_0224BE38,
    ov8_0224BE68,
    ov8_0224BE8C,
    ov8_0224BEA4,
    ov8_0224BECC
};

static UnkStruct_ov8_0224C098 *ov8_0224BED8(UnkStruct_ov8_0224B8D0 *param0, UnkStruct_ov8_0224BCA8 *param1, int param2)
{
    UnkStruct_ov8_0224C098 *v0 = Heap_AllocAtEnd(HEAP_ID_FIELD2, sizeof(UnkStruct_ov8_0224C098));
    GF_ASSERT(v0 != NULL);

    memset(v0, 0, sizeof(UnkStruct_ov8_0224C098));

    v0->unk_08 = param2;
    v0->unk_0C = param1->unk_08.unk_00;
    v0->unk_10 = param1->unk_08.unk_04;
    v0->unk_34 = param1;
    v0->unk_3C = param0;

    return v0;
}

static void ov8_0224BF0C(FieldSystem *fieldSystem, UnkStruct_ov8_0224B8D0 *param1, UnkStruct_ov8_0224BCA8 *param2, int param3)
{
    UnkStruct_ov8_0224C098 *v0 = ov8_0224BED8(param1, param2, param3);
    FieldSystem_CreateTask(fieldSystem, ov8_0224BAF4, v0);
}

static void ov8_0224BF2C(FieldSystem *fieldSystem, UnkStruct_ov8_0224B8D0 *param1, UnkStruct_ov8_0224BCA8 *param2, int param3)
{
    UnkStruct_ov8_0224C098 *v0 = ov8_0224BED8(param1, param2, param3);
    FieldSystem_CreateTask(fieldSystem, ov8_0224BB78, v0);
}

BOOL ov8_0224BF4C(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(v0) != DYNAMIC_MAP_FEATURES_VEILSTONE_GYM) {
        return 0;
    }

    {
        int v1, v2, v3;
        UnkStruct_ov8_0224BCA8 *v4;
        int v5 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);
        UnkStruct_ov8_0224B8D0 *v6 = fieldSystem->unk_04->dynamicMapFeaturesData;

        PlayerAvatar_MoveCoordsInDirection(fieldSystem->playerAvatar, v5, &v1, &v2);
        v4 = ov8_0224B854(v6, v1, v2);

        if (v4 == NULL) {
            return 0;
        }

        ov8_0224BAA0(v6, v1, v2, v5, &v3);

        if (v3 == 0) {
            ov8_0224BF0C(fieldSystem, v6, v4, v5);
        } else {
            ov8_0224BF2C(fieldSystem, v6, v4, v5);
        }
    }

    return 1;
}

static void ov8_0224BFCC(FieldSystem *fieldSystem, UnkStruct_ov8_0224C098 *param1, UnkStruct_ov8_0224B80C *param2, int param3)
{
    int v0, v1;
    const VecFx32 *v2;
    UnkStruct_ov8_0224C0C4 *v3 = &param1->unk_40;
    memset(v3, 0, sizeof(UnkStruct_ov8_0224C0C4));
    v3->fieldSystem = fieldSystem;

    v0 = param2->unk_00;
    v1 = param2->unk_04;

    v3->unk_08 = v0;
    v3->unk_0C = v1;
    v3->unk_20 = param3;

    ov8_0224BAA0(param1->unk_3C, v0, v1, param3, &v3->unk_24);
    GF_ASSERT(v3->unk_24);

    v3->unk_18 = v0 + (MapObject_GetDxFromDir(param3) * v3->unk_24);
    v3->unk_1C = v1 + (MapObject_GetDzFromDir(param3) * v3->unk_24);

    v0 = Player_GetXPos(fieldSystem->playerAvatar);
    v1 = Player_GetZPos(fieldSystem->playerAvatar);

    v3->unk_10 = v0;
    v3->unk_14 = v1;
    v3->unk_30 = MapObjectMan_AddMapObject(fieldSystem->mapObjMan, v0, v1, 0, 0x2000, 0x0, fieldSystem->location->mapId);

    MapObject_RecalculateObjectHeight(v3->unk_30);
    MapObject_SetHidden(v3->unk_30, 1);
    sub_02062D80(v3->unk_30, 0);
    MapObject_SetHeightCalculationDisabled(v3->unk_30, TRUE);

    v2 = MapObject_GetPos(v3->unk_30);

    LandDataManager_TrackTarget(v2, fieldSystem->landDataMan);
    Camera_TrackTarget(v2, fieldSystem->camera);
}

static void ov8_0224C098(UnkStruct_ov8_0224C098 *param0)
{
    UnkStruct_ov8_0224C0C4 *v0 = &param0->unk_40;
    const VecFx32 *v1 = PlayerAvatar_PosVector(v0->fieldSystem->playerAvatar);

    LandDataManager_TrackTarget(v1, v0->fieldSystem->landDataMan);
    Camera_TrackTarget(v1, v0->fieldSystem->camera);
    MapObject_Delete(v0->unk_30);
}

static BOOL ov8_0224C0C4(UnkStruct_ov8_0224C098 *param0)
{
    UnkStruct_ov8_0224C0C4 *v0 = &param0->unk_40;
    return v0->unk_2C;
}

static BOOL ov8_0224C0C8(UnkStruct_ov8_0224C098 *param0, UnkStruct_ov8_0224B80C *param1, int param2)
{
    int v0;
    int v1 = param1->unk_00;
    int v2 = param1->unk_04;

    ov8_0224BAA0(param0->unk_3C, v1, v2, param2, &v0);

    if (v0 > Unk_ov8_0224C764[param2]) {
        return 1;
    }

    return 0;
}

static void ov8_0224C0FC(UnkStruct_ov8_0224C098 *param0, int param1)
{
    UnkStruct_ov8_0224C0C4 *v0 = &param0->unk_40;

    v0->unk_28 = 0;
    v0->unk_00 = 1;
    v0->unk_2C = 0;

    if (param1 == 1) {
        v0->unk_20 = Direction_GetOpposite(v0->unk_20);
    }
}

static void ov8_0224C11C(UnkStruct_ov8_0224C098 *param0, int param1)
{
    UnkStruct_ov8_0224C0C4 *v0 = &param0->unk_40;

    switch (v0->unk_00) {
    case 0:
        break;
    case 1:
        if (LocalMapObj_IsAnimationSet(v0->unk_30) == 1) {
            if (v0->unk_28 >= v0->unk_24) {
                v0->unk_00++;
            } else {
                param1 = MovementAction_TurnActionTowardsDir(v0->unk_20, param1);
                LocalMapObj_SetAnimationCode(v0->unk_30, param1);
                v0->unk_28++;
            }
        }
        break;
    case 2:
        v0->unk_2C = 1;
        v0->unk_00 = 0;
        break;
    }
}

static void ov8_0224C170(UnkStruct_ov8_0224C098 *param0, fx32 param1)
{
    if (param0->unk_18 == 1) {
        int v0 = ((param1) / FX32_ONE);

        if (v0) {
            int v1 = 0x8;

            if (v0 <= 2) {
                v1 = 0xc;
            } else if (v0 > 2) {
                v1 = 0x10;
            }

            ov8_0224C11C(param0, v1);
        }
    }
}

static const UnkStruct_ov8_0224C8D4 Unk_ov8_0224C8D4[2] = {
    { 0x59, 0x0, 0x3, 0x1, 0x3, 0xF, 0x8 },
    { 0x5A, 0x3, 0x5, 0x1, 0x3, 0x1B, 0x14 }
};

static __attribute__((aligned(4))) const u8 Unk_ov8_0224E0A8[120] = {
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
};

static __attribute__((aligned(4))) const u8 Unk_ov8_0224E120[540] = {
    0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1
};

static const u8 *const Unk_ov8_0224C6F8[2] = {
    Unk_ov8_0224E0A8,
    Unk_ov8_0224E120
};

static const UnkStruct_ov8_0224C7D0 Unk_ov8_0224C7D0[] = {
    { 0x0, 0x4, 0x2 },
    { 0x1, 0x8, 0x2 },
    { 0x2, 0xC, 0x2 },
    { 8, 0x0, 0x0 }
};

static const UnkStruct_ov8_0224C7D0 Unk_ov8_0224C844[] = {
    { 0x3, 0x4, 0x2 },
    { 0x4, 0x9, 0x2 },
    { 0x5, 0xE, 0x2 },
    { 0x6, 0x13, 0x2 },
    { 0x7, 0x18, 0x2 },
    { 8, 0x0, 0x0 }
};

static const UnkStruct_ov8_0224C7D0 *const Unk_ov8_0224C708[2] = {
    Unk_ov8_0224C7D0,
    Unk_ov8_0224C844
};

void HearthomeGym_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    UnkStruct_02071C18 *v1 = PersistedMapFeatures_GetBuffer(v0, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM);
    UnkStruct_ov8_0224C444 *v2 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_ov8_0224C444));

    memset(v2, 0, sizeof(UnkStruct_ov8_0224C444));

    v2->fieldSystem = fieldSystem;
    fieldSystem->unk_04->dynamicMapFeaturesData = v2;

    ov8_0224C3B4(v2);
    FieldEffectManager_InitRenderer(fieldSystem->fieldEffMan, 32);
    MapObjectMan_SetEndMovement(fieldSystem->mapObjMan, 0);

    {
        int v3 = 0xd2;
        PlayerAvatar *playerAvatar = fieldSystem->playerAvatar;
        MapObject *v5 = Player_MapObject(playerAvatar);

        if (PlayerAvatar_Gender(fieldSystem->playerAvatar) == 1) {
            v3 = 0xd3;
        }

        sub_02061AD4(v5, v3);
    }

    ov5_021F5AA4(fieldSystem, 1);
    ov8_0224C444(v2);

    {
        int v6 = 0;
        int v7 = fieldSystem->location->mapId;
        const UnkStruct_ov8_0224C8D4 *v8 = Unk_ov8_0224C8D4;

        do {
            if (v8->unk_00 == v7) {
                break;
            }

            v8++;
            v6++;
        } while (v6 < 2);

        if (v1->unk_00 == 0) {
            v1->unk_00 = 1;
            v1->unk_02 = 8;

            if (v6 != 2) {
                const u8 *v9 = Unk_ov8_0224C6F8[v6];
                int v10 = MTRNG_Next() % v8->unk_08;

                v1->unk_02 = v10 + v8->unk_04;

                do {
                    do {
                        v1->unk_04 = MTRNG_Next() % v8->unk_14;
                        v1->unk_06 = MTRNG_Next() % v8->unk_18;
                    } while (v9[(v1->unk_06 * v8->unk_14) + v1->unk_04] == 1);

                    v1->unk_04 += v8->unk_0C;
                    v1->unk_06 += v8->unk_10;
                } while (sub_0206326C(fieldSystem->mapObjMan, v1->unk_04, v1->unk_06, 0) != NULL);

                GF_ASSERT(v1->unk_02 < (v8->unk_04 + v8->unk_08));
                GF_ASSERT(v1->unk_04 < (v8->unk_0C + v8->unk_14));
                GF_ASSERT(v1->unk_06 < (v8->unk_10 + v8->unk_18));
                GF_ASSERT(TerrainCollisionManager_CheckCollision(fieldSystem, v1->unk_04, v1->unk_06) == 0);
            }
        }

        if (v1->unk_02 != 8) {
            int v11;
            const UnkStruct_ov8_0224C7D0 *v12 = Unk_ov8_0224C708[v6];

            while (v12->unk_00 != 8) {
                if (v12->unk_00 != v1->unk_02) {
                    v11 = MapHeaderData_GetIndexOfWarpEventAtPos(fieldSystem, v12->unk_04, v12->unk_06);
                    MapHeaderData_SetWarpEventDestHeaderID(fieldSystem, v11, 88);
                    MapHeaderData_SetWarpEventDestWarpID(fieldSystem, v11, 1);
                }

                v12++;
            }

            ov5_021F4CEC(fieldSystem->fieldEffMan, v1->unk_04, v1->unk_06, v1->unk_02);
        }
    }

    v2->unk_1F4 = SysTask_Start(ov8_0224C3B0, v2, 0);
}

void HearthomeGym_DynamicMapFeaturesFree(FieldSystem *fieldSystem)
{
    UnkStruct_ov8_0224C444 *v0 = fieldSystem->unk_04->dynamicMapFeaturesData;

    SysTask_Done(v0->unk_1F4);
    ov8_0224C4F8(v0);
    Heap_Free(v0);

    fieldSystem->unk_04->dynamicMapFeaturesData = NULL;
}

static void ov8_0224C3B0(SysTask *task, void *param1)
{
    return;
}

static void ov8_0224C3B4(UnkStruct_ov8_0224C444 *param0)
{
    UnkStruct_ov8_0224C3B4 *v0 = &param0->unk_1C4;
    UnkStruct_ov5_021D57D8 *v1 = param0->fieldSystem->unk_48;

    v0->unk_00 = v1;
    v0->unk_04 = 10;
    v0->unk_08 = 1;
    v0->unk_09 = 1;
    v0->unk_0A = 1;
    v0->unk_0B = 1;

    {
        char v2 = 109;
        BOOL v3 = TrainerInfo_HasBadge(SaveData_GetTrainerInfo(param0->fieldSystem->saveData), 4);

        if (v3 == 1) {
            v2 = 91;
        } else if (param0->fieldSystem->location->mapId == MAP_HEADER_HEARTHOME_CITY_GYM_TRAINER_ROOM_2) {
            v2 = 119;
        }

        memset(v0->unk_0C, v2, 32);
    }

    ov5_021D57FC(v1, 0xffffffff, 1, 0, v0->unk_04, 0);
    ov5_021D5834(v1, 0xffffffff, GX_RGB(v0->unk_08, v0->unk_09, v0->unk_0A), v0->unk_0B);
    ov5_021D585C(v1, v0->unk_0C);
}

static void ov8_0224C444(UnkStruct_ov8_0224C444 *param0)
{
    int v0, v1, v2, v3, v4;
    MapObject *v5;
    UnkStruct_ov8_0224C4F8 *v6 = param0->unk_04;
    const MapObjectManager *mapObjMan = param0->fieldSystem->mapObjMan;

    v0 = 0;
    v1 = 0;
    v3 = MapObjectMan_GetTaskBasePriority(mapObjMan) + 2;

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &v5, &v0, (1 << 0))) {
        v4 = MapObject_GetLocalID(v5);
        v6->unk_08 = MapObject_GetDataAt(v5, 0);

        if ((v4 == 0xff) || ((MapObject_GetTrainerType(v5) == 0x1) && v6->unk_08)) {
            v6->unk_00 = 1;
            v6->unk_04 = MapObject_GetFacingDir(v5);
            v6->unk_14 = v5;
            v6->unk_18 = param0;

            if (v4 == 0xff) {
                v6->unk_08 = 2;
            }

            v6->unk_10 = ov5_021F4840(param0->fieldSystem->fieldEffMan, v5, v6->unk_08, 3);
            v6->unk_0C = SysTask_Start(ov8_0224C518, v6, v3);
            GF_ASSERT(v6->unk_0C);

            v1++;
            GF_ASSERT(v1 < 16);
            v6++;
        }
    }
}

static void ov8_0224C4F8(UnkStruct_ov8_0224C444 *param0)
{
    int v0;
    UnkStruct_ov8_0224C4F8 *v1 = param0->unk_04;

    for (v0 = 0; v0 < 16; v0++, v1++) {
        if (v1->unk_00) {
            SysTask_Done(v1->unk_0C);
            v1->unk_00 = 0;
        }
    }
}

static void ov8_0224C518(SysTask *param0, void *param1)
{
    return;
}

BOOL ov8_0224C51C(FieldSystem *fieldSystem)
{
    int v0, v1, v2, v3;
    PersistedMapFeatures *v4;
    PlayerAvatar *playerAvatar;
    MapObjectManager *mapObjMan;
    MapObject *v7;
    MapObject *v8;

    v4 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(v4) != DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) {
        return 0;
    }

    v0 = 0;
    v7 = NULL;
    mapObjMan = fieldSystem->mapObjMan;
    playerAvatar = fieldSystem->playerAvatar;
    v8 = Player_MapObject(playerAvatar);
    v2 = 2;
    v1 = Direction_GetOpposite(MapObject_GetFacingDir(v8));

    while (MapObjectMan_FindObjectWithStatus(mapObjMan, &v7, &v0, (1 << 0))) {
        if ((v7 != v8) && (sub_02067F88(fieldSystem, v7) == 1)) {
            v3 = sub_02067D58(v7, playerAvatar, v1, v2);

            if (v3 != -1) {
                int v9 = MapObject_GetScript(v7);

                ScriptManager_Set(fieldSystem, SCRIPT_ID(SINGLE_BATTLES, 928), v7);
                ScriptManager_SetApproachingTrainer(fieldSystem, v7, v3, v1, v9, Script_GetTrainerID(v9), 0, 0);
                return 1;
            }
        }
    }

    return 0;
}

BOOL ov8_0224C5DC(FieldSystem *fieldSystem, void *param1)
{
    PersistedMapFeatures *v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

    if (PersistedMapFeatures_GetID(v0) != DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) {
        return 0;
    }

    {
        MapObject *v1 = param1;

        MapObject_SetXInitial(v1, MapObject_GetX(v1));
        MapObject_SetZInitial(v1, MapObject_GetZ(v1));
        MapObject_SetMovementRangeX(v1, 2);
        MapObject_SetMovementRangeZ(v1, 2);
        MapObject_SwitchMovementType(v1, MOVEMENT_TYPE_WANDER_AROUND);

        return 1;
    }

    return 0;
}

BOOL ov8_0224C62C(FieldSystem *fieldSystem, int param1, int param2, int *param3)
{
    if ((*param3) != 0) {
        return 0;
    }

    {
        PersistedMapFeatures *v0;

        v0 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));

        if (PersistedMapFeatures_GetID(v0) != DYNAMIC_MAP_FEATURES_HEARTHOME_GYM) {
            return 0;
        }

        {
            UnkStruct_02071C18 *v1;

            v1 = PersistedMapFeatures_GetBuffer(v0, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM);

            if (v1->unk_02 == 8) {
                return 0;
            }

            {
                int v2 = 0;
                int v3 = fieldSystem->location->mapId;
                const UnkStruct_ov8_0224C8D4 *v4 = Unk_ov8_0224C8D4;
                const UnkStruct_ov8_0224C7D0 *v5;

                do {
                    if (v4->unk_00 == v3) {
                        break;
                    }

                    v4++;
                    v2++;
                } while (v2 < 2);

                GF_ASSERT(v2 != 2);

                v5 = Unk_ov8_0224C708[v2];

                while (v5->unk_00 != 8) {
                    if ((v5->unk_04 == param1) && (v5->unk_06 == param2) && (v5->unk_00 == v1->unk_02)) {
                        return 0;
                    }

                    v5++;
                }
            }
        }
    }

    (*param3) = 1;
    return 1;
}
