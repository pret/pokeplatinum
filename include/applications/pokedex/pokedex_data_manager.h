#ifndef POKEPLATINUM_POKEDEX_DATA_MANAGER_H
#define POKEPLATINUM_POKEDEX_DATA_MANAGER_H

#include "constants/heap.h"

typedef struct PokedexDataManager {
    int state;
    enum HeapID heapID;
    void *pageData;
    BOOL exit;
    BOOL unchanged;
} PokedexDataManager;

#endif // POKEPLATINUM_POKEDEX_DATA_MANAGER_H
