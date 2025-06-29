#ifndef POKEPLATINUM_STRUCT_UNDERGROUND_DATA_H
#define POKEPLATINUM_STRUCT_UNDERGROUND_DATA_H

#include "struct_defs/struct_02029894.h"

typedef struct UndergroundData {
    UnkStruct_02029894 unk_00;
    u32 randomSeed;
    s32 unk_94;
    u8 unk_98;
    u8 unused; // Set but never read
    u32 unk_9C[5];
    u16 unk_B0[5][8];
    u8 unk_100[5];
    u8 unk_105[5];
    u8 unk_10A;
    u8 unk_10B[64];
    u8 unk_14B[64][3];
    u8 unk_20B[255][3];
    u8 unk_508[16];
    u8 unk_518[16][3];
    u8 unk_548[16];
    u8 unk_558[100];
    u8 unk_5BC[100];
    u8 unk_620[100];
    u8 unk_684[100][3];
    u8 unk_7B0[88];
    u32 minedPlates;
    u8 unk_80C[200];
    u8 unk_8D4[40];
    u8 unk_8FC[40];
    u8 treasure[40];
    u8 spheres[40];
    u8 sphereSizes[40];
    u8 unk_99C[15];
    u8 stepCount;
    u8 unk_9AC_0 : 4;
    u8 hasMined : 4;
} UndergroundData;

#endif // POKEPLATINUM_STRUCT_UNDERGROUND_DATA_H
