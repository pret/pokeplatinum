#include "overlay005/ov5_021D431C.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map_prop.h"
#include "generated/movement_actions.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/fieldmap.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "camera.h"
#include "field_task.h"
#include "heap.h"
#include "map_object.h"
#include "player_avatar.h"
#include "screen_fade.h"
#include "sound_playback.h"
#include "terrain_collision_manager.h"
#include "unk_02056B30.h"
#include "unk_020655F4.h"

typedef struct UnkStruct_ov5_021D432C_t {
    int unk_00;
    TerrainCollisionHitbox unk_04;
    int unk_14;
    int unk_18;
    u8 unk_1C;
    u8 unk_1D;
    u8 unk_1E;
    BOOL unk_20;
    u16 unk_24;
} UnkStruct_ov5_021D432C;

typedef struct UnkStruct_ov5_021D4E00_t {
    int unk_00;
    u8 unk_04;
    BOOL unk_08;
    u16 unk_0C;
} UnkStruct_ov5_021D4E00;

static void ov5_021D4798(Camera *camera, u8 *param1);
static void ov5_021D47DC(Camera *camera, u8 *param1);
static u8 ov5_021D481C(const int param0);

UnkStruct_ov5_021D432C *ov5_021D431C(void)
{
    UnkStruct_ov5_021D432C *v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(UnkStruct_ov5_021D432C));
    v0->unk_00 = 0;

    return v0;
}

void ov5_021D432C(UnkStruct_ov5_021D432C *param0)
{
    Heap_Free(param0);
}

void ov5_021D4334(const int param0, const int param1, UnkStruct_ov5_021D432C *param2)
{
    param2->unk_14 = param0;
    param2->unk_18 = param1;
}

