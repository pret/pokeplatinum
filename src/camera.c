#include "camera.h"

#include <nitro.h>
#include <nnsys.h>
#include <string.h>

#include "camera.h"
#include "fx_util.h"
#include "heap.h"

#define CAMERA_DEFAULT_ASPECT_RATIO (FX32_ONE * 4 / 3)

GXBufferMode gBufferMode = GX_BUFFERMODE_W;

static Camera *sActiveCamera = NULL;

static void Camera_AdjustPositionAroundTarget(Camera *camera) {
    u16 angleX = -camera->angle.x;
    camera->lookAt.position.x = FX_Mul(FX_Mul(FX_SinIdx(camera->angle.y), camera->distance), FX_CosIdx(camera->angle.x));
    camera->lookAt.position.z = FX_Mul(FX_Mul(FX_CosIdx(camera->angle.y), camera->distance), FX_CosIdx(camera->angle.x));
    camera->lookAt.position.y = FX_Mul(FX_SinIdx(angleX), camera->distance);

    VEC_Add(&camera->lookAt.position, &camera->lookAt.target, &camera->lookAt.position);
}

static void Camera_AdjustTargetFromAngle(Camera *camera) {
    u16 angleX = -camera->angle.x;
    camera->lookAt.target.x = -FX_Mul(FX_Mul(FX_SinIdx(camera->angle.y), camera->distance), FX_CosIdx(camera->angle.x));
    camera->lookAt.target.z = -FX_Mul(FX_Mul(FX_CosIdx(camera->angle.y), camera->distance), FX_CosIdx(camera->angle.x));
    camera->lookAt.target.y = -FX_Mul(FX_SinIdx(angleX), camera->distance);

    VEC_Add(&camera->lookAt.target, &camera->lookAt.position, &camera->lookAt.target);
}

static void Camera_Init(const u16 fovY, Camera *camera) {
    camera->fovY = fovY;
    camera->perspective.sinFovY = FX_SinIdx(fovY);
    camera->perspective.cosFovY = FX_CosIdx(fovY);
    camera->perspective.aspectRatio = CAMERA_DEFAULT_ASPECT_RATIO;
    camera->perspective.nearClip = CAMERA_DEFAULT_NEAR_CLIP;
    camera->perspective.farClip = CAMERA_DEFAULT_FAR_CLIP;
    camera->lookAt.up.x = 0;
    camera->lookAt.up.y = FX32_ONE;
    camera->lookAt.up.z = 0;
    camera->targetPos = NULL;
    camera->trackTargetX = FALSE;
    camera->trackTargetY = FALSE;
    camera->trackTargetZ = FALSE;
    camera->history = NULL;
}

