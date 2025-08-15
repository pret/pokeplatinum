#include "overlay012/ov12_02225864.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"

#include "overlay012/battle_anim_system.h"
#include "overlay012/funcptr_ov12_02226274.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_02225F6C.h"
#include "overlay012/struct_ov12_02226274.h"
#include "overlay012/struct_ov12_02226454.h"

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

void ov12_022259DC(UnkStruct_ov12_02225F6C *param0, ManagedSprite *param1, s16 param2, s16 param3)
{
    ManagedSprite_SetPositionXY(param1, param2 + param0->unk_00, param3 + param0->unk_02);
}

void ov12_022259FC(UnkStruct_ov12_02225F6C *param0, ManagedSprite *param1)
{
    f32 v0, v1;

    ov12_02225FA4(param0, &v0, &v1);
    ManagedSprite_SetAffineScale(param1, v0, v1);
}

void ov12_02225A18(UnkStruct_ov12_02225F6C *param0, PokemonSprite *param1, s16 param2, s16 param3)
{
    PokemonSprite_SetAttribute(param1, MON_SPRITE_X_CENTER, param2 + param0->unk_00);
    PokemonSprite_SetAttribute(param1, MON_SPRITE_Y_CENTER, param3 + param0->unk_02);
}

void ov12_02225A3C(UnkStruct_ov12_02225F6C *param0, PokemonSprite *param1)
{
    PokemonSprite_SetAttribute(param1, MON_SPRITE_SCALE_X, param0->unk_00);
    PokemonSprite_SetAttribute(param1, MON_SPRITE_SCALE_Y, param0->unk_02);
}

void ov12_02225A5C(UnkStruct_ov12_02225F6C *param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, int param7)
{
    param0->unk_04[0] = param7;
    param0->unk_04[1] = param1;
    param0->unk_04[2] = param5;
    param0->unk_04[3] = param3;
    param0->unk_04[4] = param6;
    param0->unk_04[5] = (param2 - param1) / param7;
    param0->unk_04[6] = (param4 - param3) / param7;
}

void ov12_02225A8C(UnkStruct_ov12_02225F6C *param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, u16 param7)
{
    s16 v0;

    GF_ASSERT(param0);

    if (param1 > param2) {
        param7 = -param7;
    }

    v0 = param7;

    param0->unk_04[0] = ov12_022259AC(param1 * FX32_ONE, param2 * FX32_ONE, v0 * FX32_ONE);
    param0->unk_04[1] = param1;
    param0->unk_04[2] = param5;
    param0->unk_04[3] = param3;
    param0->unk_04[4] = param6;
    param0->unk_04[5] = v0;
    param0->unk_04[6] = (param4 - param3) / param0->unk_04[0];
}

BOOL ov12_02225AE0(UnkStruct_ov12_02225F6C *param0)
{
    fx32 v0, v1;

    GF_ASSERT(param0);

    if (param0->unk_04[0]) {
        param0->unk_04[1] += param0->unk_04[5];
        param0->unk_04[3] += param0->unk_04[6];

        param0->unk_04[1] &= 0xffff;
        param0->unk_04[3] &= 0xffff;

        param0->unk_04[0]--;

        param0->unk_00 = FX_Mul(FX_SinIdx(param0->unk_04[1]), param0->unk_04[2]) >> FX32_SHIFT;
        param0->unk_02 = FX_Mul(FX_CosIdx(param0->unk_04[3]), param0->unk_04[4]) >> FX32_SHIFT;

        return 1;
    }

    return 0;
}

BOOL ov12_02225B78(UnkStruct_ov12_02225F6C *param0, s16 param1, s16 param2, ManagedSprite *param3)
{
    if (ov12_02225AE0(param0)) {
        ov12_022259DC(param0, param3, param1, param2);
        return 1;
    }

    return 0;
}

BOOL ov12_02225BA0(UnkStruct_ov12_02225F6C *param0, s16 param1, s16 param2, PokemonSprite *param3)
{
    if (ov12_02225AE0(param0)) {
        ov12_02225A18(param0, param3, param1, param2);
        return 1;
    }

    return 0;
}

