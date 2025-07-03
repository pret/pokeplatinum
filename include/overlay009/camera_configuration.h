#ifndef POKEPLATINUM_STRUCT_CAMERA_CONFIGURATION_H
#define POKEPLATINUM_STRUCT_CAMERA_CONFIGURATION_H

#include "camera.h"

typedef struct {
    fx32 distance;
    CameraAngle cameraAngle;
    u8 projectionMtx;
    u16 fovY;
    u8 padding_0F;
} CameraConfiguration;

#endif // POKEPLATINUM_STRUCT_CAMERA_CONFIGURATION_H
