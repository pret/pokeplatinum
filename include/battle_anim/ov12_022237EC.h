#ifndef POKEPLATINUM_OV12_022237EC_H
#define POKEPLATINUM_OV12_022237EC_H

#include "narc.h"
#include "particle_system.h"
#include "spl.h"

ParticleSystem *BattleParticleUtil_CreateParticleSystem(enum HeapId heapID, int narcMemberIndex, BOOL uploadResImmediately);
ParticleSystem *BattleParticleUtil_CreateParticleSystemEx(enum HeapId heapID, enum NarcID narcID, int memberIndex, BOOL uploadResImmediately);
void *BattleParticleUtil_ReadMemberFromNARC(NARC *param0, int param1, enum HeapId heapID);
ParticleSystem *ov12_0222384C(NARC *param0, enum HeapId heapID, int param2, BOOL param3);
SPLEmitter *BattleParticleUtil_CreateEmitter(ParticleSystem *param0, int param1, int param2, void *param3);
void BattleParticleUtil_FreeParticleSystem(ParticleSystem *param0);

#endif // POKEPLATINUM_OV12_022237EC_H
