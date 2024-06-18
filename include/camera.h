#ifndef POKEPLATINUM_CAMERA_H
#define POKEPLATINUM_CAMERA_H

#include "overlay115/camera_angle.h"
#include "constants/heap.h"

#include <nitro/fx/fx.h>

enum CameraProjection {
    CAMERA_PROJECTION_PERSPECTIVE = 0,
    CAMERA_PROJECTION_ORTHOGRAPHIC,
};

typedef struct CameraLookAt {
    VecFx32 position;
    VecFx32 target;
    VecFx32 up;
} CameraLookAt;

typedef struct CameraPerspectiveProjection {
    fx32 sinFovY;
    fx32 cosFovY;
    fx32 aspectRatio;
    fx32 nearClip;
    fx32 farClip;
} CameraPerspectiveProjection;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    BOOL unk_10;
    BOOL unk_14;
    BOOL unk_18;
    BOOL unk_1C;
    VecFx32 * unk_20;
} UnkStruct_02020304;

typedef struct Camera {
    CameraPerspectiveProjection perspective;
    CameraLookAt lookAt;
    fx32 distance;
    CameraAngle angle;
    u8 projection;
    u16 fovY;
    VecFx32 prevTargetPos;
    const VecFx32 * targetPos;
    BOOL trackTargetX;
    BOOL trackTargetY;
    BOOL trackTargetZ;
    UnkStruct_02020304 * unk_64;
} Camera;

void sub_02020304(const int param0, const int param1, const int param2, const int param3, Camera *camera);
void sub_02020390(Camera *camera);
Camera *Camera_Alloc(const enum HeapId heapID);
void Camera_Delete(Camera *camera);
void Camera_Copy(Camera const *src, Camera *dst);
void Camera_SetAsActive(Camera *camera);
void Camera_ClearActive(void);
void Camera_ComputeViewMatrix();
void sub_0202049C(void);
void Camera_SetUp (const VecFx32 *up, Camera *camera);
void Camera_TrackTarget(const VecFx32 *target, Camera *camera);
void Camera_ReleaseTarget(Camera *camera);
void Camera_SetClipping(const fx32 nearClip, const fx32 farClip, Camera *camera);
void Camera_InitWithTarget(const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, const BOOL param5, Camera *camera);
void Camera_InitWithPosition(const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, Camera *camera);
void Camera_InitWithTargetAndPosition(const VecFx32 * param0, const VecFx32 * param1, const u16 param2, const u8 param3, const BOOL param4, Camera *camera);
void Camera_ComputeProjectionMatrix(const u8 projection, Camera *camera);
void Camera_SetFOV(const u16 fovY, Camera *camera);
void Camera_AdjustFOV(const u16 amount, Camera *camera);
void Camera_Move(const VecFx32 *delta, Camera *camera);
void Camera_SetAngleAroundSelf(const CameraAngle * cameraAngle, Camera *camera);
void Camera_SetAngleAroundTarget(const CameraAngle * cameraAngle, Camera *camera);
void Camera_AdjustAngleAroundSelf(const CameraAngle * cameraAngle, Camera *camera);
void Camera_AdjustAngleAroundTarget(const CameraAngle * cameraAngle, Camera *camera);
void Camera_SetDistance(const fx32 distance, Camera *camera);
void Camera_SetTargetAndUpdatePosition(const VecFx32 * param0, Camera *camera);
void Camera_AdjustDistance(const fx32 amount, Camera *camera);
u16 Camera_GetFOV(Camera const * param0);
fx32 Camera_GetDistance(Camera const * param0);
CameraAngle Camera_GetAngle(Camera const * param0);
VecFx32 Camera_GetTarget(Camera const * param0);
VecFx32 Camera_GetPosition(Camera const * param0);
void Camera_SetTarget(const VecFx32 * param0, Camera *camera);
void Camera_SetPosition(const VecFx32 * param0, Camera *camera);

#endif // POKEPLATINUM_CAMERA_H
