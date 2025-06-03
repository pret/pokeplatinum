#ifndef POKEPLATINUM_STRUCT_OV16_02265BBC_H
#define POKEPLATINUM_STRUCT_OV16_02265BBC_H

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    s32 unk_04;
    u16 unk_08;
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E_0 : 1;
    u16 unk_0E_1 : 1;
    u16 : 14;
    u32 fieldConditions;
    u16 unk_14;
    u16 unk_16;
    u16 unk_18[4];
    u8 unk_20[4];
    u8 unk_24[4];
    u8 unk_28[4];
    u32 unk_2C[4];
    u32 unk_3C[4];
    int unk_4C;
    int unk_50;
    int unk_54;
} UnkStruct_ov16_02265BBC;

#endif // POKEPLATINUM_STRUCT_OV16_02265BBC_H
