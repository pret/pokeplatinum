#include "battle_anim/battle_anim_util.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"

#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"

#include "camera.h"
#include "fx_util.h"
#include "heap.h"
#include "inlines.h"
#include "math_util.h"
#include "particle_system.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"

void ov17_022413D8(void);
void include_unk_ov12_0223A218(VecFx32 *dummy);

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

void include_unk_ov12_0223A218(VecFx32 *dummy)
{
    *dummy = Unk_ov12_0223A218;
}

int BattleAnimUtil_GetBattlerType(BattleAnimSystem *system, int battler)
{
    return BattleAnimSystem_GetBattlerType(system, battler);
}

enum Battler BattleAnimUtil_GetBattlerSide(BattleAnimSystem *system, int battler)
{
    int battlerType;
    int type = BattleAnimSystem_GetBattlerType(system, battler);

    switch (type) {
    case BATTLER_TYPE_SOLO_PLAYER:
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
        battlerType = BTLSCR_PLAYER;
        break;
    case BATTLER_TYPE_SOLO_ENEMY:
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
        battlerType = BTLSCR_ENEMY;
        break;
    }

    return battlerType;
}

int BattleAnimUtil_GetBattlerOfType(BattleAnimSystem *system, int type)
{
    for (int battler = 0; battler < MAX_BATTLERS; battler++) {
        int battlerType = BattleAnimSystem_GetBattlerType(system, battler);
        if (battlerType == type) {
            return battler;
        }
    }

    return 0;
}

int BattleAnimUtil_GetAlliedBattler(BattleAnimSystem *system, int battler)
{
    int type = BattleAnimSystem_GetBattlerType(system, battler);
    if (type == BATTLER_TYPE_SOLO_PLAYER || type == BATTLER_TYPE_SOLO_ENEMY) {
        return type;
    }

    for (int otherBattler = 0; otherBattler < MAX_BATTLERS; otherBattler++) {
        int otherType = BattleAnimSystem_GetBattlerType(system, otherBattler);

        switch (type) {
        case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
            if (otherType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                return otherBattler;
            }
            break;
        case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
            if (otherType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                return otherBattler;
            }
            break;
        case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
            if (otherType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                return otherBattler;
            }
            break;
        case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
            if (otherType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                return otherBattler;
            }
            break;
        }
    }

    GF_ASSERT(FALSE);

    return type;
}

int BattleAnimUtil_GetOpposingBattlerType(int battlerType)
{
    switch (battlerType) {
    case BATTLER_TYPE_SOLO_PLAYER:
        return BATTLER_TYPE_SOLO_ENEMY;
    case BATTLER_TYPE_SOLO_ENEMY:
        return BATTLER_TYPE_SOLO_PLAYER;
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
        return BATTLER_TYPE_ENEMY_SIDE_SLOT_1;
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
        return BATTLER_TYPE_PLAYER_SIDE_SLOT_1;
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
        return BATTLER_TYPE_ENEMY_SIDE_SLOT_2;
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
        return BATTLER_TYPE_PLAYER_SIDE_SLOT_2;
    }

    GF_ASSERT(FALSE);
    return BATTLER_TYPE_SOLO_PLAYER;
}

