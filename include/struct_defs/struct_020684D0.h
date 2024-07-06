#ifndef POKEPLATINUM_STRUCT_020684D0_H
#define POKEPLATINUM_STRUCT_020684D0_H

#include "struct_decls/struct_0205E884_decl.h"

#include "field/field_system_decl.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    int unk_08;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u8 padding_12[2];
    PlayerAvatar *playerAvatar;
    FieldSystem *fieldSystem;
} UnkStruct_020684D0;

#endif // POKEPLATINUM_STRUCT_020684D0_H
