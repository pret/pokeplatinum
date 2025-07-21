#include "overlay012/ov12_02225864.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "overlay012/battle_anim_system.h"
#include "overlay012/funcptr_ov12_02226274.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/ov12_02225864.h"

#include "battle_script_battlers.h"
#include "buffer_manager.h"
#include "heap.h"
#include "inlines.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "screen_scroll_manager.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define MAX_CYCLES_PER_SHAKE 4

typedef struct BattleAnimPosition {
    s16 x;
    s16 y;
} BattleAnimPosition;

typedef void (*UnkFuncPtr_ov12_02226490)(void *);

typedef struct {
    SysTask *unk_00;
    SysTask *unk_04;
    BOOL unk_08;
    BOOL unk_0C;
    UnkFuncPtr_ov12_02226490 unk_10;
    UnkFuncPtr_ov12_02226490 unk_14;
    void *unk_18;
} UnkStruct_ov12_02226490;

typedef struct UnkStruct_ov12_02226504_t {
    UnkStruct_ov12_02226490 unk_00;
    BufferManager *bufferManager;
    u32 unk_20[192];
    u32 unk_320[192];
    u32 unk_620;
} UnkStruct_ov12_02226504;

typedef struct UnkStruct_ov12_0222660C_t {
    UnkStruct_ov12_02226490 unk_00;
    ScreenScrollManager *screenScrollMgr;
} UnkStruct_ov12_0222660C;

typedef struct UnkStruct_ov12_022267D4_t {
    BOOL unk_00;
    SysTask *unk_04;
    int unk_08;
    u16 unk_0C;
    u16 unk_0E;
    u16 unk_10;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    s8 unk_15;
    s8 unk_16;
    s8 unk_17;
    PaletteData *unk_18;
} UnkStruct_ov12_022267D4;

static void ov12_022268DC(u16 *param0, u16 param1);

static const BattleAnimPosition sBattleAnimBattlerPositions[][6] = {
    // Single Battle
    {
        [BATTLER_TYPE_SOLO_PLAYER] = { 64, 112 },
        [BATTLER_TYPE_SOLO_ENEMY] = { 192, 48 },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = { 216, 112 },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = { 80, 42 },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = { 0, 0 },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = { 0, 0 },
    },

    // Double Battle
    {
        [BATTLER_TYPE_SOLO_PLAYER] = { 64, 112 },
        [BATTLER_TYPE_SOLO_ENEMY] = { 192, 48 },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = { 40, 112 },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = { 216, 50 },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = { 80, 120 },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = { 176, 42 },
    },
};

void ov12_02225864(int param0, int param1, s16 *param2, s16 *param3)
{
    if (param2 != NULL) {
        *param2 = sBattleAnimBattlerPositions[param0][param1].x;
    }

    if (param3 != NULL) {
        *param3 = sBattleAnimBattlerPositions[param0][param1].y;
    }
}

void ov12_02225898(BattleAnimSystem *param0, int param1, s16 *param2, s16 *param3)
{
    if (BattleAnimSystem_IsContest(param0) == 1) {
        ov12_02225864(0, param1 + 2, param2, param3);
    } else {
        if (BattleAnimSystem_IsDoubleBattle(param0) == 1) {
            ov12_02225864(1, param1 - 2, param2, param3);
        } else {
            ov12_02225864(0, param1, param2, param3);
        }
    }
}

s16 BattleAnimUtil_GetBattlerPos(BattleAnimSystem *system, int battler, enum BattleAnimPositionType posType)
{
    int isDoubles;
    int battlerType = BattleAnimUtil_GetBattlerType(system, battler);

    if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
        isDoubles = TRUE;
    } else {
        isDoubles = FALSE;
    }

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        battlerType += 2;
    }

    switch (posType) {
    case BATTLE_ANIM_POSITION_MON_X:
    case BATTLE_ANIM_POSITION_PARTICLE_X:
        return sBattleAnimBattlerPositions[isDoubles][battlerType].x;
    case BATTLE_ANIM_POSITION_MON_Y:
    case BATTLE_ANIM_POSITION_PARTICLE_Y:
        return sBattleAnimBattlerPositions[isDoubles][battlerType].y;
    }

    GF_ASSERT(FALSE);
    return 0;
}

