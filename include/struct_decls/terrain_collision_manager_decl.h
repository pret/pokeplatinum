#ifndef POKEPLATINUM_TERRAIN_COLLISION_MANAGER_DECL_H
#define POKEPLATINUM_TERRAIN_COLLISION_MANAGER_DECL_H

#include "field/field_system_decl.h"

typedef const fx32 (*GetTerrainHeightFunc)(const FieldSystem *, const fx32, const fx32, const fx32, u8 *);
typedef BOOL (*GetTerrainAttributeFunc)(const FieldSystem *, const int, const int, u16 *);

typedef struct TerrainCollisionManager_t {
    GetTerrainHeightFunc getHeightFunc;
    GetTerrainAttributeFunc getAttrFunc;
} TerrainCollisionManager;

#endif // POKEPLATINUM_TERRAIN_COLLISION_MANAGER_DECL_H