void BattleAnimUtil_GetBattlerTypeDefaultPos(int battlerType, BOOL isContest, Point2D *pos)
{
    const Point2D battlerPositions[] = {
        [BATTLER_TYPE_SOLO_PLAYER] = { BATTLER_POS_SOLO_PLAYER_X, BATTLER_POS_SOLO_PLAYER_Y },
        [BATTLER_TYPE_SOLO_ENEMY] = { BATTLER_POS_SOLO_ENEMY_X, BATTLER_POS_SOLO_ENEMY_Y },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = { BATTLER_POS_PLAYER_SLOT_1_X, BATTLER_POS_PLAYER_SLOT_1_Y },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = { BATTLER_POS_ENEMY_SLOT_1_X, BATTLER_POS_ENEMY_SLOT_1_Y },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = { BATTLER_POS_PLAYER_SLOT_2_X, BATTLER_POS_PLAYER_SLOT_2_Y },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = { BATTLER_POS_ENEMY_SLOT_2_X, BATTLER_POS_ENEMY_SLOT_2_Y }
    };
    const Point2D contestantPositions[] = {
        [BATTLER_TYPE_SOLO_PLAYER] = { CONTESTANT_POS_PLAYER_X, CONTESTANT_POS_PLAYER_Y },
        [BATTLER_TYPE_SOLO_ENEMY] = { CONTESTANT_POS_ENEMY_X, CONTESTANT_POS_ENEMY_Y },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = { CONTESTANT_POS_PLAYER_X, CONTESTANT_POS_PLAYER_Y },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = { CONTESTANT_POS_ENEMY_X, CONTESTANT_POS_ENEMY_Y },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = { CONTESTANT_POS_PLAYER_X, CONTESTANT_POS_PLAYER_Y },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = { CONTESTANT_POS_ENEMY_X, CONTESTANT_POS_ENEMY_Y }
    };

    if (isContest) {
        *pos = contestantPositions[battlerType];
        return;
    }

    *pos = battlerPositions[battlerType];
}

void BattleAnimUtil_GetBattlerDefaultPos(BattleAnimSystem *system, int battler, Point2D *pos)
{
    int battlerType = BattleAnimUtil_GetBattlerType(system, battler);
    BOOL isContest = BattleAnimSystem_IsContest(system);

    BattleAnimUtil_GetBattlerTypeDefaultPos(battlerType, isContest, pos);
}

