#ifndef POKEPLATINUM_STRUCT_OV17_022507C4_H
#define POKEPLATINUM_STRUCT_OV17_022507C4_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/sprite_decl.h"
#include "message.h"
#include "string_template.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02095C48_sub1.h"
#include "battle/struct_ov16_0223E0C8.h"
#include "overlay017/struct_ov17_0223F6E8.h"

typedef struct {
    UnkStruct_02095C48_sub1 * unk_00;
    UnkStruct_02007768 * unk_04;
    Sprite * unk_08[4];
    SpriteRenderer * unk_18;
    SpriteGfxHandler * unk_1C;
    BGL * unk_20;
    Window unk_24[9];
    MessageLoader * unk_B4;
    StringTemplate * unk_B8;
    Strbuf* unk_BC;
    PaletteData * unk_C0;
    UnkStruct_02012744 * unk_C4;
    UnkStruct_ov16_0223E0C8 unk_C8[4];
    UnkStruct_ov17_0223F6E8 unk_108;
    SysTask * unk_124;
    CellActorData * unk_128[4];
    CellActorData * unk_138[4];
    CellActorData * unk_148[4][12];
    CellActorData * unk_208[4][12];
    CellActorData * unk_2C8[4][12];
    u8 unk_388;
} UnkStruct_ov17_022507C4;

#endif // POKEPLATINUM_STRUCT_OV17_022507C4_H
