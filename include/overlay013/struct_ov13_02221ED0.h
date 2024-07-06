#ifndef POKEPLATINUM_STRUCT_OV13_02221ED0_H
#define POKEPLATINUM_STRUCT_OV13_02221ED0_H

#include "overlay013/struct_ov13_022236B8.h"

#include "pokemon.h"

typedef struct {
    Pokemon *unk_00;
    u16 unk_04;
    u16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u16 unk_12;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16_0 : 7;
    u8 unk_16_7 : 1;
    u8 unk_17_0 : 3;
    u8 unk_17_3 : 4;
    u8 unk_17_7 : 1;
    u16 unk_18;
    u16 unk_1A;
    u32 unk_1C;
    u32 unk_20;
    u32 unk_24;
    u8 unk_28;
    u8 unk_29;
    u8 unk_2A;
    u8 unk_2B;
    u8 unk_2C;
    u8 unk_2D;
    u8 unk_2E;
    UnkStruct_ov13_022236B8 unk_30[4];
} UnkStruct_ov13_02221ED0;

#endif // POKEPLATINUM_STRUCT_OV13_02221ED0_H