static void BattleAnimUtil_GetBattlerTypeWorldPosInternal(int battlerType, VecFx32 *outPos, int isContest, int projection, int posType)
{
    const VecFx32 particlePositions[][12 * CAMERA_PROJECTION_COUNT] = {
        [BATTLER_TYPE_SOLO_PLAYER] = {
            VEC_FX32(-2.3477, -1.334, 0.0156),
            VEC_FX32(-2.5, -1.5625, 0.0156),
            VEC_FX32(-0.9688, -0.8125, 0.0156),
            VEC_FX32(-1.6035, -0.9766, 0.0156),
            VEC_FX32(-0.9688, -0.8125, 0.0156),
            VEC_FX32(-1.6406, -1.414, 0.0156),
            VEC_FX32(-2.1074, -1.6934, 0),
            VEC_FX32(-2.1074, -1.6934, 0),
            VEC_FX32(-3.0625, -0.9375, 0),
            VEC_FX32(-3.0625, -0.9375, 0),
            VEC_FX32(-2.3516, -1.4297, 0),
            VEC_FX32(-2.3516, -1.4297, 0),
            VEC_FX32(-1.0117, -1.2695, 0),
            VEC_FX32(-1.0117, -1.2695, 0),
            VEC_FX32(-3.0469, -1.0469, 0),
            VEC_FX32(-3.0469, -1.0469, 0),
            VEC_FX32(-0.4375, -1.0312, 0),
            VEC_FX32(-0.4375, -1.0312, 0),
            VEC_FX32(-2.0312, -1.0156, 0),
            VEC_FX32(-2.0312, -1.0156, 0),
            VEC_FX32(2.2168, 1.3516, 0),
            VEC_FX32(2.2168, 1.3516, 0),
            VEC_FX32(-1.5254, -0.7188, 0),
            VEC_FX32(-1.5254, -0.7188, 0),
        },
        [BATTLER_TYPE_SOLO_ENEMY] = {
            VEC_FX32(2.6992, 1.0742, -1.2812),
            VEC_FX32(2.5, 0.75, -1.2812),
            VEC_FX32(2.2812, 0.5312, -1.2812),
            VEC_FX32(2.1484, 1.5781, -1.2812),
            VEC_FX32(2.2812, 0.5312, -1.2812),
            VEC_FX32(3.5469, 1.961, -1.2812),
            VEC_FX32(3.1504, 1.247, 0),
            VEC_FX32(3.1504, 1.247, 0),
            VEC_FX32(1.3262, 1.6309, 0),
            VEC_FX32(1.3262, 1.6309, 0),
            VEC_FX32(3.209, 2.752, 0),
            VEC_FX32(3.209, 2.752, 0),
            VEC_FX32(4.0508, 1.2617, 0),
            VEC_FX32(4.0508, 1.2617, 0),
            VEC_FX32(3.2188, 1.8594, 0),
            VEC_FX32(3.2188, 1.8594, 0),
            VEC_FX32(4.125, 0.8125, 0),
            VEC_FX32(4.125, 0.8125, 0),
            VEC_FX32(2.6562, 1.0938, 0),
            VEC_FX32(2.6562, 1.0938, 0),
            VEC_FX32(-1.6934, -1.1797, 0),
            VEC_FX32(-1.6934, -1.1797, 0),
            VEC_FX32(2.0215, 1.3262, 0),
            VEC_FX32(2.0215, 1.3262, 0),
        },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
            VEC_FX32(-3.6465, -1.2285, 0.0156),
            VEC_FX32(-3.75, -1.5312, 0.0156),
            VEC_FX32(-2.4062, -0.7812, 0.0156),
            VEC_FX32(-2.7832, -0.7188, 0.0156),
            VEC_FX32(-2.4062, -0.7812, 0.0156),
            VEC_FX32(-2.4062, -0.7812, 0.0156),
            VEC_FX32(-2.3086, -0.7578, 0),
            VEC_FX32(-2.3086, -0.7578, 0),
            VEC_FX32(-4.3594, -0.8848, 0),
            VEC_FX32(-4.3594, -0.8848, 0),
            VEC_FX32(-3.0742, -0.7266, 0),
            VEC_FX32(-3.0742, -0.7266, 0),
            VEC_FX32(-1.5542, -0.9219, 0),
            VEC_FX32(-1.5542, -0.9219, 0),
            VEC_FX32(-3.6406, -0.5312, 0),
            VEC_FX32(-3.6406, -0.5312, 0),
            VEC_FX32(-1.4844, -1.3438, 0),
            VEC_FX32(-1.4844, -1.3438, 0),
            VEC_FX32(-2.9375, -0.7812, 0),
            VEC_FX32(-2.9375, -0.7812, 0),
            VEC_FX32(2.6426, 1.8281, 0),
            VEC_FX32(2.6426, 1.8281, 0),
            VEC_FX32(-2.4062, -0.7812, 0),
            VEC_FX32(-2.4062, -0.7812, 0),
        },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
            VEC_FX32(1.7988, 1.455, -1.2812),
            VEC_FX32(3.3125, 0.7188, -1.2812),
            VEC_FX32(3.3125, 0.7188, -1.2812),
            VEC_FX32(3.0898, 1.4004, -1.2812),
            VEC_FX32(3.3125, 0.7188, -1.2812),
            VEC_FX32(3.3125, 0.7188, -1.2812),
            VEC_FX32(4.3906, 1.5469, 0),
            VEC_FX32(4.3906, 1.5469, 0),
            VEC_FX32(1.959, 1.4668, 0),
            VEC_FX32(1.959, 1.4668, 0),
            VEC_FX32(3.1914, 1.5156, 0),
            VEC_FX32(3.1914, 1.5156, 0),
            VEC_FX32(4.25, 1.2656, 0),
            VEC_FX32(4.25, 1.2656, 0),
            VEC_FX32(3.9375, 1.7969, 0),
            VEC_FX32(3.9375, 1.7969, 0),
            VEC_FX32(5.0469, 0.8496, 0),
            VEC_FX32(5.0469, 0.8496, 0),
            VEC_FX32(3.2812, 1.3203, 0),
            VEC_FX32(3.2812, 1.3203, 0),
            VEC_FX32(-2.3281, -0.7617, 0.666),
            VEC_FX32(-2.3281, -0.7617, 0.666),
            VEC_FX32(3.3125, 0.7188, 0),
            VEC_FX32(3.3125, 0.7188, 0),
        },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
            VEC_FX32(-1.3096, -1.6035, -0.25),
            VEC_FX32(-1.8438, -1.6875, -0.25),
            VEC_FX32(-0.5635, -1.375, -0.25),
            VEC_FX32(-0.7285, -1.287, -0.25),
            VEC_FX32(-0.5635, -1.375, -0.25),
            VEC_FX32(-0.5635, -1.375, -0.25),
            VEC_FX32(-0.6055, -1.3594, 0),
            VEC_FX32(-0.6055, -1.3594, 0),
            VEC_FX32(-2.002, -1.166, 0),
            VEC_FX32(-2.002, -1.166, 0),
            VEC_FX32(-1.3672, -1.582, 0),
            VEC_FX32(-1.3672, -1.582, 0),
            VEC_FX32(-0.1543, -1.2637, 0),
            VEC_FX32(-0.1543, -1.2637, 0),
            VEC_FX32(-2.0625, -2.0469, 0),
            VEC_FX32(-2.0625, -2.0469, 0),
            VEC_FX32(0.125, -1.5938, 0),
            VEC_FX32(0.125, -1.5938, 0),
            VEC_FX32(-1.6719, -1.5, 0),
            VEC_FX32(-1.6719, -1.5, 0),
            VEC_FX32(1.2578, 1.8281, 0),
            VEC_FX32(1.2578, 1.8281, 0),
            VEC_FX32(-0.5635, -1.375, 0),
            VEC_FX32(-0.5635, -1.375, 0),
        },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
            VEC_FX32(3.707, 1.08, -1.793),
            VEC_FX32(1.6875, 1.0, -1.793),
            VEC_FX32(1.6875, 1.0, -1.793),
            VEC_FX32(1.6855, 2.0176, -1.793),
            VEC_FX32(1.6875, 1.0, -1.793),
            VEC_FX32(1.6875, 1.0, -1.793),
            VEC_FX32(3.129, 1.3672, 0),
            VEC_FX32(3.129, 1.3672, 0),
            VEC_FX32(0.4902, 1.1465, 0),
            VEC_FX32(0.4902, 1.1465, 0),
            VEC_FX32(1.959, 1.541, 0),
            VEC_FX32(1.959, 1.541, 0),
            VEC_FX32(2.877, 1.502, 0),
            VEC_FX32(2.877, 1.502, 0),
            VEC_FX32(2.4375, 2.3125, 0),
            VEC_FX32(2.4375, 2.3125, 0),
            VEC_FX32(3.3906, 0.8496, 0),
            VEC_FX32(3.3906, 0.8496, 0),
            VEC_FX32(1.5156, 1.3281, 0),
            VEC_FX32(1.5156, 1.3281, 0),
            VEC_FX32(-1.3203, -1.4648, 0),
            VEC_FX32(-1.3203, -1.4648, 0),
            VEC_FX32(1.6875, 1.0, 0),
            VEC_FX32(1.6875, 1.0, 0),
        },
        [CONTESTANT_TYPE_PLAYER] = {
            VEC_FX32(1.7988, -1.2285, 0.0156),
            VEC_FX32(3.3125, -1.5312, 0.0156),
            VEC_FX32(3.3125, -0.7812, 0.0156),
            VEC_FX32(3.0898, -0.7188, 0.0156),
            VEC_FX32(3.3125, -0.7812, 0.0156),
            VEC_FX32(3.3125, -0.7812, 0.0156),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(1.8477, -0.7812, 0),
            VEC_FX32(1.8477, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(-2.3281, 1.8281, 0),
            VEC_FX32(-2.3281, 1.8281, 0),
            VEC_FX32(3.3125, -0.7812, 0),
            VEC_FX32(3.3125, -0.7188, 0),
        },
        [CONTESTANT_TYPE_ENEMY] = {
            VEC_FX32(-1.3096, 1.08, -1.2812),
            VEC_FX32(-1.8438, 1.0, -1.2812),
            VEC_FX32(-0.5635, 1.0, -1.2812),
            VEC_FX32(-0.7285, 2.0176, -1.2812),
            VEC_FX32(-0.5635, 1.0, -1.2812),
            VEC_FX32(-0.5635, 1.0, -1.2812),
            VEC_FX32(-0.6055, 1.3672, 0),
            VEC_FX32(-0.6055, 1.3672, 0),
            VEC_FX32(-2.002, 1.1465, 0),
            VEC_FX32(-2.002, 1.1465, 0),
            VEC_FX32(-1.3672, 1.541, 0),
            VEC_FX32(-1.3672, 1.541, 0),
            VEC_FX32(-0.1543, 1.502, 0),
            VEC_FX32(-0.1543, 1.502, 0),
            VEC_FX32(-2.0625, 2.3125, 0),
            VEC_FX32(-2.0625, 2.3125, 0),
            VEC_FX32(0.125, 0.8496, 0),
            VEC_FX32(0.125, 0.8496, 0),
            VEC_FX32(-1.6719, 1.3281, 0),
            VEC_FX32(-1.6719, 1.3281, 0),
            VEC_FX32(1.2578, -1.4648, 0.666),
            VEC_FX32(1.2578, -1.3203, 0.666),
            VEC_FX32(-0.5635, 1.0, 0),
            VEC_FX32(-0.7285, 2.0176, 0),
        },
    };

    if (isContest == TRUE) {
        switch (battlerType) {
        case BATTLER_TYPE_SOLO_PLAYER:
            battlerType = CONTESTANT_TYPE_PLAYER;
            break;
        case BATTLER_TYPE_SOLO_ENEMY:
            battlerType = CONTESTANT_TYPE_ENEMY;
            break;
        default:
            GF_ASSERT(FALSE);
            break;
        }
    }

    int index = projection + (posType * CAMERA_PROJECTION_COUNT);
    const VecFx32 *pos = &particlePositions[battlerType][index];

    VEC_Set(outPos, pos->x, pos->y, pos->z);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_Normal(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(battlerType, pos, isContest, projection, 0);
}

