#include "overlay012/ov12_02226B84.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"

#include "overlay012/battle_anim_system.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_022267D4_decl.h"

#include "bg_window.h"
#include "graphics.h"
#include "heap.h"
#include "inlines.h"
#include "math_util.h"
#include "palette.h"
#include "particle_system.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "spl.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

// -------------------------------------------------------------------
// Shake
// -------------------------------------------------------------------
typedef struct ShakeContext {
    int spriteCount;
    BattleAnimScriptFuncCommon common;
    SpriteShakeInfo shakeInfo;
    BattleAnimSpriteInfo sprites[MAX_BATTLERS];
    XYTransformContext shake;
} ShakeContext;

enum ShakeState {
    SHAKE_STATE_INIT = 0,
    SHAKE_STATE_SHAKE,
};

#define SHAKE_VAR_EXTENT_X 0
#define SHAKE_VAR_EXTENT_Y 1
#define SHAKE_VAR_INTERVAL 2
#define SHAKE_VAR_AMOUNT   3
#define SHAKE_VAR_TARGETS  4

typedef struct {
    int unk_00;
    int unk_04;
    u16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u16 unk_16;
    u16 unk_18;
    BattleAnimScriptFuncCommon unk_1C;
    SpriteShakeInfo unk_38;
    BattleAnimSpriteInfo unk_44[4];
    XYTransformContext unk_94;
} UnkStruct_ov12_02226D38;

typedef struct RotateMonContext {
    u8 state;
    BattleAnimSystem *system;
    PokemonSprite *sprite;
    ValueLerpContext lerpCtx;
    s32 start;
    int steps;
    s16 centerX;
    s16 centerY;
} RotateMonContext;

// -------------------------------------------------------------------
// Submission
// -------------------------------------------------------------------
typedef struct SubmissionContext {
    BattleAnimSystem *battleAnimSys;
    XYTransformContext rev;
    PokemonSprite *sprite;
    s16 baseX;
    s16 baseY;
} SubmissionContext;

#define SUBMISSION_VAR_NUM_REVS       0
#define SUBMISSION_VAR_FRAMES_PER_REV 1
#define SUBMISSION_VAR_TARGET_BATTLER 2

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    ManagedSprite *unk_14;
    XYTransformContext unk_18;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    s16 unk_4C;
    s16 unk_4E;
} UnkStruct_ov12_02227620;

// -------------------------------------------------------------------
// Fade BG
// -------------------------------------------------------------------
typedef struct FadeBgContext {
    BattleAnimSystem *battleAnimSys;
    PaletteData *paletteData;
} FadeBgContext;

#define FADE_BG_VAR_BG_TYPE     0
#define FADE_BG_VAR_DELAY       1
#define FADE_BG_VAR_START_VALUE 2
#define FADE_BG_VAR_END_VALUE   3
#define FADE_BG_VAR_COLOR       4

// -------------------------------------------------------------------
// Fade Battler Sprite
// -------------------------------------------------------------------
typedef struct FadeBattlerSpriteContext {
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *sprite;
    int state;
    int endDelay;
    int fadeDelay;
    int color;
    int alpha;
    int holdDelay;
} FadeBattlerSpriteContext;

enum FadeBattlerSpriteState {
    FADE_BATTLER_SPRITE_STATE_INIT = 0,
    FADE_BATTLER_SPRITE_STATE_FADE_IN,
    FADE_BATTLER_SPRITE_STATE_HOLD,
    FADE_BATTLER_SPRITE_STATE_INIT_FADE_OUT,
    FADE_BATTLER_SPRITE_STATE_FADE_OUT,
    FADE_BATTLER_SPRITE_STATE_CLEANUP,
};

#define FADE_BATTLER_SPRITE_VAR_TARGET           0
#define FADE_BATTLER_SPRITE_VAR_FADE_STEP_FRAMES 1
#define FADE_BATTLER_SPRITE_VAR_END_DELAY        2
#define FADE_BATTLER_SPRITE_VAR_COLOR            3
#define FADE_BATTLER_SPRITE_VAR_ALPHA            4
#define FADE_BATTLER_SPRITE_VAR_HOLD_FRAMES      5

// -------------------------------------------------------------------
// Scale Pokemon Sprite
// -------------------------------------------------------------------
typedef struct ScalePokemonSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    int state;
    s16 baseY;
    s16 battlerHeight;
    ManagedSprite *sprite;
    XYTransformContext scale;
    int spriteAlpha;
    int startScale;
    int endScale;
    int refScale;
    int cycles;
    int scaleFrames;
    BOOL flip;
} ScalePokemonSpriteContext;

enum ScalePokemonSpriteState {
    SCALE_POKEMON_SPRITE_STATE_INIT_SCALE = 0,
    SCALE_POKEMON_SPRITE_STATE_SCALE,
    SCALE_POKEMON_SPRITE_STATE_INIT_RESTORE,
    SCALE_POKEMON_SPRITE_STATE_RESTORE,
    SCALE_POKEMON_SPRITE_STATE_CLEANUP
};

#define SCALE_POKEMON_SPRITE_BG_ALPHA         16
#define SCALE_POKEMON_SPRITE_VAR_TARGET       0
#define SCALE_POKEMON_SPRITE_VAR_SPRITE_ALPHA 1
#define SCALE_POKEMON_SPRITE_VAR_START_SCALE  2
#define SCALE_POKEMON_SPRITE_VAR_END_SCALE    3
#define SCALE_POKEMON_SPRITE_VAR_REF_SCALE    4
#define SCALE_POKEMON_SPRITE_VAR_CYCLES       5
#define SCALE_POKEMON_SPRITE_VAR_FRAMES       6
#define SCALE_POKEMON_SPRITE_VAR_SPRITE       7

typedef struct {
    BattleAnimSystem *unk_00;
    int unk_04;
    s16 unk_08;
    s16 unk_0A;
    PokemonSprite *unk_0C;
    XYTransformContext unk_10;
    int unk_34;
    int unk_38;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    int unk_4C;
    int unk_50;
} UnkStruct_ov12_02227DE0;

typedef struct AlphaFadePokemonSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    AlphaFadeContext alpha;
} AlphaFadePokemonSpriteContext;

#define ALPHA_FADE_POKEMON_SPRITE_VAR_TARGETS            0
#define ALPHA_FADE_POKEMON_SPRITE_VAR_SPRITE_START_ALPHA 1
#define ALPHA_FADE_POKEMON_SPRITE_VAR_SPRITE_END_ALPHA   2
#define ALPHA_FADE_POKEMON_SPRITE_VAR_BG_START_ALPHA     3
#define ALPHA_FADE_POKEMON_SPRITE_VAR_BG_END_ALPHA       4
#define ALPHA_FADE_POKEMON_SPRITE_VAR_FRAMES             5

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    BattleAnimSpriteInfo unk_0C;
    BattleAnimScriptFuncCommon unk_20;
    BattleAnimSystem *unk_3C;
} UnkStruct_ov12_02228268;

typedef struct {
    int unk_00;
    int unk_04;
    u16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
    s16 unk_0E;
    s16 unk_10;
    u16 unk_12;
    u16 unk_14;
    u16 unk_16;
    u16 unk_18;
    BattleAnimScriptFuncCommon unk_1C;
    SpriteShakeInfo unk_38;
    BattleAnimSpriteInfo unk_44[4];
    XYTransformContext unk_94;
} UnkStruct_ov12_02227064;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    s16 unk_0C;
    BattleAnimSpriteInfo unk_10;
    BattleAnimScriptFuncCommon unk_24;
    XYTransformContext unk_40;
    BattleAnimSystem *unk_64;
} UnkStruct_ov12_0222830C;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    BattleAnimSpriteInfo unk_0C;
    BattleAnimScriptFuncCommon unk_20;
    XYTransformContext unk_3C;
    BattleAnimSystem *unk_60;
    s16 unk_64;
} UnkStruct_ov12_02228488;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    int unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    BattleAnimSystem *unk_0C;
    PokemonSprite *unk_10;
    XYTransformContext unk_14;
    XYTransformContext unk_38;
} UnkStruct_ov12_0222862C;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    int unk_04;
    u8 unk_08;
    u8 unk_09;
    u8 unk_0A;
    int unk_0C;
    int unk_10;
    int unk_14;
    BattleAnimSystem *unk_18;
    PokemonSprite *unk_1C;
    XYTransformContext unk_20;
    XYTransformContext unk_44;
} UnkStruct_ov12_02228868;

typedef struct {
    int unk_00;
    BattleAnimScriptFuncCommon unk_04;
    ManagedSprite *unk_20;
    ManagedSprite *unk_24;
} UnkStruct_ov12_02228B10;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    BattleAnimSpriteInfo unk_0C;
    BattleAnimScriptFuncCommon unk_20;
    XYTransformContext unk_3C;
    BattleAnimSystem *unk_60;
    s16 unk_64;
    s16 unk_66;
} UnkStruct_ov12_02228BD0;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    BattleAnimSpriteInfo unk_1C;
    XYTransformContext unk_30;
} UnkStruct_ov12_02228DB8;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    BattleAnimSpriteInfo unk_1C;
    XYTransformContext unk_30;
    Point2D unk_54;
    Point2D unk_58;
} UnkStruct_ov12_02228E78;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    BattleAnimSpriteInfo unk_1C;
    UnkStruct_ov12_022267D4 *unk_30;
} UnkStruct_ov12_02229184;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    BattleAnimSpriteInfo unk_1C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
    s16 unk_40;
    s16 unk_42;
    int unk_44;
    int unk_48;
    int unk_4C;
    int unk_50;
    int unk_54;
} UnkStruct_ov12_02229278;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    s16 unk_1C;
    int unk_20;
    int unk_24;
    BattleAnimSpriteInfo unk_28;
    int unk_3C;
    int unk_40;
    int unk_44;
    int unk_48;
    int unk_4C;
} UnkStruct_ov12_022294AC;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    BgConfig *unk_28;
    BattleAnimSystem *unk_2C;
    SpriteManager *unk_30;
    BattleAnimSpriteInfo unk_34[4];
    BattleAnimSpriteInfo unk_84[4];
    XYTransformContext unk_D4;
} UnkStruct_ov12_02229738;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    ManagedSprite *unk_1C;
    s16 unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
} UnkStruct_ov12_0222988C;

typedef struct {
    int unk_00;
    s16 unk_04;
    s16 unk_06;
    int unk_08;
    Point2D unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    ParticleSystem *unk_34;
    SPLEmitter *unk_38;
    BattleAnimScriptFuncCommon unk_3C;
    BattleAnimSpriteInfo unk_58[4];
    XYTransformContext unk_A8[2];
    ValueLerpContext unk_F0;
} UnkStruct_ov12_02229980;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    int unk_18;
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    ParticleSystem *unk_34;
    SPLEmitter *unk_38;
    BattleAnimScriptFuncCommon unk_3C;
    XYTransformContext unk_58;
    VecFx32 unk_7C;
    VecFx32 unk_88;
} UnkStruct_ov12_02229F9C;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    ManagedSprite *unk_1C;
} UnkStruct_ov12_0222A178;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    ManagedSprite *unk_1C;
    ValueLerpContext unk_20;
    int unk_34;
} UnkStruct_ov12_0222A1F478;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    ManagedSprite *unk_1C;
    ValueLerpContext unk_20;
} UnkStruct_ov12_0222A3DC;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    ManagedSprite *unk_1C;
    u8 unk_20;
    u8 unk_21;
    XYTransformContext unk_24[2];
} UnkStruct_ov12_0222A4A0;

typedef struct {
    BattleAnimScriptFuncCommon unk_00;
    ManagedSprite *unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
    int unk_38;
    int unk_3C;
} UnkStruct_ov12_0222A624;

typedef struct {
    BattleAnimScriptFuncCommon common;
    ManagedSprite *sprites[4];
    int frames;
    int unk_30;
} RenderPokemonSpritesContext;

typedef struct {
    int unk_00;
    int unk_04;
    BattleAnimScriptFuncCommon unk_08;
    BgScrollContext *unk_24;
} UnkStruct_ov12_0222ABBC;

static int ov12_02229454(BattleAnimSystem *param0, int param1);

static void ov12_02226B84(PokemonSprite *param0)
{
    PokemonSprite_SetAttribute(param0, MON_SPRITE_SCALE_X, 0x100);
    PokemonSprite_SetAttribute(param0, MON_SPRITE_SCALE_Y, 0x100);
}

static void BattleAnimTask_Shake(SysTask *task, void *param)
{
    ShakeContext *ctx = param;

    switch (ctx->common.state) {
    case SHAKE_STATE_INIT:
        ShakeContext_Init(&ctx->shake, ctx->shakeInfo.extentX, ctx->shakeInfo.extentY, ctx->shakeInfo.interval, ctx->shakeInfo.amount);
        ctx->common.state++;
        break;
    case SHAKE_STATE_SHAKE:
        if (ShakeContext_Update(&ctx->shake) == FALSE) {
            ctx->common.state++;
        } else {
            if (BattleAnimUtil_IsMaskSet(ctx->shakeInfo.targets, BATTLE_ANIM_BATTLER_SPRITES) == TRUE) {
                for (int i = 0; i < ctx->spriteCount; i++) {
                    if (ctx->sprites[i].monSprite == NULL) {
                        continue;
                    }

                    PokemonSprite_SetAttribute(ctx->sprites[i].monSprite, MON_SPRITE_X_CENTER, ctx->sprites[i].pos.x + ctx->shake.x);
                    PokemonSprite_SetAttribute(ctx->sprites[i].monSprite, MON_SPRITE_Y_CENTER, ctx->sprites[i].pos.y + ctx->shake.y);
                }
            } else if (BattleAnimUtil_IsMaskSet(ctx->shakeInfo.targets, BATTLE_ANIM_POKEMON_SPRITES) == TRUE) {
                for (int i = 0; i < ctx->spriteCount; i++) {
                    if (ctx->sprites[i].hwSprite == NULL) {
                        continue;
                    }

                    ManagedSprite_SetPositionXY(
                        ctx->sprites[i].hwSprite,
                        ctx->sprites[i].pos.x + ctx->shake.x,
                        ctx->sprites[i].pos.y + ctx->shake.y);
                    ManagedSprite_TickFrame(ctx->sprites[i].hwSprite);
                }

                SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
            }

            if (BattleAnimUtil_IsMaskSet(ctx->shakeInfo.targets, BATTLE_ANIM_BACKGROUND) == TRUE) {
                Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_EFFECT, BG_OFFSET_UPDATE_SET_X, ctx->shake.x);
            }
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSystem, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Shake(BattleAnimSystem *system)
{
    ShakeContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ShakeContext));

    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->shakeInfo.extentX = BattleAnimSystem_GetScriptVar(system, SHAKE_VAR_EXTENT_X);
    ctx->shakeInfo.extentY = BattleAnimSystem_GetScriptVar(system, SHAKE_VAR_EXTENT_Y);
    ctx->shakeInfo.interval = BattleAnimSystem_GetScriptVar(system, SHAKE_VAR_INTERVAL);
    ctx->shakeInfo.amount = BattleAnimSystem_GetScriptVar(system, SHAKE_VAR_AMOUNT);
    ctx->shakeInfo.targets = BattleAnimSystem_GetScriptVar(system, SHAKE_VAR_TARGETS);

    if (BattleAnimUtil_IsMaskSet(ctx->shakeInfo.targets, BATTLE_ANIM_BATTLER_SPRITES) == TRUE) {
        BattleAnimUtil_GetBattlerSprites(system, ctx->shakeInfo.targets, &ctx->sprites[0], &ctx->spriteCount);
    } else if (BattleAnimUtil_IsMaskSet(ctx->shakeInfo.targets, BATTLE_ANIM_POKEMON_SPRITES) == TRUE) {
        BattleAnimUtil_GetPokemonSprites(system, ctx->shakeInfo.targets, &ctx->sprites[0], &ctx->spriteCount);
    }

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSystem, BattleAnimTask_Shake, ctx);
}

