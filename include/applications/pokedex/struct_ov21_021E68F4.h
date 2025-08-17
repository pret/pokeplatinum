#ifndef POKEPLATINUM_STRUCT_OV21_021E68F4_H
#define POKEPLATINUM_STRUCT_OV21_021E68F4_H

#include "applications/pokedex/pokedex_updater.h"
#include "applications/pokedex/struct_ov21_021D4660.h"

typedef struct {
    void *pageData;
    void *pageGraphics;
    PokedexDataFunction dataFunc[3];
    PokedexGraphicsFunction graphicsFunc[3];
    UnkStruct_ov21_021D4660 *screenStates;
    int numStates;
} PokedexScreenManager;

#endif // POKEPLATINUM_STRUCT_OV21_021E68F4_H
