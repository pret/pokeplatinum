#ifndef POKEPLATINUM_STRUCT_OV90_021D1750_H
#define POKEPLATINUM_STRUCT_OV90_021D1750_H

typedef struct {
    u16 unk_00[8];
    u8 padding_10[2];
    u8 unk_12;
    u8 unk_13;
    u8 padding_14[4];
    u16 unk_18[4];
    union {
        struct {
            u8 unk_20_val1_0 : 1;
            u8 unk_20_val1_1 : 1;
            u8 : 6;
        };
        u8 unk_20_val2;
    };
    u8 padding_21;
} UnkStruct_ov90_021D1750;

#endif // POKEPLATINUM_STRUCT_OV90_021D1750_H
