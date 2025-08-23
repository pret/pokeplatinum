#ifndef POKEPLATINUM_APPLICATIONS_POKEDEX_CRYSUB_H
#define POKEPLATINUM_APPLICATIONS_POKEDEX_CRYSUB_H

#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "heap.h"

void CrySub_Init(PokedexScreenManager *screenMan, PokedexApp *pokedexApp, enum HeapId heapID);
void CrySub_Free(PokedexScreenManager *screenMan);
int CrySub_GetPitch(const PokedexScreenManager *screenMan);

#endif // POKEPLATINUM_APPLICATIONS_POKEDEX_CRYSUB_H
