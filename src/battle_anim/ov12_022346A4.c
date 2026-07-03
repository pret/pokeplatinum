#include "battle_anim/ov12_022346A4.h"

#include <nitro.h>
#include <string.h>

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"

#include "heap.h"
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
#define SLEEP_SPRITE_MOVE_Y         -32
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

#define BURN_SPRITE_OFFSET_X_STEP  -12
#define BURN_SPRITE_BASE_OFFSET_X  40
#define BURN_SPRITE_BASE_OFFSET_Y  40
#define BURN_SPRITE_DELAY_STEP     2 // Frames between flames
#define BURN_SPRITE_VISIBLE_FRAMES 16 // Number of frames each flame is visible for

typedef struct {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    int unk_10;
    int unk_14;
    ManagedSprite *managedSprite[6];
    XYTransformContext transformCtx[6];
    AlphaFadeContext alphaFadeCtx;
    s16 posX;
    s16 posY;
} UnkStruct_ov12_02234BD8;

static void BattleAnimTask_SleepSprite(SysTask *task, void *param);
static void SleepSprite_Init(ManagedSprite *managedSprite, XYTransformContext *pos, XYTransformContext *scale, int dir);
static BOOL SleepSprite_Update(ManagedSprite *managedSprite, XYTransformContext *pos, XYTransformContext *scale);
static void BattleAnimTask_Freeze(SysTask *task, void *param1);
static void BattleAnimTask_BurnSprite(SysTask *task, void *param1);
static BOOL BurnSprite_Update(ManagedSprite *managedSprite, int *param1, int *param2);
static void BurnSprite_Init(ManagedSprite *managedSprite, int *param1, int *param2, int param3, int param4);
static void ov12_02234CA8(SysTask *task, void *param1);

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

static void ov12_02234BD8(UnkStruct_ov12_02234BD8 *param0, int param1)
{
    int v1 = 360 * 0xffff / 360 / 6;

    for (int i = 0; i < SNELEMS(param0->managedSprite); i++) {
        RevolutionContext_Init(&param0->transformCtx[i], DEG_TO_IDX(0), DEG_TO_IDX(180), 0, 0, FX32_ONE * 50, 0, 48);
        param0->transformCtx[i].data[1] += v1 * i;
        param0->transformCtx[i].data[5] *= param1;
    }
}

static void ov12_02234C30(UnkStruct_ov12_02234BD8 *param0)
{
    for (int i = 0; i < SNELEMS(param0->managedSprite); i++) {
        RevolutionContext_Update(&param0->transformCtx[i]);

        ManagedSprite_SetPositionXY(param0->managedSprite[i], param0->posX + param0->transformCtx[i].x, param0->posY);

        if (param0->transformCtx[i].data[1] >= DEG_TO_IDX(90) && param0->transformCtx[i].data[1] <= DEG_TO_IDX(269)) {
            ManagedSprite_SetExplicitPriority(param0->managedSprite[i], 1);
        } else {
            ManagedSprite_SetExplicitPriority(param0->managedSprite[i], BattleAnimSystem_GetPokemonSpritePriority(param0->battleAnimSys) + 1);
        }
    }
}

static void ov12_02234CA8(SysTask *task, void *param1)
{
    UnkStruct_ov12_02234BD8 *v0 = param1;

    switch (v0->state) {
    case 0:
        BattleAnimUtil_SetSpriteBgBlending(v0->battleAnimSys, 1, 16 - 1);
        AlphaFadeContext_Init(&v0->alphaFadeCtx, 1, 16, 16 - 1, 16 - 16, 10);
        ov12_02234BD8(v0, v0->unk_14);
        ov12_02234C30(v0);
        v0->state++;
        break;
    case 1:
        ov12_02234C30(v0);

        if (AlphaFadeContext_IsDone(&v0->alphaFadeCtx)) {
            v0->state++;
            v0->unk_10 = 48 - 10 * 2;
        }
        break;
    case 2:
        ov12_02234C30(v0);
        v0->unk_10--;

        if (v0->unk_10 < 0) {
            v0->state++;
            AlphaFadeContext_Init(&v0->alphaFadeCtx, 16, 1, 16 - 16, 16 - 1, 10);
        }
        break;
    case 3:
        ov12_02234C30(v0);

        if (AlphaFadeContext_IsDone(&v0->alphaFadeCtx)) {
            v0->state++;
        }
        break;
    case 4:
        for (int i = 0; i < SNELEMS(v0->managedSprite); i++) {
            Sprite_DeleteAndFreeResources(v0->managedSprite[i]);
        }

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->battleAnimSys, task);
        return;
    }

    SpriteSystem_DrawSprites(v0->spriteMan);
}

void ov12_02234D98(BattleAnimSystem *battleAnimSystem, SpriteSystem *spriteSystem, SpriteManager *spriteMan, ManagedSprite *managedSprite)
{
    SpriteTemplate spriteTemplate;

    UnkStruct_ov12_02234BD8 *battleAnimUtil = BattleAnimUtil_Alloc(battleAnimSystem, sizeof(UnkStruct_ov12_02234BD8));

    battleAnimUtil->battleAnimSys = battleAnimSystem;
    battleAnimUtil->spriteSys = spriteSystem;
    battleAnimUtil->spriteMan = spriteMan;

    PokemonSprite *monSprite = BattleAnimSystem_GetBattlerSprite(battleAnimUtil->battleAnimSys, BattleAnimSystem_GetAttacker(battleAnimSystem));

    battleAnimUtil->posX = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_X_CENTER);
    battleAnimUtil->posY = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_Y_CENTER);

    spriteTemplate = BattleAnimSystem_GetLastSpriteTemplate(battleAnimSystem);

    for (int i = 0; i < SNELEMS(battleAnimUtil->managedSprite); i++) {
        if (i == 0) {
            battleAnimUtil->managedSprite[i] = managedSprite;
        } else {
            battleAnimUtil->managedSprite[i] = SpriteSystem_NewSprite(battleAnimUtil->spriteSys, battleAnimUtil->spriteMan, &spriteTemplate);
        }

        ManagedSprite_SetPriority(battleAnimUtil->managedSprite[i], 100);
        ManagedSprite_SetExplicitOamMode(battleAnimUtil->managedSprite[i], GX_OAM_MODE_XLU);
        ManagedSprite_SetAnimateFlag(battleAnimUtil->managedSprite[i], TRUE);
    }

    battleAnimUtil->unk_14 = BattleAnimUtil_GetTransformDirectionX(battleAnimUtil->battleAnimSys, BattleAnimSystem_GetAttacker(battleAnimUtil->battleAnimSys));
    BattleAnimSystem_StartAnimTask(battleAnimUtil->battleAnimSys, ov12_02234CA8, battleAnimUtil);
}
