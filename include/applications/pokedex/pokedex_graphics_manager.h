#ifndef POKEPLATINUM_POKEDEX_GRAPHICS_MANAGER_H
#define POKEPLATINUM_POKEDEX_GRAPHICS_MANAGER_H

#include "heap.h"

typedef struct PokedexGraphicsManager {
    int state;
    enum HeapID heapID;
    void *pageGraphics;
} PokedexGraphicsManager;

#endif // POKEPLATINUM_POKEDEX_GRAPHICS_MANAGER_H