u8 ov12_02225950(ManagedSprite *param0)
{
    return PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(param0->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
}

int BattleAnimMath_GetRotationDirection(BattleAnimSystem *system, int battler)
{
    int dir = 1;

    enum Battler side = BattleAnimUtil_GetBattlerSide(system, battler);

    if (BattleAnimSystem_IsContest(system)) {
        if (side == BTLSCR_PLAYER) {
            dir = -1;
        }
    } else {
        if (side == BTLSCR_ENEMY) {
            dir = -1;
        }
    }

    return dir;
}

int ov12_0222598C(BattleAnimSystem *param0, int param1)
{
    int v0;
    int v1 = 1;

    v0 = BattleAnimUtil_GetBattlerSide(param0, param1);

    if (v0 == 0x4) {
        v1 = -1;
    }

    return v1;
}

fx32 BattleAnimMath_GetStepSize(fx32 start, fx32 end, u32 steps)
{
    return FX_Div(end - start, steps << FX32_SHIFT);
}

u32 ov12_022259AC(fx32 param0, fx32 param1, fx32 param2)
{
    fx32 v0;
    fx32 v1;

    v0 = FX_Div(param1 - param0, param2);

    v1 = FX_Modf(v0, &v0);

    if (v1) {
        v0 += FX32_ONE;
    }

    v0 = MATH_ABS(v0);

    return v0 >> FX32_SHIFT;
}

void ov12_022259DC(XYTransformContext *param0, ManagedSprite *param1, s16 param2, s16 param3)
{
    ManagedSprite_SetPositionXY(param1, param2 + param0->x, param3 + param0->y);
}

void ov12_022259FC(XYTransformContext *param0, ManagedSprite *param1)
{
    f32 v0, v1;

    ov12_02225FA4(param0, &v0, &v1);
    ManagedSprite_SetAffineScale(param1, v0, v1);
}

void ov12_02225A18(XYTransformContext *param0, PokemonSprite *param1, s16 param2, s16 param3)
{
    PokemonSprite_SetAttribute(param1, MON_SPRITE_X_CENTER, param2 + param0->x);
    PokemonSprite_SetAttribute(param1, MON_SPRITE_Y_CENTER, param3 + param0->y);
}

void ov12_02225A3C(XYTransformContext *param0, PokemonSprite *param1)
{
    PokemonSprite_SetAttribute(param1, MON_SPRITE_SCALE_X, param0->x);
    PokemonSprite_SetAttribute(param1, MON_SPRITE_SCALE_Y, param0->y);
}

void ov12_02225A5C(XYTransformContext *param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, int param7)
{
    param0->data[0] = param7;
    param0->data[1] = param1;
    param0->data[2] = param5;
    param0->data[3] = param3;
    param0->data[4] = param6;
    param0->data[5] = (param2 - param1) / param7;
    param0->data[6] = (param4 - param3) / param7;
}

void ov12_02225A8C(XYTransformContext *param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, u16 param7)
{
    s16 v0;

    GF_ASSERT(param0);

    if (param1 > param2) {
        param7 = -param7;
    }

    v0 = param7;

    param0->data[0] = ov12_022259AC(param1 * FX32_ONE, param2 * FX32_ONE, v0 * FX32_ONE);
    param0->data[1] = param1;
    param0->data[2] = param5;
    param0->data[3] = param3;
    param0->data[4] = param6;
    param0->data[5] = v0;
    param0->data[6] = (param4 - param3) / param0->data[0];
}

BOOL ov12_02225AE0(XYTransformContext *param0)
{
    fx32 v0, v1;

    GF_ASSERT(param0);

    if (param0->data[0]) {
        param0->data[1] += param0->data[5];
        param0->data[3] += param0->data[6];

        param0->data[1] &= 0xffff;
        param0->data[3] &= 0xffff;

        param0->data[0]--;

        param0->x = FX_Mul(FX_SinIdx(param0->data[1]), param0->data[2]) >> FX32_SHIFT;
        param0->y = FX_Mul(FX_CosIdx(param0->data[3]), param0->data[4]) >> FX32_SHIFT;

        return 1;
    }

    return 0;
}

BOOL ov12_02225B78(XYTransformContext *param0, s16 param1, s16 param2, ManagedSprite *param3)
{
    if (ov12_02225AE0(param0)) {
        ov12_022259DC(param0, param3, param1, param2);
        return 1;
    }

    return 0;
}

BOOL ov12_02225BA0(XYTransformContext *param0, s16 param1, s16 param2, PokemonSprite *param3)
{
    if (ov12_02225AE0(param0)) {
        ov12_02225A18(param0, param3, param1, param2);
        return 1;
    }

    return 0;
}

void PosLerpContext_Init(XYTransformContext *ctx, s16 sx, s16 ex, s16 sy, s16 ey, u16 steps)
{
    GF_ASSERT(ctx);

    ctx->x = sx;
    ctx->y = sy;
    ctx->data[XY_PARAM_STEPS] = steps;
    ctx->data[XY_PARAM_STEP_SIZE_X] = BattleAnimMath_GetStepSize(sx * FX32_ONE, ex * FX32_ONE, steps);
    ctx->data[XY_PARAM_STEP_SIZE_Y] = BattleAnimMath_GetStepSize(sy * FX32_ONE, ey * FX32_ONE, steps);
    ctx->data[XY_PARAM_CUR_X] = sx * FX32_ONE;
    ctx->data[XY_PARAM_CUR_Y] = sy * FX32_ONE;
}

BOOL PosLerpContext_Update(XYTransformContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[XY_PARAM_STEPS]) {
        ctx->data[XY_PARAM_CUR_X] += ctx->data[XY_PARAM_STEP_SIZE_X];
        ctx->data[XY_PARAM_CUR_Y] += ctx->data[XY_PARAM_STEP_SIZE_Y];
        ctx->x = ctx->data[XY_PARAM_CUR_X] >> FX32_SHIFT;
        ctx->y = ctx->data[XY_PARAM_CUR_Y] >> FX32_SHIFT;
        ctx->data[XY_PARAM_STEPS]--;

        return TRUE;
    }

    return FALSE;
}

