#ifndef POKEPLATINUM_STRUCT_UNDERGROUND_H
#define POKEPLATINUM_STRUCT_UNDERGROUND_H

#include "constants/string.h"

#include "struct_defs/struct_02029894.h"

#include "overlay023/underground_defs.h"

#include "charcode.h"

typedef struct Underground {
    UnkStruct_02029894 unk_00;
    u32 randomSeed;
    s32 unk_94;
    u8 unk_98;
    u8 unused; // Set but never read
    u32 unk_9C[5];
    charcode_t unk_B0[5][TRAINER_NAME_LEN + 1];
    u8 unk_100[5];
    u8 unk_105[5];
    u8 unk_10A;
    u8 unk_10B[64];
    u8 unk_14B[64][3];
    u8 unk_20B[255][3];
    u8 unk_508[16];
    u8 unk_518[16][3];
    u8 unk_548[16];
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
