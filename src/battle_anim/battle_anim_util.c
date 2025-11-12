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

enum WorldPosType {
    WORLD_POS_TYPE_NORMAL = 0,
    WORLD_POS_TYPE_BEAM1,
    WORLD_POS_TYPE_BEAM2,
    WORLD_POS_TYPE_BEAM3,
    WORLD_POS_TYPE_HYPNOSIS,
    WORLD_POS_TYPE_TRI_ATTACK,
    WORLD_POS_TYPE_HYDRO_CANNON,
    WORLD_POS_TYPE_HYPER_VOICE,
    WORLD_POS_TYPE_GRASS_WHISTLE,
    WORLD_POS_TYPE_DRAGON_PULSE,
    WORLD_POS_TYPE_CAMERA_LOOKAT,
    WORLD_POS_TYPE_HYDRO_PUMP,

    WORLD_POS_TYPE_COUNT,
};

void ov17_022413D8(void);
void include_unk_ov12_0223A218(VecFx32 *dummy);

static const VecFx32 Unk_ov12_0223A218 = {
    0x1700,
    0x4D00,
    -0x1000
};

static const VecFx32 sUnitDown = {
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

#define PERSP(type) (type * CAMERA_PROJECTION_COUNT)
#define ORTHO(type) (PERSP(type) + 1)

static void BattleAnimUtil_GetBattlerTypeWorldPosInternal(int battlerType, VecFx32 *outPos, int isContest, int projection, enum WorldPosType posType)
{
    const VecFx32 positions[BATTLER_TYPE_MAX + CONTESTANT_TYPE_COUNT][WORLD_POS_TYPE_COUNT * CAMERA_PROJECTION_COUNT] = {
        [BATTLER_TYPE_SOLO_PLAYER] = {
            [PERSP(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(-2.3477, -1.334, 0.0156),
            [ORTHO(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(-2.5, -1.5625, 0.0156),
            [PERSP(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(-0.9688, -0.8125, 0.0156),
            [ORTHO(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(-1.6035, -0.9766, 0.0156),
            [PERSP(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(-0.9688, -0.8125, 0.0156),
            [ORTHO(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(-1.6406, -1.414, 0.0156),
            [PERSP(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(-2.1074, -1.6934, 0),
            [ORTHO(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(-2.1074, -1.6934, 0),
            [PERSP(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(-3.0625, -0.9375, 0),
            [ORTHO(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(-3.0625, -0.9375, 0),
            [PERSP(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(-2.3516, -1.4297, 0),
            [ORTHO(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(-2.3516, -1.4297, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(-1.0117, -1.2695, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(-1.0117, -1.2695, 0),
            [PERSP(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(-3.0469, -1.0469, 0),
            [ORTHO(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(-3.0469, -1.0469, 0),
            [PERSP(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(-0.4375, -1.0312, 0),
            [ORTHO(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(-0.4375, -1.0312, 0),
            [PERSP(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(-2.0312, -1.0156, 0),
            [ORTHO(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(-2.0312, -1.0156, 0),
            [PERSP(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(2.2168, 1.3516, 0),
            [ORTHO(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(2.2168, 1.3516, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(-1.5254, -0.7188, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(-1.5254, -0.7188, 0),
        },
        [BATTLER_TYPE_SOLO_ENEMY] = {
            [PERSP(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(2.6992, 1.0742, -1.2812),
            [ORTHO(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(2.5, 0.75, -1.2812),
            [PERSP(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(2.2812, 0.5312, -1.2812),
            [ORTHO(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(2.1484, 1.5781, -1.2812),
            [PERSP(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(2.2812, 0.5312, -1.2812),
            [ORTHO(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(3.5469, 1.961, -1.2812),
            [PERSP(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(3.1504, 1.247, 0),
            [ORTHO(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(3.1504, 1.247, 0),
            [PERSP(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(1.3262, 1.6309, 0),
            [ORTHO(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(1.3262, 1.6309, 0),
            [PERSP(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(3.209, 2.752, 0),
            [ORTHO(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(3.209, 2.752, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(4.0508, 1.2617, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(4.0508, 1.2617, 0),
            [PERSP(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(3.2188, 1.8594, 0),
            [ORTHO(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(3.2188, 1.8594, 0),
            [PERSP(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(4.125, 0.8125, 0),
            [ORTHO(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(4.125, 0.8125, 0),
            [PERSP(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(2.6562, 1.0938, 0),
            [ORTHO(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(2.6562, 1.0938, 0),
            [PERSP(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(-1.6934, -1.1797, 0),
            [ORTHO(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(-1.6934, -1.1797, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(2.0215, 1.3262, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(2.0215, 1.3262, 0),
        },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = {
            [PERSP(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(-3.6465, -1.2285, 0.0156),
            [ORTHO(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(-3.75, -1.5312, 0.0156),
            [PERSP(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(-2.4062, -0.7812, 0.0156),
            [ORTHO(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(-2.7832, -0.7188, 0.0156),
            [PERSP(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(-2.4062, -0.7812, 0.0156),
            [ORTHO(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(-2.4062, -0.7812, 0.0156),
            [PERSP(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(-2.3086, -0.7578, 0),
            [ORTHO(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(-2.3086, -0.7578, 0),
            [PERSP(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(-4.3594, -0.8848, 0),
            [ORTHO(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(-4.3594, -0.8848, 0),
            [PERSP(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(-3.0742, -0.7266, 0),
            [ORTHO(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(-3.0742, -0.7266, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(-1.5542, -0.9219, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(-1.5542, -0.9219, 0),
            [PERSP(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(-3.6406, -0.5312, 0),
            [ORTHO(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(-3.6406, -0.5312, 0),
            [PERSP(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(-1.4844, -1.3438, 0),
            [ORTHO(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(-1.4844, -1.3438, 0),
            [PERSP(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(-2.9375, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(-2.9375, -0.7812, 0),
            [PERSP(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(2.6426, 1.8281, 0),
            [ORTHO(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(2.6426, 1.8281, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(-2.4062, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(-2.4062, -0.7812, 0),
        },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = {
            [PERSP(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(1.7988, 1.455, -1.2812),
            [ORTHO(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(3.3125, 0.7188, -1.2812),
            [PERSP(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(3.3125, 0.7188, -1.2812),
            [ORTHO(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(3.0898, 1.4004, -1.2812),
            [PERSP(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(3.3125, 0.7188, -1.2812),
            [ORTHO(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(3.3125, 0.7188, -1.2812),
            [PERSP(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(4.3906, 1.5469, 0),
            [ORTHO(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(4.3906, 1.5469, 0),
            [PERSP(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(1.959, 1.4668, 0),
            [ORTHO(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(1.959, 1.4668, 0),
            [PERSP(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(3.1914, 1.5156, 0),
            [ORTHO(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(3.1914, 1.5156, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(4.25, 1.2656, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(4.25, 1.2656, 0),
            [PERSP(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(3.9375, 1.7969, 0),
            [ORTHO(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(3.9375, 1.7969, 0),
            [PERSP(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(5.0469, 0.8496, 0),
            [ORTHO(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(5.0469, 0.8496, 0),
            [PERSP(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(3.2812, 1.3203, 0),
            [ORTHO(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(3.2812, 1.3203, 0),
            [PERSP(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(-2.3281, -0.7617, 0.666),
            [ORTHO(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(-2.3281, -0.7617, 0.666),
            [PERSP(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(3.3125, 0.7188, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(3.3125, 0.7188, 0),
        },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = {
            [PERSP(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(-1.3096, -1.6035, -0.25),
            [ORTHO(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(-1.8438, -1.6875, -0.25),
            [PERSP(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(-0.5635, -1.375, -0.25),
            [ORTHO(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(-0.7285, -1.287, -0.25),
            [PERSP(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(-0.5635, -1.375, -0.25),
            [ORTHO(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(-0.5635, -1.375, -0.25),
            [PERSP(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(-0.6055, -1.3594, 0),
            [ORTHO(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(-0.6055, -1.3594, 0),
            [PERSP(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(-2.002, -1.166, 0),
            [ORTHO(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(-2.002, -1.166, 0),
            [PERSP(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(-1.3672, -1.582, 0),
            [ORTHO(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(-1.3672, -1.582, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(-0.1543, -1.2637, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(-0.1543, -1.2637, 0),
            [PERSP(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(-2.0625, -2.0469, 0),
            [ORTHO(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(-2.0625, -2.0469, 0),
            [PERSP(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(0.125, -1.5938, 0),
            [ORTHO(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(0.125, -1.5938, 0),
            [PERSP(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(-1.6719, -1.5, 0),
            [ORTHO(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(-1.6719, -1.5, 0),
            [PERSP(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(1.2578, 1.8281, 0),
            [ORTHO(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(1.2578, 1.8281, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(-0.5635, -1.375, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(-0.5635, -1.375, 0),
        },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = {
            [PERSP(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(3.707, 1.08, -1.793),
            [ORTHO(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(1.6875, 1.0, -1.793),
            [PERSP(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(1.6875, 1.0, -1.793),
            [ORTHO(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(1.6855, 2.0176, -1.793),
            [PERSP(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(1.6875, 1.0, -1.793),
            [ORTHO(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(1.6875, 1.0, -1.793),
            [PERSP(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(3.129, 1.3672, 0),
            [ORTHO(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(3.129, 1.3672, 0),
            [PERSP(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(0.4902, 1.1465, 0),
            [ORTHO(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(0.4902, 1.1465, 0),
            [PERSP(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(1.959, 1.541, 0),
            [ORTHO(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(1.959, 1.541, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(2.877, 1.502, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(2.877, 1.502, 0),
            [PERSP(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(2.4375, 2.3125, 0),
            [ORTHO(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(2.4375, 2.3125, 0),
            [PERSP(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(3.3906, 0.8496, 0),
            [ORTHO(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(3.3906, 0.8496, 0),
            [PERSP(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(1.5156, 1.3281, 0),
            [ORTHO(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(1.5156, 1.3281, 0),
            [PERSP(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(-1.3203, -1.4648, 0),
            [ORTHO(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(-1.3203, -1.4648, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(1.6875, 1.0, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(1.6875, 1.0, 0),
        },
        [CONTESTANT_TYPE_PLAYER] = {
            [PERSP(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(1.7988, -1.2285, 0.0156),
            [ORTHO(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(3.3125, -1.5312, 0.0156),
            [PERSP(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(3.3125, -0.7812, 0.0156),
            [ORTHO(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(3.0898, -0.7188, 0.0156),
            [PERSP(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(3.3125, -0.7812, 0.0156),
            [ORTHO(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(3.3125, -0.7812, 0.0156),
            [PERSP(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(3.3125, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(3.3125, -0.7812, 0),
            [PERSP(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(1.8477, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(1.8477, -0.7812, 0),
            [PERSP(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(3.3125, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(3.3125, -0.7812, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(3.3125, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(3.3125, -0.7812, 0),
            [PERSP(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(3.3125, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(3.3125, -0.7812, 0),
            [PERSP(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(3.3125, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(3.3125, -0.7812, 0),
            [PERSP(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(3.3125, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(3.3125, -0.7812, 0),
            [PERSP(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(-2.3281, 1.8281, 0),
            [ORTHO(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(-2.3281, 1.8281, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(3.3125, -0.7812, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(3.3125, -0.7188, 0),
        },
        [CONTESTANT_TYPE_ENEMY] = {
            [PERSP(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(-1.3096, 1.08, -1.2812),
            [ORTHO(WORLD_POS_TYPE_NORMAL)] = VEC_FX32(-1.8438, 1.0, -1.2812),
            [PERSP(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(-0.5635, 1.0, -1.2812),
            [ORTHO(WORLD_POS_TYPE_BEAM1)] = VEC_FX32(-0.7285, 2.0176, -1.2812),
            [PERSP(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(-0.5635, 1.0, -1.2812),
            [ORTHO(WORLD_POS_TYPE_BEAM2)] = VEC_FX32(-0.5635, 1.0, -1.2812),
            [PERSP(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(-0.6055, 1.3672, 0),
            [ORTHO(WORLD_POS_TYPE_BEAM3)] = VEC_FX32(-0.6055, 1.3672, 0),
            [PERSP(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(-2.002, 1.1465, 0),
            [ORTHO(WORLD_POS_TYPE_HYPNOSIS)] = VEC_FX32(-2.002, 1.1465, 0),
            [PERSP(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(-1.3672, 1.541, 0),
            [ORTHO(WORLD_POS_TYPE_TRI_ATTACK)] = VEC_FX32(-1.3672, 1.541, 0),
            [PERSP(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(-0.1543, 1.502, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_CANNON)] = VEC_FX32(-0.1543, 1.502, 0),
            [PERSP(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(-2.0625, 2.3125, 0),
            [ORTHO(WORLD_POS_TYPE_HYPER_VOICE)] = VEC_FX32(-2.0625, 2.3125, 0),
            [PERSP(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(0.125, 0.8496, 0),
            [ORTHO(WORLD_POS_TYPE_GRASS_WHISTLE)] = VEC_FX32(0.125, 0.8496, 0),
            [PERSP(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(-1.6719, 1.3281, 0),
            [ORTHO(WORLD_POS_TYPE_DRAGON_PULSE)] = VEC_FX32(-1.6719, 1.3281, 0),
            [PERSP(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(1.2578, -1.4648, 0.666),
            [ORTHO(WORLD_POS_TYPE_CAMERA_LOOKAT)] = VEC_FX32(1.2578, -1.3203, 0.666),
            [PERSP(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(-0.5635, 1.0, 0),
            [ORTHO(WORLD_POS_TYPE_HYDRO_PUMP)] = VEC_FX32(-0.7285, 2.0176, 0),
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
    const VecFx32 *pos = &positions[battlerType][index];

    VEC_Set(outPos, pos->x, pos->y, pos->z);
}

#undef PERSP
#undef ORTHO

#define CALL_INTERNAL_GETTER(TYPE) \
    BattleAnimUtil_GetBattlerTypeWorldPosInternal(battlerType, pos, isContest, projection, TYPE)

#define CALL_TYPE_GETTER(NAME)                                                                 \
    do {                                                                                       \
        ParticleSystem *ps = BattleAnimSystem_GetCurrentParticleSystem(system);                \
        enum CameraProjection projection = ParticleSystem_GetCameraProjection(ps);             \
        int battlerType = BattleAnimUtil_GetBattlerType(system, battler);                      \
        BOOL isContest = BattleAnimSystem_IsContest(system);                                   \
        BattleAnimUtil_GetBattlerTypeWorldPos_##NAME(battlerType, pos, isContest, projection); \
    } while (FALSE)

void BattleAnimUtil_GetBattlerTypeWorldPos_Normal(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_NORMAL);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_Beam1(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_BEAM1);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_Beam2(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_BEAM2);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_Beam3(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_BEAM3);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_Hypnosis(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_HYPNOSIS);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_TriAttack(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_TRI_ATTACK);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_HydroCannon(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_HYDRO_CANNON);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_HyperVoice(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_HYPER_VOICE);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_GrassWhistle(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_GRASS_WHISTLE);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_DragonPulse(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_DRAGON_PULSE);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_CameraLookAt(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_CAMERA_LOOKAT);
}

void BattleAnimUtil_GetBattlerTypeWorldPos_HydroPump(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection)
{
    CALL_INTERNAL_GETTER(WORLD_POS_TYPE_HYDRO_PUMP);
}

void BattleAnimUtil_GetBattlerWorldPos_Normal(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(Normal);
}

void BattleAnimUtil_GetBattlerWorldPos_Beam1(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(Beam1);
}

void BattleAnimUtil_GetBattlerWorldPos_Beam2(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(Beam2);
}

void BattleAnimUtil_GetBattlerWorldPos_Beam3(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(Beam3);
}

void BattleAnimUtil_GetBattlerWorldPos_Hypnosis(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(Hypnosis);
}

void BattleAnimUtil_GetBattlerWorldPos_TriAttack(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(TriAttack);
}

void BattleAnimUtil_GetBattlerWorldPos_HydroCannon(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(HydroCannon);
}

void BattleAnimUtil_GetBattlerWorldPos_HyperVoice(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(HyperVoice);
}

void BattleAnimUtil_GetBattlerWorldPos_GrassWhistle(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(GrassWhistle);
}

void BattleAnimUtil_GetBattlerWorldPos_DragonPulse(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(DragonPulse);
}

void BattleAnimUtil_GetBattlerWorldPos_CameraLookAt(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(CameraLookAt);
}

void BattleAnimUtil_GetBattlerWorldPos_HydroPump(BattleAnimSystem *system, int battler, VecFx32 *pos)
{
    CALL_TYPE_GETTER(HydroPump);
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

// Gets the "up" vector for a given battler to apply to a particle system camera.
// This is so animations can be created only from the perspective of the player side
// and still look correct when used on the enemy side.
void BattleAnimUtil_GetUpVectorForBattler(int battler, VecFx32 *up)
{
    if (battler == BATTLER_PLAYER_1) {
        ParticleSystem_GetDefaultCameraUp(up);
    } else {
        *up = sUnitDown;
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
