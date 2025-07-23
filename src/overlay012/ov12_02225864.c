#include "overlay012/ov12_02225864.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "overlay012/battle_anim_system.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"

#include "battle_script_battlers.h"
#include "buffer_manager.h"
#include "heap.h"
#include "inlines.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task.h"
#include "sys_task_manager.h"

#define MAX_CYCLES_PER_SHAKE 4

typedef struct BattleAnimPosition {
    s16 x;
    s16 y;
} BattleAnimPosition;

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

u8 BattleAnimUtil_GetSpritePalette(ManagedSprite *sprite)
{
    return PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(sprite->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
}

int BattleAnimUtil_GetTransformDirection(BattleAnimSystem *system, int battler)
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

void XYTransformContext_ApplyPosOffsetToSprite(XYTransformContext *ctx, ManagedSprite *sprite, s16 cx, s16 cy)
{
    ManagedSprite_SetPositionXY(sprite, cx + ctx->x, cy + ctx->y);
}

void ov12_022259FC(XYTransformContext *param0, ManagedSprite *param1)
{
    f32 v0, v1;

    BattleAnimUtil_ConvertRelativeToAffineScale(param0, &v0, &v1);
    ManagedSprite_SetAffineScale(param1, v0, v1);
}

void XYTransformContext_ApplyPosOffsetToMon(XYTransformContext *ctx, PokemonSprite *sprite, s16 cx, s16 cy)
{
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_X_CENTER, cx + ctx->x);
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_Y_CENTER, cy + ctx->y);
}

void ov12_02225A3C(XYTransformContext *param0, PokemonSprite *param1)
{
    PokemonSprite_SetAttribute(param1, MON_SPRITE_SCALE_X, param0->x);
    PokemonSprite_SetAttribute(param1, MON_SPRITE_SCALE_Y, param0->y);
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

BOOL ov12_02225C50(XYTransformContext *param0, ManagedSprite *param1)
{
    if (PosLerpContext_Update(param0)) {
        XYTransformContext_ApplyPosOffsetToSprite(param0, param1, 0, 0);
        return 1;
    }

    return 0;
}

BOOL ov12_02225C74(XYTransformContext *param0, PokemonSprite *param1)
{
    if (PosLerpContext_Update(param0)) {
        XYTransformContext_ApplyPosOffsetToMon(param0, param1, 0, 0);
        return 1;
    }

    return 0;
}

void ov12_02225C98(XYTransformContext *param0, XYTransformContext *param1, s16 param2, s16 param3, s16 param4, s16 param5, u16 param6, fx32 param7)
{
    PosLerpContext_Init(param0, param2, param3, param4, param5, param6);
    param1->x = 0;
    param1->y = 0;
    RevolutionContext_Init(param1, 0, 0, (90 * 0xffff) / 360, (270 * 0xffff) / 360, 0, param7, param6);
}

BOOL ov12_02225CE4(XYTransformContext *param0, XYTransformContext *param1)
{
    BOOL v0, v1;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = PosLerpContext_Update(param0);
    v1 = RevolutionContext_Update(param1);

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
        XYTransformContext_ApplyPosOffsetToSprite(param0, param2, 0, 0);
        return 1;
    }

    return 0;
}

void ValueLerpContext_Init(ValueLerpContext *ctx, s32 start, s32 end, u32 steps)
{
    GF_ASSERT(ctx);

    ctx->value = start;
    ctx->data[ANGLE_PARAM_STEPS] = steps;
    ctx->data[ANGLE_PARAM_STEP_SIZE] = BattleAnimMath_GetStepSize(start * FX32_ONE, end * FX32_ONE, steps) >> FX32_SHIFT;
}