void ov12_02235458(int battlerType, VecFx32 *pos, int isContest, int projection)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(battlerType, pos, isContest, projection, 1);
}

void ov12_02235468(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 2);
}

void ov12_02235478(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 3);
}

void ov12_02235488(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 4);
}

void ov12_02235498(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 5);
}

void ov12_022354A8(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 6);
}

void ov12_022354B8(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 7);
}

void ov12_022354C8(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 8);
}

void ov12_022354D8(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 9);
}

void ov12_022354E8(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 10);
}

void ov12_022354F8(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(param0, param1, param2, param3, 11);
}

void BattleAnimUtil_GetBattlerWorldPos_Normal(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    ParticleSystem *ps = BattleAnimSystem_GetCurrentParticleSystem(system);
    enum CameraProjection projection = ParticleSystem_GetCameraProjection(ps);
    int battlerType = BattleAnimUtil_GetBattlerType(system, battler);
    BOOL isContest = BattleAnimSystem_IsContest(system);

    BattleAnimUtil_GetBattlerTypeWorldPos_Normal(battlerType, pos, isContest, projection);
}

void ov12_02235538(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_02235458(v0, param2, v1, v2);
}

void ov12_02235568(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_02235468(v0, param2, v1, v2);
}

void ov12_02235598(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_02235478(v0, param2, v1, v2);
}

