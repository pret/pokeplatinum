#ifndef POKEPLATINUM_STRUCT_OV100_021D3084_H
#define POKEPLATINUM_STRUCT_OV100_021D3084_H

#include "struct_defs/struct_020985E4.h"

#include "overlay100/struct_ov100_021D1C98_sub1.h"
#include "overlay100/struct_ov100_021D37F4.h"
#include "overlay100/struct_ov100_021D46C8.h"

typedef struct DialgaPalkiaArrivalContext {
    int state;
    int timer;
    int flashState;
    CastModels models;
    CutsceneGraphics *graphics;
    SpearPillarCutsceneArgs *args;
    SummonBubbleTask summonBubbleTasks[2];
} DialgaPalkiaArrivalContext;

#endif // POKEPLATINUM_STRUCT_OV100_021D3084_H