static void ov12_02226D38(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02226D38 *v0 = (UnkStruct_ov12_02226D38 *)param1;

    switch (v0->unk_1C.state) {
    case 0:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3, v0->unk_16, v0->unk_18);
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
        v0->unk_1C.state++;
    case 1: {
        int v1 = 0;

        if (v0->unk_16 < v0->unk_08 - 2) {
            v0->unk_16 += 2;
        } else {
            v1++;
        }

        if (v0->unk_18 > 7 + 2) {
            v0->unk_18 -= 2;
        } else {
            v1++;
        }

        if (v1 == 2) {
            v0->unk_16 = v0->unk_08;
            v0->unk_18 = 7;
            v0->unk_1C.state++;
        }

        G2_ChangeBlendAlpha(v0->unk_16, v0->unk_18);
    } break;
    case 2:
        if (v0->unk_04) {
            v0->unk_1C.state++;
        }
        break;
    case 3: {
        int v2 = 0;

        if (v0->unk_16 > 2) {
            v0->unk_16 -= 2;
        } else {
            v2++;
        }

        if (v0->unk_18 < 31 - 2) {
            v0->unk_18 += 2;
        } else {
            v2++;
        }

        if (v2 == 2) {
            v0->unk_16 = 0;
            v0->unk_18 = 31;
            v0->unk_1C.state++;
        }

        G2_ChangeBlendAlpha(v0->unk_16, v0->unk_18);
    } break;
    default:
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
        BattleAnimSystem_EndAnimTask(v0->unk_1C.battleAnimSystem, param0);
        Heap_Free(v0);
        return;
    }

    if (((v0->unk_10 > 0) && (v0->unk_0C >= 512)) || ((v0->unk_10 < 0) && (v0->unk_0C <= -412))) {
        v0->unk_04 = 1;
    }

    v0->unk_0A += v0->unk_0E;
    v0->unk_0C += v0->unk_10;

    if (v0->unk_12 < v0->unk_14) {
        if (v0->unk_10 < 0) {
            v0->unk_10++;
        } else {
            v0->unk_10 = 0;
        }

        if (v0->unk_0E < 0) {
            v0->unk_0E++;
        } else {
            v0->unk_0E = 0;
        }

        v0->unk_14 = 0;
    } else {
        v0->unk_14++;
    }

    Bg_SetOffset(v0->unk_1C.bgConfig, 2, 0, v0->unk_0A);
    Bg_SetOffset(v0->unk_1C.bgConfig, 2, 3, v0->unk_0C);
}

void ov12_02226EB0(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02226D38 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02226D38));
    int v1;

    BattleAnimSystem_GetCommonData(param0, &v0->unk_1C);

    v0->unk_0A = BattleAnimSystem_GetScriptVar(param0, 1);
    v0->unk_0C = BattleAnimSystem_GetScriptVar(param0, 2);
    v0->unk_0E = BattleAnimSystem_GetScriptVar(param0, 3);
    v0->unk_10 = BattleAnimSystem_GetScriptVar(param0, 4);
    v0->unk_00 = BattleAnimSystem_GetScriptVar(param0, 5);
    v0->unk_08 = BattleAnimSystem_GetScriptVar(param0, 6);
    v0->unk_12 = BattleAnimSystem_GetScriptVar(param0, 7);
    v0->unk_14 = 0;

    if ((v0->unk_00 != 0) && (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x4)) {
        v0->unk_0A *= -1;
        v0->unk_0C *= -1;
        v0->unk_0E *= -1;
        v0->unk_10 *= -1;
        v0->unk_0C -= ((128 / 3) * 2);
    } else {
        v0->unk_0C += ((128 / 3) * 2);
    }

    if (BattleAnimSystem_IsContest(param0) == 1) {
        v0->unk_0E *= -1;
    }

    v0->unk_16 = 0;
    v0->unk_18 = 31;
    v0->unk_04 = 0;

    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);

    {
        int v2 = BattleAnimSystem_GetScriptVar(param0, 0);

        Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, BattleAnimSystem_GetBgNarcMemberIndex(v2, HEAP_ID_SYSTEM), v0->unk_1C.bgConfig, 2, 0, 0, 1, BattleAnimSystem_GetHeapID(param0));
        PaletteData_LoadBufferFromFileStart(v0->unk_1C.paletteData, 7, BattleAnimSystem_GetBgNarcMemberIndex(v2, 1), BattleAnimSystem_GetHeapID(param0), 0, 0x20, 9 * 16);
        Bg_ClearTilemap(v0->unk_1C.bgConfig, 2);

        {
            int v3 = 2;

            if (BattleAnimSystem_IsContest(param0) == 1) {
                v3 = 4;
            } else if (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x4) {
                v3 = 3;
            }

            Graphics_LoadTilemapToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, BattleAnimSystem_GetBgNarcMemberIndex(v2, v3), v0->unk_1C.bgConfig, 2, 0, 0, 1, BattleAnimSystem_GetHeapID(param0));
        }
    }

    Bg_SetOffset(v0->unk_1C.bgConfig, 2, 0, v0->unk_0A);
    Bg_SetOffset(v0->unk_1C.bgConfig, 2, 3, v0->unk_0C);

    BattleAnimSystem_StartAnimTask(v0->unk_1C.battleAnimSystem, ov12_02226D38, v0);
}

static void ov12_02227064(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02227064 *v0 = (UnkStruct_ov12_02227064 *)param1;

    switch (v0->unk_1C.state) {
    case 0:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3, v0->unk_16, v0->unk_18);
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 1);
        v0->unk_1C.state++;
    case 1: {
        int v1 = 0;

        if (v0->unk_16 < 16) {
            v0->unk_16 += 2;
        } else {
            v1++;
        }

        if (v0->unk_18 > 4) {
            v0->unk_18 -= 2;
        } else {
            v1++;
        }

        if (v1 == 2) {
            v0->unk_16 = 16;
            v0->unk_18 = 4;
            v0->unk_1C.state++;
        }

        G2_ChangeBlendAlpha(v0->unk_16, v0->unk_18);
    } break;
    case 2:
        if (v0->unk_04) {
            v0->unk_1C.state++;
        }
        break;
    case 3: {
        int v2 = 0;

        if (v0->unk_16 > 2) {
            v0->unk_16 -= 2;
        } else {
            v2++;
        }

        if (v0->unk_18 < 16) {
            v0->unk_18 += 2;
        } else {
            v2++;
        }

        if (v2 == 2) {
            v0->unk_16 = 0;
            v0->unk_18 = 31;
            v0->unk_1C.state++;
        }

        G2_ChangeBlendAlpha(v0->unk_16, v0->unk_18);
    } break;
    default:
        Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);
        BattleAnimSystem_EndAnimTask(v0->unk_1C.battleAnimSystem, param0);
        Heap_Free(v0);
        return;
    }

    if (((v0->unk_10 > 0) && (v0->unk_0C >= 512)) || ((v0->unk_10 < 0) && (v0->unk_0C <= -412))) {
        v0->unk_04 = 1;
    }

    v0->unk_0A += v0->unk_0E;
    v0->unk_0C += v0->unk_10;

    if (v0->unk_12 < v0->unk_14) {
        if (v0->unk_10 < 0) {
            v0->unk_10++;
        } else {
            v0->unk_10 = 0;
        }

        if (v0->unk_0E < 0) {
            v0->unk_0E++;
        } else {
            v0->unk_0E = 0;
        }

        v0->unk_14 = 0;
    } else {
        v0->unk_14++;
    }

    Bg_SetOffset(v0->unk_1C.bgConfig, 2, 0, v0->unk_0A);
    Bg_SetOffset(v0->unk_1C.bgConfig, 2, 3, v0->unk_0C);
}

void ov12_022271D8(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02227064 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02227064));
    int v1;

    BattleAnimSystem_GetCommonData(param0, &v0->unk_1C);

    v0->unk_0A = BattleAnimSystem_GetScriptVar(param0, 1);
    v0->unk_0C = BattleAnimSystem_GetScriptVar(param0, 2);
    v0->unk_0E = BattleAnimSystem_GetScriptVar(param0, 3);
    v0->unk_10 = BattleAnimSystem_GetScriptVar(param0, 4);
    v0->unk_00 = BattleAnimSystem_GetScriptVar(param0, 5);
    v0->unk_08 = BattleAnimSystem_GetScriptVar(param0, 6);
    v0->unk_12 = BattleAnimSystem_GetScriptVar(param0, 7);
    v0->unk_14 = 0;

    if ((v0->unk_00 != 0) && (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x4)) {
        v0->unk_0A *= -1;
        v0->unk_0C *= -1;
        v0->unk_0E *= -1;
        v0->unk_10 *= -1;
        v0->unk_0C -= ((128 / 3) * 2);
    } else {
        v0->unk_0C += ((128 / 3) * 2);
    }

    if (BattleAnimSystem_IsContest(param0) == 1) {
        v0->unk_0E *= -1;
    }

    v0->unk_16 = 4;
    v0->unk_18 = 16;
    v0->unk_16 = 0;
    v0->unk_18 = 16;
    v0->unk_04 = 0;

    Bg_ToggleLayer(BG_LAYER_MAIN_2, 0);

    {
        int v2 = BattleAnimSystem_GetScriptVar(param0, 0);

        Graphics_LoadTilesToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, BattleAnimSystem_GetBgNarcMemberIndex(v2, HEAP_ID_SYSTEM), v0->unk_1C.bgConfig, 2, 0, 0, 1, BattleAnimSystem_GetHeapID(param0));
        PaletteData_LoadBufferFromFileStart(v0->unk_1C.paletteData, 7, BattleAnimSystem_GetBgNarcMemberIndex(v2, 1), BattleAnimSystem_GetHeapID(param0), 0, 0x20, 9 * 16);
        Bg_ClearTilemap(v0->unk_1C.bgConfig, 2);

        {
            int v3 = 2;

            if (BattleAnimSystem_IsContest(param0) == 1) {
                v3 = 4;
            } else if (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x4) {
                v3 = 3;
            }

            Graphics_LoadTilemapToBgLayer(NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG, BattleAnimSystem_GetBgNarcMemberIndex(v2, v3), v0->unk_1C.bgConfig, 2, 0, 0, 1, BattleAnimSystem_GetHeapID(param0));
        }
    }

    Bg_SetOffset(v0->unk_1C.bgConfig, 2, 0, v0->unk_0A);
    Bg_SetOffset(v0->unk_1C.bgConfig, 2, 3, v0->unk_0C);

    BattleAnimSystem_StartAnimTask(v0->unk_1C.battleAnimSystem, ov12_02227064, v0);
}

static void BattleAnimTask_RotateMon(SysTask *task, void *param)
{
    RotateMonContext *ctx = param;

    switch (ctx->state) {
    case 0:
    case 1:
        if (ValueLerpContext_Update(&ctx->lerpCtx) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_ROTATION_Z, (u16)ctx->lerpCtx.value);
        } else {
            ValueLerpContext_Init(&ctx->lerpCtx, ctx->lerpCtx.value, ctx->start, ctx->steps);
            ctx->state++;
        }
        break;
    case 2:
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_X_PIVOT, 0);
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_PIVOT, 0);
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_ROTATION_Z, 0);
        BattleAnimSystem_EndAnimTask(ctx->system, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_RotateMon(BattleAnimSystem *system)
{
    RotateMonContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(RotateMonContext));

    ctx->state = 0;
    ctx->system = system;
    ctx->steps = BattleAnimSystem_GetScriptVar(system, 2);
    ctx->start = BattleAnimSystem_GetScriptVar(system, 0);

    int type = BattleAnimSystem_GetScriptVar(system, 3);

    int battler;
    if (type == 0 || type == 2) {
        battler = BattleAnimSystem_GetDefender(ctx->system);
    } else {
        battler = BattleAnimSystem_GetAttacker(ctx->system);
    }

    ValueLerpContext_Init(&ctx->lerpCtx, ctx->start, BattleAnimSystem_GetScriptVar(system, 1), ctx->steps);

    // Adjust step direction
    int dir = BattleAnimUtil_GetTransformDirectionX(system, battler);
    ctx->lerpCtx.data[1] *= dir;

    if (type == 2) {
        dir *= -1;
    }

    ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->system, battler);

    if (BattleAnimSystem_GetScriptVar(system, 3) == 1) {
        ctx->centerX = BattleAnimSystem_GetScriptVar(system, 4);
        ctx->centerY = BattleAnimSystem_GetScriptVar(system, 5);
    } else {
        ctx->centerX = (MON_SPRITE_FRAME_WIDTH / 2) * dir;
        ctx->centerY = (MON_SPRITE_FRAME_HEIGHT / 2);
    }

    PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_X_PIVOT, ctx->centerX);
    PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_PIVOT, ctx->centerY);

    BattleAnimSystem_StartAnimTask(ctx->system, BattleAnimTask_RotateMon, ctx);
}

static void BattleAnimTask_Submission(SysTask *task, void *param)
{
    SubmissionContext *ctx = param;

    if (RevolutionContext_UpdateAndApplyToMon(&ctx->rev, ctx->baseX, ctx->baseY, ctx->sprite) == FALSE) {
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_X_CENTER, ctx->baseX);
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY + (REVOLUTION_CONTEXT_OVAL_RADIUS_Y >> FX32_SHIFT));
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_ROTATION_Z, 0);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
    }
}

void BattleAnimScriptFunc_Submission(BattleAnimSystem *system)
{
    SubmissionContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(SubmissionContext));
    ctx->battleAnimSys = system;

    RevolutionContext_InitOvalRevolutions(
        &ctx->rev,
        BattleAnimSystem_GetScriptVar(system, SUBMISSION_VAR_NUM_REVS),
        BattleAnimSystem_GetScriptVar(system, SUBMISSION_VAR_FRAMES_PER_REV));

    switch (BattleAnimSystem_GetScriptVar(system, SUBMISSION_VAR_TARGET_BATTLER)) {
    case BATTLE_ANIM_ATTACKER:
        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
        ctx->rev.data[XY_PARAM_REV_RADIUS_X] *= -1;
        break;
    case BATTLE_ANIM_ATTACKER_PARTNER:
        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimUtil_GetAlliedBattler(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys)));
        ctx->rev.data[XY_PARAM_REV_RADIUS_X] *= -1;
        break;
    case BATTLE_ANIM_DEFENDER:
        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));
        break;
    case BATTLE_ANIM_DEFENDER_PARTNER:
        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimUtil_GetAlliedBattler(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys)));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    ctx->baseX = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_X_CENTER);
    ctx->baseY = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);
    ctx->baseY -= REVOLUTION_CONTEXT_OVAL_RADIUS_Y >> FX32_SHIFT;

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Submission, ctx);
}

