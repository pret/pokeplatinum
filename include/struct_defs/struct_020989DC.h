#ifndef POKEPLATINUM_STRUCT_020989DC_H
#define POKEPLATINUM_STRUCT_020989DC_H

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    union {
        struct {
            u8 val1_01 : 1;
            u8 unk_04_val1_1 : 1;
            u8 sweetness : 1;
            u8 bitterness : 1;
            u8 sourness : 1;
            u8 unk_04_val1_5 : 1;
            u8 unk_04_val1_6 : 1;
            u8 unk_04_val1_7 : 1;
        };
        u8 unk_20_val2;
    };
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
} UnkStruct_020989DC;

#endif // POKEPLATINUM_STRUCT_020989DC_H
