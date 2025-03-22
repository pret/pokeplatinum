#include "terrain_collision_manager.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map.h"
#include "constants/quadrant.h"

#include "field/field_system.h"
#include "overlay005/bdhc.h"
#include "overlay005/dynamic_terrain_height.h"
#include "overlay005/land_data.h"
#include "overlay005/land_data_manager_decl.h"
#include "overlay005/map_prop.h"

#include "map_matrix.h"
#include "map_tile_behavior.h"
#include "unk_02054BD0.h"
#include "unk_02068344.h"

#define INVALID_TERRAIN_ATTRIBUTES 0xFF
#define INVALID_TILE_BEHAVIOR      0xFF

#define TERRAIN_ATTRIBUTES_COLLISION_SHIFT 15
#define TERRAIN_ATTRIBUTES_COLLISION_MASK  0x01

#define TERRAIN_ATTRIBUTES_TILE_BEHAVIOR_MASK 0xFF

enum VerticalDirection {
    VERTICAL_DIRECTION_DOWN = -1,
    VERTICAL_DIRECTION_NONE,
    VERTICAL_DIRECTION_UP
};

static const fx32 GetHeight(const FieldSystem *fieldSystem, const fx32 objectHeight, const fx32 objectX, const fx32 objectZ, u8 *newObjectHeightSourceOut);
static const fx32 GetSimpleHeight(const FieldSystem *fieldSystem, const fx32 objectHeight, const fx32 objectX, const fx32 objectZ, u8 *newObjectHeightSourceOut);
static BOOL GetTileAttributes(const FieldSystem *fieldSystem, const int tileX, const int tileY, u16 *attributes);
static BOOL GetSimpleTileAttributes(const FieldSystem *fieldSystem, const int tileX, const int tileY, u16 *attributes);
static int GetVerticalDirection(const FieldSystem *fieldSystem, const VecFx32 *param1, const int param2, const int param3, u8 *param4);

static const TerrainCollisionManager sTerrainCollisionManagerFuncs = {
    GetHeight,
    GetTileAttributes
};

static const TerrainCollisionManager sSimpleTerrainCollisionManagerFuncs = {
    GetSimpleHeight,
    GetSimpleTileAttributes
};

static fx32 CalculateDistance(const fx32 lhs, const fx32 rhs)
{
    return lhs >= rhs
        ? lhs - rhs
        : rhs - lhs;
}