void ov12_02225BC8(UnkStruct_ov12_02225F6C *param0, s16 param1, s16 param2, s16 param3, s16 param4, u16 param5)
{
    GF_ASSERT(param0);

    param0->unk_00 = param1;
    param0->unk_02 = param3;
    param0->unk_04[0] = param5;
    param0->unk_04[1] = BattleAnimMath_GetStepSize(param1 * FX32_ONE, param2 * FX32_ONE, param5);
    param0->unk_04[2] = BattleAnimMath_GetStepSize(param3 * FX32_ONE, param4 * FX32_ONE, param5);
    param0->unk_04[3] = param1 * FX32_ONE;
    param0->unk_04[4] = param3 * FX32_ONE;
}

BOOL ov12_02225C14(UnkStruct_ov12_02225F6C *param0)
{
    GF_ASSERT(param0);

    if (param0->unk_04[0]) {
        param0->unk_04[3] += param0->unk_04[1];
        param0->unk_04[4] += param0->unk_04[2];
        param0->unk_00 = param0->unk_04[3] >> FX32_SHIFT;
        param0->unk_02 = param0->unk_04[4] >> FX32_SHIFT;
        param0->unk_04[0]--;

        return 1;
    }

    return 0;
}

BOOL ov12_02225C50(UnkStruct_ov12_02225F6C *param0, ManagedSprite *param1)
{
    if (ov12_02225C14(param0)) {
        ov12_022259DC(param0, param1, 0, 0);
        return 1;
    }

    return 0;
}

BOOL ov12_02225C74(UnkStruct_ov12_02225F6C *param0, PokemonSprite *param1)
{
    if (ov12_02225C14(param0)) {
        ov12_02225A18(param0, param1, 0, 0);
        return 1;
    }

    return 0;
}

void ov12_02225C98(UnkStruct_ov12_02225F6C *param0, UnkStruct_ov12_02225F6C *param1, s16 param2, s16 param3, s16 param4, s16 param5, u16 param6, fx32 param7)
{
    ov12_02225BC8(param0, param2, param3, param4, param5, param6);
    param1->unk_00 = 0;
    param1->unk_02 = 0;
    ov12_02225A5C(param1, 0, 0, (90 * 0xffff) / 360, (270 * 0xffff) / 360, 0, param7, param6);
}

BOOL ov12_02225CE4(UnkStruct_ov12_02225F6C *param0, UnkStruct_ov12_02225F6C *param1)
{
    BOOL v0, v1;

    GF_ASSERT(param0);
    GF_ASSERT(param1);

    v0 = ov12_02225C14(param0);
    v1 = ov12_02225AE0(param1);

    param0->unk_00 += param1->unk_00;
    param0->unk_02 += param1->unk_02;

    if ((v0 == v1) && (v0 == 0)) {
        return 0;
    }

    return 1;
}

BOOL ov12_02225D2C(UnkStruct_ov12_02225F6C *param0, UnkStruct_ov12_02225F6C *param1, ManagedSprite *param2)
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

#define SCALE_RATE_PER(p1, p2) (((p1) * 0x100) / p2)
void ov12_02225E68(UnkStruct_ov12_02225F6C *param0, s16 param1, s16 param2, s16 param3, u32 param4)
{
    UnkStruct_ov12_02225F6C *v0;

    GF_ASSERT(param0);

    v0 = param0;

    v0->unk_04[0] = param4;
    v0->unk_04[1] = BattleAnimMath_GetStepSize(SCALE_RATE_PER(param1, param2) * FX32_ONE, SCALE_RATE_PER(param3, param2) * FX32_ONE, param4);
    v0->unk_00 = SCALE_RATE_PER(param1, param2);
    v0->unk_02 = SCALE_RATE_PER(param1, param2);
    v0->unk_04[3] = v0->unk_00 * FX32_ONE;
    v0->unk_04[4] = v0->unk_02 * FX32_ONE;
}

BOOL ov12_02225EB8(UnkStruct_ov12_02225F6C *param0)
{
    UnkStruct_ov12_02225F6C *v0;

    GF_ASSERT(param0);

    v0 = param0;

    if (v0->unk_04[0]) {
        v0->unk_04[0]--;
        v0->unk_04[3] += v0->unk_04[1];
        v0->unk_04[4] += v0->unk_04[1];
        v0->unk_00 = (v0->unk_04[3] >> FX32_SHIFT);
        v0->unk_02 = (v0->unk_04[4] >> FX32_SHIFT);

        return 1;
    }

    return 0;
}

