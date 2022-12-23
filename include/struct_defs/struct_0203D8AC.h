#ifndef POKEPLATINUM_STRUCT_0203D8AC_H
#define POKEPLATINUM_STRUCT_0203D8AC_H

#include "struct_defs/union_0206B878.h"
#include "overlay080/struct_ov80_021D259C.h"

typedef struct {
    int unk_00;
    int unk_04;
    u8 padding_08[4];
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    UnkStruct_ov80_021D259C unk_20[5];
    UnkUnion_0206B878 unk_5C[200];
    u8 unk_124[21];
    u8 unk_139;
    u8 unk_13A;
    u8 padding_13B;
    u16 unk_13C;
} UnkStruct_0203D8AC;

#endif // POKEPLATINUM_STRUCT_0203D8AC_H
