#ifndef POKEPLATINUM_STRUCT_OV100_021D4DD8_H
#define POKEPLATINUM_STRUCT_OV100_021D4DD8_H

#include "struct_defs/struct_020985E4.h"

#include "overlay100/struct_ov100_021D46C8.h"

typedef struct SpearPillarCutsceneData {
    BOOL unused_00;
    int stageIndex;
    void *stageContext;
    CutsceneGraphics scene;
    SpearPillarCutsceneArgs *args;
} SpearPillarCutsceneData;

#endif // POKEPLATINUM_STRUCT_OV100_021D4DD8_H