static void Camera_AdjustDeltaPos(Camera const *camera, VecFx32 *deltaPos) {
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

static void Camera_UpdateHistory(Camera const *camera, const VecFx32 *inPos, VecFx32 *outPos) {
    if (camera->history == NULL) {
        *outPos = *inPos;
        return;
    }

    int *curHistoryIndex = &camera->history->currentHistoryIndex;
    int *nextHistoryIndex = &camera->history->nextHistoryIndex;

    if (!camera->history->delayReached) {
        *outPos = *inPos;

        if (*curHistoryIndex == camera->history->delay) {
            camera->history->delayReached = TRUE;
        }
    } else {
        *outPos = camera->history->positions[*curHistoryIndex];
    }

    *curHistoryIndex = (*curHistoryIndex + 1) % camera->history->historySize;

    camera->history->positions[*nextHistoryIndex] = *inPos;
    *nextHistoryIndex = (*nextHistoryIndex + 1) % camera->history->historySize;

    if (!camera->history->delayX) {
        outPos->x = inPos->x;
    }

    if (!camera->history->delayY) {
        outPos->y = inPos->y;
    }

    if (!camera->history->delayZ) {
        outPos->z = inPos->z;
    }
}

void Camera_InitHistory(int historySize, int delay, int delayMask, enum HeapId heapID, Camera *camera) {
    if (camera->targetPos == NULL) {
        return;
    }

    GF_ASSERT(delay + 1 <= historySize);

    CameraPositionHistory *history = Heap_AllocFromHeap(heapID, sizeof(CameraPositionHistory));
    history->positions = Heap_AllocFromHeap(heapID, sizeof(VecFx32) * historySize);

    for (int i = 0; i < historySize; i++) {
        history->positions[i].x = 0;
        history->positions[i].y = 0;
        history->positions[i].z = 0;
    }

    history->historySize = historySize;
    history->currentHistoryIndex = 0;
    history->nextHistoryIndex = 0 + delay;
    history->delay = delay;
    history->delayReached = FALSE;
    history->delayX = FALSE;
    history->delayY = FALSE;
    history->delayZ = FALSE;

    if (delayMask & CAMERA_DELAY_X) {
        history->delayX = TRUE;
    }

    if (delayMask & CAMERA_DELAY_Y) {
        history->delayY = TRUE;
    }

    if (delayMask & CAMERA_DELAY_Z) {
        history->delayZ = TRUE;
    }

    camera->history = history;
}

void Camera_DeleteHistory(Camera *camera) {
    if (camera->history != NULL) {
        Heap_Free(camera->history->positions);
        Heap_Free(camera->history);
        camera->history = NULL;
    }
}

Camera *Camera_Alloc(const enum HeapId heapID) {
    return Heap_AllocFromHeap(heapID, sizeof(Camera));
}

void Camera_Delete(Camera *camera) {
    Heap_Free(camera);
}

void Camera_Copy(Camera const *src, Camera *dst) {
    *dst = *src;
}

void Camera_SetAsActive(Camera *camera) {
    sActiveCamera = camera;
}

void Camera_ClearActive(void) {
    sActiveCamera = NULL;
}

void Camera_ComputeViewMatrix(void) {
    if (sActiveCamera == NULL) {
        return;
    }

    if (sActiveCamera->targetPos != NULL) {
        VecFx32 targetPosDelta;
        VecFx32 resultPos;

        VEC_Subtract(sActiveCamera->targetPos, &sActiveCamera->prevTargetPos, &targetPosDelta);

        Camera_AdjustDeltaPos(sActiveCamera, &targetPosDelta);
        Camera_UpdateHistory(sActiveCamera, &targetPosDelta, &resultPos);
        Camera_Move(&resultPos, sActiveCamera);

        sActiveCamera->prevTargetPos = *sActiveCamera->targetPos;
    }

    NNS_G3dGlbLookAt(&sActiveCamera->lookAt.position, &sActiveCamera->lookAt.up, &sActiveCamera->lookAt.target);
}

void Camera_ComputeViewMatrixWithRoll(void) {
    if (sActiveCamera == NULL) {
        return;
    }

    if (sActiveCamera->targetPos != NULL) {
        VecFx32 v0;
        VecFx32 v1;

        VEC_Subtract(sActiveCamera->targetPos, &sActiveCamera->prevTargetPos, &v0);

        Camera_AdjustDeltaPos(sActiveCamera, &v0);
        Camera_UpdateHistory(sActiveCamera, &v0, &v1);
        Camera_Move(&v1, sActiveCamera);

        sActiveCamera->prevTargetPos = *sActiveCamera->targetPos;

        VecFx32 cameraPos = sActiveCamera->lookAt.position;
        VecFx32 cameraUp = sActiveCamera->lookAt.up;
        const VecFx32 *targetPos = sActiveCamera->targetPos;
        fx16 cosPitch = FX_CosIdx(sActiveCamera->angle.x);
        fx16 sinYaw = FX_SinIdx(sActiveCamera->angle.y);
        fx16 cosYaw = FX_CosIdx(sActiveCamera->angle.y);
        fx16 sinRoll = FX_SinIdx(sActiveCamera->angle.z);
        fx16 cosRoll = FX_CosIdx(sActiveCamera->angle.z);

        // zPos = cos(yaw) * cos(pitch) * distance + target.z
        // up = <sin(roll) * cos(yaw), cos(roll), -sin(roll) * sin(yaw)>
        cameraPos.z = FX_Mul(cosYaw, sActiveCamera->distance);
        cameraPos.z = FX_Mul(cameraPos.z, cosPitch);
        cameraPos.z += targetPos->z;
        cameraUp.x += FX_Mul(sinRoll, cosYaw);
        cameraUp.y += cosRoll;
        cameraUp.z += -FX_Mul(sinRoll, sinYaw);

        NNS_G3dGlbLookAt(&cameraPos, &cameraUp, targetPos);
    } else {
        NNS_G3dGlbLookAt(&sActiveCamera->lookAt.position, &sActiveCamera->lookAt.up, &sActiveCamera->lookAt.target);
    }
}

void Camera_SetUp(const VecFx32 *up, Camera *camera) {
    camera->lookAt.up = *up;
}

void Camera_TrackTarget(const VecFx32 *target, Camera *camera) {
    camera->targetPos = target;
    camera->prevTargetPos = *target;
    camera->trackTargetX = TRUE;
    camera->trackTargetY = TRUE;
    camera->trackTargetZ = TRUE;
}

void Camera_ReleaseTarget(Camera *camera) {
    camera->targetPos = NULL;
    camera->trackTargetX = FALSE;
    camera->trackTargetY = FALSE;
    camera->trackTargetZ = FALSE;
}

void Camera_SetClipping(const fx32 nearClip, const fx32 farClip, Camera *camera) {
    camera->perspective.nearClip = nearClip;
    camera->perspective.farClip = farClip;

    Camera_ComputeProjectionMatrix(camera->projection, camera);
}

void Camera_InitWithTarget(const VecFx32 *target, const fx32 distance, const CameraAngle *angle, const u16 fovY, const u8 projection, const BOOL trackTarget, Camera *camera) {
    Camera_Init(fovY, camera);

    camera->lookAt.target = *target;
    camera->distance = distance;
    camera->angle = *angle;

    Camera_AdjustPositionAroundTarget(camera);
    Camera_ComputeProjectionMatrix(projection, camera);

    if (trackTarget) {
        camera->targetPos = target;
        camera->prevTargetPos = *target;
        camera->trackTargetX = TRUE;
        camera->trackTargetY = TRUE;
        camera->trackTargetZ = TRUE;
    }
}

void Camera_InitWithPosition(const VecFx32 *position, const fx32 distance, const CameraAngle *angle, const u16 fovY, const u8 projection, Camera *camera) {
    Camera_Init(fovY, camera);

    camera->lookAt.position = *position;
    camera->distance = distance;
    camera->angle = *angle;

    Camera_AdjustTargetFromAngle(camera);
    Camera_ComputeProjectionMatrix(projection, camera);
}

void Camera_InitWithTargetAndPosition(const VecFx32 *target, const VecFx32 *position, const u16 fovY, const u8 projection, const BOOL trackTarget, Camera *camera) {
    VecFx32 distanceVector;

    Camera_Init(fovY, camera);

    camera->lookAt.target = *target;
    camera->lookAt.position = *position;
    VEC_Subtract(position, target, &distanceVector);
    camera->distance = VEC_Mag(&distanceVector);

    // ROM doesn't match without these
    VecFx32 unused0 = { 0, 0, 0 };
    VecFx32 unused1 = { 0, 0, 0 };
    VecFx32 v = { 0, 0, 0 };
    VecFx32 unit;

    unit.x = 0;
    unit.y = 0;
    unit.z = FX32_ONE;

    v = distanceVector;
    v.y = 0;

    camera->angle.y = VEC_AngleBetween(&unit, &v);

    unit.x = FX32_ONE;
    unit.y = 0;
    unit.z = 0;

    v.x = distanceVector.z;
    v.z = distanceVector.y;
    v.y = 0;

    camera->angle.x = VEC_AngleBetween(&unit, &v);
    camera->angle.z = 0;

    Camera_ComputeProjectionMatrix(projection, camera);

    if (trackTarget) {
        camera->targetPos = target;
        camera->prevTargetPos = *target;
        camera->trackTargetX = TRUE;
        camera->trackTargetY = TRUE;
        camera->trackTargetZ = TRUE;
    }
}

void Camera_ComputeProjectionMatrix(const u8 projection, Camera *camera) {
    if (projection == CAMERA_PROJECTION_PERSPECTIVE) {
        NNS_G3dGlbPerspective(
            camera->perspective.sinFovY,
            camera->perspective.cosFovY,
            camera->perspective.aspectRatio,
            camera->perspective.nearClip,
            camera->perspective.farClip);

        camera->projection = CAMERA_PROJECTION_PERSPECTIVE;
        gBufferMode = GX_BUFFERMODE_Z;
    } else {
        fx32 top = FX_Mul(FX_Div(camera->perspective.sinFovY, camera->perspective.cosFovY), camera->distance);
        fx32 right = FX_Mul(top, camera->perspective.aspectRatio);

        NNS_G3dGlbOrtho(top, -top, -right, right, camera->perspective.nearClip, camera->perspective.farClip);

        camera->projection = CAMERA_PROJECTION_ORTHOGRAPHIC;
        gBufferMode = GX_BUFFERMODE_Z;
    }
}

void Camera_SetFOV(const u16 fovY, Camera *camera) {
    camera->fovY = fovY;
    camera->perspective.sinFovY = FX_SinIdx(camera->fovY);
    camera->perspective.cosFovY = FX_CosIdx(camera->fovY);

    Camera_ComputeProjectionMatrix(camera->projection, camera);
}

void Camera_AdjustFOV(const u16 amount, Camera *camera) {
    camera->fovY += amount;
    camera->perspective.sinFovY = FX_SinIdx(camera->fovY);
    camera->perspective.cosFovY = FX_CosIdx(camera->fovY);

    Camera_ComputeProjectionMatrix(camera->projection, camera);
}

void Camera_Move(const VecFx32 *delta, Camera *camera) {
    VEC_Add(&camera->lookAt.position, delta, &camera->lookAt.position);
    VEC_Add(&camera->lookAt.target, delta, &camera->lookAt.target);
}

void Camera_SetAngleAroundSelf(const CameraAngle *angle, Camera *camera) {
    camera->angle = *angle;
    Camera_AdjustTargetFromAngle(camera);
}

void Camera_SetAngleAroundTarget(const CameraAngle *angle, Camera *camera) {
    camera->angle = *angle;
    Camera_AdjustPositionAroundTarget(camera);
}

void Camera_AdjustAngleAroundSelf(const CameraAngle *amount, Camera *camera) {
    camera->angle.x += amount->x;
    camera->angle.y += amount->y;
    camera->angle.z += amount->z;

    Camera_AdjustTargetFromAngle(camera);
}

void Camera_AdjustAngleAroundTarget(const CameraAngle *amount, Camera *camera) {
    camera->angle.x += amount->x;
    camera->angle.y += amount->y;
    camera->angle.z += amount->z;

    Camera_AdjustPositionAroundTarget(camera);
}

void Camera_SetDistance(const fx32 distance, Camera *camera) {
    camera->distance = distance;
    Camera_AdjustPositionAroundTarget(camera);
}

void Camera_SetTargetAndUpdatePosition(const VecFx32 *target, Camera *camera) {
    camera->lookAt.target = *target;
    Camera_AdjustPositionAroundTarget(camera);
}

void Camera_AdjustDistance(const fx32 amount, Camera *camera) {
    camera->distance += amount;
    Camera_AdjustPositionAroundTarget(camera);
}

u16 Camera_GetFOV(Camera const *camera) {
    return camera->fovY;
}

fx32 Camera_GetDistance(Camera const *camera) {
    return camera->distance;
}

CameraAngle Camera_GetAngle(Camera const *camera) {
    return camera->angle;
}

VecFx32 Camera_GetTarget(Camera const *camera) {
    return camera->lookAt.target;
}

VecFx32 Camera_GetPosition(Camera const *camera) {
    return camera->lookAt.position;
}

void Camera_SetTarget(const VecFx32 *target, Camera *camera) {
    camera->lookAt.target = *target;
}

void Camera_SetPosition(const VecFx32 *position, Camera *camera) {
    camera->lookAt.position = *position;
}
