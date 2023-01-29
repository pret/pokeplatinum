#ifndef POKEPLATINUM_STRUCT_0205964C_H
#define POKEPLATINUM_STRUCT_0205964C_H

#include "struct_decls/struct_0201CD38_decl.h"
#include "struct_decls/struct_0203CDB0_decl.h"
#include "functypes/funcptr_020598EC.h"
#include "struct_defs/struct_02072014.h"
#include "struct_decls/struct_party_decl.h"

#include <nitro/math.h>

typedef struct {
    UnkStruct_02072014 * unk_00[4];
    u8 unk_10[4];
    u8 padding_14[4];
    UnkStruct_0203CDB0 * unk_18;
    MATHRandContext32 unk_1C;
    UnkFuncPtr_020598EC unk_34;
    UnkStruct_0201CD38 * unk_38;
    u16 unk_3C;
    u8 unk_3E;
    u8 padding_3F;
    u8 unk_40;
    u8 unk_41;
    u8 unk_42;
    u8 unk_43;
    Party * unk_44;
} UnkStruct_0205964C;

#endif // POKEPLATINUM_STRUCT_0205964C_H
