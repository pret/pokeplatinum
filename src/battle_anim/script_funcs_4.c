#include "battle_anim/script_funcs_4.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"

#include "battle_script_battlers.h"
#include "bg_window.h"
#include "heap.h"
#include "math_util.h"
#include "pokemon_sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

// -------------------------------------------------------------------
// Taunt Sprite
// -------------------------------------------------------------------
typedef struct TauntSpriteContext {
    u8 state;
    u8 fadeInCycles[3];
    u8 fadeInFrames;
    u8 handCount;
    u8 spriteAlpha;
    u8 bgAlpha;
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    ManagedSprite *handSprites[3];
    XYTransformContext unused;
} TauntSpriteContext;

enum TauntSpriteState {
    TAUNT_SPRITE_STATE_FADE_IN = 0,
    TAUNT_SPRITE_STATE_FADE_OUT,
};

#define TAUNT_SPRITE_VAR_HAND_COUNT 0
#define TAUNT_SPRITE_HAND_0_POS_X   128
#define TAUNT_SPRITE_HAND_0_POS_Y   80
#define TAUNT_SPRITE_MIN_ALPHA      0
#define TAUNT_SPRITE_MAX_ALPHA      15
#define TAUNT_SPRITE_FADE_IN_FRAMES 45

// -------------------------------------------------------------------
// Taunt Sprite
// -------------------------------------------------------------------
typedef struct HelpingHandSpriteContext {
    u8 state;
    u8 unused0[6];
    u8 unused1;
    u8 handCount;
    u8 spriteAlpha;
    u8 bgAlpha;
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    ManagedSprite *handSprites[6];
    int currentPair;
    ManagedSprite *hand1;
    ManagedSprite *hand2;
    XYTransformContext hand1Pos;
    XYTransformContext hand2Pos;
} HelpingHandSpriteContext;

enum HelpingHandSpriteState {
    HELPING_HAND_SPRITE_STATE_FADE_IN = 0,
    HELPING_HAND_SPRITE_STATE_SETUP_MOVE,
    HELPING_HAND_SPRITE_STATE_MOVE,
    HELPING_HAND_SPRITE_STATE_FADE_OUT,
};

#define HELPING_HAND_SPRITE_VAR_HAND_COUNT 0
#define HELPING_HAND_SPRITE_MIN_ALPHA      0
#define HELPING_HAND_SPRITE_MAX_ALPHA      15
#define HELPING_HAND_SPRITE_PAIR_0         0
#define HELPING_HAND_SPRITE_PAIR_1         1
#define HELPING_HAND_SPRITE_PAIR_2         2
#define HELPING_HAND_SPRITE_PAIR_3         3

// -------------------------------------------------------------------
// Assist Sprite
// -------------------------------------------------------------------
#define ASSIST_SPRITE_MAX_PAWS 20

typedef struct AssistPawSprite {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    u8 state;
    u8 step;
    u8 delay;
    u8 destIndex;
    ManagedSprite *sprite;
    XYTransformContext pos;
    f32 scale;
    int *outerState;
} AssistPawSprite;

enum AssistPawSpriteState {
    ASSIST_PAW_SPRITE_STATE_DELAY_1 = 0,
    ASSIST_PAW_SPRITE_STATE_ENABLE_DRAW,
    ASSIST_PAW_SPRITE_STATE_GROW,
    ASSIST_PAW_SPRITE_STATE_SHRINK,
    ASSIST_PAW_SPRITE_STATE_ADVANCE_OUTER_1,
    ASSIST_PAW_SPRITE_STATE_DELAY_2,
    ASSIST_PAW_SPRITE_STATE_SETUP_MOVE,
    ASSIST_PAW_SPRITE_STATE_MOVE,

    ASSIST_PAW_SPRITE_OUTER_STATE_INIT = 0,
    ASSIST_PAW_SPRITE_OUTER_STATE_SCALE_DONE,
    ASSIST_PAW_SPRITE_OUTER_STATE_MOVE,
    ASSIST_PAW_SPRITE_OUTER_STATE_DONE,
};

typedef struct AssistSpriteContext {
    u8 state;
    u8 unused0;
    u8 pawCount;
    u8 unused1;
    u8 unused2;
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    AssistPawSprite paws[ASSIST_SPRITE_MAX_PAWS];
    int pawStates[ASSIST_SPRITE_MAX_PAWS];
} AssistSpriteContext;

enum AssistSpriteState {
    ASSIST_SPRITE_STATE_WAIT_FOR_SCALE = 0,
    ASSIST_SPRITE_STATE_BEGIN_MOVE,
    ASSIST_SPRITE_STATE_WAIT_FOR_DONE,
    ASSIST_SPRITE_STATE_CLEANUP,
};

#define ASSIST_SPRITE_VAR_PAW_COUNT          0 // Is overwritten anyway
#define ASSIST_SPRITE_DEFAULT_PAW_COUNT      12
#define ASSIST_SPRITE_CONFIG_COUNT           6
#define ASSIST_SPRITE_PAW_OFFSET_Y           0
#define ASSIST_SPRITE_PAW_OFFSET_X           1
#define ASSIST_SPRITE_PAW_RANDOM_Y           2
#define ASSIST_SPRITE_PAW_RANDOM_X           3
#define ASSIST_SPRITE_PAW_SCALE              1.0f
#define ASSIST_SPRITE_PAW_SCALE_STEP         0.1f
#define ASSIST_SPRITE_PAW_SCALE_STEPS        3
#define ASSIST_SPRITE_TASK_BASE_PRIORITY     1100
#define ASSIST_SPRITE_PAW_BASE_DELAY         10
#define ASSIST_SPRITE_PAW_RANDOM_DELAY       10
#define ASSIST_SPRITE_PAW_MOVE_DELAY         30
#define ASSIST_SPRITE_PAW_MOVE_BASE_FRAMES   10
#define ASSIST_SPRITE_PAW_MOVE_RANDOM_FRAMES 10

