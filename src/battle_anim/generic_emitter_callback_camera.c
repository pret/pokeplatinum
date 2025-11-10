#include "battle_anim/generic_emitter_callback_camera.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"

#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"
#include "battle_anim/generic_emitter_callback.h"

#include "camera.h"
#include "particle_system.h"
#include "spl.h"

static void GenericEmitterCallback_GetCameraParams(GenericEmitterCallbackData *data, int params[EMITTER_CAMERA_PARAM_COUNT]);
static BOOL GenericEmitterCallback_ApplyFixedAngle0(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyFixedAngle1(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyExplicitAngle(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyFixedAngle3(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyFixedAngle4(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyFixedAngle5(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyFixedAngle6(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyStartBattlerTarget(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyEndBattlerTarget(SPLEmitter *emitter, GenericEmitterCallbackData *data);

static BOOL (*const sCameraFuncs[])(SPLEmitter *, GenericEmitterCallbackData *) = {
    GenericEmitterCallback_ApplyFixedAngle0,
    GenericEmitterCallback_ApplyFixedAngle1,
    GenericEmitterCallback_ApplyExplicitAngle,
    GenericEmitterCallback_ApplyFixedAngle3,
    GenericEmitterCallback_ApplyFixedAngle4,
    GenericEmitterCallback_ApplyFixedAngle5,
    GenericEmitterCallback_ApplyFixedAngle6,
    GenericEmitterCallback_ApplyStartBattlerTarget,
    GenericEmitterCallback_ApplyEndBattlerTarget
};

static void GenericEmitterCallback_GetCameraParams(GenericEmitterCallbackData *data, int params[EMITTER_CAMERA_PARAM_COUNT])
{
    BattleAnimSystem_GetExtraParams(data->battleAnimSys, params, EMITTER_CAMERA_PARAM_COUNT);
}

static BOOL GenericEmitterCallback_ApplyFixedAngle0(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    CameraAngle angle = { 0, 0, 0 };
    Camera *camera = ParticleSystem_GetCamera(data->particleSys);
    Camera_SetAngleAroundTarget(&angle, camera);

    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyFixedAngle1(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    // 45°, 45°, 0°
    CameraAngle angle = { DEG_TO_IDX_U16(45) + 1, DEG_TO_IDX_U16(45) + 1, 0 };
    Camera *camera = ParticleSystem_GetCamera(data->particleSys);

    ParticleSystem_SetCameraProjection(data->particleSys, CAMERA_PROJECTION_ORTHOGRAPHIC);
    Camera_SetAngleAroundTarget(&angle, camera);

    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyExplicitAngle(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    int params[EMITTER_CAMERA_PARAM_COUNT];
    CameraAngle angle = { 0, 0, 0, 0 };

    GenericEmitterCallback_GetCameraParams(data, params);

    angle.x = params[EMITTER_CAMERA_PARAM_X];
    angle.y = params[EMITTER_CAMERA_PARAM_Y];
    angle.z = params[EMITTER_CAMERA_PARAM_Z];

    Camera *camera = ParticleSystem_GetCamera(data->particleSys);
    Camera_SetAngleAroundTarget(&angle, camera);

    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyFixedAngle3(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    CameraAngle angle = { -DEG_TO_IDX_U16(67.502), DEG_TO_IDX_U16(45) + 1, DEG_TO_IDX_U16(22.5) + 1 };
    Camera *camera = ParticleSystem_GetCamera(data->particleSys);

    ParticleSystem_SetCameraProjection(data->particleSys, CAMERA_PROJECTION_ORTHOGRAPHIC);
    Camera_SetAngleAroundTarget(&angle, camera);

    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyFixedAngle4(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    CameraAngle angleContest = { DEG_TO_IDX_U16(272.817), DEG_TO_IDX_U16(32.696), DEG_TO_IDX_U16(22.5) + 1 };
    CameraAngle angleBattle = { DEG_TO_IDX_U16(50.8) + 1, DEG_TO_IDX_U16(20.567), 0 };

    Camera *camera = ParticleSystem_GetCamera(data->particleSys);
    ParticleSystem_SetCameraProjection(data->particleSys, CAMERA_PROJECTION_ORTHOGRAPHIC);

    if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
        Camera_SetAngleAroundTarget(&angleContest, camera);
    } else {
        Camera_SetAngleAroundTarget(&angleBattle, camera);
    }

    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyFixedAngle5(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    CameraAngle angle = { DEG_TO_IDX_U16(272.817), DEG_TO_IDX_U16(32.696), DEG_TO_IDX_U16(22.5) + 1 };
    Camera *camera = ParticleSystem_GetCamera(data->particleSys);

    ParticleSystem_SetCameraProjection(data->particleSys, CAMERA_PROJECTION_ORTHOGRAPHIC);
    Camera_SetAngleAroundTarget(&angle, camera);

    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyFixedAngle6(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    CameraAngle angle = { 0, 0, -DEG_TO_IDX_U16(32.96) };
    Camera *camera = ParticleSystem_GetCamera(data->particleSys);

    ParticleSystem_SetCameraProjection(data->particleSys, CAMERA_PROJECTION_ORTHOGRAPHIC);
    Camera_SetAngleAroundTarget(&angle, camera);

    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyStartBattlerTarget(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    Camera *camera = ParticleSystem_GetCamera(data->particleSys);

    VecFx32 target;
    BattleAnimUtil_GetBattlerWorldPos_CameraLookAt(data->battleAnimSys, data->startBattler, &target);
    Camera_SetTarget(&target, camera);

    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyEndBattlerTarget(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    Camera *camera = ParticleSystem_GetCamera(data->particleSys);

    VecFx32 target;
    BattleAnimUtil_GetBattlerWorldPos_CameraLookAt(data->battleAnimSys, data->endBattler, &target);
    Camera_SetTarget(&target, camera);

    return TRUE;
}

void GenericEmitterCallback_ApplyCameraFunc(int funcID, SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    sCameraFuncs[funcID](emitter, data);
}
