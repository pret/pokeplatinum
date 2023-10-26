#ifndef POKEPLATINUM_STRUCT_0207A778_H
#define POKEPLATINUM_STRUCT_0207A778_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02027F8C_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay006/battle_params.h"

typedef struct {
    BattleParams * unk_00;
    BGL * unk_04;
    Window * unk_08;
    PaletteSys * unk_0C;
    UnkStruct_02027F8C * unk_10[4];
    u8 unk_20[0x1000];
    u8 unk_1020;
    u8 unk_1021;
    u16 unk_1022;
    void * unk_1024;
} UnkStruct_0207A778;

#endif // POKEPLATINUM_STRUCT_0207A778_H
