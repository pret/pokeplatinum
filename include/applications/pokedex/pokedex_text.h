#ifndef POKEPLATINUM_POKEDEX_TEXT_H
#define POKEPLATINUM_POKEDEX_TEXT_H

#include "constants/heap.h"

#include "strbuf.h"

void PokedexText_Free(Strbuf *strbuf);
int PokedexText_ForeignLanguage(int languageIndex);
Strbuf *PokedexText_NameNumber(int species, int language, enum HeapID heapID);
Strbuf *PokedexText_Category(int species, int language, enum HeapID heapID);
Strbuf *PokedexText_DexEntry(int species, int language, int entryOffset, enum HeapID heapID);

#endif // POKEPLATINUM_POKEDEX_TEXT_H
