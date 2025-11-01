#ifndef POKEPLATINUM_POKEDEX_FORMSUB_H
#define POKEPLATINUM_POKEDEX_FORMSUB_H

#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "heap.h"

void FormSub_Init(PokedexScreenManager *screenMan, PokedexApp *pokedexApp, enum HeapID heapID);
void FormSub_Free(PokedexScreenManager *screenMan);

#endif // POKEPLATINUM_POKEDEX_FORMSUB_H
