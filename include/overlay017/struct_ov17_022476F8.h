#ifndef POKEPLATINUM_STRUCT_OV17_022476F8_H
#define POKEPLATINUM_STRUCT_OV17_022476F8_H

#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_02007C7C_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02095C48_sub1.h"
#include "overlay016/struct_ov16_0223E0C8.h"
#include "overlay017/struct_ov17_0223F6E8.h"

typedef struct {
    UnkStruct_02095C48_sub1 * unk_00;
    UnkStruct_02007768 * unk_04;
    UnkStruct_02007C7C * unk_08[4];
    UnkStruct_02007C7C * unk_18;
    UnkStruct_0200C6E4 * unk_1C;
    UnkStruct_0200C704 * unk_20;
    BGL * unk_24;
    Window unk_28[1];
    MessageLoader * unk_38;
    UnkStruct_0200B358 * unk_3C;
    Strbuf* unk_40;
    PaletteSys * unk_44;
    UnkStruct_ov16_0223E0C8 unk_48[4];
    CellActorData * unk_88[8];
    UnkStruct_ov17_0223F6E8 unk_A8;
    u8 unk_C4;
} UnkStruct_ov17_022476F8;

#endif // POKEPLATINUM_STRUCT_OV17_022476F8_H
