#ifndef POKEPLATINUM_STRUCT_OV62_02246BF4_SUB2_H
#define POKEPLATINUM_STRUCT_OV62_02246BF4_SUB2_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02023FCC_decl.h"

#include "touch_screen.h"

typedef struct {
    NARC *unk_00;
    SpriteRenderer *unk_04;
    SpriteGfxHandler *unk_08;
    BGL *unk_0C;
    PaletteData *unk_10;
    UnkStruct_02023FCC *unk_14;
    TouchScreenRect unk_18[24];
    BOOL unk_78;
} UnkStruct_ov62_02246BF4_sub2;

#endif // POKEPLATINUM_STRUCT_OV62_02246BF4_SUB2_H