BOOL ov5_021D433C(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1)
{
    MapObject *v0;

    switch (param1->unk_00) {
    case 0: {
        BOOL v1;
        MapProp *v2;
        TerrainCollisionHitbox v3;
        int v4;
        int v5[] = {
            MAP_PROP_MODEL_DOOR01,
            MAP_PROP_MODEL_BROWN_WOODEN_DOOR,
            MAP_PROP_MODEL_GREEN_WOODEN_DOOR,
            MAP_PROP_MODEL_IRON_DOOR,
            MAP_PROP_MODEL_JUBILIFE_CITY_BUILDING_DOOR,
            MAP_PROP_MODEL_POKECENTER_DOOR,
            MAP_PROP_MODEL_POKECENTER_INSIDE_DOOR,
            MAP_PROP_MODEL_GTS_INSIDE_DOOR,
            MAP_PROP_MODEL_HEARTHOME_GYM_INSIDE_DOOR,
            MAP_PROP_MODEL_BLUE_DOOR,
            MAP_PROP_MODEL_IRON_DOOR_2,
            MAP_PROP_MODEL_YELLOW_WOODEN_DOOR,
            MAP_PROP_MODEL_BLUE_WOODEN_DOOR,
            MAP_PROP_MODEL_MANSION_DOOR,
            MAP_PROP_MODEL_VEILSTONE_DPT_STORE_DOOR,
            MAP_PROP_MODEL_GYM_DOOR,
            MAP_PROP_MODEL_CARD_DOOR,
            MAP_PROP_MODEL_POKECENTER_INSIDE_COUNTER_DOOR,
            MAP_PROP_MODEL_HOTEL_GRAND_LAKE_DOOR,
            MAP_PROP_MODEL_ELEVATOR_DOOR
        };

        param1->unk_20 = 0;
        param1->unk_1D = 0;

        TerrainCollisionHitbox_Init(param1->unk_14, param1->unk_18, -1, -1, 3, 1, &v3);

        param1->unk_1C = 1;

        v1 = FieldSystem_FindCollidingLoadedMapPropByModelIDs(fieldSystem, v5, NELEMS(v5), &v3, &v2, &v4);

        if (v1) {
            u8 v6;
            u8 v7;
            NNSG3dResTex *v8;

            v7 = MapPropAnimationManager_GetPropAnimationCount(fieldSystem->mapPropAnimMan, v4);
            param1->unk_1E = v7;
            v8 = AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager);

            MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 1, v4, MapProp_GetRenderObj(v2), MapProp_GetModel(v2), v8, v7, 1, 0);
        } else {
            GF_ASSERT(FALSE);
            return 1;
        }
        (param1->unk_00)++;
    } break;
    case 1: {
        int v9;
        int v10;
        int v11;

        v9 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID(fieldSystem->mapPropOneShotAnimMan, 1);

        if (v9 != 75) {
            Camera_ReleaseTarget(fieldSystem->camera);
            param1->unk_20 = 1;
        }

        if (ov5_021D481C(v9) == 1) {
            v10 = 1544;
        } else if (ov5_021D481C(v9) == 2) {
            v10 = 1492;
        } else {
            v10 = 1541;
        }

        if (param1->unk_1E == 2) {
            v11 = 0;
        } else if (param1->unk_1E == 4) {
            v11 = 0;
        } else {
            GF_ASSERT(0);
            v11 = 0;
        }

        MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(fieldSystem->mapPropOneShotAnimMan, 1, v11, v10);
    }
        (param1->unk_00)++;
        break;
    case 2: {
        BOOL v12;

        v12 = MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, 1);

        if (v12) {
            (param1->unk_00)++;
        }
    } break;
    case 3:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        LocalMapObj_SetAnimationCode(v0, MOVEMENT_ACTION_WALK_NORMAL_NORTH);
        (param1->unk_00)++;
        break;
    case 4:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            MapObject_SetHidden(v0, 1);
            {
                int v13;
                int v14;
                int v15;

                v13 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID(fieldSystem->mapPropOneShotAnimMan, 1);

                if (ov5_021D481C(v13) == 1) {
                    v14 = 0;
                } else if (ov5_021D481C(v13) == 2) {
                    v14 = 0;
                } else {
                    v14 = 1543;
                }

                if (param1->unk_1E == 2) {
                    v15 = 1;
                } else if (param1->unk_1E == 4) {
                    v15 = 1;
                } else {
                    GF_ASSERT(0);
                    v15 = 1;
                }

                MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(fieldSystem->mapPropOneShotAnimMan, 1, v15, v14);
            }
            (param1->unk_00)++;
        }
        break;
    case 5: {
        BOOL v16;

        v16 = MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, 1);

        if (v16) {
            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 1);
            return 1;
        }
    } break;
    }

    if (param1->unk_20) {
        ov5_021D4798(fieldSystem->camera, &param1->unk_1D);
    }

    return 0;
}

