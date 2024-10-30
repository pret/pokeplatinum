#ifndef POKEPLATINUM_STRUCT_OV19_021DB6F0_H
#define POKEPLATINUM_STRUCT_OV19_021DB6F0_H

#include <nnsys.h>

#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"

#include "bg_window.h"
#include "message.h"
#include "strbuf.h"
#include "string_template.h"

typedef struct {
    BgConfig *unk_00;
    u8 padding_04[4];
    const UnkStruct_ov19_021D4DF0 *unk_08;
    UnkStruct_ov19_021D61B0 *unk_0C;
    MessageLoader *unk_10;
    MessageLoader *unk_14;
    Window *unk_18;
    u16 unk_1C;
    u16 unk_1E;
    int unk_20;
    void *unk_24;
    NNSG2dCharacterData *unk_28;
    const StringTemplate *unk_2C;
    Strbuf *unk_30;
    Strbuf *unk_34;
} UnkStruct_ov19_021DB6F0;

#endif // POKEPLATINUM_STRUCT_OV19_021DB6F0_H
