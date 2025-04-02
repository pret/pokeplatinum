#include "persisted_map_features_init.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"

#include "struct_defs/struct_02071B10.h"
#include "struct_defs/struct_02071B30.h"
#include "struct_defs/struct_02071B6C.h"
#include "struct_defs/struct_02071BD0.h"
#include "struct_defs/struct_02071BF8.h"
#include "struct_defs/struct_02071C18.h"
#include "struct_defs/struct_02071C34.h"

#include "field/field_system.h"
#include "field/field_system_sub2_t.h"
#include "overlay006/struct_ov6_02242AF0.h"
#include "overlay009/ov9_02249960.h"

#include "field_system.h"
#include "persisted_map_features.h"
#include "savedata_misc.h"

static void sub_02071C80(const u8 param0, const u8 param1, int *param2);

static const u8 Unk_020F04CC[24] = {
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x0,
    0x1,
    0x1,
    0x1,
    0x0,
    0x1,
    0x1,
    0x0,
    0x0,
    0x0,
    0x0,
    0x1,
    0x0,
    0x1,
    0x1,
    0x0,
    0x1,
    0x0,
    0x1
};

void PersistedMapFeatures_InitForPastoriaGym(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_PASTORIA_GYM);

    UnkStruct_02071B10 *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_PASTORIA_GYM);
    data->unk_00 = 1;
}

void PersistedMapFeatures_InitForCanalaveGym(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_CANALAVE_GYM);

    UnkStruct_02071B30 *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_CANALAVE_GYM);

    for (int i = 0; i < 24; i++) {
        sub_02071C80(i, Unk_020F04CC[i], &data->unk_00);
    }
}

void PersistedMapFeatures_InitForSunyshoreGym(FieldSystem *fieldSystem, const u8 floorID)
{
    GF_ASSERT(floorID < 3);

    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_SUNYSHORE_GYM);

    UnkStruct_02071B6C *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_SUNYSHORE_GYM);
    data->unk_04 = floorID;

    u16 v2;

    switch (data->unk_04) {
    case 0:
        data->unk_00 = 2;
        v2 = 14;
        break;
    case 1:
        data->unk_00 = 1;
        v2 = 21;
        break;
    case 2:
        data->unk_00 = 0;
        v2 = 25;
        break;
    default:
        GF_ASSERT(0);
    }

    if (fieldSystem->location->z == v2) {
        data->unk_00 = 0;
    }
}

void PersistedMapFeatures_InitForEternaGym(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_ETERNA_GYM);

    UnkStruct_02071BD0 *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_ETERNA_GYM);
    memset(data, 0, sizeof(UnkStruct_02071BD0));
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

    UnkStruct_02071C18 *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_HEARTHOME_GYM);
}

void PersistedMapFeatures_InitForVilla(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_VILLA);

    UnkStruct_02071C34 *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_VILLA);
    memset(data, 0, sizeof(UnkStruct_02071C34));
}

void PersistedMapFeatures_InitForDistortionWorld(FieldSystem *fieldSystem)
{
    PersistedMapFeatures *persistedMapFeatures = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    PersistedMapFeatures_InitWithID(persistedMapFeatures, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD);

    DistWorldPersistedData *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_DISTORTION_WORLD);
    memset(data, 0, sizeof(DistWorldPersistedData));
}

static void sub_02071C80(const u8 param0, const u8 param1, int *param2)
{
    GF_ASSERT(param1 <= 1);

    int v0 = (*param2) & (0xffffffff << (param0 + 1));
    int v2 = (*param2) & (0xffffffff >> (32 - param0));
    int v1 = param1 << param0;

    (*param2) = (v0 | v1 | v2);
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
        UnkStruct_ov6_02242AF0 *data = PersistedMapFeatures_GetBuffer(persistedMapFeatures, DYNAMIC_MAP_FEATURES_GREAT_MARSH);
        data->unk_00 = 2;
    }
}