BOOL ov5_021D453C(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1)
{
    MapObject *v0;

    switch (param1->unk_00) {
    case 0: {
        BOOL v1;
        MapProp *v2;
        TerrainCollisionHitbox v3;
        int v4;
        int v5[] = {
            MAP_PROP_MODEL_DOOR01,
            MAP_PROP_MODEL_BROWN_WOODEN_DOOR,
            MAP_PROP_MODEL_GREEN_WOODEN_DOOR,
            MAP_PROP_MODEL_IRON_DOOR,
            MAP_PROP_MODEL_JUBILIFE_CITY_BUILDING_DOOR,
            MAP_PROP_MODEL_POKECENTER_DOOR,
            MAP_PROP_MODEL_POKECENTER_INSIDE_DOOR,
            MAP_PROP_MODEL_GTS_INSIDE_DOOR,
            MAP_PROP_MODEL_HEARTHOME_GYM_INSIDE_DOOR,
            MAP_PROP_MODEL_BLUE_DOOR,
            MAP_PROP_MODEL_IRON_DOOR_2,
            MAP_PROP_MODEL_YELLOW_WOODEN_DOOR,
            MAP_PROP_MODEL_BLUE_WOODEN_DOOR,
            MAP_PROP_MODEL_MANSION_DOOR,
            MAP_PROP_MODEL_VEILSTONE_DPT_STORE_DOOR,
            MAP_PROP_MODEL_GYM_DOOR,
            MAP_PROP_MODEL_CARD_DOOR,
            MAP_PROP_MODEL_POKECENTER_INSIDE_COUNTER_DOOR,
            MAP_PROP_MODEL_HOTEL_GRAND_LAKE_DOOR,
            MAP_PROP_MODEL_ELEVATOR_DOOR
        };

        param1->unk_20 = 0;
        param1->unk_1D = 0;
        TerrainCollisionHitbox_Init(param1->unk_14, param1->unk_18, -1, 0, 3, 1, &v3);
        param1->unk_1C = 1;

        v1 = FieldSystem_FindCollidingLoadedMapPropByModelIDs(fieldSystem, v5, NELEMS(v5), &v3, &v2, &v4);

        if (v1) {
            u8 v6;
            u8 v7;
            NNSG3dResTex *v8;

            v7 = MapPropAnimationManager_GetPropAnimationCount(fieldSystem->mapPropAnimMan, v4);
            param1->unk_1E = v7;
            v8 = AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager);

            MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 1, v4, MapProp_GetRenderObj(v2), MapProp_GetModel(v2), v8, v7, 1, 0);
        } else {
            GF_ASSERT(FALSE);

            ov5_021D1744(1);
            (param1->unk_00) = 6;
            return 0;
        }

        param1->unk_24 = Camera_GetFOV(fieldSystem->camera);

        if (v4 != 75) {
            Camera_AdjustFOV(-96, fieldSystem->camera);
        }

        (param1->unk_00)++;
    } break;
    case 1:
        sub_02056B30(fieldSystem->task, 0, 9, 1, 0x0, 6, 1, HEAP_ID_FIELDMAP);
        {
            int v9;
            int v10;
            int v11;

            v9 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID(fieldSystem->mapPropOneShotAnimMan, 1);

            if (v9 != 75) {
                param1->unk_20 = 1;
            }

            if (ov5_021D481C(v9) == 1) {
                v10 = 1544;
            } else if (ov5_021D481C(v9) == 2) {
                v10 = 1492;
            } else {
                v10 = 1541;
            }

            if (param1->unk_1E == 2) {
                v11 = 0;
            } else if (param1->unk_1E == 4) {
                v11 = 2;
            } else {
                GF_ASSERT(0);
                v11 = 0;
            }

            MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(fieldSystem->mapPropOneShotAnimMan, 1, v11, v10);
        }

        (param1->unk_00)++;
        break;
    case 2: {
        BOOL v12;

        v12 = MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, 1);

        if (v12) {
            v0 = Player_MapObject(fieldSystem->playerAvatar);
            MapObject_SetHidden(v0, 0);
            (param1->unk_00)++;
        }
    } break;
    case 3:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        LocalMapObj_SetAnimationCode(v0, MOVEMENT_ACTION_WALK_NORMAL_SOUTH);
        (param1->unk_00)++;
        break;
    case 4:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);

            {
                int v13;
                int v14;
                int v15;

                v13 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID(fieldSystem->mapPropOneShotAnimMan, 1);

                if (ov5_021D481C(v13) == 1) {
                    v14 = 0;
                } else if (ov5_021D481C(v13) == 2) {
                    v14 = 0;
                } else {
                    v14 = 1543;
                }

                if (param1->unk_1E == 2) {
                    v15 = 1;
                } else if (param1->unk_1E == 4) {
                    v15 = 3;
                } else {
                    GF_ASSERT(0);
                    v15 = 1;
                }

                MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(fieldSystem->mapPropOneShotAnimMan, 1, v15, v14);
            }
            (param1->unk_00)++;
        }
        break;
    case 5: {
        BOOL v16;

        v16 = MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, 1);

        if (v16 && IsScreenFadeDone() && (param1->unk_24 == Camera_GetFOV(fieldSystem->camera))) {
            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 1);
            return 1;
        }
    } break;
    case 6:
        if (IsScreenFadeDone()) {
            return 1;
        }
        break;
    }

    if (param1->unk_20) {
        ov5_021D47DC(fieldSystem->camera, &param1->unk_1D);
    }

    return 0;
}