static void ov12_02227620(UnkStruct_ov12_02227620 *param0, s16 param1, s16 param2)
{
    ManagedSprite_SetDrawFlag(param0->unk_14, 1);
    ManagedSprite_SetPositionXY(param0->unk_14, param1, param2);
    param0->unk_40 = 0;
    ScaleLerpContext_Init(&param0->unk_18, 10, 10, 14, 4);
}

static BOOL ov12_02227658(UnkStruct_ov12_02227620 *param0)
{
    if (ScaleLerpContext_UpdateAndApplyToSprite(&param0->unk_18, param0->unk_14) == 0) {
        if (param0->unk_40) {
            ManagedSprite_SetDrawFlag(param0->unk_14, 0);
            return 1;
        } else {
            param0->unk_40 = 1;
            ScaleLerpContext_Init(&param0->unk_18, 14, 10, 12, 2);
        }
    }

    return 0;
}

static BOOL ov12_0222769C(UnkStruct_ov12_02227620 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_48) {
    case 0:
        ov12_02227620(param0, param0->unk_4C + (24 * param0->unk_3C), param0->unk_4E - 16);
        param0->unk_48++;
        break;
    case 1:
        if (ov12_02227658(param0)) {
            param0->unk_48++;
        }
        break;
    case 2:
        param0->unk_44--;

        if (param0->unk_44 < 0) {
            param0->unk_48++;
            ov12_02227620(param0, param0->unk_4C - (24 * param0->unk_3C), param0->unk_4E - 24);
        }
        break;
    case 3:
        if (ov12_02227658(param0)) {
            param0->unk_48++;
        }
        break;
    case 4:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02227738(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02227620 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        if (ov12_0222769C(v0)) {
            v0->unk_0C++;
        }
        break;
    case 1:
        Sprite_DeleteAndFreeResources(v0->unk_14);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_0222777C(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02227620 *v0;
    PokemonSprite *v1;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02227620));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_14 = param3;

    ManagedSprite_SetPriority(v0->unk_14, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_14, 1);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_14, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetDrawFlag(v0->unk_14, FALSE);

    v0->unk_44 = 4;
    v0->unk_3C = BattleAnimUtil_GetTransformDirectionX(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v1 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));

    v0->unk_4C = PokemonSprite_GetAttribute(v1, MON_SPRITE_X_CENTER);
    v0->unk_4E = PokemonSprite_GetAttribute(v1, MON_SPRITE_Y_CENTER);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02227738, v0);
}

static void BattleAnimTask_FadeBg(SysTask *task, void *param)
{
    FadeBgContext *ctx = param;

    if (PaletteData_GetSelectedBuffersMask(ctx->paletteData) == 0) {
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
    }
}

void BattleAnimScriptFunc_FadeBg(BattleAnimSystem *system)
{
    FadeBgContext *ctx = BattleAnimUtil_Alloc(system, sizeof(FadeBgContext));

    ctx->battleAnimSys = system;
    ctx->paletteData = BattleAnimSystem_GetPaletteData(ctx->battleAnimSys);

    u16 paletteToFade;
    switch (BattleAnimSystem_GetScriptVar(system, FADE_BG_VAR_BG_TYPE)) {
    case FADE_BG_TYPE_BASE:
        paletteToFade = BattleAnimSystem_GetBaseBgPalettes(system);
        break;
    case FADE_BG_TYPE_MON_SPRITE:
        paletteToFade = BATTLE_BG_PALETTE_FLAG_MON_SPRITE;
        break;
    case FADE_BG_TYPE_EFFECT:
        paletteToFade = BATTLE_BG_PALETTE_FLAG_EFFECT;
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    PaletteData_StartFade(
        ctx->paletteData,
        PLTTBUF_MAIN_BG_F,
        paletteToFade,
        BattleAnimSystem_GetScriptVar(system, FADE_BG_VAR_DELAY),
        BattleAnimSystem_GetScriptVar(system, FADE_BG_VAR_START_VALUE),
        BattleAnimSystem_GetScriptVar(system, FADE_BG_VAR_END_VALUE),
        BattleAnimSystem_GetScriptVar(system, FADE_BG_VAR_COLOR));

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_FadeBg, ctx);
}

static void BattleAnimTask_FadeBattlerSprite(SysTask *task, void *param)
{
    FadeBattlerSpriteContext *ctx = param;

    switch (ctx->state) {
    case FADE_BATTLER_SPRITE_STATE_INIT:
        PokemonSprite_StartFade(ctx->sprite, 0, ctx->alpha, ctx->fadeDelay, ctx->color);
        ctx->state++;
        break;
    case FADE_BATTLER_SPRITE_STATE_FADE_IN:
        if (PokemonSprite_IsFadeActive(ctx->sprite) == FALSE) {
            ctx->state++;
        }
        break;
    case FADE_BATTLER_SPRITE_STATE_HOLD:
        if (ctx->holdDelay == 0) {
            ctx->state++;
        } else {
            ctx->holdDelay--;
            break;
        }
    case FADE_BATTLER_SPRITE_STATE_INIT_FADE_OUT:
        PokemonSprite_StartFade(ctx->sprite, ctx->alpha, 0, ctx->fadeDelay, ctx->color);
        ctx->state++;
        break;
    case FADE_BATTLER_SPRITE_STATE_FADE_OUT:
        if (PokemonSprite_IsFadeActive(ctx->sprite) == FALSE) {
            ctx->endDelay--;

            if (ctx->endDelay <= 0) {
                ctx->state++;
            } else {
                ctx->state = 0;
            }
        }
        break;
    case FADE_BATTLER_SPRITE_STATE_CLEANUP:
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        return;
    }
}

void BattleAnimScriptFunc_FadeBattlerSprite(BattleAnimSystem *system)
{
    FadeBattlerSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(FadeBattlerSpriteContext));
    ctx->battleAnimSys = system;
    ctx->sprite = NULL;

    int targetBattler;
    switch (BattleAnimSystem_GetScriptVar(system, FADE_BATTLER_SPRITE_VAR_TARGET)) {
    case BATTLE_ANIM_ATTACKER:
        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
        break;
    case BATTLE_ANIM_ATTACKER_PARTNER:
        if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
            ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimUtil_GetAlliedBattler(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys)));
        }
        break;
    case BATTLE_ANIM_DEFENDER:
        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));
        break;
    case BATTLE_ANIM_DEFENDER_PARTNER:
        if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
            ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimUtil_GetAlliedBattler(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys)));
        }
        break;
    case BATTLE_ANIM_BATTLER_PLAYER_1: {
        targetBattler = BATTLER_NONE;

        for (int battler = BATTLER_PLAYER_1; battler < MAX_BATTLERS; battler++) {
            int type = BattleAnimSystem_GetBattlerType(system, battler);
            if (type == BATTLER_TYPE_SOLO_PLAYER || type == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                targetBattler = battler;
                break;
            }
        }

        if (targetBattler == BATTLER_NONE) {
            targetBattler = BATTLER_PLAYER_1;
        }

        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, targetBattler);
    } break;
    case BATTLE_ANIM_BATTLER_PLAYER_2: {
        targetBattler = BATTLER_NONE;

        for (int battler = BATTLER_PLAYER_1; battler < MAX_BATTLERS; battler++) {
            int type = BattleAnimSystem_GetBattlerType(system, battler);
            if (type == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                targetBattler = battler;
                break;
            }
        }

        if (targetBattler == BATTLER_NONE) {
            targetBattler = BATTLER_PLAYER_1;
        }

        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, targetBattler);
    } break;
    case BATTLE_ANIM_BATTLER_ENEMY_1: {
        targetBattler = BATTLER_NONE;

        for (int battler = BATTLER_PLAYER_1; battler < MAX_BATTLERS; battler++) {
            int type = BattleAnimSystem_GetBattlerType(system, battler);
            if (type == BATTLER_TYPE_SOLO_ENEMY || type == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                targetBattler = battler;
                break;
            }
        }

        if (targetBattler == BATTLER_NONE) {
            targetBattler = BATTLER_PLAYER_1;
        }

        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, targetBattler);
    } break;
    case BATTLE_ANIM_BATTLER_ENEMY_2: {
        targetBattler = BATTLER_NONE;

        for (int battler = BATTLER_PLAYER_1; battler < MAX_BATTLERS; battler++) {
            int type = BattleAnimSystem_GetBattlerType(system, battler);
            if (type == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                targetBattler = battler;
                break;
            }
        }

        if (targetBattler == BATTLER_NONE) {
            targetBattler = BATTLER_PLAYER_1;
        }

        ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, targetBattler);
    } break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    if (ctx->sprite == NULL) {
        Heap_Free(ctx);
        return;
    }

    ctx->fadeDelay = BattleAnimSystem_GetScriptVar(system, FADE_BATTLER_SPRITE_VAR_FADE_STEP_FRAMES);
    ctx->endDelay = BattleAnimSystem_GetScriptVar(system, FADE_BATTLER_SPRITE_VAR_END_DELAY);
    ctx->color = BattleAnimSystem_GetScriptVar(system, FADE_BATTLER_SPRITE_VAR_COLOR);
    ctx->alpha = BattleAnimSystem_GetScriptVar(system, FADE_BATTLER_SPRITE_VAR_ALPHA);
    ctx->holdDelay = BattleAnimSystem_GetScriptVar(system, FADE_BATTLER_SPRITE_VAR_HOLD_FRAMES);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_FadeBattlerSprite, ctx);
}

static void BattleAnimTask_ScalePokemonSprite(SysTask *task, void *param)
{
    ScalePokemonSpriteContext *ctx = param;
    f32 scaleX, scaleY;
    BOOL active;

    switch (ctx->state) {
    case SCALE_POKEMON_SPRITE_STATE_INIT_SCALE:
        ScaleLerpContext_Init(
            &ctx->scale,
            ctx->startScale,
            ctx->refScale,
            ctx->endScale,
            SCALE_POKEMON_SPRITE_SCALE_FRAMES(ctx->scaleFrames));
        ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);

        if (ctx->flip == TRUE) {
            scaleX = -scaleX;
        }

        ManagedSprite_SetAffineScale(ctx->sprite, scaleX, scaleY);
        ctx->state++;
        break;
    case SCALE_POKEMON_SPRITE_STATE_SCALE:
        active = ScaleLerpContext_Update(&ctx->scale);
        ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);

        if (ctx->flip == TRUE) {
            scaleX = -scaleX;
        }

        ManagedSprite_SetAffineScale(ctx->sprite, scaleX, scaleY);

        if (active) {
            BattleAnimUtil_SetSpriteAnchoredPosition(
                ctx->sprite,
                ctx->baseY,
                ctx->battlerHeight,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            ctx->state++;
        }
        break;
    case SCALE_POKEMON_SPRITE_STATE_INIT_RESTORE:
        ScaleLerpContext_Init(
            &ctx->scale,
            ctx->endScale,
            ctx->refScale,
            ctx->startScale,
            SCALE_POKEMON_SPRITE_RESTORE_FRAMES(ctx->scaleFrames));
        ctx->state++;
        break;
    case SCALE_POKEMON_SPRITE_STATE_RESTORE:
        active = ScaleLerpContext_Update(&ctx->scale);
        ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);

        if (ctx->flip == TRUE) {
            scaleX = -scaleX;
        }

        ManagedSprite_SetAffineScale(ctx->sprite, scaleX, scaleY);

        if (active) {
            BattleAnimUtil_SetSpriteAnchoredPosition(
                ctx->sprite,
                ctx->baseY,
                ctx->battlerHeight,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            ctx->cycles--;

            if (ctx->cycles <= 0) {
                ctx->state++;
            } else {
                ctx->state = SCALE_POKEMON_SPRITE_STATE_INIT_SCALE;
            }
        }
        break;
    case SCALE_POKEMON_SPRITE_STATE_CLEANUP:
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        return;
    }

    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}

void BattleAnimScriptFunc_ScalePokemonSprite(BattleAnimSystem *system)
{
    ScalePokemonSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ScalePokemonSpriteContext));
    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);

    PokemonSprite *battlerSprite;
    if (BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_TARGET) == BATTLER_TYPE_ATTACKER) {
        battlerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
        ctx->battlerHeight = BattleAnimSystem_GetBattlerSpriteHeight(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    } else {
        battlerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));
        ctx->battlerHeight = BattleAnimSystem_GetBattlerSpriteHeight(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));
    }

    ctx->baseY = PokemonSprite_GetAttribute(battlerSprite, MON_SPRITE_Y_CENTER);
    ctx->baseY -= PokemonSprite_GetAttribute(battlerSprite, MON_SPRITE_SHADOW_HEIGHT);
    ctx->spriteAlpha = BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_SPRITE_ALPHA);
    ctx->startScale = BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_START_SCALE);
    ctx->endScale = BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_END_SCALE);
    ctx->refScale = BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_REF_SCALE);
    ctx->cycles = BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_CYCLES);
    ctx->scaleFrames = BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_FRAMES);
    ctx->sprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_SPRITE));

    ManagedSprite_SetPriority(ctx->sprite, BATTLE_ANIM_HW_SPRITE_PRIORITY);
    ManagedSprite_SetExplicitPriority(ctx->sprite, BATTLE_ANIM_HW_SPRITE_EXP_PRIORITY);
    ManagedSprite_SetExplicitOamMode(ctx->sprite, GX_OAM_MODE_XLU);
    ManagedSprite_SetAffineOverwriteMode(ctx->sprite, AFFINE_OVERWRITE_MODE_DOUBLE);

    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, ctx->spriteAlpha, SCALE_POKEMON_SPRITE_BG_ALPHA - ctx->spriteAlpha);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_ScalePokemonSprite, ctx);

    int battlerType = BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_TARGET);
    if (battlerType == BATTLER_TYPE_ATTACKER) {
        battlerType = BATTLER_TYPE_ATTACKER;
    } else {
        battlerType = BATTLER_TYPE_DEFENDER;
    }

    if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(ctx->battleAnimSys, battlerType) == TRUE) {
        ctx->flip = TRUE;
    }
}

static void ov12_02227DE0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02227DE0 *v0 = param1;

    switch (v0->unk_04) {
    case 0:
        ScaleLerpContext_InitXY(&v0->unk_10, v0->unk_34, v0->unk_38, v0->unk_3C, v0->unk_40, v0->unk_44, v0->unk_4C >> 16);
        ScaleLerpContext_UpdateAndApplyToMon(&v0->unk_10, v0->unk_0C);
        v0->unk_04++;
        break;
    case 1:
        if (ov12_022260E8(&v0->unk_10, v0->unk_0C)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(v0->unk_0C, v0->unk_08, v0->unk_0A, v0->unk_10.data[4], 0);
        } else {
            v0->unk_04++;
        }
        break;
    case 2:
        if (v0->unk_50 == 0) {
            v0->unk_04++;
        } else {
            v0->unk_50--;
            break;
        }
    case 3:
        ScaleLerpContext_InitXY(&v0->unk_10, v0->unk_38, v0->unk_34, v0->unk_40, v0->unk_3C, v0->unk_44, v0->unk_4C & 0xffff);
        ov12_022260E8(&v0->unk_10, v0->unk_0C);
        v0->unk_04++;
        break;
    case 4:
        if (ov12_022260E8(&v0->unk_10, v0->unk_0C)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(v0->unk_0C, v0->unk_08, v0->unk_0A, v0->unk_10.data[4], 0);
        } else {
            v0->unk_48--;

            if (v0->unk_48 <= 0) {
                v0->unk_04++;
            } else {
                v0->unk_04 = 0;
            }
        }
        break;
    case 5:
        ov12_02226B84(v0->unk_0C);
        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        return;
    }
}

