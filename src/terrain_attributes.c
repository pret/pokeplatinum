#include "terrain_attributes.h"

#include <nitro.h>
#include <string.h>

#include "constants/field/map.h"

#include "field/field_system.h"

#include "heap.h"
#include "map_matrix.h"
#include "narc.h"

static void TerrainAttributes_Load(MapMatrix *mapMatrix, TerrainAttributes *terrainAttributes, const u8 blockCount);
static const u8 TerrainAttributes_GetOrPushLandDataID(const u16 landDataID, u16 *blockIndexToLandDataID, u8 *blockCount);

void TerrainAttributes_New(FieldSystem *fieldSystem, const u8 blockCount)
{
    if (fieldSystem->terrainAttributes == NULL) {
        fieldSystem->terrainAttributes = Heap_Alloc(HEAP_ID_FIELD2, sizeof(TerrainAttributes));

        TerrainAttributes_Load(fieldSystem->mapMatrix, fieldSystem->terrainAttributes, blockCount);
    }
}

void TerrainAttributes_Free(FieldSystem *fieldSystem)
{
    if (fieldSystem->terrainAttributes != NULL) {
        Heap_Free(fieldSystem->terrainAttributes);
        fieldSystem->terrainAttributes = NULL;
    }
}

const u16 *TerrainAttributes_Get(const u32 mapMatrixIndex, const TerrainAttributes *terrainAttributes)
{
    u8 blockIndex = terrainAttributes->mapMatrixIndexToBlockIndex[mapMatrixIndex];
    return &terrainAttributes->terrainAttributes[MAP_TILES_COUNT_X * MAP_TILES_COUNT_Z * blockIndex];
}

static void TerrainAttributes_Load(MapMatrix *mapMatrix, TerrainAttributes *terrainAttributes, const u8 blockCount)
{
    u16 mapMatrixIndex;
    u16 landDataID;
    int i, j;
    u16 blockIndexToLandDataID[TERRAIN_ATTRIBUTES_MAX_BLOCK_COUNT];

    u8 realBlockCount = 0;
    int mapMatrixWidth = MapMatrix_GetWidth(mapMatrix);
    int mapMatrixHeight = MapMatrix_GetHeight(mapMatrix);

    for (j = 0; j < mapMatrixHeight; j++) {
        for (i = 0; i < mapMatrixWidth; i++) {
            mapMatrixIndex = j * mapMatrixWidth + i;
            landDataID = MapMatrix_GetLandDataIDByIndex2(mapMatrixIndex, mapMatrix);

            u8 blockIndex = TerrainAttributes_GetOrPushLandDataID(landDataID, blockIndexToLandDataID, &realBlockCount);
            terrainAttributes->mapMatrixIndexToBlockIndex[mapMatrixIndex] = blockIndex;
        }
    }

    NARC *landDataNARC = NARC_ctor(NARC_INDEX_FIELDDATA__LAND_DATA__LAND_DATA, HEAP_ID_FIELD2);

    for (i = 0; i < blockCount; i++) {
        landDataID = blockIndexToLandDataID[i];
        void *terrainAttributesBlock = &terrainAttributes->terrainAttributes[MAP_TILES_COUNT_X * MAP_TILES_COUNT_Z * i];

        NARC_ReadFromMember(landDataNARC, landDataID, TERRAIN_ATTRIBUTES_OFFSET, TERRAIN_ATTRIBUTES_SIZE, terrainAttributesBlock);
    }

    NARC_dtor(landDataNARC);
}

static const u8 TerrainAttributes_GetOrPushLandDataID(const u16 landDataID, u16 *blockIndexToLandDataID, u8 *blockCount)
{
    u8 i;

    for (i = 0; i < *blockCount; i++) {
        if (blockIndexToLandDataID[i] == landDataID) {
            return i;
        }
    }

    GF_ASSERT(i < TERRAIN_ATTRIBUTES_MAX_BLOCK_COUNT);

    blockIndexToLandDataID[i] = landDataID;
    (*blockCount)++;

    return i;
}