static void ov5_021D4798(Camera *camera, u8 *param1)
{
    u8 v0;
    u16 v1;

    if ((*param1) * 12 > 96) {
        return;
    }

    v1 = (*param1) * 12;

    if (v1 > 96) {
        v0 = v1 - 96;
    } else {
        v0 = 12;
    }

    {
        u16 v2;

        v2 = Camera_GetFOV(camera);

        if ((u16)(v2 - v0) > 0x0) {
            Camera_AdjustFOV(-v0, camera);
        }

        (*param1)++;
    }
}

static void ov5_021D47DC(Camera *camera, u8 *param1)
{
    u8 v0;
    u16 v1;

    if ((*param1) * 16 >= 96) {
        return;
    }

    v1 = (*param1) * 16;

    if (v1 > 96) {
        v0 = v1 - 96;
    } else {
        v0 = 16;
    }

    {
        u16 v2;

        v2 = Camera_GetFOV(camera);

        if ((u16)(v2 + v0) > 0x0) {
            Camera_AdjustFOV(v0, camera);
        }

        (*param1)++;
    }
}

static u8 ov5_021D481C(const int param0)
{
    if (param0 == 442) {
        return 2;
    }

    if ((param0 == 70) || (param0 == 298) || (param0 == 456) || (param0 == 427) || (param0 == 484) || (param0 == 75)) {
        return 1;
    }

    return 0;
}

BOOL ov5_021D4858(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1, const u8 param2)
{
    MapObject *v0;

    switch (param1->unk_00) {
    case 0: {
        BOOL v1;
        MapProp *v2;
        TerrainCollisionHitbox v3;
        int v4;
        int v5[] = {
            MAP_PROP_MODEL_POKECENTER_STAIR_UP_LEFT,
            MAP_PROP_MODEL_POKECENTER_STAIR_DOWN_LEFT,
            MAP_PROP_MODEL_POKECENTER_STAIR_UP_RIGHT,
            MAP_PROP_MODEL_POKECENTER_STAIR_DOWN_RIGHT
        };

        if (param2 == 2) {
            TerrainCollisionHitbox_Init(param1->unk_14, param1->unk_18, -1, 0, 2, 1, &v3);
        } else {
            TerrainCollisionHitbox_Init(param1->unk_14, param1->unk_18, 0, 0, 2, 1, &v3);
        }

        param1->unk_1C = 2;
        v1 = FieldSystem_FindCollidingLoadedMapPropByModelIDs(fieldSystem, v5, NELEMS(v5), &v3, &v2, &v4);

        if (v1) {
            u8 v6;
            NNSG3dResTex *v7;

            v7 = AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager);
            MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 2, v4, MapProp_GetRenderObj(v2), MapProp_GetModel(v2), v7, 1, 1, 1);
        } else {
            GF_ASSERT(FALSE);
            return 1;
        }

        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            LocalMapObj_SetAnimationCode(v0, MOVEMENT_ACTION_PAUSE_ANIMATION);
        } else {
            GF_ASSERT(FALSE);
        }

        (param1->unk_00)++;
    } break;
    case 1:
        ov5_021D1744(1);
        MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(fieldSystem->mapPropOneShotAnimMan, 2, 0, 1557);

        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            int v8;

            if (param2 == 3) {
                v8 = 0xb;
            } else {
                v8 = 0xa;
            }

            LocalMapObj_SetAnimationCode(v0, v8);
        } else {
            GF_ASSERT(FALSE);
        }

        (param1->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            LocalMapObj_SetAnimationCode(v0, MOVEMENT_ACTION_RESUME_ANIMATION);
            (param1->unk_00)++;
        }
        break;
    case 3:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            int v9;

            if (param2 == 3) {
                v9 = 0xb;
            } else {
                v9 = 0xa;
            }

            LocalMapObj_SetAnimationCode(v0, v9);
            (param1->unk_00)++;
        }
        break;
    case 4:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (param1->unk_00)++;
        }
        break;
    case 5: {
        BOOL v10;

        v10 = MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, 2);

        if (v10 && IsScreenFadeDone()) {
            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 2);
            Sound_StopEffect(1557, 0);
            return 1;
        }
    } break;
    }

    return 0;
}