// -------------------------------------------------------------------
// Camouflage
// -------------------------------------------------------------------
typedef struct CamouflageContext {
    int timer;
    BattleAnimScriptFuncCommon common;
    ManagedSprite *maskSprite;
    ManagedSprite *xluSprite;
    BgScrollContext *bgScroll;
    AlphaFadeContext alpha;
} CamouflageContext;

enum CamouflageState {
    CAMOUFLAGE_STATE_INIT = 0,
    CAMOUFLAGE_STATE_FADE_OUT,
    CAMOUFLAGE_STATE_SCROLL,
    CAMOUFLAGE_STATE_FADE_IN,
};

#define CAMOUFLAGE_SPRITE_START_ALPHA   16
#define CAMOUFLAGE_SPRITE_END_ALPHA     2
#define CAMOUFLAGE_OTHER_START_ALPHA    2
#define CAMOUFLAGE_OTHER_END_ALPHA      16
#define CAMOUFLAGE_ALPHA_FADE_FRAMES    16
#define CAMOUFLAGE_BG_SCROLL_START_Y    0
#define CAMOUFLAGE_BG_SCROLL_END_Y      160
#define CAMOUFLAGE_BG_SCROLL_ANGLE_STEP DEG_TO_IDX(2)
#define CAMOUFLAGE_BG_SCROLL_AMPLITUDE  FX32_CONST(12)
#define CAMOUFLAGE_BG_SCROLL_SPEED      200
#define CAMOUFLAGE_BG_SCROLL_FRAMES     120

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    s16 unk_1C;
    s16 unk_1E[4];
    ManagedSprite *unk_28[4];
} UnkStruct_ov12_0222E25C;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    int unk_1C;
    s16 unk_20;
    s16 unk_22[4];
    ManagedSprite *unk_2C[4];
    PaletteFadeContext *unk_3C[6];
    int unk_54;
    int unk_58;
} UnkStruct_ov12_0222E390;

// Unused, was maybe used for some position manipulation but got removed from the looks of it.
static const u8 sTauntSpriteFadeInFrames[][2] = {
    [0] = { 20, 2 },
    [1] = { 13, 1 },
    [2] = { 18, 3 }
};

static void BattleAnimTask_TauntSprite(SysTask *task, void *param)
{
    int i;
    TauntSpriteContext *ctx = param;

    switch (ctx->state) {
    case TAUNT_SPRITE_STATE_FADE_IN:
        if (ctx->spriteAlpha < TAUNT_SPRITE_MAX_ALPHA) {
            ctx->spriteAlpha++;
        }

        if (ctx->bgAlpha > TAUNT_SPRITE_MIN_ALPHA) {
            ctx->bgAlpha--;
        }

        G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);
        ctx->fadeInFrames++;

        for (i = 0; i < ctx->handCount; i++) {
            s16 x, y;
            ManagedSprite_GetPositionXY(ctx->handSprites[i], &x, &y);

            if (ctx->fadeInFrames >= sTauntSpriteFadeInFrames[i][0]) {
                ctx->fadeInCycles[i]++;

                if (ctx->fadeInCycles[i] >= sTauntSpriteFadeInFrames[i][1]) {
                    ctx->fadeInCycles[i] = 0;
                }
            }
        }

        if (ctx->fadeInFrames >= TAUNT_SPRITE_FADE_IN_FRAMES) {
            ctx->state++;
        }
        break;
    case TAUNT_SPRITE_STATE_FADE_OUT:
        if (ctx->spriteAlpha > TAUNT_SPRITE_MIN_ALPHA) {
            ctx->spriteAlpha--;
        }

        if (ctx->bgAlpha < TAUNT_SPRITE_MAX_ALPHA) {
            ctx->bgAlpha++;
        }

        if (ctx->spriteAlpha == TAUNT_SPRITE_MIN_ALPHA && ctx->bgAlpha == TAUNT_SPRITE_MAX_ALPHA) {
            ctx->state++;
        }

        G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);
        break;
    default:
        for (i = 0; i < ctx->handCount; i++) {
            Sprite_DeleteAndFreeResources(ctx->handSprites[i]);
        }

        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);

        return;
    }

    for (i = 0; i < ctx->handCount; i++) {
        Sprite_TickFrame(ctx->handSprites[i]->sprite);
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Taunt(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    int i;
    SpriteTemplate template;

    TauntSpriteContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(TauntSpriteContext));

    GF_ASSERT(ctx != NULL);

    ctx->fadeInFrames = 0;
    ctx->state = TAUNT_SPRITE_STATE_FADE_IN;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->battleAnimSys = system;

    template = BattleAnimSystem_GetLastSpriteTemplate(system);
    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, BATTLE_ANIM_DEFAULT_ALPHA, BATTLE_ANIM_DEFAULT_ALPHA);

    ctx->handCount = BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, TAUNT_SPRITE_VAR_HAND_COUNT);
    ctx->spriteAlpha = TAUNT_SPRITE_MIN_ALPHA;
    ctx->bgAlpha = TAUNT_SPRITE_MAX_ALPHA;

    G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);
    ctx->handSprites[0] = sprite;

    for (i = 1; i < ctx->handCount; i++) {
        ctx->handSprites[i] = SpriteSystem_NewSprite(ctx->spriteSys, ctx->spriteMan, &template);
    }

    if (BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetDefender(system)) == BTLSCR_PLAYER) {
        if (BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetDefender(system)) == BTLSCR_PLAYER
            && BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetAttacker(system)) == BTLSCR_PLAYER) {
            ManagedSprite_SetAnim(ctx->handSprites[0], 0);
        } else {
            ManagedSprite_SetAnim(ctx->handSprites[0], 1);
        }

        ManagedSprite_SetPositionXY(ctx->handSprites[0], TAUNT_SPRITE_HAND_0_POS_X, TAUNT_SPRITE_HAND_0_POS_Y);
    } else {
        if (BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetDefender(system)) == BTLSCR_ENEMY
            && BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetAttacker(system)) == BTLSCR_ENEMY) {
            ManagedSprite_SetAnim(ctx->handSprites[0], 1);
        } else {
            ManagedSprite_SetAnim(ctx->handSprites[0], 0);
        }

        ManagedSprite_SetPositionXY(ctx->handSprites[0], TAUNT_SPRITE_HAND_0_POS_X, TAUNT_SPRITE_HAND_0_POS_Y);
    }

    for (i = 0; i < ctx->handCount; i++) {
        ctx->fadeInCycles[i] = 0;
        ManagedSprite_SetAffineOverwriteMode(ctx->handSprites[i], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetExplicitOamMode(ctx->handSprites[i], GX_OAM_MODE_XLU);

        if (BattleAnimSystem_IsContest(ctx->battleAnimSys) == TRUE) {
            ManagedSprite_SetAffineScale(ctx->handSprites[i], -1.0f, 1.0f);
        }
    }

    BattleAnimSystem_StartAnimTaskEx(system, BattleAnimTask_TauntSprite, ctx, 1100);
}