BOOL ov12_02225C50(XYTransformContext *param0, ManagedSprite *param1)
{
    if (PosLerpContext_Update(param0)) {
        ov12_022259DC(param0, param1, 0, 0);
        return 1;
    }

    return 0;
}

BOOL ov12_02225C74(XYTransformContext *param0, PokemonSprite *param1)
{
    if (PosLerpContext_Update(param0)) {
        ov12_02225A18(param0, param1, 0, 0);
        return 1;
    }

    return 0;
}

void ov12_02225C98(XYTransformContext *param0, XYTransformContext *param1, s16 param2, s16 param3, s16 param4, s16 param5, u16 param6, fx32 param7)
{
    PosLerpContext_Init(param0, param2, param3, param4, param5, param6);
    param1->x = 0;
    param1->y = 0;
    ov12_02225A5C(param1, 0, 0, (90 * 0xffff) / 360, (270 * 0xffff) / 360, 0, param7, param6);
}

BOOL ov12_02225CE4(XYTransformContext *param0, XYTransformContext *param1)
{
    BOOL v0, v1;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = PosLerpContext_Update(param0);
    v1 = ov12_02225AE0(param1);

    param0->x += param1->x;
    param0->y += param1->y;

    if ((v0 == v1) && (v0 == 0)) {
        return 0;
    }

    return 1;
}

BOOL ov12_02225D2C(XYTransformContext *param0, XYTransformContext *param1, ManagedSprite *param2)
{
    if (ov12_02225CE4(param0, param1)) {
        ov12_022259DC(param0, param2, 0, 0);
        return 1;
    }

    return 0;
}

void AngleLerpContext_Init(AngleLerpContext *ctx, s32 start, s32 end, u32 steps)
{
    GF_ASSERT(ctx);

    ctx->angle = start;
    ctx->data[0] = steps;
    ctx->data[1] = BattleAnimMath_GetStepSize(start * FX32_ONE, end * FX32_ONE, steps) >> FX32_SHIFT;
}

void AngleLerpContext_InitFX32(AngleLerpContext *ctx, s16 start, s16 end, u32 steps)
{
    GF_ASSERT(ctx);

    ctx->angle = start;
    ctx->data[0] = steps;
    ctx->data[1] = BattleAnimMath_GetStepSize(start * FX32_ONE, end * FX32_ONE, steps);
    ctx->data[2] = start * FX32_ONE;
}

BOOL AngleLerpContext_Update(AngleLerpContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[0]) {
        ctx->angle += ctx->data[1];
        ctx->data[0]--;

        return TRUE;
    }

    return FALSE;
}

BOOL AngleLerpContext_UpdateFX32(AngleLerpContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[0]) {
        ctx->data[2] += ctx->data[1];
        ctx->angle = ctx->data[2] >> FX32_SHIFT;
        ctx->data[0]--;

        return TRUE;
    }

    return FALSE;
}

void AngleLerpContext_InitCos(AngleLerpContext *ctx, u16 start, u16 end, fx32 amplitude, u32 steps)
{
    ctx->data[0] = steps;
    ctx->data[1] = start;
    ctx->data[2] = amplitude;
    ctx->data[3] = (end - start) / steps;
}

BOOL AngleLerpContext_UpdateCos(AngleLerpContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[0]) {
        ctx->data[1] += ctx->data[3];
        ctx->data[1] &= 0xFFFF;
        ctx->data[0]--;
        ctx->angle = FX_Mul(FX_CosIdx(ctx->data[1]), ctx->data[2]) >> FX32_SHIFT;

        return TRUE;
    }

    return FALSE;
}

// SCALE and REFERENCE are percentages, e.g. 100 for "normal" scale
#define RELATIVE_SCALE(SCALE, REFERENCE) ((SCALE * MON_AFFINE_SCALE(1)) / REFERENCE)

void ScaleLerpContext_Init(XYTransformContext *ctx, s16 startScale, s16 refScale, s16 endScale, u32 steps)
{
    GF_ASSERT(ctx);

    ctx->data[XY_PARAM_STEPS] = steps;
    ctx->data[XY_PARAM_STEP_SIZE] = BattleAnimMath_GetStepSize(
        RELATIVE_SCALE(startScale, refScale) * FX32_ONE,
        RELATIVE_SCALE(endScale, refScale) * FX32_ONE,
        steps);
    
    ctx->x = RELATIVE_SCALE(startScale, refScale);
    ctx->y = RELATIVE_SCALE(startScale, refScale);
    ctx->data[XY_PARAM_CUR_X] = ctx->x * FX32_ONE;
    ctx->data[XY_PARAM_CUR_Y] = ctx->y * FX32_ONE;
}

