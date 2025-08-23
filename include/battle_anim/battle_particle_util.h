#ifndef POKEPLATINUM_BATTLE_PARTICLE_UTIL_H
#define POKEPLATINUM_BATTLE_PARTICLE_UTIL_H

#include "narc.h"
#include "particle_system.h"

ParticleSystem *BattleParticleUtil_CreateParticleSystem(enum HeapID heapID, int narcMemberIndex, BOOL uploadResImmediately);
ParticleSystem *BattleParticleUtil_CreateParticleSystemEx(enum HeapID heapID, enum NarcID narcID, int memberIndex, BOOL uploadResImmediately);
void *BattleParticleUtil_ReadMemberFromNARC(NARC *param0, int param1, enum HeapID heapID);
ParticleSystem *ov12_0222384C(NARC *param0, enum HeapID heapID, int param2, BOOL param3);
SPLEmitter *BattleParticleUtil_CreateEmitter(ParticleSystem *param0, int param1, int param2, void *param3);
void BattleParticleUtil_FreeParticleSystem(ParticleSystem *param0);

#endif // POKEPLATINUM_BATTLE_PARTICLE_UTIL_H
