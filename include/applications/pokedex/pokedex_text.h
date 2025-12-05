#ifndef POKEPLATINUM_POKEDEX_TEXT_H
#define POKEPLATINUM_POKEDEX_TEXT_H

#include "constants/heap.h"

#include "string_gf.h"

void PokedexText_Free(String *string);
int PokedexText_ForeignLanguage(int languageIndex);
String *PokedexText_NameNumber(int species, int language, enum HeapID heapID);
String *PokedexText_Category(int species, int language, enum HeapID heapID);
String *PokedexText_DexEntry(int species, int language, int entryOffset, enum HeapID heapID);

#endif // POKEPLATINUM_POKEDEX_TEXT_H
