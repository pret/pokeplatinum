#include "battle_anim/script_funcs_status.h"

#include <nitro.h>

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"

#include "heap.h"
#include "math_util.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

// -------------------------------------------------------------------
// Sleep Sprite
// -------------------------------------------------------------------
#define SLEEP_SPRITE_Z_COUNT 2 // Number of 'Z's

typedef struct SleepSpriteContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    int delay;
    SpriteManager *spriteMan;
    int dir;
    ManagedSprite *sprites[SLEEP_SPRITE_Z_COUNT];
    XYTransformContext pos[SLEEP_SPRITE_Z_COUNT];
    XYTransformContext scale[SLEEP_SPRITE_Z_COUNT];
} SleepSpriteContext;

enum SleepSpriteState {
    SLEEP_SPRITE_STATE_INIT_FIRST = 0,
    SLEEP_SPRITE_STATE_DELAY,
    SLEEP_SPRITE_STATE_INIT_SECOND,
    SLEEP_SPRITE_STATE_ANIMATE,
    SLEEP_SPRITE_STATE_CLEANUP,
};

#define SLEEP_SPRITE_MOVE_X         16
#define SLEEP_SPRITE_MOVE_Y         (-32)
#define SLEEP_SPRITE_ANIM_FRAMES    32
#define SLEEP_SPRITE_BASE_SCALE     10
#define SLEEP_SPRITE_START_SCALE    2
#define SLEEP_SPRITE_END_SCALE      10
#define SLEEP_SPRITE_SECOND_Z_DELAY 8 // Delay in frames until the second 'Z' appears

// -------------------------------------------------------------------
// Freeze Sprite
// -------------------------------------------------------------------
typedef struct FreezeSpriteContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    int paletteOffset;
    SpriteManager *spriteMan;
    ManagedSprite *sprite;
    AlphaFadeContext alphaFade;
} FreezeSpriteContext;

enum FreezeSpriteState {
    FREEZE_SPRITE_STATE_INIT = 0,
    FREEZE_SPRITE_STATE_FADEIN,
    FREEZE_SPRITE_STATE_ROTATE_PALS,
    FREEZE_SPRITE_STATE_FADEOUT,
    FREEZE_SPRITE_STATE_CLEANUP,
};

#define FREEZE_SPRITE_DEFAULT_ALPHA        20
#define FREEZE_SPRITE_START_ALPHA          0
#define FREEZE_SPRITE_END_ALPHA            16
#define FREEZE_SPRITE_ALPHA_FADEIN_FRAMES  10
#define FREEZE_SPRITE_ALPHA_FADEOUT_FRAMES 8

// -------------------------------------------------------------------
// Burn Sprite
// -------------------------------------------------------------------
#define BURN_SPRITE_FLAME_COUNT 6

typedef struct BurnSpriteContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    SpriteManager *spriteMan;
    ManagedSprite *sprites[BURN_SPRITE_FLAME_COUNT];
    int visibleFrames[BURN_SPRITE_FLAME_COUNT];
    int delays[BURN_SPRITE_FLAME_COUNT];
} BurnSpriteContext;

enum BurnSpriteState {
    BURN_SPRITE_STATE_ANIMATE = 0,
    BURN_SPRITE_STATE_CLEANUP,
};

#define BURN_SPRITE_OFFSET_X_STEP  (-12)
#define BURN_SPRITE_BASE_OFFSET_X  40
#define BURN_SPRITE_BASE_OFFSET_Y  40
#define BURN_SPRITE_DELAY_STEP     2 // Frames between flames
#define BURN_SPRITE_VISIBLE_FRAMES 16 // Number of frames each flame is visible for

// -------------------------------------------------------------------
// Confusion (Status) Sprite
// -------------------------------------------------------------------
#define CONFUSION_STATUS_SPRITE_ORB_COUNT 6

typedef struct ConfusionStatusSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    int delay;
    int dir;
    ManagedSprite *sprites[CONFUSION_STATUS_SPRITE_ORB_COUNT];
    XYTransformContext revs[CONFUSION_STATUS_SPRITE_ORB_COUNT];
    AlphaFadeContext alphaFade;
    s16 monX;
    s16 monY;
} ConfusionStatusSpriteContext;

