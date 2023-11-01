#include "constants/battle/terrain.h"
#include "constants/pokemon.h"

static const u8 sTerrainCamouflageType[] = {
    [TERRAIN_PLAIN]       = TYPE_GROUND,
    [TERRAIN_SAND]        = TYPE_GROUND,
    [TERRAIN_GRASS]       = TYPE_GRASS,
    [TERRAIN_PUDDLE]      = TYPE_GRASS,
    [TERRAIN_MOUNTAIN]    = TYPE_ROCK,
    [TERRAIN_CAVE]        = TYPE_ROCK,
    [TERRAIN_SNOW]        = TYPE_ICE,
    [TERRAIN_WATER]       = TYPE_WATER,
    [TERRAIN_ICE]         = TYPE_ICE,
    [TERRAIN_BUILDING]    = TYPE_NORMAL,
    [TERRAIN_GREAT_MARSH] = TYPE_GROUND,
    [TERRAIN_BRIDGE]      = TYPE_FLYING,
    [TERRAIN_SPECIAL]     = TYPE_NORMAL,
};
