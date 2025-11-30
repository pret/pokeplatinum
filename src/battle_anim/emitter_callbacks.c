#include "battle_anim/emitter_callbacks.h"

#include "nitro/fx/fx.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"

#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"
#include "global/utility.h"

#include "battle_script_battlers.h"
#include "camera.h"
#include "math_util.h"
#include "particle_system.h"
#include "spl.h"

static s8 BattleParticleUtil_GetSignFromBattler(BattleAnimSystem *param0, int param1, int param2);

static const VecFx32 Unk_ov12_0223A218 = {
    0x1700,
    0x4D00,
    -0x1000
};

static const VecFx32 Unk_ov12_0223A224 = {
    0x0,
    -FX32_ONE,
    0x0
};

static s8 BattleParticleUtil_GetSignFromBattler(BattleAnimSystem *system, int startBattler, int endBattler)
{
    s8 sign = +1;
    int startType = BattleAnimUtil_GetBattlerType(system, startBattler);
    int endType = BattleAnimUtil_GetBattlerType(system, endBattler);

    switch (startType) {
    case BATTLER_TYPE_SOLO_PLAYER:
    default:
        // sign = +1
        break;
    case BATTLER_TYPE_SOLO_ENEMY:
        sign = -1;
        break;
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
        // sign = +1
        break;
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
        sign = -1;
        break;
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
        // sign = +1
        break;
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
        sign = -1;
        break;
    }

    return sign;
}

void BattleAnimEmitterCb_Nop2(SPLEmitter *emitter)
{
    return;
}

void BattleAnimEmitterCb_SetPosToEnemy1(SPLEmitter *emitter)
{
    // Most likely a lot of code was commented out here, since most of the logic is redundant.
    // This function will always set the emitter position to the position of BATTLER_ENEMY_1.

    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    UNUSED(BattleAnimSystem_GetAttacker(system));
    UNUSED(BattleAnimSystem_GetDefender(system));
    int attacker = BATTLER_ENEMY_1;
    int defender = BATTLER_PLAYER_1;
    ParticleSystem *ps = BattleAnimSystem_GetCurrentParticleSystem(system);

    VecFx32 destination, attackerPos;
    if (BattleAnimUtil_GetBattlerSide(system, attacker) == BTLSCR_PLAYER) {
        BattleAnimUtil_GetBattlerWorldPos_Normal(system, attacker, &destination);
    } else {
        int attackerType = BattleAnimUtil_GetBattlerType(system, attacker);
        int opposingType = BattleAnimUtil_GetOpposingBattlerType(attackerType);
        enum CameraProjection projection = ParticleSystem_GetCameraProjection(ps);
        BOOL isContest = BattleAnimSystem_IsContest(system);

        BattleAnimUtil_GetBattlerTypeWorldPos_Normal(opposingType, &destination, isContest, projection);
        BattleAnimUtil_GetBattlerTypeWorldPos_Normal(attackerType, &attackerPos, isContest, projection);
    }

    SPLEmitter_SetPosX(emitter, destination.x);
    SPLEmitter_SetPosY(emitter, destination.y);
    SPLEmitter_SetPosZ(emitter, destination.z);

    // This entire part down here doesn't do anything because of the hardcoded attacker/defender above.
    VecFx32 up;
    BattleAnimUtil_GetUpVectorForBattler(attacker, &up);

    Camera *camera = ParticleSystem_GetCamera(ps);
    CameraAngle angle;

    switch (attacker) {
    case BATTLER_PLAYER_2:
    default:
        angle = Camera_GetAngle(camera);
        Camera_SetAngleAroundTarget(&angle, camera);
        break;
    case BATTLER_ENEMY_2:
        angle = Camera_GetAngle(camera);
        angle.x += DEG_TO_IDX(180) + 1;
        angle.y += DEG_TO_IDX(180) + 1;
        Camera_SetAngleAroundTarget(&angle, camera);
        break;
    }
}

