#ifndef POKEPLATINUM_STRUCT_OV99_021D2CB0_H
#define POKEPLATINUM_STRUCT_OV99_021D2CB0_H

#include "struct_defs/struct_0203E274.h"

#include "overlay099/struct_ov99_021D2CB0_sub1.h"
#include "overlay099/struct_ov99_021D2CB0_sub2.h"
#include "overlay099/struct_ov99_021D3A40.h"
#include "overlay099/struct_ov99_021D3E78_decl.h"

#include "bg_window.h"
#include "camera.h"
#include "easy3d_object.h"
#include "g3d_pipeline_state.h"
#include "message.h"
#include "narc.h"
#include "palette.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

typedef struct {
    UnkStruct_0203E274 *unk_00;
    BOOL unk_04;
    BgConfig *unk_08;
    PaletteData *unk_0C;
    G3DPipelineState *unk_10;
    SysTask *unk_14;
    SpriteSystem *unk_18;
    SpriteManager *unk_1C;
    MessageLoader *unk_20;
    Window *unk_24;
    Camera *camera;
    Easy3DModel unk_2C[4];
    Easy3DObject unk_6C[2][16];
    UnkStruct_ov99_021D2CB0_sub1 unk_F6C;
    UnkStruct_ov99_021D3A40 unk_FA4;
    ManagedSprite *unk_10E0[5];
    u8 *unk_10F4;
    NARC *unk_10F8;
    u32 unk_10FC;
    u8 unk_1100;
    u8 unk_1101;
    u8 unk_1102;
    u8 unk_1103;
    u8 unk_1104;
    u8 unk_1105;
    UnkStruct_ov99_021D3E78 *unk_1108;
    UnkStruct_ov99_021D3E78 *unk_110C;
    BOOL unk_1110;
    UnkStruct_ov99_021D2CB0_sub2 unk_1114;
} UnkStruct_ov99_021D2CB0;

#endif // POKEPLATINUM_STRUCT_OV99_021D2CB0_H
