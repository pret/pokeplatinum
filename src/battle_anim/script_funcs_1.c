#include "battle_anim/script_funcs_1.h"

#include "nitro/hw/common/lcd.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"
#include "battle_anim/ov12_022380BC.h"
#include "battle_anim/script_funcs_4.h"
#include "battle_anim/struct_ov12_022380DC.h"

#include "battle_script_battlers.h"
#include "bg_window.h"
#include "heap.h"
#include "math_util.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

// -------------------------------------------------------------------
// Shadow Punch
// -------------------------------------------------------------------
typedef struct ShadowPunchContext {
    BattleAnimScriptFuncCommon common;

    // spriteInfo.monSprite is the main sprite
    // spriteInfo.hwSprite is the first afterimage sprite
    // sprite is the second afterimage sprite
    BattleAnimSpriteInfo spriteInfo;
    ManagedSprite *sprite;
    XYTransformContext mainPos;
    XYTransformContext afterimage1Pos;
    XYTransformContext afterimage2Pos;
    u8 iteration;
    u8 unused;
    u8 spriteAlpha;
    u8 bgAlpha;
    s16 attackerHeight;
} ShadowPunchContext;

enum ShadowPunchState {
    SHADOW_PUNCH_STATE_INIT = 0,
    SHADOW_PUNCH_STATE_MOVE,
};

#define SHADOW_PUNCH_SPRITE_ALPHA                  8
#define SHADOW_PUNCH_BG_ALPHA                      8
#define SHADOW_PUNCH_OFFSET_X                      48
#define SHADOW_PUNCH_MOVE_RIGHT_MAIN_FRAMES        3
#define SHADOW_PUNCH_MOVE_RIGHT_AFTERIMAGE1_FRAMES 6
#define SHADOW_PUNCH_MOVE_RIGHT_AFTERIMAGE2_FRAMES 8
#define SHADOW_PUNCH_MOVE_LEFT_MAIN_FRAMES         3
#define SHADOW_PUNCH_MOVE_LEFT_AFTERIMAGE1_FRAMES  6
#define SHADOW_PUNCH_MOVE_LEFT_AFTERIMAGE2_FRAMES  9
#define SHADOW_PUNCH_AFTERIMAGE1_R                 196
#define SHADOW_PUNCH_AFTERIMAGE1_G                 196
#define SHADOW_PUNCH_AFTERIMAGE1_B                 196
#define SHADOW_PUNCH_AFTERIMAGE2_R                 196
#define SHADOW_PUNCH_AFTERIMAGE2_G                 196
#define SHADOW_PUNCH_AFTERIMAGE2_B                 196

// -------------------------------------------------------------------
// Frenzy Plant Sprite
// -------------------------------------------------------------------

#define FRENZY_PLANT_ROOT_COUNT 8

typedef struct FrenzyPlantSpriteContext {
    BattleAnimScriptFuncCommon common;
    s16 unused;
    s16 lifetime[FRENZY_PLANT_ROOT_COUNT];
    ManagedSprite *sprites[FRENZY_PLANT_ROOT_COUNT];
    XYTransformContext pos;
} FrenzyPlantSpriteContext;

#define FRENZY_PLANT_ROOT_MOVE_DELAY 32 // Frames before a root starts animating
#define FRENZY_PLANT_ROOT_LIFETIME   160 // Frames before a root disappears

// -------------------------------------------------------------------
// Role Play
// -------------------------------------------------------------------
enum RolePlaySprite {
    ROLE_PLAY_SPRITE_ATTACKER_0 = 0, // Attacker's sprite
    ROLE_PLAY_SPRITE_ATTACKER_1, // Copy of attacker's sprite
    ROLE_PLAY_SPRITE_DEFENDER, // Defender's sprite
    ROLE_PLAY_SPRITE_COUNT
};

typedef struct RolePlayContext {
    BattleAnimScriptFuncCommon common;
    ManagedSprite *sprites[ROLE_PLAY_SPRITE_COUNT];
    int blendStep;
    f32 scaleX;
    f32 scaleY;
    u8 spriteAlpha;
    u8 bgAlpha;
    s8 scaleDirX;
    PaletteFadeContext *palFades[2];
} RolePlayContext;

enum RolePlayState {
    ROLE_PLAY_STATE_SCALE = 0,
    ROLE_PLAY_STATE_WAIT_FOR_FADE,
    ROLE_PLAY_STATE_CLEANUP,
};

