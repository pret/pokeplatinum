#ifndef POKEPLATINUM_STRUCT_OV19_021DBA9C_H
#define POKEPLATINUM_STRUCT_OV19_021DBA9C_H

#include "message.h"
#include "struct_decls/struct_0200C440_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "struct_defs/struct_0201AE08.h"
#include "struct_decls/sys_task.h"
#include "struct_decls/struct_020218BC_decl.h"
#include "struct_decls/struct_02022550_decl.h"
#include "strbuf.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include <nnsys.h>

typedef struct {
    UnkStruct_ov19_021D61B0 * unk_00;
    BGL * unk_04;
    UnkStruct_020218BC * unk_08;
    const UnkStruct_ov19_021D4DF0 * unk_0C;
    Window * unk_10;
    void * unk_14;
    NNSG2dCharacterData * unk_18;
    void * unk_1C;
    NNSG2dCellDataBank * unk_20;
    u8 padding_24[8];
    void * unk_2C;
    NNSG2dScreenData * unk_30;
    void * unk_34;
    NNSG2dScreenData * unk_38;
    UnkStruct_0201AE08 unk_3C;
    UnkStruct_0200C440 * unk_44;
    UnkStruct_02022550 * unk_48[18];
    UnkStruct_02022550 * unk_90;
    u32 unk_94[18];
    SysTask * unk_DC;
    s32 unk_E0;
    u16 unk_E4[8][48];
    u8 unk_3E4[18][1024];
    u8 unk_4BE4[18];
    u8 padding_4BF6[2];
    MessageLoader * unk_4BF8;
    Strbuf* unk_4BFC;
} UnkStruct_ov19_021DBA9C;

#endif // POKEPLATINUM_STRUCT_OV19_021DBA9C_H
