#ifndef POKEPLATINUM_POKEDEX_GRAPHICS_MANAGER_H
#define POKEPLATINUM_POKEDEX_GRAPHICS_MANAGER_H

#include "heap.h"

typedef struct {
    int state;
    enum HeapId heapID;
    void *pageGraphics;
} PokedexGraphicsManager;

#endif // POKEPLATINUM_POKEDEX_GRAPHICS_MANAGER_H