#define ROLE_PLAY_PAL_FADE_INTERVAL   0
#define ROLE_PLAY_PAL_FADE_STEP_SIZE  1
#define ROLE_PLAY_PAL_FADE_START_FRAC 0
#define ROLE_PLAY_PAL_FADE_END_FRAC   15
#define ROLE_PLAY_PAL_FADE_COLOR      RGBA_WHITE
#define ROLE_PLAY_PAL_FADE_PRIORITY   1100
#define ROLE_PLAY_ATTACKER_X_OFFSET   (-32)
#define ROLE_PLAY_MIN_ALPHA           0
#define ROLE_PLAY_MAX_ALPHA           15
#define ROLE_PLAY_BLEND_STEPS         14
#define ROLE_PLAY_SCALE_STEP          0.2

// -------------------------------------------------------------------
// Snatch
// -------------------------------------------------------------------
#define SNATCH_MAX_ITERATIONS 3

typedef struct SnatchContext {
    BattleAnimScriptFuncCommon common;
    BattleAnimSpriteInfo spriteInfo;
    XYTransformContext pos;
    s16 dir;
    BOOL doRev;
    Point2D battlerPositions[2];
    int unk_64;
    int iteration;
    int xpos[SNATCH_MAX_ITERATIONS];
    int ypos[SNATCH_MAX_ITERATIONS];
    int zpos[SNATCH_MAX_ITERATIONS];
} SnatchContext;

enum SnatchState {
    SNATCH_STATE_INIT = 0,
    SNATCH_STATE_MOVE,
};

#define SNATCH_IN_FRONT_ZPOS 10
#define SNATCH_BEHIND_ZPOS   -650
#define SNATCH_MOVE_FRAMES   15
#define SNATCH_VAR_TARGET    0

// -------------------------------------------------------------------
// Sketch
// -------------------------------------------------------------------
typedef struct SketchContext {
    int viewHeight;
    int bottom;
    int left;
    int windowY2;
    int viewWidth;
    int origin;
    int defenderAlpha;
    PokemonSprite *defenderSprite;
    BattleAnimScriptFuncCommon common;
    BattleAnimSpriteInfo unk_3C;
} SketchContext;

enum SketchState {
    SKETCH_STATE_SET_PARTIAL_DRAW = 0,
    SKETCH_STATE_INCREASE_Y,
    SKETCH_STATE_INCREASE_Y_CHECK,
    SKETCH_STATE_DISABLE_PARTIAL_DRAW,
};

#define SKETCH_STEP_SIZE_Y 2

static void BattleAnimTask_ShadowPunch(SysTask *task, void *param)
{
    ShadowPunchContext *ctx = param;

    switch (ctx->common.state) {
    case SHADOW_PUNCH_STATE_INIT:
        if (ctx->iteration == 0) {
            PosLerpContext_Init(
                &ctx->mainPos,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.y,
                ctx->spriteInfo.pos.y,
                SHADOW_PUNCH_MOVE_RIGHT_MAIN_FRAMES);
            PosLerpContext_Init(
                &ctx->afterimage1Pos,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                SHADOW_PUNCH_MOVE_RIGHT_AFTERIMAGE1_FRAMES);
            PosLerpContext_Init(
                &ctx->afterimage2Pos,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                SHADOW_PUNCH_MOVE_RIGHT_AFTERIMAGE2_FRAMES);
        } else {
            PosLerpContext_Init(
                &ctx->mainPos,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.y,
                ctx->spriteInfo.pos.y,
                SHADOW_PUNCH_MOVE_LEFT_MAIN_FRAMES);
            PosLerpContext_Init(
                &ctx->afterimage1Pos,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                SHADOW_PUNCH_MOVE_LEFT_AFTERIMAGE1_FRAMES);
            PosLerpContext_Init(
                &ctx->afterimage2Pos,
                ctx->spriteInfo.pos.x + SHADOW_PUNCH_OFFSET_X,
                ctx->spriteInfo.pos.x,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                ctx->spriteInfo.pos.y + ctx->attackerHeight,
                SHADOW_PUNCH_MOVE_LEFT_AFTERIMAGE2_FRAMES);
        }

        ctx->iteration++;
        ctx->common.state++;
        break;
    case SHADOW_PUNCH_STATE_MOVE: {
        int done = 0;

        if (PosLerpContext_UpdateAndApplyToSprite(&ctx->afterimage1Pos, ctx->spriteInfo.hwSprite) == FALSE) {
            done++;
        }

        if (PosLerpContext_UpdateAndApplyToMon(&ctx->mainPos, ctx->spriteInfo.monSprite) == FALSE) {
            done++;
        }

        if (PosLerpContext_UpdateAndApplyToSprite(&ctx->afterimage2Pos, ctx->sprite) == FALSE) {
            done++;
        }

        if (done >= 3) {
            if (ctx->iteration == 1) {
                ctx->common.state--;
            } else {
                ctx->common.state++;
            }
        }
    } break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        BattleAnimUtil_Free(ctx);
        ctx = NULL;
        return;
    }

    ManagedSprite_TickFrame(ctx->spriteInfo.hwSprite);
    SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
}

