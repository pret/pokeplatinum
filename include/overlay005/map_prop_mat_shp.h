#ifndef POKEPLATINUM_OV5_MAP_PROP_MATSHP_H
#define POKEPLATINUM_OV5_MAP_PROP_MATSHP_H

#include <nitro/types.h>

typedef struct MapPropMatShpIdsLocator {
    u16 matShpIdsCount;
    u16 matShpIdsIndex;
} MapPropMatShpIdsLocator;

typedef struct MapPropMatShpIds {
    u16 materialId;
    u16 shapeId;
} MapPropMatShpIds;

typedef struct MapPropMatShp {
    MapPropMatShpIdsLocator *matShpIdsLocators;
    MapPropMatShpIds *matShpIds;
} MapPropMatShp;

MapPropMatShp *MapPropMatShp_Alloc(void);
void MapPropMatShp_Load(const char *path, MapPropMatShp *mapPropMatShp);
void MapPropMatShp_Free(MapPropMatShp *mapPropMatShp);
void MapPropMatShp_GetMatShpIdsCountOfMapProp(const int mapPropId, const MapPropMatShp *mapPropMatShp, u16 *matShpIdsCount);
void MapPropMatShp_GetMatShpIdsLocatorOfMapProp(const int mapPropId, const MapPropMatShp *mapPropMatShp, u16 *matShpIdsCount, u16 *matShpIdsIndex);
MapPropMatShpIds const *MapPropMatShp_GetMatShpIdsAt(const u16 index, const MapPropMatShp *mapPropMatShp);

#endif // POKEPLATINUM_OV5_MAP_PROP_MATSHP_H