static const fx32 GetHeight(const FieldSystem *fieldSystem, const fx32 objectHeight, const fx32 objectX, const fx32 objectZ, u8 *newObjectHeightSourceOut)
{
    BOOL dynHeightPlateFound;
    u32 tileX, tileY;
    u32 mapMatrixX, mapMatrixY;
    VecFx32 objectPosition;
    fx32 fixedObjectHeight;

    const LandDataManager *landDataMan = fieldSystem->landDataMan;
    VecFx32 offset;
    LandDataManager_GetOffset(landDataMan, &offset);

    fixedObjectHeight = objectHeight - offset.y;
    BOOL bdhcHeightValid;
    fx32 newObjectHeight = 0;

    objectPosition.x = objectX - offset.x;
    objectPosition.z = objectZ - offset.z;
    objectPosition.y = 0;

    int mapMatrixWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);
    int mapMatrixWidthTiles = mapMatrixWidth * MAP_TILES_COUNT_X;

    tileX = (objectX - offset.x) / MAP_OBJECT_TILE_SIZE;
    tileY = (objectZ - offset.z) / MAP_OBJECT_TILE_SIZE;

    u8 dynHeightPlateIndex;
    dynHeightPlateFound = DynamicTerrainHeightManager_GetPlateIndexOfTile(tileX, tileY, fieldSystem->dynamicTerrainHeightMan, &dynHeightPlateIndex);

    mapMatrixX = tileX / MAP_TILES_COUNT_X;
    mapMatrixY = tileY / MAP_TILES_COUNT_Y;
    u32 mapMatrixIndex = mapMatrixX + mapMatrixY * mapMatrixWidth;

    fx32 currentMapOriginX = (mapMatrixX * MAP_TILES_COUNT_X + MAP_TILES_COUNT_X / 2) * MAP_OBJECT_TILE_SIZE;
    fx32 currentMapOriginZ = (mapMatrixY * MAP_TILES_COUNT_Y + MAP_TILES_COUNT_Y / 2) * MAP_OBJECT_TILE_SIZE;

    objectPosition.x = objectX - currentMapOriginX - offset.x;
    objectPosition.z = objectZ - currentMapOriginZ - offset.z;

    u32 tileIndex = tileX + tileY * mapMatrixWidthTiles;
    u8 tileMapQuadrant = LandDataManager_CalculateMapQuadrantOfTile(tileIndex, mapMatrixWidthTiles);
    u32 loadedMapIndex = LandDataManager_GetRelativeLoadedMapsQuadrant(mapMatrixIndex, tileMapQuadrant, landDataMan);

    if (loadedMapIndex > QUADRANT_COUNT - 1) {
        bdhcHeightValid = FALSE;
    } else {
        const BDHC *bdhc = LandDataManager_GetLoadedMapBDHC(landDataMan, loadedMapIndex);
        bdhcHeightValid = CalculateObjectHeight(fixedObjectHeight, objectPosition.x, objectPosition.z, bdhc, &objectPosition.y);
    }

    u8 newObjectHeightSource;

    if (dynHeightPlateFound) {
        fx32 dynamicHeight = DynamicTerrainHeightManager_GetHeight(dynHeightPlateIndex, fieldSystem->dynamicTerrainHeightMan);

        if (bdhcHeightValid) {
            if (dynamicHeight <= objectPosition.y) {
                newObjectHeightSource = CALCULATED_HEIGHT_SOURCE_BDHC;
                newObjectHeight = objectPosition.y;
            } else {
                fx32 bdhcHeightDiff = CalculateDistance(objectPosition.y, fixedObjectHeight);
                fx32 dynamicHeightDiff = CalculateDistance(dynamicHeight, fixedObjectHeight);

                if (bdhcHeightDiff <= dynamicHeightDiff) {
                    newObjectHeight = objectPosition.y;
                    newObjectHeightSource = CALCULATED_HEIGHT_SOURCE_BDHC;
                } else {
                    newObjectHeight = dynamicHeight;
                    newObjectHeightSource = CALCULATED_HEIGHT_SOURCE_DYNAMIC;
                }
            }
        } else {
            newObjectHeightSource = CALCULATED_HEIGHT_SOURCE_DYNAMIC;
            newObjectHeight = dynamicHeight;
        }
    } else {
        if (bdhcHeightValid) {
            newObjectHeightSource = CALCULATED_HEIGHT_SOURCE_BDHC;
            newObjectHeight = objectPosition.y;
        } else {
            newObjectHeightSource = CALCULATED_HEIGHT_SOURCE_NONE;
        }
    }

    if (newObjectHeightSourceOut != NULL) {
        *newObjectHeightSourceOut = newObjectHeightSource;
    }

    newObjectHeight += offset.y;
    return newObjectHeight;
}

static const fx32 GetSimpleHeight(const FieldSystem *fieldSystem, const fx32 objectHeight, const fx32 objectX, const fx32 objectZ, u8 *newObjectHeightSourceOut)
{
    int tileX = objectX / MAP_OBJECT_TILE_SIZE;
    int tileY = objectZ / MAP_OBJECT_TILE_SIZE;

    BOOL loadedMapIndexValid = LandDataManager_GetRelativeLoadedMapsQuadrantOfTile(fieldSystem->landDataMan, tileX, tileY, NULL);
    u8 newObjectHeightSource;

    if (loadedMapIndexValid) {
        newObjectHeightSource = CALCULATED_HEIGHT_SOURCE_BDHC;
    } else {
        newObjectHeightSource = CALCULATED_HEIGHT_SOURCE_NONE;
    }

    if (newObjectHeightSourceOut != NULL) {
        *newObjectHeightSourceOut = newObjectHeightSource;
    }

    return 0;
}

