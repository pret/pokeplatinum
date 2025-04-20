#ifndef POKEPLATINUM_STRUCT_0204AFC4_H
#define POKEPLATINUM_STRUCT_0204AFC4_H

#include "struct_decls/struct_0202D060_decl.h"
#include "struct_decls/struct_0202D750_decl.h"
#include "struct_defs/struct_0204B404.h"

#include "overlay104/struct_ov104_0223A348.h"

#include "location.h"

typedef struct UnkStruct_0204AFC4_t {
    int unk_00;
    int heapID;
    u32 unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10_0 : 1;
    u8 unk_10_1 : 2;
    u8 unk_10_3 : 1;
    u8 unk_10_4 : 1;
    u8 unk_10_5 : 3;
    u8 unk_11;
    u8 unk_12;
    u16 unk_14;
    u16 unk_16[2];
    u16 unk_1A;
    u16 unk_1C;
    u32 unk_20;
    u16 unk_24;
    u16 unk_26;
    u16 unk_28;
    u8 unk_2A[4];
    u16 unk_2E[4];
    u16 unk_36[4];
    u16 unk_3E[14];
    Location unk_5C;
    UnkStruct_0202D060 *unk_70;
    UnkStruct_0202D750 *unk_74;
    UnkStruct_ov104_0223A348 unk_78[2];
    UnkStruct_ov104_0223A348 unk_298[5];
    UnkStruct_0204B404 unk_7E8[5];
    u8 unk_838[5];
    u16 unk_83E[35];
    u16 unk_884[35];
    int unk_8CC;
    void *unk_8D0;
    u8 unk_8D4;
    u8 unk_8D5;
    u8 unk_8D6;
    u8 unk_8D7;
    u16 unk_8D8;
    u16 unk_8DA;
} UnkStruct_0204AFC4;

#endif // POKEPLATINUM_STRUCT_0204AFC4_H