void BattleAnimEmitterCb_SetPosToPlayer1(SPLEmitter *emitter)
{
    VecFx32 player1Pos, up;

    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    int defender = BattleAnimSystem_GetDefender(system);
    ParticleSystem *ps = BattleAnimSystem_GetCurrentParticleSystem(system);

    BattleAnimUtil_GetBattlerWorldPos_Normal(system, BATTLER_PLAYER_1, &player1Pos);

    SPLEmitter_SetPosX(emitter, player1Pos.x);
    SPLEmitter_SetPosY(emitter, player1Pos.y);
    SPLEmitter_SetPosZ(emitter, player1Pos.z);

    BattleAnimUtil_GetUpVectorForBattler(defender, &up);
    ParticleSystem_SetCameraUp(ps, &up);
}

void BattleAnimEmitterCb_SetPosToDefender(SPLEmitter *emitter)
{
    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    int defender = BattleAnimSystem_GetDefender(system);

    VecFx32 pos;
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, defender, &pos);

    SPLEmitter_SetPosX(emitter, pos.x);
    SPLEmitter_SetPosY(emitter, pos.y);
    SPLEmitter_SetPosZ(emitter, pos.z);
}

void BattleAnimEmitterCb_SetPosToAttacker(SPLEmitter *emitter)
{
    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    int attacker = BattleAnimSystem_GetAttacker(system);

    VecFx32 pos;
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, attacker, &pos);

    SPLEmitter_SetPosX(emitter, pos.x);
    SPLEmitter_SetPosY(emitter, pos.y);
    SPLEmitter_SetPosZ(emitter, pos.z);
}

void BattleAnimEmitterCb_SetPosToAttacker2(SPLEmitter *emitter)
{
    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    int attacker = BattleAnimSystem_GetAttacker(system);
    UNUSED(BattleAnimSystem_GetDefender(system));

    VecFx32 pos;
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, attacker, &pos);

    SPLEmitter_SetPosX(emitter, pos.x);
    SPLEmitter_SetPosY(emitter, pos.y);
    SPLEmitter_SetPosZ(emitter, pos.z);
}

void BattleAnimEmitterCb_SetPosToAttackerSide(SPLEmitter *emitter)
{
    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    ParticleSystem *ps = BattleAnimSystem_GetCurrentParticleSystem(system);
    enum CameraProjection projection = ParticleSystem_GetCameraProjection(ps);
    int attacker = BattleAnimSystem_GetAttacker(system);
    int attackerSide = BattleAnimUtil_GetBattlerSide(system, attacker);

    int battler = (attackerSide == BTLSCR_PLAYER) ? BATTLER_PLAYER_1 : BATTLER_ENEMY_1;

    VecFx32 pos;
    BattleAnimUtil_GetBattlerTypeWorldPos_Normal(battler, &pos, BattleAnimSystem_IsContest(system), projection);

    SPLEmitter_SetPosX(emitter, pos.x);
    SPLEmitter_SetPosY(emitter, pos.y);
    SPLEmitter_SetPosZ(emitter, pos.z);
}

void BattleAnimEmitterCb_SetPosToDefenderSide(SPLEmitter *emitter)
{
    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    ParticleSystem *ps = BattleAnimSystem_GetCurrentParticleSystem(system);
    enum CameraProjection projection = ParticleSystem_GetCameraProjection(ps);
    int defender = BattleAnimSystem_GetDefender(system);
    int defenderSide = BattleAnimUtil_GetBattlerSide(system, defender);

    int battler = (defenderSide == BTLSCR_PLAYER) ? BATTLER_PLAYER_1 : BATTLER_ENEMY_1;

    VecFx32 pos;
    BattleAnimUtil_GetBattlerTypeWorldPos_Normal(battler, &pos, BattleAnimSystem_IsContest(system), projection);

    SPLEmitter_SetPosX(emitter, pos.x);
    SPLEmitter_SetPosY(emitter, pos.y);
    SPLEmitter_SetPosZ(emitter, pos.z);
}

#define ___ 0xFF

