#include "map_tile_behavior.h"

#include "constants/field/map_tile_behaviors.h"

// clang-format off
static const u8 sTileBehaviorFlags[] = {
    [TILE_BEHAVIOR_NONE]                       =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x01]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_TALL_GRASS]                 =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_VERY_TALL_GRASS]            =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x04]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x05]                 =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x06]                 =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x07]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_CAVE_FLOOR]                 =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x09]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x0A]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_OLD_CHATEAU_FLOOR]          =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_MOUNTAIN_FLOOR]             =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x0D]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x0E]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x0F]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WATER_RIVER]                =  TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x11]                 =  TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x12]                 =  TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    [TILE_BEHAVIOR_WATERFALL]                  =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_UNUSED_x14]                 =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_WATER_SEA]                  =  TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    [TILE_BEHAVIOR_PUDDLE]                     =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SHALLOW_WATER]              =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x18]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x19]                 =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_UNUSED_x1A]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x1B]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x1C]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_PUDDLE_NO_SPLASHING]        =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x1E]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x1F]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_ICE]                        =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SAND]                       =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x22]                 =  TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x23]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x24]                 =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x25]                 =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x26]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x27]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x28]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x29]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x2A]                 =  TILE_BEHAVIOR_FLAG_SURFABLE_ENCOUNTER,
    [TILE_BEHAVIOR_UNUSED_x2B]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_REFLECTIVE]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_FORBIDS_EXPLORATION_KIT]    =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x2E]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x2F]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_EASTWARD]             =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_WESTWARD]             =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_NORTHWARD]            =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_SOUTHWARD]            =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_NORTH_AND_EAST]       =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_NORTH_AND_WEST]       =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_SOUTH_AND_EAST]       =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_SOUTH_AND_WEST]       =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_JUMP_EAST]                  =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_JUMP_WEST]                  =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_JUMP_NORTH]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_JUMP_SOUTH]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNKNOWN_x3C]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNKNOWN_x3D]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNKNOWN_x3E]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNKNOWN_x3F]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SLIDE_EASTWARD]             =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SLIDE_WESTWARD]             =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SLIDE_NORTHWARD]            =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SLIDE_SOUTHWARD]            =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x44]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x45]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x46]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x47]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x48]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_NORTH_AND_SOUTH]      =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BLOCK_EAST_AND_WEST]        =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_ROCK_CLIMB_N_S]             =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_ROCK_CLIMB_E_W]             =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x4D]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x4E]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x4F]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x50]                 =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_UNUSED_x51]                 =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_UNUSED_x52]                 =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_UNUSED_x53]                 =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_UNUSED_x54]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x55]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_PASTORIA_GYM_H_GROUND]      =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_PASTORIA_GYM_M_GROUND]      =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_PASTORIA_GYM_L_GROUND]      =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_PASTORIA_GYM_WATER]         =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_JUMP_NORTH_TWICE]           =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_JUMP_SOUTH_TWICE]           =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_JUMP_WEST_TWICE]            =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_JUMP_EAST_TWICE]            =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_STAIRS_EAST]           =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_STAIRS_WEST]           =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNKNOWN_x60]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x61]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_ENTRANCE_EAST]         =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_ENTRANCE_WEST]         =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_ENTRANCE_NORTH]        =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_ENTRANCE_SOUTH]        =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x66]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_PANEL]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x68]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_DOOR]                       =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_ESCALATOR_FLIP_FACE]        =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_ESCALATOR]                  =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_EAST]                  =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_WEST]                  =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_NORTH]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_WARP_SOUTH]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BRIDGE_START]               =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BRIDGE]                     =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BRIDGE_OVER_CAVE]           =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_BRIDGE_OVER_WATER]          =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_BRIDGE_OVER_SAND]           =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BRIDGE_OVER_SNOW]           =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BIKE_BRIDGE_N_S]            =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_ENCS]  =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_WATER] =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_SAND]  =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BIKE_BRIDGE_E_W]            =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_ENCS]  =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_WATER] =  TILE_BEHAVIOR_FLAG_SURFABLE,
    [TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_SAND]  =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x7E]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x7F]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_TABLE]                      =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x81]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x82]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_PC]                         =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x84]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_TOWN_MAP]                   =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_TV]                         =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x87]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNKNOWN_x88]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x89]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x8A]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x8B]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x8C]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x8D]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNKNOWN_x8E]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNKNOWN_x8F]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x90]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x91]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x92]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x93]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x94]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x95]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x96]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x97]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x98]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x99]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x9A]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x9B]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x9C]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x9D]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x9E]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_x9F]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BERRY_PATCH]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SNOW_DEEP]                  =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SNOW_DEEPER]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SNOW_DEEPEST]               =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_MUD]                        =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_MUD_DEEP]                   =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_MUD_WITH_GRASS]             =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_MUD_DEEP_WITH_GRASS]        =  TILE_BEHAVIOR_FLAG_ENCOUNTER,
    [TILE_BEHAVIOR_SNOW_SHALLOW]               =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SNOW_WITH_SHADOWS]          =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xAA]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xAB]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xAC]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xAD]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xAE]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xAF]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB0]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB1]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB2]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB3]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB4]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB5]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB6]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB7]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB8]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xB9]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xBA]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xBB]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xBC]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xBD]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xBE]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xBF]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC0]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC1]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC2]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC3]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC4]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC5]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC6]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC7]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC8]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xC9]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xCA]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xCB]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xCC]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xCD]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xCE]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xCF]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xD0]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xD1]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xD2]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xD3]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xD4]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xD5]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xD6]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BIKE_RAMP_EASTWARD]         =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BIKE_RAMP_WESTWARD]         =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BIKE_SLOPE_TOP]             =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BIKE_SLOPE_BOTTOM]          =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BIKE_PARKING]               =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xDC]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xDD]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xDE]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xDF]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SMALL_BOOKSHELF_1]          =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BOOKSHELF_1]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_BOOKSHELF_2]                =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xE3]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_TRASH_CAN]                  =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_MART_SHELF_1]               =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xE6]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xE7]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xE8]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xE9]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_SMALL_BOOKSHELF_2]          =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_MART_SHELF_2]               =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_MART_SHELF_3]               =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xED]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xEE]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xEF]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF0]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF1]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF2]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF3]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF4]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF5]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF6]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF7]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF8]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xF9]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xFA]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xFB]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xFC]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xFD]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_UNUSED_xFE]                 =  TILE_BEHAVIOR_FLAG_NONE,
    [TILE_BEHAVIOR_MAX]                        =  TILE_BEHAVIOR_FLAG_NONE,
};
// clang-format on

