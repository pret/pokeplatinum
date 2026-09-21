#ifndef POKEPLATINUM_STRUCT_OV100_021D37F4_H
#define POKEPLATINUM_STRUCT_OV100_021D37F4_H

#include "overlay100/struct_ov100_021D49B4.h"

typedef struct SummonBubbleTask {
    int step;
    int scaleIndex;
    int speciesID;
    s16 pan;
    CutsceneModel *summonBubble;
    CutsceneModel *shadow;
} SummonBubbleTask;

#endif // POKEPLATINUM_STRUCT_OV100_021D37F4_H