void BattleAnimScriptFunc_ShadowPunch(BattleAnimSystem *system)
{
    ShadowPunchContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ShadowPunchContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->unused = 0;
    ctx->spriteAlpha = SHADOW_PUNCH_SPRITE_ALPHA;
    ctx->bgAlpha = SHADOW_PUNCH_BG_ALPHA;

    BattleAnimUtil_SetSpriteBgBlending(ctx->common.battleAnimSys, BATTLE_ANIM_DEFAULT_ALPHA, BATTLE_ANIM_DEFAULT_ALPHA);
    G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);

    ctx->spriteInfo.monSprite = BattleAnimSystem_GetBattlerSprite(ctx->common.battleAnimSys, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys));
    ctx->spriteInfo.pos.x = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_X_CENTER);
    ctx->spriteInfo.pos.y = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER);
    ctx->spriteInfo.hwSprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);
    ctx->sprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_1);
    ctx->attackerHeight = -PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_SHADOW_HEIGHT);

    int memberIndex = BattleAnimSystem_GetBattlerSpritePaletteIndex(ctx->common.battleAnimSys, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys));
    int narcID = BattleAnimSystem_GetBattlerSpriteNarcID(ctx->common.battleAnimSys, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys));

    ManagedSprite *sprite = ctx->spriteInfo.hwSprite;
    ManagedSprite_SetExplicitPriority(sprite, BattleAnimSystem_GetPokemonSpritePriority(ctx->common.battleAnimSys) + 1);
    int dst = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(sprite->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

    PaletteData_LoadBufferFromFileStartWithTint(
        BattleAnimSystem_GetPaletteData(ctx->common.battleAnimSys),
        narcID,
        memberIndex,
        BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys),
        PLTTBUF_MAIN_OBJ,
        PALETTE_SIZE_BYTES,
        PLTT_DEST(dst),
        SHADOW_PUNCH_AFTERIMAGE1_R,
        SHADOW_PUNCH_AFTERIMAGE1_G,
        SHADOW_PUNCH_AFTERIMAGE1_B);
    ManagedSprite_SetExplicitOamMode(sprite, GX_OAM_MODE_XLU);

    sprite = ctx->sprite;
    ManagedSprite_SetExplicitPriority(sprite, BattleAnimSystem_GetPokemonSpritePriority(ctx->common.battleAnimSys) + 1);
    dst = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(sprite->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

    PaletteData_LoadBufferFromFileStartWithTint(
        BattleAnimSystem_GetPaletteData(ctx->common.battleAnimSys),
        narcID,
        memberIndex,
        BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys),
        PLTTBUF_MAIN_OBJ,
        PALETTE_SIZE_BYTES,
        PLTT_DEST(dst),
        SHADOW_PUNCH_AFTERIMAGE2_R,
        SHADOW_PUNCH_AFTERIMAGE2_G,
        SHADOW_PUNCH_AFTERIMAGE2_B);
    ManagedSprite_SetExplicitOamMode(sprite, GX_OAM_MODE_XLU);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_ShadowPunch, ctx);
}

static void BattleAnimTask_FrenzyPlantSprite(SysTask *task, void *param)
{
    FrenzyPlantSpriteContext *ctx = param;

    int i;
    int invisibleRoots = 0;

    for (i = 0; i < FRENZY_PLANT_ROOT_COUNT; i++) {
        ctx->lifetime[i]++;

        if (ctx->lifetime[i] < FRENZY_PLANT_ROOT_MOVE_DELAY) {
            continue;
        }

        BattleAnimUtil_TickSpriteIfVisible(ctx->sprites[i]);

        if (ctx->lifetime[i] >= FRENZY_PLANT_ROOT_LIFETIME) {
            ManagedSprite_SetDrawFlag(ctx->sprites[i], FALSE);
            invisibleRoots++;
        }
    }

    if (invisibleRoots == FRENZY_PLANT_ROOT_COUNT) {
        for (i = 0; i < FRENZY_PLANT_ROOT_COUNT; i++) {
            Sprite_DeleteAndFreeResources(ctx->sprites[i]);
        }

        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->common.primarySpriteManager);
}

