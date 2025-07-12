#ifndef POKEPLATINUM_CAMERA_H
#define POKEPLATINUM_CAMERA_H

#include <nitro/fx/fx.h>

#include "constants/heap.h"

#define CAMERA_DELAY_NONE 0
#define CAMERA_DELAY_X    1
#define CAMERA_DELAY_Y    2
#define CAMERA_DELAY_Z    4

#define CAMERA_DEFAULT_NEAR_CLIP (FX32_ONE * 150)
#define CAMERA_DEFAULT_FAR_CLIP  (FX32_ONE * 900)

enum CameraProjection {
    CAMERA_PROJECTION_PERSPECTIVE = 0,
    CAMERA_PROJECTION_ORTHOGRAPHIC,
};

typedef struct CameraAngle {
    u16 x;
    u16 y;
    u16 z;
    u16 padding_06;
} CameraAngle;

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

typedef struct CameraPositionHistory {
    int historySize;
    int currentHistoryIndex;
    int nextHistoryIndex;
    int delay;
    BOOL delayReached;
    BOOL delayX;
    BOOL delayY;
    BOOL delayZ;
    VecFx32 *positions;
} CameraPositionHistory;

typedef struct Camera {
    CameraPerspectiveProjection perspective;
    CameraLookAt lookAt;
    fx32 distance;
    CameraAngle angle;
    u8 projection;
    u16 fovY;
    VecFx32 prevTargetPos;
    const VecFx32 *targetPos;
    BOOL trackTargetX;
    BOOL trackTargetY;
    BOOL trackTargetZ;
    CameraPositionHistory *history;
} Camera;

extern GXBufferMode gBufferMode;

void Camera_InitHistory(int historySize, int delay, int delayMask, enum HeapID heapID, Camera *camera);
void Camera_DeleteHistory(Camera *camera);
Camera *Camera_Alloc(const enum HeapID heapID);
void Camera_Delete(Camera *camera);
void Camera_Copy(Camera const *src, Camera *dst);
void Camera_SetAsActive(Camera *camera);
void Camera_ClearActive(void);
void Camera_ComputeViewMatrix(void);
void Camera_ComputeViewMatrixWithRoll(void); // Calculates the view matrix with respect to the camera's Z rotation
void Camera_SetUp(const VecFx32 *up, Camera *camera);
void Camera_TrackTarget(const VecFx32 *target, Camera *camera);
void Camera_ReleaseTarget(Camera *camera);
void Camera_SetClipping(const fx32 nearClip, const fx32 farClip, Camera *camera);
void Camera_InitWithTarget(const VecFx32 *target, const fx32 distance, const CameraAngle *angle, const u16 fovY, const u8 projection, const BOOL trackTarget, Camera *camera);
void Camera_InitWithPosition(const VecFx32 *position, const fx32 distance, const CameraAngle *angle, const u16 fovY, const u8 projection, Camera *camera);
void Camera_InitWithTargetAndPosition(const VecFx32 *target, const VecFx32 *position, const u16 fovY, const u8 projection, const BOOL trackTarget, Camera *camera);
void Camera_ComputeProjectionMatrix(const u8 projection, Camera *camera);
void Camera_SetFOV(const u16 fovY, Camera *camera);
void Camera_AdjustFOV(const u16 amount, Camera *camera);
void Camera_Move(const VecFx32 *delta, Camera *camera);
void Camera_SetAngleAroundSelf(const CameraAngle *angle, Camera *camera);
void Camera_SetAngleAroundTarget(const CameraAngle *angle, Camera *camera);
void Camera_AdjustAngleAroundSelf(const CameraAngle *amount, Camera *camera);
void Camera_AdjustAngleAroundTarget(const CameraAngle *amount, Camera *camera);
void Camera_SetDistance(const fx32 distance, Camera *camera);
void Camera_SetTargetAndUpdatePosition(const VecFx32 *target, Camera *camera);
void Camera_AdjustDistance(const fx32 amount, Camera *camera);
u16 Camera_GetFOV(Camera const *camera);
fx32 Camera_GetDistance(Camera const *camera);
CameraAngle Camera_GetAngle(Camera const *camera);
VecFx32 Camera_GetTarget(Camera const *camera);
VecFx32 Camera_GetPosition(Camera const *camera);
void Camera_SetTarget(const VecFx32 *target, Camera *camera);
void Camera_SetPosition(const VecFx32 *position, Camera *camera);

#endif // POKEPLATINUM_CAMERA_H