static const Point2D sHelpingHandSpritePositions[] = {
    [0] = { 80, 50 },
    [1] = { 180, 50 },
    [2] = { 80, 100 },
    [3] = { 180, 100 },
    [4] = { 80, 75 },
    [5] = { 180, 75 }
};

static const Point2D sHelpingHandPairMovementDests[][2] = {
    [HELPING_HAND_SPRITE_PAIR_0] = {
        [0] = { 0x78, 0x50 },
        [1] = { 0x88, 0x50 },
    },
    [HELPING_HAND_SPRITE_PAIR_1] = {
        [0] = { 0x78, 0x50 },
        [1] = { 0x88, 0x50 },
    },
    [HELPING_HAND_SPRITE_PAIR_2] = {
        [0] = { 0x78, 0x50 },
        [1] = { 0x88, 0x50 },
    },
    [HELPING_HAND_SPRITE_PAIR_3] = {
        [0] = { 0x58, 0x50 },
        [1] = { 0xA8, 0x50 },
    },
};

static const u8 sHelpingHandPairMovementFrames[] = {
    [HELPING_HAND_SPRITE_PAIR_0] = 5,
    [HELPING_HAND_SPRITE_PAIR_1] = 5,
    [HELPING_HAND_SPRITE_PAIR_2] = 5,
    [HELPING_HAND_SPRITE_PAIR_3] = 3
};

