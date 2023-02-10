#ifndef POKEPLATINUM_STRUCT_OV97_0223685C_H
#define POKEPLATINUM_STRUCT_OV97_0223685C_H

#include "overlay097/struct_ov97_02236380_sub.h"

// Number of bytes in the largest Pokémon substruct.
// They are assumed to be the same size, and will be padded to
// the largest size by the union.
// By default they are all 12 bytes.
#define NUM_SUBSTRUCT_BYTES (MATH_MAX(sizeof(PokemonGBASubstruct0),     \
                             MATH_MAX(sizeof(PokemonGBASubstruct1),     \
                             MATH_MAX(sizeof(PokemonGBASubstruct2),     \
                                      sizeof(PokemonGBASubstruct3)))))

typedef union
{
    PokemonGBASubstruct0 type0;
    PokemonGBASubstruct1 type1;
    PokemonGBASubstruct2 type2;
    PokemonGBASubstruct3 type3;
    u16 raw[NUM_SUBSTRUCT_BYTES / 2]; // /2 because it's u16, not u8
} PokemonGBASubstruct;

typedef struct {
    u32 personality;
    u32 unk_04;
    u8 unk_08[10];
    u8 unk_12;
    u8 unk_13_0 : 1;
    u8 unk_13_1 : 1;
    u8 unk_13_2 : 1;
    u8 unk_13_3 : 1;
    u8 unk_13_4 : 4;
    u8 unk_14[7];
    u8 unk_1B;
    u16 unk_1C;
    u16 unk_1E;

    union
    {
        u32 raw[(NUM_SUBSTRUCT_BYTES * 4) / 4]; // *4 because there are 4 substructs, /4 because it's u32, not u8
        PokemonGBASubstruct substructs[4];
    } secure;
} BoxPokemonGBA;

#endif // POKEPLATINUM_STRUCT_OV97_0223685C_H
