#ifndef POKEPLATINUM_STRUCT_020708E0_H
#define POKEPLATINUM_STRUCT_020708E0_H

#include "struct_decls/struct_02001AF4_decl.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "functypes/funcptr_02050904.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_020684D0.h"
#include "struct_defs/struct_02070950.h"
#include "overlay005/struct_ov5_021D30A8.h"

typedef struct {
    UnkStruct_0205AA50 unk_00;
    UnkStruct_0205AA50 unk_10;
    UnkStruct_02001AF4 * unk_20;
    UnkStruct_02013A04 * unk_24;
    u16 unk_28;
    u16 unk_2A;
    u32 unk_2C;
    u8 unk_30[7];
    UnkStruct_ov5_021D30A8 unk_38;
    CellActorData * unk_200[8];
    u32 unk_220;
    u32 unk_224;
    u32 unk_228;
    UnkFuncPtr_02050904 unk_22C;
    UnkStruct_020684D0 unk_230;
    UnkStruct_02070950 unk_24C;
    void * unk_25C;
    void * unk_260;
} UnkStruct_020708E0;

#endif // POKEPLATINUM_STRUCT_020708E0_H