static void BattleAnimTask_HelpingHandSprite(SysTask *task, void *param)
{
    int i;
    BOOL spriteAnimsDone = FALSE;
    HelpingHandSpriteContext *ctx = param;

    switch (ctx->state) {
    case HELPING_HAND_SPRITE_STATE_FADE_IN:
        if (ctx->spriteAlpha < HELPING_HAND_SPRITE_MAX_ALPHA) {
            ctx->spriteAlpha++;
        }

        if (ctx->bgAlpha > HELPING_HAND_SPRITE_MIN_ALPHA) {
            ctx->bgAlpha--;
        }

        if (ctx->spriteAlpha == HELPING_HAND_SPRITE_MAX_ALPHA && ctx->bgAlpha == HELPING_HAND_SPRITE_MIN_ALPHA) {
            ctx->state++;
        }

        G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);
        break;
    case HELPING_HAND_SPRITE_STATE_SETUP_MOVE: {
        switch (ctx->currentPair) {
        case HELPING_HAND_SPRITE_PAIR_0:
            ctx->hand1 = ctx->handSprites[0];
            ctx->hand2 = ctx->handSprites[3];
            ManagedSprite_SetDrawFlag(ctx->hand1, TRUE);
            ManagedSprite_SetDrawFlag(ctx->hand2, TRUE);
            break;
        case HELPING_HAND_SPRITE_PAIR_1:
            ctx->hand1 = ctx->handSprites[1];
            ctx->hand2 = ctx->handSprites[2];
            ManagedSprite_SetDrawFlag(ctx->hand1, TRUE);
            ManagedSprite_SetDrawFlag(ctx->hand2, TRUE);
            break;
        case HELPING_HAND_SPRITE_PAIR_2:
        case HELPING_HAND_SPRITE_PAIR_3:
            ctx->hand1 = ctx->handSprites[4];
            ctx->hand2 = ctx->handSprites[5];
            ManagedSprite_SetDrawFlag(ctx->hand1, TRUE);
            ManagedSprite_SetDrawFlag(ctx->hand2, TRUE);
            break;
        }

        s16 x, y;
        ManagedSprite_GetPositionXY(ctx->hand1, &x, &y);
        PosLerpContext_Init(
            &ctx->hand1Pos,
            x,
            sHelpingHandPairMovementDests[ctx->currentPair][0].x,
            y,
            sHelpingHandPairMovementDests[ctx->currentPair][0].y,
            sHelpingHandPairMovementFrames[ctx->currentPair]);

        ManagedSprite_GetPositionXY(ctx->hand2, &x, &y);
        PosLerpContext_Init(
            &ctx->hand2Pos,
            x,
            sHelpingHandPairMovementDests[ctx->currentPair][1].x,
            y,
            sHelpingHandPairMovementDests[ctx->currentPair][1].y,
            sHelpingHandPairMovementFrames[ctx->currentPair]);

        ctx->currentPair++;
        ctx->state++;
    } break;
    case HELPING_HAND_SPRITE_STATE_MOVE: {
        int doneCount = 0;
        BOOL active = PosLerpContext_UpdateAndApplyToSprite(&ctx->hand1Pos, ctx->hand1);
        if (active == FALSE) {
            doneCount++;
        }

        active = PosLerpContext_UpdateAndApplyToSprite(&ctx->hand2Pos, ctx->hand2);
        if (active == FALSE) {
            doneCount++;
        }

        if (doneCount >= 2) {
            if (ctx->currentPair <= HELPING_HAND_SPRITE_PAIR_3) {
                ManagedSprite_SetDrawFlag(ctx->hand1, FALSE);
                ManagedSprite_SetDrawFlag(ctx->hand2, FALSE);
                ctx->state--;
            } else {
                ctx->state++;
            }
        }
    } break;
    case HELPING_HAND_SPRITE_STATE_FADE_OUT:
        if (ctx->spriteAlpha > HELPING_HAND_SPRITE_MIN_ALPHA) {
            ctx->spriteAlpha--;
        }

        if (ctx->bgAlpha < HELPING_HAND_SPRITE_MAX_ALPHA) {
            ctx->bgAlpha++;
        }

        if (ctx->bgAlpha >= HELPING_HAND_SPRITE_MAX_ALPHA / 2) {
            spriteAnimsDone = TRUE;
        }

        if (ctx->spriteAlpha == HELPING_HAND_SPRITE_MIN_ALPHA && ctx->bgAlpha == HELPING_HAND_SPRITE_MAX_ALPHA) {
            ctx->state++;
        }

        G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);
        break;
    default:
        for (i = 0; i < ctx->handCount; i++) {
            Sprite_DeleteAndFreeResources(ctx->handSprites[i]);
        }

        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    if (ctx->state < HELPING_HAND_SPRITE_STATE_FADE_OUT && spriteAnimsDone == FALSE) {
        for (i = 0; i < ctx->handCount; i++) {
            Sprite_TickFrame(ctx->handSprites[i]->sprite);
        }
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_HelpingHand(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    int i;
    SpriteTemplate template;

    HelpingHandSpriteContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(HelpingHandSpriteContext));

    GF_ASSERT(ctx != NULL);

    ctx->unused1 = 0;
    ctx->state = HELPING_HAND_SPRITE_STATE_FADE_IN;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->currentPair = HELPING_HAND_SPRITE_PAIR_0;
    ctx->battleAnimSys = system;

    template = BattleAnimSystem_GetLastSpriteTemplate(system);
    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, BATTLE_ANIM_DEFAULT_ALPHA, BATTLE_ANIM_DEFAULT_ALPHA);

    ctx->spriteAlpha = HELPING_HAND_SPRITE_MIN_ALPHA;
    ctx->bgAlpha = HELPING_HAND_SPRITE_MAX_ALPHA;

    G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);

    ctx->handCount = BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, HELPING_HAND_SPRITE_VAR_HAND_COUNT);
    ctx->handSprites[0] = sprite;

    for (i = 1; i < ctx->handCount; i++) {
        ctx->handSprites[i] = SpriteSystem_NewSprite(ctx->spriteSys, ctx->spriteMan, &template);
    }

    ManagedSprite_SetAnim(ctx->handSprites[0], 0);
    ManagedSprite_SetAnim(ctx->handSprites[1], 0);
    ManagedSprite_SetAnim(ctx->handSprites[2], 1);
    ManagedSprite_SetAnim(ctx->handSprites[3], 1);
    ManagedSprite_SetAnim(ctx->handSprites[4], 2);
    ManagedSprite_SetAnim(ctx->handSprites[5], 3);
    ManagedSprite_SetFlipMode(ctx->handSprites[0], TRUE);
    ManagedSprite_SetFlipMode(ctx->handSprites[3], TRUE);

    for (i = 0; i < ctx->handCount; i++) {
        ManagedSprite_SetAnimateFlag(ctx->handSprites[i], TRUE);
        ManagedSprite_SetPositionXY(ctx->handSprites[i], sHelpingHandSpritePositions[i].x, sHelpingHandSpritePositions[i].y);
        ManagedSprite_SetExplicitOamMode(ctx->handSprites[i], GX_OAM_MODE_XLU);
    }

    ManagedSprite_SetDrawFlag(ctx->handSprites[1], FALSE);
    ManagedSprite_SetDrawFlag(ctx->handSprites[2], FALSE);
    ManagedSprite_SetDrawFlag(ctx->handSprites[4], FALSE);
    ManagedSprite_SetDrawFlag(ctx->handSprites[5], FALSE);

    BattleAnimSystem_StartAnimTaskEx(system, BattleAnimTask_HelpingHandSprite, ctx, 1100);
}

static const Point2D sAssistPawSpriteDestinations[ASSIST_SPRITE_CONFIG_COUNT] = {
    { 0, 0 },
    { 128, 0 },
    { 256, 0 },
    { 0, 170 },
    { 128, 170 },
    { 256, 170 }
};