BOOL ScaleLerpContext_Update(XYTransformContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[XY_PARAM_STEPS]) {
        ctx->data[XY_PARAM_STEPS]--;
        ctx->data[XY_PARAM_CUR_X] += ctx->data[XY_PARAM_STEP_SIZE];
        ctx->data[XY_PARAM_CUR_Y] += ctx->data[XY_PARAM_STEP_SIZE];
        ctx->x = (ctx->data[XY_PARAM_CUR_X] >> FX32_SHIFT);
        ctx->y = (ctx->data[XY_PARAM_CUR_Y] >> FX32_SHIFT);

        return TRUE;
    }

    return FALSE;
}

void ScaleLerpContext_InitXY(XYTransformContext *ctx, s16 sx, s16 ex, s16 sy, s16 ey, s16 ref, u32 steps)
{
    GF_ASSERT(ctx);

    ctx->data[XY_PARAM_STEPS] = steps;
    ctx->data[XY_PARAM_STEP_SIZE_X] = BattleAnimMath_GetStepSize(
        RELATIVE_SCALE(sx, ref) * FX32_ONE,
        RELATIVE_SCALE(ex, ref) * FX32_ONE,
        steps);
    ctx->data[XY_PARAM_STEP_SIZE_Y] = BattleAnimMath_GetStepSize(
        RELATIVE_SCALE(sy, ref) * FX32_ONE,
        RELATIVE_SCALE(ey, ref) * FX32_ONE,
        steps);
    
    ctx->x = RELATIVE_SCALE(sx, ref);
    ctx->y = RELATIVE_SCALE(sy, ref);
    ctx->data[XY_PARAM_CUR_X] = ctx->x * FX32_ONE;
    ctx->data[XY_PARAM_CUR_Y] = ctx->y * FX32_ONE;
}

BOOL ScaleLerpContext_UpdateXY(XYTransformContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[XY_PARAM_STEPS]) {
        ctx->data[XY_PARAM_STEPS]--;
        ctx->data[XY_PARAM_CUR_X] += ctx->data[XY_PARAM_STEP_SIZE_X];
        ctx->data[XY_PARAM_CUR_Y] += ctx->data[XY_PARAM_STEP_SIZE_Y];
        ctx->x = (ctx->data[XY_PARAM_CUR_X] >> FX32_SHIFT);
        ctx->y = (ctx->data[XY_PARAM_CUR_Y] >> FX32_SHIFT);

        return TRUE;
    }

    return FALSE;
}

void ov12_02225FA4(XYTransformContext *param0, f32 *param1, f32 *param2)
{
    *param1 = (1.0f * param0->x) / 0x100;
    *param2 = (1.0f * param0->y) / 0x100;
}

// This function calculates a vertical offset to be applied to a pokemon sprites
// Y position when the sprite is scaled, to ensure that the sprite appears
// anchored to the ground. This is necessary because scaling a sprite
// scales it from its center, which would otherwise cause the sprite to
// appear to float above the ground when scaled up, or sink below the ground
// when scaled down.
s16 BattleAnimUtil_GetGroundAnchoredScaleOffset(s16 baseY, int height, fx32 scaleY)
{
    // Calculate the available height for the sprite to scale within
    // The 2x multiplier accounts for the fact that scaling goes
    // in both directions (up and down)
    fx32 availableHeight = (MON_SPRITE_FRAME_HEIGHT - (height * 2)) * FX32_ONE;

    // Base scale (reference scale) is 1.0, i.e. 100%
    fx32 baseScale = FX32_CONST(MON_AFFINE_SCALE(1));

    // Scales the available height by the scale factor
    fx32 scaledAvailableHeight = FX_Mul(availableHeight, scaleY);

    // Calculates the scaled height relative to the base scale
    fx32 relativeScaledHeight = FX_Div(scaledAvailableHeight, baseScale);

    // The difference between the available height and the scaled height
    fx32 scaledHeightDiff = (availableHeight - relativeScaledHeight);

    fx32 fractionalPart;
    fx32 integerPart = FX_Modf(scaledHeightDiff, &fractionalPart);

    // Adjust the integer part to ensure proper rounding
    if (integerPart) {
        integerPart += FX32_HALF;
    }

    scaledHeightDiff = fractionalPart + integerPart;

    // Finally, divide by half the height difference to get the offset
    return (scaledHeightDiff >> FX32_SHIFT) / 2;
}

void ov12_02226024(PokemonSprite *param0, s16 param1, s16 param2, fx32 param3, int param4)
{
    s16 v0;
    s16 v1 = param1;
    v0 = BattleAnimUtil_GetGroundAnchoredScaleOffset(param1, param2, param3);

    if (param4 == 1) {
        v0 *= -1;
        v1 = param1 - param2;
    }

    PokemonSprite_SetAttribute(param0, MON_SPRITE_Y_CENTER, v1 + v0);
}

