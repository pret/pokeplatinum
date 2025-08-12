#ifndef POKEPLATINUM_STRUCT_COMPARE_MODE_HELPER_H
#define POKEPLATINUM_STRUCT_COMPARE_MODE_HELPER_H

#include "overlay019/pc_compare_mon.h"

enum CompareMode {
    COMPARE_BATTLE_STATS,
    COMPARE_CONTEST_STATS,
    COMPARE_MOVES,
    NUM_COMPARE_MODES
};

typedef struct CompareModeHelper {
    u8 compareMonSlot;
    u8 compareMode;
    u8 compareSlotHasMon[2];
    BOOL compareButtonAnimationPressed;
    PCCompareMon compareMons[2];
} CompareModeHelper;

#endif // POKEPLATINUM_STRUCT_COMPARE_MODE_HELPER_H
