#ifndef POKEPLATINUM_STRUCT_02097728_H
#define POKEPLATINUM_STRUCT_02097728_H

#include "struct_decls/struct_02028430_decl.h"
#include "struct_defs/mail.h"

#include "savedata.h"

typedef struct {
    u16 unk_00;
    u16 unk_02;
    int unk_04;
    int unk_08;
    u16 unk_0C;
    u8 unk_0E;
    u8 unk_0F;
    SaveData *unk_10;
    Mail *unk_14;
    UnkStruct_02028430 *unk_18;
} UnkStruct_02097728;

#endif // POKEPLATINUM_STRUCT_02097728_H