void ValueLerpContext_InitFX32(ValueLerpContext *ctx, s16 start, s16 end, u32 steps)
{
    GF_ASSERT(ctx);

    ctx->value = start;
    ctx->data[ANGLE_PARAM_FX32_STEPS] = steps;
    ctx->data[ANGLE_PARAM_FX32_STEP_SIZE] = BattleAnimMath_GetStepSize(start * FX32_ONE, end * FX32_ONE, steps);
    ctx->data[ANGLE_PARAM_FX32_CUR_ANGLE] = start * FX32_ONE;
}

BOOL ValueLerpContext_Update(ValueLerpContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[ANGLE_PARAM_STEPS]) {
        ctx->value += ctx->data[ANGLE_PARAM_STEP_SIZE];
        ctx->data[ANGLE_PARAM_STEPS]--;

        return TRUE;
    }

    return FALSE;
}

BOOL ValueLerpContext_UpdateFX32(ValueLerpContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[ANGLE_PARAM_FX32_STEPS]) {
        ctx->data[ANGLE_PARAM_FX32_CUR_ANGLE] += ctx->data[ANGLE_PARAM_FX32_STEP_SIZE];
        ctx->value = ctx->data[ANGLE_PARAM_FX32_CUR_ANGLE] >> FX32_SHIFT;
        ctx->data[ANGLE_PARAM_FX32_STEPS]--;

        return TRUE;
    }

    return FALSE;
}

void AngleLerpContext_InitCos(ValueLerpContext *ctx, u16 start, u16 end, fx32 amplitude, u32 steps)
{
    ctx->data[ANGLE_PARAM_COS_STEPS] = steps;
    ctx->data[ANGLE_PARAM_COS_CUR_ANGLE] = start;
    ctx->data[ANGLE_PARAM_COS_AMPLITUDE] = amplitude;
    ctx->data[ANGLE_PARAM_COS_STEP_SIZE] = (end - start) / steps;
}

BOOL AngleLerpContext_UpdateCos(ValueLerpContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[ANGLE_PARAM_COS_STEPS]) {
        ctx->data[ANGLE_PARAM_COS_CUR_ANGLE] += ctx->data[ANGLE_PARAM_COS_STEP_SIZE];
        ctx->data[ANGLE_PARAM_COS_CUR_ANGLE] &= 0xFFFF;
        ctx->data[ANGLE_PARAM_COS_STEPS]--;
        ctx->value = FX_Mul(FX_CosIdx(ctx->data[ANGLE_PARAM_COS_CUR_ANGLE]), ctx->data[ANGLE_PARAM_COS_AMPLITUDE]) >> FX32_SHIFT;

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

void BattleAnimUtil_ConvertRelativeToAffineScale(XYTransformContext *ctx, f32 *px, f32 *py)
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
        XYTransformContext_ApplyPosOffsetToMon(param0, param3, param1, param2);
        return 1;
    }

    return 0;
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
                BattleAnimUtil_ConvertRelativeToAffineScale(&ctx->transforms[i], &x, &y);
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

static void ov12_02226504(UnkStruct_ov12_02226504 *param0)
{
    const void *v0 = BufferManager_GetReadBuffer(param0->bufferManager);

    BufferManager_StopDMA();
    BufferManager_StartDMA(v0, (void *)param0->unk_620, 4, 1);
}

static void ov12_02226528(void *param)
{
    UnkStruct_ov12_02226504 *v0 = param;

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

    VBlankDMAController_Init(&v0->unk_00, v0, ov12_02226528, ov12_0222653C);

    return v0;
}

void ov12_022265C0(UnkStruct_ov12_02226504 *param0)
{
    GF_ASSERT(param0);

    VBlankDMAController_Deinit(&param0->unk_00);

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
    VBlankDMAController_DisableDMA(&param0->unk_00);
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

BgScrollContext *BgScrollContext_New(u8 startY, u8 endY, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bgID, u32 priority, u32 initValue, enum HeapId heapID)
{
    BgScrollContext *ctx = Heap_AllocFromHeap(heapID, sizeof(BgScrollContext));
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
