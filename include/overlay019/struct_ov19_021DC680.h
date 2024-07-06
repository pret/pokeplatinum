#ifndef POKEPLATINUM_STRUCT_OV19_021DC680_H
#define POKEPLATINUM_STRUCT_OV19_021DC680_H

#include <nnsys.h>

#include "struct_decls/struct_02018340_decl.h"

#include "overlay019/struct_ov19_021D4DF0.h"
#include "overlay019/struct_ov19_021D61B0_decl.h"
#include "overlay019/struct_ov19_021D8318.h"
#include "overlay019/struct_ov19_021DA384.h"
#include "overlay019/struct_ov19_021DCD18.h"

#include "cell_actor.h"

typedef struct {
    UnkStruct_ov19_021D61B0 *unk_00;
    BGL *unk_04;
    CellActorCollection *unk_08;
    const UnkStruct_ov19_021D4DF0 *unk_0C;
    UnkStruct_ov19_021D8318 *unk_10;
    void *unk_14;
    NNSG2dScreenData *unk_18;
    void *unk_1C;
    fx32 unk_20;
    fx32 unk_24;
    u8 unk_28;
    u8 unk_29;
    u8 unk_2A;
    u8 unk_2B;
    BOOL unk_2C;
    u32 unk_30;
    int unk_34;
    UnkStruct_ov19_021DA384 *unk_38;
    UnkStruct_ov19_021DCD18 unk_3C[6];
    u8 unk_174;
    u8 padding_175[3];
} UnkStruct_ov19_021DC680;

#endif // POKEPLATINUM_STRUCT_OV19_021DC680_H