BOOL ov5_021D4A24(FieldSystem *fieldSystem, UnkStruct_ov5_021D432C *param1, const u8 param2)
{
    MapObject *v0;

    switch (param1->unk_00) {
    case 0: {
        BOOL v1;
        MapProp *v2;
        TerrainCollisionHitbox v3;
        int v4;
        int v5[] = {
            MAP_PROP_MODEL_POKECENTER_STAIR_UP_LEFT,
            MAP_PROP_MODEL_POKECENTER_STAIR_DOWN_LEFT,
            MAP_PROP_MODEL_POKECENTER_STAIR_UP_RIGHT,
            MAP_PROP_MODEL_POKECENTER_STAIR_DOWN_RIGHT
        };

        if (param2 == 2) {
            TerrainCollisionHitbox_Init(param1->unk_14, param1->unk_18, -1, 0, 2, 1, &v3);
        } else {
            TerrainCollisionHitbox_Init(param1->unk_14, param1->unk_18, 0, 0, 2, 1, &v3);
        }

        param1->unk_1C = 2;
        v1 = FieldSystem_FindCollidingLoadedMapPropByModelIDs(fieldSystem, v5, NELEMS(v5), &v3, &v2, &v4);

        if (v1) {
            u8 v6;
            NNSG3dResTex *v7;

            v7 = AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager);
            MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 2, v4, MapProp_GetRenderObj(v2), MapProp_GetModel(v2), v7, 1, 1, 0);
        } else {
            GF_ASSERT(FALSE);
            return 1;
        }

        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            LocalMapObj_SetAnimationCode(v0, MOVEMENT_ACTION_PAUSE_ANIMATION);
        } else {
            GF_ASSERT(FALSE);
        }

        (param1->unk_00)++;
    } break;
    case 1:
        MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(fieldSystem->mapPropOneShotAnimMan, 2, 0, 1557);
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            int v8;

            if (param2 == 2) {
                v8 = 0xa;
            } else {
                v8 = 0xb;
            }

            LocalMapObj_SetAnimationCode(v0, v8);
        } else {
            GF_ASSERT(FALSE);
        }

        (param1->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_IsAnimationSet(v0) == 1) {
            LocalMapObj_SetAnimationCode(v0, MOVEMENT_ACTION_RESUME_ANIMATION);

            ov5_021D1744(0);
            (param1->unk_00)++;
        }
        break;
    case 3:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (param1->unk_00)++;
        }
        break;
    case 4: {
        BOOL v9;

        v9 = MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, 2);

        if (v9 && IsScreenFadeDone()) {
            MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 2);

            Sound_StopEffect(1557, 0);
            return 1;
        }
    } break;
    }

    return 0;
}

static BOOL ov5_021D4BC8(FieldTask *param0)
{
    BOOL v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    u8 *v2 = FieldTask_GetEnv(param0);

    v0 = MapPropOneShotAnimationManager_IsAnimationLoopFinished(fieldSystem->mapPropOneShotAnimMan, *v2);

    if (v0) {
        Heap_Free(v2);
        return 1;
    }

    return 0;
}

