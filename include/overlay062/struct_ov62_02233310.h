#ifndef POKEPLATINUM_STRUCT_OV62_02233310_H
#define POKEPLATINUM_STRUCT_OV62_02233310_H

#include "struct_decls/cell_actor_data.h"

#include "overlay062/struct_ov62_02233310_sub1.h"
#include "overlay062/struct_ov62_02248CDC.h"

#include "bg_window.h"
#include "message.h"

typedef struct {
    int unk_00;
    int unk_04;
    s16 unk_08;
    u8 padding_0A[2];
    int unk_0C;
    int unk_10;
    int unk_14;
    Window unk_18;
    const UnkStruct_ov62_02248CDC *unk_28;
    CellActorData *unk_2C[2];
    MessageLoader *unk_34;
    UnkStruct_ov62_02233310_sub1 unk_38;
    BOOL unk_48;
    u8 padding_4C[4];
} UnkStruct_ov62_02233310;

#endif // POKEPLATINUM_STRUCT_OV62_02233310_H
