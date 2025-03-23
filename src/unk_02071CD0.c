#include <nitro.h>
#include <string.h>

#include "constants/field/dynamic_map_features.h"

#include "field/field_system.h"
#include "overlay006/struct_ov6_02242AF0.h"

#include "field_system.h"
#include "persisted_map_features.h"
#include "savedata_misc.h"

void sub_02071CD0(FieldSystem *fieldSystem);

void sub_02071CD0(FieldSystem *fieldSystem)
{
    int v0;
    PersistedMapFeatures *v1;
    UnkStruct_ov6_02242AF0 *v2;

    v1 = MiscSaveBlock_GetPersistedMapFeatures(FieldSystem_GetSaveData(fieldSystem));
    v0 = PersistedMapFeatures_GetID(v1);

    if (v0 != DYNAMIC_MAP_FEATURES_GREAT_MARSH) {
        PersistedMapFeatures_InitWithID(v1, DYNAMIC_MAP_FEATURES_GREAT_MARSH);
        v2 = (UnkStruct_ov6_02242AF0 *)PersistedMapFeatures_GetBuffer(v1, DYNAMIC_MAP_FEATURES_GREAT_MARSH);
        v2->unk_00 = 2;
    }
}
