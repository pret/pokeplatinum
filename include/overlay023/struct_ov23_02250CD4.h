#ifndef POKEPLATINUM_STRUCT_OV23_02250CD4_H
#define POKEPLATINUM_STRUCT_OV23_02250CD4_H

#include "struct_decls/struct_0200112C_decl.h"
#include "struct_decls/struct_02001AF4_decl.h"
#include "string_template.h"
#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02013A04_decl.h"
#include "struct_decls/sys_task.h"
#include "strbuf.h"
#include "field/field_system_decl.h"
#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_0206A844.h"
#include "overlay005/struct_ov5_021D30A8.h"
#include "overlay023/struct_ov23_02248D20.h"
#include "overlay023/funcptr_ov23_0224F758.h"
#include "overlay023/funcptr_ov23_0224FD84.h"
#include "overlay023/funcptr_ov23_0224FE38.h"
#include "overlay023/funcptr_ov23_0225021C.h"
#include "overlay023/funcptr_ov23_022515D8.h"

typedef struct {
    void * unk_00;
    SysTask * unk_04;
    UnkStruct_0206A844 * unk_08;
    FieldSystem * fieldSystem;
    Window unk_10;
    Window unk_20;
    Window unk_30;
    ResourceMetadata * unk_40;
    ResourceMetadata * unk_44;
    BmpList * unk_48;
    UnkStruct_ov23_02248D20 * unk_4C;
    BmpList * unk_50;
    UIControlData * unk_54;
    ResourceMetadata * unk_58;
    UIControlData * unk_5C;
    UnkFuncPtr_ov23_022515D8 unk_60;
    UnkFuncPtr_ov23_022515D8 unk_64;
    Strbuf* unk_68;
    Strbuf* unk_6C;
    StringTemplate * unk_70;
    UnkStruct_ov5_021D30A8 unk_74;
    CellActorData * unk_23C[8];
    u32 unk_25C;
    UnkFuncPtr_ov23_0224F758 unk_260;
    UnkFuncPtr_ov23_0224FE38 unk_264;
    UnkFuncPtr_ov23_0224FD84 unk_268;
    UnkFuncPtr_ov23_0225021C unk_26C;
    void * unk_270;
    u8 unk_274[5];
    u8 unk_279[5];
    u8 unk_27E[5];
    BOOL unk_284;
    int unk_288;
    int unk_28C;
    int unk_290;
    int unk_294;
    u32 unk_298;
    u16 unk_29C;
    u32 unk_2A0;
    u16 unk_2A4;
    u8 unk_2A6;
    u8 unk_2A7;
    u8 unk_2A8;
    u8 unk_2A9;
    u8 unk_2AA;
    u8 unk_2AB;
    u8 unk_2AC;
    u16 unk_2AE;
    u16 unk_2B0;
} UnkStruct_ov23_02250CD4;

#endif // POKEPLATINUM_STRUCT_OV23_02250CD4_H
