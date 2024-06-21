#ifndef POKEPLATINUM_STRUCT_OV5_021EDF3C_H
#define POKEPLATINUM_STRUCT_OV5_021EDF3C_H

#include "sys_task_manager.h"
#include "overlay005/struct_ov5_021ED0A4.h"
#include "overlay005/struct_ov5_021EDFBC.h"
#include "overlay005/struct_ov5_021EE134.h"
#include "overlay005/struct_ov5_021EE294.h"

typedef struct {
    s16 unk_00;
    s16 unk_02;
    vs16 unk_04;
    vu16 unk_06;
    UnkStruct_ov5_021EE294 * unk_08;
    UnkStruct_ov5_021EDFBC * unk_0C;
    UnkStruct_ov5_021EE134 * unk_10;
    struct UnkStruct_ov5_021ED0A4_t * unk_14;
    SysTask * unk_18;
    SysTask * unk_1C;
    SysTask * unk_20;
    SysTask * unk_24;
} UnkStruct_ov5_021EDF3C;

#endif // POKEPLATINUM_STRUCT_OV5_021EDF3C_H
