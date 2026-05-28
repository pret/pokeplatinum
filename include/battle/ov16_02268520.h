#ifndef POKEPLATINUM_OV16_02268520_H
#define POKEPLATINUM_OV16_02268520_H

#include "struct_decls/battle_system.h"

#include "battle/struct_ov16_02268520.h"

void Terrain_LoadResources(Terrain *terrain);
void Terrain_CreateSprite(Terrain *terrain);
void Terrain_DeleteSprite(Terrain *terrain);
void Terrain_UnloadResources(Terrain *terrain);
void Terrain_SetVisibility(Terrain *terrain, int draw);
void Terrain_Init(Terrain *terrain, BattleSystem *battleSys, u16 side, int terrainType);
void Terrain_Destroy(Terrain *terrain);

#endif // POKEPLATINUM_OV16_02268520_H
