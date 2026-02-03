#include "overlay005/ov5_021EAFA4.h"

#include <nitro.h>
#include <string.h>

#include "camera.h"
#include "heap.h"

static void ov5_021EB0E0(UnkStruct_ov5_021EB0E0 *param0, Camera *const camera);

VecFx32 ov5_GetPositionFromTouchCoordinates(u16 touchX, u16 touchY, const UnkStruct_ov5_021EB0E0 *param2)
{
    s8 v0, v1;
    VecFx32 v2;
    VecFx32 v3;
    u8 v4, v5;
    u16 v6, v7;

    v3.y = 0;
    v2 = Camera_GetTarget(param2->camera);

    MtxFx43 v8;
    VecFx32 v9;
    VecFx32 v10 = { 0, 0, -FX32_ONE };

    if (touchY < HW_LCD_HEIGHT / 2) {
        v4 = HW_LCD_HEIGHT / 2 - touchY;
        v6 = param2->fovY * v4 / (HW_LCD_HEIGHT / 2);
    } else {
        v4 = touchY - HW_LCD_HEIGHT / 2;
        v6 = param2->fovY * v4 / (HW_LCD_HEIGHT / 2);
        v6 *= -1;
    }

    if (touchX < HW_LCD_WIDTH / 2) {
        v5 = HW_LCD_WIDTH / 2 - touchX;
        v7 = param2->unk_02 * v5 / (HW_LCD_WIDTH / 2);
    } else {
        v5 = touchX - HW_LCD_WIDTH / 2;
        v7 = param2->unk_02 * v5 / (HW_LCD_WIDTH / 2);
        v7 *= -1;
    }

    MTX_RotX43(&v8, FX_SinIdx(v6), FX_CosIdx(v6));
    MTX_MultVec43(&v10, &v8, &v9);
    MTX_RotY43(&v8, FX_SinIdx(v7), FX_CosIdx(v7));
    MTX_MultVec43(&v9, &v8, &v9);
    MTX_MultVec43(&v9, &param2->unk_20, &v9);

    VecFx32 v11;
    fx32 v12;
    fx32 v13;

    v13 = VEC_DotProduct(&param2->unk_10, &v9);
    v12 = -(FX_Div(param2->unk_1C, v13));

    VEC_MultAdd(v12, &v9, &param2->cameraDistance, &v11);

    v3.x = v2.x + (v11.x);
    v3.z = v2.z + (v11.z);

    return v3;
}

UnkStruct_ov5_021EB0E0 *ov5_021EB0C8(Camera *const camera)
{
    UnkStruct_ov5_021EB0E0 *v0 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(UnkStruct_ov5_021EB0E0));
    ov5_021EB0E0(v0, camera);

    return v0;
}

static void ov5_021EB0E0(UnkStruct_ov5_021EB0E0 *param0, Camera *const camera)
{
    CameraAngle angle;

    angle = Camera_GetAngle(camera);
    param0->fovY = Camera_GetFOV(camera);

    fx32 tan = FX_Div(FX_SinIdx(param0->fovY), FX_CosIdx(param0->fovY));

    param0->unk_02 = FX_AtanIdx(tan * 4 / 3);

    VecFx32 v2 = { 0, FX32_ONE, 0 };
    VecFx32 position, target;

    position = Camera_GetPosition(camera);
    target = Camera_GetTarget(camera);

    VEC_Subtract(&position, &target, &param0->cameraDistance);

    param0->unk_10 = v2;
    param0->unk_1C = VEC_DotProduct(&v2, &param0->cameraDistance);

    MTX_RotX43(&param0->unk_20, FX_SinIdx(angle.x), FX_CosIdx(angle.x));
    param0->camera = camera;
}

void ov5_021EB184(UnkStruct_ov5_021EB0E0 **param0)
{
    if (*param0 == NULL) {
        return;
    }

    GF_ASSERT(*param0 != NULL);

    Heap_Free(*param0);
    *param0 = NULL;
}