void ov12_02227F30(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02227DE0 *v0;
    BattleAnimSpriteInfo v1[4];
    SysTask *v2;
    int v3;
    int v4;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02227DE0));
    v0->unk_00 = param0;

    switch (BattleAnimSystem_GetScriptVar(param0, 0)) {
    case 0x2 | 0x100:
    case 0x4 | 0x100:
        v0->unk_0A = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
        BattleAnimUtil_GetBattlerSprites(v0->unk_00, BattleAnimSystem_GetScriptVar(param0, 0), v1, &v3);
        v0->unk_0C = v1[0].monSprite;
        break;
    case 0x8 | 0x100:
    case 0x10 | 0x100:
        v0->unk_0A = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_00, BattleAnimSystem_GetDefender(v0->unk_00));
        BattleAnimUtil_GetBattlerSprites(v0->unk_00, BattleAnimSystem_GetScriptVar(param0, 0), v1, &v3);
        v0->unk_0C = v1[0].monSprite;
        break;
    case (0x2 | 0x800): {
        int v5;
        int v6;

        v4 = 0xFF;

        for (v5 = 0; v5 < 4; v5++) {
            v6 = BattleAnimSystem_GetBattlerType(param0, v5);

            if ((v6 == 0) || (v6 == 2)) {
                v4 = v5;
                break;
            }
        }

        if (v4 == 0xFF) {
            v4 = 0;
        }

        v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_00, v4);
    } break;
    case (0x4 | 0x800): {
        int v7;
        int v8;

        v4 = 0xFF;

        for (v7 = 0; v7 < 4; v7++) {
            v8 = BattleAnimSystem_GetBattlerType(param0, v7);

            if (v8 == 4) {
                v4 = v7;
                break;
            }
        }

        if (v4 == 0xFF) {
            v4 = 0;
        }

        v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_00, v4);
    } break;
    case (0x8 | 0x800): {
        int v9;
        int v10;

        v4 = 0xFF;

        for (v9 = 0; v9 < 4; v9++) {
            v10 = BattleAnimSystem_GetBattlerType(param0, v9);

            if ((v10 == 1) || (v10 == 3)) {
                v4 = v9;
                break;
            }
        }

        if (v4 == 0xFF) {
            v4 = 0;
        }

        v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_00, v4);
    } break;
    case (0x10 | 0x800): {
        int v11;
        int v12;

        v4 = 0xFF;

        for (v11 = 0; v11 < 4; v11++) {
            v12 = BattleAnimSystem_GetBattlerType(param0, v11);

            if (v12 == 5) {
                v4 = v11;
                break;
            }
        }

        if (v4 == 0xFF) {
            v4 = 0;
        }

        v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_00, v4);
    } break;
    }

    if (v0->unk_0C == NULL) {
        Heap_Free(v0);
        return;
    }

    v0->unk_08 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_0A = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_SHADOW_HEIGHT);
    v0->unk_0A += 16;
    v0->unk_34 = BattleAnimSystem_GetScriptVar(param0, 1);
    v0->unk_38 = BattleAnimSystem_GetScriptVar(param0, 2);
    v0->unk_3C = BattleAnimSystem_GetScriptVar(param0, 3);
    v0->unk_40 = BattleAnimSystem_GetScriptVar(param0, 4);
    v0->unk_44 = BattleAnimSystem_GetScriptVar(param0, 5);
    v0->unk_48 = BattleAnimSystem_GetScriptVar(param0, 6);
    v0->unk_4C = BattleAnimSystem_GetScriptVar(param0, 7);
    v0->unk_48 = BattleAnimSystem_GetScriptVar(param0, 6) & 0xffff;
    v0->unk_50 = BattleAnimSystem_GetScriptVar(param0, 6) >> 16;

    v2 = BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02227DE0, v0);
    ov12_02227DE0(v2, v0);
}

static void BattleAnimTask_AlphaFadePokemonSprite(SysTask *task, void *param)
{
    AlphaFadePokemonSpriteContext *ctx = param;

    if (AlphaFadeContext_IsDone(&ctx->alpha)) {
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
    } else {
        SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
    }
}

void BattleAnimScriptFunc_AlphaFadePokemonSprite(BattleAnimSystem *system)
{
    AlphaFadePokemonSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(AlphaFadePokemonSpriteContext));

    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);

    int targets = BattleAnimSystem_GetScriptVar(system, ALPHA_FADE_POKEMON_SPRITE_VAR_TARGETS);

    for (int i = 0; i < MAX_BATTLERS; i++) {
        if (targets & BATTLE_ANIM_MON_SPRITE_F(i)) {
            ManagedSprite *sprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, i);
            ManagedSprite_SetExplicitOamMode(sprite, GX_OAM_MODE_XLU);
        }
    }

    int spriteStartAlpha = BattleAnimSystem_GetScriptVar(system, ALPHA_FADE_POKEMON_SPRITE_VAR_SPRITE_START_ALPHA);
    int bgStartAlpha = BattleAnimSystem_GetScriptVar(system, ALPHA_FADE_POKEMON_SPRITE_VAR_BG_START_ALPHA);

    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, spriteStartAlpha, bgStartAlpha);
    AlphaFadeContext_Init(
        &ctx->alpha,
        spriteStartAlpha,
        BattleAnimSystem_GetScriptVar(system, ALPHA_FADE_POKEMON_SPRITE_VAR_SPRITE_END_ALPHA),
        bgStartAlpha,
        BattleAnimSystem_GetScriptVar(system, ALPHA_FADE_POKEMON_SPRITE_VAR_BG_END_ALPHA),
        BattleAnimSystem_GetScriptVar(system, ALPHA_FADE_POKEMON_SPRITE_VAR_FRAMES));

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_AlphaFadePokemonSprite, ctx);
}

void ov12_02228214(BattleAnimSystem *param0)
{
    BattleAnimSpriteInfo v0;
    int v1;
    int v2;
    int v3 = BattleAnimSystem_GetScriptVar(param0, 1);

    BattleAnimUtil_GetBattlerSprites(param0, BattleAnimSystem_GetScriptVar(param0, 0), &v0, &v1);

    for (v2 = 0; v2 < v1; v2++) {
        if ((BattleAnimSystem_IsBattlerSemiInvulnerable(param0, v0.battler) == 1) && (v3 == 0)) {
            continue;
        }

        PokemonSprite_SetAttribute(v0.monSprite, MON_SPRITE_HIDE, v3);
    }
}

static void ov12_02228268(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228268 *v0 = (UnkStruct_ov12_02228268 *)param1;

    if (v0->unk_04 >= v0->unk_08) {
        if (v0->unk_00 == 0) {
            PokemonSprite_SetAttribute(v0->unk_0C.monSprite, MON_SPRITE_HIDE, 0);
            Heap_Free(v0);
            BattleAnimSystem_EndAnimTask(v0->unk_3C, param0);
        } else {
            int v1;

            v1 = PokemonSprite_GetAttribute(v0->unk_0C.monSprite, MON_SPRITE_HIDE);
            PokemonSprite_SetAttribute(v0->unk_0C.monSprite, MON_SPRITE_HIDE, v1 ^ 1);
            v0->unk_00--;
            v0->unk_04 = 0;
        }
    } else {
        v0->unk_04++;
    }
}

void ov12_022282BC(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02228268 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02228268));

    v0->unk_3C = param0;
    v0->unk_00 = BattleAnimSystem_GetScriptVar(param0, 0) * 2;
    v0->unk_08 = BattleAnimSystem_GetScriptVar(param0, 1);

    BattleAnimSystem_GetCommonData(param0, &v0->unk_20);
    v0->unk_0C.monSprite = BattleAnimSystem_GetBattlerSprite(param0, BattleAnimSystem_GetAttacker(param0));
    BattleAnimSystem_StartAnimTask(v0->unk_3C, ov12_02228268, v0);
}

static void ov12_0222830C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222830C *v0 = (UnkStruct_ov12_0222830C *)param1;

    switch (v0->unk_24.state) {
    case 0:
        PosLerpContext_Init(&v0->unk_40, v0->unk_10.pos.x, v0->unk_10.pos.x + v0->unk_0C, v0->unk_10.pos.y, v0->unk_10.pos.y, v0->unk_08);
        v0->unk_24.state++;
        break;
    case 1:
        if (PosLerpContext_Update(&v0->unk_40) == 0) {
            v0->unk_24.state++;
        }

        PokemonSprite_SetAttribute(v0->unk_10.monSprite, MON_SPRITE_X_CENTER, v0->unk_40.x);
        break;
    default:
        BattleAnimSystem_EndAnimTask(v0->unk_64, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_02228394(BattleAnimSystem *param0)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov12_0222830C *v3 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222830C));

    v3->unk_64 = param0;
    v3->unk_08 = BattleAnimSystem_GetScriptVar(param0, 0);
    v3->unk_0C = BattleAnimSystem_GetScriptVar(param0, 1);

    v1 = BattleAnimSystem_GetScriptVar(param0, 2);
    v2 = 0xFF;

    switch (v1) {
    case 0x2 | 0x100:
        v2 = BattleAnimSystem_GetAttacker(param0);
        break;
    case 0x4 | 0x100:
        if (BattleAnimSystem_IsDoubleBattle(param0) == 1) {
            v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetAttacker(param0));
        }
        break;
    case 0x8 | 0x100:
        v2 = BattleAnimSystem_GetDefender(param0);
        break;
    case 0x10 | 0x100:
        if (BattleAnimSystem_IsDoubleBattle(param0) == 1) {
            v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetDefender(param0));
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v2 == 0xFF) {
        Heap_Free(v3);
        return;
    }

    BattleAnimSystem_GetCommonData(param0, &v3->unk_24);
    v3->unk_10.monSprite = BattleAnimSystem_GetBattlerSprite(param0, v2);

    BattleAnimUtil_GetMonSpritePos(v3->unk_10.monSprite, &v3->unk_10.pos);
    v0 = BattleAnimUtil_GetTransformDirectionX(param0, v2);

    if (v0 > 0) {
        v3->unk_0C *= +1;
    } else {
        v3->unk_0C *= -1;
    }

    BattleAnimSystem_StartAnimTask(v3->unk_64, ov12_0222830C, v3);
}

static void ov12_02228488(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228488 *v0 = (UnkStruct_ov12_02228488 *)param1;

    switch (v0->unk_20.state) {
    case 0:
        if (v0->unk_0C.monSprite == NULL) {
            v0->unk_20.state = 0xff;
            break;
        }

        PosLerpContext_Init(&v0->unk_3C, v0->unk_0C.pos.x, v0->unk_0C.pos.x + v0->unk_64, v0->unk_0C.pos.y, v0->unk_0C.pos.y, v0->unk_08);
        v0->unk_20.state++;
    case 1:
        if (PosLerpContext_Update(&v0->unk_3C) == 0) {
            v0->unk_20.state++;
        }

        PokemonSprite_SetAttribute(v0->unk_0C.monSprite, MON_SPRITE_X_CENTER, v0->unk_3C.x);
        break;
    default:
        BattleAnimSystem_EndAnimTask(v0->unk_60, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_02228520(BattleAnimSystem *param0)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov12_02228488 *v3 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02228488));

    v3->unk_60 = param0;
    v3->unk_08 = BattleAnimSystem_GetScriptVar(param0, 0);
    v3->unk_64 = BattleAnimSystem_GetScriptVar(param0, 1);

    v1 = BattleAnimSystem_GetScriptVar(param0, 2);
    BattleAnimSystem_GetCommonData(param0, &v3->unk_20);
    v2 = 0xFF;

    switch (v1) {
    case 0x2 | 0x100:
        v2 = BattleAnimSystem_GetAttacker(param0);
        break;
    case 0x4 | 0x100:
        if (BattleAnimSystem_IsDoubleBattle(param0) == 1) {
            v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetAttacker(param0));
        }
        break;
    case 0x8 | 0x100:
        v2 = BattleAnimSystem_GetDefender(param0);
        break;
    case 0x10 | 0x100:
        if (BattleAnimSystem_IsDoubleBattle(param0) == 1) {
            v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetDefender(param0));
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v2 == 0xFF) {
        Heap_Free(v3);
        return;
    }

    v3->unk_0C.monSprite = BattleAnimSystem_GetBattlerSprite(param0, v2);
    BattleAnimUtil_GetMonSpritePos(v3->unk_0C.monSprite, &v3->unk_0C.pos);
    v0 = BattleAnimUtil_GetTransformDirectionX(param0, v2);

    if (v0 > 0) {
        v3->unk_64 *= +1;
    } else {
        v3->unk_64 *= -1;
    }

    if (BattleAnimSystem_IsContest(param0) == 1) {
        (void)0;
    }

    {
        SysTask *v4;

        v4 = BattleAnimSystem_StartAnimTask(v3->unk_60, ov12_02228488, v3);
        ov12_02228488(v4, v3);
    }
}

static void ov12_0222862C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222862C *v0 = (UnkStruct_ov12_0222862C *)param1;

    switch (v0->unk_00) {
    case 0:
        if (ScaleLerpContext_Update(&v0->unk_14) == 1) {
            ShakeContext_Update(&v0->unk_38);

            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, v0->unk_14.x);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, v0->unk_14.y);
            PokemonSprite_AddAttribute(v0->unk_10, MON_SPRITE_X_CENTER, v0->unk_38.x);

            {
                s16 v1 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v0->unk_02, v0->unk_04, v0->unk_14.data[4]);
                PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_02 + v1);
            }
        } else {
            v0->unk_00++;
        }
        break;
    case 1:
        if ((++v0->unk_09) > v0->unk_0A) {
            ScaleLerpContext_Init(&v0->unk_14, BattleAnimSystem_GetScriptVar(v0->unk_0C, 0), 100, BattleAnimSystem_GetScriptVar(v0->unk_0C, 1), BattleAnimSystem_GetScriptVar(v0->unk_0C, 3));
            v0->unk_00++;
        }
        break;
    case 2:
        if (ScaleLerpContext_Update(&v0->unk_14) == 1) {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, v0->unk_14.x);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, v0->unk_14.y);
            {
                s16 v2 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v0->unk_02, v0->unk_04, v0->unk_14.data[4]);
                PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_02 + v2);
            }
        } else {
            v0->unk_00++;
        }
        break;
    case 3:
        if (ScaleLerpContext_Update(&v0->unk_14) == 1) {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, v0->unk_14.x);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, v0->unk_14.y);

            {
                s16 v3 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v0->unk_02, v0->unk_04, v0->unk_14.data[4]);

                PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_02 + v3);
            }
        } else {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, 0x100);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_02);
            v0->unk_00++;
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(v0->unk_0C, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_022287CC(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222862C *v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_0222862C));

    v0->unk_08 = 0;
    v0->unk_00 = 0;
    v0->unk_0C = param0;
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_0C, BattleAnimSystem_GetAttacker(v0->unk_0C));
    v0->unk_09 = 0;
    v0->unk_0A = BattleAnimSystem_GetScriptVar(param0, 4);
    v0->unk_02 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v0->unk_04 = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_0C, BattleAnimSystem_GetAttacker(v0->unk_0C));

    ScaleLerpContext_Init(&v0->unk_14, 100, 100, BattleAnimSystem_GetScriptVar(param0, 0), BattleAnimSystem_GetScriptVar(param0, 2));
    ShakeContext_Init(&v0->unk_38, 2, 0, 0, 10);
    BattleAnimSystem_StartAnimTask(v0->unk_0C, ov12_0222862C, v0);
}

