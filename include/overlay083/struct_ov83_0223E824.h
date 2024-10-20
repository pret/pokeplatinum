#ifndef POKEPLATINUM_STRUCT_OV83_0223E824_H
#define POKEPLATINUM_STRUCT_OV83_0223E824_H

#include "overlay083/struct_ov83_0223DEA0.h"
#include "overlay083/struct_ov83_0223FE50.h"

#include "bg_window.h"
#include "sys_task_manager.h"

typedef struct {
    int unk_00;
    BGL *unk_04;
    Window *unk_08[4];
    int unk_18;
    UnkStruct_ov83_0223DEA0 *unk_1C;
    int unk_20;
    UnkStruct_ov83_0223FE50 *unk_24;
    BOOL unk_28;
    SysTask *unk_2C;
    int unk_30;
    void *unk_34;
} UnkStruct_ov83_0223E824;

#endif // POKEPLATINUM_STRUCT_OV83_0223E824_H
