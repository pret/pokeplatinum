#ifndef POKEPLATINUM_STRUCT_02097F18_H
#define POKEPLATINUM_STRUCT_02097F18_H

#include "struct_defs/struct_020279FC.h"
#include "struct_decls/struct_0202CA1C_decl.h"
#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

typedef struct {
    int unk_00;
    Pokemon * unk_04[6];
    Party * unk_1C;
    UnkStruct_0202CA1C * unk_20;
    AnimationControlFlags * unk_24;
    SaveData * unk_28;
    u8 unk_2C;
    u8 unk_2D;
    u8 padding[2];
} UnkStruct_02097F18;

#endif // POKEPLATINUM_STRUCT_02097F18_H