static void ov12_02228868(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228868 *v0 = (UnkStruct_ov12_02228868 *)param1;

    switch (v0->unk_00) {
    case 0:
        if (ScaleLerpContext_UpdateXY(&v0->unk_20) == 1) {
            ShakeContext_Update(&v0->unk_44);

            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_X, v0->unk_20.x);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_Y, v0->unk_20.y);
            PokemonSprite_AddAttribute(v0->unk_1C, MON_SPRITE_X_CENTER, v0->unk_44.x);

            {
                s16 v1 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v0->unk_02, v0->unk_04, v0->unk_20.data[4]);

                PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER, v0->unk_02 + v1);
            }
        } else {
            v0->unk_00++;
        }
        break;
    case 1:
        if ((++v0->unk_09) > v0->unk_0A) {
            {
                s16 v2, v3;
                s16 v4, v5;

                v2 = v0->unk_0C >> 16;
                v4 = v0->unk_0C & 0xFF;
                v3 = v0->unk_10 >> 16;
                v5 = v0->unk_10 & 0xFF;

                ScaleLerpContext_InitXY(&v0->unk_20, v2, v4, v3, v5, 100, v0->unk_14);
            }

            v0->unk_00++;
        }
        break;
    case 2:
        if (ScaleLerpContext_UpdateXY(&v0->unk_20) == 1) {
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_X, v0->unk_20.x);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_Y, v0->unk_20.y);

            {
                s16 v6 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v0->unk_02, v0->unk_04, v0->unk_20.data[4]);
                PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER, v0->unk_02 + v6);
            }
        } else {
            v0->unk_00++;
        }
        break;
    case 3:
        if (ScaleLerpContext_UpdateXY(&v0->unk_20) == 1) {
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_X, v0->unk_20.x);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_Y, v0->unk_20.y);

            {
                s16 v7 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v0->unk_02, v0->unk_04, v0->unk_20.data[4]);
                PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER, v0->unk_02 + v7);
            }
        } else {
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_SCALE_Y, 0x100);
            PokemonSprite_SetAttribute(v0->unk_1C, MON_SPRITE_Y_CENTER, v0->unk_02);
            v0->unk_00++;
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(v0->unk_18, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_02228A0C(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02228868 *v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_02228868));

    v0->unk_08 = 0;
    v0->unk_00 = 0;
    v0->unk_18 = param0;
    v0->unk_1C = BattleAnimSystem_GetBattlerSprite(v0->unk_18, BattleAnimSystem_GetAttacker(v0->unk_18));
    v0->unk_09 = 0;
    v0->unk_0A = BattleAnimSystem_GetScriptVar(param0, 6);
    v0->unk_0C = BattleAnimSystem_GetScriptVar(v0->unk_18, 3);
    v0->unk_10 = BattleAnimSystem_GetScriptVar(v0->unk_18, 4);
    v0->unk_14 = BattleAnimSystem_GetScriptVar(v0->unk_18, 5);

    ov12_02225898(param0, BattleAnimSystem_GetAttacker(v0->unk_18), NULL, &v0->unk_02);

    v0->unk_04 = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_18, BattleAnimSystem_GetAttacker(v0->unk_18));
    v0->unk_02 += v0->unk_04;

    {
        s16 v1, v2;
        s16 v3, v4;
        s16 v5;

        v1 = BattleAnimSystem_GetScriptVar(param0, 0) >> 16;
        v3 = BattleAnimSystem_GetScriptVar(param0, 0) & 0xFF;
        v2 = BattleAnimSystem_GetScriptVar(param0, 1) >> 16;
        v4 = BattleAnimSystem_GetScriptVar(param0, 1) & 0xFF;

        ScaleLerpContext_InitXY(&v0->unk_20, v1, v3, v2, v4, 100, BattleAnimSystem_GetScriptVar(param0, 2));
    }

    ShakeContext_Init(&v0->unk_44, 2, 0, 0, 10);
    BattleAnimSystem_StartAnimTask(v0->unk_18, ov12_02228868, v0);
}

static void ov12_02228B10(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228B10 *v0 = (UnkStruct_ov12_02228B10 *)param1;

    switch (v0->unk_04.state) {
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        BattleAnimSystem_UnloadBaseBg(v0->unk_04.battleAnimSystem, 2);
        BattleAnimSystem_EndAnimTask(v0->unk_04.battleAnimSystem, param0);
        Heap_Free(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_24);
    SpriteSystem_DrawSprites(v0->unk_04.pokemonSpriteManager);
}

void ov12_02228B40(BattleAnimSystem *param0)
{
    int v0;
    UnkStruct_ov12_02228B10 *v1 = NULL;

    v1 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02228B10));
    v0 = BattleAnimSystem_GetScriptVar(param0, 0);

    BattleAnimSystem_GetCommonData(param0, &v1->unk_04);
    BattleAnimSystem_LoadBaseBg(v1->unk_04.battleAnimSystem, 2);

    v1->unk_24 = BattleAnimSystem_GetPokemonSprite(v1->unk_04.battleAnimSystem, 0);

    ManagedSprite_SetExplicitOamMode(v1->unk_24, GX_OAM_MODE_OBJWND);
    ManagedSprite_SetAffineOverwriteMode(v1->unk_24, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAffineScale(v1->unk_24, 1.2f, 1.2f);

    GX_SetVisibleWnd(GX_WNDMASK_OW);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
    G2_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2, 0);

    BattleAnimSystem_StartAnimTask(v1->unk_04.battleAnimSystem, ov12_02228B10, v1);
}

static void ov12_02228BD0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228BD0 *v0 = (UnkStruct_ov12_02228BD0 *)param1;

    switch (v0->unk_20.state) {
    case 0:
        PosLerpContext_Init(&v0->unk_3C, v0->unk_0C.pos.x, v0->unk_0C.pos.x + v0->unk_64, v0->unk_0C.pos.y, v0->unk_0C.pos.y + v0->unk_66, v0->unk_08);
        v0->unk_20.state++;
    case 1:
        if (PosLerpContext_Update(&v0->unk_3C) == 0) {
            v0->unk_20.state++;
        }

        PokemonSprite_SetAttribute(v0->unk_0C.monSprite, MON_SPRITE_X_CENTER, v0->unk_3C.x);
        PokemonSprite_SetAttribute(v0->unk_0C.monSprite, MON_SPRITE_Y_CENTER, v0->unk_3C.y);
        break;
    default:
        BattleAnimSystem_EndAnimTask(v0->unk_60, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_02228C6C(BattleAnimSystem *param0)
{
    int v0;
    int v1;
    int v2;
    UnkStruct_ov12_02228BD0 *v3 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02228BD0));

    v3->unk_60 = param0;
    v3->unk_08 = BattleAnimSystem_GetScriptVar(param0, 0);
    v3->unk_64 = BattleAnimSystem_GetScriptVar(param0, 1);
    v3->unk_66 = BattleAnimSystem_GetScriptVar(param0, 2);

    v1 = BattleAnimSystem_GetScriptVar(param0, 3);
    BattleAnimSystem_GetCommonData(param0, &v3->unk_20);
    v2 = 0xFF;

    switch (v1) {
    case 0x2 | 0x100:
        v2 = BattleAnimSystem_GetAttacker(param0);
        break;
    case 0x4 | 0x100:
        if (BattleAnimSystem_IsDoubleBattle(param0) == 1) {
            v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetAttacker(param0));
        }
        break;
    case 0x8 | 0x100:
        v2 = BattleAnimSystem_GetDefender(param0);
        break;
    case 0x10 | 0x100:
        if (BattleAnimSystem_IsDoubleBattle(param0) == 1) {
            v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetDefender(param0));
        }
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    if (v2 == 0xFF) {
        Heap_Free(v3);
        return;
    }

    v3->unk_0C.monSprite = BattleAnimSystem_GetBattlerSprite(param0, v2);

    if (v3->unk_0C.monSprite == NULL) {
        Heap_Free(v3);
        return;
    }

    BattleAnimUtil_GetMonSpritePos(v3->unk_0C.monSprite, &v3->unk_0C.pos);
    v0 = BattleAnimUtil_GetTransformDirectionX(param0, v2);

    if (v0 > 0) {
        v3->unk_64 *= +1;
        v3->unk_66 *= +1;
    } else {
        v3->unk_64 *= -1;
        v3->unk_66 *= -1;
    }

    if (BattleAnimSystem_IsContest(param0) == 1) {
        v3->unk_66 *= -1;
    }

    {
        SysTask *v4;

        v4 = BattleAnimSystem_StartAnimTask(v3->unk_60, ov12_02228BD0, v3);
        ov12_02228BD0(v4, v3);
    }
}

static void ov12_02228DB8(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_02228DB8 *v1 = (UnkStruct_ov12_02228DB8 *)param1;

    v0 = RevolutionContext_UpdateAndApplyToMon(&v1->unk_30, v1->unk_1C.pos.x, v1->unk_1C.pos.y, v1->unk_1C.monSprite);

    if (v0 == 0) {
        PokemonSprite_SetAttribute(v1->unk_1C.monSprite, MON_SPRITE_X_CENTER, v1->unk_1C.pos.x);
        PokemonSprite_SetAttribute(v1->unk_1C.monSprite, MON_SPRITE_Y_CENTER, v1->unk_1C.pos.y + ((-8 * FX32_ONE) >> FX32_SHIFT));
        BattleAnimSystem_EndAnimTask(v1->unk_00.battleAnimSystem, param0);
        Heap_Free(v1);
    }
}

void ov12_02228E00(BattleAnimSystem *param0)
{
    int v0;
    UnkStruct_ov12_02228DB8 *v1 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02228DB8));

    BattleAnimSystem_GetCommonData(param0, &v1->unk_00);
    BattleAnimUtil_GetBattlerSprites(param0, BattleAnimSystem_GetScriptVar(param0, 0), &(v1->unk_1C), &v0);

    v1->unk_1C.pos.y -= (-8 * FX32_ONE) >> FX32_SHIFT;

    RevolutionContext_InitOvalRevolutions(&v1->unk_30, BattleAnimSystem_GetScriptVar(param0, 1), BattleAnimSystem_GetScriptVar(param0, 2));

    {
        v1->unk_30.data[2] /= 2;
        v1->unk_30.data[4] /= 2;
    }

    BattleAnimSystem_StartAnimTask(v1->unk_00.battleAnimSystem, ov12_02228DB8, v1);
}

static void ov12_02228E78(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02228E78 *v0 = (UnkStruct_ov12_02228E78 *)param1;

    switch (v0->unk_00.state) {
    case 0:
        if (PosLerpContext_Update(&v0->unk_30) == 0) {
            v0->unk_00.state++;
        }

        PokemonSprite_SetAttribute(v0->unk_1C.monSprite, MON_SPRITE_X_CENTER, v0->unk_30.x);
        PokemonSprite_SetAttribute(v0->unk_1C.monSprite, MON_SPRITE_Y_CENTER, v0->unk_30.y);
        break;
    default:
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_02228EC0(BattleAnimSystem *param0)
{
    Point2D v0;
    int v1;
    int v2;
    int v3;
    int v4;
    UnkStruct_ov12_02228E78 *v5 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02228E78));

    BattleAnimSystem_GetCommonData(param0, &v5->unk_00);

    v1 = BattleAnimSystem_GetScriptVar(param0, 0);
    v4 = BattleAnimSystem_GetScriptVar(param0, 1);

    switch (v1) {
    case 0x2:
        v2 = BattleAnimSystem_GetAttacker(param0);
        break;
    case 0x4:
        v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetAttacker(param0));
        break;
    case 0x8:
        v2 = BattleAnimSystem_GetDefender(param0);
        break;
    case 0x10:
        v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetDefender(param0));
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov12_022353AC(param0, v2, &v5->unk_54);
    BattleAnimUtil_GetBattlerSprites(param0, v1, &(v5->unk_1C), &v3);

    v5->unk_58.x = 0;
    v5->unk_58.y = 0;

    if (BattleAnimUtil_GetBattlerSide(v5->unk_00.battleAnimSystem, v2) == 0x3) {
        v5->unk_58.x = (0 - 80);
    } else {
        v5->unk_58.x = (256 + 80);
    }

    PosLerpContext_Init(&v5->unk_30, v5->unk_1C.pos.x, v5->unk_58.x, v5->unk_1C.pos.y, v5->unk_1C.pos.y, v4);
    BattleAnimSystem_StartAnimTask(v5->unk_00.battleAnimSystem, ov12_02228E78, v5);
}

void ov12_02228FB4(BattleAnimSystem *param0)
{
    Point2D v0;
    int v1;
    int v2;
    int v3;
    int v4;
    int v5;
    UnkStruct_ov12_02228E78 *v6 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02228E78));

    BattleAnimSystem_GetCommonData(param0, &v6->unk_00);

    v1 = BattleAnimSystem_GetScriptVar(param0, 0);
    v5 = BattleAnimSystem_GetScriptVar(param0, 1);
    v4 = BattleAnimSystem_GetScriptVar(param0, 2);

    switch (v5) {
    case 0x2:
        v2 = BattleAnimSystem_GetAttacker(param0);
        break;
    case 0x4:
        v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetAttacker(param0));
        break;
    case 0x8:
        v2 = BattleAnimSystem_GetDefender(param0);
        break;
    case 0x10:
        v2 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetDefender(param0));
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov12_022353AC(param0, v2, &v6->unk_54);
    BattleAnimUtil_GetBattlerSprites(param0, v5, &(v6->unk_1C), &v3);

    v6->unk_58.x = 0;
    v6->unk_58.y = 0;

    if (BattleAnimUtil_GetBattlerSide(v6->unk_00.battleAnimSystem, v2) == 0x3) {
        v6->unk_58.x = (0 - 80);
    } else {
        v6->unk_58.x = (256 + 80);
    }

    if (v1 == 0) {
        PosLerpContext_Init(&v6->unk_30, v6->unk_1C.pos.x, v6->unk_58.x, v6->unk_1C.pos.y, v6->unk_1C.pos.y, v4);
    } else {
        s16 v7;

        v7 = BattleAnimUtil_GetBattlerPos(param0, v2, 0);
        PosLerpContext_Init(&v6->unk_30, v6->unk_58.x, v7, v6->unk_1C.pos.y, v6->unk_1C.pos.y, v4);
    }

    BattleAnimSystem_StartAnimTask(v6->unk_00.battleAnimSystem, ov12_02228E78, v6);
}

void ov12_022290DC(BattleAnimSystem *param0)
{
    int v0;
    int v1;
    int v2;
    Point2D v3;
    BattleAnimSpriteInfo v4;

    v0 = BattleAnimSystem_GetScriptVar(param0, 0);

    switch (v0) {
    case 0x2:
        v1 = BattleAnimSystem_GetAttacker(param0);
        break;
    case 0x4:
        v1 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetAttacker(param0));
        break;
    case 0x8:
        v1 = BattleAnimSystem_GetDefender(param0);
        break;
    case 0x10:
        v1 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetDefender(param0));
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    ov12_022353AC(param0, v1, &v3);
    BattleAnimUtil_GetBattlerSprites(param0, v0, &v4, &v2);

    {
        s16 v5 = BattleAnimSystem_GetBattlerSpriteHeight(param0, v1);

        PokemonSprite_SetAttribute(v4.monSprite, MON_SPRITE_X_CENTER, v3.x);
        PokemonSprite_SetAttribute(v4.monSprite, MON_SPRITE_Y_CENTER, v3.y + v5);
    }
}