void BattleAnimSpriteFunc_FrenzyPlant(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    FrenzyPlantSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(FrenzyPlantSpriteContext));
    ctx->unused = 10;

    BattleAnimSystem_GetCommonData(system, &ctx->common);

    int i;
    // Separate declaration and assignment required to match
    SpriteTemplate template;

    template = BattleAnimSystem_GetLastSpriteTemplate(ctx->common.battleAnimSys);
    ctx->sprites[0] = sprite;

    for (i = 1; i < FRENZY_PLANT_ROOT_COUNT; i++) {
        ctx->sprites[i] = SpriteSystem_NewSprite(ctx->common.spriteSystem, ctx->common.primarySpriteManager, &template);

        if (i % 2) {
            ManagedSprite_SetFlipMode(ctx->sprites[i], TRUE);
        }
    }

    PokemonSprite *monSprite;
    s16 attackerX, defenderX, attackerY, defenderY;

    monSprite = BattleAnimSystem_GetBattlerSprite(ctx->common.battleAnimSys, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys));
    attackerX = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_X_CENTER);
    attackerY = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_Y_CENTER);
    monSprite = BattleAnimSystem_GetBattlerSprite(ctx->common.battleAnimSys, BattleAnimSystem_GetDefender(ctx->common.battleAnimSys));
    defenderX = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_X_CENTER);
    defenderY = PokemonSprite_GetAttribute(monSprite, MON_SPRITE_Y_CENTER);

    // This section here evenly spreads the roots between attacker and defender
    PosLerpContext_Init(&ctx->pos, attackerX, defenderX, attackerY, defenderY, (FRENZY_PLANT_ROOT_COUNT + 2) * 2);

    BOOL active;
    int frame = 0;
    int spriteIdx = 0;
    BOOL skip = FALSE;
    if (BattleAnimUtil_GetBattlerSide(ctx->common.battleAnimSys, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys)) == BTLSCR_ENEMY) {
        skip = TRUE;
    }

    do {
        active = PosLerpContext_Update(&ctx->pos);

        if (frame % 2) {
            if (skip == FALSE) {
                if (spriteIdx < 8) {
                    ManagedSprite_SetPositionXY(ctx->sprites[spriteIdx], ctx->pos.x, ctx->pos.y);
                    spriteIdx++;
                }
            } else {
                skip = FALSE;
            }
        }

        frame++;
    } while (active == TRUE);

    int baseBgPriority = BattleAnimSystem_GetBgPriority(ctx->common.battleAnimSys, BATTLE_ANIM_BG_BASE);
    int effectBgPriority = BattleAnimSystem_GetBgPriority(ctx->common.battleAnimSys, BATTLE_ANIM_BG_EFFECT);

    for (i = 0; i < FRENZY_PLANT_ROOT_COUNT; i++) {
        ctx->lifetime[i] = (FRENZY_PLANT_ROOT_COUNT - i) * 4;

        if (BattleAnimSystem_IsContest(ctx->common.battleAnimSys) == FALSE) {
            if (BattleAnimUtil_GetBattlerSide(ctx->common.battleAnimSys, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys)) == 0x3) {
                if (i < 4) {
                    ManagedSprite_SetExplicitPriority(ctx->sprites[i], effectBgPriority);
                } else {
                    ManagedSprite_SetExplicitPriority(ctx->sprites[i], baseBgPriority);
                }
            } else {
                if (i >= 4) {
                    ManagedSprite_SetExplicitPriority(ctx->sprites[i], effectBgPriority);
                } else {
                    ManagedSprite_SetExplicitPriority(ctx->sprites[i], baseBgPriority);
                }
            }

            ManagedSprite_SetPriority(ctx->sprites[i], FRENZY_PLANT_ROOT_COUNT - i);
        } else {
            ManagedSprite_SetPriority(ctx->sprites[i], i);
            ManagedSprite_SetExplicitPriority(ctx->sprites[i], effectBgPriority);
        }
    }

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_FrenzyPlantSprite, ctx);
}

