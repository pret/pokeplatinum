#include "battle_anim/generic_emitter_callback.h"

#include "nitro/fx/fx.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"

#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"
#include "battle_anim/generic_emitter_callback.h"
#include "battle_anim/generic_emitter_callback_behavior.h"
#include "battle_anim/generic_emitter_callback_camera.h"
#include "global/utility.h"

#include "battle_script_battlers.h"
#include "camera.h"
#include "fx_util.h"
#include "heap.h"
#include "inlines.h"
#include "particle_system.h"
#include "spl.h"

static void GenericEmitterCallback_ApplyParams(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static void GenericEmitterCallback_ApplyPosition(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static void GenericEmitterCallback_ApplyAxis(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static void GenericEmitterCallback_ApplyBehavior(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static void GenericEmitterCallback_ApplyCamera(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static void GenericEmitterCallback_ApplyPriority(SPLEmitter *emitter, GenericEmitterCallbackData *data);
static void GenericEmitterCallback_OffsetPositionForBattler(GenericEmitterCallbackData *data, int battler, VecFx32 *pos);
static void GenericEmitterCallback_OffsetPosition(GenericEmitterCallbackData *data, VecFx32 *pos);

static void GenericEmitterCallback_ApplyParams(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    if (data->params[GENERIC_EMITTER_CALLBACK_PARAM_POSITION] != EMITTER_POS_NONE) {
        GenericEmitterCallback_ApplyPosition(emitter, data);
    }

    if (data->params[GENERIC_EMITTER_CALLBACK_PARAM_AXIS] != EMITTER_AXIS_NONE) {
        GenericEmitterCallback_ApplyAxis(emitter, data);
    }

    if (data->params[GENERIC_EMITTER_CALLBACK_PARAM_BEHAVIOR] != EMITTER_BHV_FLAG_NONE) {
        GenericEmitterCallback_ApplyBehavior(emitter, data);
    }

    GenericEmitterCallback_ApplyCamera(emitter, data);

    if (data->params[GENERIC_EMITTER_CALLBACK_PARAM_PRIORITY] != EMITTER_PRIORITY_MODE_NONE) {
        GenericEmitterCallback_ApplyPriority(emitter, data);
    }
}

static void GenericEmitterCallback_GetDefenderSidePosition(SPLEmitter *emitter, GenericEmitterCallbackData *data, VecFx32 *pos)
{
    BattleAnimSystem *system = data->battleAnimSys;
    ParticleSystem *ps = BattleAnimSystem_GetCurrentParticleSystem(system);
    enum CameraProjection proj = ParticleSystem_GetCameraProjection(ps);
    int attacker = BattleAnimSystem_GetDefender(system);
    enum Battler attackerSide = BattleAnimUtil_GetBattlerSide(system, attacker);

    int battlerType;
    if (attackerSide == BTLSCR_PLAYER) {
        battlerType = BATTLER_TYPE_SOLO_PLAYER;
    } else {
        battlerType = BATTLER_TYPE_SOLO_ENEMY;
    }

    BattleAnimUtil_GetBattlerTypeWorldPos_Normal(battlerType, pos, BattleAnimSystem_IsContest(system), proj);
}

static void GenericEmitterCallback_GetAttackerSidePosition(SPLEmitter *emitter, GenericEmitterCallbackData *data, VecFx32 *pos)
{
    BattleAnimSystem *system = data->battleAnimSys;
    ParticleSystem *ps = BattleAnimSystem_GetCurrentParticleSystem(system);
    enum CameraProjection proj = ParticleSystem_GetCameraProjection(ps);
    int attacker = BattleAnimSystem_GetAttacker(system);
    enum Battler attackerSide = BattleAnimUtil_GetBattlerSide(system, attacker);

    int battlerType;
    if (attackerSide == BTLSCR_PLAYER) {
        battlerType = BATTLER_TYPE_SOLO_PLAYER;
    } else {
        battlerType = BATTLER_TYPE_SOLO_ENEMY;
    }

    BattleAnimUtil_GetBattlerTypeWorldPos_Normal(battlerType, pos, BattleAnimSystem_IsContest(system), proj);
}

static void GenericEmitterCallback_ApplyPosition(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    VecFx32 pos;

    switch (data->params[GENERIC_EMITTER_CALLBACK_PARAM_POSITION]) {
    case EMITTER_POS_NONE:
        break;
    case EMITTER_POS_NORMAL_START:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_NORMAL_END:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_BEAM1_START:
        BattleAnimUtil_GetBattlerWorldPos_Beam1(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_BEAM1_END:
        BattleAnimUtil_GetBattlerWorldPos_Beam1(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_BEAM2_START:
        BattleAnimUtil_GetBattlerWorldPos_Beam2(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_BEAM2_END:
        BattleAnimUtil_GetBattlerWorldPos_Beam2(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_BEAM3_START:
        BattleAnimUtil_GetBattlerWorldPos_Beam3(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_BEAM3_END:
        BattleAnimUtil_GetBattlerWorldPos_Beam3(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_HYPNOSIS_START:
        BattleAnimUtil_GetBattlerWorldPos_Hypnosis(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_HYPNOSIS_END:
        BattleAnimUtil_GetBattlerWorldPos_Hypnosis(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_TRI_ATTACK_START:
        BattleAnimUtil_GetBattlerWorldPos_TriAttack(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_TRI_ATTACK_END:
        BattleAnimUtil_GetBattlerWorldPos_TriAttack(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_HYDRO_CANNON_START:
        BattleAnimUtil_GetBattlerWorldPos_HydroCannon(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_HYDRO_CANNON_END:
        BattleAnimUtil_GetBattlerWorldPos_HydroCannon(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_HYPER_VOICE_START:
        BattleAnimUtil_GetBattlerWorldPos_HyperVoice(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_HYPER_VOICE_END:
        BattleAnimUtil_GetBattlerWorldPos_HyperVoice(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_GRASS_WHISTLE_START:
        BattleAnimUtil_GetBattlerWorldPos_GrassWhistle(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_GRASS_WHISTLE_END:
        BattleAnimUtil_GetBattlerWorldPos_GrassWhistle(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_DRAGON_PULSE_START:
        BattleAnimUtil_GetBattlerWorldPos_DragonPulse(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_DRAGON_PULSE_END:
        BattleAnimUtil_GetBattlerWorldPos_DragonPulse(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_HYDRO_PUMP_START:
        BattleAnimUtil_GetBattlerWorldPos_HydroPump(data->battleAnimSys, data->startBattler, &pos);
        break;
    case EMITTER_POS_HYDRO_PUMP_END:
        BattleAnimUtil_GetBattlerWorldPos_HydroPump(data->battleAnimSys, data->endBattler, &pos);
        break;
    case EMITTER_POS_EXPLICIT: {
        int params[EMITTER_POS_EXPLICIT_PARAM_COUNT];

        BattleAnimSystem_GetExtraParams(data->battleAnimSys, params, EMITTER_POS_EXPLICIT_PARAM_COUNT);
        data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);
        VEC_Set(
            &pos,
            params[EMITTER_POS_EXPLICIT_PARAM_X],
            params[EMITTER_POS_EXPLICIT_PARAM_Y],
            params[EMITTER_POS_EXPLICIT_PARAM_Z]);

        if (params[EMITTER_POS_EXPLICIT_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
            data->dir = 1;
        }

        pos.x *= data->dir;
        pos.y *= data->dir;
    } break;
    case EMITTER_POS_NORMAL_OFFSET_START:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->startBattler, &pos);
        GenericEmitterCallback_OffsetPosition(data, &pos);
        break;
    case EMITTER_POS_NORMAL_OFFSET_END:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->endBattler, &pos);
        GenericEmitterCallback_OffsetPosition(data, &pos);
        break;
    case EMITTER_POS_NORMAL_OFFSET_EX_START:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->startBattler, &pos);
        GenericEmitterCallback_OffsetPositionForBattler(data, data->startBattler, &pos);
        break;
    case EMITTER_POS_NORMAL_OFFSET_EX_END:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->endBattler, &pos);
        GenericEmitterCallback_OffsetPositionForBattler(data, data->endBattler, &pos);
        break;
    case EMITTER_POS_ATTACKER_SIDE:
        GenericEmitterCallback_GetAttackerSidePosition(emitter, data, &pos);
        GenericEmitterCallback_OffsetPosition(data, &pos);
        break;
    case EMITTER_POS_DEFENDER_SIDE:
        GenericEmitterCallback_GetDefenderSidePosition(emitter, data, &pos);
        GenericEmitterCallback_OffsetPosition(data, &pos);
        break;
    case EMITTER_POS_SPECIAL_CONTEST_1:
        VEC_Set(&pos, FX32_CONST(2.8047), 0, 0);
        break;
    case EMITTER_POS_SPECIAL_CONTEST_2:
        VEC_Set(&pos, FX32_CONST(-1.2207), FX32_CONST(-1.4648), 0);
        break;
    case EMITTER_POS_SPECIAL_DESTINY_BOND:
        BattleAnimUtil_GetBattlerWorldPos_Normal(data->battleAnimSys, data->startBattler, &pos);
        break;

    case EMITTER_POS_SPECIAL_BUBBLE: {
        int xyPos[BATTLER_TYPE_MAX][2] = {
            [BATTLER_TYPE_SOLO_PLAYER] = { FX32_CONST(-1.4063), FX32_CONST(-1.0625) },
            [BATTLER_TYPE_SOLO_ENEMY] = { FX32_CONST(2.3164), FX32_CONST(-0.4844) },
            [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = { FX32_CONST(-2.871), FX32_CONST(0.8008) },
            [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = { FX32_CONST(3.3613), FX32_CONST(-0.3574) },
            [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = { FX32_CONST(-1.3125), FX32_CONST(-0.6855) },
            [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = { FX32_CONST(1.7051), FX32_CONST(0.502) }
        };

        int battlerType = BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->startBattler);
        VEC_Set(&pos, xyPos[battlerType][0], xyPos[battlerType][1], 0);
    } break;
    case EMITTER_POS_SPECIAL_BATON_PASS: {
        int xyPos[BATTLER_TYPE_MAX + 1][2] = {
            [BATTLER_TYPE_SOLO_PLAYER] = { FX32_CONST(-2.6904), FX32_CONST(-0.8516) },
            [BATTLER_TYPE_SOLO_ENEMY] = { FX32_CONST(2.6562), FX32_CONST(1.8691) },
            [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = { FX32_CONST(-3.6768), FX32_CONST(-0.7715) },
            [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = { FX32_CONST(3.662), FX32_CONST(1.7676) },
            [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = { FX32_CONST(-2.0078), FX32_CONST(-1.125) },
            [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = { FX32_CONST(2.0566), FX32_CONST(2.1719) },
            [BATTLER_TYPE_MAX] = { FX32_CONST(3.662), FX32_CONST(-0.6719) }, // Contest
        };

        int battlerType;
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            battlerType = BATTLER_TYPE_MAX;
        } else {
            battlerType = BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->startBattler);
        }

        VEC_Set(&pos, xyPos[battlerType][0], xyPos[battlerType][1], 0);
    } break;
    case EMITTER_POS_SPECIAL_DRAGON_BREATH: {
        int xyPos[BATTLER_TYPE_MAX + 1][2] = {
            [BATTLER_TYPE_SOLO_PLAYER] = { FX32_CONST(-1.125), FX32_CONST(-1.0938) },
            [BATTLER_TYPE_SOLO_ENEMY] = { FX32_CONST(1.8613), FX32_CONST(0.5488) },
            [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = { FX32_CONST(-2.2031), FX32_CONST(-0.7368) },
            [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = { FX32_CONST(3.1875), FX32_CONST(0.6875) },
            [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = { FX32_CONST(-0.5938), FX32_CONST(-1.1719) },
            [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = { FX32_CONST(1.5156), FX32_CONST(0.9375) },
            [BATTLER_TYPE_MAX] = { FX32_CONST(1.7266), FX32_CONST(-0.8906) }
        };

        int battlerType;
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            battlerType = BATTLER_TYPE_MAX;
        } else {
            battlerType = BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->startBattler);
        }

        VEC_Set(&pos, xyPos[battlerType][0], xyPos[battlerType][1], 0);
    } break;
    }

    data->position = pos;

    SPLEmitter_SetPosX(emitter, pos.x);
    SPLEmitter_SetPosY(emitter, pos.y);
    SPLEmitter_SetPosZ(emitter, pos.z);
}

//                                      [      from      ][       to       ]
static const VecFx32 EmitterAxisConfigs1[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX];
static const VecFx32 EmitterAxisConfigs2[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX];
static const VecFx32 EmitterAxisConfigs3[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX];
static const VecFx32 EmitterAxisConfigs4[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX];
static const VecFx32 EmitterAxisConfigs5[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX];
static const VecFx32 EmitterAxisConfigs6[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX];
static const VecFx32 EmitterAxisConfigs7[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX];
static const VecFx32 EmitterAxisConfigs8[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX];

static void GenericEmitterCallback_ApplyAxis(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    VecFx16 axis;

    int st = BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->startBattler);
    int et = BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->endBattler);

    switch (data->params[GENERIC_EMITTER_CALLBACK_PARAM_AXIS]) {
    case EMITTER_AXIS_NONE:
        VEC_Fx16Set(&axis, 0, 0, 0);
        break;
    case EMITTER_AXIS_START_TO_END_1A:
    case EMITTER_AXIS_START_TO_END_1B:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            if (data->params[GENERIC_EMITTER_CALLBACK_PARAM_TARGET_MODE] == EMITTER_TARGET_MODE_DEFENDER) {
                VEC_Fx16Set(&axis, FX16_CONST(-0.8145), FX16_CONST(0.4492), FX16_CONST(0.1797));
            } else {
                VEC_Fx16Set(&axis, FX16_CONST(0.5703), FX16_CONST(-0.3516), FX16_CONST(0.1797));
            }
        } else {
            VEC_Fx16Set(
                &axis,
                EmitterAxisConfigs1[st][et].x,
                EmitterAxisConfigs1[st][et].y,
                EmitterAxisConfigs1[st][et].z / 2);
        }
        break;
    case EMITTER_AXIS_START_TO_END_SIDE_1:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            VEC_Fx16Set(&axis, -EmitterAxisConfigs1[st][et].x, EmitterAxisConfigs1[st][et].y, EmitterAxisConfigs1[st][et].z / 2);
        } else {
            if (BattleAnimUtil_GetBattlerSide(data->battleAnimSys, data->startBattler) == BattleAnimUtil_GetBattlerSide(data->battleAnimSys, data->endBattler)) {
                VEC_Fx16Set(
                    &axis,
                    EmitterAxisConfigs1[st][et].x,
                    EmitterAxisConfigs1[st][et].y,
                    EmitterAxisConfigs1[st][et].z / 2);
            } else if (BattleAnimUtil_GetBattlerSide(data->battleAnimSys, data->startBattler) == BTLSCR_PLAYER) {
                VEC_Fx16Set(
                    &axis,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_PLAYER][BATTLER_TYPE_SOLO_ENEMY].x,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_PLAYER][BATTLER_TYPE_SOLO_ENEMY].y,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_PLAYER][BATTLER_TYPE_SOLO_ENEMY].z / 2);
            } else {
                VEC_Fx16Set(
                    &axis,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_ENEMY][BATTLER_TYPE_SOLO_PLAYER].x,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_ENEMY][BATTLER_TYPE_SOLO_PLAYER].y,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_ENEMY][BATTLER_TYPE_SOLO_PLAYER].z / 2);
            }
        }
        break;
    case EMITTER_AXIS_START_TO_END_SIDE_2:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            VEC_Fx16Set(&axis, -EmitterAxisConfigs1[st][et].x, EmitterAxisConfigs1[st][et].y, EmitterAxisConfigs1[st][et].z / 2);
        } else {
            if (BattleAnimUtil_GetBattlerSide(data->battleAnimSys, data->startBattler) == BattleAnimUtil_GetBattlerSide(data->battleAnimSys, data->endBattler)) {
                VEC_Fx16Set(
                    &axis,
                    EmitterAxisConfigs1[st][et].x,
                    EmitterAxisConfigs1[st][et].y,
                    EmitterAxisConfigs1[st][et].z / 2);
            } else if (BattleAnimUtil_GetBattlerSide(data->battleAnimSys, data->startBattler) == BTLSCR_PLAYER) {
                VEC_Fx16Set(
                    &axis,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_PLAYER][BATTLER_TYPE_SOLO_ENEMY].x,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_PLAYER][BATTLER_TYPE_SOLO_ENEMY].y,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_PLAYER][BATTLER_TYPE_SOLO_ENEMY].z / 2);
            } else {
                VEC_Fx16Set(
                    &axis,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_ENEMY][BATTLER_TYPE_SOLO_PLAYER].x,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_ENEMY][BATTLER_TYPE_SOLO_PLAYER].y,
                    EmitterAxisConfigs1[BATTLER_TYPE_SOLO_ENEMY][BATTLER_TYPE_SOLO_PLAYER].z / 2);
            }
        }
        break;
    case EMITTER_AXIS_START_TO_END_2A:
    case EMITTER_AXIS_START_TO_END_2B:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            if (data->params[GENERIC_EMITTER_CALLBACK_PARAM_TARGET_MODE] == EMITTER_TARGET_MODE_DEFENDER) {
                VEC_Fx16Set(&axis, FX16_CONST(-0.5703), FX16_CONST(0.3516), FX16_CONST(0.1797));
            } else {
                VEC_Fx16Set(&axis, FX16_CONST(0.5703), FX16_CONST(-0.3516), FX16_CONST(0.1797));
            }
        } else {
            VEC_Fx16Set(&axis, EmitterAxisConfigs2[st][et].x, EmitterAxisConfigs2[st][et].y, EmitterAxisConfigs2[st][et].z / 2);
        }
        break;
    case EMITTER_AXIS_START_TO_END_3A:
    case EMITTER_AXIS_START_TO_END_3B:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            VEC_Fx16Set(&axis, FX16_CONST(-0.5703), FX16_CONST(0.3516), FX16_CONST(0.1797));
        } else {
            // Should probably be EmitterAxisConfigs3 for y and z as well
            VEC_Fx16Set(&axis, EmitterAxisConfigs3[st][et].x, EmitterAxisConfigs2[st][et].y, EmitterAxisConfigs2[st][et].z / 2);
        }
        break;
    case EMITTER_AXIS_START_TO_END_4A:
    case EMITTER_AXIS_START_TO_END_4B:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            VEC_Fx16Set(&axis, FX16_CONST(-0.7168), FX16_CONST(0.3516), FX16_CONST(0.1797));
        } else {
            VEC_Fx16Set(&axis, EmitterAxisConfigs4[st][et].x, EmitterAxisConfigs4[st][et].y, EmitterAxisConfigs4[st][et].z);
        }
        break;
    case EMITTER_AXIS_START_TO_END_5A:
    case EMITTER_AXIS_START_TO_END_5B:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            VEC_Fx16Set(&axis, FX16_CONST(-0.5703), FX16_CONST(0.3516), FX16_CONST(0.1797));
        } else {
            VEC_Fx16Set(&axis, EmitterAxisConfigs5[st][et].x, EmitterAxisConfigs5[st][et].y, EmitterAxisConfigs5[st][et].z);
        }
        break;
    case EMITTER_AXIS_START_TO_END_6A:
    case EMITTER_AXIS_START_TO_END_6B:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            VEC_Fx16Set(&axis, FX16_CONST(-0.5703), FX16_CONST(0.3516), FX16_CONST(0.1797));
        } else {
            VEC_Fx16Set(&axis, EmitterAxisConfigs6[st][et].x, EmitterAxisConfigs6[st][et].y, EmitterAxisConfigs6[st][et].z);
        }
        break;
    case EMITTER_AXIS_START_TO_END_7A:
    case EMITTER_AXIS_START_TO_END_7B:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            VEC_Fx16Set(&axis, FX16_CONST(-0.5703), FX16_CONST(0.3516), FX16_CONST(0.1797));
        } else {
            VEC_Fx16Set(&axis, EmitterAxisConfigs7[st][et].x, EmitterAxisConfigs7[st][et].y, EmitterAxisConfigs7[st][et].z);
        }
        break;
    case EMITTER_AXIS_START_TO_END_8A:
    case EMITTER_AXIS_START_TO_END_8B:
        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            VEC_Fx16Set(&axis, FX16_CONST(-1.0586), FX16_CONST(0.3516), FX16_CONST(0.1797));
        } else {
            VEC_Fx16Set(&axis, EmitterAxisConfigs8[st][et].x, EmitterAxisConfigs8[st][et].y, EmitterAxisConfigs8[st][et].z);
        }
        break;
    case EMITTER_AXIS_START_TO_END_SP_1:
    case EMITTER_AXIS_START_TO_END_SP_2: {
        int i;
        int p_e[EMITTER_POS_EXPLICIT_PARAM_COUNT];
        int p1_e1[EMITTER_POS_EXPLICIT_PARAM_COUNT];
        int p1_p2[EMITTER_POS_EXPLICIT_PARAM_COUNT];
        int p1_e2[EMITTER_POS_EXPLICIT_PARAM_COUNT];
        int p2_p1[EMITTER_POS_EXPLICIT_PARAM_COUNT];
        int p2_e1[EMITTER_POS_EXPLICIT_PARAM_COUNT];
        int p2_e2[EMITTER_POS_EXPLICIT_PARAM_COUNT];
        int axisConfigs[7][EMITTER_POS_EXPLICIT_PARAM_COUNT] = {
            { FX32_CONST(0.7754), FX32_CONST(0.4785), FX32_CONST(-0.0723), BATTLE_PTCL_FLIP_ENABLE }, // p->e
            { FX32_CONST(0.789), FX32_CONST(0.3906), FX32_CONST(0.3828), BATTLE_PTCL_FLIP_ENABLE }, // p1->e1
            { FX32_CONST(1.461), FX32_CONST(0.6094), FX32_CONST(1.5156), BATTLE_PTCL_FLIP_ENABLE }, // p1->p2
            { FX32_CONST(0.6562), FX32_CONST(0.3438), FX32_CONST(0.375), BATTLE_PTCL_FLIP_ENABLE }, // p1->e2
            { FX32_CONST(-0.2188), FX32_CONST(0.0938), FX32_CONST(0.1953), BATTLE_PTCL_FLIP_ENABLE }, // p2->p1
            { FX32_CONST(0.5703), FX32_CONST(0.3516), FX32_CONST(0.1797), BATTLE_PTCL_FLIP_ENABLE }, // p2->e1
            { FX32_CONST(0.461), FX32_CONST(0.4531), FX32_CONST(0.4297), BATTLE_PTCL_FLIP_ENABLE }, // p2->e2
        };

        int contestConfig[EMITTER_POS_EXPLICIT_PARAM_COUNT] = {
            FX32_CONST(-0.5703),
            FX32_CONST(0.3516),
            FX32_CONST(0.1797),
            BATTLE_PTCL_FLIP_ENABLE,
        };

        for (i = 0; i < EMITTER_POS_EXPLICIT_PARAM_COUNT; i++) {
            p_e[i] = axisConfigs[0][i];
            p1_e1[i] = axisConfigs[1][i];
            p1_p2[i] = axisConfigs[2][i];
            p1_e2[i] = axisConfigs[3][i];
            p2_p1[i] = axisConfigs[4][i];
            p2_e1[i] = axisConfigs[5][i];
            p2_e2[i] = axisConfigs[6][i];
        }

        if (BattleAnimSystem_IsContest(data->battleAnimSys) == TRUE) {
            for (i = 0; i < EMITTER_POS_EXPLICIT_PARAM_COUNT; i++) {
                p_e[i] = contestConfig[i];
                p1_e1[i] = contestConfig[i];
                p1_p2[i] = contestConfig[i];
                p1_e2[i] = contestConfig[i];
                p2_p1[i] = contestConfig[i];
                p2_e1[i] = contestConfig[i];
                p2_e2[i] = contestConfig[i];
            }
        }

        switch (st) {
        case BATTLER_TYPE_SOLO_PLAYER:
        default:
            VEC_Fx16Set(&axis, p_e[0], p_e[1], p_e[2]);
            break;
        case BATTLER_TYPE_SOLO_ENEMY:
            if (p_e[3] == BATTLE_PTCL_FLIP_DISABLE) {
                VEC_Fx16Set(&axis, p_e[0], p_e[1], p_e[2]);
            } else {
                VEC_Fx16Set(&axis, -p_e[0], -p_e[1], -p_e[2]);
            }
            break;
        case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
            if (et == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                VEC_Fx16Set(&axis, p1_e1[0], p1_e1[1], p1_e1[2]);
            } else if (et == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                VEC_Fx16Set(&axis, p1_e2[0], p1_e2[1], p1_e2[2]);
            } else {
                VEC_Fx16Set(&axis, p1_p2[0], p1_p2[1], p1_p2[2]);
            }
            break;
        case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
            if (et == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                if (p1_e1[3] == BATTLE_PTCL_FLIP_DISABLE) {
                    VEC_Fx16Set(&axis, p1_e1[0], p1_e1[1], p1_e1[2]);
                } else {
                    VEC_Fx16Set(&axis, -p1_e1[0], -p1_e1[1], -p1_e1[2]);
                }
            } else if (et == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                if (p1_p2[3] == BATTLE_PTCL_FLIP_DISABLE) {
                    VEC_Fx16Set(&axis, -p2_p1[0], -p2_p1[1], -p2_p1[2]);
                } else {
                    VEC_Fx16Set(&axis, p2_p1[0], p2_p1[1], p2_p1[2]);
                }
            } else {
                if (p2_e1[3] == BATTLE_PTCL_FLIP_DISABLE) {
                    VEC_Fx16Set(&axis, p2_e1[0], p2_e1[1], p2_e1[2]);
                } else {
                    VEC_Fx16Set(&axis, -p2_e1[0], -p2_e1[1], -p2_e1[2]);
                }
            }
            break;
        case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
            if (et == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                VEC_Fx16Set(&axis, p2_e1[0], p2_e1[1], p2_e1[2]);
            } else if (et == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                VEC_Fx16Set(&axis, p2_e2[0], p2_e2[1], p2_e2[2]);
            } else {
                VEC_Fx16Set(&axis, p2_p1[0], p2_p1[1], p2_p1[2]);
            }
            break;
        case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
            if (et == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                if (p1_e1[3] == BATTLE_PTCL_FLIP_DISABLE) {
                    VEC_Fx16Set(&axis, p2_p1[0], p2_p1[1], p2_p1[2]);
                } else {
                    VEC_Fx16Set(&axis, -p2_p1[0], -p2_p1[1], -p2_p1[2]);
                }
            } else if (et == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                if (p1_e1[3] == BATTLE_PTCL_FLIP_DISABLE) {
                    VEC_Fx16Set(&axis, p1_e2[0], p1_e2[1], p1_e2[2]);
                } else {
                    VEC_Fx16Set(&axis, -p1_e2[0], -p1_e2[1], -p1_e2[2]);
                }
            } else {
                if (p1_e1[3] == BATTLE_PTCL_FLIP_DISABLE) {
                    VEC_Fx16Set(&axis, p2_e2[0], p2_e2[1], p2_e2[2]);
                } else {
                    VEC_Fx16Set(&axis, -p2_e2[0], -p2_e2[1], -p2_e2[2]);
                }
            }
            break;
        }
    } break;
    case EMITTER_AXIS_FIXED_1:
        VEC_Fx16Set(&axis, FX32_CONST(-0.1953), FX32_CONST(0.293), FX32_CONST(0.122));
        break;
    case EMITTER_AXIS_FIXED_2:
        VEC_Fx16Set(&axis, FX32_CONST(-0.8325), FX32_CONST(-0.6455), FX32_CONST(0.0));
        break;
    case EMITTER_AXIS_FIXED_3:
        VEC_Fx16Set(&axis, FX32_CONST(-0.8398), FX32_CONST(0.4766), FX32_CONST(0.0));
        break;
    case EMITTER_AXIS_FIXED_PER_SIDE:
        if (BattleAnimUtil_GetBattlerSide(data->battleAnimSys, data->startBattler) == BTLSCR_PLAYER) {
            VEC_Fx16Set(&axis, FX32_CONST(0.9219), FX32_CONST(0.5156), FX32_CONST(0.0));
        } else {
            VEC_Fx16Set(&axis, FX32_CONST(-1.4648), FX32_CONST(-0.537), FX32_CONST(0.0));
        }
        break;
    case EMITTER_AXIS_FIXED_PER_TYPE: {
        int startType;
        int axisConfigs[BATTLER_TYPE_MAX][2] = {
            [BATTLER_TYPE_SOLO_PLAYER] = { FX32_CONST(0.6992), FX32_CONST(0.916) },
            [BATTLER_TYPE_SOLO_ENEMY] = { FX32_CONST(-0.7188), FX32_CONST(0.3555) },
            [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = { FX32_CONST(0.6934), FX32_CONST(-0.2085) },
            [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = { FX32_CONST(-0.918), FX32_CONST(-0.6191) },
            [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = { FX32_CONST(0.5586), FX32_CONST(0.588) },
            [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = { FX32_CONST(-0.8086), FX32_CONST(-0.6777) },
        };

        startType = BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->startBattler);
        VEC_Fx16Set(&axis, axisConfigs[startType][0], axisConfigs[startType][1], 0);
    } break;
    }

    SPLEmitter_SetAxis(emitter, &axis);
}

static void GenericEmitterCallback_ApplyBehavior(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    int valueCount = GenericEmitterCallback_GetBehaviorValueCount();

    for (int value = EMITTER_BHV_VALUE_NONE; value < valueCount; value++) {
        int flag = GenericEmitterCallback_GetBehaviorFlag(value);

        if (BattleAnimUtil_IsMaskSet(data->params[GENERIC_EMITTER_CALLBACK_PARAM_BEHAVIOR], flag) == FALSE) {
            continue;
        }

        GenericEmitterCallback_CallBehaviorFunction(value, emitter, data);
    }
}

static void GenericEmitterCallback_ApplyCamera(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    GenericEmitterCallback_ApplyCameraFunc(data->params[GENERIC_EMITTER_CALLBACK_PARAM_CAMERA], emitter, data);
}

static void GenericEmitterCallback_ApplyPriority(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    fx32 z;

    UNUSED(BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->startBattler));
    int endBattlerType = BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->endBattler);

    switch (data->params[GENERIC_EMITTER_CALLBACK_PARAM_PRIORITY]) {
    case EMITTER_PRIORITY_MODE_NONE:
        break;
    case EMITTER_PRIORITY_MODE_FRONT:
        if (endBattlerType == BATTLER_TYPE_SOLO_PLAYER) {
            z = FX32_CONST(0.0625);
        } else {
            z = FX32_CONST(-1.25);
        }
        break;
    case EMITTER_PRIORITY_MODE_BACK:
        if (endBattlerType == BATTLER_TYPE_SOLO_PLAYER) {
            z = FX32_CONST(0);
        } else {
            z = FX32_CONST(-1.3125);
        }
        break;
    case EMITTER_PRIORITY_MODE_UB:
        break;
    }

    SPLEmitter_SetPosZ(emitter, z);
}

void BattleAnimEmitterCb_Generic(SPLEmitter *emitter)
{
    BattleAnimSystem *system = ParticleSystem_GetEmitterCallbackParam();
    GenericEmitterCallbackData *data = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(GenericEmitterCallbackData));

    data->battleAnimSys = system;
    data->particleSys = BattleAnimSystem_GetCurrentParticleSystem(data->battleAnimSys);

    BattleAnimSystem_GetExtraParams(data->battleAnimSys, data->params, GENERIC_EMITTER_CALLBACK_PARAM_COUNT);

    switch (data->params[GENERIC_EMITTER_CALLBACK_PARAM_TARGET_MODE]) {
    case EMITTER_TARGET_MODE_DEFAULT:
    default:
        data->startBattler = BattleAnimSystem_GetAttacker(data->battleAnimSys);
        data->endBattler = BattleAnimSystem_GetDefender(data->battleAnimSys);
        break;
    case EMITTER_TARGET_MODE_ATTACKER:
        data->startBattler = BattleAnimSystem_GetDefender(data->battleAnimSys);
        data->endBattler = BattleAnimSystem_GetAttacker(data->battleAnimSys);
        break;
    case EMITTER_TARGET_MODE_DEFENDER:
        data->startBattler = BattleAnimSystem_GetAttacker(data->battleAnimSys);
        data->endBattler = BattleAnimSystem_GetDefender(data->battleAnimSys);
        break;
    case EMITTER_TARGET_MODE_ATTACKER_2:
        data->startBattler = BattleAnimSystem_GetDefender(data->battleAnimSys);
        data->endBattler = BattleAnimSystem_GetAttacker(data->battleAnimSys);
        break;
    case EMITTER_TARGET_MODE_DEFENDER_2:
        data->startBattler = BattleAnimSystem_GetAttacker(data->battleAnimSys);
        data->endBattler = BattleAnimSystem_GetDefender(data->battleAnimSys);
        break;
    }

    GenericEmitterCallback_ApplyParams(emitter, data);
    Heap_Free(data);
}

s8 GenericEmitterCallback_GetDirectionForBattlers(GenericEmitterCallbackData *data)
{
    s8 dir = 1;
    int startType = BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->startBattler);
    UNUSED(BattleAnimUtil_GetBattlerType(data->battleAnimSys, data->endBattler));

    switch (startType) {
    case BATTLER_TYPE_SOLO_PLAYER:
    default:
        break;
    case BATTLER_TYPE_SOLO_ENEMY:
        dir = -1;
        break;
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
        break;
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
        dir = -1;
        break;
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
        break;
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
        dir = -1;
        break;
    }

    return dir;
}

static void GenericEmitterCallback_OffsetPositionForBattler(GenericEmitterCallbackData *data, int battler, VecFx32 *pos)
{
    VecFx32 offset = { 0, 0, 0 };
    int params[EMITTER_POS_EXPLICIT_PARAM_COUNT];
    int paramsUnused[EMITTER_POS_EXPLICIT_PARAM_COUNT];

    for (int battlerType = BATTLER_TYPE_SOLO_PLAYER; battlerType < BATTLER_TYPE_MAX; battlerType++) {
        if (battlerType == BattleAnimUtil_GetBattlerType(data->battleAnimSys, battler)) {
            BattleAnimSystem_GetExtraParams(data->battleAnimSys, params, EMITTER_POS_EXPLICIT_PARAM_COUNT);
        } else {
            BattleAnimSystem_GetExtraParams(data->battleAnimSys, paramsUnused, EMITTER_POS_EXPLICIT_PARAM_COUNT);
        }
    }

    data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);
    VEC_Set(
        &offset,
        params[EMITTER_POS_EXPLICIT_PARAM_X],
        params[EMITTER_POS_EXPLICIT_PARAM_Y],
        params[EMITTER_POS_EXPLICIT_PARAM_Z]);

    if (params[EMITTER_POS_EXPLICIT_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
        data->dir = 1;
    }

    offset.x *= data->dir;
    offset.y *= data->dir;
    offset.z *= data->dir;

    pos->x += offset.x;
    pos->y += offset.y;
    pos->z += offset.z;
}

static void GenericEmitterCallback_OffsetPosition(GenericEmitterCallbackData *data, VecFx32 *pos)
{
    int params[EMITTER_POS_EXPLICIT_PARAM_COUNT];
    VecFx32 offset = { 0, 0, 0 };

    BattleAnimSystem_GetExtraParams(data->battleAnimSys, params, EMITTER_POS_EXPLICIT_PARAM_COUNT);
    data->dir = GenericEmitterCallback_GetDirectionForBattlers(data);
    VEC_Set(
        &offset,
        params[EMITTER_POS_EXPLICIT_PARAM_X],
        params[EMITTER_POS_EXPLICIT_PARAM_Y],
        params[EMITTER_POS_EXPLICIT_PARAM_Z]);

    if (params[EMITTER_POS_EXPLICIT_PARAM_FLIP] == BATTLE_PTCL_FLIP_DISABLE) {
        data->dir = 1;
    }

    offset.x *= data->dir;
    offset.y *= data->dir;
    offset.z *= data->dir;

    pos->x += offset.x;
    pos->y += offset.y;
    pos->z += offset.z;
}

#define _ VEC_FX32(0, 0, 0)

//                                      [      from      ][       to       ]
static const VecFx32 EmitterAxisConfigs1[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX] = {
    [BATTLER_TYPE_SOLO_PLAYER] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = VEC_FX32(0.9219, 0.5156, 0.748),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_SOLO_ENEMY] = {
        [BATTLER_TYPE_SOLO_PLAYER] = VEC_FX32(-1.0322, -0.666, 0.748),
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(1.4614, 0.3867, 0.748),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(0.254, -0.1465, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(1.0508, 0.6191, 0.748),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-1.582, -0.498, 0.748),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-1.0703, -0.7246, 0.748),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(-0.2031, 0.0547, 0.0),
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.4902, 0.0918, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.9849, 0.6582, 0.748),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.755, 0.7412, 0.748),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-1.162, -0.6523, 0.748),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.4219, -0.0977, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.8477, -1.1348, 0.748),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
};