enum ConfusionStatusSpriteState {
    CONFUSION_STATUS_SPRITE_STATE_INIT = 0,
    CONFUSION_STATUS_SPRITE_STATE_FADEIN,
    CONFUSION_STATUS_SPRITE_STATE_ROTATE,
    CONFUSION_STATUS_SPRITE_STATE_FADEOUT,
    CONFUSION_STATUS_SPRITE_STATE_CLEANUP,
};

#define CONFUSION_STATUS_SPRITE_ORB_DEFAULT_ALPHA        16
#define CONFUSION_STATUS_SPRITE_ORB_START_ALPHA          1
#define CONFUSION_STATUS_SPRITE_ORB_END_ALPHA            16
#define CONFUSION_STATUS_SPRITE_ORB_ALPHA_FADE_FRAMES    10
#define CONFUSION_STATUS_SPRITE_ORB_REV_START_ANGLE      DEG_TO_IDX(0)
#define CONFUSION_STATUS_SPRITE_ORB_REV_END_ANGLE        DEG_TO_IDX(180)
#define CONFUSION_STATUS_SPRITE_ORB_REV_RADIUS           FX32_CONST(50)
#define CONFUSION_STATUS_SPRITE_ORB_REV_FRAMES           48
#define CONFUSION_STATUS_SPRITE_ORB_REV_BEHIND_MIN_ANGLE DEG_TO_IDX(90) // Angle range at which the orb is considered to be "behind" the pokemon
#define CONFUSION_STATUS_SPRITE_ORB_REV_BEHIND_MAX_ANGLE DEG_TO_IDX(269)

static void BattleAnimTask_SleepSprite(SysTask *task, void *param);
static void SleepSprite_Init(ManagedSprite *managedSprite, XYTransformContext *pos, XYTransformContext *scale, int dir);
static BOOL SleepSprite_Update(ManagedSprite *managedSprite, XYTransformContext *pos, XYTransformContext *scale);
static void BattleAnimTask_Freeze(SysTask *task, void *param);
static void BattleAnimTask_BurnSprite(SysTask *task, void *param);
static BOOL BurnSprite_Update(ManagedSprite *sprite, int *visibleFrames, int *delay);
static void BurnSprite_Init(ManagedSprite *sprite, int *outVisibleFrames, int *outDelay, int idx, int dir);
static void BattleAnimTask_ConfusionStatus(SysTask *task, void *param);

