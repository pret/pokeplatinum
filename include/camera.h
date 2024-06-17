#ifndef POKEPLATINUM_CAMERA_H
#define POKEPLATINUM_CAMERA_H

#include "overlay115/camera_angle.h"

#include <nitro/fx/fx.h>

typedef struct {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
} UnkStruct_020203AC_sub2;

typedef struct {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
} UnkStruct_020203AC_sub1;

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

typedef struct UnkStruct_020203AC_t {
    UnkStruct_020203AC_sub1 unk_00;
    UnkStruct_020203AC_sub2 unk_14;
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
} UnkStruct_020203AC;

void sub_02020304(const int param0, const int param1, const int param2, const int param3, UnkStruct_020203AC * param4);
void sub_02020390(UnkStruct_020203AC * param0);
UnkStruct_020203AC * sub_020203AC(const int param0);
void sub_020203B8(UnkStruct_020203AC * param0);
void sub_020203C0(UnkStruct_020203AC const * param0, UnkStruct_020203AC * param1);
void sub_020203D4(UnkStruct_020203AC * param0);
void sub_020203E0(void);
void sub_020203EC();
void sub_0202049C(void);
void sub_02020680(const VecFx32 * param0, UnkStruct_020203AC * param1);
void sub_02020690(const VecFx32 * param0, UnkStruct_020203AC * param1);
void sub_020206B0(UnkStruct_020203AC * param0);
void sub_020206BC(const fx32 param0, const fx32 param1, UnkStruct_020203AC * param2);
void sub_020206D0(const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, const BOOL param5, UnkStruct_020203AC * param6);
void sub_02020738(const VecFx32 * param0, const fx32 param1, const CameraAngle * cameraAngle, const u16 param3, const u8 param4, UnkStruct_020203AC * param5);
void sub_02020784(const VecFx32 * param0, const VecFx32 * param1, const u16 param2, const u8 param3, const BOOL param4, UnkStruct_020203AC * param5);
void sub_02020854(const u8 param0, UnkStruct_020203AC * param1);
void Camera_SetFOV(const u16 param0, UnkStruct_020203AC * param1);
void sub_0202094C(const u16 param0, UnkStruct_020203AC * param1);
void sub_02020990(const VecFx32 * param0, UnkStruct_020203AC * param1);
void sub_020209B0(const CameraAngle * cameraAngle, UnkStruct_020203AC * param1);
void Camera_SetAngle(const CameraAngle * cameraAngle, UnkStruct_020203AC * param1);
void sub_020209F8(const CameraAngle * cameraAngle, UnkStruct_020203AC * param1);
void sub_02020A24(const CameraAngle * cameraAngle, UnkStruct_020203AC * param1);
void Camera_SetDistance(const fx32 param0, UnkStruct_020203AC * param1);
void sub_02020A5C(const VecFx32 * param0, UnkStruct_020203AC * param1);
void sub_02020A78(const fx32 param0, UnkStruct_020203AC * param1);
u16 Camera_GetFOV(UnkStruct_020203AC const * param0);
fx32 Camera_GetDistance(UnkStruct_020203AC const * param0);
CameraAngle sub_02020A94(UnkStruct_020203AC const * param0);
VecFx32 sub_02020AAC(UnkStruct_020203AC const * param0);
VecFx32 sub_02020ABC(UnkStruct_020203AC const * param0);
void sub_02020ACC(const VecFx32 * param0, UnkStruct_020203AC * param1);
void sub_02020ADC(const VecFx32 * param0, UnkStruct_020203AC * param1);

#endif // POKEPLATINUM_CAMERA_H
