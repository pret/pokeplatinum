#include "overlay005/ov5_021F0824.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/underground.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "overlay023/ov23_02241F74.h"

#include "field_comm_manager.h"
#include "goods.h"
#include "unk_0202854C.h"

void ov5_021F0824(FieldSystem *fieldSystem)
{
    int v0;
    int v1;
    SecretBase *v2;
    int v3, v4;
    int v5, v6;
    int v7, v8;
    VecFx32 v9;
    int v10;

    v2 = sub_0205A080(fieldSystem->saveData);

    if (v2 == NULL) {
        return;
    }

    v3 = ov23_02242E28();
    v4 = ov23_02242E40();

    for (v0 = 0; v0 < 32; v0++) {
        v1 = SecretBase_GetGoodIDAtIndex(v2, v0);
        v7 = Good_GetWidth(v1);
        v8 = Good_GetDepth(v1);

        if (v1 != 0) {
            v5 = SecretBase_GetGoodXCoordAtIndex(v2, v0);
            v6 = SecretBase_GetGoodZCoordAtIndex(v2, v0);

            v9.x = v5 * (FX32_ONE * 16);
            v9.z = v6 * (FX32_ONE * 16);
            v9.y = FX32_ONE;

            v9.x += (v3 * FX32_ONE * 16 * 32);
            v9.z += (v4 * FX32_ONE * 16 * 32);

            v9.x += (v7 * FX32_ONE * 8);
            v9.z += (v8 * FX32_ONE * 8);
            v10 = AreaDataManager_GetMapPropModelID(fieldSystem->areaDataManager, v1);

            MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, v10, &v9, NULL, fieldSystem->mapPropAnimMan);
        }
    }
}
