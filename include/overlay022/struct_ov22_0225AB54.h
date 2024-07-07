#ifndef POKEPLATINUM_STRUCT_OV22_0225AB54_H
#define POKEPLATINUM_STRUCT_OV22_0225AB54_H

#include "struct_defs/struct_0205AA50.h"
#include "struct_defs/struct_02095C60.h"

#include "overlay022/struct_ov22_0225AE9C.h"

#include "cell_actor.h"
#include "sprite_resource.h"
#include "sys_task_manager.h"

typedef struct {
    SpriteResource *unk_00[4];
    CellActor *unk_10[2];
    Window *unk_18;
    int unk_1C;
    int unk_20;
    SysTask *unk_24;
    SysTask *unk_28;
    UnkStruct_02095C60 *unk_2C;
    UnkStruct_ov22_0225AE9C unk_30;
    BOOL unk_90;
} UnkStruct_ov22_0225AB54;

#endif // POKEPLATINUM_STRUCT_OV22_0225AB54_H
