#ifndef POKEPLATINUM_INFOMAIN_STATE_H
#define POKEPLATINUM_INFOMAIN_STATE_H

#include "applications/pokedex/pokedex_sort_data.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

typedef struct InfoMainState {
    int *displayWorkData; // Work data pointer set from ov21_021D138C
    PokedexSortData *sortData; // Pokemon sort/listing data
    int displayPositionX; // X coordinate for display position animation
    int displayPositionY; // Y coordinate for display position animation
    const PokedexScreenManager *screenManager; // Screen manager reference
    enum AnimationMode animationMode;
    int entryOffset; // Dex entry offset (0 = current entry)
    BOOL playCry; // Flag to play Pokemon cry
} InfoMainState;

#endif // POKEPLATINUM_INFOMAIN_STATE_H
