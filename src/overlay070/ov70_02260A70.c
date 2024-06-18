#include <nitro.h>
#include <string.h>

#include "camera.h"
#include "overlay070/struct_ov70_0225CC54_decl.h"

#include "overlay115/camera_angle.h"

#include "heap.h"
#include "camera.h"
#include "overlay070/ov70_0225C9B4.h"
#include "overlay070/ov70_02260A70.h"

typedef struct UnkStruct_ov70_02260AD4_t {
    Camera * camera;
    const UnkStruct_ov70_0225CC54 * unk_04;
    VecFx32 unk_08;
} UnkStruct_ov70_02260AD4;

static const CameraAngle Unk_ov70_0226D904 = {
    0xFFFFFFFFFFFFD602,
    0x0,
    0x0
};

UnkStruct_ov70_02260AD4 * ov70_02260A70 (u32 param0)
{
    UnkStruct_ov70_02260AD4 * v0;
    VecFx32 v1;

    v0 = Heap_AllocFromHeap(param0, sizeof(UnkStruct_ov70_02260AD4));
    memset(v0, 0, sizeof(UnkStruct_ov70_02260AD4));
    v0->camera = Camera_Alloc(param0);

    Camera_InitWithTarget(&v0->unk_08, 0x29aec1, &Unk_ov70_0226D904, 0x5c1, 0, 1, v0->camera);
    Camera_SetAsActive(v0->camera);
    Camera_SetClipping((FX32_CONST(150)), (FX32_CONST(900)), v0->camera);

    return v0;
}

void ov70_02260AD4 (UnkStruct_ov70_02260AD4 * param0)
{
    Camera_ClearActive();
    Camera_Delete(param0->camera);
    Heap_FreeToHeap(param0);
}

void ov70_02260AEC (UnkStruct_ov70_02260AD4 * param0)
{
    if (param0->unk_04) {
        ov70_0225D054(param0->unk_04, &param0->unk_08);

        param0->unk_08.x += (FX32_CONST(8));
        param0->unk_08.z += (-FX32_CONST(32));
    }

    Camera_ComputeViewMatrix();
}

void ov70_02260B18 (UnkStruct_ov70_02260AD4 * param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_08.x = param1;
    param0->unk_08.y = param2;
    param0->unk_08.z = param3;
}

void ov70_02260B20 (UnkStruct_ov70_02260AD4 * param0, fx32 param1, fx32 param2, fx32 param3)
{
    param0->unk_08.x = param1 + (FX32_CONST(8));
    param0->unk_08.y = param2;
    param0->unk_08.z = param3 + (-FX32_CONST(32));
}

void ov70_02260B38 (UnkStruct_ov70_02260AD4 * param0, const UnkStruct_ov70_0225CC54 * param1)
{
    param0->unk_04 = param1;
}

void ov70_02260B3C (UnkStruct_ov70_02260AD4 * param0)
{
    param0->unk_04 = NULL;
}
