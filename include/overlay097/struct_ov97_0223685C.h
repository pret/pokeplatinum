#ifndef POKEPLATINUM_STRUCT_OV97_0223685C_H
#define POKEPLATINUM_STRUCT_OV97_0223685C_H

#include "overlay097/struct_ov97_02236380_sub1.h"
#include "overlay097/struct_ov97_02236380_sub2.h"
#include "overlay097/struct_ov97_02236380_sub3.h"
#include "overlay097/struct_ov97_02236380_sub4.h"

typedef struct {
    u32 unk_00;
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
    u8 unk_20[sizeof(PokemonGBASubstruct0)
              + sizeof(PokemonGBASubstruct1)
              + sizeof(PokemonGBASubstruct2)
              + sizeof(PokemonGBASubstruct3)];
} BoxPokemonGBA;

#endif // POKEPLATINUM_STRUCT_OV97_0223685C_H
