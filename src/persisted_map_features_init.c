#include "persisted_map_features_init.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"
#include "constants/great_marsh_tram.h"

#include "struct_defs/struct_02071BF8.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay005/villa_furniture.h"
#include "overlay006/great_marsh_tram.h"
#include "overlay008/ov8_02249960.h"
#include "overlay009/ov9_02249960.h"

#include "field_system.h"
#include "persisted_map_features.h"
#include "savedata_misc.h"

static void SetCanalaveGymPlatformInitialState(const u8 index, const u8 startInPositionB, int *platformStates);

static const u8 sCanalaveGymPlatformsStartInPositionB[CANALAVE_GYM_NUM_PLATFORMS] = {
    FALSE,
    FALSE,
    FALSE,
    FALSE,
    FALSE,
    FALSE,
    TRUE,
    TRUE,
    TRUE,
    FALSE,
    TRUE,
    TRUE,
    FALSE,
    FALSE,
    FALSE,
    FALSE,
    TRUE,
    FALSE,
    TRUE,
    TRUE,
    FALSE,
    TRUE,
    FALSE,
    TRUE
};

void PersistedMapFeatures_InitForPastoriaGym(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_PASTORIA_GYM);

    PastoriaGymPersistedFeature *feature = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_PASTORIA_GYM);
    feature->pressedButton = PASTORIA_GREEN_BUTTON_PRESSED;
}

void PersistedMapFeatures_InitForCanalaveGym(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_CANALAVE_GYM);

    CanalaveGymPersistedFeature *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_CANALAVE_GYM);

    for (int i = 0; i < CANALAVE_GYM_NUM_PLATFORMS; i++) {
        SetCanalaveGymPlatformInitialState(i, sCanalaveGymPlatformsStartInPositionB[i], &data->platformStates);
    }
}

void PersistedMapFeatures_InitForSunyshoreGym(FieldSystem *fieldSystem, const u8 roomID)
{
    GF_ASSERT(roomID < SUNYSHORE_GYM_NUM_ROOMS);

    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_SUNYSHORE_GYM);

    SunyshoreGymPersistedFeatures *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_SUNYSHORE_GYM);
    data->roomID = roomID;

    u16 entranceZ;

    switch (data->roomID) {
    case 0:
        data->rotationState = 2;
        entranceZ = 14;
        break;
    case 1:
        data->rotationState = 1;
        entranceZ = 21;
        break;
    case 2:
        data->rotationState = 0;
        entranceZ = 25;
        break;
    default:
        GF_ASSERT(FALSE);
    }

    if (fieldSystem->location->z == entranceZ) {
        data->rotationState = 0;
    }
}

void PersistedMapFeatures_InitForEternaGym(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_ETERNA_GYM);

    EternaGymClockPersistedFeature *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_ETERNA_GYM);
    memset(data, 0, sizeof(EternaGymClockPersistedFeature));
}

void PersistedMapFeatures_InitForVeilstoneGym(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_VEILSTONE_GYM);

    UnkStruct_02071BF8 *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_VEILSTONE_GYM);
    data->unk_00 = 0;
}

void PersistedMapFeatures_InitForHearthomeGym(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM);

    HearthomeGymPersistedFeatures *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM);
}

void PersistedMapFeatures_InitForVilla(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_VILLA);

    VillaPersistedData *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_VILLA);
    memset(data, 0, sizeof(VillaPersistedData));
}

void PersistedMapFeatures_InitForDistortionWorld(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD);

    DistWorldPersistedData *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD);
    memset(data, 0, sizeof(DistWorldPersistedData));
}

static void SetCanalaveGymPlatformInitialState(const u8 index, const u8 startInPositionB, int *platformStates)
{
    GF_ASSERT(startInPositionB <= 1);

    int allUpperFlags = *platformStates & (0xFFFFFFFF << (index + 1));
    int allLowerFlags = *platformStates & (0xFFFFFFFF >> (32 - index));
    int indexedPlatformFlag = startInPositionB << index;

    *platformStates = allUpperFlags | indexedPlatformFlag | allLowerFlags;
}

BOOL PersistedMapFeatures_IsCurrentDynamicMap(FieldSystem *fieldSystem, int dynamicMapFeaturesID)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    return dynamicMapFeaturesID == PersistedMapFeatures_GetID(persistedMapFeatures);
}

void PersistedMapFeatures_InitForGreatMarsh(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    int dynamicMapFeaturesID = PersistedMapFeatures_GetID(persistedMapFeatures);

    if (dynamicMapFeaturesID != DYNAMIC_MAP_FEATURES_GREAT_MARSH) {
        PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_GREAT_MARSH);
        GreatMarshTramState *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_GREAT_MARSH);
        data->location = GREAT_MARSH_TRAM_LOCATION_AREA_5_6;
    }
}
