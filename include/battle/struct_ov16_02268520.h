#ifndef POKEPLATINUM_STRUCT_OV16_02268520_H
#define POKEPLATINUM_STRUCT_OV16_02268520_H

#include "struct_decls/battle_system.h"

#include "sprite_system.h"

// This is the circular platform that the battler sprites stand on
typedef struct Terrain {
    ManagedSprite *managedSprite;
    BattleSystem *battleSys;
    u8 side;
    u8 terrainType;
    s16 unused_0A;
    s16 unused_0C;
} Terrain;

#endif // POKEPLATINUM_STRUCT_OV16_02268520_H
