#ifndef POKEPLATINUM_PARTICLE_HELPER_H
#define POKEPLATINUM_PARTICLE_HELPER_H

#include "particle_system.h"

ParticleSystem *ParticleHelper_CreateParticleSystem(enum HeapId heapID);
ParticleSystem *ov11_0221F888(enum HeapId heapID);
void ParticleHelper_FreeParticleSystem(ParticleSystem *param0);
void ParticleHelper_DrawParticleSystems(void);

#endif // POKEPLATINUM_PARTICLE_HELPER_H
