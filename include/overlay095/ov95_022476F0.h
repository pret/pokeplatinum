#ifndef POKEPLATINUM_OV95_022476F0_H
#define POKEPLATINUM_OV95_022476F0_H

#include <nitro/fx/fx.h>

#include "constants/narc.h"

#include "overlay095/struct_ov95_0224773C_decl.h"
#include "overlay095/struct_ov95_02247958_decl.h"

#include "camera.h"

Trade3DScene *Trade3DScene_New(u32 modelCount, fx32 targetX, fx32 targetY, fx32 targetZ);
void Trade3DScene_Free(Trade3DScene *tradeScene);
void Trade3DScene_Render(Trade3DScene *tradeScene);
Trade3DModel *Trade3DModel_Load(Trade3DScene *tradeScene, int modelIndex, enum NarcID narcID, u32 memberIndex, fx32 x, fx32 y, fx32 z, BOOL enabled);
void Trade3DModel_GetPosition(const Trade3DModel *tradeModel, VecFx32 *outPosition);
void Trade3DModel_SetPosition(Trade3DModel *tradeModel, const VecFx32 *position);
void Trade3DModel_GetRotation(const Trade3DModel *tradeModel, VecFx16 *outRotation);
void Trade3DModel_SetRotation(Trade3DModel *tradeModel, const VecFx16 *rotation);
void Trade3DModel_SetEnabled(Trade3DModel *tradeModel, BOOL enabled);
void Trade3DModel_SetAlpha(Trade3DModel *tradeModel, int alpha);
void Trade3DModel_SetScale(Trade3DModel *tradeModel, fx32 scale);
BOOL Trade3DModel_IsInView(Trade3DModel *tradeModel);
void Trade3DScene_GetCameraPosition(Trade3DScene *tradeScene, VecFx32 *outPosition);
void Trade3DScene_SetCameraAngle(Trade3DScene *tradeScene, const CameraAngle *cameraAngle);
void Trade3DScene_AdjustCameraAngle(Trade3DScene *tradeScene, const CameraAngle *cameraAngle);
void Trade3DScene_ComputeProjection(Trade3DScene *tradeScene, u8 projectionType);
void Trade3DScene_SetFOV(Trade3DScene *tradeScene, u16 fov);

#endif // POKEPLATINUM_OV95_022476F0_H
