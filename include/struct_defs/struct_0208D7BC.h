#ifndef POKEPLATINUM_STRUCT_0208D7BC_H
#define POKEPLATINUM_STRUCT_0208D7BC_H

#include "struct_decls/struct_02006C24_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0208D1D4.h"
#include "struct_defs/struct_0208D7BC_sub1.h"
#include "struct_defs/struct_02091850.h"
#include "struct_defs/struct_02098D38.h"

typedef struct {
    BGL * unk_00;
    Window unk_04[36];
    Window * unk_244;
    u32 unk_248;
    UnkStruct_02098D38 * unk_24C;
    UnkStruct_0208D1D4 unk_250;
    UnkStruct_0208D7BC_sub1 unk_2B4;
    UnkStruct_02091850 unk_2F0[4];
    UnkStruct_02091850 unk_350[4];
    UnkStruct_02091850 unk_3B0[4];
    u32 unk_410;
    SpriteRenderer * unk_414;
    SpriteGfxHandler * unk_418;
    GraphicElementData * unk_41C[77];
    CellActorData * unk_550[77];
    UnkStruct_0200C440 * unk_684;
    MessageLoader * unk_688;
    MessageLoader * unk_68C;
    UnkStruct_0200B358 * unk_690;
    Strbuf* unk_694;
    Strbuf* unk_698;
    MessageLoader * unk_69C;
    NARC * unk_6A0;
    s8 unk_6A4;
    u8 unk_6A5_0 : 4;
    u8 unk_6A5_4 : 4;
    u8 unk_6A6;
    u8 unk_6A7_0 : 4;
    u8 unk_6A7_4 : 4;
    u8 unk_6A8;
    u8 unk_6A9;
    u8 unk_6AA;
    u8 unk_6AB;
    u8 unk_6AC;
    u8 unk_6AD;
    u8 unk_6AE;
    u8 unk_6AF;
    u8 unk_6B0;
    u8 unk_6B1;
    u8 unk_6B2;
} UnkStruct_0208D7BC;

#endif // POKEPLATINUM_STRUCT_0208D7BC_H