static void BattleAnimTask_RolePlay(SysTask *task, void *param)
{
    RolePlayContext *ctx = param;

    switch (ctx->common.state) {
    case ROLE_PLAY_STATE_SCALE:
        if (ctx->blendStep > ROLE_PLAY_BLEND_STEPS) {
            ctx->scaleY -= (f32)ROLE_PLAY_SCALE_STEP;
            ctx->scaleX += (f32)ROLE_PLAY_SCALE_STEP;

            if (ctx->scaleY <= ROLE_PLAY_SCALE_STEP) {
                ctx->common.state++;
                ManagedSprite_SetDrawFlag(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], FALSE);
            } else {
                ManagedSprite_SetAffineScale(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], ctx->scaleX * ctx->scaleDirX, ctx->scaleY);
            }
        } else {
            ctx->spriteAlpha++;
            ctx->bgAlpha--;
            G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);
            ctx->blendStep++;
        }
        break;
    case ROLE_PLAY_STATE_WAIT_FOR_FADE:
        if (PaletteFadeContext_IsActive(ctx->palFades[BATTLER_ROLE_DEFENDER]) == FALSE) {
            PaletteFadeContext_Free(ctx->palFades[BATTLER_ROLE_ATTACKER]);
            PaletteFadeContext_Free(ctx->palFades[BATTLER_ROLE_DEFENDER]);

            int palIndex = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(ctx->sprites[ROLE_PLAY_SPRITE_DEFENDER]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

            ctx->palFades[BATTLER_ROLE_DEFENDER] = PaletteFadeContext_New(
                ctx->common.paletteData,
                BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys),
                PLTTBUF_MAIN_OBJ,
                PLTT_DEST(palIndex),
                PALETTE_SIZE,
                ROLE_PLAY_PAL_FADE_INTERVAL,
                ROLE_PLAY_PAL_FADE_STEP_SIZE,
                ROLE_PLAY_PAL_FADE_END_FRAC,
                ROLE_PLAY_PAL_FADE_START_FRAC,
                ROLE_PLAY_PAL_FADE_COLOR,
                ROLE_PLAY_PAL_FADE_PRIORITY);
            ctx->common.state++;
        }
        break;
    case ROLE_PLAY_STATE_CLEANUP:
    default:
        if (PaletteFadeContext_IsActive(ctx->palFades[BATTLER_ROLE_DEFENDER]) == FALSE) {
            ManagedSprite_TickFrame(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_1]);
            PaletteFadeContext_Free(ctx->palFades[BATTLER_ROLE_DEFENDER]);
            BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
            Heap_Free(ctx);
            return;
        }
        break;
    }

    ManagedSprite_TickFrame(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0]);
    ManagedSprite_TickFrame(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_1]);
    ManagedSprite_TickFrame(ctx->sprites[ROLE_PLAY_SPRITE_DEFENDER]);
    SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
}