void BattleAnimEmitterCb_SetPosBasedOnBattlers(SPLEmitter *emitter)
{
    s16 unused[6] = { 0, 0, 0, 0, 0, 0 };

    // clang-format off
    s16 posTableX[6][6] = {
        /*Akt/Def  Pl   Em   P1   E1   P2   E2 */
        /* P1 */ {   0,   0, ___, ___, ___, ___ },
        /* E1 */ {   0,   0, ___, ___, ___, ___ },
        /* P1 */ { ___, ___, ___, -16, ___, -16 },
        /* E1 */ { ___, ___, +32, ___, +32, ___ },
        /* P2 */ { ___, ___, ___, +16, ___,  +4 },
        /* E2 */ { ___, ___, -16, ___,   0, ___ }
    };
    s16 posTableY[6][6] = {
        /*Akt/Def  Pl   Em   P1   E1   P2   E2 */
        /* P1 */ {   0,   0, ___, ___, ___, ___ },
        /* E1 */ {   0,   0, ___, ___, ___, ___ },
        /* P1 */ { ___, ___, ___, +16, ___, +16 },
        /* E1 */ { ___, ___,   0, ___,   0, ___ },
        /* P2 */ { ___, ___, ___,   0, ___,   0 },
        /* E2 */ { ___, ___, +24, ___, +24, ___ }
    };
    // clang-format on

    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    int attacker = BattleAnimSystem_GetAttacker(system);
    int defender = BattleAnimSystem_GetDefender(system);
    int attackerType = BattleAnimUtil_GetBattlerType(system, attacker);
    int defenderType = BattleAnimUtil_GetBattlerType(system, defender);
    int posX = BATTLE_PARTICLE_SCREEN_TO_WORLD(posTableX[attackerType][defenderType]);
    int posY = BATTLE_PARTICLE_SCREEN_TO_WORLD(posTableY[attackerType][defenderType]);

    VecFx32 pos;
    VEC_Set(&pos, posX, posY, 0);

    SPLEmitter_SetPosX(emitter, pos.x);
    SPLEmitter_SetPosY(emitter, pos.y);
    SPLEmitter_SetPosZ(emitter, pos.z);
}

#undef ___

static void BattleParticleUtil_ApplySignToVector(int mode, s8 sign, VecFx32 *vec)
{
    fx32 *px = &vec->x;
    fx32 *py = &vec->y;
    fx32 *pz = &vec->z;

    switch (mode) {
    case BATTLE_PTCL_SIGN_MODE_NONE:
        break;
    case BATTLE_PTCL_SIGN_MODE_X:
        (*px) *= sign;
        break;
    case BATTLE_PTCL_SIGN_MODE_Y:
        (*py) *= sign;
        break;
    case BATTLE_PTCL_SIGN_MODE_Z:
        (*pz) *= sign;
        break;
    case BATTLE_PTCL_SIGN_MODE_XY:
        (*px) *= sign;
        (*py) *= sign;
        break;
    case BATTLE_PTCL_SIGN_MODE_XZ:
        (*px) *= sign;
        (*pz) *= sign;
        break;
    case BATTLE_PTCL_SIGN_MODE_YZ:
        (*py) *= sign;
        (*pz) *= sign;
        break;
    case BATTLE_PTCL_SIGN_MODE_XYZ:
        (*px) *= sign;
        (*py) *= sign;
        (*pz) *= sign;
        break;
    }
}

