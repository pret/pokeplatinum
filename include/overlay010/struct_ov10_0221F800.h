#ifndef POKEPLATINUM_STRUCT_OV10_0221F800_H
#define POKEPLATINUM_STRUCT_OV10_0221F800_H

#include "struct_decls/struct_02023790_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "overlay006/battle_params.h"

typedef struct {
    BattleParams * unk_00;
    Party * unk_04[4];
    Strbuf* unk_14[4];
    u32 unk_24;
    u8 unk_28;
    u8 unk_29;
    u8 unk_2A;
    u8 unk_2B;
    u8 unk_2C;
    u8 unk_2D[3];
} UnkStruct_ov10_0221F800;

#endif // POKEPLATINUM_STRUCT_OV10_0221F800_H