void ov12_022355C8(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_02235488(v0, param2, v1, v2);
}

void ov12_022355F8(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_02235498(v0, param2, v1, v2);
}

void ov12_02235628(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_022354A8(v0, param2, v1, v2);
}

void ov12_02235658(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_022354B8(v0, param2, v1, v2);
}

void ov12_02235688(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_022354C8(v0, param2, v1, v2);
}

void ov12_022356B8(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_022354D8(v0, param2, v1, v2);
}

void ov12_022356E8(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_022354E8(v0, param2, v1, v2);
}

void ov12_02235718(BattleAnimSystem *param0, int param1, VecFx32 *param2)
{
    int v0, v1;
    int v2;
    ParticleSystem *v3 = BattleAnimSystem_GetCurrentParticleSystem(param0);
    v2 = ParticleSystem_GetCameraProjection(v3);
    v0 = BattleAnimUtil_GetBattlerType(param0, param1);
    v1 = BattleAnimSystem_IsContest(param0);

    ov12_022354F8(v0, param2, v1, v2);
}

void BattleAnimUtil_GetParticleViewportTopPosition(VecFx32 *pos)
{
    pos->x = 0;
    pos->y = BATTLE_PARTICLE_VIEWPORT_TOP + BATTLE_PARTICLE_SCREEN_TO_WORLD(60); // ~60 pixels from the top of the screen
    pos->z = 0;
}

