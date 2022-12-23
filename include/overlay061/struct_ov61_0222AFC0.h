#ifndef POKEPLATINUM_STRUCT_OV61_0222AFC0_H
#define POKEPLATINUM_STRUCT_OV61_0222AFC0_H

#include "overlay061/struct_ov61_0222BED8_sub2_sub1_sub1_sub1.h"
#include "overlay062/struct_ov62_02239DA4_sub1.h"

typedef struct {
    u16 unk_00[8];
    u32 unk_10;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
    u8 unk_18;
    u8 unk_19;
    u8 unk_1A;
    u8 unk_1B_0 : 1;
    u8 unk_1B_1 : 7;
    u16 unk_1C;
    u8 unk_1E;
    u8 unk_1F;
    union {
        UnkStruct_ov61_0222BED8_sub2_sub1_sub1_sub1 unk_20_val1;
        u16 unk_20_val2[40];
    };
    u8 unk_70[12];
    UnkStruct_ov62_02239DA4_sub1 unk_7C;
} UnkStruct_ov61_0222AFC0;

#endif // POKEPLATINUM_STRUCT_OV61_0222AFC0_H
