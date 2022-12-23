#ifndef POKEPLATINUM_STRUCT_0202D63C_H
#define POKEPLATINUM_STRUCT_0202D63C_H

#include "overlay104/struct_ov104_0223A348_sub2.h"

typedef struct UnkStruct_0202D63C_t {
    UnkStruct_ov104_0223A348_sub2 unk_00[3];
    u16 unk_A8[8];
    u8 unk_B8;
    u8 unk_B9;
    u8 unk_BA;
    u8 unk_BB;
    u32 unk_BC;
    u16 unk_C0[4];
    union {
        struct {
            u8 unk_C8_val1_unk_00_0 : 1;
            u8 unk_C8_val1_unk_00_1 : 1;
            u8 : 6;
        };
        u8 unk_C8_val2;
    };
    u8 unk_C9;
    u16 unk_CA[4];
    u16 unk_D2[4];
    u16 unk_DA[4];
    u16 unk_E2;
} UnkStruct_0202D63C;

#endif // POKEPLATINUM_STRUCT_0202D63C_H