void ov12_02235758(int param0, VecFx32 *param1, int param2, int param3)
{
    BattleAnimUtil_GetBattlerTypeWorldPos_Normal(param0, param1, param2, param3);
}

void ov12_02235760(int param0, VecFx32 *param1)
{
    if (param0 == 0) {
        ParticleSystem_GetDefaultCameraUp(param1);
    } else {
        *param1 = Unk_ov12_0223A224;
    }
}

void BattleAnimUtil_SetSpriteBgBlending(BattleAnimSystem *system, int spriteAlpha, int bgAlpha)
{
    if (spriteAlpha == BATTLE_ANIM_DEFAULT_ALPHA) {
        spriteAlpha = BATTLE_ANIM_DEFAULT_SPRITE_ALPHA;
    }

    if (bgAlpha == BATTLE_ANIM_DEFAULT_ALPHA) {
        bgAlpha = BATTLE_ANIM_DEFAULT_BG_ALPHA;
    }

    G2_SetBlendAlpha(
        GX_BLEND_PLANEMASK_NONE,
        (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_EFFECT)) | GX_BLEND_PLANEMASK_BG0,
        spriteAlpha,
        bgAlpha);
}

void BattleAnimUtil_SetSpriteBlending(BattleAnimSystem *system, int planes, int spriteAlpha, int otherAlpha)
{
    if (spriteAlpha == BATTLE_ANIM_DEFAULT_ALPHA) {
        spriteAlpha = BATTLE_ANIM_DEFAULT_SPRITE_ALPHA;
    }

    if (otherAlpha == BATTLE_ANIM_DEFAULT_ALPHA) {
        otherAlpha = BATTLE_ANIM_DEFAULT_BG_ALPHA;
    }

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, planes, spriteAlpha, otherAlpha);
}

void BattleAnimUtil_SetEffectBaseBgBlending(BattleAnimSystem *system, int alphaBase, int alphaEffect)
{
    if (alphaBase == BATTLE_ANIM_DEFAULT_ALPHA) {
        alphaBase = 26;
    }

    if (alphaEffect == BATTLE_ANIM_DEFAULT_ALPHA) {
        alphaEffect = 5;
    }

    G2_SetBlendAlpha(
        1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_BASE),
        (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_EFFECT)) | GX_WND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_OBJ,
        alphaBase,
        alphaEffect);
}

