#ifndef POKEPLATINUM_TERRAIN_COLLISION_MANAGER_H
#define POKEPLATINUM_TERRAIN_COLLISION_MANAGER_H

#include <nitro/fx/fx.h>
#include <nitro/types.h>

#include "field/field_system_decl.h"
#include "overlay005/map_prop.h"

typedef const fx32 (*GetHeightFunc)(const FieldSystem *, const fx32, const fx32, const fx32, u8 *);
typedef BOOL (*GetTileAttributesFunc)(const FieldSystem *, const int, const int, u16 *);

typedef struct TerrainCollisionManager {
    GetHeightFunc getHeight;
    GetTileAttributesFunc getTileAttributes;
} TerrainCollisionManager;

typedef struct TerrainCollisionHitbox {
    fx32 startX;
    fx32 startZ;
    fx32 endX;
    fx32 endZ;
} TerrainCollisionHitbox;

enum CalculatedHeightSource {
    CALCULATED_HEIGHT_SOURCE_NONE = 0,
    CALCULATED_HEIGHT_SOURCE_BDHC,
    CALCULATED_HEIGHT_SOURCE_DYNAMIC
};

void TerrainCollisionManager_Init(const TerrainCollisionManager **terrainCollisionMan, BOOL useSimpleTerrainCollisions);
BOOL TerrainCollisionManager_CheckCollision(const FieldSystem *fieldSystem, const int tileX, const int tileZ);
u8 TerrainCollisionManager_GetTileBehavior(const FieldSystem *fieldSystem, const int tileX, const int tileZ);
const fx32 TerrainCollisionManager_GetHeight(const FieldSystem *fieldSystem, const fx32 objectHeight, const fx32 objectX, const fx32 objectZ, u8 *newObjectHeightSource);
BOOL TerrainCollisionManager_WillMapObjectCollide(const FieldSystem *fieldSystem, const VecFx32 *objectPosition, const int tileX, const int tileZ, s8 *verticalDirection);
BOOL TerrainCollisionManager_WillPlayerCollide(FieldSystem *fieldSystem, const VecFx32 *objectPosition, const int tileX, const int tileZ, s8 *verticalDirection);
void TerrainCollisionManager_GetMapAbsoluteOrigin(const int mapMatrixIndex, const int mapMatrixWidth, VecFx32 *mapAbsoluteOrigin);

void TerrainCollisionHitbox_Init(const int tileX, const int tileZ, const int offsetTileX, const int offsetTileZ, const u32 sizeX, const u32 sizeZ, TerrainCollisionHitbox *hitbox);
BOOL TerrainCollisionHitbox_CollidesWithMapProp(const MapProp *mapProp, const TerrainCollisionHitbox *hitbox, const VecFx32 *mapAbsoluteOrigin);

BOOL FieldSystem_FindCollidingLoadedMapPropByModelID(const FieldSystem *fieldSystem, const int targetMapPropModelID, const TerrainCollisionHitbox *hitbox, MapProp **mapPropOut);
BOOL FieldSystem_FindCollidingLoadedMapPropByModelIDs(const FieldSystem *fieldSystem, const int *mapPropModelIDs, const u8 mapPropModelIDsCount, const TerrainCollisionHitbox *hitbox, MapProp **mapPropOut, int *mapPropModelIDOut);
BOOL FieldSystem_FindLoadedMapPropByModelID(const FieldSystem *fieldSystem, const int targetMapPropModelID, MapProp **mapPropOut, int *mapMatrixIndex);
BOOL FieldSystem_FindLoadedMapPropByModelIDs(const FieldSystem *fieldSystem, const int *mapPropModelIDs, const u8 mapPropModelIDsCount, MapProp **mapPropOut, int *mapPropModelIDOut);

#endif // POKEPLATINUM_TERRAIN_COLLISION_MANAGER_H
