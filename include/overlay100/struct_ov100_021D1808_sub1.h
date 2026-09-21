#ifndef POKEPLATINUM_STRUCT_OV100_021D1808_SUB1_H
#define POKEPLATINUM_STRUCT_OV100_021D1808_SUB1_H

#include "overlay100/struct_ov100_021D4104.h"
#include "overlay100/struct_ov100_021D4E3C.h"

typedef struct LakeGuardianLights {
    ScreenScrollTask scroll;
    LightBall guardianLights[3];
    LightBall orbitLights[3];
} LakeGuardianLights;

#endif // POKEPLATINUM_STRUCT_OV100_021D1808_SUB1_H