static BOOL GetTileAttributes(const FieldSystem *fieldSystem, const int tileX, const int tileY, u16 *attributes)
{
    int fixedTileX, fixedTileY;
    const LandDataManager *landDataMan = fieldSystem->landDataMan;

    fixedTileX = tileX - LandDataManager_GetOffsetTileX(landDataMan);
    fixedTileY = tileY - LandDataManager_GetOffsetTileY(landDataMan);

    u8 loadedMapIndex;
    BOOL loadedMapIndexValid = LandDataManager_GetRelativeLoadedMapsQuadrantOfTile(landDataMan, tileX, tileY, &loadedMapIndex);

    if (loadedMapIndexValid == FALSE) {
        (*attributes) = INVALID_TERRAIN_ATTRIBUTES;
        return FALSE;
    }

    u32 fixedTileIndex = (fixedTileY % MAP_TILES_COUNT_Y) * MAP_TILES_COUNT_X + (fixedTileX % MAP_TILES_COUNT_X);
    u16 const *terrainAttributes = LandDataManager_GetLoadedMapTerrainAttributes(landDataMan, loadedMapIndex);
    *attributes = terrainAttributes[fixedTileIndex];

    return TRUE;
}

static BOOL GetSimpleTileAttributes(const FieldSystem *fieldSystem, const int tileX, const int tileY, u16 *attributes)
{
    const LandDataManager *landDataMan = fieldSystem->landDataMan;

    int mapMatrixWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);
    int mapMatrixWidthTiles = mapMatrixWidth * MAP_TILES_COUNT_X;

    u32 mapMatrixX = tileX / MAP_TILES_COUNT_X;
    u32 mapMatrixY = tileY / MAP_TILES_COUNT_Y;
    u32 mapMatrixIndex = mapMatrixX + mapMatrixY * mapMatrixWidth;

    u32 tileIndex = (tileY % MAP_TILES_COUNT_Y) * MAP_TILES_COUNT_X + (tileX % MAP_TILES_COUNT_X);
    u16 const *terrainAttributes = sub_02054C0C(mapMatrixIndex, fieldSystem->unk_58);
    *attributes = terrainAttributes[tileIndex];

    return TRUE;
}

void TerrainCollisionManager_Init(const TerrainCollisionManager **terrainCollisionMan, BOOL useSimpleTerrainCollisions)
{
    if (useSimpleTerrainCollisions == FALSE) {
        *terrainCollisionMan = &sTerrainCollisionManagerFuncs;
    } else if (useSimpleTerrainCollisions == TRUE) {
        *terrainCollisionMan = &sSimpleTerrainCollisionManagerFuncs;
    } else {
        GF_ASSERT(FALSE);
    }
}

