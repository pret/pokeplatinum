#include "overlay100/ov100_021D400C.h"

#include <nitro.h>
#include <string.h>

#include "overlay100/struct_ov100_021D4104.h"

#include "math_util.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

static BOOL LightBall_ComputeApproachStep(s16 targetX, s16 targetY, f32 x, f32 y, f32 *outStepX, f32 *outStepY, f32 stepSize, s16 stopDistance);
static BOOL LightBall_ApproachTarget(LightBall *lightBall, s16 targetX, s16 targetY, f32 stepSize, int stopDistance);
static void LightBall_ApproachStartPosition(LightBall *lightBall);
static void LightBall_Orbit(LightBall *lightBall);
static void LightBall_OrbitAt(LightBall *lightBall, int centerX, int centerY, int radiusX, int radiusY);
static void LightBall_Wander(LightBall *lightBall);
static void LightBall_Jitter(LightBall *lightBall);
static void LightBall_UpdateDepth(LightBall *lightBall);

static void (*const sLightBallStateHandlers[])(LightBall *) = {
    LightBall_ApproachStartPosition,
    LightBall_Orbit,
    LightBall_Wander,
    LightBall_Jitter
};

static BOOL LightBall_ComputeApproachStep(s16 targetX, s16 targetY, f32 x, f32 y, f32 *outStepX, f32 *outStepY, f32 stepSize, s16 stopDistance)
{
    f32 distance;
    f32 distanceSquared;
    Vec2F32 step;
    Vec2F32 delta;
    Vec2F32 offset;

    offset.x = 0;
    offset.y = 0;

    delta.x = (targetX - x);
    delta.y = (targetY - y);

    step.x = 0;
    step.y = 0;

    distanceSquared = (delta.x * delta.x) + (delta.y * delta.y);
    distance = FX_Sqrt(FX_F32_TO_FX32(distanceSquared));
    distance = FX_FX32_TO_F32(distance);

    if ((distance < stepSize) || (stopDistance > distance) || (distance == 0)) {
        return FALSE;
    }

    step.x = (delta.x * stepSize) / distance;
    step.y = (delta.y * stepSize) / distance;

    *outStepX = (step.x + offset.x);
    *outStepY = (step.y + offset.y);

    return TRUE;
}

static BOOL LightBall_ApproachTarget(LightBall *lightBall, s16 targetX, s16 targetY, f32 stepSize, int stopDistance)
{
    f32 x;
    f32 y;
    fx32 posX;
    fx32 posY;
    f32 stepX;
    f32 stepY;
    BOOL moved;
    fx32 offsetX, offsetY;

    ManagedSprite_GetPositionFxXYWithSubscreenOffset(lightBall->sprite, &posX, &posY, FX32_CONST(192));

    x = FX_FX32_TO_F32(posX);
    y = FX_FX32_TO_F32(posY);

    moved = LightBall_ComputeApproachStep(targetX, targetY, x, y, &stepX, &stepY, stepSize, stopDistance);

    if (moved) {
        offsetX = FX_F32_TO_FX32(stepX);
        offsetY = FX_F32_TO_FX32(stepY);

        lightBall->driftAngle += 8;
        lightBall->driftAngle %= 360;

        offsetX += (CalcSineDegrees_Wraparound(lightBall->driftAngle) * 1);
        offsetY += (CalcCosineDegrees_Wraparound(lightBall->driftAngle) * 1);

        ManagedSprite_OffsetPositionFxXY(lightBall->sprite, offsetX, offsetY);
    }

    return moved;
}

static void LightBall_ApproachStartPosition(LightBall *lightBall)
{
    LightBall_ApproachTarget(lightBall, 128, 40, 5.0f, 32);
}

static void LightBall_Orbit(LightBall *lightBall)
{
    fx32 posX, posY;

    lightBall->orbitAngle += 8;
    lightBall->orbitAngle %= 360;

    posX = (128 << FX32_SHIFT) + (CalcSineDegrees_Wraparound(lightBall->orbitAngle) * 64);
    posY = (48 << FX32_SHIFT) + (CalcCosineDegrees_Wraparound(lightBall->orbitAngle) * 24);

    ManagedSprite_SetPositionFxXYWithSubscreenOffset(lightBall->sprite, posX, posY, FX32_CONST(192));

    lightBall->depth = posY / FX32_ONE;
}

