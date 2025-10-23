#ifndef POKEPLATINUM_STRUCT_OV101_021D4764_H
#define POKEPLATINUM_STRUCT_OV101_021D4764_H

#include "overlay101/struct_ov101_021D13C8_decl.h"

#include "enums.h"
#include "overworld_anim_manager.h"
#include "sys_task_manager.h"

typedef struct {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    int unk_10;
    int unk_14;
    UnkEnum_ov101_021D5814 unk_18;
    UnkEnum_ov101_021D6764 unk_1C;
    UnkStruct_ov101_021D13C8 *unk_20;
    SysTask *unk_24;
    OverworldAnimManager *unk_28;
    OverworldAnimManager *unk_2C;
    OverworldAnimManager *unk_30;
    OverworldAnimManager *unk_34;
    OverworldAnimManager *unk_38;
    OverworldAnimManager *unk_3C;
    OverworldAnimManager *unk_40;
    OverworldAnimManager *unk_44;
} UnkStruct_ov101_021D4764;

#endif // POKEPLATINUM_STRUCT_OV101_021D4764_H
