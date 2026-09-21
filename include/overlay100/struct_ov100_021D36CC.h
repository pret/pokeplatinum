#ifndef POKEPLATINUM_STRUCT_OV100_021D36CC_H
#define POKEPLATINUM_STRUCT_OV100_021D36CC_H

#include "overlay100/struct_ov100_021D4890.h"

typedef struct CameraShakeTask {
    int intensity;
    int step;
    int direction;
    int unused_0C;
    CameraPan *cameraPan;
} CameraShakeTask;

#endif // POKEPLATINUM_STRUCT_OV100_021D36CC_H
