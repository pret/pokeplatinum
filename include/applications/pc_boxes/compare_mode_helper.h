#ifndef POKEPLATINUM_STRUCT_COMPARE_MODE_HELPER_H
#define POKEPLATINUM_STRUCT_COMPARE_MODE_HELPER_H

#include "applications/pc_boxes/pc_compare_mon.h"

enum CompareMode {
    COMPARE_BATTLE_STATS = 0,
    COMPARE_CONTEST_STATS,
    COMPARE_MOVES,
    NUM_COMPARE_MODES,
};

#define NUM_COMPARE_SLOTS 2

typedef struct CompareModeHelper {
    u8 compareMonSlot;
    u8 compareMode;
    u8 compareSlotHasMon[NUM_COMPARE_SLOTS];
    BOOL isCompareButtonPressed;
    PCCompareMon compareMons[NUM_COMPARE_SLOTS];
} CompareModeHelper;

#endif // POKEPLATINUM_STRUCT_COMPARE_MODE_HELPER_H
