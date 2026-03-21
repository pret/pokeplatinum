#ifndef POKEPLATINUM_FRONTIER_PARTICLE_SYSTEM_H
#define POKEPLATINUM_FRONTIER_PARTICLE_SYSTEM_H

#include "particle_system.h"

#define NUM_FRONTIER_PARTICLE_SYSTEMS 8

typedef struct FrontierParticleSystem {
    ParticleSystem *particleSys[NUM_FRONTIER_PARTICLE_SYSTEMS];
    u16 heapID;
} FrontierParticleSystem;

FrontierParticleSystem *FrontierParticleSystem_New(enum HeapID heapID);
void FrontierParticleSystem_Free(FrontierParticleSystem *fps);
BOOL FrontierParticleSystem_Update(void);

ParticleSystem *FrontierParticleSystem_NewParticleSystem(FrontierParticleSystem *fps, int index, int narcIdx, enum CameraProjection projection);
void FrontierParticleSystem_FreeParticleSystem(FrontierParticleSystem *fps, int index);
ParticleSystem *FrontierParticleSystem_GetParticleSystem(FrontierParticleSystem *fps, int index);
BOOL FrontierParticleSystem_NoActiveEmitters(FrontierParticleSystem *fps);

#endif // POKEPLATINUM_FRONTIER_PARTICLE_SYSTEM_H
