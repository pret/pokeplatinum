#ifndef POKEPLATINUM_STRUCT_OV100_021D4890_H
#define POKEPLATINUM_STRUCT_OV100_021D4890_H

#include <nitro/fx/fx.h>

#include "camera.h"

typedef struct CameraPan {
    Camera *camera;
    VecFx32 *target;
    int durationFrames;
    s32 angleDeltaX;
    s32 angleDeltaY;
    s32 angleDeltaZ;
    fx32 positionDeltaX;
    fx32 positionDeltaY;
    fx32 positionDeltaZ;
    s32 angleStep[5]; // [0] is the frames-remaining countdown, [1..3] are the per-frame angle step for x/y/z
    fx32 positionStep[5]; // [1..3] are the per-frame position step for x/y/z
    CameraAngle cameraAngle;
} CameraPan;

#endif // POKEPLATINUM_STRUCT_OV100_021D4890_H