static void BattleParticleUtil_SetConvergenceTarget(BattleAnimSystem *system, SPLEmitter *emitter, int attacker, int defender, int mode, s8 sign, VecFx32 *emitterPos)
{
    VecFx32 target = { 0, 0, 0 };

    switch (mode) {
    case BATTLE_PTCL_TARGET_MODE_ORIGIN:
        break;
    case BATTLE_PTCL_TARGET_MODE_SIGN:
        ParticleSystem_GetEmitterConvergenceTarget(emitter, &target);
        target.x *= sign;
        target.y *= sign;
        target.z *= sign;
        break;
    case BATTLE_PTCL_TARGET_MODE_CENTER:
        target.x = BATTLE_3D_CENTER_X * sign;
        target.y = BATTLE_3D_CENTER_Y * sign;
        target.z = BATTLE_3D_CENTER_Z * sign;
        break;
    case BATTLE_PTCL_TARGET_MODE_DEFENDER:
        BattleAnimUtil_GetBattlerWorldPos_Normal(system, defender, &target);
        break;
    case BATTLE_PTCL_TARGET_MODE_ATTACKER:
        BattleAnimUtil_GetBattlerWorldPos_Normal(system, attacker, &target);
        break;
    case BATTLE_PTCL_TARGET_MODE_EXPLICIT: {
        int params[4] = { 0, 0, 0, 0 };

        BattleAnimSystem_GetExtraParams(system, params, NELEMS(params));
        VEC_Set(&target, params[0], params[1], params[2]);
        BattleParticleUtil_ApplySignToVector(params[3], sign, &target);
    } break;
    }

    target.x -= emitterPos->x;
    target.y -= emitterPos->y;
    target.z -= emitterPos->z;

    ParticleSystem_SetEmitterConvergenceTarget(emitter, &target);
}

static void BattleParticleUtil_SetMagnetTarget(BattleAnimSystem *system, SPLEmitter *emitter, int attacker, int defender, int mode, s8 sign, VecFx32 *emitterPos)
{
    VecFx32 target = { 0, 0, 0 };

    switch (mode) {
    case BATTLE_PTCL_TARGET_MODE_ORIGIN:
        break;
    case BATTLE_PTCL_TARGET_MODE_SIGN:
        ParticleSystem_GetEmitterMagnetTarget(emitter, &target);
        target.x *= sign;
        target.y *= sign;
        target.z *= sign;
        break;
    case BATTLE_PTCL_TARGET_MODE_CENTER:
        target.x = BATTLE_3D_CENTER_X * sign;
        target.y = BATTLE_3D_CENTER_Y * sign;
        target.z = BATTLE_3D_CENTER_Z * sign;
        break;
    case BATTLE_PTCL_TARGET_MODE_DEFENDER:
        BattleAnimUtil_GetBattlerWorldPos_Normal(system, defender, &target);
        break;
    case BATTLE_PTCL_TARGET_MODE_ATTACKER:
        BattleAnimUtil_GetBattlerWorldPos_Normal(system, attacker, &target);
        break;
    case BATTLE_PTCL_TARGET_MODE_EXPLICIT: {
        int params[4] = { 0, 0, 0, 0 };

        BattleAnimSystem_GetExtraParams(system, params, NELEMS(params));
        VEC_Set(&target, params[0], params[1], params[2]);
        BattleParticleUtil_ApplySignToVector(params[3], sign, &target);
    } break;
    }

    target.x -= emitterPos->x;
    target.y -= emitterPos->y;
    target.z -= emitterPos->z;

    ParticleSystem_SetEmitterMagnetTarget(emitter, &target);
}

static inline BOOL BattleParticleUtil_GetExtraParamVec3(BattleAnimSystem *system, VecFx32 *out)
{
    return BattleAnimSystem_GetExtraParams(system, (int *)out, 3);
}

