#ifndef POKEPLATINUM_STRUCT_OV19_021D4EE4_H
#define POKEPLATINUM_STRUCT_OV19_021D4EE4_H

#include "overlay019/pc_compare_mon.h"

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02[2];
    BOOL compareButtonAnimationPressed;
    PCCompareMon compareMons[2];
} UnkStruct_ov19_021D4EE4;

#endif // POKEPLATINUM_STRUCT_OV19_021D4EE4_H
