#ifndef POKEPLATINUM_STRUCT_PARTY_H
#define POKEPLATINUM_STRUCT_PARTY_H

#include "struct_defs/struct_02073C74.h"

typedef struct Party {
    int capacity;
    int currentCount;
    UnkStruct_02073C74 pokemon[6];
} Party;

#endif // POKEPLATINUM_STRUCT_PARTY_H