void ov12_0222605C(ManagedSprite *param0, s16 param1, s16 param2, fx32 param3, int param4)
{
    s16 v0;
    s16 v1;
    s16 v2;
    s16 v3;

    v1 = param1;
    v0 = BattleAnimUtil_GetGroundAnchoredScaleOffset(param1, param2, param3);

    if (param4 == 1) {
        v0 *= -1;
        v1 = param1 - param2;
    }

    ManagedSprite_GetPositionXY(param0, &v2, &v3);
    ManagedSprite_SetPositionXY(param0, v2, v1 + v0);
}

BOOL ov12_022260A8(XYTransformContext *param0, ManagedSprite *param1)
{
    if (ScaleLerpContext_Update(param0)) {
        ov12_022259FC(param0, param1);
        return 1;
    }

    return 0;
}

BOOL ov12_022260C8(XYTransformContext *param0, PokemonSprite *param1)
{
    if (ScaleLerpContext_Update(param0)) {
        ov12_02225A3C(param0, param1);
        return 1;
    }

    return 0;
}

BOOL ov12_022260E8(XYTransformContext *param0, PokemonSprite *param1)
{
    if (ScaleLerpContext_UpdateXY(param0)) {
        ov12_02225A3C(param0, param1);
        return 1;
    }

    return 0;
}

static inline void ShakeContext_FlipPosition(s16 *cur, s32 *prev, s32 unused)
{
    s32 prevVal = *prev;

    *prev = *cur;

    if (prevVal == 0) {
        *cur = 0;
    } else {
        *cur = -prevVal;
    }
}

void ShakeContext_Init(XYTransformContext *ctx, s16 extentX, s16 extentY, u32 interval, u32 amount)
{
    GF_ASSERT(ctx);

    ctx->data[XY_PARAM_SHAKE_COUNTER] = interval;
    ctx->data[XY_PARAM_SHAKE_INTERVAL] = interval;
    ctx->data[XY_PARAM_SHAKE_REMAINING] = amount;
    ctx->data[XY_PARAM_SHAKE_CYCLE] = 0;
    ctx->data[XY_PARAM_SHAKE_EXTENT_X] = extentX;
    ctx->data[XY_PARAM_SHAKE_EXTENT_Y] = extentY;
    ctx->data[XY_PARAM_SHAKE_PREV_X] = -extentX;
    ctx->data[XY_PARAM_SHAKE_PREV_Y] = -extentY;
    ctx->x = 0;
    ctx->y = 0;
}

BOOL ShakeContext_Update(XYTransformContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[XY_PARAM_SHAKE_REMAINING]) {
        ctx->data[XY_PARAM_SHAKE_COUNTER]++;

        if (ctx->data[XY_PARAM_SHAKE_COUNTER] >= ctx->data[XY_PARAM_SHAKE_INTERVAL]) {
            ctx->data[XY_PARAM_SHAKE_COUNTER] = 0;

            ShakeContext_FlipPosition(&ctx->x, &ctx->data[XY_PARAM_SHAKE_PREV_X], ctx->data[XY_PARAM_SHAKE_EXTENT_X]);
            ShakeContext_FlipPosition(&ctx->y, &ctx->data[XY_PARAM_SHAKE_PREV_Y], ctx->data[XY_PARAM_SHAKE_EXTENT_Y]);

            if (++ctx->data[XY_PARAM_SHAKE_CYCLE] >= MAX_CYCLES_PER_SHAKE) {
                ctx->data[XY_PARAM_SHAKE_CYCLE] = 0;
                ctx->data[XY_PARAM_SHAKE_REMAINING]--;
            }
        }
        
        return TRUE;
    }

    return FALSE;
}

BOOL ov12_0222619C(XYTransformContext *param0, s16 param1, s16 param2, PokemonSprite *param3)
{
    if (ShakeContext_Update(param0)) {
        ov12_02225A18(param0, param3, param1, param2);
        return 1;
    }

    return 0;
}

void ov12_022261C4(UnkStruct_ov12_02226274 *param0, XYTransformContext *param1, UnkFuncPtr_ov12_02226274 param2, s16 param3, s16 param4, u16 param5, u8 param6, u8 param7, ManagedSprite *param8, ManagedSprite *param9, ManagedSprite *param10, ManagedSprite *param11)
{
    int v0;

    param0->unk_00 = param3;
    param0->unk_02 = param4;
    param0->unk_94 = param2;
    param0->unk_A8 = param5;
    param0->unk_AA = 0;
    param0->unk_AC = param6;
    param0->unk_AD = 0;
    param0->unk_AE = param7;

    for (v0 = 0; v0 < param6; v0++) {
        param0->unk_04[v0] = *param1;
    }

    param0->unk_98[0] = param8;
    param0->unk_98[1] = param9;
    param0->unk_98[2] = param10;
    param0->unk_98[3] = param11;

    for (v0 = 0; v0 < param0->unk_AC; v0++) {
        ManagedSprite_SetDrawFlag(param0->unk_98[v0], 0);
    }
}