// clang-format off
void BattleAnimUtil_SetBackgroundWindowMask(BattleAnimSystem *system, enum BattleAnimWindow window, BOOL applyEffects)
{
    if (window == BATTLE_ANIM_WINDOW_0) {
        G2_SetWnd0InsidePlane(
            (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_EFFECT)) |
            (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_WINDOW)) |
            (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_BASE)) |
            GX_WND_PLANEMASK_BG0 |
            GX_WND_PLANEMASK_OBJ,
            applyEffects);
    } else {
        G2_SetWnd1InsidePlane(
            (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_EFFECT)) |
            (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_WINDOW)) |
            (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_BASE)) |
            GX_WND_PLANEMASK_BG0 |
            GX_WND_PLANEMASK_OBJ,
            applyEffects);
    }

    G2_SetWndOutsidePlane(
        (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_WINDOW)) |
        (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_BASE)) |
        GX_WND_PLANEMASK_BG0 |
        GX_WND_PLANEMASK_OBJ,
        TRUE);
}
// clang-format on

void BattleAnimUtil_GetMonSpritePos(PokemonSprite *sprite, Point2D *pos)
{
    if (sprite == NULL) {
        pos->x = 0;
        pos->y = 0;
        return;
    } else if (PokemonSprite_IsActive(sprite) == FALSE) {
        pos->x = 0;
        pos->y = 0;
        return;
    }

    pos->x = PokemonSprite_GetAttribute(sprite, MON_SPRITE_X_CENTER);
    pos->y = PokemonSprite_GetAttribute(sprite, MON_SPRITE_Y_CENTER);
}

void BattleAnimUtil_GetSpritePos(ManagedSprite *sprite, Point2D *pos)
{
    ManagedSprite_GetPositionXY(sprite, &pos->x, &pos->y);
}

void BattleAnimSystem_GetCommonData(BattleAnimSystem *system, BattleAnimScriptFuncCommon *common)
{
    common->state = 0;
    common->counter1 = 0;
    common->counter2 = 0;
    common->unk_03 = 0;
    common->battleAnimSys = system;
    common->spriteSystem = BattleAnimSystem_GetSpriteSystem(system);
    common->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(system);
    common->primarySpriteManager = BattleAnimSystem_GetPrimarySpriteManager(system);
    common->bgConfig = BattleAnimSystem_GetBgConfig(system);
    common->paletteData = BattleAnimSystem_GetPaletteData(system);
}

