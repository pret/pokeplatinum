#include "dynamic_map_features.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "generated/map_headers.h"

#include "field/field_system.h"
#include "overlay005/ov5_021F8370.h"
#include "overlay006/ov6_02242AF0.h"
#include "overlay008/ov8_02249960.h"
#include "overlay009/ov9_02249960.h"

#include "field_system.h"
#include "persisted_map_features.h"
#include "platform_lift.h"
#include "savedata_misc.h"

const static DynamicMapFeaturesInitFunc sInitFuncs[DYNAMIC_MAP_FEATURES_COUNT] = {
    NULL,
    PastoriaGym_DynamicMapFeaturesInit,
    HearthomeGym_DynamicMapFeaturesInit,
    CanalaveGym_DynamicMapFeaturesInit,
    VeilstoneGym_DynamicMapFeaturesInit,
    SunyshoreGym_DynamicMapFeaturesInit,
    GreatMarsh_DynamicMapFeaturesInit,
    PlatformLift_DynamicMapFeaturesInit,
    EternaGym_DynamicMapFeaturesInit,
    DistWorld_DynamicMapFeaturesInit,
    Villa_DynamicMapFeaturesInit
};

const static DynamicMapFeaturesFreeFunc sFreeFuncs[DYNAMIC_MAP_FEATURES_COUNT] = {
    NULL,
    NULL,
    HearthomeGym_DynamicMapFeaturesFree,
    CanalaveGym_DynamicMapFeaturesFree,
    VeilstoneGym_DynamicMapFeaturesFree,
    SunyshoreGym_DynamicMapFeaturesFree,
    NULL,
    NULL,
    EternaGym_DynamicMapFeaturesFree,
    DistWorld_DynamicMapFeaturesFree,
    Villa_DynamicMapFeaturesFree
};

const static DynamicMapFeaturesCheckCollisionFunc sCheckCollisionFuncs[DYNAMIC_MAP_FEATURES_COUNT] = {
    NULL,
    PastoriaGym_DynamicMapFeaturesCheckCollision,
    NULL,
    CanalaveGym_DynamicMapFeaturesCheckCollision,
    VeilstoneGym_DynamicMapFeaturesCheckCollision,
    SunyshoreGym_DynamicMapFeaturesCheckCollision,
    NULL,
    NULL,
    EternaGym_DynamicMapFeaturesCheckCollision,
    DistWorld_DynamicMapFeaturesCheckCollision,
    Villa_DynamicMapFeaturesCheckCollision
};

void DynamicMapFeatures_Init(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    int id = PersistedMapFeatures_GetID(persistedMapFeatures);

    if (id == DYNAMIC_MAP_FEATURES_NONE) {
        return;
    }

    sInitFuncs[id](fieldSystem);
}

void DynamicMapFeatures_Free(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    int id = PersistedMapFeatures_GetID(persistedMapFeatures);

    if (id == DYNAMIC_MAP_FEATURES_NONE) {
        return;
    }

    if (sFreeFuncs[id] != NULL) {
        sFreeFuncs[id](fieldSystem);
    }
}

BOOL DynamicMapFeatures_CheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 height, BOOL *isColliding)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    int id = PersistedMapFeatures_GetID(persistedMapFeatures);

    if (id == DYNAMIC_MAP_FEATURES_NONE) {
        return FALSE;
    }

    if (sCheckCollisionFuncs[id] != NULL) {
        BOOL hasCollision = sCheckCollisionFuncs[id](fieldSystem, tileX, tileZ, height, isColliding);
        return hasCollision;
    }

    return FALSE;
}

BOOL DynamicMapFeatures_WillPlayerJumpEternaGymClock(FieldSystem *fieldSystem, const int tileX, const int tileZ, const fx32 unused3, int direction)
{
    return fieldSystem->location->mapId == MAP_HEADER_ETERNA_CITY_GYM
        && EternaGym_IsHourHandJumpTile(fieldSystem, tileX, tileZ, direction);
}