BOOL ov12_02226274(UnkStruct_ov12_02226274 *param0)
{
    int v0;
    BOOL v1[4];
    f32 v2, v3;

    for (v0 = 0; v0 < 4; v0++) {
        v1[v0] = 1;
    }

    if (param0->unk_A8 <= param0->unk_AA) {
        ManagedSprite_SetDrawFlag(param0->unk_98[param0->unk_AD], 1);
        param0->unk_AD++;
        param0->unk_AA = 0;
    }

    if (param0->unk_AD < param0->unk_AC) {
        param0->unk_AA++;
    }

    for (v0 = 0; v0 < param0->unk_AD; v0++) {
        v1[v0] = param0->unk_94(&param0->unk_04[v0]);

        if (v1[v0]) {
            if (param0->unk_AE == 0) {
                ManagedSprite_SetPositionXY(param0->unk_98[v0], param0->unk_00 + param0->unk_04[v0].x, param0->unk_02 + param0->unk_04[v0].y);
            } else {
                ov12_02225FA4(&param0->unk_04[v0], &v2, &v3);
                ManagedSprite_SetAffineScale(param0->unk_98[v0], v2, v3);
            }
        } else {
            ManagedSprite_SetDrawFlag(param0->unk_98[v0], 0);
        }
    }

    for (v0 = 0; v0 < param0->unk_AC; v0++) {
        if (v1[v0] == 1) {
            return 1;
        }
    }

    return 0;
}

void ov12_022263A4(XYTransformContext *param0, int param1, int param2)
{
    int v0;

    ov12_02225A5C(param0, 0, (360 * 0xffff) / 360, 0, (360 * 0xffff) / 360, 32 * FX32_ONE, -8 * FX32_ONE, param2);
    param0->data[0] *= param1;
}

static void ov12_022263DC(SysTask *param0, void *param1)
{
    BOOL v0;
    UnkStruct_ov12_02226454 *v1 = param1;

    v0 = PosLerpContext_Update(&v1->unk_00);

    if (v0 == 0) {
        v1->unk_24 = 1;
        SysTask_Done(param0);
    } else {
        if (v1->unk_00.x < 0) {
            v1->unk_00.x = 0;
        }

        if (v1->unk_00.y < 0) {
            v1->unk_00.y = 0;
        }

        G2_ChangeBlendAlpha(v1->unk_00.x, v1->unk_00.y);
    }
}

void ov12_02226424(UnkStruct_ov12_02226454 *param0, s16 param1, s16 param2, s16 param3, s16 param4, int param5)
{
    PosLerpContext_Init(&param0->unk_00, param1, param2, param3, param4, param5);

    param0->unk_24 = 0;
    SysTask_Start(ov12_022263DC, param0, 0);
}

BOOL ov12_02226454(const UnkStruct_ov12_02226454 *param0)
{
    return param0->unk_24;
}

static void ov12_02226458(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02226490 *v0 = param1;

    if (v0->unk_08) {
        v0->unk_0C = 1;
        v0->unk_10(v0->unk_18);
    } else {
        BufferManager_StopDMA();
    }
}

static void ov12_02226474(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02226490 *v0 = param1;

    if (v0->unk_08 && v0->unk_0C) {
        v0->unk_14(v0->unk_18);
        v0->unk_0C = 0;
    }
}

static void ov12_02226490(UnkStruct_ov12_02226490 *param0, void *param1, UnkFuncPtr_ov12_02226490 param2, UnkFuncPtr_ov12_02226490 param3)
{
    GF_ASSERT(param0);

    param0->unk_08 = 1;
    param0->unk_0C = 0;
    param0->unk_18 = param1;
    param0->unk_10 = param2;
    param0->unk_14 = param3;
    param0->unk_04 = SysTask_ExecuteAfterVBlank(ov12_02226458, param0, 0);
    param0->unk_00 = SysTask_ExecuteOnVBlank(ov12_02226474, param0, 0);
}

static void ov12_022264D0(UnkStruct_ov12_02226490 *param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04 != NULL) {
        SysTask_Done(param0->unk_04);
    }

    if (param0->unk_00 != NULL) {
        SysTask_Done(param0->unk_00);
    }

    BufferManager_StopDMA();
}

static void ov12_022264F4(UnkStruct_ov12_02226490 *param0)
{
    GF_ASSERT(param0);
    param0->unk_08 = 0;
}

static void ov12_02226504(UnkStruct_ov12_02226504 *param0)
{
    const void *v0 = BufferManager_GetReadBuffer(param0->bufferManager);

    BufferManager_StopDMA();
    BufferManager_StartDMA(v0, (void *)param0->unk_620, 4, 1);
}

