#ifndef POKEPLATINUM_STRUCT_OV16_0225BFFC_T_H
#define POKEPLATINUM_STRUCT_OV16_0225BFFC_T_H

#include "struct_decls/cell_actor_data.h"
#include "struct_decls/sprite_decl.h"
#include "struct_decls/struct_02006C24_decl.h"

#include "battle/struct_ov16_0225BFFC_sub1.h"
#include "battle/struct_ov16_022674C4.h"
#include "battle/struct_ov16_0226C378.h"
#include "overlay012/struct_ball_rotation_decl.h"
#include "overlay012/struct_ov12_02223764.h"

#include "bg_window.h"
#include "sys_task_manager.h"

#define DATA_BUF_SIZE 256

struct BattlerData {
    UnkStruct_ov16_0225BFFC_sub1 unk_00;
    CellActorData *unk_18;
    Sprite *unk_1C;
    Sprite *unk_20;
    Window *unk_24;
    Healthbar healthbar;
    UnkStruct_ov16_0226C378 unk_7B;
    BallRotation *unk_84;
    UnkStruct_ov12_02223764 *unk_88;
    void *unk_8C;
    u8 data[DATA_BUF_SIZE];
    u8 battler;
    u8 battlerType;
    u8 bootState;
    u8 unk_193;
    SysTask *unk_194;
    u16 unk_198;
    int unk_19C;
    NARC *unk_1A0;
    u8 unk_1A4;
    u8 unk_1A5[3];
};

#endif // POKEPLATINUM_STRUCT_OV16_0225BFFC_T_H
