#ifndef POKEPLATINUM_STRUCT_OV62_022354A4_H
#define POKEPLATINUM_STRUCT_OV62_022354A4_H

#include "struct_decls/font_oam.h"
#include "struct_defs/struct_0208B878.h"

#include "sprite_system.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    u8 padding_0C[16];
    u8 unk_1C;
    u8 unk_1D;
    u8 padding_1E[2];
    CellActorData *unk_20;
    FontOAM *unk_24;
    UnkStruct_0208B878 *unk_28;
    BOOL *unk_2C;
    BOOL *unk_30;
} UnkStruct_ov62_022354A4;

#endif // POKEPLATINUM_STRUCT_OV62_022354A4_H