static void BattleAnimTask_AssistPaw(SysTask *task, void *param)
{
    AssistPawSprite *paw = param;

    switch (paw->state) {
    case ASSIST_PAW_SPRITE_STATE_DELAY_1:
        if (--paw->delay <= ASSIST_SPRITE_PAW_BASE_DELAY) {
            paw->state++;
        }
        break;
    case ASSIST_PAW_SPRITE_STATE_ENABLE_DRAW:
        if (++paw->step >= 3) {
            ManagedSprite_SetDrawFlag(paw->sprite, TRUE);
            paw->step = 0;
            paw->state++;
        }
        break;
    case ASSIST_PAW_SPRITE_STATE_GROW:
        if (++paw->step <= ASSIST_SPRITE_PAW_SCALE_STEPS) {
            paw->scale += ASSIST_SPRITE_PAW_SCALE_STEP;
            ManagedSprite_SetAffineScale(paw->sprite, paw->scale, paw->scale);
        } else {
            paw->step = 0;
            paw->state++;
        }
        break;
    case ASSIST_PAW_SPRITE_STATE_SHRINK:
        if (++paw->step <= ASSIST_SPRITE_PAW_SCALE_STEPS) {
            paw->scale -= ASSIST_SPRITE_PAW_SCALE_STEP;
            ManagedSprite_SetAffineScale(paw->sprite, paw->scale, paw->scale);
        } else {
            paw->step = 0;
            paw->state++;
        }
        break;
    case ASSIST_PAW_SPRITE_STATE_ADVANCE_OUTER_1:
        if (--paw->delay <= ASSIST_SPRITE_PAW_BASE_DELAY) {
            *paw->outerState = ASSIST_PAW_SPRITE_OUTER_STATE_SCALE_DONE;
            paw->step = 0;
            paw->state++;
        }
        break;
    case ASSIST_PAW_SPRITE_STATE_DELAY_2:
        if (++paw->step > ASSIST_SPRITE_PAW_MOVE_DELAY) {
            paw->step = 0;
            paw->state++;
            break;
        }

        if (*paw->outerState == ASSIST_PAW_SPRITE_OUTER_STATE_MOVE) {
            paw->state++;
        }
        break;
    case ASSIST_PAW_SPRITE_STATE_SETUP_MOVE: {
        Point2D pos;
        int frames = ASSIST_SPRITE_PAW_MOVE_BASE_FRAMES + (LCRNG_Next() % ASSIST_SPRITE_PAW_MOVE_RANDOM_FRAMES);

        ManagedSprite_GetPositionXY(paw->sprite, &pos.x, &pos.y);
        PosLerpContext_Init(
            &paw->pos,
            pos.x,
            sAssistPawSpriteDestinations[paw->destIndex].x,
            pos.y,
            sAssistPawSpriteDestinations[paw->destIndex].y,
            frames);
        paw->state++;
    } break;
    case ASSIST_PAW_SPRITE_STATE_MOVE: {
        BOOL active = PosLerpContext_UpdateAndApplyToSprite(&paw->pos, paw->sprite);
        if (active == FALSE) {
            ManagedSprite_SetDrawFlag(paw->sprite, FALSE);
            paw->state++;
        } else {
            break;
        }
    }
    default:
        *(paw->outerState) = ASSIST_PAW_SPRITE_OUTER_STATE_DONE;
        BattleAnimSystem_EndAnimTask(paw->battleAnimSys, task);
        break;
    }

    ManagedSprite_TickFrame(paw->sprite);
}

static void BattleAnimTask_AssistSprite(SysTask *task, void *param)
{
    int i;
    AssistSpriteContext *ctx = param;

    switch (ctx->state) {
    case ASSIST_SPRITE_STATE_WAIT_FOR_SCALE: {
        BOOL scaleDone = TRUE;

        for (i = 0; i < ctx->pawCount; i++) {
            if (ctx->pawStates[i] != ASSIST_PAW_SPRITE_OUTER_STATE_SCALE_DONE) {
                scaleDone = FALSE;
                break;
            }
        }

        if (scaleDone == TRUE) {
            ctx->state++;
        }
    } break;
    case ASSIST_SPRITE_STATE_BEGIN_MOVE:
        for (i = 0; i < ctx->pawCount; i++) {
            ctx->pawStates[i] = ASSIST_PAW_SPRITE_OUTER_STATE_MOVE;
        }

        ctx->state++;
        break;
    case ASSIST_SPRITE_STATE_WAIT_FOR_DONE: {
        BOOL done = TRUE;

        for (i = 0; i < ctx->pawCount; i++) {
            if (ctx->pawStates[i] != ASSIST_PAW_SPRITE_OUTER_STATE_DONE) {
                done = FALSE;
                break;
            }
        }

        if (done == TRUE) {
            ctx->state++;
        }
    } break;
    case ASSIST_SPRITE_STATE_CLEANUP:
        for (i = 0; i < ctx->pawCount; i++) {
            Sprite_DeleteAndFreeResources(ctx->paws[i].sprite);
        }

        ctx->state++;
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

static const s16 sAssistPawOffsets[ASSIST_SPRITE_CONFIG_COUNT][4] = {
    [0] = { [ASSIST_SPRITE_PAW_OFFSET_X] = 40, [ASSIST_SPRITE_PAW_OFFSET_Y] = 30, [ASSIST_SPRITE_PAW_RANDOM_X] = 53, [ASSIST_SPRITE_PAW_RANDOM_Y] = 50 },
    [1] = { [ASSIST_SPRITE_PAW_OFFSET_X] = 93, [ASSIST_SPRITE_PAW_OFFSET_Y] = 30, [ASSIST_SPRITE_PAW_RANDOM_X] = 53, [ASSIST_SPRITE_PAW_RANDOM_Y] = 50 },
    [2] = { [ASSIST_SPRITE_PAW_OFFSET_X] = 146, [ASSIST_SPRITE_PAW_OFFSET_Y] = 30, [ASSIST_SPRITE_PAW_RANDOM_X] = 53, [ASSIST_SPRITE_PAW_RANDOM_Y] = 50 },
    [3] = { [ASSIST_SPRITE_PAW_OFFSET_X] = 40, [ASSIST_SPRITE_PAW_OFFSET_Y] = 80, [ASSIST_SPRITE_PAW_RANDOM_X] = 53, [ASSIST_SPRITE_PAW_RANDOM_Y] = 50 },
    [4] = { [ASSIST_SPRITE_PAW_OFFSET_X] = 93, [ASSIST_SPRITE_PAW_OFFSET_Y] = 80, [ASSIST_SPRITE_PAW_RANDOM_X] = 53, [ASSIST_SPRITE_PAW_RANDOM_Y] = 50 },
    [5] = { [ASSIST_SPRITE_PAW_OFFSET_X] = 146, [ASSIST_SPRITE_PAW_OFFSET_Y] = 80, [ASSIST_SPRITE_PAW_RANDOM_X] = 53, [ASSIST_SPRITE_PAW_RANDOM_Y] = 50 }
};

void BattleAnimSpriteFunc_Assist(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    SpriteTemplate template;

    AssistSpriteContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(AssistSpriteContext));
    GF_ASSERT(ctx != NULL);

    ctx->unused0 = 0;
    ctx->state = ASSIST_SPRITE_STATE_WAIT_FOR_SCALE;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->battleAnimSys = system;

    template = BattleAnimSystem_GetLastSpriteTemplate(system);
    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, BATTLE_ANIM_DEFAULT_ALPHA, BATTLE_ANIM_DEFAULT_ALPHA);

    ctx->pawCount = BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, ASSIST_SPRITE_VAR_PAW_COUNT);
    ctx->pawCount = ASSIST_SPRITE_DEFAULT_PAW_COUNT;

    ctx->paws[0].sprite = sprite;
    int posOffsetIdx = 0;

    for (int i = 0; i < ctx->pawCount; i++) {
        if (i != 0) {
            ctx->paws[i].sprite = SpriteSystem_NewSprite(ctx->spriteSys, ctx->spriteMan, &template);
        }

        ManagedSprite *pawSprite = ctx->paws[i].sprite;

        ctx->paws[i].state = 0;
        ctx->paws[i].step = 0;
        ctx->paws[i].delay = ASSIST_SPRITE_PAW_BASE_DELAY + (LCRNG_Next() % ASSIST_SPRITE_PAW_RANDOM_DELAY) + i;
        ctx->paws[i].destIndex = LCRNG_Next() % ASSIST_SPRITE_CONFIG_COUNT;
        ctx->paws[i].scale = ASSIST_SPRITE_PAW_SCALE;
        ctx->paws[i].battleAnimSys = ctx->battleAnimSys;
        ctx->paws[i].spriteSys = ctx->spriteSys;
        ctx->paws[i].spriteMan = ctx->spriteMan;
        ctx->paws[i].outerState = &ctx->pawStates[i];

        s16 x = sAssistPawOffsets[posOffsetIdx][ASSIST_SPRITE_PAW_OFFSET_X] + (LCRNG_Next() % sAssistPawOffsets[posOffsetIdx][ASSIST_SPRITE_PAW_RANDOM_X]);
        s16 y = sAssistPawOffsets[posOffsetIdx][ASSIST_SPRITE_PAW_OFFSET_Y] + (LCRNG_Next() % sAssistPawOffsets[posOffsetIdx][ASSIST_SPRITE_PAW_RANDOM_Y]);

        ManagedSprite_SetPositionXY(pawSprite, x, y);
        ManagedSprite_SetAffineOverwriteMode(pawSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetAffineScale(pawSprite, ctx->paws[i].scale, ctx->paws[i].scale);
        ManagedSprite_SetDrawFlag(pawSprite, FALSE);

        BattleAnimSystem_StartAnimTaskEx(system, BattleAnimTask_AssistPaw, &ctx->paws[i], ASSIST_SPRITE_TASK_BASE_PRIORITY - 1);

        posOffsetIdx++;
        posOffsetIdx %= ASSIST_SPRITE_CONFIG_COUNT;
    }

    BattleAnimSystem_StartAnimTaskEx(system, BattleAnimTask_AssistSprite, ctx, ASSIST_SPRITE_TASK_BASE_PRIORITY + 1);
}

