#ifndef POKEPLATINUM_POKERADAR_H
#define POKEPLATINUM_POKERADAR_H

#include "struct_decls/struct_0203CDB0_decl.h"
#include "struct_decls/struct_020508D4_decl.h"

typedef struct RadarChain RadarChain;

#define NUM_GRASS_PATCHES 4
#define RADAR_BATTERY_STEPS 50

enum PatchShakeType {
    PATCH_SHAKE_SOFT = 0,
    PATCH_SHAKE_HARD = 1
};

RadarChain *RadarChain_Init(const int heapID);
void RadarChain_Free(RadarChain *chain);
void RadarChain_Clear(RadarChain *chain);
BOOL RadarSpawnPatches(FieldSystem *param0, const int param1, const int param2, RadarChain *chain);
void SetupGrassPatches(FieldSystem *param0, const int param1, RadarChain *chain);
void sub_02069638(FieldSystem *param0, RadarChain *chain);
BOOL sub_02069690(RadarChain *chain);
int sub_020696DC(const int param0, const int param1, FieldSystem *param2, RadarChain *chain, int *param4, BOOL *param5, BOOL *param6);
void SetRadarMon(RadarChain *chain, const int species, const int level);
void GetRadarMon(RadarChain *chain, int *species, int *level);
const BOOL sub_02069798(const RadarChain *chain);
void sub_0206979C(FieldSystem *param0);
BOOL GetRadarChainActive(const RadarChain *chain);
BOOL RefreshRadarChain(UnkStruct_020508D4 *param0);
void sub_02069B74(FieldSystem *param0);
int GetChainCount(FieldSystem *param0);
void RadarChargeStep(FieldSystem *param0);

#endif // POKEPLATINUM_POKERADAR_H