static void ov12_02229184(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229184 *v0 = (UnkStruct_ov12_02229184 *)param1;

    if (ov12_02226848(v0->unk_30) == 0) {
        ov12_02226858(v0->unk_30);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
    }
}

void ov12_022291AC(BattleAnimSystem *param0)
{
    int v0;
    UnkStruct_ov12_02229184 *v1 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02229184));

    BattleAnimSystem_GetCommonData(param0, &v1->unk_00);

    {
        int v2;
        int v3 = BattleAnimSystem_GetScriptVar(param0, 0);
        int v4 = BattleAnimSystem_GetScriptVar(param0, 1);
        int v5 = BattleAnimSystem_GetScriptVar(param0, 2);
        int v6 = BattleAnimSystem_GetScriptVar(param0, 3);
        int v7 = BattleAnimSystem_GetScriptVar(param0, 4);
        int v8 = BattleAnimSystem_GetScriptVar(param0, 5);

        BattleAnimUtil_GetPokemonSprites(param0, v3, &(v1->unk_1C), &v0);

        v2 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v1->unk_1C.hwSprite->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
        v1->unk_30 = ov12_02226870(v1->unk_00.paletteData, BattleAnimSystem_GetHeapID(param0), 2, v2 * 16, 16, v4, v5, v6, v7, v8, 1100);
    }

    BattleAnimSystem_StartAnimTask(v1->unk_00.battleAnimSystem, ov12_02229184, v1);
}

static void ov12_02229278(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229278 *v0 = (UnkStruct_ov12_02229278 *)param1;

    switch (v0->unk_00.state) {
    case 0: {
        if ((++v0->unk_4C) < v0->unk_44) {
            return;
        }

        v0->unk_4C = 0;

        if (v0->unk_48 == 0) {
            if (v0->unk_54 < 0) {
                v0->unk_54 = 0;
            }

            if (v0->unk_54 == 0) {
                v0->unk_00.state++;
            }
        } else {
            if (v0->unk_54 > 80) {
                v0->unk_54 = 80;
            }

            if (v0->unk_54 == 80) {
                v0->unk_00.state++;
            }
        }

        PokemonSprite_SetAttribute(v0->unk_1C.monSprite, MON_SPRITE_DRAW_HEIGHT, v0->unk_54);
        PokemonSprite_SetAttribute(v0->unk_1C.monSprite, MON_SPRITE_Y_CENTER, v0->unk_50);

        v0->unk_50 -= v0->unk_42;
        v0->unk_54 += v0->unk_42;
    } break;
    default:
        ov12_02226B84(v0->unk_1C.monSprite);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_02229304(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02229278 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02229278));

    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    {
        int v1 = BattleAnimSystem_GetScriptVar(param0, 0);
        int v2;
        int v3;

        BattleAnimUtil_GetBattlerSprites(param0, v1, &(v0->unk_1C), &v2);

        switch (v1) {
        case 0x2:
            v3 = BattleAnimSystem_GetAttacker(param0);
            break;
        case 0x4:
            v3 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetAttacker(param0));
            break;
        case 0x8:
            v3 = BattleAnimSystem_GetDefender(param0);
            break;
        case 0x10:
            v3 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetDefender(param0));
            break;
        default:
            GF_ASSERT(0);
            break;
        }

        v0->unk_48 = BattleAnimSystem_GetScriptVar(param0, 1);

        if (v0->unk_48 == 0) {
            v0->unk_50 = PokemonSprite_GetAttribute(v0->unk_1C.monSprite, MON_SPRITE_Y_CENTER);
            v0->unk_54 = 80 - PokemonSprite_GetAttribute(v0->unk_1C.monSprite, MON_SPRITE_DRAW_HEIGHT);
            v0->unk_40 = BattleAnimSystem_GetScriptVar(param0, 2);
            v0->unk_42 = BattleAnimSystem_GetScriptVar(param0, 3);
            v0->unk_42 *= -1;
        } else {
            v0->unk_50 = PokemonSprite_GetAttribute(v0->unk_1C.monSprite, MON_SPRITE_Y_CENTER);
            v0->unk_54 = PokemonSprite_GetAttribute(v0->unk_1C.monSprite, MON_SPRITE_DRAW_HEIGHT);
            v0->unk_40 = BattleAnimSystem_GetScriptVar(param0, 2);
            v0->unk_42 = BattleAnimSystem_GetScriptVar(param0, 3);
        }

        v0->unk_30 = 0;
        v0->unk_34 = 0;
        v0->unk_38 = 80;
        v0->unk_3C = 80 - BattleAnimSystem_GetBattlerSpriteHeight(param0, v3);
        v0->unk_44 = BattleAnimSystem_GetScriptVar(param0, 4);
        v0->unk_4C = 0;

        PokemonSprite_SetPartialDraw(v0->unk_1C.monSprite, v0->unk_30, v0->unk_34, v0->unk_38, v0->unk_3C);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_02229278, v0);
}

static int ov12_02229454(BattleAnimSystem *param0, int param1)
{
    int v0 = 0;

    switch (param1) {
    case 0x2:
        v0 = BattleAnimSystem_GetAttacker(param0);
        break;
    case 0x4:
        v0 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetAttacker(param0));
        break;
    case 0x8:
        v0 = BattleAnimSystem_GetDefender(param0);
        break;
    case 0x10:
        v0 = BattleAnimUtil_GetAlliedBattler(param0, BattleAnimSystem_GetDefender(param0));
        break;
    default:
        GF_ASSERT(0);
        break;
    }

    return v0;
}

static void ov12_022294AC(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022294AC *v0 = (UnkStruct_ov12_022294AC *)param1;

    switch (v0->unk_00.state) {
    case 0:
        if ((++v0->unk_24) < v0->unk_20) {
            break;
        }

        v0->unk_24 = 0;
        v0->unk_44 += v0->unk_1C;
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_Y_CENTER, v0->unk_44);
        v0->unk_3C -= v0->unk_1C;

        if (v0->unk_3C > v0->unk_40) {
            v0->unk_3C = v0->unk_40;
            v0->unk_00.state++;
        }

        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_DRAW_HEIGHT, v0->unk_3C);
        break;
    case 1:
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_PARTIAL_DRAW, 0);
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_Y_CENTER, v0->unk_48);
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_DRAW_HEIGHT, v0->unk_40);
        ov12_02226B84(v0->unk_28.monSprite);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        break;
    }
}

static void ov12_02229538(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022294AC *v0 = (UnkStruct_ov12_022294AC *)param1;

    switch (v0->unk_00.state) {
    case 0:
        if ((++v0->unk_24) < v0->unk_20) {
            break;
        }

        v0->unk_24 = 0;
        v0->unk_44 += v0->unk_1C;
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_Y_CENTER, v0->unk_44);
        v0->unk_3C -= v0->unk_1C;

        if (v0->unk_3C < 0) {
            v0->unk_3C = 0;
            v0->unk_00.state++;
        }

        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_DRAW_HEIGHT, v0->unk_3C);
        break;
    case 1:
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_PARTIAL_DRAW, 0);
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_Y_CENTER, v0->unk_48);
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_DRAW_HEIGHT, v0->unk_40);
        ov12_02226B84(v0->unk_28.monSprite);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        break;
    }
}

static void ov12_022295C4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022294AC *v0 = (UnkStruct_ov12_022294AC *)param1;

    switch (v0->unk_00.state) {
    case 0:
        if ((++v0->unk_24) < v0->unk_20) {
            break;
        }

        v0->unk_24 = 0;
        v0->unk_3C -= v0->unk_1C;
        v0->unk_40 += v0->unk_1C;

        if (v0->unk_3C < 0) {
            v0->unk_3C = 0;
            v0->unk_00.state++;
        }

        PokemonSprite_SetPartialDraw(v0->unk_28.monSprite, 0, v0->unk_3C, 80, v0->unk_40);
        break;
    case 1:
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_PARTIAL_DRAW, 0);
        ov12_02226B84(v0->unk_28.monSprite);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_02229638(BattleAnimSystem *param0)
{
    UnkStruct_ov12_022294AC *v0;
    int v1;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_022294AC));

    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    v0->unk_1C = BattleAnimSystem_GetScriptVar(param0, 3);
    v0->unk_20 = BattleAnimSystem_GetScriptVar(param0, 4);

    {
        int v2 = BattleAnimSystem_GetScriptVar(param0, 0);
        int v3;

        BattleAnimUtil_GetBattlerSprites(param0, v2, &(v0->unk_28), &v3);
        v1 = ov12_02229454(param0, v2);
    }

    if (BattleAnimSystem_GetScriptVar(param0, 5) != 0) {
        v0->unk_3C = BattleAnimSystem_GetBattlerSpriteHeight(param0, v1);
        v0->unk_3C = 80 - v0->unk_3C;
        v0->unk_40 = 0;

        PokemonSprite_SetPartialDraw(v0->unk_28.monSprite, 0, v0->unk_3C, 80, v0->unk_40);
        BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_022295C4, v0);

        return;
    }

    v0->unk_44 = PokemonSprite_GetAttribute(v0->unk_28.monSprite, MON_SPRITE_Y_CENTER);
    v0->unk_48 = v0->unk_44;
    v0->unk_3C = BattleAnimSystem_GetBattlerSpriteHeight(param0, v1);
    v0->unk_3C = 80 - v0->unk_3C;
    v0->unk_40 = v0->unk_3C;

    if (v0->unk_1C > 0) {
        PokemonSprite_SetPartialDraw(v0->unk_28.monSprite, 0, 0, 80, v0->unk_3C);
        BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_02229538, v0);
    } else {
        v0->unk_3C = 0;
        v0->unk_44 += v0->unk_40;
        PokemonSprite_SetAttribute(v0->unk_28.monSprite, MON_SPRITE_Y_CENTER, v0->unk_44);
        PokemonSprite_SetPartialDraw(v0->unk_28.monSprite, 0, 0, 80, v0->unk_3C);
        BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_022294AC, v0);
    }
}

static void ov12_02229738(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_02229738 *v1 = (UnkStruct_ov12_02229738 *)param1;

    switch (v1->unk_00) {
    case 0:
        ShakeContext_Init(&v1->unk_D4, v1->unk_04, v1->unk_08, v1->unk_0C, v1->unk_10);
        v1->unk_00++;
    case 1: {
        if (ShakeContext_Update(&v1->unk_D4) == 0) {
            if (v1->unk_01 >= v1->unk_18) {
                v1->unk_00++;
            } else {
                v1->unk_00--;
            }

            if (v1->unk_20 != 0) {
                Bg_SetOffset(v1->unk_28, v1->unk_1C, 0, 0);
            }

            if (v1->unk_24 != 0) {
                Bg_SetOffset(v1->unk_28, v1->unk_1C, 3, 0);
            }

            v1->unk_01++;
        } else {
            if (v1->unk_D4.x != 0) {
                v1->unk_20 = 1;
                Bg_SetOffset(v1->unk_28, v1->unk_1C, 0, v1->unk_D4.x);
            }

            if (v1->unk_D4.y != 0) {
                v1->unk_24 = 1;
                Bg_SetOffset(v1->unk_28, v1->unk_1C, 3, v1->unk_D4.y);
            }
        }
    } break;
    default:
        BattleAnimSystem_EndAnimTask(v1->unk_2C, param0);
        Heap_Free(v1);
        break;
    }
}

void ov12_02229810(BattleAnimSystem *param0)
{
    int v0;
    UnkStruct_ov12_02229738 *v1 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02229738));

    v1->unk_00 = 0;
    v1->unk_01 = 0;
    v1->unk_2C = param0;
    v1->unk_30 = BattleAnimSystem_GetPokemonSpriteManager(v1->unk_2C);
    v1->unk_28 = BattleAnimSystem_GetBgConfig(v1->unk_2C);
    v1->unk_04 = BattleAnimSystem_GetScriptVar(param0, 0);
    v1->unk_08 = BattleAnimSystem_GetScriptVar(param0, 1);
    v1->unk_0C = BattleAnimSystem_GetScriptVar(param0, 2);
    v1->unk_10 = BattleAnimSystem_GetScriptVar(param0, 3);
    v1->unk_18 = BattleAnimSystem_GetScriptVar(param0, 4);

    if (BattleAnimSystem_GetScriptVar(param0, 5) == 0) {
        v1->unk_1C = 3;
    } else {
        v1->unk_1C = 2;
    }

    BattleAnimSystem_StartAnimTask(v1->unk_2C, ov12_02229738, v1);
}

static void ov12_0222988C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222988C *v0 = param1;

    if ((v0->unk_24 == v0->unk_2C) || (v0->unk_28 == v0->unk_2C)) {
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        return;
    }

    if (v0->unk_20 < 0) {
        if (v0->unk_24 + v0->unk_20 > 0) {
            v0->unk_24 += v0->unk_20;
            v0->unk_28 += v0->unk_20;
        } else {
            v0->unk_24 = v0->unk_2C;
            v0->unk_28 = v0->unk_2C;
        }
    } else {
        if (v0->unk_24 + v0->unk_20 < 15) {
            v0->unk_24 += v0->unk_20;
            v0->unk_28 += v0->unk_20;
        } else {
            v0->unk_24 = v0->unk_2C;
            v0->unk_28 = v0->unk_2C;
        }
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    G2_SetOBJMosaicSize(v0->unk_24, v0->unk_28);
    SpriteSystem_DrawSprites(v0->unk_00.pokemonSpriteManager);
}

void ov12_02229908(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222988C *v0;
    int v1;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222988C));

    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    v0->unk_20 = BattleAnimSystem_GetScriptVar(v0->unk_00.battleAnimSystem, 1);
    v0->unk_24 = BattleAnimSystem_GetScriptVar(v0->unk_00.battleAnimSystem, 2);
    v0->unk_28 = BattleAnimSystem_GetScriptVar(v0->unk_00.battleAnimSystem, 3);
    v0->unk_1C = BattleAnimSystem_GetPokemonSprite(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetScriptVar(v0->unk_00.battleAnimSystem, 0));

    ManagedSprite_SetDrawFlag(v0->unk_1C, 1);

    if (v0->unk_20 < 0) {
        v0->unk_2C = 0;
    } else {
        v0->unk_2C = 15;
    }

    ManagedSprite_SetMosaicFlag(v0->unk_1C, 1);

    {
        SysTask *v2;

        v2 = BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222988C, v0);
        ov12_0222988C(v2, v0);
    }
}