static const VecFx32 EmitterAxisConfigs2[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX] = {
    [BATTLER_TYPE_SOLO_PLAYER] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = VEC_FX32(0.588, 0.3047, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_SOLO_ENEMY] = {
        [BATTLER_TYPE_SOLO_PLAYER] = VEC_FX32(-0.377, -0.2285, 0.0),
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.4746, 0.082, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(0.1387, -0.1367, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.4746, 0.2266, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.5918, -0.1992, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.5918, -0.25, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(-0.213, 0.002, 0.0),
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.3496, 0.0293, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.3652, 0.1895, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.3652, 0.295, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.4688, -0.2012, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.164, 0.002, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.4688, -0.2627, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
};

static const VecFx32 EmitterAxisConfigs3[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX] = {
    [BATTLER_TYPE_SOLO_PLAYER] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = VEC_FX32(0.3438, 0.1797, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_SOLO_ENEMY] = {
        [BATTLER_TYPE_SOLO_PLAYER] = VEC_FX32(-0.295, -0.1914, 0.0),
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.498, 0.164, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(0.2266, -0.1504, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.4297, 0.1914, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.4434, -0.162, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.3516, -0.2266, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(-0.166, 0.002, 0.0),
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.252, 0.002, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.3125, 0.164, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.2637, 0.252, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.4023, -0.1172, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.1934, 0.002, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.2344, -0.2266, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
};

static const VecFx32 EmitterAxisConfigs4[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX] = {
    [BATTLER_TYPE_SOLO_PLAYER] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = VEC_FX32(0.6172, 0.3877, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_SOLO_ENEMY] = {
        [BATTLER_TYPE_SOLO_PLAYER] = VEC_FX32(-1.041, -1.2344, 0.0),
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.959, 0.2715, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(0.1719, -0.164, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.6797, 0.2734, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-1.0137, -0.3809, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.7559, -0.4824, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(-0.169, -0.0059, 0.0),
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.1934, 0.0254, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.6895, 0.3945, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.5234, 0.4727, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.709, -0.373, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.2754, -0.0996, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.4668, -0.5059, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
};

static const VecFx32 EmitterAxisConfigs5[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX] = {
    [BATTLER_TYPE_SOLO_PLAYER] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = VEC_FX32(0.4766, 0.2676, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_SOLO_ENEMY] = {
        [BATTLER_TYPE_SOLO_PLAYER] = VEC_FX32(-0.4922, -0.2363, 0.0),
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.4688, 0.1875, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(0.2031, -0.1094, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.4219, 0.2031, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.5117, -0.1816, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.5117, -0.3027, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(-0.1836, 0.0059, 0.0),
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.246, 0.041, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.4258, 0.213, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.3652, 0.3027, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.4834, -0.1738, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.1543, -0.0488, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.4102, -0.4043, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
};

static const VecFx32 EmitterAxisConfigs6[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX] = {
    [BATTLER_TYPE_SOLO_PLAYER] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = VEC_FX32(0.7812, 0.42, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_SOLO_ENEMY] = {
        [BATTLER_TYPE_SOLO_PLAYER] = VEC_FX32(-0.8594, -0.4824, 0.0),
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.8691, 0.2363, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(0.3906, -0.3594, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.7969, 0.379, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.9766, -0.1914, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.789, -0.5508, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(-0.3047, 0.1367, 0.0),
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.2637, 0.3027, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.7676, 0.4746, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.5176, 0.5703, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.7305, -0.3516, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.461, -0.1445, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.6328, -0.6602, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
};

static const VecFx32 EmitterAxisConfigs7[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX] = {
    [BATTLER_TYPE_SOLO_PLAYER] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = VEC_FX32(0.3906, -0.0156, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_SOLO_ENEMY] = {
        [BATTLER_TYPE_SOLO_PLAYER] = VEC_FX32(-0.4531, -0.3926, 0.0),
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.4883, -0.0469, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(0.164, -0.3242, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.4883, 0.0469, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.5332, -0.375, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.504, -0.459, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(-0.1445, -0.1934, 0.0),
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.3145, -0.0312, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.373, -0.1094, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.373, 0.0723, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.373, -0.3809, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.209, -0.0898, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.338, -0.496, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
};

static const VecFx32 EmitterAxisConfigs8[BATTLER_TYPE_MAX][BATTLER_TYPE_MAX] = {
    [BATTLER_TYPE_SOLO_PLAYER] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = VEC_FX32(0.875, 0.5, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_SOLO_ENEMY] = {
        [BATTLER_TYPE_SOLO_PLAYER] = VEC_FX32(-0.8281, -0.4336, 0.0),
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(1.2188, 0.496, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(0.25, -0.168, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.9219, 0.4805, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-1.3535, -0.3887, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.916, -0.545, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(-0.416, 0.0645, 0.0),
    },
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.4902, -0.0156, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.998, 0.5742, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = _,
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = VEC_FX32(0.6455, 0.5898, 0.0),
    },
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
        [BATTLER_TYPE_SOLO_PLAYER] = _,
        [BATTLER_TYPE_SOLO_ENEMY] = _,
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = VEC_FX32(-0.9238, -0.4727, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = VEC_FX32(0.4355, -0.004, 0.0),
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = VEC_FX32(-0.791, -0.67, 0.0),
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = _,
    },
};

#undef _
