#ifndef POKEPLATINUM_STRUCT_OV96_0223B450_SUB1_H
#define POKEPLATINUM_STRUCT_OV96_0223B450_SUB1_H

#include "struct_defs/struct_0202D314.h"

typedef struct {
    UnkStruct_0202D314 unk_00[3];
    u16 unk_A8[8];
    u8 unk_B8;
    u8 unk_B9;
    u8 unk_BA;
    u8 unk_BB;
    u8 unk_BC[4];
    s8 unk_C0[8];
    union {
        struct {
            u8 unk_C8_val1_0    : 1;
            u8 unk_C8_val1_1    : 1;
            u8                  : 6;
        };
        u8 unk_C8_val2;
    };
    u8 unk_C9;
    s8 unk_CA[24];
    u16 unk_E2;
} UnkStruct_ov96_0223B450_sub1;

#endif // POKEPLATINUM_STRUCT_OV96_0223B450_SUB1_H