void ov12_02225EF0(UnkStruct_ov12_02225F6C *param0, s16 param1, s16 param2, s16 param3, s16 param4, s16 param5, u32 param6)
{
    UnkStruct_ov12_02225F6C *v0;

    GF_ASSERT(param0);

    v0 = param0;

    v0->unk_04[0] = param6;
    v0->unk_04[1] = BattleAnimMath_GetStepSize(SCALE_RATE_PER(param1, param5) * FX32_ONE, SCALE_RATE_PER(param2, param5) * FX32_ONE, param6);
    v0->unk_04[2] = BattleAnimMath_GetStepSize(SCALE_RATE_PER(param3, param5) * FX32_ONE, SCALE_RATE_PER(param4, param5) * FX32_ONE, param6);
    v0->unk_00 = SCALE_RATE_PER(param1, param5);
    v0->unk_02 = SCALE_RATE_PER(param3, param5);
    v0->unk_04[3] = v0->unk_00 * FX32_ONE;
    v0->unk_04[4] = v0->unk_02 * FX32_ONE;
}

BOOL ov12_02225F6C(UnkStruct_ov12_02225F6C *param0)
{
    UnkStruct_ov12_02225F6C *v0;

    GF_ASSERT(param0);

    v0 = param0;

    if (v0->unk_04[0]) {
        v0->unk_04[0]--;
        v0->unk_04[3] += v0->unk_04[1];
        v0->unk_04[4] += v0->unk_04[2];
        v0->unk_00 = (v0->unk_04[3] >> FX32_SHIFT);
        v0->unk_02 = (v0->unk_04[4] >> FX32_SHIFT);

        return 1;
    }

    return 0;
}

void ov12_02225FA4(UnkStruct_ov12_02225F6C *param0, f32 *param1, f32 *param2)
{
    *param1 = (1.0f * param0->unk_00) / 0x100;
    *param2 = (1.0f * param0->unk_02) / 0x100;
}

s16 ov12_02225FD4(s16 param0, int param1, fx32 param2)
{
    fx32 v0 = (80 - (param1 * 2)) * FX32_ONE;
    fx32 v1 = 0x100 * FX32_ONE;
    fx32 v2;
    fx32 v3;
    fx32 v4;
    s16 v5;

    v3 = FX_Mul(v0, param2);
    v4 = FX_Div(v3, v1);
    v2 = (v0 - v4);

    {
        fx32 v6;
        fx32 v7;

        v7 = FX_Modf(v2, &v6);

        if (v7) {
            v7 += FX32_HALF;
        }

        v2 = v6 + v7;
    }

    v5 = (v2 >> FX32_SHIFT) / 2;

    return v5;
}

void ov12_02226024(PokemonSprite *param0, s16 param1, s16 param2, fx32 param3, int param4)
{
    s16 v0;
    s16 v1 = param1;
    v0 = ov12_02225FD4(param1, param2, param3);

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
    v0 = ov12_02225FD4(param1, param2, param3);

    if (param4 == 1) {
        v0 *= -1;
        v1 = param1 - param2;
    }

    ManagedSprite_GetPositionXY(param0, &v2, &v3);
    ManagedSprite_SetPositionXY(param0, v2, v1 + v0);
}

BOOL ov12_022260A8(UnkStruct_ov12_02225F6C *param0, ManagedSprite *param1)
{
    if (ov12_02225EB8(param0)) {
        ov12_022259FC(param0, param1);
        return 1;
    }

    return 0;
}

BOOL ov12_022260C8(UnkStruct_ov12_02225F6C *param0, PokemonSprite *param1)
{
    if (ov12_02225EB8(param0)) {
        ov12_02225A3C(param0, param1);
        return 1;
    }

    return 0;
}

BOOL ov12_022260E8(UnkStruct_ov12_02225F6C *param0, PokemonSprite *param1)
{
    if (ov12_02225F6C(param0)) {
        ov12_02225A3C(param0, param1);
        return 1;
    }

    return 0;
}

