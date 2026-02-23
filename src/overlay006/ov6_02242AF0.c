#include "overlay006/ov6_02242AF0.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/great_marsh_tram.h"

#include "struct_decls/struct_02061AB4_decl.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay005/map_prop_animation.h"

#include "field_system.h"
#include "field_task.h"
#include "heap.h"
#include "persisted_map_features.h"
#include "player_avatar.h"
#include "savedata_misc.h"
#include "sound_playback.h"
#include "unk_020655F4.h"

#include "res/field/props/models/prop_models.naix"

typedef struct UnkStruct_ov6_02242B58_t UnkStruct_ov6_02242B58;

typedef BOOL (*UnkFuncPtr_ov6_02242B58)(FieldSystem *, UnkStruct_ov6_02242B58 *, const fx32 *, VecFx32 *);

typedef struct UnkStruct_ov6_02242B58_t {
    UnkFuncPtr_ov6_02242B58 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    int unk_08;
    fx32 unk_0C;
    int unk_10;
} UnkStruct_ov6_02242B58;

static BOOL ov6_02242C5C(FieldTask *taskMan);
static BOOL ov6_02242D94(FieldSystem *fieldSystem, UnkStruct_ov6_02242B58 *param1, const fx32 *param2, VecFx32 *param3);
static BOOL ov6_02242E60(FieldSystem *fieldSystem, UnkStruct_ov6_02242B58 *param1, const fx32 *param2, VecFx32 *param3);

static const int Unk_ov6_02249058[7] = {
    0x4,
    0x8,
    0xC,
    0xC,
    0x10,
    0x10,
    0x14
};

static const int Unk_ov6_0224903C[7] = {
    0x5,
    0x9,
    0xD,
    0xD,
    0x11,
    0x11,
    0x15
};

static const u8 Unk_ov6_02249034[] = {
    0x2,
    0x4,
    0x4,
    0x8,
    0x8,
    0x10,
    0x20
};

static const fx32 Unk_ov6_02249074[] = {
    FX32_ONE * 8,
    FX32_ONE * 4,
    FX32_ONE * 4,
    FX32_ONE * 2,
    FX32_ONE * 2,
    FX32_ONE * 1,
    FX32_ONE / 2,
};

void GreatMarshTram_DynamicMapFeaturesInit(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    GreatMarshTramState *tramState = (GreatMarshTramState *)PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_GREAT_MARSH);

    VecFx32 position;
    position.x = (FX32_ONE * 16) * (32 * 2 + 2);
    position.y = FX32_ONE * 16;

    switch (tramState->location) {
    case GREAT_MARSH_TRAM_LOCATION_AREA_1_2:
        position.z = (FX32_ONE * 16) * (32 * 1 + 8);
        break;
    case GREAT_MARSH_TRAM_LOCATION_AREA_3_4:
        position.z = (FX32_ONE * 16) * (32 * 2 + 18);
        break;
    case GREAT_MARSH_TRAM_LOCATION_AREA_5_6:
        position.z = (FX32_ONE * 16) * (32 * 3 + 12);
        break;
    }

    MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, 475, &position, NULL, fieldSystem->mapPropAnimMan);
}

