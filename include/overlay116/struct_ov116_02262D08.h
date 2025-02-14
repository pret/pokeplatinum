#ifndef POKEPLATINUM_STRUCT_OV116_02262D08_H
#define POKEPLATINUM_STRUCT_OV116_02262D08_H

#include "overlay116/struct_ov116_0226469C.h"
#include "overlay116/struct_ov116_022649E4.h"
#include "overlay116/struct_ov116_0226501C.h"

#include "sprite_system.h"

typedef struct {
    int unk_00;
    int unk_04;
    u8 padding_08[4];
    ManagedSprite *unk_0C;
    UnkStruct_ov116_0226469C unk_10;
    int unk_28;
    int *unk_2C;
    BOOL unk_30;
    UnkStruct_ov116_0226501C *unk_34;
    UnkStruct_ov116_0226501C *unk_38;
    UnkStruct_ov116_022649E4 *unk_3C;
    int unk_40;
} UnkStruct_ov116_02262D08;

#endif // POKEPLATINUM_STRUCT_OV116_02262D08_H
