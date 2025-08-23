#include "battle_anim/battle_anim_helpers.h"

#include "nitro/hw/common/lcd.h"
#include "nitro/types.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"

#include "battle_script_battlers.h"
#include "buffer_manager.h"
#include "heap.h"
#include "inlines.h"
#include "math_util.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "spl_internal.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define MAX_CYCLES_PER_SHAKE 4

static void BattleAnimUtil_ConvertColorsToGrayscale(u16 *param0, u16 param1);

static const Point2D sBattleAnimBattlerPositions[][6] = {
    // Single Battle
    {
        [BATTLER_TYPE_SOLO_PLAYER] = { BATTLER_POS_SOLO_PLAYER_X, BATTLER_POS_SOLO_PLAYER_Y },
        [BATTLER_TYPE_SOLO_ENEMY] = { BATTLER_POS_SOLO_ENEMY_X, BATTLER_POS_SOLO_ENEMY_Y },

        // Contest Positions
        [2] = { CONTESTANT_POS_PLAYER_X, CONTESTANT_POS_PLAYER_Y },
        [3] = { CONTESTANT_POS_ENEMY_X, CONTESTANT_POS_ENEMY_Y },
        [4] = { 0, 0 },
        [5] = { 0, 0 },
    },

    // Double Battle
    {
        [BATTLER_TYPE_SOLO_PLAYER] = { BATTLER_POS_SOLO_PLAYER_X, BATTLER_POS_SOLO_PLAYER_Y },
        [BATTLER_TYPE_SOLO_ENEMY] = { BATTLER_POS_SOLO_ENEMY_X, BATTLER_POS_SOLO_ENEMY_Y },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = { BATTLER_POS_PLAYER_SLOT_1_X, BATTLER_POS_PLAYER_SLOT_1_Y },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = { BATTLER_POS_ENEMY_SLOT_1_X, BATTLER_POS_ENEMY_SLOT_1_Y },
        [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = { BATTLER_POS_PLAYER_SLOT_2_X, BATTLER_POS_PLAYER_SLOT_2_Y },
        [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = { BATTLER_POS_ENEMY_SLOT_2_X, BATTLER_POS_ENEMY_SLOT_2_Y },
    },
};

void BattleAnimUtil_GetBattlerTypeDefaultPos2(int isDoubles, int battlerType, s16 *px, s16 *py)
{
    if (px != NULL) {
        *px = sBattleAnimBattlerPositions[isDoubles][battlerType].x;
    }

    if (py != NULL) {
        *py = sBattleAnimBattlerPositions[isDoubles][battlerType].y;
    }
}

void BattleAnimUtil_GetBattlerDefaultPos2(BattleAnimSystem *system, int battler, s16 *px, s16 *py)
{
    if (BattleAnimSystem_IsContest(system) == TRUE) {
        BattleAnimUtil_GetBattlerTypeDefaultPos2(FALSE, battler + 2, px, py);
    } else {
        if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
            BattleAnimUtil_GetBattlerTypeDefaultPos2(TRUE, battler - 2, px, py);
        } else {
            BattleAnimUtil_GetBattlerTypeDefaultPos2(FALSE, battler, px, py);
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

u8 BattleAnimUtil_GetSpritePalette(ManagedSprite *sprite)
{
    return PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(sprite->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
}

int BattleAnimUtil_GetTransformDirectionX(BattleAnimSystem *system, int battler)
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

int BattleAnimUtil_GetTransformDirectionY(BattleAnimSystem *system, int battler)
{
    int dir = 1;

    enum Battler side = BattleAnimUtil_GetBattlerSide(system, battler);
    if (side == BTLSCR_ENEMY) {
        dir = -1;
    }

    return dir;
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

void XYTransformContext_ApplyPosOffsetToSprite(XYTransformContext *ctx, ManagedSprite *sprite, s16 cx, s16 cy)
{
    ManagedSprite_SetPositionXY(sprite, cx + ctx->x, cy + ctx->y);
}

void ScaleLerpContext_ApplyToSprite(XYTransformContext *ctx, ManagedSprite *sprite)
{
    f32 scaleX, scaleY;
    ScaleLerpContext_GetAffineScale(ctx, &scaleX, &scaleY);
    ManagedSprite_SetAffineScale(sprite, scaleX, scaleY);
}

void XYTransformContext_ApplyPosOffsetToMon(XYTransformContext *ctx, PokemonSprite *sprite, s16 cx, s16 cy)
{
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_X_CENTER, cx + ctx->x);
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_Y_CENTER, cy + ctx->y);
}

void ScaleLerpContext_ApplyToMon(XYTransformContext *ctx, PokemonSprite *sprite)
{
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_SCALE_X, ctx->x);
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_SCALE_Y, ctx->y);
}

void RevolutionContext_Init(XYTransformContext *ctx, u16 sx, u16 ex, u16 sy, u16 ey, fx32 rx, fx32 ry, int steps)
{
    ctx->data[XY_PARAM_REV_STEPS] = steps;
    ctx->data[XY_PARAM_REV_CUR_X] = sx;
    ctx->data[XY_PARAM_REV_RADIUS_X] = rx;
    ctx->data[XY_PARAM_REV_CUR_Y] = sy;
    ctx->data[XY_PARAM_REV_RADIUS_Y] = ry;
    ctx->data[XY_PARAM_REV_STEP_SIZE_X] = (ex - sx) / steps;
    ctx->data[XY_PARAM_REV_STEP_SIZE_Y] = (ey - sy) / steps;
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

BOOL RevolutionContext_Update(XYTransformContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[XY_PARAM_REV_STEPS]) {
        ctx->data[XY_PARAM_REV_CUR_X] += ctx->data[XY_PARAM_REV_STEP_SIZE_X];
        ctx->data[XY_PARAM_REV_CUR_Y] += ctx->data[XY_PARAM_REV_STEP_SIZE_Y];

        ctx->data[XY_PARAM_REV_CUR_X] &= 0xFFFF;
        ctx->data[XY_PARAM_REV_CUR_Y] &= 0xFFFF;

        ctx->data[XY_PARAM_REV_STEPS]--;

        ctx->x = FX_Mul(FX_SinIdx(ctx->data[XY_PARAM_REV_CUR_X]), ctx->data[XY_PARAM_REV_RADIUS_X]) >> FX32_SHIFT;
        ctx->y = FX_Mul(FX_CosIdx(ctx->data[XY_PARAM_REV_CUR_Y]), ctx->data[XY_PARAM_REV_RADIUS_Y]) >> FX32_SHIFT;

        return TRUE;
    }

    return FALSE;
}

BOOL RevolutionContext_UpdateAndApplyToSprite(XYTransformContext *ctx, s16 cx, s16 cy, ManagedSprite *sprite)
{
    if (RevolutionContext_Update(ctx)) {
        XYTransformContext_ApplyPosOffsetToSprite(ctx, sprite, cx, cy);
        return TRUE;
    }

    return FALSE;
}

BOOL RevolutionContext_UpdateAndApplyToMon(XYTransformContext *ctx, s16 cx, s16 cy, PokemonSprite *sprite)
{
    if (RevolutionContext_Update(ctx)) {
        RevolutionContext_Apply(ctx, sprite, cx, cy);
        return TRUE;
    }

    return FALSE;
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

BOOL PosLerpContext_UpdateAndApplyToSprite(XYTransformContext *ctx, ManagedSprite *sprite)
{
    if (PosLerpContext_Update(ctx)) {
        XYTransformContext_ApplyPosOffsetToSprite(ctx, sprite, 0, 0);
        return TRUE;
    }

    return FALSE;
}

BOOL PosLerpContext_UpdateAndApplyToMon(XYTransformContext *ctx, PokemonSprite *sprite)
{
    if (PosLerpContext_Update(ctx)) {
        XYTransformContext_ApplyPosOffsetToMon(ctx, sprite, 0, 0);
        return TRUE;
    }

    return FALSE;
}

void XYTransformContext_InitParabolic(XYTransformContext *linear, XYTransformContext *revs, s16 sx, s16 ex, s16 sy, s16 ey, u16 frames, fx32 r)
{
    PosLerpContext_Init(linear, sx, ex, sy, ey, frames);
    revs->x = 0;
    revs->y = 0;
    RevolutionContext_Init(revs, 0, 0, DEG_TO_IDX(90), DEG_TO_IDX(270), 0, r, frames);
}

BOOL XYTransformContext_UpdateParabolic(XYTransformContext *linear, XYTransformContext *revs)
{
    GF_ASSERT(linear);
    GF_ASSERT(revs);

    BOOL linearActive = PosLerpContext_Update(linear);
    BOOL revsActive = RevolutionContext_Update(revs);

    linear->x += revs->x;
    linear->y += revs->y;

    if (linearActive == revsActive && linearActive == FALSE) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov12_02225D2C(XYTransformContext *param0, XYTransformContext *param1, ManagedSprite *param2)
{
    if (XYTransformContext_UpdateParabolic(param0, param1)) {
        XYTransformContext_ApplyPosOffsetToSprite(param0, param2, 0, 0);
        return 1;
    }

    return 0;
}

void ValueLerpContext_Init(ValueLerpContext *ctx, s32 start, s32 end, u32 steps)
{
    GF_ASSERT(ctx);

    ctx->value = start;
    ctx->data[VALUE_PARAM_STEPS] = steps;
    ctx->data[VALUE_PARAM_STEP_SIZE] = BattleAnimMath_GetStepSize(start * FX32_ONE, end * FX32_ONE, steps) >> FX32_SHIFT;
}

void ValueLerpContext_InitFX32(ValueLerpContext *ctx, s16 start, s16 end, u32 steps)
{
    GF_ASSERT(ctx);

    ctx->value = start;
    ctx->data[VALUE_PARAM_FX32_STEPS] = steps;
    ctx->data[VALUE_PARAM_FX32_STEP_SIZE] = BattleAnimMath_GetStepSize(start * FX32_ONE, end * FX32_ONE, steps);
    ctx->data[VALUE_PARAM_FX32_CUR_ANGLE] = start * FX32_ONE;
}

BOOL ValueLerpContext_Update(ValueLerpContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[VALUE_PARAM_STEPS]) {
        ctx->value += ctx->data[VALUE_PARAM_STEP_SIZE];
        ctx->data[VALUE_PARAM_STEPS]--;

        return TRUE;
    }

    return FALSE;
}

BOOL ValueLerpContext_UpdateFX32(ValueLerpContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[VALUE_PARAM_FX32_STEPS]) {
        ctx->data[VALUE_PARAM_FX32_CUR_ANGLE] += ctx->data[VALUE_PARAM_FX32_STEP_SIZE];
        ctx->value = ctx->data[VALUE_PARAM_FX32_CUR_ANGLE] >> FX32_SHIFT;
        ctx->data[VALUE_PARAM_FX32_STEPS]--;

        return TRUE;
    }

    return FALSE;
}

void AngleLerpContext_InitCos(ValueLerpContext *ctx, u16 start, u16 end, fx32 amplitude, u32 steps)
{
    ctx->data[VALUE_PARAM_COS_STEPS] = steps;
    ctx->data[VALUE_PARAM_COS_CUR_ANGLE] = start;
    ctx->data[VALUE_PARAM_COS_AMPLITUDE] = amplitude;
    ctx->data[VALUE_PARAM_COS_STEP_SIZE] = (end - start) / steps;
}

BOOL AngleLerpContext_UpdateCos(ValueLerpContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[VALUE_PARAM_COS_STEPS]) {
        ctx->data[VALUE_PARAM_COS_CUR_ANGLE] += ctx->data[VALUE_PARAM_COS_STEP_SIZE];
        ctx->data[VALUE_PARAM_COS_CUR_ANGLE] &= 0xFFFF;
        ctx->data[VALUE_PARAM_COS_STEPS]--;
        ctx->value = FX_Mul(FX_CosIdx(ctx->data[VALUE_PARAM_COS_CUR_ANGLE]), ctx->data[VALUE_PARAM_COS_AMPLITUDE]) >> FX32_SHIFT;

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

void ScaleLerpContext_GetAffineScale(XYTransformContext *ctx, f32 *px, f32 *py)
{
    *px = (1.0f * ctx->x) / MON_AFFINE_SCALE(1);
    *py = (1.0f * ctx->y) / MON_AFFINE_SCALE(1);
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

void BattleAnimUtil_SetPokemonSpriteAnchoredPosition(PokemonSprite *sprite, s16 y, s16 height, fx32 scale, enum BattleAnimAnchorType anchor)
{
    s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(y, height, scale);

    if (anchor == BATTLE_ANIM_ANCHOR_TOP) {
        offset *= -1;
        y -= height;
    }

    PokemonSprite_SetAttribute(sprite, MON_SPRITE_Y_CENTER, y + offset);
}

void BattleAnimUtil_SetSpriteAnchoredPosition(ManagedSprite *sprite, s16 y, s16 height, fx32 scale, enum BattleAnimAnchorType anchor)
{
    s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(y, height, scale);

    if (anchor == BATTLE_ANIM_ANCHOR_TOP) {
        offset *= -1;
        y -= height;
    }

    s16 curX, curY;
    ManagedSprite_GetPositionXY(sprite, &curX, &curY);
    ManagedSprite_SetPositionXY(sprite, curX, y + offset);
}

BOOL ScaleLerpContext_UpdateAndApplyToSprite(XYTransformContext *ctx, ManagedSprite *sprite)
{
    if (ScaleLerpContext_Update(ctx)) {
        ScaleLerpContext_ApplyToSprite(ctx, sprite);
        return TRUE;
    }

    return FALSE;
}

BOOL ScaleLerpContext_UpdateAndApplyToMon(XYTransformContext *ctx, PokemonSprite *sprite)
{
    if (ScaleLerpContext_Update(ctx)) {
        ScaleLerpContext_ApplyToMon(ctx, sprite);
        return TRUE;
    }

    return FALSE;
}

BOOL ScaleLerpContext_UpdateXYAndApplyToMon(XYTransformContext *ctx, PokemonSprite *sprite)
{
    if (ScaleLerpContext_UpdateXY(ctx)) {
        ScaleLerpContext_ApplyToMon(ctx, sprite);
        return TRUE;
    }

    return FALSE;
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

BOOL ShakeContext_UpdateAndApplyToMon(XYTransformContext *ctx, s16 cx, s16 cy, PokemonSprite *sprite)
{
    if (ShakeContext_Update(ctx)) {
        XYTransformContext_ApplyPosOffsetToMon(ctx, sprite, cx, cy);
        return TRUE;
    }

    return FALSE;
}

void Afterimage_Init(AfterimageContext *ctx, XYTransformContext *transformCtx, XYTransformFunc transformFunc, s16 x, s16 y, u16 delay, u8 count, u8 mode, ManagedSprite *sprite0, ManagedSprite *sprite1, ManagedSprite *sprite2, ManagedSprite *sprite3)
{
    int i;

    ctx->x = x;
    ctx->y = y;
    ctx->transformFunc = transformFunc;
    ctx->delay = delay;
    ctx->delayCounter = 0;
    ctx->count = count;
    ctx->activeCount = 0;
    ctx->mode = mode;

    for (i = 0; i < count; i++) {
        ctx->transforms[i] = *transformCtx;
    }

    ctx->sprites[0] = sprite0;
    ctx->sprites[1] = sprite1;
    ctx->sprites[2] = sprite2;
    ctx->sprites[3] = sprite3;

    for (i = 0; i < ctx->count; i++) {
        ManagedSprite_SetDrawFlag(ctx->sprites[i], FALSE);
    }
}

BOOL Afterimage_Update(AfterimageContext *ctx)
{
    int i;
    BOOL active[MAX_AFTERIMAGES];

    for (i = 0; i < MAX_AFTERIMAGES; i++) {
        active[i] = TRUE;
    }

    if (ctx->delay <= ctx->delayCounter) {
        ManagedSprite_SetDrawFlag(ctx->sprites[ctx->activeCount], TRUE);
        ctx->activeCount++;
        ctx->delayCounter = 0;
    }

    if (ctx->activeCount < ctx->count) {
        ctx->delayCounter++;
    }

    for (i = 0; i < ctx->activeCount; i++) {
        active[i] = ctx->transformFunc(&ctx->transforms[i]);

        if (active[i]) {
            if (ctx->mode == AFTERIMAGE_TRANSFORM_POSITION) {
                ManagedSprite_SetPositionXY(ctx->sprites[i], ctx->x + ctx->transforms[i].x, ctx->y + ctx->transforms[i].y);
            } else {
                f32 x, y;
                ScaleLerpContext_GetAffineScale(&ctx->transforms[i], &x, &y);
                ManagedSprite_SetAffineScale(ctx->sprites[i], x, y);
            }
        } else {
            ManagedSprite_SetDrawFlag(ctx->sprites[i], FALSE);
        }
    }

    for (i = 0; i < ctx->count; i++) {
        if (active[i] == TRUE) {
            return TRUE;
        }
    }

    return FALSE;
}

void RevolutionContext_InitOvalRevolutions(XYTransformContext *ctx, int revs, int stepsPerRev)
{
    RevolutionContext_Init(
        ctx,
        DEG_TO_IDX(0),
        DEG_TO_IDX(360),
        DEG_TO_IDX(0),
        DEG_TO_IDX(360),
        REVOLUTION_CONTEXT_OVAL_RADIUS_X,
        REVOLUTION_CONTEXT_OVAL_RADIUS_Y,
        stepsPerRev);

    ctx->data[0] *= revs;
}

static void AlphaFadeContext_Update(SysTask *task, void *param)
{
    AlphaFadeContext *ctx = param;

    if (PosLerpContext_Update(&ctx->lerp) == FALSE) {
        ctx->done = TRUE;
        SysTask_Done(task);
    } else {
        if (ctx->lerp.x < 0) {
            ctx->lerp.x = 0;
        }

        if (ctx->lerp.y < 0) {
            ctx->lerp.y = 0;
        }

        G2_ChangeBlendAlpha(ctx->lerp.x, ctx->lerp.y);
    }
}

void AlphaFadeContext_Init(AlphaFadeContext *ctx, s16 sev1, s16 eev1, s16 sev2, s16 eev2, int steps)
{
    PosLerpContext_Init(&ctx->lerp, sev1, eev1, sev2, eev2, steps);

    ctx->done = FALSE;
    SysTask_Start(AlphaFadeContext_Update, ctx, 0);
}

BOOL AlphaFadeContext_IsDone(const AlphaFadeContext *ctx)
{
    return ctx->done;
}

static void VBlankDMAController_PostVBlank(SysTask *task, void *param)
{
    VBlankDMAController *dmaController = param;

    if (dmaController->doDMA) {
        dmaController->swapBuffers = TRUE;
        dmaController->dmaFunc(dmaController->param);
    } else {
        BufferManager_StopDMA();
    }
}

static void VBlankDMAController_OnVBlank(SysTask *task, void *param)
{
    VBlankDMAController *dmaController = param;

    if (dmaController->doDMA && dmaController->swapBuffers) {
        dmaController->swapBufferFunc(dmaController->param);
        dmaController->swapBuffers = FALSE;
    }
}

static void VBlankDMAController_Init(VBlankDMAController *dmaController, void *param, VBlankDMAFunc dmaFunc, VBlankDMAFunc swapBuffersFunc)
{
    GF_ASSERT(dmaController);

    dmaController->doDMA = TRUE;
    dmaController->swapBuffers = FALSE;
    dmaController->param = param;
    dmaController->dmaFunc = dmaFunc;
    dmaController->swapBufferFunc = swapBuffersFunc;
    dmaController->postVBlankTask = SysTask_ExecuteAfterVBlank(VBlankDMAController_PostVBlank, dmaController, 0);
    dmaController->onVBlankTask = SysTask_ExecuteOnVBlank(VBlankDMAController_OnVBlank, dmaController, 0);
}

static void VBlankDMAController_Deinit(VBlankDMAController *dmaController)
{
    GF_ASSERT(dmaController);

    if (dmaController->postVBlankTask != NULL) {
        SysTask_Done(dmaController->postVBlankTask);
    }

    if (dmaController->onVBlankTask != NULL) {
        SysTask_Done(dmaController->onVBlankTask);
    }

    BufferManager_StopDMA();
}

static void VBlankDMAController_DisableDMA(VBlankDMAController *dmaController)
{
    GF_ASSERT(dmaController);
    dmaController->doDMA = FALSE;
}

static void CustomBgScrollContext_DoDMAImpl(CustomBgScrollContext *ctx)
{
    const void *buffer = BufferManager_GetReadBuffer(ctx->bufferManager);

    BufferManager_StopDMA();
    BufferManager_StartDMA(buffer, (void *)ctx->offsetReg, sizeof(u32), BUFFER_MANAGER_DMA_TYPE_32BIT);
}

static void CustomBgScrollContext_SwapBuffers(void *param)
{
    CustomBgScrollContext *ctx = param;

    BufferManager_SwapBuffers(ctx->bufferManager);
    CustomBgScrollContext_DoDMAImpl(ctx);
}

static void CustomBgScrollContext_DoDMA(void *param)
{
    CustomBgScrollContext *ctx = param;
    CustomBgScrollContext_DoDMAImpl(ctx);
}

CustomBgScrollContext *CustomBgScrollContext_New(u32 offsetReg, u32 initValue, enum HeapID heapID)
{
    CustomBgScrollContext *ctx = Heap_Alloc(heapID, sizeof(CustomBgScrollContext));
    memset(ctx, 0, sizeof(CustomBgScrollContext));

    GF_ASSERT(ctx);
    ctx->bufferManager = BufferManager_New(heapID, ctx->buffer1, ctx->buffer2);

    GF_ASSERT(ctx->bufferManager);
    ctx->offsetReg = offsetReg;

    MI_CpuFill32(ctx->buffer1, initValue, sizeof(u32) * HW_LCD_HEIGHT);
    MI_CpuFill32(ctx->buffer2, initValue, sizeof(u32) * HW_LCD_HEIGHT);

    VBlankDMAController_Init(&ctx->dmaController, ctx, CustomBgScrollContext_SwapBuffers, CustomBgScrollContext_DoDMA);

    return ctx;
}

void CustomBgScrollContext_Free(CustomBgScrollContext *ctx)
{
    GF_ASSERT(ctx);

    VBlankDMAController_Deinit(&ctx->dmaController);

    if (ctx->bufferManager != NULL) {
        BufferManager_Delete(ctx->bufferManager);
    }

    Heap_Free(ctx);
}

void *CustomBgScrollContext_GetWriteBuffer(const CustomBgScrollContext *ctx)
{
    GF_ASSERT(ctx);
    return BufferManager_GetWriteBuffer(ctx->bufferManager);
}

void CustomBgScrollContext_Stop(CustomBgScrollContext *ctx)
{
    GF_ASSERT(ctx);
    VBlankDMAController_DisableDMA(&ctx->dmaController);
}

static void BgScrollContext_SwapBuffers(void *param)
{
    BgScrollContext *ctx = param;

    ScreenScrollManager_SwapBuffers(ctx->screenScrollMgr);
    ScreenScrollManager_RestartDMA(ctx->screenScrollMgr);
}

static void BgScrollContext_DoDMA(void *param)
{
    BgScrollContext *ctx = param;
    ScreenScrollManager_RestartDMA(ctx->screenScrollMgr);
}

BgScrollContext *BgScrollContext_New(u8 startY, u8 endY, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bgID, u32 priority, u32 initValue, enum HeapID heapID)
{
    BgScrollContext *ctx = Heap_Alloc(heapID, sizeof(BgScrollContext));
    GF_ASSERT(ctx);

    memset(ctx, 0, sizeof(BgScrollContext));

    u32 offsetReg = BattleAnimUtil_GetHOffsetRegisterForBg(bgID);
    ctx->screenScrollMgr = ScreenScrollManager_New(heapID);

    ScreenScrollManager_ScrollX(ctx->screenScrollMgr, startY, endY, angleIncrement, amplitude, speed, offsetReg, initValue, priority);
    VBlankDMAController_Init(&ctx->dmaController, ctx, BgScrollContext_SwapBuffers, BgScrollContext_DoDMA);

    return ctx;
}

void BgScrollContext_Free(BgScrollContext *ctx)
{
    GF_ASSERT(ctx);

    VBlankDMAController_Deinit(&ctx->dmaController);

    if (ctx->screenScrollMgr) {
        ScreenScrollManager_Delete(ctx->screenScrollMgr);
    }

    Heap_Free(ctx);
}

void *BgScrollContext_GetWriteBuffer(const BgScrollContext *ctx)
{
    GF_ASSERT(ctx);
    return ScreenScrollManager_GetWriteBuffer(ctx->screenScrollMgr);
}

void BgScrollContext_Stop(BgScrollContext *ctx)
{
    GF_ASSERT(ctx);
    VBlankDMAController_DisableDMA(&ctx->dmaController);
}

u32 BattleAnimUtil_MakeBgOffsetValue(u16 x, u16 y)
{
    return (y << BG_OFFSET_Y_SHIFT) | x;
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

static void PaletteFadeContext_FadeTask(SysTask *task, void *param)
{
    PaletteFadeContext *ctx = param;

    if (ctx->active == FALSE) {
        return;
    }

    if (++ctx->timer >= ctx->stepFrames) {
        ctx->timer = 0;
        PaletteData_Blend(ctx->paletteData, ctx->bufferID, ctx->index, ctx->count, ctx->fraction, ctx->color);

        if (ctx->fraction == ctx->endFrac) {
            ctx->active = FALSE;
        } else {
            s8 newFrac = ctx->fraction + ctx->step;

            if (ctx->step > 0) {
                if (newFrac > ctx->endFrac) {
                    ctx->fraction = ctx->endFrac;
                } else {
                    ctx->fraction += ctx->step;
                }
            } else {
                if (newFrac < ctx->endFrac) {
                    ctx->fraction = ctx->endFrac;
                } else {
                    ctx->fraction += ctx->step;
                }
            }
        }
    }
}

BOOL PaletteFadeContext_IsActive(PaletteFadeContext *ctx)
{
    GF_ASSERT(ctx != NULL);
    return ctx->active;
}

void PaletteFadeContext_Free(PaletteFadeContext *ctx)
{
    GF_ASSERT(ctx != NULL);

    SysTask_Done(ctx->task);
    Heap_Free(ctx);
}

PaletteFadeContext *PaletteFadeContext_New(PaletteData *paletteData, enum HeapID heapID, enum PaletteBufferID bufferID, u16 index, u16 count, s8 stepFrames, s8 step, u8 startFrac, u8 endFrac, u16 color, int priority)
{
    PaletteFadeContext *ctx = Heap_Alloc(heapID, sizeof(PaletteFadeContext));
    GF_ASSERT(ctx != NULL);

    ctx->paletteData = paletteData;
    ctx->bufferID = bufferID;
    ctx->index = index;
    ctx->count = count;
    ctx->color = color;
    ctx->startFrac = startFrac;
    ctx->endFrac = endFrac;
    ctx->fraction = startFrac;
    ctx->stepFrames = stepFrames;
    ctx->timer = stepFrames;

    if (ctx->startFrac < ctx->endFrac) {
        ctx->step = step;
    } else {
        ctx->step = -step;
    }

    ctx->active = TRUE;
    ctx->task = SysTask_Start(PaletteFadeContext_FadeTask, ctx, priority);

    return ctx;
}

static void BattleAnimUtil_ConvertColorsToGrayscale(u16 *colors, u16 param1)
{
    for (int i = 0; i < param1; i++) {
        int r = GX_RGB_R(*colors);
        int g = GX_RGB_G(*colors);
        int b = GX_RGB_B(*colors);
        u32 y = RGB_TO_GRAYSCALE(r, g, b);
        *colors = (u16)((y << 10) | (y << 5) | y);
        colors++;
    }
}

void BattleAnimUtil_MakeBgPalsGrayscale(BattleAnimSystem *system)
{
    PaletteData *paletteData = BattleAnimSystem_GetPaletteData(system);
    u16 *buffer = PaletteData_GetFadedBuffer(paletteData, PLTTBUF_MAIN_BG);

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        BattleAnimUtil_ConvertColorsToGrayscale(buffer, PALETTE_SIZE * 3);
    } else {
        BattleAnimUtil_ConvertColorsToGrayscale(buffer, PALETTE_SIZE * BATTLE_BG_PALETTE_MON_SPRITE);
    }
}

void BattleAnimUtil_ReturnBgPalsToNormal(BattleAnimSystem *system)
{
    PaletteData *paletteData = BattleAnimSystem_GetPaletteData(system);

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        PaletteData_CopyBuffer(paletteData, PLTTBUF_MAIN_BG, 0, PLTTBUF_MAIN_BG, 0, PALETTE_SIZE_BYTES * 3);
    } else {
        PaletteData_CopyBuffer(paletteData, PLTTBUF_MAIN_BG, 0, PLTTBUF_MAIN_BG, 0, PALETTE_SIZE_BYTES * BATTLE_BG_PALETTE_MON_SPRITE);
    }
}
