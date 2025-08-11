#ifndef POKEPLATINUM_OV95_022476F0_H
#define POKEPLATINUM_OV95_022476F0_H

#include <nitro/fx/fx.h>

#include "constants/narc.h"

#include "overlay095/struct_ov95_0224773C_decl.h"
#include "overlay095/struct_ov95_02247958_decl.h"

#include "camera.h"

UnkStruct_ov95_0224773C *ov95_022476F0(u32 param0, fx32 param1, fx32 param2, fx32 param3);
void ov95_0224773C(UnkStruct_ov95_0224773C *param0);
void ov95_02247770(UnkStruct_ov95_0224773C *param0);
UnkStruct_ov95_02247958 *ov95_022478B4(UnkStruct_ov95_0224773C *param0, int param1, enum NarcID narcID, u32 param3, fx32 param4, fx32 param5, fx32 param6, BOOL param7);
void ov95_02247958(const UnkStruct_ov95_02247958 *param0, VecFx32 *param1);
void ov95_02247968(UnkStruct_ov95_02247958 *param0, const VecFx32 *param1);
void ov95_02247978(const UnkStruct_ov95_02247958 *param0, VecFx16 *param1);
void ov95_02247990(UnkStruct_ov95_02247958 *param0, const VecFx16 *param1);
void ov95_022479A8(UnkStruct_ov95_02247958 *param0, BOOL param1);
void ov95_022479AC(UnkStruct_ov95_02247958 *param0, int param1);
void ov95_022479D4(UnkStruct_ov95_02247958 *param0, fx32 param1);
BOOL ov95_022479DC(UnkStruct_ov95_02247958 *param0);
void ov95_02247A90(UnkStruct_ov95_0224773C *param0, VecFx32 *param1);
void ov95_02247AB0(UnkStruct_ov95_0224773C *param0, const CameraAngle *cameraAngle);
void ov95_02247AC0(UnkStruct_ov95_0224773C *param0, const CameraAngle *cameraAngle);
void ov95_02247AD0(UnkStruct_ov95_0224773C *param0, u8 param1);
void ov95_02247AE0(UnkStruct_ov95_0224773C *param0, u16 param1);

#endif // POKEPLATINUM_OV95_022476F0_H