void ov5_021D4BF4(FieldSystem *fieldSystem, const int param1, const int param2, const u8 param3)
{
    BOOL v0;
    MapProp *v1;
    TerrainCollisionHitbox v2;
    int v3;
    int v4[] = {
        MAP_PROP_MODEL_DOOR01,
        MAP_PROP_MODEL_BROWN_WOODEN_DOOR,
        MAP_PROP_MODEL_GREEN_WOODEN_DOOR,
        MAP_PROP_MODEL_IRON_DOOR,
        MAP_PROP_MODEL_JUBILIFE_CITY_BUILDING_DOOR,
        MAP_PROP_MODEL_POKECENTER_DOOR,
        MAP_PROP_MODEL_POKECENTER_INSIDE_DOOR,
        MAP_PROP_MODEL_GTS_INSIDE_DOOR,
        MAP_PROP_MODEL_HEARTHOME_GYM_INSIDE_DOOR,
        MAP_PROP_MODEL_BLUE_DOOR,
        MAP_PROP_MODEL_IRON_DOOR_2,
        MAP_PROP_MODEL_YELLOW_WOODEN_DOOR,
        MAP_PROP_MODEL_BLUE_WOODEN_DOOR,
        MAP_PROP_MODEL_MANSION_DOOR,
        MAP_PROP_MODEL_VEILSTONE_DPT_STORE_DOOR,
        MAP_PROP_MODEL_GYM_DOOR,
        MAP_PROP_MODEL_CARD_DOOR,
        MAP_PROP_MODEL_POKECENTER_INSIDE_COUNTER_DOOR,
        MAP_PROP_MODEL_HOTEL_GRAND_LAKE_DOOR,
        MAP_PROP_MODEL_ELEVATOR_DOOR
    };

    TerrainCollisionHitbox_Init(param1, param2, -1, 0, 3, 1, &v2);
    v0 = FieldSystem_FindCollidingLoadedMapPropByModelIDs(fieldSystem, v4, NELEMS(v4), &v2, &v1, &v3);

    if (v0) {
        u8 v5;
        u8 v6;
        NNSG3dResTex *v7;

        v6 = MapPropAnimationManager_GetPropAnimationCount(fieldSystem->mapPropAnimMan, v3);
        v7 = AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager);

        MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, param3, v3, MapProp_GetRenderObj(v1), MapProp_GetModel(v1), v7, v6, 1, 0);
    } else {
        GF_ASSERT(FALSE);
    }
}

void ov5_021D4C88(FieldSystem *fieldSystem, const u8 param1)
{
    int v0;
    int v1;
    int v2;
    u8 v3;

    v0 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID(fieldSystem->mapPropOneShotAnimMan, param1);
    v3 = MapPropAnimationManager_GetPropAnimationCount(fieldSystem->mapPropAnimMan, v0);

    if (ov5_021D481C(v0) == 1) {
        v1 = 1544;
    } else if (ov5_021D481C(v0) == 2) {
        v1 = 1492;
    } else {
        v1 = 1541;
    }

    if (v3 == 2) {
        v2 = 0;
    } else if (v3 == 4) {
        v2 = 0;
    } else {
        GF_ASSERT(0);
        v2 = 0;
    }

    MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(fieldSystem->mapPropOneShotAnimMan, param1, v2, v1);
}

void ov5_021D4CEC(FieldSystem *fieldSystem, const u8 param1)
{
    int v0;
    int v1;
    int v2;
    u8 v3;

    v0 = MapPropOneShotAnimationManager_GetAnimationMapPropModelID(fieldSystem->mapPropOneShotAnimMan, param1);
    v3 = MapPropAnimationManager_GetPropAnimationCount(fieldSystem->mapPropAnimMan, v0);

    if (ov5_021D481C(v0) == 1) {
        v1 = 0;
    } else if (ov5_021D481C(v0) == 2) {
        v1 = 0;
    } else {
        v1 = 1543;
    }

    if (v3 == 2) {
        v2 = 1;
    } else if (v3 == 4) {
        v2 = 1;
    } else {
        GF_ASSERT(0);
        v2 = 1;
    }

    MapPropOneShotAnimationManager_PlayAnimationWithSoundEffect(fieldSystem->mapPropOneShotAnimMan, param1, v2, v1);
}

void ov5_021D4D48(FieldSystem *fieldSystem, const u8 param1)
{
    u8 *v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(u8));

    *v0 = param1;
    FieldTask_InitCall(fieldSystem->task, ov5_021D4BC8, v0);
}

void ov5_021D4D68(FieldSystem *fieldSystem, const u8 param1)
{
    MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, param1);
}