BOOL TileBehavior_IsTallGrass(u8 behavior) {
    return behavior == TILE_BEHAVIOR_TALL_GRASS;
}

BOOL TileBehavior_IsVeryTallGrass(u8 behavior) {
    return behavior == TILE_BEHAVIOR_VERY_TALL_GRASS;
}

BOOL TileBehavior_IsTable(u8 behavior) {
    return behavior == TILE_BEHAVIOR_TABLE;
}

BOOL TileBehavior_IsDoor(u8 behavior) {
    return behavior == TILE_BEHAVIOR_DOOR;
}

BOOL TileBehavior_IsWarpEntranceEast(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_ENTRANCE_EAST;
}

BOOL TileBehavior_IsWarpEntranceWest(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_ENTRANCE_WEST;
}

BOOL TileBehavior_IsWarpEntranceNorth(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_ENTRANCE_NORTH;
}

BOOL TileBehavior_IsWarpEntranceSouth(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_ENTRANCE_SOUTH;
}

BOOL TileBehavior_IsWarpEast(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_EAST;
}

BOOL TileBehavior_IsWarpWest(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_WEST;
}

BOOL TileBehavior_IsWarpNorth(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_NORTH;
}

BOOL TileBehavior_IsWarpSouth(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_SOUTH;
}

BOOL TileBehavior_IsSurfable(u8 behavior) {
    return (sTileBehaviorFlags[behavior] & TILE_BEHAVIOR_FLAG_SURFABLE) != 0;
}

