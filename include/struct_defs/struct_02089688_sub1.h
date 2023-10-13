#ifndef POKEPLATINUM_STRUCT_02089688_SUB1_H
#define POKEPLATINUM_STRUCT_02089688_SUB1_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02006C24_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_manager_allocation.h"
#include "struct_defs/union_02022594_020225E0.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_defs/struct_0205AA50.h"

typedef struct {
    NARC * unk_00;
    UnkStruct_0200C6E4 * unk_04;
    UnkStruct_0200C704 * unk_08;
    UnkStruct_02018340 * unk_0C;
    UnkStruct_02002F38 * unk_10;
    UnkStruct_02023FCC * unk_14;
    UnkUnion_02022594 unk_18[28];
    BOOL unk_88;
    UnkStruct_02012744 * unk_8C;
    FontOAM * unk_90[2];
    SpriteManagerAllocation unk_98[2];
    UnkStruct_0205AA50 unk_B0;
} UnkStruct_02089688_sub1;

#endif // POKEPLATINUM_STRUCT_02089688_SUB1_H
