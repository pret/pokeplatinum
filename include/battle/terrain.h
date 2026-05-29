#ifndef POKEPLATINUM_TERRAIN_H
#define POKEPLATINUM_TERRAIN_H

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

void Terrain_LoadResources(Terrain *terrain);
void Terrain_CreateSprite(Terrain *terrain);
void Terrain_DeleteSprite(Terrain *terrain);
void Terrain_UnloadResources(Terrain *terrain);
void Terrain_SetVisibility(Terrain *terrain, int draw);
void Terrain_Init(Terrain *terrain, BattleSystem *battleSys, u16 side, int terrainType);
void Terrain_Destroy(Terrain *terrain);

#endif // POKEPLATINUM_TERRAIN_H
