#ifndef POKEPLATINUM_TERRAIN_ATTRIBUTES_H
#define POKEPLATINUM_TERRAIN_ATTRIBUTES_H

#include <nitro/types.h>

#include "constants/field/map.h"

#include "field/field_system_decl.h"

#define TERRAIN_ATTRIBUTES_MAP_MATRIX_COUNT 225
#define TERRAIN_ATTRIBUTES_MAX_BLOCK_COUNT  16

typedef struct TerrainAttributes {
    u8 mapMatrixIndexToBlockIndex[TERRAIN_ATTRIBUTES_MAP_MATRIX_COUNT];
    u16 terrainAttributes[TERRAIN_ATTRIBUTES_COUNT * TERRAIN_ATTRIBUTES_MAX_BLOCK_COUNT];
} TerrainAttributes;

void TerrainAttributes_New(FieldSystem *fieldSystem, const u8 blockCount);
void TerrainAttributes_Free(FieldSystem *fieldSystem);
const u16 *TerrainAttributes_Get(const u32 mapMatrixIndex, const TerrainAttributes *terrainAttributes);

#endif // POKEPLATINUM_TERRAIN_ATTRIBUTES_H
