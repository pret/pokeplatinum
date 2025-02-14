#ifndef POKEPLATINUM_OV5_MAP_PROP_MATERIAL_SHAPE_H
#define POKEPLATINUM_OV5_MAP_PROP_MATERIAL_SHAPE_H

#include <nitro/types.h>

typedef struct MapPropMaterialShapeIDsLocator {
    u16 idsCount;
    u16 idsIndex;
} MapPropMaterialShapeIDsLocator;

typedef struct MapPropMaterialShapeIDs {
    u16 materialID;
    u16 shapeID;
} MapPropMaterialShapeIDs;

typedef struct MapPropMaterialShape {
    MapPropMaterialShapeIDsLocator *idsLocators;
    MapPropMaterialShapeIDs *ids;
} MapPropMaterialShape;

MapPropMaterialShape *MapPropMaterialShape_Alloc(void);
void MapPropMaterialShape_Load(const char *path, MapPropMaterialShape *propMatShp);
void MapPropMaterialShape_Free(MapPropMaterialShape *propMatShp);
void MapProp_GetMaterialShapeIDsCount(const int mapPropID, const MapPropMaterialShape *propMatShp, u16 *idsCount);
void MapProp_GetMaterialShapeIDsLocator(const int mapPropID, const MapPropMaterialShape *propMatShp, u16 *idsCount, u16 *idsIndex);
MapPropMaterialShapeIDs const *MapPropMaterialShape_GetMaterialShapeIDsAt(const u16 index, const MapPropMaterialShape *propMatShp);

#endif // POKEPLATINUM_OV5_MAP_PROP_MATERIAL_SHAPE_H
