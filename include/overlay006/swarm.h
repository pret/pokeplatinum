#ifndef POKEPLATINUM_SWARM_H
#define POKEPLATINUM_SWARM_H

#define NUM_SWARMS 22

u32 Swarm_GetMapId(const u32 swarm);
void Swarm_GetMapIdAndSpecies(const u32 swarm, u16 *mapIdDest, u16 *speciesDest);

#endif // POKEPLATINUM_SWARM_H
