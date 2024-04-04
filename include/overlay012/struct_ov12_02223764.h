#ifndef POKEPLATINUM_STRUCT_OV12_02223764_H
#define POKEPLATINUM_STRUCT_OV12_02223764_H

#include "struct_decls/sprite_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "overlay012/struct_ov12_02223764_sub1.h"
#include "battle/struct_ov16_0223E0C8.h"

typedef struct {
    int unk_00;
    int unk_04;
    UnkStruct_ov12_02223764_sub1 unk_08;
    int unk_14[4];
    CellActorData * unk_24[4];
    UnkStruct_ov16_0223E0C8 * unk_34[4];
    u8 unk_44[4];
    Sprite * unk_48[4];
} UnkStruct_ov12_02223764;

#endif // POKEPLATINUM_STRUCT_OV12_02223764_H
