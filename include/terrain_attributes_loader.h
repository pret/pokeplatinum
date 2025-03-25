#ifndef POKEPLATINUM_TERRAIN_ATTRIBUTES_LOADER_H
#define POKEPLATINUM_TERRAIN_ATTRIBUTES_LOADER_H

#include <nitro/types.h>

#include "constants/field/map.h"

#include "field/field_system_decl.h"

#define TERRAIN_ATTRIBUTES_LOADER_MAP_MATRIX_COUNT 225
#define TERRAIN_ATTRIBUTES_LOADER_MAX_BLOCK_COUNT  16

typedef struct TerrainAttributesLoader {
    u8 mapMatrixIndexToBlockIndex[TERRAIN_ATTRIBUTES_LOADER_MAP_MATRIX_COUNT];
    u16 terrainAttributes[TERRAIN_ATTRIBUTES_COUNT * TERRAIN_ATTRIBUTES_LOADER_MAX_BLOCK_COUNT];
} TerrainAttributesLoader;

void TerrainAttributesLoader_New(FieldSystem *fieldSystem, const u8 blockCount);
void TerrainAttributesLoader_Free(FieldSystem *fieldSystem);
const u16 *TerrainAttributesLoader_GetTerrainAttributes(const u32 mapMatrixIndex, const TerrainAttributesLoader *terrainAttributesLoader);

#endif // POKEPLATINUM_TERRAIN_ATTRIBUTES_LOADER_H