void BattleAnimScriptFunc_RolePlay(BattleAnimSystem *system)
{
    RolePlayContext *ctx = BattleAnimUtil_Alloc(system, sizeof(RolePlayContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0] = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);
    ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_1] = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_1);
    ctx->sprites[ROLE_PLAY_SPRITE_DEFENDER] = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_2);
    ctx->blendStep = 0;

    s16 xOffset = ROLE_PLAY_ATTACKER_X_OFFSET;
    s16 dir = BattleAnimUtil_GetTransformDirectionX(system, BattleAnimSystem_GetAttacker(system));
    xOffset *= dir;

    ctx->scaleX = 1.0f;
    ctx->scaleY = 1.0f;

    if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(system, BATTLER_ROLE_DEFENDER) == TRUE) {
        ctx->scaleDirX = -1;
    } else {
        ctx->scaleDirX = +1;
    }

    s16 posX, posY;
    ManagedSprite_GetPositionXY(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_1], &posX, &posY);
    ManagedSprite_SetPositionXY(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], posX + xOffset, posY);
    ManagedSprite_SetAffineOverwriteMode(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAffineScale(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], ctx->scaleX * ctx->scaleDirX, ctx->scaleY);

    int palIndex = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
    ctx->palFades[BATTLER_ROLE_ATTACKER] = PaletteFadeContext_New(
        ctx->common.paletteData,
        BattleAnimSystem_GetHeapID(system),
        PLTTBUF_MAIN_OBJ,
        PLTT_DEST(palIndex),
        PALETTE_SIZE,
        ROLE_PLAY_PAL_FADE_INTERVAL,
        ROLE_PLAY_PAL_FADE_STEP_SIZE,
        ROLE_PLAY_PAL_FADE_START_FRAC,
        ROLE_PLAY_PAL_FADE_END_FRAC,
        ROLE_PLAY_PAL_FADE_COLOR,
        ROLE_PLAY_PAL_FADE_PRIORITY);

    palIndex = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(ctx->sprites[ROLE_PLAY_SPRITE_DEFENDER]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
    ctx->palFades[BATTLER_ROLE_DEFENDER] = PaletteFadeContext_New(
        ctx->common.paletteData,
        BattleAnimSystem_GetHeapID(system),
        PLTTBUF_MAIN_OBJ,
        PLTT_DEST(palIndex),
        PALETTE_SIZE,
        ROLE_PLAY_PAL_FADE_INTERVAL,
        ROLE_PLAY_PAL_FADE_STEP_SIZE,
        ROLE_PLAY_PAL_FADE_START_FRAC,
        ROLE_PLAY_PAL_FADE_END_FRAC,
        ROLE_PLAY_PAL_FADE_COLOR,
        ROLE_PLAY_PAL_FADE_PRIORITY);

    u8 attacker = BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys);
    u8 attackerType = BattleAnimUtil_GetBattlerType(ctx->common.battleAnimSys, attacker);

    Point2D attackerDefaultPos;
    Point2D attackerPos;
    BattleAnimUtil_GetBattlerTypeDefaultPos(attackerType, BattleAnimSystem_IsContest(ctx->common.battleAnimSys), &attackerDefaultPos);
    ManagedSprite_GetPositionXY(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], &attackerPos.x, &attackerPos.y);

    int face;
    if (BattleAnimUtil_GetBattlerSide(ctx->common.battleAnimSys, attacker) == BTLSCR_PLAYER) {
        face = 0;
        ManagedSprite_SetExplicitPriority(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], 1);
        ManagedSprite_SetPriority(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], 0);
    } else {
        ManagedSprite_SetExplicitPriority(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], 2);
        ManagedSprite_SetPriority(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], 0);
        face = 2;
    }

    u8 defender = BattleAnimSystem_GetDefender(ctx->common.battleAnimSys);
    u8 defenderYOffset = LoadPokemonSpriteYOffset(
        BattleAnimSystem_GetBattlerSpecies(ctx->common.battleAnimSys, defender),
        BattleAnimSystem_GetBattlerGender(ctx->common.battleAnimSys, defender),
        face,
        BattleAnimSystem_GetBattlerForm(ctx->common.battleAnimSys, defender),
        BattleAnimSystem_GetBattlerPersonality(ctx->common.battleAnimSys, defender));

    ManagedSprite_SetPositionXY(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], attackerPos.x, attackerDefaultPos.y + defenderYOffset);
    ManagedSprite_SetDrawFlag(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_0], TRUE);

    ctx->spriteAlpha = ROLE_PLAY_MIN_ALPHA;
    ctx->bgAlpha = ROLE_PLAY_MAX_ALPHA;

    BattleAnimUtil_SetSpriteBgBlending(ctx->common.battleAnimSys, BATTLE_ANIM_DEFAULT_ALPHA, BATTLE_ANIM_DEFAULT_ALPHA);
    G2_ChangeBlendAlpha(ctx->spriteAlpha, ctx->bgAlpha);

    SysTask *task = BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_RolePlay, ctx);
    BattleAnimTask_RolePlay(task, ctx);
}