static void LightBall_OrbitAt(LightBall *lightBall, int centerX, int centerY, int radiusX, int radiusY)
{
    fx32 posX, posY;

    lightBall->orbitAngle += 8;
    lightBall->orbitAngle %= 360;

    posX = (centerX << FX32_SHIFT) + (CalcSineDegrees_Wraparound(lightBall->orbitAngle) * radiusX);
    posY = (centerY << FX32_SHIFT) + (CalcCosineDegrees_Wraparound(lightBall->orbitAngle) * radiusY);

    ManagedSprite_SetPositionFxXYWithSubscreenOffset(lightBall->sprite, posX, posY, FX32_CONST(192));
}

static void LightBall_Wander(LightBall *lightBall)
{
    fx32 posX, posY;
    static s16 wanderPoints[][2] = {
        { 97, 80 },
        { 87, 106 },
        { 102, 94 },
        { 182, 83 },
        { 129, 116 },
        { 97, 116 },
        { 172, 84 },
        { 187, 99 },
        { 168, 123 },
        { 108, 93 },
    };
    BOOL moved = LightBall_ApproachTarget(lightBall, wanderPoints[lightBall->stateParams[2]][0], wanderPoints[lightBall->stateParams[2]][1], 3.0f, 10);

    if (moved == 0) {
        lightBall->stateParams[2]++;
        lightBall->stateParams[2] %= NELEMS(wanderPoints);
        lightBall->stateParams[2] = LCRNG_Next() % NELEMS(wanderPoints);
        lightBall->state = 3;
    }

    ManagedSprite_GetPositionFxXYWithSubscreenOffset(lightBall->sprite, &posX, &posY, FX32_CONST(192));

    lightBall->depth = (posY / FX32_ONE);
}

static void LightBall_Jitter(LightBall *lightBall)
{
    fx32 posX, posY;

    lightBall->driftAngle += 8;
    lightBall->driftAngle %= 360;

    if (lightBall->driftAngle < 12) {
        lightBall->jitterIntensity++;
        lightBall->jitterIntensity %= 3;
        lightBall->stateParams[0] = (LCRNG_Next() % lightBall->jitterIntensity) + 1;
        lightBall->stateParams[1] = (LCRNG_Next() % lightBall->jitterIntensity) + 1;
        lightBall->state = 2;
    }

    ManagedSprite_GetPositionFxXYWithSubscreenOffset(lightBall->sprite, &posX, &posY, FX32_CONST(192));

    posX += (CalcSineDegrees_Wraparound(lightBall->driftAngle) * (3 * lightBall->stateParams[0]));
    posY += (CalcCosineDegrees_Wraparound(lightBall->driftAngle) * (3 * lightBall->stateParams[1]));

    ManagedSprite_SetPositionFxXYWithSubscreenOffset(lightBall->sprite, posX, posY, FX32_CONST(192));

    lightBall->depth = posY / FX32_ONE;
}

static void LightBall_UpdateDepth(LightBall *lightBall)
{
    f32 scale;

    scale = lightBall->depth;
    scale /= 100.0f;
    scale = 0.8f - scale;

    if (scale <= 0.2f) {
        scale = 0.2f;
    }

    if (scale >= 0.6f) {
        scale = 0.6f;
    }

    ManagedSprite_SetAffineScale(lightBall->sprite, scale, scale);
    ManagedSprite_SetPriority(lightBall->sprite, lightBall->depth);
}

void LightBall_Update(SysTask *unused, void *param)
{
    LightBall *lightBall = param;

    sLightBallStateHandlers[lightBall->state](lightBall);
    LightBall_UpdateDepth(lightBall);
    ManagedSprite_TickTwoFrames(lightBall->sprite);
}

void LightBall_UpdateOrbitOrApproach(SysTask *unused, void *param)
{
    LightBall *lightBall = param;

    if (lightBall->state) {
        LightBall_OrbitAt(lightBall, 128, 48 - 12, 32, 12);
    } else {
        s16 targetX, targetY;
        BOOL moved;

        if (lightBall->targetSprite && lightBall->followTarget) {
            ManagedSprite_GetPositionXY(lightBall->targetSprite, &targetX, &targetY);
            moved = LightBall_ApproachTarget(lightBall, targetX, targetY, 3.0f, 1);
            f32 scaleX, scaleY;
            ManagedSprite_GetAffineScale(lightBall->sprite, &scaleX, &scaleY);

            if (scaleX > 0.10f) {
                scaleX = scaleX - 0.002f;
            }

            ManagedSprite_SetAffineScale(lightBall->sprite, scaleX, scaleX);
        }
    }

    ManagedSprite_TickTwoFrames(lightBall->sprite);
}
