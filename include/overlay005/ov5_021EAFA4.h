#ifndef POKEPLATINUM_OV5_021EAFA4_H
#define POKEPLATINUM_OV5_021EAFA4_H

#include <nitro/fx/fx.h>

#include "camera.h"

typedef struct UnkStruct_ov5_021EB0E0 {
    u16 fovY;
    u16 unk_02;
    VecFx32 cameraDistance;
    VecFx32 unk_10;
    fx32 unk_1C;
    MtxFx43 unk_20;
    Camera *camera;
    VecFx32 unk_54;
} UnkStruct_ov5_021EB0E0;

VecFx32 ov5_GetPositionFromTouchCoordinates(u16 touchX, u16 touchY, const UnkStruct_ov5_021EB0E0 *param2);
UnkStruct_ov5_021EB0E0 *ov5_021EB0C8(Camera *const camera);
void ov5_021EB184(UnkStruct_ov5_021EB0E0 **param0);

#endif // POKEPLATINUM_OV5_021EAFA4_H
