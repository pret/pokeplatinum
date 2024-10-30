#ifndef POKEPLATINUM_STRUCT_OV17_0223F88C_H
#define POKEPLATINUM_STRUCT_OV17_0223F88C_H

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02007768_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_02012744_decl.h"
#include "struct_defs/struct_02095C48_sub1.h"

#include "battle/struct_ov16_0223E0C8.h"
#include "overlay012/struct_ov12_0221FCDC_decl.h"
#include "overlay017/struct_ov17_0223F2E4.h"

#include "bg_window.h"
#include "message.h"
#include "palette.h"
#include "strbuf.h"
#include "string_template.h"

typedef struct {
    UnkStruct_02095C48_sub1 *unk_00;
    UnkStruct_02007768 *unk_04;
    Sprite *unk_08[4];
    SpriteRenderer *unk_18;
    SpriteGfxHandler *unk_1C;
    UnkStruct_ov12_0221FCDC *unk_20;
    BgConfig *unk_24;
    Window unk_28[1];
    MessageLoader *unk_38;
    MessageLoader *unk_3C;
    MessageLoader *unk_40;
    MessageLoader *unk_44;
    StringTemplate *unk_48;
    Strbuf *unk_4C;
    PaletteData *unk_50;
    UnkStruct_02012744 *unk_54;
    UnkStruct_ov16_0223E0C8 unk_58[4];
    UnkStruct_ov16_0223E0C8 unk_98;
    CellActorData *unk_A8[3];
    CellActorData *unk_B4[3];
    CellActorData *unk_C0;
    CellActorData *unk_C4[4][6];
    CellActorData *unk_124[3][5];
    CellActorData *unk_160[4];
    CellActorData *unk_170[3];
    CellActorData *unk_17C;
    UnkStruct_ov17_0223F2E4 unk_180[4];
    UnkStruct_ov17_0223F2E4 unk_1C8[4];
    u8 unk_210;
} UnkStruct_ov17_0223F88C;

#endif // POKEPLATINUM_STRUCT_OV17_0223F88C_H