void GreatMarshTram_MoveToLocation(FieldSystem *fieldSystem, u16 destination, u16 movementType)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    GreatMarshTramState *tramState = (GreatMarshTramState *)PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_GREAT_MARSH);
    UnkStruct_ov6_02242B58 *v2 = Heap_AllocAtEnd(HEAP_ID_FIELD1, sizeof(UnkStruct_ov6_02242B58));

    memset(v2, 0, sizeof(UnkStruct_ov6_02242B58));

    v2->unk_05 = 0;

    switch (tramState->location) {
    case GREAT_MARSH_TRAM_LOCATION_AREA_1_2:
        v2->unk_04 = 1;

        if (destination == GREAT_MARSH_TRAM_LOCATION_AREA_3_4) {
            v2->unk_0C = (FX32_ONE * 16) * (32 * 2 + 18);
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_3_4;
            v2->unk_10 = 32 * 2 + 10;
        } else {
            v2->unk_0C = (FX32_ONE * 16) * (32 * 3 + 12);
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_5_6;
            v2->unk_10 = 32 * 3 + 4;
        }
        break;
    case GREAT_MARSH_TRAM_LOCATION_AREA_3_4:
        if (destination == GREAT_MARSH_TRAM_LOCATION_AREA_1_2) {
            v2->unk_04 = 0;
            v2->unk_0C = (FX32_ONE * 16) * (32 * 1 + 8);
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_1_2;
            v2->unk_10 = 32 * 1 + 14;
        } else {
            v2->unk_04 = 1;
            v2->unk_0C = (FX32_ONE * 16) * (32 * 3 + 12);
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_5_6;
            v2->unk_10 = 32 * 3 + 4;
        }
        break;
    case GREAT_MARSH_TRAM_LOCATION_AREA_5_6:
        v2->unk_04 = 0;

        if (destination == GREAT_MARSH_TRAM_LOCATION_AREA_1_2) {
            v2->unk_0C = (FX32_ONE * 16) * (32 * 1 + 8);
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_1_2;
            v2->unk_10 = 32 * 1 + 14;
        } else {
            v2->unk_0C = (FX32_ONE * 16) * (32 * 2 + 18);
            tramState->location = GREAT_MARSH_TRAM_LOCATION_AREA_3_4;
            v2->unk_10 = 32 * 2 + 24;
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    v2->unk_08 = movementType;

    if (movementType == GREAT_MARSH_TRAM_MOVEMENT_CALL) {
        v2->unk_00 = ov6_02242D94;
    } else {
        v2->unk_00 = ov6_02242E60;
    }

    FieldTask_InitCall(fieldSystem->task, ov6_02242C5C, v2);
}

u32 GreatMarshTram_CheckLocation(FieldSystem *fieldSystem, u16 location)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    GreatMarshTramState *tramState = (GreatMarshTramState *)PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_GREAT_MARSH);

    if (tramState->location == location) {
        return GREAT_MARSH_TRAM_AT_LOCATION;
    } else {
        return GREAT_MARSH_TRAM_NOT_AT_LOCATION;
    }
}

static BOOL ov6_02242C5C(FieldTask *taskMan)
{
    FieldSystem *fieldSystem = FieldTask_GetFieldSystem(taskMan);
    UnkStruct_ov6_02242B58 *v1 = FieldTask_GetEnv(taskMan);

    switch (v1->unk_05) {
    case 0:

    {
        NNSG3dResMdl *v2;
        NNSG3dResFileHeader **v3;
        MapProp *v4;
        NNSG3dRenderObj *v5;

        v4 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, great_marsh_train_nsbmd);
        v5 = MapProp_GetRenderObj(v4);
        v3 = AreaDataManager_GetMapPropModelFile(great_marsh_train_nsbmd, fieldSystem->areaDataManager);
        v2 = NNS_G3dGetMdlByIdx(NNS_G3dGetMdlSet(*v3), 0);

        MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 16, great_marsh_train_nsbmd, v5, v2, AreaDataManager_GetMapPropTexture(fieldSystem->areaDataManager), 1, -1, 0);
        MapPropOneShotAnimationManager_PlayAnimation(fieldSystem->mapPropOneShotAnimMan, 16, 0);
    }
        (v1->unk_05)++;
        break;
    case 1:
        if (v1->unk_08 == 4) {
            Sound_PlayEffect(SEQ_SE_DP_TRAIN04);
        }

        (v1->unk_05)++;
    case 2:
        if (!Sound_IsEffectPlaying(1755)) {
            (v1->unk_05)++;
        }
        break;
    case 3:

    {
        MapProp *v6;
        VecFx32 v7;

        v6 = MapPropManager_FindLoadedPropByModelID(fieldSystem->mapPropManager, great_marsh_train_nsbmd);
        v7 = MapProp_GetPosition(v6);

        if (v1->unk_00(fieldSystem, v1, &v1->unk_0C, &v7)) {
            (v1->unk_05)++;
        }

        MapProp_SetPosition(v6, &v7);
    } break;
    case 4:
        MapPropOneShotAnimationManager_UnloadAnimation(fieldSystem->mapPropAnimMan, fieldSystem->mapPropOneShotAnimMan, 16);
        (v1->unk_05)++;
        break;
    case 5:
        Heap_Free(v1);
        return 1;
    }

    return 0;
}

