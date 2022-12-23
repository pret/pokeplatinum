#ifndef POKEPLATINUM_STRUCT_OV16_0225C17C_H
#define POKEPLATINUM_STRUCT_OV16_0225C17C_H

typedef struct {
    u8 unk_00;
    u8 unk_01_0    : 2;
    u8 unk_01_2    : 1;
    u8 unk_01_3    : 5;
    u16 unk_02;
    u32 unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    u16 unk_18[4];
    u16 unk_20[4];
    u16 unk_28[4];
    u16 unk_30[10 + 1];
    u8 padding_46[2];
    int unk_48;
    int unk_4C;
    u16 unk_50[4];
    u8 unk_58[4];
    u8 unk_5C[4];
    u8 unk_60[4];
    u32 unk_64[4];
} UnkStruct_ov16_0225C17C;

#endif // POKEPLATINUM_STRUCT_OV16_0225C17C_H
