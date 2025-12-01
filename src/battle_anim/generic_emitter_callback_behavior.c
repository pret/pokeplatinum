#include "battle_anim/generic_emitter_callback_behavior.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"

#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"
#include "battle_anim/generic_emitter_callback.h"

#include "particle_system.h"
#include "spl.h"

static void GenericEmitterCallback_GetBehaviorParams(GenericEmitterCallbackData *data, int params[]);
static BOOL GenericEmitterCallback_ApplyBehaviorNone(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyGravityMag(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyRandomMag(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyRandomInterval(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyMagnetPos(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyMagnetForce(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplySpinAngle(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplySpinAxis(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_UnusedApply8(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_UnusedApply9(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_UnusedApply10(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_UnusedApply11(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyConvergenceTarget(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static BOOL GenericEmitterCallback_ApplyConvergenceForce(SPLEmitter *emitter, GenericEmitterCallbackData *data);

static BOOL (*const sBehaviorFunctions[])(SPLEmitter *, GenericEmitterCallbackData *) = {
    GenericEmitterCallback_ApplyBehaviorNone,
    GenericEmitterCallback_ApplyGravityMag,
    GenericEmitterCallback_ApplyRandomMag,
    GenericEmitterCallback_ApplyRandomInterval,
    GenericEmitterCallback_ApplyMagnetPos,
    GenericEmitterCallback_ApplyMagnetForce,
    GenericEmitterCallback_ApplySpinAngle,
    GenericEmitterCallback_ApplySpinAxis,
    GenericEmitterCallback_UnusedApply8,
    GenericEmitterCallback_UnusedApply9,
    GenericEmitterCallback_UnusedApply10,
    GenericEmitterCallback_UnusedApply11,
    GenericEmitterCallback_ApplyConvergenceTarget,
    GenericEmitterCallback_ApplyConvergenceForce
};

static void GenericEmitterCallback_GetBehaviorParams(GenericEmitterCallbackData *data, int params[EMITTER_BHV_PARAM_COUNT])
{
    BattleAnimSystem_GetExtraParams(data->battleAnimSys, params, EMITTER_BHV_PARAM_COUNT);
}

static BOOL GenericEmitterCallback_ApplyBehaviorNone(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyGravityMag(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    int params[EMITTER_BHV_PARAM_COUNT];
    VecFx16 mag = { 0, 0, 0 };

    GenericEmitterCallback_GetBehaviorParams(data, params);
    data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);

    if (params[EMITTER_BHV_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
        data->dir = 1;
    }

    switch (params[EMITTER_BHV_PARAM_MODE]) {
    case EMITTER_BHV_MODE_DEFAULT:
        ParticleSystem_SetEmitterGravityMagnitude(emitter, &mag);
        mag.x *= data->dir;
        mag.y *= data->dir;
        mag.z *= data->dir;
        break;
    case EMITTER_BHV_MODE_EXPLICIT:
        VEC_Fx16Set(&mag, params[EMITTER_BHV_PARAM_X], params[EMITTER_BHV_PARAM_Y], params[EMITTER_BHV_PARAM_Z]);

        mag.x *= data->dir;
        mag.y *= data->dir;
        mag.z *= data->dir;

        ParticleSystem_SetEmitterGravityMagnitude(emitter, &mag);
        return TRUE;
    case EMITTER_BHV_MODE_START:
    case EMITTER_BHV_MODE_END:
    case EMITTER_BHV_MODE_NONE:
        break;
    }

    mag.x -= data->position.x;
    mag.y -= data->position.y;
    mag.z -= data->position.z;

    ParticleSystem_SetEmitterGravityMagnitude(emitter, &mag);
    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyRandomMag(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyRandomInterval(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyMagnetPos(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    int params[EMITTER_BHV_PARAM_COUNT];
    VecFx32 pos = { 0, 0, 0 };

    GenericEmitterCallback_GetBehaviorParams(data, params);
    data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);

    if (params[EMITTER_BHV_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
        data->dir = 1;
    }

    switch (params[EMITTER_BHV_PARAM_MODE]) {
    case EMITTER_BHV_MODE_DEFAULT:
        ParticleSystem_GetEmitterMagnetTarget(emitter, &pos);
        pos.x *= data->dir;
        pos.y *= data->dir;
        pos.z *= data->dir;
        break;
    case EMITTER_BHV_MODE_EXPLICIT:
        VEC_Set(&pos, params[EMITTER_BHV_PARAM_X], params[EMITTER_BHV_PARAM_Y], params[EMITTER_BHV_PARAM_Z]);
        pos.x *= data->dir;
        pos.y *= data->dir;
        pos.z *= data->dir;
        break;
    case EMITTER_BHV_MODE_START:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_BHV_MODE_END:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_BHV_MODE_NONE:
        break;
    }

    pos.x -= data->position.x;
    pos.y -= data->position.y;

    ParticleSystem_SetEmitterMagnetTarget(emitter, &pos);
    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyMagnetForce(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    int params[EMITTER_BHV_PARAM_COUNT];
    fx16 force = 0;

    GenericEmitterCallback_GetBehaviorParams(data, params);
    data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);

    if (params[EMITTER_BHV_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
        data->dir = 1;
    }

    switch (params[EMITTER_BHV_PARAM_MODE]) {
    case EMITTER_BHV_MODE_DEFAULT: {
        ParticleSystem_GetEmitterMagnetForce(emitter, &force);
        force *= data->dir;
    } break;
    case EMITTER_BHV_MODE_EXPLICIT: {
        force = params[EMITTER_BHV_PARAM_X];
        force *= data->dir;
    } break;
    case EMITTER_BHV_MODE_START:
    case EMITTER_BHV_MODE_END:
    case EMITTER_BHV_MODE_NONE:
        break;
    }

    ParticleSystem_SetEmitterMagnetForce(emitter, &force);
    return TRUE;
}

static BOOL GenericEmitterCallback_ApplySpinAngle(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    int params[EMITTER_BHV_PARAM_COUNT];
    u16 angle = 0;

    GenericEmitterCallback_GetBehaviorParams(data, params);
    data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);

    if (params[EMITTER_BHV_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
        data->dir = 1;
    }

    switch (params[EMITTER_BHV_PARAM_MODE]) {
    case EMITTER_BHV_MODE_DEFAULT:
        ParticleSystem_GetEmitterSpinAngle(emitter, &angle);
        angle *= data->dir;
        break;
    case EMITTER_BHV_MODE_EXPLICIT:
        angle = params[EMITTER_BHV_PARAM_X];
        angle *= data->dir;
        break;
    case EMITTER_BHV_MODE_START:
    case EMITTER_BHV_MODE_END:
    case EMITTER_BHV_MODE_NONE:
        break;
    }

    ParticleSystem_SetEmitterSpinAngle(emitter, &angle);
    return TRUE;
}

static BOOL GenericEmitterCallback_ApplySpinAxis(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    int params[EMITTER_BHV_PARAM_COUNT];
    u16 axis = EMITTER_SPIN_AXIS_X;

    GenericEmitterCallback_GetBehaviorParams(data, params);
    data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);

    if (params[EMITTER_BHV_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
        data->dir = 1;
    }

    switch (params[EMITTER_BHV_PARAM_MODE]) {
    case EMITTER_BHV_MODE_DEFAULT:
        ParticleSystem_GetEmitterSpinAxis(emitter, &axis);
        break;
    case EMITTER_BHV_MODE_EXPLICIT:
        axis = params[EMITTER_BHV_PARAM_X];
        break;
    case EMITTER_BHV_MODE_START:
    case EMITTER_BHV_MODE_END:
    case EMITTER_BHV_MODE_NONE:
        break;
    }

    ParticleSystem_SetEmitterSpinAxis(emitter, &axis);
    return TRUE;
}

static BOOL GenericEmitterCallback_UnusedApply8(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    return TRUE;
}

static BOOL GenericEmitterCallback_UnusedApply9(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    return TRUE;
}

static BOOL GenericEmitterCallback_UnusedApply10(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    return TRUE;
}

static BOOL GenericEmitterCallback_UnusedApply11(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyConvergenceTarget(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    int params[EMITTER_BHV_PARAM_COUNT];
    VecFx32 target = { 0, 0, 0 };

    GenericEmitterCallback_GetBehaviorParams(data, params);
    data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);

    if (params[EMITTER_BHV_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
        data->dir = 1;
    }

    switch (params[EMITTER_BHV_PARAM_MODE]) {
    case EMITTER_BHV_MODE_DEFAULT:
        ParticleSystem_GetEmitterConvergenceTarget(emitter, &target);
        target.x *= data->dir;
        target.y *= data->dir;
        target.z *= data->dir;
        break;
    case EMITTER_BHV_MODE_EXPLICIT:
        VEC_Set(
            &target,
            params[EMITTER_BHV_PARAM_X],
            params[EMITTER_BHV_PARAM_Y],
            params[EMITTER_BHV_PARAM_Z]);
        target.x *= data->dir;
        target.y *= data->dir;
        target.z *= data->dir;
        break;
    case EMITTER_BHV_MODE_END_PARTIAL:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->endBattler, &target);
        target.x = (target.x * params[EMITTER_BHV_PARAM_NUMER]) / params[EMITTER_BHV_PARAM_DENOM];
        target.y = (target.y * params[EMITTER_BHV_PARAM_NUMER]) / params[EMITTER_BHV_PARAM_DENOM];
        target.z = (target.z * params[EMITTER_BHV_PARAM_NUMER]) / params[EMITTER_BHV_PARAM_DENOM];
        break;
    case EMITTER_BHV_MODE_START:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->startBattler, &target);
        break;
    case EMITTER_BHV_MODE_END:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->endBattler, &target);
        break;
    case EMITTER_BHV_MODE_NONE:
        break;
    }

    target.x -= data->position.x;
    target.y -= data->position.y;
    target.z -= data->position.z;

    ParticleSystem_SetEmitterConvergenceTarget(emitter, &target);
    return TRUE;
}

static BOOL GenericEmitterCallback_ApplyConvergenceForce(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    int params[EMITTER_BHV_PARAM_COUNT];
    fx16 force = 0;

    GenericEmitterCallback_GetBehaviorParams(data, params);
    data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);

    if (params[EMITTER_BHV_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
        data->dir = 1;
    }

    switch (params[EMITTER_BHV_PARAM_MODE]) {
    case EMITTER_BHV_MODE_DEFAULT:
        ParticleSystem_GetEmitterConvergenceForce(emitter, &force);
        force *= data->dir;
        break;
    case EMITTER_BHV_MODE_EXPLICIT:
        force = params[EMITTER_BHV_PARAM_X];
        force *= data->dir;
        break;
    case EMITTER_BHV_MODE_START:
    case EMITTER_BHV_MODE_END:
    case EMITTER_BHV_MODE_NONE:
        break;
    }

    ParticleSystem_SetEmitterConvergenceForce(emitter, &force);
    return TRUE;
}

void GenericEmitterCallback_CallBehaviorFunction(int behaviorValue, SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    sBehaviorFunctions[behaviorValue](emitter, data);
}

int GenericEmitterCallback_GetBehaviorFlag(int behaviorValue)
{
    const int flagTable[] = {
        EMITTER_BHV_FLAG_NONE,
        EMITTER_BHV_FLAG_GRAVITY_MAG,
        EMITTER_BHV_FLAG_UNUSED_2,
        EMITTER_BHV_FLAG_UNUSED_3,
        EMITTER_BHV_FLAG_MAGNET_POS,
        EMITTER_BHV_FLAG_MAGNET_MAG,
        EMITTER_BHV_FLAG_SPIN_ANGLE,
        EMITTER_BHV_FLAG_SPIN_AXIS,
        EMITTER_BHV_FLAG_UNUSED_8,
        EMITTER_BHV_FLAG_UNUSED_9,
        EMITTER_BHV_FLAG_UNUSED_10,
        EMITTER_BHV_FLAG_UNUSED_11,
        EMITTER_BHV_FLAG_CONVERGENCE_POS,
        EMITTER_BHV_FLAG_CONVERGENCE_MAG,
        EMITTER_BHV_FLAG_ALL
    };

    return flagTable[behaviorValue];
}

int GenericEmitterCallback_GetBehaviorValueCount(void)
{
    int i = 0;
    int count = 0;

    do {
        int flag = GenericEmitterCallback_GetBehaviorFlag(i);
        i++;

        if (flag == EMITTER_BHV_FLAG_ALL) {
            break;
        }

        count++;
    } while (count < 0xFF);

    if (count >= 0xFF) {
        return EMITTER_BHV_FLAG_NONE;
    }

    return i;
}