void BattleAnimUtil_GetBattlerSprites(BattleAnimSystem *system, int targets, BattleAnimSpriteInfo *sprites, int *count)
{
    *count = 0;

    if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_ALL_BATTLERS) == TRUE) {
        int attacker = BattleAnimSystem_GetAttacker(system);

        // Add the attacker sprite
        sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, attacker);

        if (sprites[*count].monSprite != NULL) {
            sprites[*count].battler = attacker;
            BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
            (*count)++;
        }

        // Add the attacker's ally's sprite
        int battler = BattleAnimUtil_GetAlliedBattler(system, attacker);
        sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, battler);

        if (sprites[*count].monSprite != NULL) {
            sprites[*count].battler = battler;
            BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
            (*count)++;
        }

        // Add the opposing battler's sprite
        int type = BattleAnimSystem_GetBattlerType(system, attacker);
        type = BattleAnimUtil_GetOpposingBattlerType(type);
        battler = BattleAnimUtil_GetBattlerOfType(system, type);

        sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, battler);

        if (sprites[*count].monSprite != NULL) {
            sprites[*count].battler = battler;
            BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
            (*count)++;
        }

        // Add the opposing battler's ally's sprite
        battler = BattleAnimUtil_GetAlliedBattler(system, battler);
        sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, battler);

        if (sprites[*count].monSprite != NULL) {
            sprites[*count].battler = battler;
            BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
            (*count)++;
        }

        return;
    }

    if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_NOT_ATTACKER) == TRUE) {
        int attacker = BattleAnimSystem_GetAttacker(system);

        // Add the attacker's ally's sprite
        int battler = BattleAnimUtil_GetAlliedBattler(system, attacker);
        if (battler != attacker) {
            sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, battler);

            if (sprites[*count].monSprite != NULL) {
                sprites[*count].battler = battler;
                BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
                (*count)++;
            }
        }

        // Add the opposing battler's sprite
        int type = BattleAnimSystem_GetBattlerType(system, attacker);
        type = BattleAnimUtil_GetOpposingBattlerType(type);
        battler = BattleAnimUtil_GetBattlerOfType(system, type);
        if (battler != attacker) {
            sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, battler);

            if (sprites[*count].monSprite != NULL) {
                sprites[*count].battler = battler;
                BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
                (*count)++;
            }
        }

        // Add the opposing battler's ally's sprite
        battler = BattleAnimUtil_GetAlliedBattler(system, battler);
        if (battler != attacker) {
            sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, battler);

            if (sprites[*count].monSprite != NULL) {
                sprites[*count].battler = battler;
                BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
                (*count)++;
            }
        }

        return;
    }

    if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_ATTACKER) == TRUE) {
        sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, BattleAnimSystem_GetAttacker(system));
        if (sprites[*count].monSprite != NULL) {
            sprites[*count].battler = BattleAnimSystem_GetAttacker(system);
            BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
            (*count)++;
        }
    }

    if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
        if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_ATTACKER_PARTNER) == TRUE) {
            sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system)));
            if (sprites[*count].monSprite != NULL) {
                sprites[*count].battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system));
                BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
                (*count)++;
            }
        }
    }

    if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_DEFENDER) == TRUE) {
        sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, BattleAnimSystem_GetDefender(system));
        if (sprites[*count].monSprite != NULL) {
            sprites[*count].battler = BattleAnimSystem_GetDefender(system);
            BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
            (*count)++;
        }
    }

    if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
        if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_DEFENDER_PARTNER) == TRUE) {
            sprites[*count].monSprite = BattleAnimSystem_GetBattlerSprite(system, BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system)));
            if (sprites[*count].monSprite != NULL) {
                sprites[*count].battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system));
                BattleAnimUtil_GetMonSpritePos(sprites[*count].monSprite, &sprites[*count].pos);
                (*count)++;
            }
        }
    }
}

void BattleAnimUtil_GetPokemonSprites(BattleAnimSystem *system, int targets, BattleAnimSpriteInfo *sprites, int *count)
{
    *count = 0;

    if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_POKEMON_SPRITE_0) == TRUE) {
        sprites[*count].hwSprite = BattleAnimSystem_GetPokemonSprite(system, *count);
        BattleAnimUtil_GetSpritePos(sprites[*count].hwSprite, &sprites[*count].pos);
        (*count)++;
    }

    if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_POKEMON_SPRITE_1) == TRUE) {
        sprites[*count].hwSprite = BattleAnimSystem_GetPokemonSprite(system, *count);
        BattleAnimUtil_GetSpritePos(sprites[*count].hwSprite, &sprites[*count].pos);
        (*count)++;
    }

    if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_POKEMON_SPRITE_2) == TRUE) {
        sprites[*count].hwSprite = BattleAnimSystem_GetPokemonSprite(system, *count);
        BattleAnimUtil_GetSpritePos(sprites[*count].hwSprite, &sprites[*count].pos);
        (*count)++;
    }

    if (BattleAnimUtil_IsMaskSet(targets, BATTLE_ANIM_POKEMON_SPRITE_3) == TRUE) {
        sprites[*count].hwSprite = BattleAnimSystem_GetPokemonSprite(system, *count);
        BattleAnimUtil_GetSpritePos(sprites[*count].hwSprite, &sprites[*count].pos);
        (*count)++;
    }
}

void *BattleAnimUtil_Alloc(BattleAnimSystem *system, int size)
{
    GF_ASSERT(system != NULL);

    enum HeapID heapID = BattleAnimSystem_GetHeapID(system);
    void *ptr = Heap_Alloc(heapID, size);

    GF_ASSERT(ptr != NULL);
    memset(ptr, 0, size);

    return ptr;
}

void BattleAnimUtil_Free(void *ptr)
{
    GF_ASSERT(ptr != NULL);
    Heap_Free(ptr);
}
