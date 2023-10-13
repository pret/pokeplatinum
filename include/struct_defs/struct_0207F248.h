#ifndef POKEPLATINUM_STRUCT_0207F248_H
#define POKEPLATINUM_STRUCT_0207F248_H

#include "struct_decls/struct_02001AF4_decl.h"
#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0207C690.h"
#include "functypes/funcptr_0207F248.h"
#include "struct_defs/funcptr_0207F248_sub1.h"
#include "struct_defs/struct_020831B4.h"
#include "struct_defs/struct_02083D1C.h"
#include "struct_decls/struct_02098700_decl.h"
#include "struct_defs/struct_02098C44.h"
#include "struct_defs/struct_020F1DB8.h"
#include "overlay118/struct_ov118_021D0FDC_decl.h"

typedef struct {
    BGL * unk_00;
    Window unk_04[37];
    Window unk_254[1];
    u16 unk_264[96];
    u16 unk_324[96];
    u16 unk_3E4[96];
    u16 unk_4A4[128];
    UnkStruct_02098C44 * unk_5A4;
    UnkStruct_0200C6E4 * unk_5A8;
    UnkStruct_0200C704 * unk_5AC;
    UnkStruct_02022550 * unk_5B0[29];
    CellActorData * unk_624[29];
    UnkStruct_0200C440 * unk_698;
    MessageLoader * unk_69C;
    UnkStruct_0200B358 * unk_6A0;
    Strbuf* unk_6A4;
    Strbuf* unk_6A8;
    Strbuf* unk_6AC[20];
    UnkStruct_02013A04 * unk_6FC;
    UnkStruct_02001AF4 * unk_700;
    UnkStruct_020831B4 unk_704[6];
    const UnkStruct_020F1DB8 * unk_7F4;
    UnkStruct_02083D1C unk_7F8;
    UnkFuncPtr_0207F248 unk_B00;
    UnkFuncPtr_0207F248_sub1 unk_B04;
    u8 unk_B0C;
    u8 unk_B0D;
    u8 unk_B0E;
    u8 unk_B0F_0 : 6;
    u8 unk_B0F_6 : 1;
    u8 unk_B0F_7 : 1;
    u8 unk_B10;
    u8 unk_B11;
    u8 unk_B12;
    u8 unk_B13;
    u16 unk_B14[6];
    UnkStruct_02098700 * unk_B20;
    UnkStruct_ov118_021D0FDC * unk_B24;
    UnkStruct_0207C690 * unk_B28;
} UnkStruct_0207F248;

#endif // POKEPLATINUM_STRUCT_0207F248_H
