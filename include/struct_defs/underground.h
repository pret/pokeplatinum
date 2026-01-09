#ifndef POKEPLATINUM_STRUCT_UNDERGROUND_H
#define POKEPLATINUM_STRUCT_UNDERGROUND_H

#include "constants/string.h"

#include "struct_defs/underground_record.h"

#include "overlay023/underground_defs.h"

#include "charcode.h"

#define MAX_CAPTURED_FLAG_RECORDS 5

typedef struct PlacedGood {
    u8 x;
    u8 z;
    u8 goodID;
} PlacedGood;

typedef struct SecretBaseBoulder {
    u8 x;
    u8 z;
} SecretBaseBoulder;

typedef struct SecretBase {
    PlacedGood placedGoods[MAX_PLACED_GOODS];
    SecretBaseBoulder boulders[MAX_BASE_BOULDERS];
    UndergroundRecord undergroundRecord;
    u16 entranceX;
    u16 entranceZ;
    u8 entranceDir;
    u8 active;
} SecretBase;

typedef struct Underground {
    SecretBase secretBase;
    u32 randomSeed;
    s32 unk_94;
    u8 unk_98;
    u8 unused; // Set but never read
    u32 registeredFlagOwnerIDs[MAX_CAPTURED_FLAG_RECORDS];
    charcode_t registeredFlagOwnerNames[MAX_CAPTURED_FLAG_RECORDS][TRAINER_NAME_LEN + 1];
    u8 registeredFlagOwnerRegionCodes[MAX_CAPTURED_FLAG_RECORDS];
    u8 registeredFlagOwnerGameCodes[MAX_CAPTURED_FLAG_RECORDS];
    u8 registeredFlagOwnerIndex;
    u8 spawnedTrapIDs[MAX_SPAWNED_TRAPS];
    u8 spawnedTrapCoordinates[MAX_SPAWNED_TRAPS][3];
    u8 unk_20B[255][3];
    u8 placedTrapIDs[MAX_PLACED_TRAPS];
    u8 placedTrapCoordinates[MAX_PLACED_TRAPS][3];
    u8 unk_548[MAX_PLACED_TRAPS];
    u8 buriedSphereTypes[MAX_BURIED_SPHERES];
    u8 buriedSphereGrowth[MAX_BURIED_SPHERES];
    u8 buriedSphereInitialSizes[MAX_BURIED_SPHERES];
    u8 buriedSphereCoordinates[MAX_BURIED_SPHERES][3];
    u8 unk_7B0[88];
    u32 minedPlates;
    u8 goodsPC[MAX_GOODS_PC_SLOTS];
    u8 traps[MAX_TRAP_SLOTS];
    u8 goodsBag[MAX_GOODS_BAG_SLOTS];
    u8 treasure[MAX_TREASURE_SLOTS];
    u8 sphereTypes[MAX_SPHERE_SLOTS];
    u8 sphereSizes[MAX_SPHERE_SLOTS];
    u8 placedGoodSlots[MAX_PLACED_GOODS];
    u8 stepCount;
    u8 unk_9AC_0 : 4;
    u8 hasMined : 4;
} Underground;

#endif // POKEPLATINUM_STRUCT_UNDERGROUND_H