static void BattleParticleUtil_SetEmitterAxisPosEx(BattleAnimSystem *system, SPLEmitter *emitter, int attacker, int defender, int behaviorMode, int targetMode)
{
    VecFx32 pos;
    VecFx16 dir;
    s8 sign = 1;

    ParticleSystem *ps = BattleAnimSystem_GetCurrentParticleSystem(system);
    int attackerType = BattleAnimUtil_GetBattlerType(system, attacker);
    int defenderType = BattleAnimUtil_GetBattlerType(system, defender);

    VecFx32 dirPlToEm, dirP1ToE1, dirP1ToP2, dirP1ToE2, dirP2ToP1, dirP2ToE1, dirP2ToE2;

    BattleParticleUtil_GetExtraParamVec3(system, &dirPlToEm);
    BattleParticleUtil_GetExtraParamVec3(system, &dirP1ToE1);
    BattleParticleUtil_GetExtraParamVec3(system, &dirP1ToE2);
    BattleParticleUtil_GetExtraParamVec3(system, &dirP1ToP2);
    BattleParticleUtil_GetExtraParamVec3(system, &dirP2ToE1);
    BattleParticleUtil_GetExtraParamVec3(system, &dirP2ToE2);
    BattleParticleUtil_GetExtraParamVec3(system, &dirP2ToP1);

    switch (attackerType) {
    case BATTLER_TYPE_SOLO_PLAYER:
    default:
        VEC_Fx16Set(&dir, dirPlToEm.x, dirPlToEm.y, dirPlToEm.z);
        break;
    case BATTLER_TYPE_SOLO_ENEMY:
        VEC_Fx16Set(&dir, -dirPlToEm.x, -dirPlToEm.y, -dirPlToEm.z);
        break;
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
        if (defenderType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
            VEC_Fx16Set(&dir, dirP1ToE1.x, dirP1ToE1.y, dirP1ToE1.z);
        } else if (defenderType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
            VEC_Fx16Set(&dir, dirP1ToE2.x, dirP1ToE2.y, dirP1ToE2.z);
        } else { // BATTLER_TYPE_PLAYER_SIDE_SLOT_2
            VEC_Fx16Set(&dir, dirP1ToP2.x, dirP1ToP2.y, dirP1ToP2.z);
        }
        break;
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
        if (defenderType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
            VEC_Fx16Set(&dir, -dirP1ToE1.x, -dirP1ToE1.y, -dirP1ToE1.z);
        } else if (defenderType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
            VEC_Fx16Set(&dir, -dirP1ToP2.x, -dirP1ToP2.y, -dirP1ToP2.z);
        } else { // BATTLER_TYPE_PLAYER_SIDE_SLOT_2
            VEC_Fx16Set(&dir, -dirP2ToE1.x, -dirP2ToE1.y, -dirP2ToE1.z);
        }
        break;
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
        if (defenderType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
            VEC_Fx16Set(&dir, dirP2ToE1.x, dirP2ToE1.y, dirP2ToE1.z);
        } else if (defenderType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
            VEC_Fx16Set(&dir, dirP2ToE2.x, dirP2ToE2.y, dirP2ToE2.z);
        } else { // BATTLER_TYPE_PLAYER_SIDE_SLOT_1
            VEC_Fx16Set(&dir, dirP2ToP1.x, dirP2ToP1.y, dirP2ToP1.z);
        }
        break;
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
        if (defenderType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
            VEC_Fx16Set(&dir, -dirP2ToP1.x, -dirP2ToP1.y, -dirP2ToP1.z);
        } else if (defenderType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
            VEC_Fx16Set(&dir, -dirP1ToE2.x, -dirP1ToE2.y, -dirP1ToE2.z);
        } else { // BATTLER_TYPE_PLAYER_SIDE_SLOT_2
            VEC_Fx16Set(&dir, -dirP2ToE2.x, -dirP2ToE2.y, -dirP2ToE2.z);
        }
        break;
    }

    sign = BattleParticleUtil_GetSignFromBattler(system, attacker, defender);

    VecFx32 explicitPos = { 0, 0, 0 };
    VecFx32 attackerPos;

    BattleParticleUtil_GetExtraParamVec3(system, &explicitPos);
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, attacker, &attackerPos);

    if (explicitPos.x == 0 && explicitPos.y == 0 && explicitPos.z == 0) {
        pos = attackerPos;

        SPLEmitter_SetPosX(emitter, attackerPos.x);
        SPLEmitter_SetPosY(emitter, attackerPos.y);
        SPLEmitter_SetPosZ(emitter, attackerPos.z);
    } else {
        VEC_Set(&pos, explicitPos.x, explicitPos.y, explicitPos.z);

        if (explicitPos.x == BATTLE_3D_CENTER_X && explicitPos.y == BATTLE_3D_CENTER_Y) {
            sign = 1;
        }

        pos.x *= sign;
        pos.y *= sign;
        pos.z = attackerPos.z * sign;

        SPLEmitter_SetPosX(emitter, pos.x);
        SPLEmitter_SetPosY(emitter, pos.y);
        SPLEmitter_SetPosZ(emitter, pos.z);
    }

    switch (behaviorMode) {
    case BATTLE_PTCL_BEHAVIOR_MODE_NONE:
        break;
    case BATTLE_PTCL_BEHAVIOR_MODE_CONVERGENCE:
        BattleParticleUtil_SetConvergenceTarget(system, emitter, attacker, defender, targetMode, sign, &pos);
        break;
    case BATTLE_PTCL_BEHAVIOR_MODE_MAGNET:
        BattleParticleUtil_SetMagnetTarget(system, emitter, attacker, defender, targetMode, sign, &pos);
        break;
    }

    SPLEmitter_SetAxis(emitter, &dir);
}