static BOOL ov6_02242D94(FieldSystem *fieldSystem, UnkStruct_ov6_02242B58 *param1, const fx32 *param2, VecFx32 *param3)
{
    if (param1->unk_04 == 0) {
        param3->z -= Unk_ov6_02249074[param1->unk_06];

        if ((param1->unk_06 < 7 - 1) && ((param3->z - ((FX32_ONE * 16) / 2)) / (FX32_ONE * 16) <= param1->unk_10)) {
            if (++(param1->unk_07) >= Unk_ov6_02249034[param1->unk_06]) {
                if (param1->unk_06 == 0) {
                    Sound_PlayEffect(SEQ_SE_DP_TRAIN03);
                }

                param1->unk_06++;
                param1->unk_07 = 0;
            }
        }
    } else {
        param3->z += Unk_ov6_02249074[param1->unk_06];

        if ((param1->unk_06 < 7 - 1) && ((param3->z - ((FX32_ONE * 16) / 2)) / (FX32_ONE * 16) >= param1->unk_10)) {
            if (++(param1->unk_07) >= Unk_ov6_02249034[param1->unk_06]) {
                if (param1->unk_06 == 0) {
                    Sound_PlayEffect(SEQ_SE_DP_TRAIN03);
                }

                param1->unk_06++;
                param1->unk_07 = 0;
            }
        }
    }

    if (param3->z == (*param2)) {
        return 1;
    } else {
        return 0;
    }
}

static BOOL ov6_02242E60(FieldSystem *fieldSystem, UnkStruct_ov6_02242B58 *param1, const fx32 *param2, VecFx32 *param3)
{
    MapObject *v0;
    VecFx32 v1;

    v0 = Player_MapObject(fieldSystem->playerAvatar);
    PlayerAvatar_PosVectorOut(fieldSystem->playerAvatar, &v1);

    param3->z = v1.z + ((FX32_ONE * 16) / 2);

    if (param3->z == (*param2)) {
        return 1;
    } else {
        if (param1->unk_04 == 0) {
            if (LocalMapObj_IsAnimationSet(v0) == 1) {
                LocalMapObj_SetAnimationCode(v0, Unk_ov6_02249058[param1->unk_06]);

                if ((param1->unk_06 < 7 - 1) && (Player_GetZPos(fieldSystem->playerAvatar) > param1->unk_10)) {
                    if (param1->unk_06 == 0) {
                        Sound_PlayEffect(SEQ_SE_DP_TRAIN02);
                    }

                    param1->unk_06++;
                } else if (Player_GetZPos(fieldSystem->playerAvatar) <= param1->unk_10) {
                    if (param1->unk_06 != 0) {
                        if (param1->unk_06 == 7 - 1) {
                            Sound_PlayEffect(SEQ_SE_DP_TRAIN03);
                        }

                        param1->unk_06--;
                    }
                }
            }
        } else {
            if (LocalMapObj_IsAnimationSet(v0) == 1) {
                LocalMapObj_SetAnimationCode(v0, Unk_ov6_0224903C[param1->unk_06]);

                if ((param1->unk_06 < 7 - 1) && (Player_GetZPos(fieldSystem->playerAvatar) < param1->unk_10)) {
                    if (param1->unk_06 == 0) {
                        Sound_PlayEffect(SEQ_SE_DP_TRAIN02);
                    }

                    param1->unk_06++;
                } else if (Player_GetZPos(fieldSystem->playerAvatar) >= param1->unk_10) {
                    if (param1->unk_06 != 0) {
                        if (param1->unk_06 == 7 - 1) {
                            Sound_PlayEffect(SEQ_SE_DP_TRAIN03);
                        }

                        param1->unk_06--;
                    }
                }
            }
        }
    }

    return 0;
}
