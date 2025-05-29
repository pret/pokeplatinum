#ifndef POKEPLATINUM_STRUCT_OV19_021D4EE4_H
#define POKEPLATINUM_STRUCT_OV19_021D4EE4_H

#include "overlay019/pc_compare_mon.h"

enum CompareModeState {
    state0,
    state1,
    state2
};

typedef struct {
    u8 compareMonSlot;
    u8 unk_01; // Some sort of state enum? 0, 1, 2;  None/Left/Right?  It can only increment, and then wrap around to 0, cannot be directly set.
    u8 unk_02[2];
    BOOL compareButtonAnimationPressed;
    PCCompareMon compareMons[2];
} UnkStruct_ov19_021D4EE4; // BoxCompareMode

#endif // POKEPLATINUM_STRUCT_OV19_021D4EE4_H
