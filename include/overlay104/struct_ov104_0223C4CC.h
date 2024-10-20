#ifndef POKEPLATINUM_STRUCT_OV104_0223C4CC_H
#define POKEPLATINUM_STRUCT_OV104_0223C4CC_H

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/struct_02002F38_decl.h"
#include "struct_decls/struct_0200C6E4_decl.h"
#include "struct_decls/struct_0200C704_decl.h"
#include "struct_decls/struct_0209B75C_decl.h"
#include "struct_defs/struct_0207C690.h"

#include "overlay063/struct_ov63_0222BCE8_decl.h"
#include "overlay063/struct_ov63_0222BE18_decl.h"
#include "overlay063/struct_ov63_0222CD2C.h"
#include "overlay063/struct_ov63_0222D160.h"
#include "overlay063/struct_ov63_0222D1C0_decl.h"
#include "overlay063/struct_ov63_0222D77C_decl.h"
#include "overlay063/struct_ov63_0222D848_decl.h"
#include "overlay104/struct_ov104_0223319C.h"
#include "overlay104/struct_ov104_022331E8.h"
#include "overlay104/struct_ov104_0223D3B0_1.h"
#include "overlay104/struct_ov104_0223D5F0_decl.h"

#include "bg_window.h"
#include "sys_task_manager.h"

typedef struct UnkStruct_ov104_0223C4CC_t {
    BgConfig *unk_00;
    PaletteData *unk_04;
    UnkStruct_0209B75C *unk_08;
    GenericPointerData *unk_0C;
    UnkStruct_ov104_0223D5F0 *unk_10;
    UnkStruct_ov63_0222BE18 *unk_14;
    UnkStruct_ov63_0222BCE8 *unk_18;
    UnkStruct_ov63_0222D160 unk_1C;
    UnkStruct_ov63_0222CD2C *unk_20;
    UnkStruct_ov63_0222D1C0 *unk_24;
    UnkStruct_ov63_0222D1C0 *unk_28;
    UnkStruct_ov63_0222D848 *unk_2C;
    UnkStruct_ov63_0222D77C *unk_30;
    struct {
        SpriteRenderer *unk_00;
        SpriteGfxHandler *unk_04;
    } unk_34;
    UnkStruct_ov104_0223D3B0_1 unk_3C;
    CellActorData *unk_80[4];
    void *unk_90;
    SysTask *unk_94;
    SysTask *unk_98;
    SysTask *unk_9C;
    SysTask *unk_A0;
    UnkStruct_ov104_0223319C unk_A4;
    UnkStruct_ov104_022331E8 unk_B0;
    u16 unk_BC;
    u16 unk_BE;
    u8 unk_C0;
    u8 unk_C1;
    u8 unk_C2;
} UnkStruct_ov104_0223C4CC;

#endif // POKEPLATINUM_STRUCT_OV104_0223C4CC_H