static void BattleAnimTask_Snatch(SysTask *task, void *param)
{
    SnatchContext *ctx = param;

    switch (ctx->common.state) {
    case SNATCH_STATE_INIT:
        PosLerpContext_Init(
            &ctx->pos,
            ctx->spriteInfo.pos.x,
            ctx->xpos[ctx->iteration],
            ctx->ypos[ctx->iteration],
            ctx->ypos[ctx->iteration],
            SNATCH_MOVE_FRAMES);

        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Z_CENTER, ctx->zpos[ctx->iteration]);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, TRUE);
        ctx->common.state++;
    case SNATCH_STATE_MOVE:
        if (PosLerpContext_Update(&ctx->pos) == FALSE) {
            ctx->iteration++;

            if (ctx->iteration > (SNATCH_MAX_ITERATIONS - 1)) {
                ctx->common.state++;
            } else {
                BattlerSpriteContext battlerSpriteCtx;

                if (ctx->doRev == FALSE) {
                    BattlerSpriteContext_InitFromSystem(ctx->common.battleAnimSys, &battlerSpriteCtx, 3);

                    if (ctx->iteration == 2) {
                        ov12_022382BC(&battlerSpriteCtx, BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys));
                    } else {
                        ov12_022380CC(&battlerSpriteCtx, BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys));
                    }
                }

                ctx->common.state = SNATCH_STATE_INIT;
            }

            ctx->spriteInfo.pos.x = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_X_CENTER);
        }

        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_X_CENTER, ctx->pos.x);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->pos.y);
        break;
    default:
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_SHADOW_SHOULD_FOLLOW_Y, FALSE);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Snatch(BattleAnimSystem *system)
{
    SnatchContext *ctx = BattleAnimUtil_Alloc(system, sizeof(SnatchContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    int attacker = BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys);

    BattleAnimUtil_GetBattlerDefaultPos(
        ctx->common.battleAnimSys,
        BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys),
        &ctx->battlerPositions[BATTLER_ROLE_ATTACKER]);

    BattleAnimUtil_GetBattlerDefaultPos(
        ctx->common.battleAnimSys,
        BattleAnimSystem_GetDefender(ctx->common.battleAnimSys),
        &ctx->battlerPositions[BATTLER_ROLE_DEFENDER]);

    if (BattleAnimUtil_GetBattlerSide(ctx->common.battleAnimSys, attacker) == BTLSCR_PLAYER) {
        ctx->dir = +1;
    } else {
        ctx->dir = -1;
    }

    int attackerSide = BattleAnimUtil_GetBattlerSide(ctx->common.battleAnimSys, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys));
    int defenderSide = BattleAnimUtil_GetBattlerSide(ctx->common.battleAnimSys, BattleAnimSystem_GetDefender(ctx->common.battleAnimSys));

    ctx->doRev = attackerSide == defenderSide;
    ctx->iteration = 0;

    int count;
    BattleAnimUtil_GetBattlerSprites(system, BattleAnimSystem_GetScriptVar(system, SNATCH_VAR_TARGET), &ctx->spriteInfo, &count);

    int height = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER) - ctx->battlerPositions[BATTLER_ROLE_ATTACKER].y;

    if (ctx->dir > 0) {
        ctx->xpos[0] = HW_LCD_WIDTH + MON_SPRITE_FRAME_WIDTH - 1;
        ctx->xpos[1] = -MON_SPRITE_FRAME_WIDTH;
        ctx->xpos[2] = ctx->battlerPositions[BATTLER_ROLE_ATTACKER].x;

        ctx->ypos[0] = ctx->battlerPositions[BATTLER_ROLE_ATTACKER].y + height;
        ctx->ypos[1] = ctx->battlerPositions[BATTLER_ROLE_DEFENDER].y + height;
        ctx->ypos[2] = ctx->battlerPositions[BATTLER_ROLE_ATTACKER].y + height;

        ctx->zpos[0] = SNATCH_IN_FRONT_ZPOS;
        ctx->zpos[1] = SNATCH_BEHIND_ZPOS;
        ctx->zpos[2] = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Z_CENTER);
    } else {
        ctx->xpos[0] = -MON_SPRITE_FRAME_WIDTH;
        ctx->xpos[1] = HW_LCD_WIDTH + MON_SPRITE_FRAME_WIDTH - 1;
        ctx->xpos[2] = ctx->battlerPositions[BATTLER_ROLE_ATTACKER].x;

        ctx->ypos[0] = ctx->battlerPositions[BATTLER_ROLE_ATTACKER].y + height;
        ctx->ypos[1] = ctx->battlerPositions[BATTLER_ROLE_DEFENDER].y + height;
        ctx->ypos[2] = ctx->battlerPositions[BATTLER_ROLE_ATTACKER].y + height;

        ctx->zpos[0] = SNATCH_BEHIND_ZPOS;
        ctx->zpos[1] = SNATCH_IN_FRONT_ZPOS;
        ctx->zpos[2] = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Z_CENTER);
    }

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_Snatch, ctx);
}

