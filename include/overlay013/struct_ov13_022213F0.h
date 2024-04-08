#ifndef POKEPLATINUM_STRUCT_OV13_022213F0_H
#define POKEPLATINUM_STRUCT_OV13_022213F0_H

#include "struct_decls/struct_02002F38_decl.h"
#include "message.h"
#include "string_template.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay013/struct_ov13_0221FC20.h"
#include "overlay013/struct_ov13_02221ED0.h"
#include "overlay013/struct_ov13_02228A50_decl.h"

typedef struct {
    UnkStruct_ov13_0221FC20 * unk_00;
    UnkStruct_ov13_02221ED0 unk_04[6];
    BGL * unk_1E0;
    PaletteData * unk_1E4;
    u16 unk_1E8[4][96];
    u16 unk_4E8[4][96];
    u16 unk_7E8[4][65];
    u16 unk_9F0[4][25];
    u16 unk_AB8[4][25];
    u16 unk_B80[4][25];
    u16 unk_C48[3][510];
    u16 unk_183C[4][96];
    u16 unk_1B3C[3][130];
    u16 unk_1E48[3][36];
    u16 unk_1F20[3][10];
    u16 unk_1F5C[32];
    u8 unk_1F9C;
    u8 unk_1F9D;
    u8 unk_1F9E;
    u8 unk_1F9F_0 : 4;
    u8 unk_1F9F_4 : 3;
    u8 unk_1F9F_7 : 1;
    UnkStruct_0200C440 * unk_1FA0;
    MessageLoader * unk_1FA4;
    StringTemplate * unk_1FA8;
    Strbuf* unk_1FAC;
    SpriteGfxHandler * unk_1FB0;
    CellActorData * unk_1FB4[38];
    Window unk_204C[2];
    Window * unk_206C;
    u8 unk_2070;
    u8 unk_2071;
    u8 unk_2072;
    u8 unk_2073_0 : 4;
    u8 unk_2073_4 : 4;
    u8 unk_2074;
    u8 unk_2075;
    u8 unk_2076;
    u8 unk_2077;
    u8 unk_2078;
    u8 unk_2079;
    u16 unk_207A;
    u16 unk_207C[4];
    UnkStruct_ov13_02228A50 * unk_2084;
    u8 unk_2088;
    u8 unk_2089;
    u8 unk_208A;
    u8 unk_208B;
} UnkStruct_ov13_022213F0;

#endif // POKEPLATINUM_STRUCT_OV13_022213F0_H
