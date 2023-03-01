#ifndef POKEPLATINUM_STRUCT_020978D8_H
#define POKEPLATINUM_STRUCT_020978D8_H

#include "struct_defs/struct_02014A84.h"
#include "struct_decls/struct_strbuf_decl.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_defs/union_02028328.h"

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    UnkStruct_020279FC * unk_04;
    u32 unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    Strbuf * unk_10;
    UnkUnion_02028328 unk_14[3];
    UnkStruct_02014A84 unk_1A[3];
} UnkStruct_020978D8;

#endif // POKEPLATINUM_STRUCT_020978D8_H
