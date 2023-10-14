#ifndef POKEPLATINUM_STRUCT_OV76_0223C398_H
#define POKEPLATINUM_STRUCT_OV76_0223C398_H

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/font_oam.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02015920_decl.h"
#include "struct_decls/struct_02015F84_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/sprite_manager_allocation.h"
#include "struct_defs/union_02022594_020225E0.h"
#include "struct_decls/struct_02023FCC_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "overlay012/struct_ov12_02235FE0_decl.h"
#include "overlay012/struct_ball_rotation_decl.h"
#include "overlay022/struct_ov22_02258A48.h"

typedef struct {
    int unk_00;
    BOOL unk_04;
    UnkStruct_0200C6E4 * unk_08;
    UnkStruct_0200C704 * unk_0C;
    BGL * unk_10;
    PaletteSys * unk_14;
    Window unk_18[11];
    UnkStruct_02013A04 * unk_C8;
    UnkStruct_02001AF4 * unk_CC;
    UnkStruct_02007768 * unk_D0;
    UnkStruct_02007C7C * unk_D4;
    int unk_D8;
    UnkStruct_ov22_02258A48 unk_DC;
    UnkStruct_02023FCC * unk_F8;
    UnkUnion_02022594 unk_FC[21];
    UnkStruct_02015920 * unk_150;
    UnkStruct_ov12_02235FE0 * unk_154;
    BallRotation * unk_158;
    UnkStruct_0207C690 * unk_15C;
    UnkStruct_02012744 * unk_160;
    FontOAM * unk_164[2];
    SpriteManagerAllocation unk_16C[2];
    BOOL unk_184;
    UnkStruct_02015F84 * unk_188;
    BOOL unk_18C;
} UnkStruct_ov76_0223C398;

#endif // POKEPLATINUM_STRUCT_OV76_0223C398_H
