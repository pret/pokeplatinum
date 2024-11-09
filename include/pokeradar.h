#ifndef POKEPLATINUM_POKERADAR_H
#define POKEPLATINUM_POKERADAR_H

#include "field/field_system_decl.h"

#include "field_task.h"

typedef struct RadarChain RadarChain;

#define NUM_GRASS_PATCHES   4
#define RADAR_BATTERY_STEPS 50

enum PatchShakeType {
    PATCH_SHAKE_SOFT = 0,
    PATCH_SHAKE_HARD = 1
};

RadarChain *RadarChain_Init(const int heapID);
void RadarChain_Free(RadarChain *chain);
void RadarChain_Clear(RadarChain *chain);
BOOL RadarSpawnPatches(FieldSystem *fieldSystem, const int param1, const int param2, RadarChain *chain);
void SetupGrassPatches(FieldSystem *fieldSystem, const int param1, RadarChain *chain);
void sub_02069638(FieldSystem *fieldSystem, RadarChain *chain);
BOOL sub_02069690(RadarChain *chain);
int sub_020696DC(const int param0, const int param1, FieldSystem *fieldSystem, RadarChain *chain, int *param4, BOOL *param5, BOOL *param6);
void SetRadarMon(RadarChain *chain, const int species, const int level);
void GetRadarMon(RadarChain *chain, int *species, int *level);
const BOOL sub_02069798(const RadarChain *chain);
void sub_0206979C(FieldSystem *fieldSystem);
BOOL GetRadarChainActive(const RadarChain *chain);
BOOL RefreshRadarChain(FieldTask *param0);
void sub_02069B74(FieldSystem *fieldSystem);
int GetChainCount(FieldSystem *fieldSystem);
void RadarChargeStep(FieldSystem *fieldSystem);

#endif // POKEPLATINUM_POKERADAR_H
