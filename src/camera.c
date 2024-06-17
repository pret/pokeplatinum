#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "data_02100844.h"

#include "overlay115/camera_angle.h"

#include "heap.h"
#include "unk_0201E190.h"
#include "camera.h"

GXBufferMode Unk_02100844 = GX_BUFFERMODE_W;

static Camera *sActiveCamera = NULL;

static void sub_02020020 (Camera * param0)
{
    u16 v0;

    v0 = -param0->cameraAngle.x;

    param0->unk_14.unk_00.x = FX_Mul(FX_Mul(FX_SinIdx(param0->cameraAngle.y), param0->unk_38), FX_CosIdx(param0->cameraAngle.x));
    param0->unk_14.unk_00.z = FX_Mul(FX_Mul(FX_CosIdx(param0->cameraAngle.y), param0->unk_38), FX_CosIdx(param0->cameraAngle.x));
    param0->unk_14.unk_00.y = FX_Mul(FX_SinIdx(v0), param0->unk_38);

    VEC_Add(&param0->unk_14.unk_00, &param0->unk_14.unk_0C, &param0->unk_14.unk_00);
}

static void sub_02020100 (Camera * param0)
{
    u16 v0;

    v0 = -param0->cameraAngle.x;

    param0->unk_14.unk_0C.x = -FX_Mul(FX_Mul(FX_SinIdx(param0->cameraAngle.y), param0->unk_38), FX_CosIdx(param0->cameraAngle.x));
    param0->unk_14.unk_0C.z = -FX_Mul(FX_Mul(FX_CosIdx(param0->cameraAngle.y), param0->unk_38), FX_CosIdx(param0->cameraAngle.x));
    param0->unk_14.unk_0C.y = -FX_Mul(FX_SinIdx(v0), param0->unk_38);

    VEC_Add(&param0->unk_14.unk_0C, &param0->unk_14.unk_00, &param0->unk_14.unk_0C);
}

static void sub_020201E4 (const u16 param0, Camera * param1)
{
    param1->unk_46 = param0;
    param1->unk_00.unk_00 = FX_SinIdx(param0);
    param1->unk_00.unk_04 = FX_CosIdx(param0);
    param1->unk_00.unk_08 = FX32_ONE * 4 / 3;
    param1->unk_00.unk_0C = FX32_ONE * 150;
    param1->unk_00.unk_10 = FX32_ONE * 900;
    param1->unk_14.unk_18.x = 0;
    param1->unk_14.unk_18.y = FX32_ONE;
    param1->unk_14.unk_18.z = 0;
    param1->unk_54 = NULL;
    param1->unk_58 = 0;
    param1->unk_5C = 0;
    param1->unk_60 = 0;
    param1->unk_64 = NULL;
}

static void sub_02020230 (Camera const * param0, VecFx32 * param1)
{
    if (param0->unk_58 == 0) {
        param1->x = 0;
    }

    if (param0->unk_5C == 0) {
        param1->y = 0;
    }

    if (param0->unk_60 == 0) {
        param1->z = 0;
    }
}

static void sub_02020250 (Camera const * param0, const VecFx32 * param1, VecFx32 * param2)
{
    int * v0;
    int * v1;

    if (param0->unk_64 == NULL) {
        (*param2) = (*param1);
    } else {
        v0 = &param0->unk_64->unk_04;
        v1 = &param0->unk_64->unk_08;

        if (!param0->unk_64->unk_10) {
            (*param2) = (*param1);

            if (*v0 == param0->unk_64->unk_0C) {
                param0->unk_64->unk_10 = 1;
            }
        } else {
            (*param2) = param0->unk_64->unk_20[(*v0)];
        }

        (*v0) = ((*v0) + 1) % param0->unk_64->unk_00;
        param0->unk_64->unk_20[(*v1)] = (*param1);
        (*v1) = ((*v1) + 1) % param0->unk_64->unk_00;

        if (!param0->unk_64->unk_14) {
            param2->x = param1->x;
        }

        if (!param0->unk_64->unk_18) {
            param2->y = param1->y;
        }

        if (!param0->unk_64->unk_1C) {
            param2->z = param1->z;
        }
    }
}

