#ifndef POKEPLATINUM_STRUCT_OV21_021D13FC_H
#define POKEPLATINUM_STRUCT_OV21_021D13FC_H

#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02015064_decl.h"

#include "overlay021/struct_ov21_021D22F8.h"
#include "overlay021/struct_ov21_021D23F8.h"
#include "overlay021/struct_ov21_021D2584.h"
#include "overlay021/struct_ov21_021D3124.h"
#include "overlay021/struct_ov21_021D4C0C_decl.h"

#include "bg_window.h"
#include "cell_actor.h"
#include "narc.h"
#include "sprite_resource.h"
#include "sprite_util.h"
#include "sys_task_manager.h"

typedef struct {
    BgConfig *unk_00;
    Window unk_04;
    UnkStruct_0200C738 unk_14;
    CellActorCollection *unk_138;
    SpriteResourceCollection *unk_13C[4];
    UnkStruct_ov21_021D4C0C *unk_14C;
    UnkStruct_02007768 *unk_150;
    Sprite *unk_154[4];
    UnkStruct_02015064 *unk_164;
    UnkStruct_ov21_021D23F8 unk_168;
    UnkStruct_ov21_021D23F8 unk_18C;
    UnkStruct_ov21_021D22F8 unk_1B0;
    UnkStruct_ov21_021D2584 unk_1E0;
    UnkStruct_ov21_021D3124 unk_218;
    SysTask *unk_270;
    SysTask *unk_274;
    NARC *pokedexGraphics;
} UnkStruct_ov21_021D13FC;

#endif // POKEPLATINUM_STRUCT_OV21_021D13FC_H