BOOL TileBehavior_IsSand(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SAND;
}

BOOL TileBehavior_IsShallowWater(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SHALLOW_WATER;
}

BOOL TileBehavior_IsJumpNorth(u8 behavior) {
    return behavior == TILE_BEHAVIOR_JUMP_NORTH;
}

BOOL TileBehavior_IsJumpSouth(u8 behavior) {
    return behavior == TILE_BEHAVIOR_JUMP_SOUTH;
}

BOOL TileBehavior_IsJumpWest(u8 behavior) {
    return behavior == TILE_BEHAVIOR_JUMP_WEST;
}

BOOL TileBehavior_IsJumpEast(u8 behavior) {
    return behavior == TILE_BEHAVIOR_JUMP_EAST;
}

BOOL TileBehavior_IsJumpNorthTwice(u8 behavior) {
    return behavior == TILE_BEHAVIOR_JUMP_NORTH_TWICE;
}

BOOL TileBehavior_IsJumpSouthTwice(u8 behavior) {
    return behavior == TILE_BEHAVIOR_JUMP_SOUTH_TWICE;
}

BOOL TileBehavior_IsJumpWestTwice(u8 behavior) {
    return behavior == TILE_BEHAVIOR_JUMP_WEST_TWICE;
}

BOOL TileBehavior_IsJumpEastTwice(u8 behavior) {
    return behavior == TILE_BEHAVIOR_JUMP_EAST_TWICE;
}

BOOL TileBehavior_IsPC(u8 behavior) {
    return behavior == TILE_BEHAVIOR_PC;
}

BOOL TileBehavior_IsTownMap(u8 behavior) {
    return behavior == TILE_BEHAVIOR_TOWN_MAP;
}

BOOL TileBehavior_IsPastoriaGymHighGround(u8 behavior) {
    return behavior == TILE_BEHAVIOR_PASTORIA_GYM_H_GROUND;
}

BOOL TileBehavior_IsPastoriaGymMiddleGround(u8 behavior) {
    return behavior == TILE_BEHAVIOR_PASTORIA_GYM_M_GROUND;
}

BOOL TileBehavior_IsPastoriaGymLowGround(u8 behavior) {
    return behavior == TILE_BEHAVIOR_PASTORIA_GYM_L_GROUND;
}

BOOL TileBehavior_IsPastoriaGymWater(u8 behavior) {
    return behavior == TILE_BEHAVIOR_PASTORIA_GYM_WATER;
}

BOOL TileBehavior_IsEscalatorFlipFace(u8 behavior) {
    return behavior == TILE_BEHAVIOR_ESCALATOR_FLIP_FACE;
}

BOOL TileBehavior_IsEscalator(u8 behavior) {
    return behavior == TILE_BEHAVIOR_ESCALATOR;
}

BOOL TileBehavior_IsWarpStairsEast(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_STAIRS_EAST;
}

BOOL TileBehavior_IsWarpStairsWest(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_STAIRS_WEST;
}

BOOL TileBehavior_IsIce(u8 behavior) {
    return behavior == TILE_BEHAVIOR_ICE;
}

BOOL TileBehavior_IsRockClimbNorthSouth(u8 behavior) {
    return behavior == TILE_BEHAVIOR_ROCK_CLIMB_N_S;
}

BOOL TileBehavior_IsRockClimbEastWest(u8 behavior) {
    return behavior == TILE_BEHAVIOR_ROCK_CLIMB_E_W;
}

BOOL TileBehavior_IsSmallBookshelf1(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SMALL_BOOKSHELF_1;
}

BOOL TileBehavior_IsSmallBookshelf2(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SMALL_BOOKSHELF_2;
}

BOOL TileBehavior_IsBookshelf1(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BOOKSHELF_1;
}

BOOL TileBehavior_IsBookshelf2(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BOOKSHELF_2;
}

BOOL TileBehavior_IsTrashCan(u8 behavior) {
    return behavior == TILE_BEHAVIOR_TRASH_CAN;
}