static inline void inline_ov12_02226138(s16 *param0, s32 *param1, s32 param2)
{
    s32 v0 = *param1;

    *param1 = *param0;

    if (v0 == 0) {
        *param0 = 0;
    } else {
        *param0 = v0 *= -1;
    }
}

void ov12_02226108(UnkStruct_ov12_02225F6C *param0, s16 param1, s16 param2, u32 param3, u32 param4)
{
    UnkStruct_ov12_02225F6C *v0;

    GF_ASSERT(param0);

    v0 = param0;

    v0->unk_04[0] = param3;
    v0->unk_04[1] = param3;
    v0->unk_04[2] = param4;
    v0->unk_04[3] = 0;
    v0->unk_04[4] = param1;
    v0->unk_04[5] = param2;
    v0->unk_04[6] = param1 * -1;
    v0->unk_04[7] = param2 * -1;
    v0->unk_00 = 0;
    v0->unk_02 = 0;
}

BOOL ov12_02226138(UnkStruct_ov12_02225F6C *param0)
{
    UnkStruct_ov12_02225F6C *v0;

    GF_ASSERT(param0);

    v0 = param0;

    if (v0->unk_04[2]) {
        v0->unk_04[0]++;

        if (v0->unk_04[0] >= v0->unk_04[1]) {
            v0->unk_04[0] = 0;

            inline_ov12_02226138(&v0->unk_00, &v0->unk_04[6], v0->unk_04[4]);
            inline_ov12_02226138(&v0->unk_02, &v0->unk_04[7], v0->unk_04[5]);

            if ((++v0->unk_04[3]) >= 4) {
                v0->unk_04[3] = 0;
                v0->unk_04[2]--;
            }
        }

        return 1;
    }

    return 0;
}

BOOL ov12_0222619C(UnkStruct_ov12_02225F6C *param0, s16 param1, s16 param2, PokemonSprite *param3)
{
    if (ov12_02226138(param0)) {
        ov12_02225A18(param0, param3, param1, param2);
        return 1;
    }

    return 0;
}

void ov12_022261C4(UnkStruct_ov12_02226274 *param0, UnkStruct_ov12_02225F6C *param1, UnkFuncPtr_ov12_02226274 param2, s16 param3, s16 param4, u16 param5, u8 param6, u8 param7, ManagedSprite *param8, ManagedSprite *param9, ManagedSprite *param10, ManagedSprite *param11)
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
                ManagedSprite_SetPositionXY(param0->unk_98[v0], param0->unk_00 + param0->unk_04[v0].unk_00, param0->unk_02 + param0->unk_04[v0].unk_02);
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

void ov12_022263A4(UnkStruct_ov12_02225F6C *param0, int param1, int param2)
{
    int v0;

    ov12_02225A5C(param0, 0, (360 * 0xffff) / 360, 0, (360 * 0xffff) / 360, 32 * FX32_ONE, -8 * FX32_ONE, param2);
    param0->unk_04[0] *= param1;
}

static void ov12_022263DC(SysTask *param0, void *param1)
{
    BOOL v0;
    UnkStruct_ov12_02226454 *v1 = param1;

    v0 = ov12_02225C14(&v1->unk_00);

    if (v0 == 0) {
        v1->unk_24 = 1;
        SysTask_Done(param0);
    } else {
        if (v1->unk_00.unk_00 < 0) {
            v1->unk_00.unk_00 = 0;
        }

        if (v1->unk_00.unk_02 < 0) {
            v1->unk_00.unk_02 = 0;
        }

        G2_ChangeBlendAlpha(v1->unk_00.unk_00, v1->unk_00.unk_02);
    }
}

void ov12_02226424(UnkStruct_ov12_02226454 *param0, s16 param1, s16 param2, s16 param3, s16 param4, int param5)
{
    ov12_02225BC8(&param0->unk_00, param1, param2, param3, param4, param5);

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

UnkStruct_ov12_02226504 *ov12_02226544(u32 param0, u32 param1, enum HeapID heapID)
{
    UnkStruct_ov12_02226504 *v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov12_02226504));
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

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov12_0222660C));
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

    v0 = Heap_Alloc(heapID, sizeof(UnkStruct_ov12_022267D4));

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