void sub_02020304 (const int param0, const int param1, const int param2, const int param3, Camera * param4)
{
    int v0;
    UnkStruct_02020304 * v1;

    if (param4->unk_54 == NULL) {
        return;
    }

    GF_ASSERT((param1 + 1 <= param0));

    v1 = Heap_AllocFromHeap(param3, sizeof(UnkStruct_02020304));
    v1->unk_20 = Heap_AllocFromHeap(param3, sizeof(VecFx32) * param0);

    for (v0 = 0; v0 < param0; v0++) {
        v1->unk_20[v0].x = 0;
        v1->unk_20[v0].y = 0;
        v1->unk_20[v0].z = 0;
    }

    v1->unk_00 = param0;
    v1->unk_04 = 0;
    v1->unk_08 = 0 + param1;
    v1->unk_0C = param1;
    v1->unk_10 = 0;
    v1->unk_14 = 0;
    v1->unk_18 = 0;
    v1->unk_1C = 0;

    if (param2 & 1) {
        v1->unk_14 = 1;
    }

    if (param2 & 2) {
        v1->unk_18 = 1;
    }

    if (param2 & 4) {
        v1->unk_1C = 1;
    }

    param4->unk_64 = v1;
}

void sub_02020390 (Camera * param0)
{
    if (param0->unk_64 != NULL) {
        Heap_FreeToHeap(param0->unk_64->unk_20);
        Heap_FreeToHeap(param0->unk_64);
        param0->unk_64 = NULL;
    }
}

Camera *Camera_Alloc(const enum HeapId heapID)
{
    return Heap_AllocFromHeap(heapID, sizeof(Camera));
}

void Camera_Delete(Camera *camera)
{
    Heap_FreeToHeap(camera);
}

void Camera_Copy(Camera const *src, Camera *dst)
{
    *dst = *src;
}

void Camera_SetAsActive(Camera *camera)
{
    sActiveCamera = camera;
}

void Camera_ClearActive(void)
{
    sActiveCamera = NULL;
}

void sub_020203EC (void)
{
    if (sActiveCamera == NULL) {
        return;
    }

    if (sActiveCamera->unk_54 != NULL) {
        VecFx32 v0;
        VecFx32 v1;

        VEC_Subtract(sActiveCamera->unk_54, &sActiveCamera->unk_48, &v0);

        sub_02020230(sActiveCamera, &v0);
        sub_02020250(sActiveCamera, &v0, &v1);
        sub_02020990(&v1, sActiveCamera);

        sActiveCamera->unk_48 = *sActiveCamera->unk_54;
    }

    NNS_G3dGlbLookAt(&sActiveCamera->unk_14.unk_00, &sActiveCamera->unk_14.unk_18, &sActiveCamera->unk_14.unk_0C);
}

void sub_0202049C (void)
{
    if (sActiveCamera == NULL) {
        return;
    }

    if (sActiveCamera->unk_54 != NULL) {
        VecFx32 v0;
        VecFx32 v1;

        VEC_Subtract(sActiveCamera->unk_54, &sActiveCamera->unk_48, &v0);

        sub_02020230(sActiveCamera, &v0);
        sub_02020250(sActiveCamera, &v0, &v1);
        sub_02020990(&v1, sActiveCamera);

        sActiveCamera->unk_48 = *sActiveCamera->unk_54;

        {
            VecFx32 v2 = sActiveCamera->unk_14.unk_00;
            VecFx32 v3 = sActiveCamera->unk_14.unk_18;
            const VecFx32 * v4 = sActiveCamera->unk_54;
            fx16 v5 = FX_CosIdx(sActiveCamera->cameraAngle.x);
            fx16 v6 = FX_SinIdx(sActiveCamera->cameraAngle.y);
            fx16 v7 = FX_CosIdx(sActiveCamera->cameraAngle.y);
            fx16 v8 = FX_SinIdx(sActiveCamera->cameraAngle.z);
            fx16 v9 = FX_CosIdx(sActiveCamera->cameraAngle.z);

            v2.z = FX_Mul(v7, sActiveCamera->unk_38);
            v2.z = FX_Mul(v2.z, v5);
            v2.z += v4->z;
            v3.x += FX_Mul(v8, v7);
            v3.y += v9;
            v3.z += -FX_Mul(v8, v6);

            NNS_G3dGlbLookAt(&v2, &v3, v4);
        }
    } else {
        NNS_G3dGlbLookAt(&sActiveCamera->unk_14.unk_00, &sActiveCamera->unk_14.unk_18, &sActiveCamera->unk_14.unk_0C);
    }
}

