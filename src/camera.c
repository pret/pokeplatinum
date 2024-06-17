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

    param0->lookAt.position.x = FX_Mul(FX_Mul(FX_SinIdx(param0->cameraAngle.y), param0->distance), FX_CosIdx(param0->cameraAngle.x));
    param0->lookAt.position.z = FX_Mul(FX_Mul(FX_CosIdx(param0->cameraAngle.y), param0->distance), FX_CosIdx(param0->cameraAngle.x));
    param0->lookAt.position.y = FX_Mul(FX_SinIdx(v0), param0->distance);

    VEC_Add(&param0->lookAt.position, &param0->lookAt.target, &param0->lookAt.position);
}

static void sub_02020100 (Camera * param0)
{
    u16 v0;

    v0 = -param0->cameraAngle.x;

    param0->lookAt.target.x = -FX_Mul(FX_Mul(FX_SinIdx(param0->cameraAngle.y), param0->distance), FX_CosIdx(param0->cameraAngle.x));
    param0->lookAt.target.z = -FX_Mul(FX_Mul(FX_CosIdx(param0->cameraAngle.y), param0->distance), FX_CosIdx(param0->cameraAngle.x));
    param0->lookAt.target.y = -FX_Mul(FX_SinIdx(v0), param0->distance);

    VEC_Add(&param0->lookAt.target, &param0->lookAt.position, &param0->lookAt.target);
}

static void sub_020201E4 (const u16 param0, Camera * param1)
{
    param1->fovY = param0;
    param1->perspective.sinFovY = FX_SinIdx(param0);
    param1->perspective.cosFovY = FX_CosIdx(param0);
    param1->perspective.aspectRatio = FX32_ONE * 4 / 3;
    param1->perspective.nearClip = FX32_ONE * 150;
    param1->perspective.farClip = FX32_ONE * 900;
    param1->lookAt.up.x = 0;
    param1->lookAt.up.y = FX32_ONE;
    param1->lookAt.up.z = 0;
    param1->targetPos = NULL;
    param1->trackTargetX = 0;
    param1->trackTargetY = 0;
    param1->trackTargetZ = 0;
    param1->unk_64 = NULL;
}

