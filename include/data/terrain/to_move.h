#include "constants/battle/terrain.h"
#include "constants/moves.h"

static const u16 sTerrainMove[] = {
    [TERRAIN_PLAIN]       = MOVE_EARTHQUAKE,
    [TERRAIN_SAND]        = MOVE_EARTHQUAKE,
    [TERRAIN_GRASS]       = MOVE_SEED_BOMB,
    [TERRAIN_PUDDLE]      = MOVE_SEED_BOMB,
    [TERRAIN_MOUNTAIN]    = MOVE_ROCK_SLIDE,
    [TERRAIN_CAVE]        = MOVE_ROCK_SLIDE,
    [TERRAIN_SNOW]        = MOVE_BLIZZARD,
    [TERRAIN_WATER]       = MOVE_HYDRO_PUMP,
    [TERRAIN_ICE]         = MOVE_ICE_BEAM,
    [TERRAIN_BUILDING]    = MOVE_TRI_ATTACK,
    [TERRAIN_GREAT_MARSH] = MOVE_MUD_BOMB,
    [TERRAIN_BRIDGE]      = MOVE_AIR_SLASH,
    [TERRAIN_SPECIAL]     = MOVE_TRI_ATTACK,
};
