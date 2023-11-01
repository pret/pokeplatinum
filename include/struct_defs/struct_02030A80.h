#ifndef POKEPLATINUM_STRUCT_02030A80_H
#define POKEPLATINUM_STRUCT_02030A80_H

#include "struct_defs/sentence.h"
#include "struct_defs/struct_0202F298_sub1.h"

typedef struct UnkStruct_02030A80_t {
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
        Sentence unk_20_val1;
        u16 unk_20_val2[40];
    };
    u8 unk_70[12];
    UnkStruct_0202F298_sub1 unk_7C;
} UnkStruct_02030A80;

#endif // POKEPLATINUM_STRUCT_02030A80_H
