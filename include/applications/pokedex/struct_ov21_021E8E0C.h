#ifndef POKEPLATINUM_STRUCT_OV21_021E8E0C_H
#define POKEPLATINUM_STRUCT_OV21_021E8E0C_H

#include "bg_window.h"
#include "palette.h"
#include "pokemon.h"

typedef struct PokedexEntryScreenParams {
    BgConfig *bgConfig;
    PaletteData *plttData;
    PokemonSpriteManager *monSpriteMan;
    enum HeapID heapID;
    Pokemon *mon;
    int hasNationalDex;
} PokedexEntryScreenParams;

#endif // POKEPLATINUM_STRUCT_OV21_021E8E0C_H
