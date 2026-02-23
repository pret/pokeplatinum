#include "overlay005/secret_base_props.h"

#include <nitro.h>
#include <string.h>

#include "generated/goods.h"

#include "field/field_system.h"
#include "overlay005/area_data.h"
#include "overlay005/map_prop.h"
#include "underground/defs.h"
#include "underground/manager.h"
#include "underground/secret_bases.h"

#include "field_comm_manager.h"
#include "goods.h"
#include "underground.h"

void SecretBase_LoadProps(FieldSystem *fieldSystem)
{
    SecretBase *secretBase = FieldCommMan_GetCurrentOccupiedSecretBase(fieldSystem->saveData);

    if (secretBase == NULL) {
        return;
    }

    int secretBaseX = UndergroundMan_GetSecretBaseXCoordinate();
    int secretBaseZ = UndergroundMan_GetSecretBaseZCoordinate();

    for (int i = 0; i < MAX_SECRET_BASE_GOODS; i++) {
        enum Good goodID = SecretBase_GetGoodIDAtIndex(secretBase, i);
        int width = Good_GetWidth(goodID);
        int depth = Good_GetDepth(goodID);

        if (goodID != UG_GOOD_NONE) {
            int x = SecretBase_GetGoodXCoordAtIndex(secretBase, i);
            int z = SecretBase_GetGoodZCoordAtIndex(secretBase, i);

            VecFx32 pos;
            pos.x = x * MAP_OBJECT_TILE_SIZE;
            pos.z = z * MAP_OBJECT_TILE_SIZE;
            pos.y = FX32_ONE;

            pos.x += secretBaseX * MAP_OBJECT_TILE_SIZE * SECRET_BASE_WIDTH;
            pos.z += secretBaseZ * MAP_OBJECT_TILE_SIZE * SECRET_BASE_DEPTH;

            pos.x += width * (MAP_OBJECT_TILE_SIZE / 2);
            pos.z += depth * (MAP_OBJECT_TILE_SIZE / 2);
            int modelID = AreaDataManager_GetMapPropModelID(fieldSystem->areaDataManager, goodID);

            MapPropManager_LoadOne(fieldSystem->mapPropManager, fieldSystem->areaDataManager, modelID, &pos, NULL, fieldSystem->mapPropAnimMan);
        }
    }
}