BOOL TileBehavior_IsMartShelf1(u8 behavior) {
    return behavior == TILE_BEHAVIOR_MART_SHELF_1;
}

BOOL TileBehavior_IsMartShelf2(u8 behavior) {
    return behavior == TILE_BEHAVIOR_MART_SHELF_2;
}

BOOL TileBehavior_IsMartShelf3(u8 behavior) {
    return behavior == TILE_BEHAVIOR_MART_SHELF_3;
}

BOOL TileBehavior_IsMud(u8 behavior) {
    return behavior == TILE_BEHAVIOR_MUD || behavior == TILE_BEHAVIOR_MUD_DEEP;
}

BOOL TileBehavior_IsDeepMud(u8 behavior) {
    return behavior == TILE_BEHAVIOR_MUD_DEEP;
}

BOOL TileBehavior_IsMudWithGrass(u8 behavior) {
    return behavior == TILE_BEHAVIOR_MUD_WITH_GRASS || behavior == TILE_BEHAVIOR_MUD_DEEP_WITH_GRASS;
}

BOOL TileBehavior_IsDeepMudWithGrass(u8 behavior) {
    return behavior == TILE_BEHAVIOR_MUD_DEEP_WITH_GRASS;
}

BOOL TileBehavior_IsSnow(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SNOW_DEEP
        || behavior == TILE_BEHAVIOR_SNOW_DEEPER
        || behavior == TILE_BEHAVIOR_SNOW_DEEPEST
        || behavior == TILE_BEHAVIOR_SNOW_SHALLOW;
}

BOOL TileBehavior_IsShallowSnow(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SNOW_SHALLOW;
}

BOOL TileBehavior_IsDeepSnow(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SNOW_DEEP;
}

BOOL TileBehavior_IsDeeperSnow(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SNOW_DEEPER;
}

BOOL TileBehavior_IsDeepestSnow(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SNOW_DEEPEST;
}

BOOL TileBehavior_IsBikeSlope(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BIKE_SLOPE_TOP || behavior == TILE_BEHAVIOR_BIKE_SLOPE_BOTTOM;
}

BOOL TileBehavior_IsBikeSlopeTop(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BIKE_SLOPE_TOP;
}

BOOL TileBehavior_IsBikeSlopeBottom(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BIKE_SLOPE_BOTTOM;
}

BOOL TileBehavior_IsBikeRampEastward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BIKE_RAMP_EASTWARD;
}

BOOL TileBehavior_IsBikeRampWestward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BIKE_RAMP_WESTWARD;
}

BOOL TileBehavior_IsCaveFloor(u8 behavior) {
    return behavior == TILE_BEHAVIOR_CAVE_FLOOR;
}

BOOL TileBehavior_IsWaterfall(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WATERFALL;
}

BOOL TileBehavior_IsBikeParking(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BIKE_PARKING;
}

BOOL TileBehavior_BlocksMovementNorthward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BLOCK_NORTHWARD
        || behavior == TILE_BEHAVIOR_BLOCK_NORTH_AND_EAST
        || behavior == TILE_BEHAVIOR_BLOCK_NORTH_AND_WEST
        || behavior == TILE_BEHAVIOR_BLOCK_NORTH_AND_SOUTH;
}

BOOL TileBehavior_BlocksMovementSouthward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BLOCK_SOUTHWARD
        || behavior == TILE_BEHAVIOR_BLOCK_SOUTH_AND_EAST
        || behavior == TILE_BEHAVIOR_BLOCK_SOUTH_AND_WEST
        || behavior == TILE_BEHAVIOR_BLOCK_NORTH_AND_SOUTH;
}

BOOL TileBehavior_BlocksMovementWestward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BLOCK_WESTWARD
        || behavior == TILE_BEHAVIOR_BLOCK_NORTH_AND_WEST
        || behavior == TILE_BEHAVIOR_BLOCK_SOUTH_AND_WEST
        || behavior == TILE_BEHAVIOR_BLOCK_EAST_AND_WEST;
}

