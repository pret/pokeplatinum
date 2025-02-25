#ifndef POKEPLATINUM_POKEDEX_MEMORY_H
#define POKEPLATINUM_POKEDEX_MEMORY_H

typedef struct PokedexMemory {
    u32 currentSpecies;
    u32 bootMode;
} PokedexMemory;

enum PokedexBootMode {
    POKEDEX_BOOT_REGIONAL,
    POKEDEX_BOOT_NATIONAL,
    POKEDEX_BOOT_DEFAULT
};

PokedexMemory *PokedexMemory_New(u32 heapID);
void PokedexMemory_Free(PokedexMemory *pokedexMemory);
u32 PokedexMemory_GetCurrentSpecies(const PokedexMemory *pokedexMemory);
void PokedexMemory_SetCurrentSpecies(PokedexMemory *pokedexMemory, u32 species);
u32 PokedexMemory_GetBootMode(const PokedexMemory *pokedexMemory);
void PokedexMemory_SetBootMode(PokedexMemory *pokedexMemory, u32 bootMode);

#endif // POKEPLATINUM_POKEDEX_MEMORY_H