static void SetMonPartialDraw(PokemonSprite *sprite, int xOffset, int width, int yOffsetFromBottom, int height)
{
    PokemonSprite_SetPartialDraw(sprite, xOffset, MON_SPRITE_FRAME_HEIGHT - yOffsetFromBottom, width, height);
}

static void BattleAnimTask_Sketch(SysTask *task, void *param)
{
    SketchContext *ctx = param;

    switch (ctx->common.state) {
    case SKETCH_STATE_SET_PARTIAL_DRAW:
        ctx->viewWidth += MON_SPRITE_FRAME_WIDTH - 1;
        if (ctx->viewWidth >= MON_SPRITE_FRAME_WIDTH) {
            ctx->common.state++;
            ctx->origin ^= 1;
            ctx->viewWidth = 0;
        } else {
            // From right or left of the sprite
            if (ctx->origin == 0) {
                SetMonPartialDraw(
                    ctx->defenderSprite,
                    0,
                    ctx->viewWidth,
                    (ctx->viewHeight + SKETCH_STEP_SIZE_Y) * SKETCH_STEP_SIZE_Y,
                    SKETCH_STEP_SIZE_Y);
            } else {
                SetMonPartialDraw(
                    ctx->defenderSprite,
                    MON_SPRITE_FRAME_WIDTH - ctx->viewWidth,
                    ctx->viewWidth,
                    (ctx->viewHeight + SKETCH_STEP_SIZE_Y) * SKETCH_STEP_SIZE_Y,
                    SKETCH_STEP_SIZE_Y);
            }
        }
        break;
    case SKETCH_STATE_INCREASE_Y:
        ctx->bottom -= SKETCH_STEP_SIZE_Y / 2;
        ctx->windowY2 += SKETCH_STEP_SIZE_Y / 2;
        G2_SetWnd0Position(ctx->left, ctx->bottom, ctx->left + MON_SPRITE_FRAME_WIDTH, ctx->windowY2);
        ctx->common.state++;
        break;
    case SKETCH_STATE_INCREASE_Y_CHECK:
        ctx->bottom -= SKETCH_STEP_SIZE_Y / 2;
        ctx->windowY2 += SKETCH_STEP_SIZE_Y / 2;
        G2_SetWnd0Position(ctx->left, ctx->bottom, ctx->left + MON_SPRITE_FRAME_WIDTH, ctx->windowY2);
        ctx->viewHeight++;

        if (ctx->viewHeight > ((MON_SPRITE_FRAME_HEIGHT / SKETCH_STEP_SIZE_Y) - SKETCH_STEP_SIZE_Y)) {
            ctx->common.state++;
        } else {
            ctx->common.state = SKETCH_STATE_SET_PARTIAL_DRAW;
        }
        break;
    case SKETCH_STATE_DISABLE_PARTIAL_DRAW:
        PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_PARTIAL_DRAW, FALSE);
        ctx->common.state++;
        break;
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, FALSE);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, FALSE);
        G2_SetWnd0Position(0, 0, 0, 0);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_ALPHA, ctx->defenderAlpha);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Sketch(BattleAnimSystem *system)
{
    SketchContext *ctx = BattleAnimUtil_Alloc(system, sizeof(SketchContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(system, BattleAnimSystem_GetDefender(system));
    ctx->viewHeight = 0;

    int defenderType = BattleAnimUtil_GetBattlerType(system, BattleAnimSystem_GetDefender(system));
    switch (defenderType) {
    case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
    case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
        Bg_SetPriority(BATTLE_BG_BASE, BattleAnimSystem_GetPokemonSpritePriority(system) - 1);
        break;
    }

    s16 defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    s16 defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);
    defenderY -= PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_SHADOW_HEIGHT);

    ctx->defenderAlpha = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_ALPHA);
    PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_ALPHA, 8);

    // Anchor coordinates to bottom-left of the sprite
    ctx->left = defenderX - (MON_SPRITE_FRAME_WIDTH / 2);
    ctx->bottom = defenderY + (MON_SPRITE_FRAME_HEIGHT / 2);
    ctx->viewWidth = 0;
    ctx->windowY2 = ctx->bottom;
    ctx->origin = 0;

    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(BATTLE_BG_WNDMASK_ALL | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWndOutsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_EFFECT | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWnd0Position(ctx->left, ctx->bottom, ctx->left + MON_SPRITE_FRAME_WIDTH, ctx->windowY2);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_Sketch, ctx);
}