static void BattleParticleUtil_SetEmitterAxisPos(SPLEmitter *emitter, int behaviorMode, int targetMode)
{
    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    int attacker = BattleAnimSystem_GetAttacker(system);
    int defender = BattleAnimSystem_GetDefender(system);

    BattleParticleUtil_SetEmitterAxisPosEx(system, emitter, attacker, defender, behaviorMode, targetMode);
}

void BattleAnimEmitterCb_SetAxisAndPos(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_NONE, BATTLE_PTCL_TARGET_MODE_ORIGIN);
}

void BattleAnimEmitterCb_SetAxisAndPos_ConvergeDefault(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_CONVERGENCE, BATTLE_PTCL_TARGET_MODE_SIGN);
}

void BattleAnimEmitterCb_SetAxisAndPos_ConvergeCenter(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_CONVERGENCE, BATTLE_PTCL_TARGET_MODE_CENTER);
}

void BattleAnimEmitterCb_SetAxisAndPos_ConvergeDefender(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_CONVERGENCE, BATTLE_PTCL_TARGET_MODE_DEFENDER);
}

void BattleAnimEmitterCb_SetAxisAndPos_ConvergeAttacker(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_CONVERGENCE, BATTLE_PTCL_TARGET_MODE_ATTACKER);
}

void BattleAnimEmitterCb_SetAxisAndPos_ConvergeExplicit(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_CONVERGENCE, BATTLE_PTCL_TARGET_MODE_EXPLICIT);
}

void BattleAnimEmitterCb_SetAxisAndPos_MagnetDefault(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_MAGNET, BATTLE_PTCL_TARGET_MODE_SIGN);
}

void BattleAnimEmitterCb_SetAxisAndPos_MagnetCenter(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_MAGNET, BATTLE_PTCL_TARGET_MODE_CENTER);
}

void BattleAnimEmitterCb_SetAxisAndPos_MagnetDefender(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_MAGNET, BATTLE_PTCL_TARGET_MODE_DEFENDER);
}

void BattleAnimEmitterCb_SetAxisAndPos_MagnetAttacker(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_MAGNET, BATTLE_PTCL_TARGET_MODE_ATTACKER);
}

void BattleAnimEmitterCb_SetAxisAndPos_MagnetExplicit(SPLEmitter *emitter)
{
    BattleParticleUtil_SetEmitterAxisPos(emitter, BATTLE_PTCL_BEHAVIOR_MODE_MAGNET, BATTLE_PTCL_TARGET_MODE_EXPLICIT);
}

void BattleAnimEmitterCb_SetAxisAndPosReverse(SPLEmitter *emitter)
{
    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    int attacker = BattleAnimSystem_GetAttacker(system);
    int defender = BattleAnimSystem_GetDefender(system);

    BattleParticleUtil_SetEmitterAxisPosEx(system, emitter, defender, attacker, BATTLE_PTCL_BEHAVIOR_MODE_NONE, BATTLE_PTCL_TARGET_MODE_ORIGIN);
}
