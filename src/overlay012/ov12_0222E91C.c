#include "overlay012/ov12_0222E91C.h"

#include "nitro/hw/common/lcd.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "overlay012/battle_anim_system.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_0222D6B0.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/ov12_022380BC.h"
#include "overlay012/struct_ov12_022380DC.h"

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

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    s16 unk_1C;
    s16 unk_1E[8];
    ManagedSprite *unk_30[8];
    XYTransformContext unk_50;
} UnkStruct_ov12_0222EC18;

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

static void ov12_0222EC18(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222EC18 *v0 = (UnkStruct_ov12_0222EC18 *)param1;

    {
        int v1;
        int v2 = 0;

        for (v1 = 0; v1 < 8; v1++) {
            v0->unk_1E[v1]++;

            if (v0->unk_1E[v1] < 32) {
                continue;
            }

            ov12_0222E248(v0->unk_30[v1]);

            if (v0->unk_1E[v1] >= 160) {
                ManagedSprite_SetDrawFlag(v0->unk_30[v1], 0);
                v2++;
            }
        }

        if (v2 == 8) {
            for (v1 = 0; v1 < 8; v1++) {
                Sprite_DeleteAndFreeResources(v0->unk_30[v1]);
            }

            BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSys, param0);
            Heap_Free(v0);
            return;
        }
    }

    SpriteSystem_DrawSprites(v0->unk_00.primarySpriteManager);
}