void ov5_021D4D78(const int param0, const int param1, const int param2, FieldSystem *fieldSystem)
{
    BOOL v0;
    MapProp *v1;
    TerrainCollisionHitbox v2;
    int v3;
    int v4[] = {
        MAP_PROP_MODEL_BIKE_MUDDY_SLOPE,
        MAP_PROP_MODEL_BIKE_DUNGEON_MUDDY_SLOPE
    };

    TerrainCollisionHitbox_Init(param0, param1, 0, -1, 1, 3, &v2);

    v0 = FieldSystem_FindCollidingLoadedMapPropByModelIDs(fieldSystem, v4, NELEMS(v4), &v2, &v1, &v3);
    GF_ASSERT(v0);

    {
        NNSG3dRenderObj *v5;

        v5 = MapProp_GetRenderObj(v1);
        v0 = MapPropAnimationManager_AddAnimationToRenderObj(v3, param2, 1, v5, fieldSystem->mapPropAnimMan);
        GF_ASSERT(v0);
    }
    {
        MapPropAnimation *v6;

        v6 = MapPropAnimationManager_GetAnimation(v3, param2, fieldSystem->mapPropAnimMan);

        MapPropAnimation_GoToFirstFrame(v6);
        MapPropAnimation_SetAnimationPaused(v6, 0);
        MapPropAnimation_StartLoop(v6);
    }
}

UnkStruct_ov5_021D4E00 *ov5_021D4E00(void)
{
    UnkStruct_ov5_021D4E00 *v0 = Heap_AllocFromHeapAtEnd(HEAP_ID_FIELD, sizeof(UnkStruct_ov5_021D4E00));
    v0->unk_00 = 0;

    return v0;
}

BOOL ov5_021D4E10(FieldTask *param0)
{
    MapObject *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v2 = FieldTask_GetEnv(param0);

    switch (v2->unk_00) {
    case 0:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (PlayerAvatar_GetDir(fieldSystem->playerAvatar) == 1) {
            MapObject_SetHidden(v0, 1);
            (v2->unk_00) = 1;
        } else {
            MapObject_SetHidden(v0, 0);
            (v2->unk_00) = 3;
        }

        v2->unk_08 = 0;
        v2->unk_04 = 0;

        {
            v2->unk_0C = Camera_GetFOV(fieldSystem->camera);
            Camera_AdjustFOV(-96, fieldSystem->camera);
        }

        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_1, FADE_TYPE_UNK_1, FADE_TO_WHITE, 6, 1, HEAP_ID_FIELDMAP);
        v2->unk_08 = 1;
        break;
    case 1:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        MapObject_SetHidden(v0, 0);
        LocalMapObj_SetAnimationCode(v0, MOVEMENT_ACTION_WALK_NORMAL_SOUTH);
        (v2->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (v2->unk_00)++;
        }
        break;
    case 3:
        if (IsScreenFadeDone() && (v2->unk_0C == Camera_GetFOV(fieldSystem->camera))) {
            Heap_Free(v2);
            return 1;
        }
        break;
    }

    if (v2->unk_08) {
        ov5_021D47DC(fieldSystem->camera, &v2->unk_04);
    }

    return 0;
}

BOOL ov5_021D4F14(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case 0: {
        MapObject *v2;

        v2 = Player_MapObject(fieldSystem->playerAvatar);

        MapObject_SetHidden(v2, 1);

        v1->unk_08 = 0;
        v1->unk_04 = 0;

        Sound_PlayEffect(SEQ_SE_DP_KAIDAN2);
        StartScreenFade(FADE_BOTH_SCREENS, FADE_TYPE_UNK_0, FADE_TYPE_UNK_0, FADE_TO_WHITE, 6, 1, HEAP_ID_FIELDMAP);

        v1->unk_08 = 1;
        (v1->unk_00)++;
    } break;
    case 1:
        if (IsScreenFadeDone()) {
            Heap_Free(v1);
            return 1;
        }
        break;
    }

    if (v1->unk_08) {
        ov5_021D4798(fieldSystem->camera, &v1->unk_04);
    }

    return 0;
}

