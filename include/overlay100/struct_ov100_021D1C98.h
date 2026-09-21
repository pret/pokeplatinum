#ifndef POKEPLATINUM_STRUCT_OV100_021D1C98_H
#define POKEPLATINUM_STRUCT_OV100_021D1C98_H

#include "struct_defs/struct_020985E4.h"

#include "overlay100/struct_ov100_021D1808_sub1.h"
#include "overlay100/struct_ov100_021D1C98_sub1.h"
#include "overlay100/struct_ov100_021D46C8.h"

typedef struct GiratinaInterventionContext {
    int step;
    int timer;
    LakeGuardianLights lights;
    CastModels models;
    CutsceneGraphics *graphics;
    SpearPillarCutsceneArgs *args;
} GiratinaInterventionContext;

#endif // POKEPLATINUM_STRUCT_OV100_021D1C98_H