void sub_02020680 (const VecFx32 * param0, Camera * param1)
{
    param1->unk_14.unk_18 = *param0;
}

void sub_02020690 (const VecFx32 * param0, Camera * param1)
{
    param1->unk_54 = param0;
    param1->unk_48 = *param0;
    param1->unk_58 = 1;
    param1->unk_5C = 1;
    param1->unk_60 = 1;
}

void sub_020206B0 (Camera * param0)
{
    param0->unk_54 = NULL;
    param0->unk_58 = 0;
    param0->unk_5C = 0;
    param0->unk_60 = 0;
}

void sub_020206BC (const fx32 param0, const fx32 param1, Camera * param2)
{
    param2->unk_00.unk_0C = param0;
    param2->unk_00.unk_10 = param1;

    sub_02020854(param2->unk_44, param2);
}

void sub_020206D0 (const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, const BOOL param5, Camera * param6)
{
    sub_020201E4(param3, param6);

    param6->unk_14.unk_0C = *param0;
    param6->unk_38 = param1;
    param6->cameraAngle = *cameraAngle;

    sub_02020020(param6);
    sub_02020854(param4, param6);

    if (param5) {
        param6->unk_54 = param0;
        param6->unk_48 = *param0;
        param6->unk_58 = 1;
        param6->unk_5C = 1;
        param6->unk_60 = 1;
    }
}

void sub_02020738 (const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, Camera * param5)
{
    sub_020201E4(param3, param5);

    param5->unk_14.unk_00 = *param0;
    param5->unk_38 = param1;
    param5->cameraAngle = *cameraAngle;

    sub_02020100(param5);
    sub_02020854(param4, param5);
}

void sub_02020784 (const VecFx32 * param0, const VecFx32 * param1, const u16 param2, const u8 param3, const BOOL param4, Camera * param5)
{
    VecFx32 v0;

    sub_020201E4(param2, param5);

    param5->unk_14.unk_0C = *param0;
    param5->unk_14.unk_00 = *param1;
    VEC_Subtract(param1, param0, &v0);
    param5->unk_38 = VEC_Mag(&v0);

    {
        VecFx32 v1 = {0, 0, 0};
        VecFx32 v2 = {0, 0, 0};
        VecFx32 v3 = {0, 0, 0};
        VecFx32 v4;

        v4.x = 0;
        v4.y = 0;
        v4.z = FX32_ONE;

        v3 = v0;
        v3.y = 0;

        param5->cameraAngle.y = sub_0201E1A0(&v4, &v3);

        v4.x = FX32_ONE;
        v4.y = 0;
        v4.z = 0;

        v3.x = v0.z;
        v3.z = v0.y;
        v3.y = 0;

        param5->cameraAngle.x = sub_0201E1A0(&v4, &v3);
        param5->cameraAngle.z = 0;
    }

    sub_02020854(param3, param5);

    if (param4) {
        param5->unk_54 = param0;
        param5->unk_48 = *param0;
        param5->unk_58 = 1;
        param5->unk_5C = 1;
        param5->unk_60 = 1;
    }
}