void ov12_0222EC90(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222EC18 *v0 = NULL;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222EC18));
    v0->unk_1C = 10;

    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    {
        int v1;

        {
            s16 v2, v3;
            SpriteTemplate v4;

            v4 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00.battleAnimSys);
            v0->unk_30[0] = param3;

            for (v1 = 1; v1 < 8; v1++) {
                v0->unk_30[v1] = SpriteSystem_NewSprite(v0->unk_00.spriteSystem, v0->unk_00.primarySpriteManager, &v4);

                if (v1 % 2) {
                    ManagedSprite_SetFlipMode(v0->unk_30[v1], 1);
                }
            }
        }

        {
            PokemonSprite *v5;
            s16 v6, v7, v8, v9;

            v5 = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSys, BattleAnimSystem_GetAttacker(v0->unk_00.battleAnimSys));
            v6 = PokemonSprite_GetAttribute(v5, MON_SPRITE_X_CENTER);
            v8 = PokemonSprite_GetAttribute(v5, MON_SPRITE_Y_CENTER);
            v5 = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSys, BattleAnimSystem_GetDefender(v0->unk_00.battleAnimSys));
            v7 = PokemonSprite_GetAttribute(v5, MON_SPRITE_X_CENTER);
            v9 = PokemonSprite_GetAttribute(v5, MON_SPRITE_Y_CENTER);

            PosLerpContext_Init(&v0->unk_50, v6, v7, v8, v9, (8 + 2) * 2);
        }

        {
            BOOL v10;
            int v11 = 0;
            int v12 = 0;
            int v13 = 0;

            if (BattleAnimUtil_GetBattlerSide(v0->unk_00.battleAnimSys, BattleAnimSystem_GetAttacker(v0->unk_00.battleAnimSys)) == 0x4) {
                v13 = 1;
            }

            do {
                v10 = PosLerpContext_Update(&v0->unk_50);

                if (v11 % 2) {
                    if (v13 == 0) {
                        if (v12 < 8) {
                            ManagedSprite_SetPositionXY(v0->unk_30[v12], v0->unk_50.x, v0->unk_50.y);
                            v12++;
                        }
                    } else {
                        v13 = 0;
                    }
                }

                v11++;
            } while (v10 == 1);
        }

        {
            int v14 = BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSys, 1);
            int v15 = BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSys, 2);

            for (v1 = 0; v1 < 8; v1++) {
                v0->unk_1E[v1] = (8 - v1) * 4;

                if (BattleAnimSystem_IsContest(v0->unk_00.battleAnimSys) == 0) {
                    if (BattleAnimUtil_GetBattlerSide(v0->unk_00.battleAnimSys, BattleAnimSystem_GetAttacker(v0->unk_00.battleAnimSys)) == 0x3) {
                        if (v1 < 4) {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v15);
                        } else {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v14);
                        }
                    } else {
                        if (v1 >= 4) {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v15);
                        } else {
                            ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v14);
                        }
                    }

                    ManagedSprite_SetPriority(v0->unk_30[v1], 8 - v1);
                } else {
                    ManagedSprite_SetPriority(v0->unk_30[v1], v1);
                    ManagedSprite_SetExplicitPriority(v0->unk_30[v1], v15);
                }
            }
        }
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSys, ov12_0222EC18, v0);
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
        if (PaletteFadeContext_IsActive(ctx->palFades[BATTLER_TYPE_DEFENDER]) == FALSE) {
            PaletteFadeContext_Free(ctx->palFades[BATTLER_TYPE_ATTACKER]);
            PaletteFadeContext_Free(ctx->palFades[BATTLER_TYPE_DEFENDER]);

            int palIndex = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(ctx->sprites[ROLE_PLAY_SPRITE_DEFENDER]->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);

            ctx->palFades[BATTLER_TYPE_DEFENDER] = PaletteFadeContext_New(
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
        if (PaletteFadeContext_IsActive(ctx->palFades[BATTLER_TYPE_DEFENDER]) == FALSE) {
            ManagedSprite_TickFrame(ctx->sprites[ROLE_PLAY_SPRITE_ATTACKER_1]);
            PaletteFadeContext_Free(ctx->palFades[BATTLER_TYPE_DEFENDER]);
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

    if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(system, BATTLER_TYPE_DEFENDER) == TRUE) {
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
    ctx->palFades[BATTLER_TYPE_ATTACKER] = PaletteFadeContext_New(
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
    ctx->palFades[BATTLER_TYPE_DEFENDER] = PaletteFadeContext_New(
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
                UnkStruct_ov12_022380DC v1;

                if (ctx->doRev == FALSE) {
                    ov12_02220590(ctx->common.battleAnimSys, &v1, 3);

                    if (ctx->iteration == 2) {
                        ov12_022382BC(&v1, BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys));
                    } else {
                        ov12_022380CC(&v1, BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys));
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
        &ctx->battlerPositions[BATTLER_TYPE_ATTACKER]);

    BattleAnimUtil_GetBattlerDefaultPos(
        ctx->common.battleAnimSys,
        BattleAnimSystem_GetDefender(ctx->common.battleAnimSys),
        &ctx->battlerPositions[BATTLER_TYPE_DEFENDER]);

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

    int height = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER) - ctx->battlerPositions[BATTLER_TYPE_ATTACKER].y;

    if (ctx->dir > 0) {
        ctx->xpos[0] = HW_LCD_WIDTH + MON_SPRITE_FRAME_WIDTH - 1;
        ctx->xpos[1] = -MON_SPRITE_FRAME_WIDTH;
        ctx->xpos[2] = ctx->battlerPositions[BATTLER_TYPE_ATTACKER].x;

        ctx->ypos[0] = ctx->battlerPositions[BATTLER_TYPE_ATTACKER].y + height;
        ctx->ypos[1] = ctx->battlerPositions[BATTLER_TYPE_DEFENDER].y + height;
        ctx->ypos[2] = ctx->battlerPositions[BATTLER_TYPE_ATTACKER].y + height;

        ctx->zpos[0] = SNATCH_IN_FRONT_ZPOS;
        ctx->zpos[1] = SNATCH_BEHIND_ZPOS;
        ctx->zpos[2] = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Z_CENTER);
    } else {
        ctx->xpos[0] = -MON_SPRITE_FRAME_WIDTH;
        ctx->xpos[1] = HW_LCD_WIDTH + MON_SPRITE_FRAME_WIDTH - 1;
        ctx->xpos[2] = ctx->battlerPositions[BATTLER_TYPE_ATTACKER].x;

        ctx->ypos[0] = ctx->battlerPositions[BATTLER_TYPE_ATTACKER].y + height;
        ctx->ypos[1] = ctx->battlerPositions[BATTLER_TYPE_DEFENDER].y + height;
        ctx->ypos[2] = ctx->battlerPositions[BATTLER_TYPE_ATTACKER].y + height;

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
    G2_SetWnd0InsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_BASE | BATTLE_BG_WNDMASK_EFFECT | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWndOutsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_EFFECT | GX_WND_PLANEMASK_OBJ, TRUE);
    G2_SetWnd0Position(ctx->left, ctx->bottom, ctx->left + MON_SPRITE_FRAME_WIDTH, ctx->windowY2);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_Sketch, ctx);
}
