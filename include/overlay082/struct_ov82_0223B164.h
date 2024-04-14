#ifndef POKEPLATINUM_STRUCT_OV82_0223B164_H
#define POKEPLATINUM_STRUCT_OV82_0223B164_H

#include "trainer_info.h"
#include "game_options.h"
#include "struct_decls/struct_0202AB28_decl.h"
#include "struct_decls/struct_0202B628_decl.h"
#include "struct_decls/struct_0207D3C0_decl.h"
#include "savedata.h"

typedef struct {
    u8 padding_00[4];
    int unk_04;
    UnkStruct_0202AB28 * unk_08;
    SaveData * unk_0C;
    TrainerInfo * unk_10;
    UnkStruct_0207D3C0 * unk_14;
    Options * unk_18;
    UnkStruct_0202B628 * unk_1C;
    BOOL unk_20;
    BOOL unk_24;
} UnkStruct_ov82_0223B164;

#endif // POKEPLATINUM_STRUCT_OV82_0223B164_H
