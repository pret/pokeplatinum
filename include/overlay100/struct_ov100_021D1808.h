#ifndef POKEPLATINUM_STRUCT_OV100_021D1808_H
#define POKEPLATINUM_STRUCT_OV100_021D1808_H

#include "struct_defs/struct_020985E4.h"

#include "overlay100/struct_ov100_021D1808_sub1.h"
#include "overlay100/struct_ov100_021D1808_sub2.h"
#include "overlay100/struct_ov100_021D46C8.h"

typedef struct LakeGuardiansArrivalContext {
    int state;
    int timer;
    int guardianIndex;
    LakeGuardianLights lights;
    LakeGuardianModels models;
    CutsceneGraphics *graphics;
    SpearPillarCutsceneArgs *args;
} LakeGuardiansArrivalContext;

#endif // POKEPLATINUM_STRUCT_OV100_021D1808_H