BOOL TileBehavior_BlocksMovementEastward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BLOCK_EASTWARD
        || behavior == TILE_BEHAVIOR_BLOCK_NORTH_AND_EAST
        || behavior == TILE_BEHAVIOR_BLOCK_SOUTH_AND_EAST
        || behavior == TILE_BEHAVIOR_BLOCK_EAST_AND_WEST;
}

BOOL TileBehavior_IsPuddle(u8 behavior) {
    return behavior == TILE_BEHAVIOR_PUDDLE || behavior == TILE_BEHAVIOR_PUDDLE_NO_SPLASHING;
}

BOOL TileBehavior_HasEncounters(u8 behavior) {
    return (sTileBehaviorFlags[behavior] & TILE_BEHAVIOR_FLAG_ENCOUNTER) != 0;
}

BOOL TileBehavior_IsTV(u8 behavior) {
    return behavior == TILE_BEHAVIOR_TV;
}

BOOL TileBehavior_HasReflectiveSurface(u8 behavior) {
    return behavior == TILE_BEHAVIOR_PUDDLE
        || behavior == TILE_BEHAVIOR_WATER_RIVER
        || behavior == TILE_BEHAVIOR_PUDDLE_NO_SPLASHING
        || behavior == TILE_BEHAVIOR_REFLECTIVE;
}

BOOL TileBehavior_IsSlideEastward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SLIDE_EASTWARD;
}

BOOL TileBehavior_IsSlideWestward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SLIDE_WESTWARD;
}

BOOL TileBehavior_IsSlideNorthward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SLIDE_NORTHWARD;
}

BOOL TileBehavior_IsSlideSouthward(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SLIDE_SOUTHWARD;
}

BOOL TileBehavior_IsWarpPanel(u8 behavior) {
    return behavior == TILE_BEHAVIOR_WARP_PANEL;
}

BOOL TileBehavior_IsBridgeStart(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BRIDGE_START;
}

BOOL TileBehavior_IsBridge(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BRIDGE
        || behavior == TILE_BEHAVIOR_BRIDGE_OVER_CAVE
        || behavior == TILE_BEHAVIOR_BRIDGE_OVER_WATER
        || behavior == TILE_BEHAVIOR_BRIDGE_OVER_SAND
        || behavior == TILE_BEHAVIOR_BRIDGE_OVER_SNOW
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_ENCS
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_WATER
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_SAND
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_ENCS
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_WATER
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_SAND;
}

BOOL TileBehavior_IsBridgeOverWater(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BRIDGE_OVER_WATER
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_WATER
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_WATER;
}

BOOL TileBehavior_IsBridgeOverSand(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BRIDGE_OVER_SAND
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_SAND
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_SAND;
}

BOOL TileBehavior_IsBridgeOverSnow(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BRIDGE_OVER_SNOW;
}

BOOL TileBehavior_IsBikeBridgeNorthSouth(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_ENCS
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_WATER
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_N_S_OVER_SAND;
}

BOOL TileBehavior_IsBikeBridgeEastWest(u8 behavior) {
    return behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_ENCS
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_WATER
        || behavior == TILE_BEHAVIOR_BIKE_BRIDGE_E_W_OVER_SAND;
}

BOOL TileBehavior_IsNull(u8 behavior) {
    return behavior == TILE_BEHAVIOR_MAX;
}

u8 GetNullTileBehaviorID(void) {
    return TILE_BEHAVIOR_MAX;
}

BOOL TileBehavior_IsReflective(u8 behavior) {
    return behavior == TILE_BEHAVIOR_REFLECTIVE || behavior == TILE_BEHAVIOR_PUDDLE_NO_SPLASHING;
}

BOOL TileBehavior_IsSnowWithShadows(u8 behavior) {
    return behavior == TILE_BEHAVIOR_SNOW_WITH_SHADOWS;
}

BOOL TileBehavior_ForbidsExplorationKit(u8 behavior) {
    return behavior == TILE_BEHAVIOR_FORBIDS_EXPLORATION_KIT;
}