static void BattleAnimTask_Camouflage(SysTask *task, void *param)
{
    CamouflageContext *ctx = param;

    switch (ctx->common.state) {
    case CAMOUFLAGE_STATE_INIT: {
        PokemonSprite *attackerSprite = BattleAnimSystem_GetBattlerSprite(
            ctx->common.battleAnimSys,
            BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys));
        PokemonSprite_SetAttribute(attackerSprite, MON_SPRITE_HIDE, TRUE);
        ctx->common.state++;
    } break;
    case CAMOUFLAGE_STATE_FADE_OUT:
        if (AlphaFadeContext_IsDone(&ctx->alpha) == FALSE) {
            break;
        }

        ctx->timer = 0;
        ctx->bgScroll = BgScrollContext_New(
            CAMOUFLAGE_BG_SCROLL_START_Y,
            CAMOUFLAGE_BG_SCROLL_END_Y,
            CAMOUFLAGE_BG_SCROLL_ANGLE_STEP,
            CAMOUFLAGE_BG_SCROLL_AMPLITUDE,
            CAMOUFLAGE_BG_SCROLL_SPEED,
            BattleAnimSystem_GetBgID(ctx->common.battleAnimSys, BATTLE_ANIM_BG_BASE),
            0,
            BattleAnimUtil_MakeBgOffsetValue(0, 0),
            BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys));
        ctx->common.state++;
        break;
    case CAMOUFLAGE_STATE_SCROLL:
        ctx->timer++;
        if (ctx->timer < CAMOUFLAGE_BG_SCROLL_FRAMES) {
            break;
        }

        BgScrollContext_Free(ctx->bgScroll);
        AlphaFadeContext_Init(
            &ctx->alpha,
            CAMOUFLAGE_SPRITE_END_ALPHA,
            CAMOUFLAGE_SPRITE_START_ALPHA,
            CAMOUFLAGE_OTHER_END_ALPHA,
            CAMOUFLAGE_OTHER_START_ALPHA,
            CAMOUFLAGE_ALPHA_FADE_FRAMES);
        ctx->common.state++;
        break;
    case CAMOUFLAGE_STATE_FADE_IN: {
        if (AlphaFadeContext_IsDone(&ctx->alpha) == FALSE) {
            break;
        }

        PokemonSprite *attackerSprite = BattleAnimSystem_GetBattlerSprite(
            ctx->common.battleAnimSys,
            BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys));
        PokemonSprite_SetAttribute(attackerSprite, MON_SPRITE_HIDE, FALSE);
        ctx->common.state++;
    } break;
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        BattleAnimSystem_UnloadBaseBg(ctx->common.battleAnimSys, BATTLE_BG_BASE);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    ManagedSprite_TickFrame(ctx->xluSprite);
    ManagedSprite_TickFrame(ctx->maskSprite);
    SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
}