static void ov12_02229980(BattleAnimSystem *param0, UnkStruct_ov12_02229980 *param1)
{
    param1->unk_00 = BattleAnimSystem_GetScriptVar(param0, 0);
    param1->unk_0C.x = BattleAnimSystem_GetScriptVar(param0, 1);
    param1->unk_0C.y = BattleAnimSystem_GetScriptVar(param0, 2);
    param1->unk_04 = BattleAnimSystem_GetScriptVar(param0, 3);
    param1->unk_06 = BattleAnimSystem_GetScriptVar(param0, 4);
    param1->unk_08 = BattleAnimSystem_GetScriptVar(param0, 5);
    param1->unk_10 = BattleAnimSystem_GetScriptVar(param0, 6);
    param1->unk_30 = BattleAnimSystem_GetScriptVar(param0, 8);

    {
        int v0 = BattleAnimSystem_GetScriptVar(param0, 7);

        param1->unk_1C = 0;
        param1->unk_20 = (v0 & 0xFFFF0000) >> 16;
        param1->unk_24 = (v0 & 0xFFFF);

        if (param1->unk_20 == 0) {
            param1->unk_20 = 0;
        }

        if (param1->unk_24 == 0) {
            param1->unk_24 = 0xFF;
        }
    }

    param1->unk_38 = BattleAnimSystem_GetEmitter(param0, param1->unk_00);
    param1->unk_34 = BattleAnimSystem_GetCurrentParticleSystem(param0);

    if (param1->unk_10 == 0) {
        param1->unk_14 = BattleAnimSystem_GetAttacker(param0);
        param1->unk_18 = BattleAnimSystem_GetDefender(param0);
    } else if (param1->unk_10 == 1) {
        param1->unk_14 = BattleAnimSystem_GetDefender(param0);
        param1->unk_18 = BattleAnimSystem_GetAttacker(param0);
    } else {
        GF_ASSERT("FALSE");
    }

    if (param1->unk_38 == NULL) {
        GF_ASSERT(0);
    }
}

static BOOL ov12_02229A50(SPLEmitter *param0)
{
    BOOL v0 = 0;

    {
        SPLParticle *v1;
        int v2;
        int v3;

        v1 = param0->particles.first;

        while (v1 != NULL) {
            v2 = v1->age;
            v3 = v1->lifeTime;
            v1 = v1->next;
        }

        if (v2 != v3) {
            v0 = 1;
        }
    }

    return v0;
}

static void ov12_02229A6C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229980 *v0 = param1;
    BOOL v1 = ov12_02229A50(v0->unk_38);

    if (v0->unk_28 < v0->unk_04) {
        v0->unk_28++;
        return;
    }

    if ((PosLerpContext_Update(&v0->unk_A8[0]) == 0) && (v1 == 0)) {
        ParticleSystem_DeleteEmitter(v0->unk_34, v0->unk_38);
        BattleAnimSystem_EndAnimTask(v0->unk_3C.battleAnimSystem, param0);
        ov12_02235E80(v0);
        (v0) = NULL;
        return;
    } else {
        if (((v0->unk_20 > v0->unk_1C) || (v0->unk_24 < v0->unk_1C)) && (v0->unk_24 != 255)) {
            return;
        }

        SPLEmitter_SetPosX(v0->unk_38, v0->unk_A8[0].x * 172);
        SPLEmitter_SetPosY(v0->unk_38, v0->unk_A8[0].y * 172);

        if (v0->unk_30) {
            v0->unk_2C += (360 / (v0->unk_06));
            SPLEmitter_SetPosY(v0->unk_38, (v0->unk_A8[0].y * 172) + CalcSineDegrees_Wraparound(v0->unk_2C));
        }
    }
}

void ov12_02229B28(BattleAnimSystem *param0)
{
    int v0;
    VecFx32 v1;
    VecFx32 v2;
    UnkStruct_ov12_02229980 *v3 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02229980));

    BattleAnimSystem_GetCommonData(param0, &v3->unk_3C);
    ov12_02229980(param0, v3);

    v0 = BattleAnimUtil_GetTransformDirectionX(param0, BattleAnimSystem_GetAttacker(param0));

    ov12_02235508(param0, v3->unk_14, &v1);
    ov12_02235508(param0, v3->unk_18, &v2);
    PosLerpContext_Init(&v3->unk_A8[0], v1.x / 172, (v2.x / 172) + (v3->unk_0C.x * v0), v1.y / 172, (v2.y / 172) + (v3->unk_0C.y * v0), v3->unk_06);

    if (v0 > 0) {
        ValueLerpContext_Init(&v3->unk_F0, ((20 * 0xffff) / 360) * v0, ((130 * 0xffff) / 360) * v0, 10);
    } else {
        ValueLerpContext_Init(&v3->unk_F0, ((90 * 0xffff) / 360) * v0, ((130 * 0xffff) / 360) * v0, 10);
    }

    {
        int v4;

        for (v4 = 0; v4 < v3->unk_20; v4++) {
            PosLerpContext_Update(&v3->unk_A8[0]);
        }

        if (v3->unk_24 != 0xFF) {
            v3->unk_1C = v3->unk_24 + 1;
        }

        SPLEmitter_SetPosX(v3->unk_38, v3->unk_A8[0].x * 172);
        SPLEmitter_SetPosY(v3->unk_38, v3->unk_A8[0].y * 172);
    }

    BattleAnimSystem_StartAnimTask(v3->unk_3C.battleAnimSystem, ov12_02229A6C, v3);
}

void ov12_02229C5C(BattleAnimSystem *param0)
{
    VecFx32 v0;
    VecFx32 v1;
    int v2;
    UnkStruct_ov12_02229980 *v3 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02229980));
    BattleAnimSystem_GetCommonData(param0, &v3->unk_3C);

    v3->unk_00 = BattleAnimSystem_GetScriptVar(param0, 0);
    v3->unk_10 = BattleAnimSystem_GetScriptVar(param0, 1);

    v2 = BattleAnimSystem_GetScriptVar(param0, 2);

    v3->unk_06 = BattleAnimSystem_GetScriptVar(param0, 3);
    v3->unk_04 = BattleAnimSystem_GetScriptVar(param0, 4);
    v3->unk_28 = 0;

    {
        int v4 = BattleAnimSystem_GetScriptVar(param0, 5);

        v3->unk_1C = 0;
        v3->unk_20 = (v4 & 0xFFFF0000) >> 16;
        v3->unk_24 = (v4 & 0xFFFF);

        if (v3->unk_20 == 0) {
            v3->unk_20 = 0;
        }

        if (v3->unk_24 == 0) {
            v3->unk_24 = 0xFF;
        }
    }

    v3->unk_38 = BattleAnimSystem_GetEmitter(param0, v3->unk_00);
    v3->unk_34 = BattleAnimSystem_GetCurrentParticleSystem(param0);

    if (v3->unk_10 == 0) {
        v3->unk_14 = BattleAnimSystem_GetAttacker(param0);
        v3->unk_18 = BattleAnimSystem_GetAttacker(param0);
    } else {
        v3->unk_14 = BattleAnimSystem_GetDefender(param0);
        v3->unk_18 = BattleAnimSystem_GetDefender(param0);
    }

    if (v3->unk_38 == NULL) {
        GF_ASSERT(0);
    }

    ov12_02235508(param0, v3->unk_14, &v0);
    ov12_02235508(param0, v3->unk_18, &v1);

    if (v2 == 0) {
        ov12_02235748(&v0);
        v0.x = v1.x;
    } else {
        ov12_02235748(&v1);
        v1.x = v0.x;
    }

    PosLerpContext_Init(&v3->unk_A8[0], v0.x / 172, v1.x / 172, v0.y / 172, v1.y / 172, v3->unk_06);

    {
        int v5;

        for (v5 = 0; v5 < v3->unk_20; v5++) {
            PosLerpContext_Update(&v3->unk_A8[0]);
        }

        if (v3->unk_24 != 0xFF) {
            v3->unk_1C = v3->unk_24 + 1;
        }

        SPLEmitter_SetPosX(v3->unk_38, v3->unk_A8[0].x * 172);
        SPLEmitter_SetPosY(v3->unk_38, v3->unk_A8[0].y * 172);
    }

    BattleAnimSystem_StartAnimTask(v3->unk_3C.battleAnimSystem, ov12_02229A6C, v3);
}

static void ov12_02229DF0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229980 *v0 = param1;
    BOOL v1 = ov12_02229A50(v0->unk_38);

    if ((ov12_02225CE4(&v0->unk_A8[0], &v0->unk_A8[1]) == 0) && (v1 == 0)) {
        ParticleSystem_DeleteEmitter(v0->unk_34, v0->unk_38);
        BattleAnimSystem_EndAnimTask(v0->unk_3C.battleAnimSystem, param0);
        ov12_02235E80(v0);
        (v0) = NULL;
        return;
    } else {
        SPLEmitter_SetPosX(v0->unk_38, v0->unk_A8[0].x * 172);
        SPLEmitter_SetPosY(v0->unk_38, v0->unk_A8[0].y * 172);
    }
}

void ov12_02229E54(BattleAnimSystem *param0)
{
    int v0;
    VecFx32 v1;
    VecFx32 v2;
    UnkStruct_ov12_02229980 *v3 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02229980));

    BattleAnimSystem_GetCommonData(param0, &v3->unk_3C);
    ov12_02229980(param0, v3);

    v0 = BattleAnimUtil_GetTransformDirectionX(param0, BattleAnimSystem_GetAttacker(param0));

    ov12_02235508(param0, v3->unk_14, &v1);
    ov12_02235508(param0, v3->unk_18, &v2);
    ov12_02225C98(&v3->unk_A8[0], &v3->unk_A8[1], v1.x / 172, (v2.x / 172) + (v3->unk_0C.x * v0), v1.y / 172, (v2.y / 172) + (v3->unk_0C.y * v0), v3->unk_06, v3->unk_08 * -FX32_ONE);

    if (v0 > 0) {
        ValueLerpContext_Init(&v3->unk_F0, ((20 * 0xffff) / 360) * v0, ((130 * 0xffff) / 360) * v0, 10);
    } else {
        ValueLerpContext_Init(&v3->unk_F0, ((90 * 0xffff) / 360) * v0, ((130 * 0xffff) / 360) * v0, 10);
    }

    {
        int v4;

        for (v4 = 0; v4 < v3->unk_20; v4++) {
            ov12_02225CE4(&v3->unk_A8[0], &v3->unk_A8[1]);
        }

        if (v3->unk_24 != 0xFF) {
            v3->unk_1C = v3->unk_24 + 1;
        }

        SPLEmitter_SetPosX(v3->unk_38, v3->unk_A8[0].x * 172);
        SPLEmitter_SetPosY(v3->unk_38, v3->unk_A8[0].y * 172);
    }

    BattleAnimSystem_StartAnimTask(v3->unk_3C.battleAnimSystem, ov12_02229DF0, v3);
}

static void ov12_02229F9C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02229F9C *v0 = param1;
    BOOL v1 = ov12_02229A50(v0->unk_38);

    if ((RevolutionContext_Update(&v0->unk_58) == 0) && (v1 == 0)) {
        ParticleSystem_DeleteEmitter(v0->unk_34, v0->unk_38);
        BattleAnimSystem_EndAnimTask(v0->unk_3C.battleAnimSystem, param0);
        Heap_Free(v0);
    } else {
        VecFx32 v2;

        v2.x = v0->unk_88.x + (v0->unk_58.x * 172);
        v2.y = v0->unk_88.y + (v0->unk_58.y * 172);

        SPLEmitter_SetPosX(v0->unk_38, v2.x);
        SPLEmitter_SetPosY(v0->unk_38, v2.y);
    }
}

void ov12_0222A00C(BattleAnimSystem *param0)
{
    UnkStruct_ov12_02229F9C *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02229F9C));

    BattleAnimSystem_GetCommonData(param0, &v0->unk_3C);

    v0->unk_00 = BattleAnimSystem_GetScriptVar(param0, 0);
    v0->unk_04 = BattleAnimSystem_GetScriptVar(param0, 1);
    v0->unk_0C = BattleAnimSystem_GetScriptVar(param0, 2);
    v0->unk_08 = BattleAnimSystem_GetScriptVar(param0, 3);
    v0->unk_10 = BattleAnimSystem_GetScriptVar(param0, 4);
    v0->unk_14 = BattleAnimSystem_GetScriptVar(param0, 5);
    v0->unk_18 = BattleAnimSystem_GetScriptVar(param0, 6);
    v0->unk_1C = BattleAnimSystem_GetScriptVar(param0, 7);
    v0->unk_20 = BattleAnimSystem_GetScriptVar(param0, 8);

    if (v0->unk_20 == 0) {
        v0->unk_24 = BattleAnimSystem_GetAttacker(param0);
    } else {
        v0->unk_24 = BattleAnimSystem_GetDefender(param0);
    }

    ov12_02235508(param0, v0->unk_24, &v0->unk_88);

    v0->unk_38 = BattleAnimSystem_GetEmitter(param0, v0->unk_00);
    v0->unk_34 = BattleAnimSystem_GetParticleSystem(param0, BattleAnimSystem_GetScriptVar(param0, 9));

    RevolutionContext_Init(&v0->unk_58, (v0->unk_04 * 0xffff) / 360, (v0->unk_0C * 0xffff) / 360, (v0->unk_08 * 0xffff) / 360, (v0->unk_10 * 0xffff) / 360, v0->unk_14 * FX32_ONE, v0->unk_18 * FX32_ONE, v0->unk_1C);

    {
        VecFx32 v1;

        RevolutionContext_Update(&v0->unk_58);

        v1.x = v0->unk_88.x + (v0->unk_58.x * 172);
        v1.y = v0->unk_88.y + (v0->unk_58.y * 172);

        SPLEmitter_SetPosX(v0->unk_38, v1.x);
        SPLEmitter_SetPosY(v0->unk_38, v1.y);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_3C.battleAnimSystem, ov12_02229F9C, v0);
}

static void ov12_0222A178(SysTask *param0, void *param1)
{
    BOOL v0;
    UnkStruct_ov12_0222A178 *v1 = (UnkStruct_ov12_0222A178 *)param1;

    v0 = 1;
    v0 = ManagedSprite_IsAnimated(v1->unk_1C);

    if (v0 == 0) {
        Sprite_DeleteAndFreeResources(v1->unk_1C);
        BattleAnimSystem_EndAnimTask(v1->unk_00.battleAnimSystem, param0);
        Heap_Free(v1);
        return;
    }

    ManagedSprite_TickFrame(v1->unk_1C);
    SpriteSystem_DrawSprites(v1->unk_00.primarySpriteManager);
}

void ov12_0222A1AC(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222A178 *v0 = NULL;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222A178));
    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    v0->unk_1C = param3;

    {
        s16 v1;
        s16 v2;

        v1 = BattleAnimSystem_GetScriptVar(param0, 0);
        v2 = BattleAnimSystem_GetScriptVar(param0, 1);

        ManagedSprite_OffsetPositionXY(param3, v1, v2);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222A178, v0);
}

static const s16 Unk_ov12_0223A03C[] = {
    0x5,
    0x5,
    0x5,
    0x5,
    0x4,
    0x4,
    0x4,
    0x3,
    0x3,
    0x3,
    0x0,
    -3,
    -3,
    -3,
    -4,
    -4,
    -4,
    -5,
    -5,
    -5,
    -5,
    -5,
    -5,
    -5,
    -5,
    -4,
    -4,
    -4,
    -3,
    -3,
    -3,
    0x0,
    0x3,
    0x3,
    0x3,
    0x4,
    0x4,
    0x4,
    0x5,
    0x5,
    0x5,
    0x5,
    0xFF
};

