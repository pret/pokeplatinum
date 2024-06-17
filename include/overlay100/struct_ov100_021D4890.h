#ifndef POKEPLATINUM_STRUCT_OV100_021D4890_H
#define POKEPLATINUM_STRUCT_OV100_021D4890_H

#include "overlay115/camera_angle.h"
#include "camera.h"

#include <nitro/fx/fx.h>

typedef struct {
    UnkStruct_020203AC * unk_00;
    VecFx32 * unk_04;
    int unk_08;
    s32 unk_0C;
    s32 unk_10;
    s32 unk_14;
    fx32 unk_18;
    fx32 unk_1C;
    fx32 unk_20;
    s32 unk_24[5];
    fx32 unk_38[5];
    CameraAngle cameraAngle;
} UnkStruct_ov100_021D4890;

#endif // POKEPLATINUM_STRUCT_OV100_021D4890_H