BOOL ov5_021D4FA0(FieldTask *param0)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v1 = FieldTask_GetEnv(param0);

    switch (v1->unk_00) {
    case 0: {
        v1->unk_08 = 0;
        v1->unk_04 = 0;

        Sound_PlayEffect(SEQ_SE_DP_KAIDAN2);
        sub_02056B30(param0, 0, 16, 0, 0x0, 6, 1, HEAP_ID_FIELDMAP);

        v1->unk_08 = 1;
        (v1->unk_00)++;
    } break;
    case 1:
        if (IsScreenFadeDone()) {
            Heap_Free(v1);
            return 1;
        }
        break;
    }

    if (v1->unk_08) {
        ov5_021D4798(fieldSystem->camera, &v1->unk_04);
    }

    return 0;
}

BOOL ov5_021D5020(FieldTask *param0)
{
    MapObject *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v2 = FieldTask_GetEnv(param0);

    switch (v2->unk_00) {
    case 0: {
        u8 v3;
        u8 v4;

        v0 = Player_MapObject(fieldSystem->playerAvatar);
        v3 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        if (v3 == 1) {
            MapObject_SetHidden(v0, 1);
            (v2->unk_00) = 1;
        } else {
            MapObject_SetHidden(v0, 0);
            (v2->unk_00) = 3;
        }

        v2->unk_08 = 0;
        v2->unk_04 = 0;

        {
            v2->unk_0C = Camera_GetFOV(fieldSystem->camera);
            Camera_AdjustFOV(-96, fieldSystem->camera);
        }

        switch (v3) {
        case 0:
            v4 = 3;
            break;
        case 1:
            v4 = 5;
            break;
        case 2:
            v4 = 7;
            break;
        case 3:
            v4 = 39;
            break;
        default:
            GF_ASSERT(0);
        }

        sub_02056B30(param0, 0, v4, 1, 0x0, 6, 1, HEAP_ID_FIELDMAP);
        v2->unk_08 = 1;
    } break;
    case 1:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        MapObject_SetHidden(v0, 0);
        LocalMapObj_SetAnimationCode(v0, MOVEMENT_ACTION_WALK_NORMAL_SOUTH);
        (v2->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (v2->unk_00)++;
        }
        break;
    case 3:
        if (IsScreenFadeDone() && (v2->unk_0C == Camera_GetFOV(fieldSystem->camera))) {
            Heap_Free(v2);
            return 1;
        }
        break;
    }

    if (v2->unk_08) {
        ov5_021D47DC(fieldSystem->camera, &v2->unk_04);
    }

    return 0;
}

BOOL ov5_021D5150(FieldTask *param0)
{
    MapObject *v0;
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(param0);
    UnkStruct_ov5_021D4E00 *v2 = FieldTask_GetEnv(param0);

    switch (v2->unk_00) {
    case 0: {
        u8 v3;
        u8 v4;

        v0 = Player_MapObject(fieldSystem->playerAvatar);
        v3 = PlayerAvatar_GetDir(fieldSystem->playerAvatar);

        if (v3 == 1) {
            MapObject_SetHidden(v0, 1);
            (v2->unk_00) = 1;
        } else {
            MapObject_SetHidden(v0, 0);
            (v2->unk_00) = 3;
        }

        sub_02056B30(param0, 0, 1, 1, 0x0, 6, 1, HEAP_ID_FIELDMAP);
    } break;
    case 1:
        v0 = Player_MapObject(fieldSystem->playerAvatar);
        MapObject_SetHidden(v0, 0);
        LocalMapObj_SetAnimationCode(v0, MOVEMENT_ACTION_WALK_NORMAL_SOUTH);
        (v2->unk_00)++;
        break;
    case 2:
        v0 = Player_MapObject(fieldSystem->playerAvatar);

        if (LocalMapObj_CheckAnimationFinished(v0) == 1) {
            sub_020656AC(v0);
            (v2->unk_00)++;
        }
        break;
    case 3:
        if (IsScreenFadeDone()) {
            Heap_Free(v2);
            return 1;
        }
        break;
    }

    return 0;
}