void sub_02020854 (const u8 param0, Camera * param1)
{
    if (param0 == 0) {
        NNS_G3dGlbPerspective(param1->unk_00.unk_00, param1->unk_00.unk_04, param1->unk_00.unk_08, param1->unk_00.unk_0C, param1->unk_00.unk_10);
        param1->unk_44 = 0;
        Unk_02100844 = GX_BUFFERMODE_Z;
    } else {
        fx32 v0, v1;

        v0 = FX_Mul(FX_Div(param1->unk_00.unk_00, param1->unk_00.unk_04), param1->unk_38);
        v1 = FX_Mul(v0, param1->unk_00.unk_08);

        NNS_G3dGlbOrtho(v0, -v0, -v1, v1, param1->unk_00.unk_0C, param1->unk_00.unk_10);

        param1->unk_44 = 1;
        Unk_02100844 = GX_BUFFERMODE_Z;
    }
}

void Camera_SetFOV (const u16 param0, Camera * param1)
{
    param1->unk_46 = param0;
    param1->unk_00.unk_00 = FX_SinIdx(param1->unk_46);
    param1->unk_00.unk_04 = FX_CosIdx(param1->unk_46);

    sub_02020854(param1->unk_44, param1);
}

void sub_0202094C (const u16 param0, Camera * param1)
{
    param1->unk_46 += param0;
    param1->unk_00.unk_00 = FX_SinIdx(param1->unk_46);
    param1->unk_00.unk_04 = FX_CosIdx(param1->unk_46);

    sub_02020854(param1->unk_44, param1);
}

void sub_02020990 (const VecFx32 * param0, Camera * param1)
{
    VEC_Add(&param1->unk_14.unk_00, param0, &param1->unk_14.unk_00);
    VEC_Add(&param1->unk_14.unk_0C, param0, &param1->unk_14.unk_0C);
}

void sub_020209B0 (const CameraAngle * cameraAngle, Camera * param1)
{
    param1->cameraAngle = *cameraAngle;
    sub_02020100(param1);
}

void Camera_SetAngle (const CameraAngle * angle, Camera * param1)
{
    param1->cameraAngle = *angle;
    sub_02020020(param1);
}

void sub_020209F8 (const CameraAngle * cameraAngle, Camera * param1)
{
    param1->cameraAngle.x += cameraAngle->x;
    param1->cameraAngle.y += cameraAngle->y;
    param1->cameraAngle.z += cameraAngle->z;

    sub_02020100(param1);
}

void sub_02020A24 (const CameraAngle * cameraAngle, Camera * param1)
{
    param1->cameraAngle.x += cameraAngle->x;
    param1->cameraAngle.y += cameraAngle->y;
    param1->cameraAngle.z += cameraAngle->z;

    sub_02020020(param1);
}

void Camera_SetDistance (const fx32 param0, Camera * param1)
{
    param1->unk_38 = param0;
    sub_02020020(param1);
}

void sub_02020A5C (const VecFx32 * param0, Camera * param1)
{
    param1->unk_14.unk_0C = (*param0);
    sub_02020020(param1);
}

void sub_02020A78 (const fx32 param0, Camera * param1)
{
    param1->unk_38 += param0;
    sub_02020020(param1);
}

u16 Camera_GetFOV (Camera const * param0)
{
    return param0->unk_46;
}

fx32 Camera_GetDistance (Camera const * param0)
{
    return param0->unk_38;
}

CameraAngle sub_02020A94 (Camera const * param0)
{
    return param0->cameraAngle;
}

VecFx32 sub_02020AAC (Camera const * param0)
{
    return param0->unk_14.unk_0C;
}

VecFx32 sub_02020ABC (Camera const * param0)
{
    return param0->unk_14.unk_00;
}

void sub_02020ACC (const VecFx32 * param0, Camera * param1)
{
    param1->unk_14.unk_0C = *param0;
}

void sub_02020ADC (const VecFx32 * param0, Camera * param1)
{
    param1->unk_14.unk_00 = *param0;
}
