#ifndef POKEPLATINUM_POKEMON_SUBSTRUCT_1_H
#define POKEPLATINUM_POKEMON_SUBSTRUCT_1_H

typedef struct PokemonSubstruct1_t {
    u16 unk_00[4];
    u8 unk_08[4];
    u8 unk_0C[4];
    u32 unk_10_0 : 5;
    u32 unk_10_5 : 5;
    u32 unk_10_10 : 5;
    u32 unk_10_15 : 5;
    u32 unk_10_20 : 5;
    u32 unk_10_25 : 5;
    u32 unk_10_30 : 1;
    u32 unk_10_31 : 1;
    u32 unk_14;
    u8 fatefulEncounter:1;
    u8 unk_18_1 : 2;
    u8 form:5;
    u8 unk_19;
    u16 unk_1A;
    u16 unk_1C;
    u16 unk_1E;
} PokemonSubstruct1;

#endif // POKEPLATINUM_POKEMON_SUBSTRUCT_1_H
