#ifndef POKEPLATINUM_STRUCT_02093800_H
#define POKEPLATINUM_STRUCT_02093800_H

#include "string/strbuf.h"
#include "struct_decls/struct_02025E6C_decl.h"
#include "struct_defs/struct_020279FC.h"
#include "struct_decls/struct_0202A750_decl.h"
#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    u8 unk_04;
    u8 unk_05;
    u8 padding_06[2];
    UnkStruct_02073C74 * unk_08;
    const Strbuf * unk_0C;
    const UnkStruct_02025E6C * unk_10;
    UnkStruct_0202A750 * unk_14;
    const UnkStruct_020279FC * unk_18;
    UnkStruct_021C0794 * unk_1C;
    void * unk_20;
} UnkStruct_02093800;

#endif // POKEPLATINUM_STRUCT_02093800_H
