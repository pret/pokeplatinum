#ifndef POKEPLATINUM_POKEDEX_UPDATER_H
#define POKEPLATINUM_POKEDEX_UPDATER_H

#include "overlay021/pokedex_data_function.h"
#include "overlay021/pokedex_data_manager.h"
#include "overlay021/pokedex_graphics_function.h"
#include "overlay021/pokedex_graphics_manager.h"

#include "heap.h"

typedef struct PokedexUpdater {
    void *pageData;
    void *pageGraphics;
    int state;
    PokedexDataManager dataMan;
    PokedexDataFunction dataFunc[3];
    PokedexGraphicsManager graphicsMan;
    PokedexGraphicsFunction graphicsFunc[3];
    enum HeapId heapID;
} PokedexUpdater;

#endif // POKEPLATINUM_POKEDEX_UPDATER_H
