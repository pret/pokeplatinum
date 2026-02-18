#ifndef POKEPLATINUM_POKEDEX_ENTRY_DISPLAY_H
#define POKEPLATINUM_POKEDEX_ENTRY_DISPLAY_H

#include "applications/pokedex/pokedex_app.h"
#include "applications/pokedex/struct_ov21_021E68F4.h"

#include "heap.h"

void PokedexEntryDisplay_InitScreen(PokedexScreenManager *param0, PokedexApp *param1, enum HeapID heapID);
void PokedexEntryDisplay_DeinitScreen(PokedexScreenManager *param0);
void PokedexEntryDisplay_SetDisplayPosition(PokedexScreenManager *param0, int param1, int param2);
void PokedexEntryDisplay_SetAnimationMode(PokedexScreenManager *param0, int param1);
BOOL PokedexEntryDisplay_GetScreenStateCount(PokedexScreenManager *param0);
BOOL PokedexEntryDisplay_SetDisplayMode(PokedexScreenManager *param0, int param1);
void PokedexEntryDisplay_SetLanguage(PokedexScreenManager *param0, int param1);

#endif // POKEPLATINUM_POKEDEX_ENTRY_DISPLAY_H
