#ifndef POKEPLATINUM_STRUCT_PARTY_H
#define POKEPLATINUM_STRUCT_PARTY_H

#include "struct_defs/pokemon.h"

typedef struct Party {
    int capacity;
    int currentCount;
    Pokemon pokemon[6];
} Party;

#endif // POKEPLATINUM_STRUCT_PARTY_H