void BattleAnimSpriteFunc_Sleep(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    SleepSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(SleepSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteMan = spriteMan;

    int attacker = BattleAnimSystem_GetAttacker(system);
    ctx->dir = BattleAnimUtil_GetTransformDirectionX(system, attacker);

    SpriteTemplate template;
    template = BattleAnimSystem_GetLastSpriteTemplate(ctx->battleAnimSys);
    template.x = BattleAnimUtil_GetBattlerPos(system, attacker, BATTLE_ANIM_POSITION_MON_X);
    template.y = BattleAnimUtil_GetBattlerPos(system, attacker, BATTLE_ANIM_POSITION_MON_Y);

    for (int i = 0; i < SLEEP_SPRITE_Z_COUNT; i++) {
        if (i == 0) {
            ctx->sprites[i] = sprite;
            ManagedSprite_SetPositionXY(ctx->sprites[i], template.x, template.y);
        } else {
            ctx->sprites[i] = SpriteSystem_NewSprite(spriteSys, spriteMan, &template);
        }

        ManagedSprite_SetDrawFlag(ctx->sprites[i], FALSE);
        ManagedSprite_SetPriority(ctx->sprites[i], 100);
        ManagedSprite_SetExplicitPriority(ctx->sprites[i], 1);
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_SleepSprite, ctx);
}

static void BattleAnimTask_SleepSprite(SysTask *task, void *param)
{
    SleepSpriteContext *ctx = param;

    switch (ctx->state) {
    case SLEEP_SPRITE_STATE_INIT_FIRST:
        SleepSprite_Init(ctx->sprites[0], &ctx->pos[0], &ctx->scale[0], ctx->dir);
        SleepSprite_Update(ctx->sprites[0], &ctx->pos[0], &ctx->scale[0]);
        ctx->state++;
        ctx->delay = SLEEP_SPRITE_SECOND_Z_DELAY;
        break;
    case SLEEP_SPRITE_STATE_DELAY:
        ctx->delay--;
        SleepSprite_Update(ctx->sprites[0], &ctx->pos[0], &ctx->scale[0]);

        if (ctx->delay < 0) {
            ctx->state++;
        }
        break;
    case SLEEP_SPRITE_STATE_INIT_SECOND:
        SleepSprite_Init(ctx->sprites[1], &ctx->pos[1], &ctx->scale[1], ctx->dir);
        SleepSprite_Update(ctx->sprites[1], &ctx->pos[1], &ctx->scale[1]);
        SleepSprite_Update(ctx->sprites[0], &ctx->pos[0], &ctx->scale[0]);
        ctx->state++;
        break;
    case SLEEP_SPRITE_STATE_ANIMATE:
        SleepSprite_Update(ctx->sprites[0], &ctx->pos[0], &ctx->scale[0]);
        if (SleepSprite_Update(ctx->sprites[1], &ctx->pos[1], &ctx->scale[1])) {
            ctx->state++;
        }
        break;
    case SLEEP_SPRITE_STATE_CLEANUP:
        for (int i = 0; i < SLEEP_SPRITE_Z_COUNT; i++) {
            Sprite_DeleteAndFreeResources(ctx->sprites[i]);
        }

        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

static void SleepSprite_Init(ManagedSprite *sprite, XYTransformContext *pos, XYTransformContext *scale, int dir)
{
    ManagedSprite_SetAffineOverwriteMode(sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetDrawFlag(sprite, TRUE);

    s16 startX, startY;
    ManagedSprite_GetPositionXY(sprite, &startX, &startY);

    PosLerpContext_Init(
        pos,
        startX,
        startX + SLEEP_SPRITE_MOVE_X * dir,
        startY,
        startY + SLEEP_SPRITE_MOVE_Y,
        SLEEP_SPRITE_ANIM_FRAMES);

    ScaleLerpContext_Init(
        scale,
        SLEEP_SPRITE_START_SCALE,
        SLEEP_SPRITE_BASE_SCALE,
        SLEEP_SPRITE_END_SCALE,
        SLEEP_SPRITE_ANIM_FRAMES);
}

static BOOL SleepSprite_Update(ManagedSprite *sprite, XYTransformContext *pos, XYTransformContext *scale)
{
    PosLerpContext_UpdateAndApplyToSprite(pos, sprite);
    BOOL active = ScaleLerpContext_UpdateAndApplyToSprite(scale, sprite);
    if (active) {
        return FALSE;
    }

    ManagedSprite_SetDrawFlag(sprite, FALSE);
    return TRUE;
}

void BattleAnimSpriteFunc_Freeze(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    FreezeSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(FreezeSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteMan = spriteMan;
    ctx->sprite = sprite;

    ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
    ManagedSprite_SetExplicitOamMode(ctx->sprite, GX_OAM_MODE_XLU);
    ManagedSprite_SetPriority(ctx->sprite, 100);
    ManagedSprite_SetExplicitPriority(ctx->sprite, 1);

    ctx->paletteOffset = ManagedSprite_GetExplicitPaletteOffset(ctx->sprite);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Freeze, ctx);
}

static void BattleAnimTask_Freeze(SysTask *task, void *param)
{
    FreezeSpriteContext *ctx = param;

    switch (ctx->state) {
    case FREEZE_SPRITE_STATE_INIT:
        AlphaFadeContext_Init(
            &ctx->alphaFade,
            FREEZE_SPRITE_START_ALPHA,
            FREEZE_SPRITE_END_ALPHA,
            FREEZE_SPRITE_DEFAULT_ALPHA - FREEZE_SPRITE_START_ALPHA,
            FREEZE_SPRITE_DEFAULT_ALPHA - FREEZE_SPRITE_END_ALPHA,
            FREEZE_SPRITE_ALPHA_FADEIN_FRAMES);
        ManagedSprite_SetDrawFlag(ctx->sprite, TRUE);
        BattleAnimUtil_SetSpriteBgBlending(
            ctx->battleAnimSys,
            FREEZE_SPRITE_START_ALPHA,
            FREEZE_SPRITE_DEFAULT_ALPHA - FREEZE_SPRITE_START_ALPHA);
        ctx->state++;
        break;
    case FREEZE_SPRITE_STATE_FADEIN:
        if (AlphaFadeContext_IsDone(&ctx->alphaFade)) {
            ctx->state++;

            ManagedSprite_SetAnimateFlag(ctx->sprite, TRUE);
            ManagedSprite_SetAnimationSpeed(ctx->sprite, FX32_ONE);
        }
        break;
    case FREEZE_SPRITE_STATE_ROTATE_PALS: {
        int animFrame = ManagedSprite_GetAnimationFrame(ctx->sprite);
        animFrame %= 3;

        ManagedSprite_SetExplicitPaletteOffset(ctx->sprite, ctx->paletteOffset + animFrame);

        if (!ManagedSprite_IsAnimated(ctx->sprite)) {
            ctx->state++;
            AlphaFadeContext_Init(
                &ctx->alphaFade,
                FREEZE_SPRITE_END_ALPHA,
                FREEZE_SPRITE_START_ALPHA,
                FREEZE_SPRITE_DEFAULT_ALPHA - FREEZE_SPRITE_END_ALPHA,
                FREEZE_SPRITE_DEFAULT_ALPHA - FREEZE_SPRITE_START_ALPHA,
                FREEZE_SPRITE_ALPHA_FADEOUT_FRAMES);
        }
    } break;
    case FREEZE_SPRITE_STATE_FADEOUT:
        if (AlphaFadeContext_IsDone(&ctx->alphaFade)) {
            ctx->state++;
            ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
        }
        break;
    case FREEZE_SPRITE_STATE_CLEANUP:
        Sprite_DeleteAndFreeResources(ctx->sprite);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Burn(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    BurnSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(BurnSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteMan = spriteMan;

    int attacker = BattleAnimSystem_GetAttacker(ctx->battleAnimSys);
    int dir = BattleAnimUtil_GetTransformDirectionX(system, attacker);

    SpriteTemplate template;
    template = BattleAnimSystem_GetLastSpriteTemplate(ctx->battleAnimSys);
    template.x = BattleAnimUtil_GetBattlerPos(system, attacker, BATTLE_ANIM_POSITION_MON_X);
    template.y = BattleAnimUtil_GetBattlerPos(system, attacker, BATTLE_ANIM_POSITION_MON_Y);

    for (int i = BURN_SPRITE_FLAME_COUNT - 1; i >= 0; i--) {
        if (i == BURN_SPRITE_FLAME_COUNT - 1) {
            ctx->sprites[i] = sprite;
            ManagedSprite_SetPositionXY(sprite, template.x, template.y);
        } else {
            ctx->sprites[i] = SpriteSystem_NewSprite(spriteSys, spriteMan, &template);
        }

        ManagedSprite_SetPriority(ctx->sprites[i], 100);
        ManagedSprite_SetExplicitPriority(ctx->sprites[i], 1);
        ManagedSprite_SetDrawFlag(ctx->sprites[i], FALSE);

        BurnSprite_Init(ctx->sprites[i], &ctx->visibleFrames[i], &ctx->delays[i], i, dir);
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_BurnSprite, ctx);
}

static void BurnSprite_Init(ManagedSprite *sprite, int *outVisibleFrames, int *outDelay, int idx, int dir)
{
    ManagedSprite_SetAnim(sprite, idx / 2);

    *outDelay = idx * BURN_SPRITE_DELAY_STEP;
    *outVisibleFrames = BURN_SPRITE_VISIBLE_FRAMES;

    s16 spriteX, spriteY;
    ManagedSprite_GetPositionXY(sprite, &spriteX, &spriteY);

    spriteX += (BURN_SPRITE_BASE_OFFSET_X + BURN_SPRITE_OFFSET_X_STEP * idx) * dir;
    spriteY += BURN_SPRITE_BASE_OFFSET_Y;

    ManagedSprite_SetPositionXY(sprite, spriteX, spriteY);
}

static BOOL BurnSprite_Update(ManagedSprite *sprite, int *visibleFrames, int *delay)
{
    if (*delay > 0) {
        (*delay)--;

        if (*delay == 0) {
            ManagedSprite_SetDrawFlag(sprite, TRUE);
        }
    } else {
        if (*visibleFrames > 0) {
            (*visibleFrames)--;
        } else {
            ManagedSprite_SetDrawFlag(sprite, FALSE);
            return TRUE;
        }
    }

    return FALSE;
}

static void BattleAnimTask_BurnSprite(SysTask *task, void *param)
{
    BurnSpriteContext *ctx = param;
    int i;

    switch (ctx->state) {
    case BURN_SPRITE_STATE_ANIMATE: {
        BOOL done;
        for (i = 0; i < BURN_SPRITE_FLAME_COUNT; i++) {
            done = BurnSprite_Update(ctx->sprites[i], &ctx->visibleFrames[i], &ctx->delays[i]);
        }

        if (done) {
            ctx->state++;
        }
    } break;
    case BURN_SPRITE_STATE_CLEANUP:
        for (i = 0; i < BURN_SPRITE_FLAME_COUNT; i++) {
            Sprite_DeleteAndFreeResources(ctx->sprites[i]);
        }

        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

static void ConfusionStatusSprite_Init(ConfusionStatusSpriteContext *ctx, int dir)
{
    int startAngleStep = DEG_TO_IDX(360) / CONFUSION_STATUS_SPRITE_ORB_COUNT;

    for (int i = 0; i < CONFUSION_STATUS_SPRITE_ORB_COUNT; i++) {
        RevolutionContext_Init(
            &ctx->revs[i],
            CONFUSION_STATUS_SPRITE_ORB_REV_START_ANGLE,
            CONFUSION_STATUS_SPRITE_ORB_REV_END_ANGLE,
            0,
            0,
            CONFUSION_STATUS_SPRITE_ORB_REV_RADIUS,
            0,
            CONFUSION_STATUS_SPRITE_ORB_REV_FRAMES);

        ctx->revs[i].data[XY_PARAM_REV_CUR_X] += startAngleStep * i;
        ctx->revs[i].data[XY_PARAM_REV_STEP_SIZE_X] *= dir;
    }
}

static void ConfusionStatusSprite_Update(ConfusionStatusSpriteContext *ctx)
{
    for (int i = 0; i < CONFUSION_STATUS_SPRITE_ORB_COUNT; i++) {
        RevolutionContext_Update(&ctx->revs[i]);
        ManagedSprite_SetPositionXY(ctx->sprites[i], ctx->monX + ctx->revs[i].x, ctx->monY);

        if (ctx->revs[i].data[XY_PARAM_REV_CUR_X] >= CONFUSION_STATUS_SPRITE_ORB_REV_BEHIND_MIN_ANGLE
            && ctx->revs[i].data[XY_PARAM_REV_CUR_X] <= CONFUSION_STATUS_SPRITE_ORB_REV_BEHIND_MAX_ANGLE) {
            ManagedSprite_SetExplicitPriority(ctx->sprites[i], 1);
        } else {
            ManagedSprite_SetExplicitPriority(ctx->sprites[i], BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys) + 1);
        }
    }
}

static void BattleAnimTask_ConfusionStatus(SysTask *task, void *param)
{
    ConfusionStatusSpriteContext *ctx = param;

    switch (ctx->state) {
    case CONFUSION_STATUS_SPRITE_STATE_INIT:
        BattleAnimUtil_SetSpriteBgBlending(
            ctx->battleAnimSys,
            CONFUSION_STATUS_SPRITE_ORB_START_ALPHA,
            CONFUSION_STATUS_SPRITE_ORB_DEFAULT_ALPHA - CONFUSION_STATUS_SPRITE_ORB_START_ALPHA);
        AlphaFadeContext_Init(
            &ctx->alphaFade,
            CONFUSION_STATUS_SPRITE_ORB_START_ALPHA,
            CONFUSION_STATUS_SPRITE_ORB_END_ALPHA,
            CONFUSION_STATUS_SPRITE_ORB_DEFAULT_ALPHA - CONFUSION_STATUS_SPRITE_ORB_START_ALPHA,
            CONFUSION_STATUS_SPRITE_ORB_DEFAULT_ALPHA - CONFUSION_STATUS_SPRITE_ORB_END_ALPHA,
            CONFUSION_STATUS_SPRITE_ORB_ALPHA_FADE_FRAMES);
        ConfusionStatusSprite_Init(ctx, ctx->dir);
        ConfusionStatusSprite_Update(ctx);
        ctx->state++;
        break;
    case CONFUSION_STATUS_SPRITE_STATE_FADEIN:
        ConfusionStatusSprite_Update(ctx);

        if (AlphaFadeContext_IsDone(&ctx->alphaFade)) {
            ctx->state++;
            ctx->delay = CONFUSION_STATUS_SPRITE_ORB_REV_FRAMES - CONFUSION_STATUS_SPRITE_ORB_ALPHA_FADE_FRAMES * 2;
        }
        break;
    case CONFUSION_STATUS_SPRITE_STATE_ROTATE:
        ConfusionStatusSprite_Update(ctx);

        ctx->delay--;
        if (ctx->delay < 0) {
            ctx->state++;
            AlphaFadeContext_Init(
                &ctx->alphaFade,
                CONFUSION_STATUS_SPRITE_ORB_END_ALPHA,
                CONFUSION_STATUS_SPRITE_ORB_START_ALPHA,
                CONFUSION_STATUS_SPRITE_ORB_DEFAULT_ALPHA - CONFUSION_STATUS_SPRITE_ORB_END_ALPHA,
                CONFUSION_STATUS_SPRITE_ORB_DEFAULT_ALPHA - CONFUSION_STATUS_SPRITE_ORB_START_ALPHA,
                CONFUSION_STATUS_SPRITE_ORB_ALPHA_FADE_FRAMES);
        }
        break;
    case CONFUSION_STATUS_SPRITE_STATE_FADEOUT:
        ConfusionStatusSprite_Update(ctx);

        if (AlphaFadeContext_IsDone(&ctx->alphaFade)) {
            ctx->state++;
        }
        break;
    case CONFUSION_STATUS_SPRITE_STATE_CLEANUP:
        for (int i = 0; i < CONFUSION_STATUS_SPRITE_ORB_COUNT; i++) {
            Sprite_DeleteAndFreeResources(ctx->sprites[i]);
        }

        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_ConfusionStatus(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    ConfusionStatusSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ConfusionStatusSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;

    PokemonSprite *affectedMon = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
    ctx->monX = PokemonSprite_GetAttribute(affectedMon, MON_SPRITE_X_CENTER);
    ctx->monY = PokemonSprite_GetAttribute(affectedMon, MON_SPRITE_Y_CENTER);

    SpriteTemplate template;
    template = BattleAnimSystem_GetLastSpriteTemplate(system);

    for (int i = 0; i < CONFUSION_STATUS_SPRITE_ORB_COUNT; i++) {
        if (i == 0) {
            ctx->sprites[i] = sprite;
        } else {
            ctx->sprites[i] = SpriteSystem_NewSprite(ctx->spriteSys, ctx->spriteMan, &template);
        }

        ManagedSprite_SetPriority(ctx->sprites[i], 100);
        ManagedSprite_SetExplicitOamMode(ctx->sprites[i], GX_OAM_MODE_XLU);
        ManagedSprite_SetAnimateFlag(ctx->sprites[i], TRUE);
    }

    ctx->dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_ConfusionStatus, ctx);
}