void BattleAnimScriptFunc_Camouflage(BattleAnimSystem *system)
{
    CamouflageContext *ctx = BattleAnimUtil_Alloc(system, sizeof(CamouflageContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->maskSprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);
    ManagedSprite_SetExplicitOamMode(ctx->maskSprite, GX_OAM_MODE_OBJWND);

    // Mask background to attacker sprite
    GX_SetVisibleWnd(GX_WNDMASK_OW);
    G2_SetWndOutsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_EFFECT | GX_WND_PLANEMASK_OBJ, FALSE);
    G2_SetWndOBJInsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_BASE | GX_WND_PLANEMASK_OBJ, FALSE);

    ctx->xluSprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_1);
    ManagedSprite_SetExplicitOamMode(ctx->xluSprite, GX_OAM_MODE_XLU);

    AlphaFadeContext_Init(
        &ctx->alpha,
        CAMOUFLAGE_SPRITE_START_ALPHA,
        CAMOUFLAGE_SPRITE_END_ALPHA,
        CAMOUFLAGE_OTHER_START_ALPHA,
        CAMOUFLAGE_OTHER_END_ALPHA,
        CAMOUFLAGE_ALPHA_FADE_FRAMES);

    BattleAnimSystem_LoadBaseBg(ctx->common.battleAnimSys, BATTLE_BG_BASE);

    Bg_ToggleLayer(BATTLE_BG_BASE, TRUE);
    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_Camouflage, ctx);
}

void BattleAnimUtil_TickSpriteIfVisible(ManagedSprite *sprite)
{
    if (ManagedSprite_GetDrawFlag(sprite) == TRUE) {
        ManagedSprite_TickFrame(sprite);
    }
}

static void ov12_0222E25C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222E25C *v0 = (UnkStruct_ov12_0222E25C *)param1;

    if (v0->unk_1C <= 0) {
        BattleAnimUtil_TickSpriteIfVisible(v0->unk_28[2]);
        BattleAnimUtil_TickSpriteIfVisible(v0->unk_28[3]);
    } else {
        v0->unk_1C--;
    }

    BattleAnimUtil_TickSpriteIfVisible(v0->unk_28[0]);
    BattleAnimUtil_TickSpriteIfVisible(v0->unk_28[1]);

    {
        int v1;
        int v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            v0->unk_1E[v1]++;

            if (v0->unk_1E[v1] >= 40) {
                ManagedSprite_SetDrawFlag(v0->unk_28[v1], 0);
                v2++;
            }
        }

        if (v2 == 4) {
            for (v1 = 0; v1 < 4; v1++) {
                Sprite_DeleteAndFreeResources(v0->unk_28[v1]);
            }

            BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSys, param0);
            Heap_Free(v0);
            return;
        }
    }

    SpriteSystem_DrawSprites(v0->unk_00.primarySpriteManager);
}

void ov12_0222E2F8(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222E25C *v0 = NULL;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222E25C));
    v0->unk_1C = 10;

    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    {
        int v1;
        SpriteTemplate v2;

        v2 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00.battleAnimSys);

        v0->unk_28[0] = param3;
        v0->unk_1E[0] = 0;

        for (v1 = 1; v1 < 4; v1++) {
            v0->unk_1E[v1] = 0;
            v0->unk_28[v1] = SpriteSystem_NewSprite(v0->unk_00.spriteSystem, v0->unk_00.primarySpriteManager, &v2);
        }

        ManagedSprite_SetFlipMode(v0->unk_28[0], 1);
        ManagedSprite_SetFlipMode(v0->unk_28[1], 1);

        {
            Point2D v3;
        }

        ManagedSprite_OffsetPositionXY(v0->unk_28[0], -32, 0);
        ManagedSprite_OffsetPositionXY(v0->unk_28[1], -32, +32);
        ManagedSprite_OffsetPositionXY(v0->unk_28[2], +32, 0);
        ManagedSprite_OffsetPositionXY(v0->unk_28[3], +32, +32);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSys, ov12_0222E25C, v0);
}