static void ov12_0222A1F4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A1F478 *v0 = param1;

    switch (v0->unk_00.state) {
    case 0: {
        s16 v1 = Unk_ov12_0223A03C[v0->unk_34];

        v0->unk_34++;

        if (v1 != 0xFF) {
            int v2;
            int v3;

            if (v1 == 0) {
                v2 = ManagedSprite_GetExplicitPriority(v0->unk_1C);

                if (v2 == BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00.battleAnimSystem)) {
                    v3 = BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSystem, 2);
                    ManagedSprite_SetExplicitPriority(v0->unk_1C, v3);
                } else {
                    v3 = BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00.battleAnimSystem);
                    ManagedSprite_SetExplicitPriority(v0->unk_1C, v3);
                }
            }

            ManagedSprite_OffsetPositionXY(v0->unk_1C, v1, 0);
        } else {
            ManagedSprite_SetAffineOverwriteMode(v0->unk_1C, AFFINE_OVERWRITE_MODE_DOUBLE);
            ValueLerpContext_Init(&v0->unk_20, 0, +((20 * 0xffff) / 360), 4);
            ManagedSprite_SetAffineTranslation(v0->unk_1C, -8, 16);
            v0->unk_34 = 0;
            v0->unk_00.state++;
        }
    } break;
    case 1: {
        if (ValueLerpContext_Update(&v0->unk_20) == 1) {
            ManagedSprite_SetAffineZRotation(v0->unk_1C, v0->unk_20.value);
        } else {
            if (v0->unk_34 > 5) {
                v0->unk_00.state++;
            } else {
                v0->unk_34++;

                switch (v0->unk_34) {
                case 1:
                    ValueLerpContext_Init(&v0->unk_20, +((20 * 0xffff) / 360), -((20 * 0xffff) / 360), 4);
                    break;
                case 2:
                    ValueLerpContext_Init(&v0->unk_20, -((20 * 0xffff) / 360), +((20 * 0xffff) / 360), 4);
                    break;
                case 3:
                    ValueLerpContext_Init(&v0->unk_20, +((20 * 0xffff) / 360), -((20 * 0xffff) / 360), 4);
                    break;
                case 4:
                    ValueLerpContext_Init(&v0->unk_20, -((20 * 0xffff) / 360), +((20 * 0xffff) / 360), 4);
                    break;
                case 5:
                    ValueLerpContext_Init(&v0->unk_20, +((20 * 0xffff) / 360), 0, 4 / 2);
                    break;
                }
            }
        }
    } break;
    default:
        Sprite_DeleteAndFreeResources(v0->unk_1C);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    SpriteSystem_DrawSprites(v0->unk_00.primarySpriteManager);
}

void ov12_0222A34C(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222A1F478 *v0 = NULL;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222A1F478));

    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    v0->unk_1C = param3;
    v0->unk_34 = 0;

    {
        int v1 = BattleAnimSystem_GetDefender(param0);
        s16 v2 = BattleAnimUtil_GetBattlerPos(param0, v1, 0);
        s16 v3 = BattleAnimUtil_GetBattlerPos(param0, v1, 1);

        ManagedSprite_SetPositionXY(v0->unk_1C, v2, v3);
    }

    if (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x4) {
        ManagedSprite_SetAnim(v0->unk_1C, 1);
    } else {
        ManagedSprite_SetAnim(v0->unk_1C, 0);
    }

    ManagedSprite_SetExplicitPriority(v0->unk_1C, BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00.battleAnimSystem));
    ManagedSprite_OffsetPositionXY(v0->unk_1C, 0, +12);

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222A1F4, v0);
}

static void ov12_0222A3DC(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A3DC *v0 = param1;
    BOOL v1 = ManagedSprite_IsAnimated(v0->unk_1C);

    if (v1 == 0) {
        Sprite_DeleteAndFreeResources(v0->unk_1C);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    SpriteSystem_DrawSprites(v0->unk_00.primarySpriteManager);
}

void ov12_0222A410(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222A3DC *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222A1F478));
    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);
    v0->unk_1C = param3;

    {
        int v1 = 0;
        int v2 = BattleAnimSystem_GetDefender(param0);
        s16 v3 = BattleAnimUtil_GetBattlerPos(param0, v2, 0);
        s16 v4 = BattleAnimUtil_GetBattlerPos(param0, v2, 1);

        if (BattleAnimSystem_IsContest(param0) == 1) {
            v3 = 72;
            v4 = 32;
            v1 = 0;
        } else {
            if (BattleAnimUtil_GetBattlerSide(v0->unk_00.battleAnimSystem, v2) == 0x3) {
                v4 = 190 - 32 - 32;
                v1 = 1;
            } else {
                v4 = 0 + 32;
                v1 = 0;
            }
        }

        ManagedSprite_SetPositionXY(v0->unk_1C, v3, v4);
        ManagedSprite_SetAnim(v0->unk_1C, v1);
    }

    ManagedSprite_SetExplicitPriority(v0->unk_1C, BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSystem, 2));
    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222A3DC, v0);
}

static void ov12_0222A4A0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A4A0 *v0 = param1;
    BOOL v1;

    switch (v0->unk_00.state) {
    case 0:
        ov12_02225C98(&v0->unk_24[0], &v0->unk_24[1], -30, 128 - 16, 160, 80 + 32, 21, 64 * FX32_ONE);
        v0->unk_00.state++;
        break;
    case 1:
        if (ov12_02225D2C(&v0->unk_24[0], &v0->unk_24[1], v0->unk_1C) == 0) {
            v0->unk_00.state++;
        }
        break;
    case 2: {
        BOOL v2 = ManagedSprite_IsAnimated(v0->unk_1C);

        if (v2 == 0) {
            ManagedSprite_SetExplicitOamMode(v0->unk_1C, GX_OAM_MODE_XLU);
            v0->unk_20 = 16;
            v0->unk_21 = 0;
            BattleAnimUtil_SetSpriteBgBlending(v0->unk_00.battleAnimSystem, v0->unk_20, v0->unk_21);
            v0->unk_00.state++;
        }
    } break;
    case 3:
        if (v0->unk_20 > 0) {
            v0->unk_20--;
        }

        if (v0->unk_21 < 16) {
            v0->unk_21++;
        }

        G2_ChangeBlendAlpha(v0->unk_20, v0->unk_21);

        if (v0->unk_20 == 0) {
            v0->unk_00.state++;
        }
        break;
    default:
        Sprite_DeleteAndFreeResources(v0->unk_1C);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    SpriteSystem_DrawSprites(v0->unk_00.primarySpriteManager);
}

void ov12_0222A5C0(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222A4A0 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222A4A0));
    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);
    v0->unk_1C = param3;

    ManagedSprite_SetPositionXY(v0->unk_1C, -30, 160);
    ManagedSprite_SetExplicitPriority(v0->unk_1C, BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSystem, 2));

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222A4A0, v0);
}

void ov12_0222A604(BattleAnimSystem *param0)
{
    int v0 = BattleAnimSystem_GetScriptVar(param0, 0);

    if (v0 != 0) {
        ov12_02226924(param0);
    } else {
        ov12_02226954(param0);
    }
}

static void ov12_0222A624(UnkStruct_ov12_0222A624 *param0)
{
    switch (param0->unk_00.state) {
    case 0:
        if (param0->unk_34 == 0) {
            GX_SetVisibleWnd(GX_WNDMASK_W0);
            G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
            G2_SetWnd0Position(0, 160, 128, 192);
            param0->unk_3C = 35 + (LCRNG_Next() % 5);
        } else {
            GX_SetVisibleWnd(GX_WNDMASK_W0);
            G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3, 1);
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 1);
            G2_SetWnd0Position(128, 96 - 10, 256, 192);
            param0->unk_3C = 35 + (LCRNG_Next() % 5);
        }
        break;
    case 5:
    case 6:
        if (LCRNG_Next() % 2) {
            if (param0->unk_38 == 0) {
                param0->unk_38++;
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
            }
        }
        break;
    case 7:
        if (param0->unk_38 != 1) {
            param0->unk_38++;
            ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
        }
        break;
    case 10:
    case 11:
        if (LCRNG_Next() % 2) {
            if (param0->unk_38 == 1) {
                param0->unk_38++;
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
            }
        }
        break;
    case 12:
        if (param0->unk_38 != 2) {
            param0->unk_38++;
            ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
        }
        break;
    case 15:
    case 16:
        if (LCRNG_Next() % 2) {
            if (param0->unk_38 == 2) {
                param0->unk_38++;
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
            }
        }
        break;
    case 17:
        if (param0->unk_38 != 3) {
            param0->unk_38++;
            ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);
        }
        break;
    case 22:
    case 23:
        if (LCRNG_Next() % 2) {
            if (param0->unk_38 == 3) {
                param0->unk_38++;
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +8);
            }
        }
        break;
    case 24:
        if (param0->unk_38 != 4) {
            param0->unk_38++;
            ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +8);
        }
        break;
    default:
        if (param0->unk_00.state > param0->unk_3C) {
            if (param0->unk_38 < 20) {
                ManagedSprite_OffsetPositionXY(param0->unk_1C, 0, +4);

                {
                    s16 v0, v1;

                    ManagedSprite_GetPositionXY(param0->unk_1C, &v0, &v1);

                    if (v1 > 130) {
                        ManagedSprite_SetDrawFlag(param0->unk_1C, 0);
                    }
                }

                param0->unk_38++;
            } else {
                ManagedSprite_SetDrawFlag(param0->unk_1C, 0);
            }
        }

        break;
    }
}

static void ov12_0222A878(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A624 *v0 = param1;

    if (v0->unk_30 != 0) {
        ov12_0222A624(v0);
    }

    v0->unk_00.state++;

    if (v0->unk_00.state >= v0->unk_24) {
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, 0);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, 0);
        G2_SetWnd0Position(0, 0, 0, 0);

        ManagedSprite_SetDrawFlag(v0->unk_1C, 0);
        SpriteSystem_DrawSprites(v0->unk_00.pokemonSpriteManager);

        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_1C);
    SpriteSystem_DrawSprites(v0->unk_00.pokemonSpriteManager);
}

void ov12_0222A8F4(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222A624 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222A624));
    BattleAnimSystem_GetCommonData(param0, &v0->unk_00);

    v0->unk_20 = BattleAnimSystem_GetScriptVar(param0, 0);
    v0->unk_24 = BattleAnimSystem_GetScriptVar(param0, 1);
    v0->unk_28 = BattleAnimSystem_GetScriptVar(param0, 2);
    v0->unk_2C = BattleAnimSystem_GetScriptVar(param0, 3);
    v0->unk_30 = BattleAnimSystem_GetScriptVar(param0, 5);
    v0->unk_34 = BattleAnimSystem_GetScriptVar(param0, 6);
    v0->unk_1C = BattleAnimSystem_GetPokemonSprite(v0->unk_00.battleAnimSystem, v0->unk_20);
    v0->unk_38 = 0;

    {
        int v1;

        if (v0->unk_28 != 0xFF) {
            v1 = BattleAnimSystem_GetBgPriority(param0, v0->unk_28);
            ManagedSprite_SetExplicitPriority(v0->unk_1C, v1);
        }

        if (v0->unk_2C != 0xFF) {
            ManagedSprite_SetPriority(v0->unk_1C, v0->unk_2C);
        }
    }

    if (BattleAnimSystem_IsDoubleBattle(param0) != 1) {
        if ((BattleAnimSystem_GetScriptVar(param0, 4) == 2) || (BattleAnimSystem_GetScriptVar(param0, 4) == 3)) {
            ManagedSprite_SetDrawFlag(v0->unk_1C, 0);
            Heap_Free(v0);
            return;
        }
    }

    {
        int v2 = BattleAnimSystem_GetScriptVar(param0, 4);
        int v3 = BattleAnimSystem_GetAttacker(param0);
        int v4 = BattleAnimSystem_GetDefender(param0);
        int v5, v6;

        if (v0->unk_2C != 0xFF) {
            v5 = BattleAnimUtil_GetBattlerType(param0, v3);
            v6 = BattleAnimUtil_GetBattlerType(param0, v4);

            switch (v2) {
            case 0:
                switch (v5) {
                case 2:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 3:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 4:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 5:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                }
                break;
            case 2:
                switch (v5) {
                case 2:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 3:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 4:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 5:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                }
                break;
            case 1:
                switch (v6) {
                case 2:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 3:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 4:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 5:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                }
                break;
            case 3:
                switch (v6) {
                case 2:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                case 3:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 4:
                    ManagedSprite_SetPriority(v0->unk_1C, 20);
                    break;
                case 5:
                    ManagedSprite_SetPriority(v0->unk_1C, 10);
                    break;
                }
                break;
            }
        }
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222A878, v0);
}

static void BattleAnimTask_RenderPokemonSprites(SysTask *task, void *param)
{
    RenderPokemonSpritesContext *ctx = param;

    if (ctx->frames == 0) {
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSystem, task);
        Heap_Free(ctx);
        return;
    }

    ctx->frames--;

    for (int i = BATTLER_PLAYER_1; i < MAX_BATTLERS; i++) {
        if (ctx->sprites[i] == NULL) {
            continue;
        }

        ManagedSprite_TickFrame(ctx->sprites[i]);
    }

    SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
}

void BattleAnimScriptFunc_RenderPokemonSprites(BattleAnimSystem *system)
{
    RenderPokemonSpritesContext *ctx = BattleAnimUtil_Alloc(system, sizeof(RenderPokemonSpritesContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    if (BattleAnimSystem_GetScriptVar(system, 0) == 0) {
        ctx->frames = 2 + 1;
    } else {
        ctx->frames = BattleAnimSystem_GetScriptVar(system, 0);
    }

    static int priorityTable[MAX_BATTLERS] = {
        [BATTLER_PLAYER_1] = 20,
        [BATTLER_ENEMY_1] = 10,
        [BATTLER_PLAYER_2] = 10,
        [BATTLER_ENEMY_2] = 20,
    };

    for (int battler = BATTLER_PLAYER_1; battler < MAX_BATTLERS; battler++) {
        ctx->sprites[battler] = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSystem, battler);

        if (ctx->sprites[battler] != NULL) {
            ManagedSprite_SetPriority(ctx->sprites[battler], priorityTable[battler]);
        }
    }

    SysTask *task = BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSystem, BattleAnimTask_RenderPokemonSprites, ctx);
    BattleAnimTask_RenderPokemonSprites(task, ctx);
}

static void ov12_0222ABBC(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222ABBC *v0 = (UnkStruct_ov12_0222ABBC *)param1;

    switch (v0->unk_08.state) {
    case 0:
        v0->unk_00 = 0;
        v0->unk_24 = BgScrollContext_New(0, 160, (1 * 0xffff) / 360, 32 * FX32_ONE, 2 * 100, BattleAnimSystem_GetBgID(v0->unk_08.battleAnimSystem, 2), 0, BattleAnimUtil_MakeBgOffsetValue(0, 0), BattleAnimSystem_GetHeapID(v0->unk_08.battleAnimSystem));
        v0->unk_08.state++;
        break;
    case 1:
        v0->unk_00++;

        if (v0->unk_00 < v0->unk_04) {
            break;
        }

        BgScrollContext_Free(v0->unk_24);
        v0->unk_08.state++;
    default:
        BattleAnimSystem_EndAnimTask(v0->unk_08.battleAnimSystem, param0);
        Heap_Free(v0);
        return;
    }
}

void ov12_0222AC40(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222ABBC *v0 = NULL;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222ABBC));
    BattleAnimSystem_GetCommonData(param0, &v0->unk_08);
    v0->unk_04 = BattleAnimSystem_GetScriptVar(param0, 0);

    BattleAnimSystem_StartAnimTask(v0->unk_08.battleAnimSystem, ov12_0222ABBC, v0);
}