BOOL TerrainCollisionManager_CheckCollision(const FieldSystem *fieldSystem, const int tileX, const int tileY)
{
    u16 attributes;
    BOOL attributesValid = fieldSystem->terrainCollisionMan->getTileAttributes(fieldSystem, tileX, tileY, &attributes);

    if (attributesValid) {
        u8 hasCollision = attributes >> TERRAIN_ATTRIBUTES_COLLISION_SHIFT;
        hasCollision &= TERRAIN_ATTRIBUTES_COLLISION_MASK;

        if (hasCollision == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

u8 TerrainCollisionManager_GetTileBehavior(const FieldSystem *fieldSystem, const int tileX, const int tileY)
{
    u16 attributes;

    if (fieldSystem->terrainCollisionMan->getTileAttributes(fieldSystem, tileX, tileY, &attributes)) {
        u8 behavior = attributes;
        behavior &= TERRAIN_ATTRIBUTES_TILE_BEHAVIOR_MASK;

        return behavior;
    }

    return INVALID_TILE_BEHAVIOR;
}

const fx32 TerrainCollisionManager_GetHeight(const FieldSystem *fieldSystem, const fx32 objectHeight, const fx32 objectX, const fx32 objectZ, u8 *newObjectHeightSource)
{
    return fieldSystem->terrainCollisionMan->getHeight(fieldSystem, objectHeight, objectX, objectZ, newObjectHeightSource);
}

static int GetVerticalDirection(const FieldSystem *fieldSystem, const VecFx32 *objectPosition, const int tileX, const int tileY, u8 *newObjectHeightSource)
{
    fx32 objectX = tileX * MAP_OBJECT_TILE_SIZE + MAP_OBJECT_TILE_SIZE / 2;
    fx32 objectZ = tileY * MAP_OBJECT_TILE_SIZE + MAP_OBJECT_TILE_SIZE / 2;
    fx32 objectHeight = TerrainCollisionManager_GetHeight(fieldSystem, objectPosition->y, objectX, objectZ, newObjectHeightSource);

    int direction;
    fx32 higherHeight, lowerHeight;

    if (objectHeight < objectPosition->y) {
        higherHeight = objectPosition->y;
        lowerHeight = objectHeight;
        direction = VERTICAL_DIRECTION_DOWN;
    } else if (objectHeight > objectPosition->y) {
        higherHeight = objectHeight;
        lowerHeight = objectPosition->y;
        direction = VERTICAL_DIRECTION_UP;
    } else {
        direction = VERTICAL_DIRECTION_NONE;
        return direction;
    }

    if (higherHeight - lowerHeight >= 20 * FX32_ONE) {
        GF_ASSERT(direction != VERTICAL_DIRECTION_NONE);
    } else {
        direction = VERTICAL_DIRECTION_NONE;
    }

    return direction;
}

BOOL TerrainCollisionManager_WillMapObjectCollide(const FieldSystem *fieldSystem, const VecFx32 *objectPosition, const int tileX, const int tileY, s8 *verticalDirection)
{
    u8 newObjectHeightSource;
    int direction = GetVerticalDirection(fieldSystem, objectPosition, tileX, tileY, &newObjectHeightSource);

    if (verticalDirection != NULL) {
        *verticalDirection = direction;
    }

    if (direction == VERTICAL_DIRECTION_NONE) {
        BOOL isColliding = TerrainCollisionManager_CheckCollision(fieldSystem, tileX, tileY);

        if (!isColliding && newObjectHeightSource == CALCULATED_HEIGHT_SOURCE_DYNAMIC) {
            u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, tileX, tileY);

            if (TileBehavior_IsPastoriaGymWater(tileBehavior)) {
                return TRUE;
            }
        }

        return isColliding;
    } else {
        return TRUE;
    }
}

BOOL TerrainCollisionManager_WillPlayerCollide(FieldSystem *fieldSystem, const VecFx32 *objectPosition, const int tileX, const int tileY, s8 *verticalDirection)
{
    u8 newObjectHeightSource;
    int direction = GetVerticalDirection(fieldSystem, objectPosition, tileX, tileY, &newObjectHeightSource);

    if (verticalDirection != NULL) {
        *verticalDirection = direction;
    }

    if (direction == VERTICAL_DIRECTION_NONE) {
        BOOL isColliding;
        BOOL v3 = sub_02068390(fieldSystem, tileX, tileY, objectPosition->y, &isColliding);

        if (!v3) {
            isColliding = TerrainCollisionManager_CheckCollision(fieldSystem, tileX, tileY);

            if (!isColliding && newObjectHeightSource == CALCULATED_HEIGHT_SOURCE_DYNAMIC) {
                u8 tileBehavior = TerrainCollisionManager_GetTileBehavior(fieldSystem, tileX, tileY);

                if (TileBehavior_IsPastoriaGymWater(tileBehavior)) {
                    return TRUE;
                }
            }

            return isColliding;
        } else {
            return isColliding;
        }
    } else {
        return TRUE;
    }
}

void TerrainCollisionHitbox_Init(const int tileX, const int tileY, const int offsetTileX, const int offsetTileY, const u32 sizeX, const u32 sizeY, TerrainCollisionHitbox *hitbox)
{
    int startTileX = tileX + offsetTileX;
    int startTileY = tileY + offsetTileY;

    int endTileX = startTileX + sizeX;
    int endTileY = startTileY + sizeY;

    if (startTileX < 0 || startTileY < 0 || endTileX < 0 || endTileY < 0) {
        GF_ASSERT(FALSE);
    }

    hitbox->startX = startTileX * MAP_OBJECT_TILE_SIZE;
    hitbox->startZ = startTileY * MAP_OBJECT_TILE_SIZE;
    hitbox->endX = endTileX * MAP_OBJECT_TILE_SIZE;
    hitbox->endZ = endTileY * MAP_OBJECT_TILE_SIZE;
}

BOOL TerrainCollisionHitbox_CollidesWithMapProp(const MapProp *mapProp, const TerrainCollisionHitbox *hitbox, const VecFx32 *mapAbsoluteOrigin)
{
    VecFx32 mapPropPosition;
    mapPropPosition = MapProp_GetPosition(mapProp);

    mapPropPosition.x += mapAbsoluteOrigin->x;
    mapPropPosition.z += mapAbsoluteOrigin->z;

    if (hitbox->startX <= mapPropPosition.x && mapPropPosition.x <= hitbox->endX && hitbox->startZ <= mapPropPosition.z && mapPropPosition.z <= hitbox->endZ) {
        return TRUE;
    }

    return FALSE;
}

BOOL FieldSystem_FindCollidingLoadedMapPropByModelID(const FieldSystem *fieldSystem, const int targetMapPropModelID, const TerrainCollisionHitbox *hitbox, MapProp **mapPropOut)
{
    for (u8 i = 0; i < QUADRANT_COUNT; i++) {
        MapPropManager *mapPropMan;
        LandDataManager_GetLoadedMapPropManager(i, fieldSystem->landDataMan, &mapPropMan);

        if (mapPropMan == NULL) {
            continue;
        }

        int mapMatrixIndex = LandDataManager_GetLoadedMapMatrixIndex(fieldSystem->landDataMan, i);
        int mapMatrixWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);

        VecFx32 mapAbsoluteOrigin;
        TerrainCollisionManager_GetMapAbsoluteOrigin(mapMatrixIndex, mapMatrixWidth, &mapAbsoluteOrigin);

        for (u8 j = 0; j < MAX_LOADED_MAP_PROPS; j++) {
            MapProp *mapProp = MapPropManager_GetLoadedProp(mapPropMan, j);
            BOOL collidesWithMapProp = TerrainCollisionHitbox_CollidesWithMapProp(mapProp, hitbox, &mapAbsoluteOrigin);

            if (collidesWithMapProp) {
                int mapPropModelID = MapProp_GetModelID(mapProp);

                if (mapPropModelID == targetMapPropModelID) {
                    if (mapPropOut != NULL) {
                        *mapPropOut = mapProp;
                    }

                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

BOOL FieldSystem_FindCollidingLoadedMapPropByModelIDs(const FieldSystem *fieldSystem, const int *mapPropModelIDs, const u8 mapPropModelIDsCount, const TerrainCollisionHitbox *hitbox, MapProp **mapPropOut, int *mapPropModelIDOut)
{
    for (u8 i = 0; i < QUADRANT_COUNT; i++) {
        MapPropManager *mapPropMan;
        LandDataManager_GetLoadedMapPropManager(i, fieldSystem->landDataMan, &mapPropMan);

        if (mapPropMan == NULL) {
            continue;
        }

        int mapMatrixIndex = LandDataManager_GetLoadedMapMatrixIndex(fieldSystem->landDataMan, i);
        int mapMatrixWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);

        VecFx32 mapAbsoluteOrigin;
        TerrainCollisionManager_GetMapAbsoluteOrigin(mapMatrixIndex, mapMatrixWidth, &mapAbsoluteOrigin);

        for (u8 j = 0; j < MAX_LOADED_MAP_PROPS; j++) {
            MapProp *mapProp = MapPropManager_GetLoadedProp(mapPropMan, j);
            BOOL collidesWithMapProp = TerrainCollisionHitbox_CollidesWithMapProp(mapProp, hitbox, &mapAbsoluteOrigin);

            if (collidesWithMapProp) {
                int mapPropModelID = MapProp_GetModelID(mapProp);

                for (u8 k = 0; k < mapPropModelIDsCount; k++) {
                    if (mapPropModelID == mapPropModelIDs[k]) {
                        if (mapPropOut != NULL) {
                            *mapPropOut = mapProp;
                        }

                        if (mapPropModelIDOut != NULL) {
                            *mapPropModelIDOut = mapPropModelID;
                        }

                        return TRUE;
                    }
                }
            }
        }
    }

    return FALSE;
}

BOOL FieldSystem_FindLoadedMapPropByModelID(const FieldSystem *fieldSystem, const int targetMapPropModelID, MapProp **mapPropOut, int *mapMatrixIndex)
{
    for (u8 i = 0; i < QUADRANT_COUNT; i++) {
        MapPropManager *mapPropMan;
        LandDataManager_GetLoadedMapPropManager(i, fieldSystem->landDataMan, &mapPropMan);

        if (mapPropMan == NULL) {
            continue;
        }

        for (u8 j = 0; j < MAX_LOADED_MAP_PROPS; j++) {
            MapProp *mapProp = MapPropManager_GetLoadedProp(mapPropMan, j);
            int mapPropModelID = MapProp_GetModelID(mapProp);

            if (mapPropModelID == targetMapPropModelID) {
                if (mapPropOut != NULL) {
                    *mapPropOut = mapProp;
                }

                if (mapMatrixIndex != NULL) {
                    *mapMatrixIndex = LandDataManager_GetLoadedMapMatrixIndex(fieldSystem->landDataMan, i);
                }

                return TRUE;
            }
        }
    }

    return FALSE;
}

BOOL FieldSystem_FindLoadedMapPropByModelIDs(const FieldSystem *fieldSystem, const int *mapPropModelIDs, const u8 mapPropModelIDsCount, MapProp **mapPropOut, int *mapPropModelIDOut)
{
    for (u8 i = 0; i < QUADRANT_COUNT; i++) {
        MapPropManager *mapPropMan;
        LandDataManager_GetLoadedMapPropManager(i, fieldSystem->landDataMan, &mapPropMan);

        if (mapPropMan == NULL) {
            continue;
        }

        for (u8 j = 0; j < MAX_LOADED_MAP_PROPS; j++) {
            MapProp *mapProp = MapPropManager_GetLoadedProp(mapPropMan, j);
            int mapPropModelID = MapProp_GetModelID(mapProp);

            for (u8 k = 0; k < mapPropModelIDsCount; k++) {
                if (mapPropModelID == mapPropModelIDs[k]) {
                    if (mapPropOut != NULL) {
                        *mapPropOut = mapProp;
                    }

                    if (mapPropModelIDOut != NULL) {
                        *mapPropModelIDOut = mapPropModelID;
                    }

                    return TRUE;
                }
            }
        }
    }

    return FALSE;
}

void TerrainCollisionManager_GetMapAbsoluteOrigin(const int mapMatrixIndex, const int mapMatrixWidth, VecFx32 *mapAbsoluteOrigin)
{
    mapAbsoluteOrigin->x = (MAP_TILES_COUNT_X / 2) * MAP_OBJECT_TILE_SIZE;
    mapAbsoluteOrigin->z = (MAP_TILES_COUNT_Y / 2) * MAP_OBJECT_TILE_SIZE;

    u16 mapMatrixX = mapMatrixIndex % mapMatrixWidth;
    u16 mapMatrixY = mapMatrixIndex / mapMatrixWidth;

    mapAbsoluteOrigin->x += mapMatrixX * MAP_TILES_COUNT_X * MAP_OBJECT_TILE_SIZE;
    mapAbsoluteOrigin->z += mapMatrixY * MAP_TILES_COUNT_Y * MAP_OBJECT_TILE_SIZE;
}
