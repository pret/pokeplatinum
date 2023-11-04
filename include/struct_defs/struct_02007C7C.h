#ifndef POKEPLATINUM_STRUCT_02007C7C_H
#define POKEPLATINUM_STRUCT_02007C7C_H

#include "struct_defs/struct_02007C10.h"
#include "functypes/funcptr_02007C34.h"
#include "struct_defs/struct_02007C7C_sub1.h"
#include "struct_defs/struct_02007C7C_sub2.h"
#include "struct_defs/archived_sprite.h"

typedef struct UnkStruct_02007C7C_t {
    u32 unk_00_0 : 1;
    u32 unk_00_1 : 6;
    u32 unk_00_7 : 1;
    u32 unk_00_8 : 1;
    u32 : 23;
    ArchivedSprite unk_04;
    ArchivedSprite unk_14;
    UnkStruct_02007C7C_sub1 unk_24;
    u8 unk_58;
    u8 unk_59;
    u8 unk_5A;
    u8 unk_5B;
    u8 unk_5C[10];
    u8 unk_66[2];
    UnkFuncPtr_02007C34 * unk_68;
    UnkStruct_02007C7C_sub2 unk_6C;
    UnkStruct_02007C7C_sub2 unk_78;
    UnkStruct_02007C10 unk_84[10];
} UnkStruct_02007C7C;

#endif // POKEPLATINUM_STRUCT_02007C7C_H
