#ifndef POKEPLATINUM_POKEDEX_FORMMAIN_H
#define POKEPLATINUM_POKEDEX_FORMMAIN_H

#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "heap.h"

void FormMain_Init(PokedexScreenManager *screenMan, PokedexApp *pokedexApp, enum HeapID heapID);
void FormMain_Free(PokedexScreenManager *screenMan);
BOOL FormMain_NextForm(PokedexScreenManager *screenMan, int formDelta);

#endif // POKEPLATINUM_POKEDEX_FORMMAIN_H
