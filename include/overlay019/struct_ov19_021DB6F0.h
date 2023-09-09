#ifndef POKEPLATINUM_STRUCT_OV19_021DB6F0_H
#define POKEPLATINUM_STRUCT_OV19_021DB6F0_H

#include "message.h"
#include "struct_decls/struct_0200B358_decl.h"
#include "struct_decls/struct_02018340_decl.h"
#include "strbuf.h"
#include "struct_defs/struct_0205AA50.h"
#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include <nnsys.h>

typedef struct {
    UnkStruct_02018340 * unk_00;
    u8 padding_04[4];
    const UnkStruct_ov19_021D4DF0 * unk_08;
    UnkStruct_ov19_021D61B0 * unk_0C;
    MessageLoader * unk_10;
    MessageLoader * unk_14;
    UnkStruct_0205AA50 * unk_18;
    u16 unk_1C;
    u16 unk_1E;
    int unk_20;
    void * unk_24;
    NNSG2dCharacterData * unk_28;
    const UnkStruct_0200B358 * unk_2C;
    Strbuf* unk_30;
    Strbuf* unk_34;
} UnkStruct_ov19_021DB6F0;

#endif // POKEPLATINUM_STRUCT_OV19_021DB6F0_H