static void ov12_02226528(void *param0)
{
    UnkStruct_ov12_02226504 *v0 = param0;

    BufferManager_SwapBuffers(v0->bufferManager);
    ov12_02226504(v0);
}

static void ov12_0222653C(void *param0)
{
    UnkStruct_ov12_02226504 *v0 = param0;
    ov12_02226504(v0);
}

UnkStruct_ov12_02226504 *ov12_02226544(u32 param0, u32 param1, enum HeapId heapID)
{
    UnkStruct_ov12_02226504 *v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov12_02226504));
    memset(v0, 0, sizeof(UnkStruct_ov12_02226504));

    GF_ASSERT(v0);
    v0->bufferManager = BufferManager_New(heapID, v0->unk_20, v0->unk_320);

    GF_ASSERT(v0->bufferManager);
    v0->unk_620 = param0;

    MI_CpuFill32(v0->unk_20, param1, sizeof(u32) * 192);
    MI_CpuFill32(v0->unk_320, param1, sizeof(u32) * 192);

    ov12_02226490(&v0->unk_00, v0, ov12_02226528, ov12_0222653C);

    return v0;
}

void ov12_022265C0(UnkStruct_ov12_02226504 *param0)
{
    GF_ASSERT(param0);

    ov12_022264D0(&param0->unk_00);

    if (param0->bufferManager != NULL) {
        BufferManager_Delete(param0->bufferManager);
    }

    Heap_Free(param0);
}

void *ov12_022265E4(const UnkStruct_ov12_02226504 *param0)
{
    GF_ASSERT(param0);
    return BufferManager_GetWriteBuffer(param0->bufferManager);
}

void ov12_022265F8(UnkStruct_ov12_02226504 *param0)
{
    GF_ASSERT(param0);
    ov12_022264F4(&param0->unk_00);
}

static void ov12_0222660C(void *param0)
{
    UnkStruct_ov12_0222660C *v0 = param0;

    ScreenScrollManager_SwapBuffers(v0->screenScrollMgr);
    ScreenScrollManager_RestartDMA(v0->screenScrollMgr);
}

static void ov12_02226620(void *param0)
{
    UnkStruct_ov12_0222660C *v0 = param0;
    ScreenScrollManager_RestartDMA(v0->screenScrollMgr);
}

UnkStruct_ov12_0222660C *ov12_0222662C(u8 param0, u8 param1, u16 param2, fx32 param3, s16 param4, u32 param5, u32 param6, u32 param7, int heapID)
{
    UnkStruct_ov12_0222660C *v0;
    u32 v1;
    void *v2;
    const void *v3;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov12_0222660C));
    GF_ASSERT(v0);

    memset(v0, 0, sizeof(UnkStruct_ov12_0222660C));

    v1 = BattleAnimUtil_GetHOffsetRegisterForBg(param5);
    v0->screenScrollMgr = ScreenScrollManager_New(heapID);

    ScreenScrollManager_ScrollX(v0->screenScrollMgr, param0, param1, param2, param3, param4, v1, param7, param6);
    ov12_02226490(&v0->unk_00, v0, ov12_0222660C, ov12_02226620);

    return v0;
}

void ov12_0222669C(UnkStruct_ov12_0222660C *param0)
{
    GF_ASSERT(param0);

    ov12_022264D0(&param0->unk_00);

    if (param0->screenScrollMgr) {
        ScreenScrollManager_Delete(param0->screenScrollMgr);
    }

    Heap_Free(param0);
}

void *ov12_022266C0(const UnkStruct_ov12_0222660C *param0)
{
    GF_ASSERT(param0);
    return ScreenScrollManager_GetWriteBuffer(param0->screenScrollMgr);
}

void ov12_022266D4(UnkStruct_ov12_0222660C *param0)
{
    GF_ASSERT(param0);
    ov12_022264F4(&param0->unk_00);
}

u32 ov12_022266E8(u16 param0, u16 param1)
{
    return (param1 << 16) | param0;
}

u32 BattleAnimUtil_GetHOffsetRegisterForBg(int bgID)
{
    switch (bgID) {
    case BATTLE_BG_ID_UNUSED:
        return REG_BG0HOFS_ADDR;
    case BATTLE_BG_ID_WINDOW:
        return REG_BG1HOFS_ADDR;
    case BATTLE_BG_ID_BASE:
        return REG_BG2HOFS_ADDR;
    case BATTLE_BG_ID_EFFECT:
        return REG_BG3HOFS_ADDR;
    }
}

void ov12_02226728(s16 param0, s16 param1, s16 param2, s16 param3, s16 *param4, s16 *param5)
{
    *param4 = (param0 + param2) / 2;
    *param5 = (param1 + param3) / 2;
}

void ov12_02226744(s16 param0, s16 param1, s16 param2, s16 param3, fx32 *param4)
{
    s16 v0 = (param0 - param2);
    s16 v1 = (param1 - param3) * -1;

    *param4 = FX_Sqrt(((v1 * v1) + (v0 * v0)) * FX32_ONE);
}

