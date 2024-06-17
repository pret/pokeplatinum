#ifndef POKEPLATINUM_CAMERA_H
#define POKEPLATINUM_CAMERA_H

#include "overlay115/camera_angle.h"
#include "constants/heap.h"

#include <nitro/fx/fx.h>

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
} Camera_sub2;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
} Camera_sub1;

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
    Camera_sub1 unk_00;
    Camera_sub2 unk_14;
    fx32 unk_38;
    CameraAngle cameraAngle;
    u8 unk_44;
    u16 unk_46;
    VecFx32 unk_48;
    const VecFx32 * unk_54;
    BOOL unk_58;
    BOOL unk_5C;
    BOOL unk_60;
    UnkStruct_02020304 * unk_64;
} Camera;

void sub_02020304(const int param0, const int param1, const int param2, const int param3, Camera *camera);
void sub_02020390(Camera *camera);
Camera *Camera_Alloc(const enum HeapId heapID);
void Camera_Delete(Camera *camera);
void Camera_Copy(Camera const *src, Camera *dst);
void Camera_SetAsActive(Camera *camera);
void Camera_ClearActive(void);
void sub_020203EC();
void sub_0202049C(void);
void sub_02020680(const VecFx32 * param0, Camera *camera);
void sub_02020690(const VecFx32 * param0, Camera *camera);
void sub_020206B0(Camera *camera);
void sub_020206BC(const fx32 param0, const fx32 param1, Camera *camera);
void sub_020206D0(const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, const BOOL param5, Camera *camera);
void sub_02020738(const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, Camera *camera);
void sub_02020784(const VecFx32 * param0, const VecFx32 * param1, const u16 param2, const u8 param3, const BOOL param4, Camera *camera);
void sub_02020854(const u8 param0, Camera *camera);
void Camera_SetFOV(const u16 param0, Camera *camera);
void sub_0202094C(const u16 param0, Camera *camera);
void sub_02020990(const VecFx32 * param0, Camera *camera);
void sub_020209B0(const CameraAngle * cameraAngle, Camera *camera);
void Camera_SetAngle(const CameraAngle * cameraAngle, Camera *camera);
void sub_020209F8(const CameraAngle * cameraAngle, Camera *camera);
void sub_02020A24(const CameraAngle * cameraAngle, Camera *camera);
void Camera_SetDistance(const fx32 param0, Camera *camera);
void sub_02020A5C(const VecFx32 * param0, Camera *camera);
void sub_02020A78(const fx32 param0, Camera *camera);
u16 Camera_GetFOV(Camera const * param0);
fx32 Camera_GetDistance(Camera const * param0);
CameraAngle sub_02020A94(Camera const * param0);
VecFx32 sub_02020AAC(Camera const * param0);
VecFx32 sub_02020ABC(Camera const * param0);
void sub_02020ACC(const VecFx32 * param0, Camera *camera);
void sub_02020ADC(const VecFx32 * param0, Camera *camera);

#endif // POKEPLATINUM_CAMERA_H
