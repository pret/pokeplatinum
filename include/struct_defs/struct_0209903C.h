#ifndef POKEPLATINUM_STRUCT_0209903C_H
#define POKEPLATINUM_STRUCT_0209903C_H

#include "struct_decls/struct_02009714_decl.h"
#include "struct_defs/struct_02009508.h"
#include "struct_defs/struct_02009CFC.h"
#include "struct_defs/struct_0200C738.h"
#include "struct_defs/struct_0209903C_sub1.h"

#include "cell_actor.h"

typedef struct {
    int unk_00;
    int unk_04;
    u16 unk_08;
    u16 unk_0A;
    u16 unk_0C;
    u16 unk_0E;
    CellActorCollection *unk_10;
    UnkStruct_0200C738 unk_14;
    UnkStruct_02009508 *unk_1A0;
    SpriteResourceCollection *unk_1A4[4];
    SpriteResourceList *unk_1B4[4];
    UnkStruct_0209903C_sub1 *unk_1C4;
} UnkStruct_0209903C;

#endif // POKEPLATINUM_STRUCT_0209903C_H
