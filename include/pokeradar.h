#ifndef POKEPLATINUM_POKERADAR_H
#define POKEPLATINUM_POKERADAR_H

#include "struct_decls/struct_0203CDB0_decl.h"
#include "struct_decls/struct_020508D4_decl.h"
#include "struct_decls/struct_0206942C_decl.h"

RadarChain * CreateRadarChain(const int param0);
void FreeRadarChain(RadarChain * chain);
void ClearRadarChain(RadarChain * chain);
BOOL RadarSpawnPatches(UnkStruct_0203CDB0 * param0, const int param1, const int param2, RadarChain * chain);
void SetupGrassPatches(UnkStruct_0203CDB0 * param0, const int param1, RadarChain * chain);
void sub_02069638(UnkStruct_0203CDB0 * param0, RadarChain * chain);
BOOL sub_02069690(RadarChain * chain);
int sub_020696DC(const int param0, const int param1, UnkStruct_0203CDB0 * param2, RadarChain * chain, int * param4, BOOL * param5, BOOL * param6);
void SetRadarMon(RadarChain * chain, const int species, const int level);
void GetRadarMon(RadarChain * chain, int * species, int * level);
const BOOL sub_02069798(const RadarChain * chain);
void sub_0206979C(UnkStruct_0203CDB0 * param0);
BOOL GetRadarChainActive(const RadarChain * chain);
BOOL RefreshRadarChain(UnkStruct_020508D4 * param0);
void sub_02069B74(UnkStruct_0203CDB0 * param0);
int GetChainCount(UnkStruct_0203CDB0 * param0);
void RadarChargeStep(UnkStruct_0203CDB0 * param0);

#endif // POKEPLATINUM_POKERADAR_H
