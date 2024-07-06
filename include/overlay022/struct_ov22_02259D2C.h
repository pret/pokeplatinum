#ifndef POKEPLATINUM_STRUCT_OV22_02259D2C_H
#define POKEPLATINUM_STRUCT_OV22_02259D2C_H

#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"

#include "overlay022/struct_ov22_02259C58.h"
#include "overlay022/struct_ov22_0225A154.h"

#include "touch_screen.h"

typedef struct {
    UnkStruct_ov22_02259C58 unk_00[4];
    UnkStruct_ov22_0225A154 unk_40;
    BOOL unk_60;
    UnkStruct_02012744 *unk_64;
    UnkStruct_02023FCC *unk_68;
    TouchScreenHitTable unk_6C[5];
} UnkStruct_ov22_02259D2C;

#endif // POKEPLATINUM_STRUCT_OV22_02259D2C_H
