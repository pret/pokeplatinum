#include "battle_anim/ov12_02225640.h"

#include <nitro.h>
#include <string.h>

#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"
#include "battle_anim/ov12_0222421C.h"

#include "camera.h"
#include "particle_system.h"
#include "spl.h"

static void ov12_02225640(GenericEmitterCallbackData *param0, int param1[]);
static BOOL ov12_0222564C(SPLEmitter *param0, GenericEmitterCallbackData *param1);
static BOOL ov12_02225670(SPLEmitter *param0, GenericEmitterCallbackData *param1);
static BOOL ov12_022256AC(SPLEmitter *param0, GenericEmitterCallbackData *param1);
static BOOL ov12_022256E8(SPLEmitter *param0, GenericEmitterCallbackData *param1);
static BOOL ov12_02225724(SPLEmitter *param0, GenericEmitterCallbackData *param1);
static BOOL ov12_02225784(SPLEmitter *param0, GenericEmitterCallbackData *param1);
static BOOL ov12_022257C0(SPLEmitter *param0, GenericEmitterCallbackData *param1);
static BOOL ov12_022257FC(SPLEmitter *param0, GenericEmitterCallbackData *param1);
static BOOL ov12_02225824(SPLEmitter *param0, GenericEmitterCallbackData *param1);

static BOOL (*const Unk_ov12_02239E10[])(SPLEmitter *, GenericEmitterCallbackData *) = {
    ov12_0222564C,
    ov12_02225670,
    ov12_022256AC,
    ov12_022256E8,
    ov12_02225724,
    ov12_02225784,
    ov12_022257C0,
    ov12_022257FC,
    ov12_02225824
};

static void ov12_02225640(GenericEmitterCallbackData *param0, int param1[])
{
    BattleAnimSystem_GetExtraParams(param0->battleAnimSys, param1, 4);
}

static BOOL ov12_0222564C(SPLEmitter *param0, GenericEmitterCallbackData *param1)
{
    Camera *camera;
    CameraAngle v1 = { 0, 0, 0 };

    camera = ParticleSystem_GetCamera(param1->particleSys);
    Camera_SetAngleAroundTarget(&v1, camera);

    return 1;
}

static BOOL ov12_02225670(SPLEmitter *param0, GenericEmitterCallbackData *param1)
{
    Camera *camera;
    CameraAngle v1 = { (0x1000 * 2), 0x1000 * 2, 0 };

    camera = ParticleSystem_GetCamera(param1->particleSys);

    ParticleSystem_SetCameraProjection(param1->particleSys, 1);
    Camera_SetAngleAroundTarget(&v1, camera);

    return 1;
}

static BOOL ov12_022256AC(SPLEmitter *param0, GenericEmitterCallbackData *param1)
{
    int v0[4];
    CameraAngle v1 = { 0, 0, 0, 0 };
    Camera *camera;

    ov12_02225640(param1, v0);

    v1.x = v0[1];
    v1.y = v0[2];
    v1.z = v0[3];

    camera = ParticleSystem_GetCamera(param1->particleSys);

    Camera_SetAngleAroundTarget(&v1, camera);
    return 1;
}

static BOOL ov12_022256E8(SPLEmitter *param0, GenericEmitterCallbackData *param1)
{
    Camera *camera;
    CameraAngle v1 = { -(0x1000 * 3), 0x1000 * 2, 0x1000 };

    camera = ParticleSystem_GetCamera(param1->particleSys);

    ParticleSystem_SetCameraProjection(param1->particleSys, 1);
    Camera_SetAngleAroundTarget(&v1, camera);

    return 1;
}

static BOOL ov12_02225724(SPLEmitter *param0, GenericEmitterCallbackData *param1)
{
    Camera *camera;
    CameraAngle v1 = { 49664, 5952, 4096 };
    CameraAngle v2 = { 9248, 3744, 0 };

    camera = ParticleSystem_GetCamera(param1->particleSys);
    ParticleSystem_SetCameraProjection(param1->particleSys, 1);

    if (BattleAnimSystem_IsContest(param1->battleAnimSys) == 1) {
        Camera_SetAngleAroundTarget(&v1, camera);
    } else {
        Camera_SetAngleAroundTarget(&v2, camera);
    }

    return 1;
}

static BOOL ov12_02225784(SPLEmitter *param0, GenericEmitterCallbackData *param1)
{
    Camera *camera;
    CameraAngle v1 = { 49664, 5952, 4096 };

    camera = ParticleSystem_GetCamera(param1->particleSys);

    ParticleSystem_SetCameraProjection(param1->particleSys, 1);
    Camera_SetAngleAroundTarget(&v1, camera);

    return 1;
}

static BOOL ov12_022257C0(SPLEmitter *param0, GenericEmitterCallbackData *param1)
{
    Camera *camera;
    CameraAngle v1 = { 0, 0, -6000 };

    camera = ParticleSystem_GetCamera(param1->particleSys);

    ParticleSystem_SetCameraProjection(param1->particleSys, 1);
    Camera_SetAngleAroundTarget(&v1, camera);

    return 1;
}

static BOOL ov12_022257FC(SPLEmitter *param0, GenericEmitterCallbackData *param1)
{
    VecFx32 v0;
    Camera *camera = ParticleSystem_GetCamera(param1->particleSys);

    BattleAnimUtil_GetBattlerWorldPos_CameraLookAt(param1->battleAnimSys, param1->startBattler, &v0);
    Camera_SetTarget(&v0, camera);

    return 1;
}

static BOOL ov12_02225824(SPLEmitter *param0, GenericEmitterCallbackData *param1)
{
    VecFx32 v0;
    Camera *camera = ParticleSystem_GetCamera(param1->particleSys);

    BattleAnimUtil_GetBattlerWorldPos_CameraLookAt(param1->battleAnimSys, param1->endBattler, &v0);
    Camera_SetTarget(&v0, camera);

    return 1;
}

void ov12_0222584C(int param0, SPLEmitter *param1, GenericEmitterCallbackData *param2)
{
    BOOL v0 = Unk_ov12_02239E10[param0](param1, param2);

    if (v0 == 0) {
        (void)0;
    }
}
