#ifndef POKEPLATINUM_STRUCT_02098C44_H
#define POKEPLATINUM_STRUCT_02098C44_H

#include "struct_defs/game_options.h"
#include "struct_decls/struct_party_decl.h"

typedef struct {
    Party * unk_00;
    void * unk_04;
    void * unk_08;
    GameOptions * unk_0C;
    void * unk_10;
    void * unk_14;
    void * unk_18;
    void * unk_1C;
    u8 unk_20;
    u8 unk_21;
    u8 unk_22;
    u8 unk_23;
    u16 unk_24;
    u16 unk_26;
    u8 unk_28;
    u8 unk_29;
    u8 unk_2A;
    u8 unk_2B;
    u8 unk_2C[6];
    u8 unk_32_0 : 4;
    u8 unk_32_4 : 4;
    u8 unk_33;
    int unk_34;
    u16 unk_38;
    u8 padding_3A[2];
    int unk_3C;
} UnkStruct_02098C44;

#endif // POKEPLATINUM_STRUCT_02098C44_H
