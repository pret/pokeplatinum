#ifndef POKEPLATINUM_STRUCT_02090800_H
#define POKEPLATINUM_STRUCT_02090800_H

#include "struct_defs/struct_02090800_sub1.h"

#include "message.h"
#include "pokemon.h"
#include "string_template.h"

typedef struct {
    int heapID;
    MessageLoader *unk_04;
    StringTemplate *unk_08;
    Pokemon *unk_0C;
    BOOL unk_10;
    PokemonInfoDisplayStruct_sub1 unk_14;
    PokemonInfoDisplayStruct_sub1 unk_1C;
    PokemonInfoDisplayStruct_sub1 unk_24;
    PokemonInfoDisplayStruct_sub1 unk_2C;
    PokemonInfoDisplayStruct_sub1 unk_34;
} PokemonInfoDisplayStruct;

#endif // POKEPLATINUM_STRUCT_02090800_H
