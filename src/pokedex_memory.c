#include "pokedex_memory.h"

#include <nitro.h>
#include <string.h>

#include "heap.h"

PokedexMemory *PokedexMemory_New(enum HeapId heapID)
{
    PokedexMemory *pokedexMemory = Heap_AllocFromHeap(heapID, sizeof(PokedexMemory));
    memset(pokedexMemory, 0, sizeof(PokedexMemory));
    pokedexMemory->bootMode = POKEDEX_BOOT_DEFAULT;
    return pokedexMemory;
}

void PokedexMemory_Free(PokedexMemory *pokedexMemory)
{
    Heap_FreeToHeap(pokedexMemory);
}

u32 PokedexMemory_GetCurrentSpecies(const PokedexMemory *pokedexMemory)
{
    return pokedexMemory->currentSpecies;
}

void PokedexMemory_SetCurrentSpecies(PokedexMemory *pokedexMemory, u32 species)
{
    pokedexMemory->currentSpecies = species;
}

u32 PokedexMemory_GetBootMode(const PokedexMemory *pokedexMemory)
{
    return pokedexMemory->bootMode;
}

void PokedexMemory_SetBootMode(PokedexMemory *pokedexMemory, u32 bootMode)
{
    pokedexMemory->bootMode = bootMode;
}
