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
#include "savedata_misc.h"
#include "unk_0207160C.h"

const static DynamicMapFeaturesInitFunc sInitFuncs[DYNAMIC_MAP_FEATURES_COUNT] = {
    NULL,
    ov8_02249DBC,
    ov8_0224C198,
    ov8_0224A8C8,
    ov8_0224B764,
    ov8_0224ABD4,
    ov6_02242AF0,
    sub_0207160C,
    ov8_0224B020,
    ov9_02249960,
    ov5_021F8370
};

const static DynamicMapFeaturesFreeFunc sFreeFuncs[DYNAMIC_MAP_FEATURES_COUNT] = {
    NULL,
    NULL,
    ov8_0224C388,
    ov8_0224AAE8,
    ov8_0224B7C0,
    ov8_0224ACAC,
    NULL,
    NULL,
    ov8_0224B0FC,
    ov9_02249A60,
    ov5_021F83C0
};

const static DynamicMapFeaturesCheckCollisionFunc sCheckCollisionFuncs[DYNAMIC_MAP_FEATURES_COUNT] = {
    NULL,
    ov8_02249A40,
    NULL,
    ov8_0224AAFC,
    ov8_0224B7D4,
    ov8_0224ACC0,
    NULL,
    NULL,
    ov8_0224B110,
    ov9_02249E50,
    ov5_021F83D4
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

BOOL DynamicMapFeatures_CheckCollision(FieldSystem *fieldSystem, const int tileX, const int tileY, const fx32 height, BOOL *isColliding)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    int id = PersistedMapFeatures_GetID(persistedMapFeatures);

    if (id == DYNAMIC_MAP_FEATURES_NONE) {
        return FALSE;
    }

    if (sCheckCollisionFuncs[id] != NULL) {
        BOOL hasCollision = sCheckCollisionFuncs[id](fieldSystem, tileX, tileY, height, isColliding);
        return hasCollision;
    }

    return FALSE;
}

BOOL DynamicMapFeatures_WillPlayerJumpEternaGymClock(FieldSystem *fieldSystem, const int tileX, const int tileY, const fx32 unused3, int direction)
{
    return fieldSystem->location->mapId == MAP_HEADER_ETERNA_CITY_GYM
        && ov8_0224B714(fieldSystem, tileX, tileY, direction);
}