static void ov12_0222E390(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222E390 *v0 = (UnkStruct_ov12_0222E390 *)param1;

    {
        int v1;
        int v2 = 0;

        for (v1 = 0; v1 < 4; v1++) {
            v0->unk_22[v1]++;

            if (v0->unk_22[v1] < 20) {
                continue;
            }

            BattleAnimUtil_TickSpriteIfVisible(v0->unk_2C[v1]);

            if (v0->unk_22[0] == 110) {
                BattleAnimUtil_SetSpriteBgBlending(v0->unk_00.battleAnimSys, 0xffffffff, 0xffffffff);

                ManagedSprite_SetExplicitOamMode(v0->unk_2C[0], GX_OAM_MODE_XLU);
                ManagedSprite_SetExplicitOamMode(v0->unk_2C[1], GX_OAM_MODE_XLU);
                ManagedSprite_SetExplicitOamMode(v0->unk_2C[2], GX_OAM_MODE_XLU);
                ManagedSprite_SetExplicitOamMode(v0->unk_2C[3], GX_OAM_MODE_XLU);

                v0->unk_54 = 15;
                v0->unk_58 = 0;
            }
        }

        if (v0->unk_22[0] == 40 + 10) {
            v0->unk_3C[0] = PaletteFadeContext_New(v0->unk_00.paletteData, BattleAnimSystem_GetHeapID(v0->unk_00.battleAnimSys), 2, v0->unk_1C * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 50 + 10) {
            v0->unk_3C[1] = PaletteFadeContext_New(v0->unk_00.paletteData, BattleAnimSystem_GetHeapID(v0->unk_00.battleAnimSys), 2, v0->unk_1C * 16, 16, -2, 2, 14, 0, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 60 + 10) {
            v0->unk_3C[2] = PaletteFadeContext_New(v0->unk_00.paletteData, BattleAnimSystem_GetHeapID(v0->unk_00.battleAnimSys), 2, v0->unk_1C * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 70 + 10) {
            v0->unk_3C[3] = PaletteFadeContext_New(v0->unk_00.paletteData, BattleAnimSystem_GetHeapID(v0->unk_00.battleAnimSys), 2, v0->unk_1C * 16, 16, -2, 2, 14, 0, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 80 + 10) {
            v0->unk_3C[4] = PaletteFadeContext_New(v0->unk_00.paletteData, BattleAnimSystem_GetHeapID(v0->unk_00.battleAnimSys), 2, v0->unk_1C * 16, 16, -2, 2, 0, 14, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 90 + 10) {
            v0->unk_3C[5] = PaletteFadeContext_New(v0->unk_00.paletteData, BattleAnimSystem_GetHeapID(v0->unk_00.battleAnimSys), 2, v0->unk_1C * 16, 16, -2, 2, 14, 0, 0xFFFF, 1002);
        }

        if (v0->unk_22[0] == 110) {
            BattleAnimUtil_SetSpriteBgBlending(v0->unk_00.battleAnimSys, 0xffffffff, 0xffffffff);

            ManagedSprite_SetExplicitOamMode(v0->unk_2C[0], GX_OAM_MODE_XLU);
            ManagedSprite_SetExplicitOamMode(v0->unk_2C[1], GX_OAM_MODE_XLU);
            ManagedSprite_SetExplicitOamMode(v0->unk_2C[2], GX_OAM_MODE_XLU);
            ManagedSprite_SetExplicitOamMode(v0->unk_2C[3], GX_OAM_MODE_XLU);

            v0->unk_54 = 15;
            v0->unk_58 = 0;
        }

        if (v0->unk_22[0] >= 110) {
            if (v0->unk_54 > 0) {
                v0->unk_54--;
            }

            if (v0->unk_58 < 15) {
                v0->unk_58++;
            }

            G2_ChangeBlendAlpha(v0->unk_54, v0->unk_58);

            if ((v0->unk_54 == 0) && (v0->unk_58 == 15)) {
                v2 = 4;
            }
        }

        if (v2 == 4) {
            for (v1 = 0; v1 < 4; v1++) {
                Sprite_DeleteAndFreeResources(v0->unk_2C[v1]);
            }

            for (v1 = 0; v1 < 6; v1++) {
                PaletteFadeContext_Free(v0->unk_3C[v1]);
            }

            BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSys, param0);
            Heap_Free(v0);
            return;
        }
    }

    SpriteSystem_DrawSprites(v0->unk_00.primarySpriteManager);
}

void ov12_0222E61C(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222E390 *v0 = NULL;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222E390));
    v0->unk_20 = 10;

    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    {
        int v1;
        s16 v2, v3;
        SpriteTemplate v4;

        v4 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00.battleAnimSys);

        v0->unk_2C[0] = param3;
        v0->unk_22[0] = 0;

        for (v1 = 1; v1 < 4; v1++) {
            v0->unk_22[v1] = (LCRNG_Next() % 4) + (v1 * 5);
            v0->unk_2C[v1] = SpriteSystem_NewSprite(v0->unk_00.spriteSystem, v0->unk_00.primarySpriteManager, &v4);
        }

        ManagedSprite_SetFlipMode(v0->unk_2C[1], 1);
        ManagedSprite_SetFlipMode(v0->unk_2C[2], 1);

        {
            s16 v5;
            s16 v6;
            int v7;
            PokemonSprite *v8;

            v7 = BattleAnimSystem_GetAttacker(param0);
            v8 = BattleAnimSystem_GetBattlerSprite(param0, v7);
            v5 = PokemonSprite_GetAttribute(v8, MON_SPRITE_X_CENTER);
            v6 = PokemonSprite_GetAttribute(v8, MON_SPRITE_Y_CENTER);
            v6 += PokemonSprite_GetAttribute(v8, MON_SPRITE_SHADOW_HEIGHT);

            if (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x3) {
                v6 = 140;
            } else {
                v6 = 84;
            }

            for (v1 = 0; v1 < 4; v1++) {
                ManagedSprite_SetPositionXY(v0->unk_2C[v1], v5, v6);
            }
        }

        if (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x3) {
            v3 = 24;
            v2 = 16;

            ManagedSprite_SetPriority(v0->unk_2C[0], 10);
            ManagedSprite_SetPriority(v0->unk_2C[2], 10);
            ManagedSprite_SetPriority(v0->unk_2C[1], 18);
            ManagedSprite_SetPriority(v0->unk_2C[3], 18);
        } else {
            v3 = 0;
            v2 = 8;

            ManagedSprite_SetPriority(v0->unk_2C[0], 18);
            ManagedSprite_SetPriority(v0->unk_2C[2], 18);
            ManagedSprite_SetPriority(v0->unk_2C[1], 10);
            ManagedSprite_SetPriority(v0->unk_2C[3], 10);
        }

        v2 = 4;
        v3 = 0;

        ManagedSprite_OffsetPositionXY(v0->unk_2C[0], -32, +v3);
        ManagedSprite_OffsetPositionXY(v0->unk_2C[3], -40, +v2);
        ManagedSprite_OffsetPositionXY(v0->unk_2C[2], +32, +v3);
        ManagedSprite_OffsetPositionXY(v0->unk_2C[1], +40, +v2);
    }

    v0->unk_1C = ManagedSprite_GetExplicitPaletteOffset(v0->unk_2C[0]);
    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSys, ov12_0222E390, v0);
}