static void Camera_AdjustDeltaPos(Camera const *camera, VecFx32 *deltaPos)
{
    if (camera->trackTargetX == FALSE) {
        deltaPos->x = 0;
    }

    if (camera->trackTargetY == FALSE) {
        deltaPos->y = 0;
    }

    if (camera->trackTargetZ == FALSE) {
        deltaPos->z = 0;
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

    if (param4->targetPos == NULL) {
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

void Camera_ComputeViewMatrix(void)
{
    if (sActiveCamera == NULL) {
        return;
    }

    if (sActiveCamera->targetPos != NULL) {
        VecFx32 targetPosDelta;
        VecFx32 v1;

        VEC_Subtract(sActiveCamera->targetPos, &sActiveCamera->prevTargetPos, &targetPosDelta);

        Camera_AdjustDeltaPos(sActiveCamera, &targetPosDelta);
        sub_02020250(sActiveCamera, &targetPosDelta, &v1);
        Camera_Move(&v1, sActiveCamera);

        sActiveCamera->prevTargetPos = *sActiveCamera->targetPos;
    }

    NNS_G3dGlbLookAt(&sActiveCamera->lookAt.position, &sActiveCamera->lookAt.up, &sActiveCamera->lookAt.target);
}

void sub_0202049C (void)
{
    if (sActiveCamera == NULL) {
        return;
    }

    if (sActiveCamera->targetPos != NULL) {
        VecFx32 v0;
        VecFx32 v1;

        VEC_Subtract(sActiveCamera->targetPos, &sActiveCamera->prevTargetPos, &v0);

        Camera_AdjustDeltaPos(sActiveCamera, &v0);
        sub_02020250(sActiveCamera, &v0, &v1);
        Camera_Move(&v1, sActiveCamera);

        sActiveCamera->prevTargetPos = *sActiveCamera->targetPos;

        {
            VecFx32 cameraPos = sActiveCamera->lookAt.position;
            VecFx32 cameraUp = sActiveCamera->lookAt.up;
            const VecFx32 * targetPos = sActiveCamera->targetPos;
            fx16 v5 = FX_CosIdx(sActiveCamera->cameraAngle.x);
            fx16 v6 = FX_SinIdx(sActiveCamera->cameraAngle.y);
            fx16 v7 = FX_CosIdx(sActiveCamera->cameraAngle.y);
            fx16 v8 = FX_SinIdx(sActiveCamera->cameraAngle.z);
            fx16 v9 = FX_CosIdx(sActiveCamera->cameraAngle.z);

            cameraPos.z = FX_Mul(v7, sActiveCamera->distance);
            cameraPos.z = FX_Mul(cameraPos.z, v5);
            cameraPos.z += targetPos->z;
            cameraUp.x += FX_Mul(v8, v7);
            cameraUp.y += v9;
            cameraUp.z += -FX_Mul(v8, v6);

            NNS_G3dGlbLookAt(&cameraPos, &cameraUp, targetPos);
        }
    } else {
        NNS_G3dGlbLookAt(&sActiveCamera->lookAt.position, &sActiveCamera->lookAt.up, &sActiveCamera->lookAt.target);
    }
}

void Camera_SetUp (const VecFx32 *up, Camera *camera)
{
    camera->lookAt.up = *up;
}

void Camera_TrackTarget(const VecFx32 *target, Camera *camera)
{
    camera->targetPos = target;
    camera->prevTargetPos = *target;
    camera->trackTargetX = TRUE;
    camera->trackTargetY = TRUE;
    camera->trackTargetZ = TRUE;
}

void Camera_ReleaseTarget(Camera *camera)
{
    camera->targetPos = NULL;
    camera->trackTargetX = FALSE;
    camera->trackTargetY = FALSE;
    camera->trackTargetZ = FALSE;
}

void Camera_SetClipping(const fx32 nearClip, const fx32 farClip, Camera *camera)
{
    camera->perspective.nearClip = nearClip;
    camera->perspective.farClip = farClip;

    Camera_ComputeProjectionMatrix(camera->projection, camera);
}

void sub_020206D0 (const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, const BOOL param5, Camera * param6)
{
    sub_020201E4(param3, param6);

    param6->lookAt.target = *param0;
    param6->distance = param1;
    param6->cameraAngle = *cameraAngle;

    sub_02020020(param6);
    Camera_ComputeProjectionMatrix(param4, param6);

    if (param5) {
        param6->targetPos = param0;
        param6->prevTargetPos = *param0;
        param6->trackTargetX = 1;
        param6->trackTargetY = 1;
        param6->trackTargetZ = 1;
    }
}

void sub_02020738 (const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, Camera * param5)
{
    sub_020201E4(param3, param5);

    param5->lookAt.position = *param0;
    param5->distance = param1;
    param5->cameraAngle = *cameraAngle;

    sub_02020100(param5);
    Camera_ComputeProjectionMatrix(param4, param5);
}

void sub_02020784 (const VecFx32 * param0, const VecFx32 * param1, const u16 param2, const u8 param3, const BOOL param4, Camera * param5)
{
    VecFx32 v0;

    sub_020201E4(param2, param5);

    param5->lookAt.target = *param0;
    param5->lookAt.position = *param1;
    VEC_Subtract(param1, param0, &v0);
    param5->distance = VEC_Mag(&v0);

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

    Camera_ComputeProjectionMatrix(param3, param5);

    if (param4) {
        param5->targetPos = param0;
        param5->prevTargetPos = *param0;
        param5->trackTargetX = 1;
        param5->trackTargetY = 1;
        param5->trackTargetZ = 1;
    }
}

void Camera_ComputeProjectionMatrix(const u8 projection, Camera *camera)
{
    if (projection == CAMERA_PROJECTION_PERSPECTIVE) {
        NNS_G3dGlbPerspective(
            camera->perspective.sinFovY, 
            camera->perspective.cosFovY, 
            camera->perspective.aspectRatio, 
            camera->perspective.nearClip, 
            camera->perspective.farClip
        );

        camera->projection = CAMERA_PROJECTION_PERSPECTIVE;
        Unk_02100844 = GX_BUFFERMODE_Z;
    } else {
        fx32 top = FX_Mul(FX_Div(camera->perspective.sinFovY, camera->perspective.cosFovY), camera->distance);
        fx32 right = FX_Mul(top, camera->perspective.aspectRatio);

        NNS_G3dGlbOrtho(top, -top, -right, right, camera->perspective.nearClip, camera->perspective.farClip);

        camera->projection = CAMERA_PROJECTION_ORTHOGRAPHIC;
        Unk_02100844 = GX_BUFFERMODE_Z;
    }
}

void Camera_SetFOV(const u16 fovY, Camera *camera)
{
    camera->fovY = fovY;
    camera->perspective.sinFovY = FX_SinIdx(camera->fovY);
    camera->perspective.cosFovY = FX_CosIdx(camera->fovY);

    Camera_ComputeProjectionMatrix(camera->projection, camera);
}

void Camera_IncreaseFOV(const u16 amount, Camera *camera)
{
    camera->fovY += amount;
    camera->perspective.sinFovY = FX_SinIdx(camera->fovY);
    camera->perspective.cosFovY = FX_CosIdx(camera->fovY);

    Camera_ComputeProjectionMatrix(camera->projection, camera);
}

void Camera_Move(const VecFx32 *delta, Camera *camera)
{
    VEC_Add(&camera->lookAt.position, delta, &camera->lookAt.position);
    VEC_Add(&camera->lookAt.target, delta, &camera->lookAt.target);
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

void Camera_SetDistance(const fx32 distance, Camera *camera)
{
    camera->distance = distance;
    sub_02020020(camera);
}

void sub_02020A5C (const VecFx32 * param0, Camera * param1)
{
    param1->lookAt.target = (*param0);
    sub_02020020(param1);
}

void Camera_IncreaseDistance(const fx32 amount, Camera *camera)
{
    camera->distance += amount;
    sub_02020020(camera);
}

u16 Camera_GetFOV (Camera const * param0)
{
    return param0->fovY;
}

fx32 Camera_GetDistance (Camera const * param0)
{
    return param0->distance;
}

CameraAngle sub_02020A94 (Camera const * param0)
{
    return param0->cameraAngle;
}

VecFx32 sub_02020AAC (Camera const * param0)
{
    return param0->lookAt.target;
}

VecFx32 sub_02020ABC (Camera const * param0)
{
    return param0->lookAt.position;
}

void sub_02020ACC (const VecFx32 * param0, Camera * param1)
{
    param1->lookAt.target = *param0;
}

void sub_02020ADC (const VecFx32 * param0, Camera * param1)
{
    param1->lookAt.position = *param0;
}