void ov12_0222676C(s16 param0, s16 param1, s16 param2, s16 param3, u16 *param4)
{
    s16 v0 = (param0 - param2);
    s16 v1 = (param1 - param3) * -1;
    s16 v2;

    *param4 = FX_Atan2Idx(v1 * FX32_ONE, v0 * FX32_ONE);

    if ((*param4 > 0) && (v1 < 0)) {
        *param4 = (*param4 - ((180 * 0xffff) / 360)) * 0xffff;
    } else if ((*param4 < 0) && (v1 > 0)) {
        *param4 += +((180 * 0xffff) / 360);
    }
}

BOOL ov12_022267A8(int *param0, int param1, s32 param2)
{
    if (param2 < 0) {
        if (*param0 + param2 > param1) {
            *param0 += param2;
            return 0;
        } else {
            *param0 = param1;
            return 1;
        }
    } else {
        if (*param0 + param2 < param1) {
            *param0 += param2;
            return 0;
        } else {
            *param0 = param1;
            return 1;
        }
    }

    return 1;
}

static void ov12_022267D4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022267D4 *v0 = (UnkStruct_ov12_022267D4 *)param1;

    if (v0->unk_00 == 0) {
        return;
    }

    if ((++v0->unk_17) >= v0->unk_16) {
        v0->unk_17 = 0;
        PaletteData_Blend(v0->unk_18, v0->unk_08, v0->unk_0C, v0->unk_0E, v0->unk_14, v0->unk_10);

        if (v0->unk_14 == v0->unk_13) {
            v0->unk_00 = 0;
        } else {
            s8 v1 = v0->unk_14 + v0->unk_15;

            if (v0->unk_15 > 0) {
                if (v1 > v0->unk_13) {
                    v0->unk_14 = v0->unk_13;
                } else {
                    v0->unk_14 += v0->unk_15;
                }
            } else {
                if (v1 < v0->unk_13) {
                    v0->unk_14 = v0->unk_13;
                } else {
                    v0->unk_14 += v0->unk_15;
                }
            }
        }
    }
}

BOOL ov12_02226848(UnkStruct_ov12_022267D4 *param0)
{
    GF_ASSERT(param0 != NULL);
    return param0->unk_00;
}

void ov12_02226858(UnkStruct_ov12_022267D4 *param0)
{
    GF_ASSERT(param0 != NULL);

    SysTask_Done(param0->unk_04);
    Heap_Free(param0);
}

UnkStruct_ov12_022267D4 *ov12_02226870(PaletteData *param0, int heapID, int param2, u16 param3, u16 param4, s8 param5, s8 param6, u8 param7, u8 param8, u16 param9, int param10)
{
    UnkStruct_ov12_022267D4 *v0 = NULL;

    v0 = Heap_AllocFromHeap(heapID, sizeof(UnkStruct_ov12_022267D4));

    GF_ASSERT(v0 != NULL);

    v0->unk_18 = param0;
    v0->unk_08 = param2;
    v0->unk_0C = param3;
    v0->unk_0E = param4;
    v0->unk_10 = param9;
    v0->unk_12 = param7;
    v0->unk_13 = param8;
    v0->unk_14 = param7;
    v0->unk_16 = param5;
    v0->unk_17 = param5;

    if (v0->unk_12 < v0->unk_13) {
        v0->unk_15 = param6;
    } else {
        v0->unk_15 = param6 * -1;
    }

    v0->unk_00 = 1;
    v0->unk_04 = SysTask_Start(ov12_022267D4, v0, param10);

    return v0;
}

static void ov12_022268DC(u16 *param0, u16 param1)
{
    int v0, v1, v2, v3;
    u32 v4;

    for (v0 = 0; v0 < param1; v0++) {
        v1 = ((*param0) & 0x1f);
        v2 = (((*param0) >> 5) & 0x1f);
        v3 = (((*param0) >> 10) & 0x1f);
        v4 = (((v1) * 76 + (v2) * 151 + (v3) * 29) >> 8);

        *param0 = (u16)((v4 << 10) | (v4 << 5) | v4);
        param0++;
    }
}

void ov12_02226924(BattleAnimSystem *param0)
{
    PaletteData *v0 = BattleAnimSystem_GetPaletteData(param0);
    u16 *v1 = PaletteData_GetFadedBuffer(v0, 0);

    if (BattleAnimSystem_IsContest(param0) == 1) {
        ov12_022268DC(v1, 16 * 3);
    } else {
        ov12_022268DC(v1, 16 * 8);
    }
}

void ov12_02226954(BattleAnimSystem *param0)
{
    PaletteData *v0 = BattleAnimSystem_GetPaletteData(param0);

    if (BattleAnimSystem_IsContest(param0) == 1) {
        PaletteData_CopyBuffer(v0, 0, 0, 0, 0, 16 * 3 * 2);
    } else {
        PaletteData_CopyBuffer(v0, 0, 0, 0, 0, 16 * 8 * 2);
    }
}
