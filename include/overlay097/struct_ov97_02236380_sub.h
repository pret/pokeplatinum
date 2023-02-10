#ifndef POKEPLATINUM_STRUCT_OV97_02236380_SUB_H
#define POKEPLATINUM_STRUCT_OV97_02236380_SUB_H

typedef struct {
    u16 unk_00;
    u16 unk_02;
    u32 unk_04;
    u8 unk_08;
    u8 unk_09;
    u16 unk_0A;
} PokemonGBASubstruct0;

typedef struct {
    u16 unk_00[4];
    u8 unk_08[4];
} PokemonGBASubstruct1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    u8 unk_0B;
} PokemonGBASubstruct2;

typedef struct {
    u32 unk_00_0 : 8;
    u32 unk_00_8 : 8;
    u32 unk_00_16 : 7;
    u32 unk_00_23 : 4;
    u32 unk_00_27 : 4;
    u32 unk_00_31 : 1;
    u32 unk_04_0 : 5;
    u32 unk_04_5 : 5;
    u32 unk_04_10 : 5;
    u32 unk_04_15 : 5;
    u32 unk_04_20 : 5;
    u32 unk_04_25 : 5;
    u32 unk_04_30 : 1;
    u32 unk_04_31 : 1;
    u32 unk_08_0 : 3;
    u32 unk_08_3 : 3;
    u32 unk_08_6 : 3;
    u32 unk_08_9 : 3;
    u32 unk_08_12 : 3;
    u32 unk_08_15 : 1;
    u32 unk_08_16 : 1;
    u32 unk_08_17 : 1;
    u32 unk_08_18 : 1;
    u32 unk_08_19 : 1;
    u32 unk_08_20 : 1;
    u32 unk_08_21 : 1;
    u32 unk_08_22 : 1;
    u32 unk_08_23 : 1;
    u32 unk_08_24 : 1;
    u32 unk_08_25 : 1;
    u32 unk_08_26 : 1;
    u32 unk_08_27 : 4;
    u32 unk_08_31 : 1;
} PokemonGBASubstruct3;

#endif // POKEPLATINUM_STRUCT_OV97_02236380_SUB_H
