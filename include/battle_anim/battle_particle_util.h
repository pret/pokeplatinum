#ifndef POKEPLATINUM_BATTLE_PARTICLE_UTIL_H
#define POKEPLATINUM_BATTLE_PARTICLE_UTIL_H

#include "narc.h"
#include "particle_system.h"

ParticleSystem *BattleParticleUtil_CreateParticleSystem(enum HeapID heapID, int narcMemberIndex, BOOL uploadResImmediately);
ParticleSystem *BattleParticleUtil_CreateParticleSystemEx(enum HeapID heapID, enum NarcID narcID, int memberIndex, BOOL uploadResImmediately);
void *BattleParticleUtil_ReadMemberFromNARC(NARC *narc, int memberIdx, enum HeapID heapID);
ParticleSystem *BattleParticleUtil_CreateParticleSystemFromOpenNarc(NARC *narc, enum HeapID heapID, int memberIdx, BOOL uploadImmediately);
SPLEmitter *BattleParticleUtil_CreateEmitter(ParticleSystem *ps, int resourceID, int callbackID, void *battleAnimSystemPtr);
void BattleParticleUtil_FreeParticleSystem(ParticleSystem *ps);

#endif // POKEPLATINUM_BATTLE_PARTICLE_UTIL_H
