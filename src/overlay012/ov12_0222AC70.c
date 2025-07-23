#include "overlay012/ov12_0222AC70.h"

#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/graphics.h"

#include "overlay012/battle_anim_system.h"
#include "overlay012/ov12_02225864.h"
#include "overlay012/ov12_02235254.h"
#include "overlay012/struct_ov12_022267D4_decl.h"
#include "overlay012/struct_ov12_0222C7E0_sub1.h"
#include "overlay012/struct_ov12_02235350.h"
#include "overlay012/struct_ov12_02235998.h"

#include "battle_script_battlers.h"
#include "bg_window.h"
#include "heap.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

#define BASE_SCALE_XY 100

typedef struct {
    u8 unk_00;
    u8 unk_01[3];
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    BattleAnimSystem *unk_08;
    SpriteSystem *unk_0C;
    SpriteManager *unk_10;
    ManagedSprite *unk_14[3];
    XYTransformContext unk_20;
} UnkStruct_ov12_0222AC70;

// -------------------------------------------------------------------
// Strength
// -------------------------------------------------------------------
typedef struct StrengthContext {
    u8 state;
    s16 baseY;
    int spriteHeight;
    u8 blinkCounter;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *sprite;
    XYTransformContext scale;
    XYTransformContext shake;
} StrengthContext;

enum StrengthState {
    STRENGTH_STATE_SHRINK = 0,
    STRENGTH_STATE_FADE_TO_RED,
    STRENGTH_STATE_FADE_TO_NORMAL,
    STRENGTH_STATE_WAIT_FOR_FADE,
    STRENGTH_STATE_GROW,
    STRENGTH_STATE_CLEANUP,
};

#define STRENGTH_SHAKE_X        2
#define STRENGTH_SHAKE_Y        0
#define STRENGTH_SHAKE_INTERVAL 0
#define STRENGTH_SHAKE_AMOUNT   10
#define STRENGTH_BLINK_COLOR    COLOR_RED
#define STRENGTH_BLINK_ALPHA    10
#define STRENGTH_BLINK_COUNT    3

#define STRENGTH_VAR_SHRINK_SCALE  0
#define STRENGTH_VAR_GROW_SCALE    1
#define STRENGTH_VAR_SHRINK_FRAMES 2
#define STRENGTH_VAR_GROW_FRAMES   3

// -------------------------------------------------------------------
// Bulk Up
// -------------------------------------------------------------------
typedef struct BulkUpContext {
    u8 state;
    s16 baseY;
    int spriteHeight;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *sprite;
    XYTransformContext scale;
    XYTransformContext unused;
} BulkUpContext;

enum BulkUpState {
    BULK_UP_STATE_SQUISH_Y = 0,
    BULK_UP_STATE_SQUISH_X,
    BULK_UP_STATE_RETURN_TO_NORMAL,
    BULK_UP_STATE_GROW,
    BULK_UP_STATE_SHRINK,
};

#define BULK_UP_STRETCH_X               150
#define BULK_UP_SQUISH_X                50
#define BULK_UP_STRETCH_Y               150
#define BULK_UP_SQUISH_Y                50
#define BULK_UP_SQUISH_STRETCH_FRAMES   10
#define BULK_UP_RETURN_TO_NORMAL_FRAMES 5
#define BULK_UP_GROW_FRAMES             5
#define BULK_UP_SHRINK_FRAMES           5

// -------------------------------------------------------------------
// Double Team
// -------------------------------------------------------------------
#define DOUBLE_TEAM_SPRITE_COUNT 4

typedef struct DoubleTeamContext {
    u8 iteration;
    u8 state;
    u16 unk_02;
    u8 blendA;
    u8 blendB;
    u16 unk_06;
    s16 attackerX;
    s16 attackerY;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *attackerSprite;
    SpriteManager *pokemonSpriteManager;
    ManagedSprite *monSprites[DOUBLE_TEAM_SPRITE_COUNT];
    XYTransformContext pos[DOUBLE_TEAM_SPRITE_COUNT];
} DoubleTeamContext;

enum DoubleTeamState {
    DOUBLE_TEAM_STATE_INIT = 0,
    DOUBLE_TEAM_STATE_UPDATE_SPRITES,
    DOUBLE_TEAM_STATE_FADE_OUT_SPRITES,
};

// If X is the attacker sprite, double team performs the following transformations simultaneously:
// (Longer arrow means takes more frames)
// L1 <-  X  -> R1
// L2 <-- X --> R2
#define DOUBLE_TEAM_SPRITE_R1 0
#define DOUBLE_TEAM_SPRITE_L1 1
#define DOUBLE_TEAM_SPRITE_R2 2
#define DOUBLE_TEAM_SPRITE_L2 3

#define DOUBLE_TEAM_BLEND_A            8
#define DOUBLE_TEAM_BLEND_B            6
#define DOUBLE_TEAM_MON_1_PRIORITY     10
#define DOUBLE_TEAM_MON_2_PRIORITY     20
#define DOUBLE_TEAM_MON_1_TINT_R       128
#define DOUBLE_TEAM_MON_1_TINT_G       128
#define DOUBLE_TEAM_MON_1_TINT_B       128
#define DOUBLE_TEAM_MON_2_TINT_R       196
#define DOUBLE_TEAM_MON_2_TINT_G       196
#define DOUBLE_TEAM_MON_2_TINT_B       196
#define DOUBLE_TEAM_BASEPOS            0
#define DOUBLE_TEAM_RANGE_X            32
#define DOUBLE_TEAM_ITERATION_FRAMES_1 7
#define DOUBLE_TEAM_ITERATION_FRAMES_2 10

// One iteration is either a single outwards or inwards movement of all sprites
#define DOUBLE_TEAM_MAX_MOVE_ITERATIONS 8

// -------------------------------------------------------------------
// Growth
// -------------------------------------------------------------------
typedef struct GrowthContext {
    u8 state;
    u8 iterations;
    u8 scaleState;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *sprite;
    XYTransformContext scale;
} GrowthContext;

enum GrowthState {
    GROWTH_STATE_SCALE_FADE = 0,
    GROWTH_STATE_WAIT,
};

#define GROWTH_SCALE        115
#define GROWTH_SCALE_FRAMES 6
#define GROWTH_SCALE_CYCLES 2
#define GROWTH_BLINK_COLOR  COLOR_WHITE
#define GROWTH_BLINK_ALPHA  6

// -------------------------------------------------------------------
// Meditate
// -------------------------------------------------------------------
typedef struct MeditateContext {
    u8 state;
    u8 iterations;
    s16 attackerY;
    s16 attackerHeight;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *attackerSprite;
    XYTransformContext scale;
} MeditateContext;

enum MeditateState {
    MEDITATE_STATE_SCALE,
    MEDITATE_STATE_WAIT_FOR_SCALE,
};

#define MEDITATE_STRETCH_SCALE_X 150
#define MEDITATE_STRETCH_SCALE_Y 50
#define MEDITATE_SQUISH_SCALE_X  50
#define MEDITATE_SQUISH_SCALE_Y  150
#define MEDITATE_STRETCH_FRAMES  8
#define MEDITATE_SQUISH_FRAMES   8
#define MEDITATE_REVERT_FRAMES   8

// -------------------------------------------------------------------
// Teleport
// -------------------------------------------------------------------
typedef struct TeleportContext {
    u8 state;
    u8 scaleType;
    s16 attackerY;
    s16 baseY;
    s16 attackerHeight;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *attackerSprite;
    XYTransformContext scale;
} TeleportContext;

enum TeleportState {
    TELEPORT_STATE_SETUP_SQUISH = 0,
    TELEPORT_STATE_SQUISH,
    TELEPORT_STATE_SETUP_MOVE,
    TELEPORT_STATE_MOVE,
    TELEPORT_STATE_SETUP_SHRINK,
    TELEPORT_STATE_SHRINK,
};

#define TELEPORT_SQUISH_SCALE_X    10
#define TELEPORT_SQUISH_SCALE_Y    180
#define TELEPORT_SHRINK_SCALE_X    10
#define TELEPORT_SHRINK_SCALE_Y    0
#define TELEPORT_SQUISH_FRAMES     10
#define TELEPORT_SHRINK_FRAMES     5
#define TELEPORT_REVERT_POS_X      0
#define TELEPORT_REVERT_POS_Y      0
#define TELEPORT_REVERT_POS_FRAMES 5

// -------------------------------------------------------------------
// Flash
// -------------------------------------------------------------------
typedef struct FlashContext {
    u8 state;
    u8 delay;
    PaletteData *paletteData;
    BattleAnimSystem *battleAnimSys;
    UnkStruct_ov12_022267D4 *unk_0C;
    PokemonSprite *attackerSprite;
} FlashContext;

enum FlashState {
    FLASH_STATE_SETUP_FADE_OUT = 0,
    FLASH_STATE_FADE_OUT,
    FLASH_STATE_HOLD,
    FLASH_STATE_SETUP_FADE_IN,
    FLASH_STATE_FADE_IN,
};

#define FLASH_PALETTE_FADE_BUFFERS PLTTBUF_MAIN_BG_F
#define FLASH_FADE_START_ALPHA     0
#define FLASH_FADE_END_ALPHA       16
#define FLASH_PALETTE_FADE_DELAY   -2
#define FLASH_POKEMON_FADE_DELAY   0
#define FLASH_PALETTE_FADE_COLOR   COLOR_WHITE
#define FLASH_POKEMON_FADE_COLOR   COLOR_BLACK
#define FLASH_HOLD_FRAMES          5

typedef struct {
    u8 state;
    u8 interation;
    u8 cycles;
    s16 attackerY;
    s16 attackerHeight;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *attackerSprite;
    XYTransformContext scale;
    XYTransformContext pos;
} SplashContext;

enum SplashState {
    SPLASH_STATE_SETUP_ANIMS = 0,
    SPLASH_STATE_WAIT_FOR_ANIMS,
};

#define SPLASH_CYCLES        3
#define SPLASH_BASE_SCALE    BASE_SCALE_XY
#define SPLASH_STRETCH_SCALE 120
#define SPLASH_SQUISH_SCALE  80
#define SPLASH_ANIM_FRAMES   5
#define SPLASH_BASE_POS_Y    0
#define SPLASH_OFFSET_POS_Y  16

typedef struct {
    u8 unk_00;
    u8 unk_01;
    BattleAnimSystem *unk_04;
    SpriteManager *unk_08;
    ManagedSprite *unk_0C;
    ManagedSprite *unk_10;
} UnkStruct_ov12_0222BFF4;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    ManagedSprite *unk_04;
    XYTransformContext unk_08;
} UnkStruct_ov12_0222C1A4_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    s16 unk_02;
    int unk_04;
    s8 unk_08;
    PokemonSprite *unk_0C;
    BattleAnimSystem *unk_10;
    SpriteManager *unk_14;
    UnkStruct_ov12_0222C1A4_sub1 unk_18[3];
} UnkStruct_ov12_0222C1A4;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    int unk_04;
    BgConfig *unk_08;
    BattleAnimSystem *unk_0C;
    SpriteManager *unk_10;
    UnkStruct_ov12_02235998 unk_14[4];
    UnkStruct_ov12_02235998 unk_64[4];
    XYTransformContext unk_B4;
} UnkStruct_ov12_0222C4A8;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 unk_03;
    UnkStruct_ov12_02235350 unk_04;
    BgConfig *unk_08;
    BattleAnimSystem *unk_0C;
    SpriteManager *unk_10;
    PokemonSprite *unk_14;
    ManagedSprite *unk_18;
    XYTransformContext unk_1C;
    XYTransformContext unk_40;
    AlphaFadeContext unk_64;
} UnkStruct_ov12_0222C678;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_0222C7E0_sub1 unk_1C;
    PokemonSprite *unk_28[2];
    s16 unk_30;
    s16 unk_32;
    s16 unk_34;
    s16 unk_36;
    XYTransformContext unk_38;
    ValueLerpContext unk_5C;
} UnkStruct_ov12_0222C7E0;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_0222C7E0_sub1 unk_1C;
    UnkStruct_ov12_02235350 unk_28[4];
    PokemonSprite *unk_38[4];
    int unk_48;
    XYTransformContext unk_4C;
} UnkStruct_ov12_0222C994;

typedef struct {
    UnkStruct_ov12_0223595C unk_00;
    UnkStruct_ov12_0222C7E0_sub1 unk_1C;
    UnkStruct_ov12_02235350 unk_28[2];
    PokemonSprite *unk_30[2];
    ManagedSprite *unk_38[2];
    XYTransformContext unk_40[2];
} UnkStruct_ov12_0222CACC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    UnkStruct_ov12_02235350 unk_0C;
    UnkStruct_ov12_0223595C unk_10;
    UnkStruct_ov12_0222C7E0_sub1 unk_2C;
    ManagedSprite *unk_38;
    UnkStruct_ov12_02235998 unk_3C[4];
    XYTransformContext unk_8C[2];
    ValueLerpContext unk_D4;
} UnkStruct_ov12_0222CBFC;

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    u8 unk_0C;
    u8 unk_0D;
    u8 unk_0E;
    u8 unk_0F;
    u8 unk_10;
    u8 unk_11;
    s16 unk_12;
    UnkStruct_ov12_02235350 unk_14;
    UnkStruct_ov12_0223595C unk_18;
    UnkStruct_ov12_0222C7E0_sub1 unk_34;
    ManagedSprite *unk_40;
    ManagedSprite *unk_44[2];
    UnkStruct_ov12_02235998 unk_4C[4];
    XYTransformContext unk_9C;
    ValueLerpContext unk_C0;
} UnkStruct_ov12_0222CDF0;

typedef struct {
    ManagedSprite *unk_00;
    XYTransformContext unk_04[2];
} UnkStruct_ov12_0222D128_sub1;

typedef struct {
    u8 unk_00;
    u8 unk_01;
    int unk_04;
    int unk_08;
    u8 unk_0C;
    BattleAnimSystem *unk_10;
    SpriteSystem *unk_14;
    SpriteManager *unk_18;
    PokemonSprite *unk_1C;
    s16 unk_20;
    int unk_24;
    u16 unk_28;
    fx32 unk_2C;
    UnkStruct_ov12_0222D128_sub1 unk_30[2];
    s16 unk_C8;
    s16 unk_CA;
    XYTransformContext unk_CC;
} UnkStruct_ov12_0222D128;

static const u8 Unk_ov12_0223A09E[][2] = {
    { 0x8, 0x2 },
    { 0xD, 0x1 },
    { 0x12, 0x3 }
};

static void ov12_0222AC70(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222AC70 *v1 = (UnkStruct_ov12_0222AC70 *)param1;

    switch (v1->unk_00) {
    case 0:
        v1->unk_04++;

        for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_08, 0); v0++) {
            {
                s16 v2, v3;
                ManagedSprite_GetPositionXY(v1->unk_14[v0], &v2, &v3);
            }

            if (v1->unk_04 >= Unk_ov12_0223A09E[v0][0]) {
                v1->unk_01[v0]++;

                if (v1->unk_01[v0] >= Unk_ov12_0223A09E[v0][1]) {
                    v1->unk_01[v0] = 0;

                    if (ManagedSprite_GetDrawFlag(v1->unk_14[v0]) == 1) {
                        ManagedSprite_SetDrawFlag(v1->unk_14[v0], 0);
                    } else {
                        ManagedSprite_SetDrawFlag(v1->unk_14[v0], 1);
                    }
                }
            } else {
                ManagedSprite_SetDrawFlag(v1->unk_14[v0], 0);
            }
        }

        if (v1->unk_04 >= 45) {
            for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_08, 0); v0++) {
                ManagedSprite_SetDrawFlag(v1->unk_14[v0], 1);
            }

            v1->unk_04 = 0;
            v1->unk_00++;
        }
        break;
    case 1:
        ScaleLerpContext_InitXY(&v1->unk_20, 100, 60, 100, 100, 100, 10);
        v1->unk_00++;
        break;
    case 2:
        if (ScaleLerpContext_UpdateXY(&v1->unk_20) == 1) {
            for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_08, 0); v0++) {
                f32 v4, v5;

                BattleAnimUtil_ConvertRelativeToAffineScale(&v1->unk_20, &v4, &v5);
                ManagedSprite_SetAffineScale(v1->unk_14[v0], v4, v5);
            }
        } else {
            if (++v1->unk_04 >= 45) {
                v1->unk_00++;
            }
        }
        break;
    case 3:
        if (v1->unk_05 > 0) {
            v1->unk_05--;
        }

        if (v1->unk_06 < 15) {
            v1->unk_06++;
        }

        if ((v1->unk_05 == 0) && (v1->unk_06 == 15)) {
            v1->unk_00++;
        }

        G2_ChangeBlendAlpha(v1->unk_05, v1->unk_06);
        break;
    default:
        for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_08, 0); v0++) {
            Sprite_DeleteAndFreeResources(v1->unk_14[v0]);
        }

        BattleAnimSystem_EndAnimTask(v1->unk_08, param0);
        Heap_Free(v1);
        return;
    }

    for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_08, 0); v0++) {
        Sprite_TickFrame(v1->unk_14[v0]->sprite);
    }

    SpriteSystem_DrawSprites(v1->unk_10);
}

void ov12_0222AE68(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    int v0;
    UnkStruct_ov12_0222AC70 *v1;
    SpriteTemplate v2;

    v1 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_0222AC70));

    GF_ASSERT(v1 != NULL);

    v1->unk_04 = 0;
    v1->unk_00 = 0;
    v1->unk_0C = param1;
    v1->unk_10 = param2;
    v1->unk_08 = param0;

    v2 = BattleAnimSystem_GetLastSpriteTemplate(param0);
    BattleAnimUtil_SetSpriteBgBlending(v1->unk_08, 0xffffffff, 0xffffffff);

    v1->unk_05 = 15;
    v1->unk_06 = 0;

    G2_ChangeBlendAlpha(v1->unk_05, v1->unk_06);

    v1->unk_14[0] = param3;

    {
        UnkStruct_ov12_02235350 v3;
        int v4 = BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetDefender(param0));

        if (v4 == 0x3) {
            ov12_02235350(0, BattleAnimSystem_IsContest(param0), &v3);
        } else {
            ov12_02235350(1, BattleAnimSystem_IsContest(param0), &v3);
        }

        for (v0 = 1; v0 < BattleAnimSystem_GetScriptVar(v1->unk_08, 0); v0++) {
            v1->unk_14[v0] = SpriteSystem_NewSprite(v1->unk_0C, v1->unk_10, &v2);
            ManagedSprite_SetPositionXY(v1->unk_14[v0], v3.unk_00, v3.unk_02);
        }

        ManagedSprite_SetPositionXY(v1->unk_14[0], v3.unk_00, v3.unk_02);
    }

    for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_08, 0); v0++) {
        v1->unk_01[v0] = 0;
        ManagedSprite_SetAffineOverwriteMode(v1->unk_14[v0], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_OffsetPositionXY(v1->unk_14[v0], 0, 32 - (v0 * 4));
        ManagedSprite_SetExplicitOamMode(v1->unk_14[v0], GX_OAM_MODE_XLU);
    }

    BattleAnimSystem_StartAnimTaskEx(param0, ov12_0222AC70, v1, 0x1000);
}

static void BattleAnimTask_Strength(SysTask *task, void *param)
{
    StrengthContext *ctx = param;

    switch (ctx->state) {
    case STRENGTH_STATE_SHRINK:
        if (ScaleLerpContext_Update(&ctx->scale) == TRUE) {
            ShakeContext_Update(&ctx->shake);

            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            PokemonSprite_AddAttribute(ctx->sprite, MON_SPRITE_X_CENTER, ctx->shake.x);

            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->baseY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY + offset);
        } else {
            ctx->state++;
        }
        break;
    case STRENGTH_STATE_FADE_TO_RED:
        PokemonSprite_StartFade(ctx->sprite, 0, STRENGTH_BLINK_ALPHA, 0, STRENGTH_BLINK_COLOR);
        ctx->state++;
        break;
    case STRENGTH_STATE_FADE_TO_NORMAL:
        if (PokemonSprite_IsFadeActive(ctx->sprite) == FALSE) {
            PokemonSprite_StartFade(ctx->sprite, STRENGTH_BLINK_ALPHA, 0, 0, STRENGTH_BLINK_COLOR);
            ctx->state++;
        }
        break;
    case STRENGTH_STATE_WAIT_FOR_FADE:
        if (PokemonSprite_IsFadeActive(ctx->sprite) == FALSE) {
            ctx->blinkCounter++;

            if (ctx->blinkCounter >= STRENGTH_BLINK_COUNT) {
                ScaleLerpContext_Init(
                    &ctx->scale,
                    BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, STRENGTH_VAR_SHRINK_SCALE),
                    100,
                    BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, STRENGTH_VAR_GROW_SCALE),
                    BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, STRENGTH_VAR_GROW_FRAMES));
                ctx->state++;
            } else {
                ctx->state = STRENGTH_STATE_FADE_TO_RED;
            }
        }
        break;
    case STRENGTH_STATE_GROW:
        if (ScaleLerpContext_Update(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->baseY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY + offset);
        } else {
            ctx->state++;
        }
        break;
    case STRENGTH_STATE_CLEANUP:
        if (ScaleLerpContext_Update(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->baseY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY + offset);
        } else {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY);
            ctx->state++;
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Strength(BattleAnimSystem *system)
{
    StrengthContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(StrengthContext));

    ctx->blinkCounter = 0;
    ctx->state = STRENGTH_STATE_SHRINK;
    ctx->battleAnimSys = system;
    ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->baseY = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);
    ctx->spriteHeight = BattleAnimSystem_GetBattlerSpriteHeight(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    ScaleLerpContext_Init(
        &ctx->scale,
        BASE_SCALE_XY,
        BASE_SCALE_XY,
        BattleAnimSystem_GetScriptVar(system, STRENGTH_VAR_SHRINK_SCALE),
        BattleAnimSystem_GetScriptVar(system, STRENGTH_VAR_SHRINK_FRAMES));
    ShakeContext_Init(&ctx->shake, STRENGTH_SHAKE_X, STRENGTH_SHAKE_Y, STRENGTH_SHAKE_INTERVAL, STRENGTH_SHAKE_AMOUNT);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Strength, ctx);
}

static void BattleAnimTask_BulkUp(SysTask *task, void *param)
{
    BulkUpContext *ctx = param;

    switch (ctx->state) {
    case BULK_UP_STATE_SQUISH_Y:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->baseY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY + offset);
        } else {
            ScaleLerpContext_InitXY(
                &ctx->scale,
                BULK_UP_STRETCH_X,
                BULK_UP_SQUISH_X,
                BULK_UP_SQUISH_Y,
                BULK_UP_STRETCH_Y,
                BASE_SCALE_XY,
                BULK_UP_SQUISH_STRETCH_FRAMES);
            ctx->state++;
        }
        break;
    case BULK_UP_STATE_SQUISH_X:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->baseY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY + offset);
        } else {
            ScaleLerpContext_InitXY(
                &ctx->scale,
                BULK_UP_SQUISH_X,
                BASE_SCALE_XY,
                BULK_UP_STRETCH_Y,
                BASE_SCALE_XY,
                BASE_SCALE_XY,
                BULK_UP_RETURN_TO_NORMAL_FRAMES);
            ctx->state++;
        }
        break;
    case BULK_UP_STATE_RETURN_TO_NORMAL:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->baseY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY + offset);
        } else {
            ScaleLerpContext_InitXY(
                &ctx->scale,
                BASE_SCALE_XY,
                BULK_UP_STRETCH_X,
                BASE_SCALE_XY,
                BULK_UP_STRETCH_Y,
                BASE_SCALE_XY,
                BULK_UP_GROW_FRAMES);
            ctx->state++;
        }
        break;
    case BULK_UP_STATE_GROW:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->baseY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY + offset);
        } else {
            ScaleLerpContext_InitXY(
                &ctx->scale,
                BULK_UP_STRETCH_X,
                BASE_SCALE_XY,
                BULK_UP_STRETCH_Y,
                BASE_SCALE_XY,
                BASE_SCALE_XY,
                BULK_UP_SHRINK_FRAMES);
            ctx->state++;
        }
        break;
    case BULK_UP_STATE_SHRINK:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->baseY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY + offset);
        } else {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->baseY);
            ctx->state++;
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_BulkUp(BattleAnimSystem *system)
{
    BulkUpContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(BulkUpContext));

    ctx->state = BULK_UP_STATE_SQUISH_Y;
    ctx->battleAnimSys = system;
    ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->baseY = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);
    ctx->spriteHeight = BattleAnimSystem_GetBattlerSpriteHeight(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    ScaleLerpContext_InitXY(
        &ctx->scale,
        BASE_SCALE_XY,
        BULK_UP_STRETCH_X,
        BASE_SCALE_XY,
        BULK_UP_SQUISH_Y,
        BASE_SCALE_XY,
        BULK_UP_SQUISH_STRETCH_FRAMES);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_BulkUp, ctx);
}

enum DoubleTeamTableIndex {
    DOUBLE_TEAM_TABLE_BASEPOS = 0,
    DOUBLE_TEAM_TABLE_RANGE_X,
    DOUBLE_TEAM_TABLE_ITERATION_FRAMES,
    DOUBLE_TEAM_TABLE_COUNT
};

static const s16 sDoubleTeamPositions[][DOUBLE_TEAM_TABLE_COUNT] = {
    { DOUBLE_TEAM_BASEPOS, DOUBLE_TEAM_RANGE_X, DOUBLE_TEAM_ITERATION_FRAMES_1 },
    { DOUBLE_TEAM_BASEPOS, DOUBLE_TEAM_RANGE_X, DOUBLE_TEAM_ITERATION_FRAMES_2 },
    { DOUBLE_TEAM_RANGE_X, DOUBLE_TEAM_BASEPOS, DOUBLE_TEAM_ITERATION_FRAMES_1 },
    { DOUBLE_TEAM_RANGE_X, DOUBLE_TEAM_BASEPOS, DOUBLE_TEAM_ITERATION_FRAMES_2 }
};

static void BattleAnimTask_DoubleTeam(SysTask *task, void *param)
{
    int i;
    u8 numComplete;
    DoubleTeamContext *ctx = param;

    switch (ctx->state) {
    case DOUBLE_TEAM_STATE_INIT: {
        int posIndex = (ctx->iteration % 2) * 2;
        int frameReduction = (ctx->iteration + 1) / 2;

        PosLerpContext_Init(
            &ctx->pos[DOUBLE_TEAM_SPRITE_R1],
            ctx->attackerX + sDoubleTeamPositions[posIndex][DOUBLE_TEAM_TABLE_BASEPOS],
            ctx->attackerX + sDoubleTeamPositions[posIndex][DOUBLE_TEAM_TABLE_RANGE_X],
            ctx->attackerY,
            ctx->attackerY,
            sDoubleTeamPositions[posIndex][DOUBLE_TEAM_TABLE_ITERATION_FRAMES] - frameReduction);

        PosLerpContext_Init(
            &ctx->pos[DOUBLE_TEAM_SPRITE_L1],
            ctx->attackerX - sDoubleTeamPositions[posIndex][DOUBLE_TEAM_TABLE_BASEPOS],
            ctx->attackerX - sDoubleTeamPositions[posIndex][DOUBLE_TEAM_TABLE_RANGE_X],
            ctx->attackerY,
            ctx->attackerY,
            sDoubleTeamPositions[posIndex][DOUBLE_TEAM_TABLE_ITERATION_FRAMES] - frameReduction);

        PosLerpContext_Init(
            &ctx->pos[DOUBLE_TEAM_SPRITE_R2],
            ctx->attackerX + sDoubleTeamPositions[posIndex + 1][DOUBLE_TEAM_TABLE_BASEPOS],
            ctx->attackerX + sDoubleTeamPositions[posIndex + 1][DOUBLE_TEAM_TABLE_RANGE_X],
            ctx->attackerY,
            ctx->attackerY,
            sDoubleTeamPositions[posIndex + 1][DOUBLE_TEAM_TABLE_ITERATION_FRAMES] - frameReduction);

        PosLerpContext_Init(
            &ctx->pos[DOUBLE_TEAM_SPRITE_L2],
            ctx->attackerX - sDoubleTeamPositions[posIndex + 1][DOUBLE_TEAM_TABLE_BASEPOS],
            ctx->attackerX - sDoubleTeamPositions[posIndex + 1][DOUBLE_TEAM_TABLE_RANGE_X],
            ctx->attackerY,
            ctx->attackerY,
            sDoubleTeamPositions[posIndex + 1][DOUBLE_TEAM_TABLE_ITERATION_FRAMES] - frameReduction);
    }
        ctx->iteration++;
        ctx->state++;
    case DOUBLE_TEAM_STATE_UPDATE_SPRITES:
        numComplete = 0;

        for (i = 0; i < DOUBLE_TEAM_SPRITE_COUNT; i++) {
            if (PosLerpContext_Update(&ctx->pos[i]) == FALSE) {
                numComplete++;
            } else {
                ManagedSprite_SetPositionXY(ctx->monSprites[i], ctx->pos[i].x, ctx->pos[i].y);
            }

            ManagedSprite_TickFrame(ctx->monSprites[i]);
        }

        if (numComplete == DOUBLE_TEAM_SPRITE_COUNT) {
            if (ctx->iteration == DOUBLE_TEAM_MAX_MOVE_ITERATIONS + 1) {
                ctx->state++;
            } else {
                ctx->state = DOUBLE_TEAM_STATE_INIT;
            }
        }
        break;
    case DOUBLE_TEAM_STATE_FADE_OUT_SPRITES:
        if (ctx->blendA > 0) {
            ctx->blendA--;
        }

        if (ctx->blendB < 15) {
            ctx->blendB++;
        }

        if (ctx->blendA == 0 && ctx->blendB == 15) {
            ctx->state++;
        }

        G2_ChangeBlendAlpha(ctx->blendA, ctx->blendB);
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}

void BattleAnimScriptFunc_DoubleTeam(BattleAnimSystem *system)
{
    DoubleTeamContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(DoubleTeamContext));

    ctx->state = 0;
    ctx->iteration = 0;
    ctx->battleAnimSys = system;
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->attackerY -= PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_SHADOW_HEIGHT);
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);
    ctx->blendA = DOUBLE_TEAM_BLEND_A;
    ctx->blendB = DOUBLE_TEAM_BLEND_B;

    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, -1, -1);
    G2_ChangeBlendAlpha(ctx->blendA, ctx->blendB);

    int monPlttIndex = BattleAnimSystem_GetBattlerSpritePaletteIndex(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    int monSpritePriority = BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys);
    enum NarcID monSpriteNarcIndex = BattleAnimSystem_GetBattlerSpriteNarcID(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    for (int i = 0; i < DOUBLE_TEAM_SPRITE_COUNT; i++) {
        ctx->monSprites[i] = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, i);
        ManagedSprite_SetExplicitOamMode(ctx->monSprites[i], GX_OAM_MODE_XLU);
    }

    if (BattleAnimUtil_GetBattlerSide(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys)) == BTLSCR_PLAYER) {
        // Player side
        ManagedSprite_SetPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R1], DOUBLE_TEAM_MON_1_PRIORITY);
        ManagedSprite_SetPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L1], DOUBLE_TEAM_MON_1_PRIORITY);
        ManagedSprite_SetPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R2], DOUBLE_TEAM_MON_2_PRIORITY);
        ManagedSprite_SetPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L2], DOUBLE_TEAM_MON_2_PRIORITY);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R1], monSpritePriority);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L1], monSpritePriority);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R2], monSpritePriority);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L2], monSpritePriority);

        u16 offset = PlttTransfer_GetPlttOffset(
            Sprite_GetPaletteProxy(ctx->monSprites[DOUBLE_TEAM_SPRITE_R1]->sprite),
            NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStartWithTint(
            BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
            monSpriteNarcIndex,
            monPlttIndex,
            BattleAnimSystem_GetHeapID(system),
            PLTTBUF_MAIN_OBJ,
            PALETTE_SIZE_BYTES,
            PLTT_DEST(offset),
            DOUBLE_TEAM_MON_1_TINT_R,
            DOUBLE_TEAM_MON_1_TINT_G,
            DOUBLE_TEAM_MON_1_TINT_B);

        offset = PlttTransfer_GetPlttOffset(
            Sprite_GetPaletteProxy(ctx->monSprites[DOUBLE_TEAM_SPRITE_R2]->sprite),
            NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStartWithTint(
            BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
            monSpriteNarcIndex,
            monPlttIndex,
            BattleAnimSystem_GetHeapID(system),
            PLTTBUF_MAIN_OBJ,
            PALETTE_SIZE_BYTES,
            PLTT_DEST(offset),
            DOUBLE_TEAM_MON_2_TINT_R,
            DOUBLE_TEAM_MON_2_TINT_G,
            DOUBLE_TEAM_MON_2_TINT_B);
    } else {
        // Enemy side; flip mon 1 and 2 priorities
        ManagedSprite_SetPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R1], DOUBLE_TEAM_MON_2_PRIORITY);
        ManagedSprite_SetPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L1], DOUBLE_TEAM_MON_2_PRIORITY);
        ManagedSprite_SetPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R2], DOUBLE_TEAM_MON_1_PRIORITY);
        ManagedSprite_SetPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L2], DOUBLE_TEAM_MON_1_PRIORITY);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R1], monSpritePriority + 1);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L1], monSpritePriority + 1);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R2], monSpritePriority + 1);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L2], monSpritePriority + 1);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R1], monSpritePriority);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L1], monSpritePriority);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_R2], monSpritePriority);
        ManagedSprite_SetExplicitPriority(ctx->monSprites[DOUBLE_TEAM_SPRITE_L2], monSpritePriority);

        u16 offset = PlttTransfer_GetPlttOffset(
            Sprite_GetPaletteProxy(ctx->monSprites[DOUBLE_TEAM_SPRITE_R1]->sprite),
            NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStartWithTint(
            BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
            monSpriteNarcIndex,
            monPlttIndex,
            BattleAnimSystem_GetHeapID(system),
            PLTTBUF_MAIN_OBJ,
            PALETTE_SIZE_BYTES,
            PLTT_DEST(offset),
            DOUBLE_TEAM_MON_2_TINT_R,
            DOUBLE_TEAM_MON_2_TINT_G,
            DOUBLE_TEAM_MON_2_TINT_B);

        offset = PlttTransfer_GetPlttOffset(
            Sprite_GetPaletteProxy(ctx->monSprites[DOUBLE_TEAM_SPRITE_R2]->sprite),
            NNS_G2D_VRAM_TYPE_2DMAIN);

        PaletteData_LoadBufferFromFileStartWithTint(
            BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
            monSpriteNarcIndex,
            monPlttIndex,
            BattleAnimSystem_GetHeapID(system),
            PLTTBUF_MAIN_OBJ,
            PALETTE_SIZE_BYTES,
            PLTT_DEST(offset),
            DOUBLE_TEAM_MON_1_TINT_R,
            DOUBLE_TEAM_MON_1_TINT_G,
            DOUBLE_TEAM_MON_1_TINT_B);
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_DoubleTeam, ctx);
}

enum {
    GROWTH_TABLE_SCALE_START = 0,
    GROWTH_TABLE_SCALE_END,
    GROWTH_TABLE_FRAMES,
    GROWTH_TABLE_COUNT
};

static const u8 sGrowthScaleTable[][GROWTH_TABLE_COUNT] = {
    { BASE_SCALE_XY, GROWTH_SCALE, GROWTH_SCALE_FRAMES },
    { GROWTH_SCALE, BASE_SCALE_XY, GROWTH_SCALE_FRAMES }
};

static void BattleAnimTask_Growth(SysTask *task, void *param)
{
    GrowthContext *ctx = param;

    switch (ctx->state) {
    case GROWTH_STATE_SCALE_FADE:
        ScaleLerpContext_Init(
            &ctx->scale,
            sGrowthScaleTable[ctx->scaleState][GROWTH_TABLE_SCALE_START],
            BASE_SCALE_XY,
            sGrowthScaleTable[ctx->scaleState][GROWTH_TABLE_SCALE_END],
            sGrowthScaleTable[ctx->scaleState][GROWTH_TABLE_FRAMES]);

        if (ctx->scaleState == 0) {
            PokemonSprite_StartFade(ctx->sprite, 0, GROWTH_BLINK_ALPHA, 0, GROWTH_BLINK_COLOR);
        } else {
            PokemonSprite_StartFade(ctx->sprite, GROWTH_BLINK_ALPHA, 0, 0, GROWTH_BLINK_COLOR);
        }

        ctx->scaleState ^= 1;
        ctx->iterations++;
        ctx->state++;
        break;
    case GROWTH_STATE_WAIT:
        if (ScaleLerpContext_Update(&ctx->scale) == FALSE && PokemonSprite_IsFadeActive(ctx->sprite) == FALSE) {
            if (ctx->iterations < (GROWTH_SCALE_CYCLES * 2)) {
                ctx->state--;
            } else {
                ctx->state++;
            }
        }

        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Growth(BattleAnimSystem *system)
{
    GrowthContext *ctx = BattleAnimUtil_Alloc(system, sizeof(GrowthContext));

    ctx->state = GROWTH_STATE_SCALE_FADE;
    ctx->scaleState = 0;
    ctx->iterations = 0;
    ctx->battleAnimSys = system;
    ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Growth, ctx);
}

enum {
    MEDITATE_TABLE_SCALE_SX = 0,
    MEDITATE_TABLE_SCALE_EX,
    MEDITATE_TABLE_SCALE_SY,
    MEDITATE_TABLE_SCALE_EY,
    MEDITATE_TABLE_SCALE_FRAMES,
    MEDITATE_TABLE_COUNT
};

static const u8 sMeditateScaleTable[][MEDITATE_TABLE_COUNT] = {
    { BASE_SCALE_XY, MEDITATE_STRETCH_SCALE_X, BASE_SCALE_XY, MEDITATE_STRETCH_SCALE_Y, MEDITATE_STRETCH_FRAMES },
    { MEDITATE_STRETCH_SCALE_X, MEDITATE_SQUISH_SCALE_X, MEDITATE_STRETCH_SCALE_Y, MEDITATE_SQUISH_SCALE_Y, MEDITATE_SQUISH_FRAMES },
    { MEDITATE_SQUISH_SCALE_X, BASE_SCALE_XY, MEDITATE_SQUISH_SCALE_Y, BASE_SCALE_XY, MEDITATE_REVERT_FRAMES }
};

static void BattleAnimTask_Meditate(SysTask *task, void *param)
{
    MeditateContext *ctx = param;

    switch (ctx->state) {
    case MEDITATE_STATE_SCALE:
        ScaleLerpContext_InitXY(
            &ctx->scale,
            sMeditateScaleTable[ctx->iterations][MEDITATE_TABLE_SCALE_SX],
            sMeditateScaleTable[ctx->iterations][MEDITATE_TABLE_SCALE_EX],
            sMeditateScaleTable[ctx->iterations][MEDITATE_TABLE_SCALE_SY],
            sMeditateScaleTable[ctx->iterations][MEDITATE_TABLE_SCALE_EY],
            BASE_SCALE_XY,
            sMeditateScaleTable[ctx->iterations][MEDITATE_TABLE_SCALE_FRAMES]);

        ctx->iterations++;
        ctx->state++;
        break;
    case MEDITATE_STATE_WAIT_FOR_SCALE: {
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == FALSE) {
            if (ctx->iterations < NELEMS(sMeditateScaleTable)) {
                ctx->state--;
            } else {
                ctx->state++;
            }
        }

        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_X, ctx->scale.x);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, ctx->scale.y);

        s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->attackerY, ctx->attackerHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER, ctx->attackerY + offset);
    } break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Meditate(BattleAnimSystem *system)
{
    MeditateContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MeditateContext));

    ctx->state = MEDITATE_STATE_SCALE;
    ctx->iterations = 0;
    ctx->battleAnimSys = system;
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->attackerHeight = BattleAnimSystem_GetBattlerSpriteHeight(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Meditate, ctx);
}

enum {
    TELEPORT_TABLE_SCALE_SX = 0,
    TELEPORT_TABLE_SCALE_EX,
    TELEPORT_TABLE_SCALE_SY,
    TELEPORT_TABLE_SCALE_EY,
    TELEPORT_TABLE_SCALE_FRAMES,
    TELEPORT_TABLE_COUNT
};

static const u8 sTeleportScaleTable[][TELEPORT_TABLE_COUNT] = {
    { BASE_SCALE_XY, TELEPORT_SQUISH_SCALE_X, BASE_SCALE_XY, TELEPORT_SQUISH_SCALE_Y, TELEPORT_SQUISH_FRAMES },
    { TELEPORT_SQUISH_SCALE_X, TELEPORT_SHRINK_SCALE_X, TELEPORT_SQUISH_SCALE_Y, TELEPORT_SHRINK_SCALE_Y, TELEPORT_SHRINK_FRAMES }
};

static void BattleAnimTask_Teleport(SysTask *task, void *param)
{
    TeleportContext *ctx = param;

    switch (ctx->state) {
    case TELEPORT_STATE_SETUP_SQUISH:
        ScaleLerpContext_InitXY(
            &ctx->scale,
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_SX],
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_EX],
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_SY],
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_EY],
            BASE_SCALE_XY,
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_FRAMES]);

        ctx->scaleType++;
        ctx->state++;
        break;
    case TELEPORT_STATE_SQUISH:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == FALSE) {
            ctx->state++;
        }

        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_X, ctx->scale.x);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
        BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
            ctx->attackerSprite,
            ctx->attackerY,
            ctx->attackerHeight,
            ctx->scale.data[XY_PARAM_CUR_Y],
            BATTLE_ANIM_ANCHOR_BOTTOM);
        break;
    case TELEPORT_STATE_SETUP_MOVE:
        PosLerpContext_Init(
            &ctx->scale,
            0,
            TELEPORT_REVERT_POS_X,
            PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER),
            TELEPORT_REVERT_POS_Y,
            TELEPORT_REVERT_POS_FRAMES);
        ctx->state++;
        break;
    case TELEPORT_STATE_MOVE:
        if (PosLerpContext_Update(&ctx->scale) == FALSE) {
            ctx->state++;
        }

        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER, ctx->scale.y);
        break;
    case TELEPORT_STATE_SETUP_SHRINK:
        ScaleLerpContext_InitXY(
            &ctx->scale,
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_SX],
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_EX],
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_SY],
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_EY],
            BASE_SCALE_XY,
            sTeleportScaleTable[ctx->scaleType][TELEPORT_TABLE_SCALE_FRAMES]);

        ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
        ctx->state++;
        break;
    case TELEPORT_STATE_SHRINK:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == FALSE) {
            ctx->state++;
        }

        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_X, ctx->scale.x);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
        BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
            ctx->attackerSprite,
            ctx->attackerY,
            ctx->attackerHeight,
            ctx->scale.data[XY_PARAM_CUR_Y],
            BATTLE_ANIM_ANCHOR_TOP);
        break;
    default:
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER, ctx->baseY);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_HIDE, TRUE);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Teleport(BattleAnimSystem *system)
{
    TeleportContext *ctx = BattleAnimUtil_Alloc(system, sizeof(TeleportContext));

    ctx->state = TELEPORT_STATE_SETUP_SQUISH;
    ctx->scaleType = 0;
    ctx->battleAnimSys = system;
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->baseY = ctx->attackerY;
    ctx->attackerHeight = BattleAnimSystem_GetBattlerSpriteHeight(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Teleport, ctx);
}

static void BattleAnimTask_Flash(SysTask *task, void *param)
{
    FlashContext *ctx = param;

    switch (ctx->state) {
    case FLASH_STATE_SETUP_FADE_OUT:
        PaletteData_StartFade(
            ctx->paletteData,
            FLASH_PALETTE_FADE_BUFFERS,
            BattleAnimSystem_GetBaseBgPalettes(ctx->battleAnimSys),
            FLASH_PALETTE_FADE_DELAY,
            FLASH_FADE_START_ALPHA,
            FLASH_FADE_END_ALPHA,
            FLASH_PALETTE_FADE_COLOR);

        PokemonSprite_StartFade(
            ctx->attackerSprite,
            FLASH_FADE_START_ALPHA,
            FLASH_FADE_END_ALPHA,
            FLASH_POKEMON_FADE_DELAY,
            FLASH_POKEMON_FADE_COLOR);
        ctx->state++;
        break;
    case FLASH_STATE_FADE_OUT:
        if (PaletteData_GetSelectedBuffersMask(ctx->paletteData) == FALSE && PokemonSprite_IsFadeActive(ctx->attackerSprite) == FALSE) {
            ctx->state++;
        }
        break;
    case FLASH_STATE_HOLD:
        if (++ctx->delay > FLASH_HOLD_FRAMES) {
            ctx->state++;
        }
        break;
    case FLASH_STATE_SETUP_FADE_IN:
        PaletteData_StartFade(
            ctx->paletteData,
            FLASH_PALETTE_FADE_BUFFERS,
            BattleAnimSystem_GetBaseBgPalettes(ctx->battleAnimSys),
            FLASH_PALETTE_FADE_DELAY,
            FLASH_FADE_END_ALPHA,
            FLASH_FADE_START_ALPHA,
            FLASH_PALETTE_FADE_COLOR);

        PokemonSprite_StartFade(
            ctx->attackerSprite,
            FLASH_FADE_END_ALPHA,
            FLASH_FADE_START_ALPHA,
            FLASH_POKEMON_FADE_DELAY,
            FLASH_POKEMON_FADE_COLOR);
        ctx->state++;
        break;
    case FLASH_STATE_FADE_IN:
        if (PaletteData_GetSelectedBuffersMask(ctx->paletteData) == FALSE && PokemonSprite_IsFadeActive(ctx->attackerSprite) == FALSE) {
            ctx->state++;
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Flash(BattleAnimSystem *system)
{
    FlashContext *ctx = BattleAnimUtil_Alloc(system, sizeof(FlashContext));

    ctx->battleAnimSys = system;
    ctx->paletteData = BattleAnimSystem_GetPaletteData(ctx->battleAnimSys);
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Flash, ctx);
}

enum {
    SPLASH_TABLE_SCALE_SX = 0,
    SPLASH_TABLE_SCALE_EX,
    SPLASH_TABLE_SCALE_SY,
    SPLASH_TABLE_SCALE_EY,
    SPLASH_TABLE_SCALE_FRAMES,
    SPLASH_TABLE_SCALE_COUNT,

    SPLASH_TABLE_POS_SY = 0,
    SPLASH_TABLE_POS_EY,
    SPLASH_TABLE_POS_FRAMES,
    SPLASH_TABLE_POS_COUNT
};

static const u8 sSplashScaleTable[][SPLASH_TABLE_SCALE_COUNT] = {
    { SPLASH_BASE_SCALE, SPLASH_STRETCH_SCALE, SPLASH_BASE_SCALE, SPLASH_SQUISH_SCALE, SPLASH_ANIM_FRAMES },
    { SPLASH_STRETCH_SCALE, SPLASH_BASE_SCALE, SPLASH_SQUISH_SCALE, SPLASH_STRETCH_SCALE, SPLASH_ANIM_FRAMES },
    { SPLASH_BASE_SCALE, SPLASH_BASE_SCALE, SPLASH_STRETCH_SCALE, SPLASH_BASE_SCALE, SPLASH_ANIM_FRAMES }
};

static const u8 sSplashPosTable[][SPLASH_TABLE_POS_COUNT] = {
    { SPLASH_BASE_POS_Y, SPLASH_OFFSET_POS_Y, SPLASH_ANIM_FRAMES },
    { SPLASH_OFFSET_POS_Y, SPLASH_BASE_POS_Y, SPLASH_ANIM_FRAMES },
    { SPLASH_BASE_POS_Y, SPLASH_BASE_POS_Y, SPLASH_ANIM_FRAMES }
};

static void BattleAnimTask_Splash(SysTask *task, void *param)
{
    SplashContext *ctx = param;

    switch (ctx->state) {
    case SPLASH_STATE_SETUP_ANIMS:
        ScaleLerpContext_InitXY(
            &ctx->scale,
            sSplashScaleTable[ctx->interation][SPLASH_TABLE_SCALE_SX],
            sSplashScaleTable[ctx->interation][SPLASH_TABLE_SCALE_EX],
            sSplashScaleTable[ctx->interation][SPLASH_TABLE_SCALE_SY],
            sSplashScaleTable[ctx->interation][SPLASH_TABLE_SCALE_EY],
            100,
            sSplashScaleTable[ctx->interation][SPLASH_TABLE_SCALE_FRAMES]);

        PosLerpContext_Init(
            &ctx->pos,
            0,
            0,
            ctx->attackerY + sSplashPosTable[ctx->interation][SPLASH_TABLE_POS_SY],
            ctx->attackerY + sSplashPosTable[ctx->interation][SPLASH_TABLE_POS_EY],
            sSplashPosTable[ctx->interation][SPLASH_TABLE_POS_FRAMES]);

        ctx->interation++;
        ctx->state++;
        break;
    case SPLASH_STATE_WAIT_FOR_ANIMS: {
        int done = 0;

        if (ScaleLerpContext_UpdateXY(&ctx->scale) == FALSE) {
            done++;
        }

        if (PosLerpContext_Update(&ctx->pos) == FALSE) {
            done++;
        }

        if (done >= 2) {
            if (ctx->interation >= NELEMS(sSplashScaleTable)) {
                ctx->cycles++;
                ctx->interation = 0;

                if (ctx->cycles >= SPLASH_CYCLES) {
                    ctx->state++;
                }
            } else {
                ctx->state = SPLASH_STATE_SETUP_ANIMS;
            }
        }

        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_X, ctx->scale.x);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
        BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
            ctx->attackerSprite,
            ctx->pos.y,
            ctx->attackerHeight,
            ctx->scale.data[XY_PARAM_CUR_Y],
            BATTLE_ANIM_ANCHOR_BOTTOM);
    } break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Splash(BattleAnimSystem *system)
{
    SplashContext *ctx = BattleAnimUtil_Alloc(system, sizeof(SplashContext));

    ctx->state = SPLASH_STATE_SETUP_ANIMS;
    ctx->interation = 0;
    ctx->battleAnimSys = system;
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->attackerHeight = BattleAnimSystem_GetBattlerSpriteHeight(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Splash, ctx);
}

static void ov12_0222BFF4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222BFF4 *v0 = (UnkStruct_ov12_0222BFF4 *)param1;

    switch (v0->unk_00) {
    case 0:
        if ((++v0->unk_01) >= 10) {
            v0->unk_01 = 0;
            v0->unk_00++;
        }
        break;
    case 1:
        ManagedSprite_SetDrawFlag(v0->unk_0C, 1);
        ManagedSprite_SetDrawFlag(v0->unk_10, 1);
        ManagedSprite_SetExplicitOamMode(v0->unk_10, GX_OAM_MODE_OBJWND);
        v0->unk_00++;
        break;
    case 2:
        if ((++v0->unk_01) >= 10) {
            G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
            G2_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
            ManagedSprite_SetDrawFlag(v0->unk_0C, 0);
            ManagedSprite_SetDrawFlag(v0->unk_10, 0);
            v0->unk_01 = 0;
            v0->unk_00++;
        }
        break;
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        BattleAnimSystem_EndAnimTask(v0->unk_04, param0);
        Heap_Free(v0);
        return;
    }

    ManagedSprite_TickFrame(v0->unk_0C);
    ManagedSprite_TickFrame(v0->unk_10);
    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_0222C0C0(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222BFF4 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222BFF4));

    v0->unk_04 = param0;
    v0->unk_08 = BattleAnimSystem_GetPokemonSpriteManager(v0->unk_04);
    v0->unk_0C = BattleAnimSystem_GetPokemonSprite(v0->unk_04, 0);
    v0->unk_10 = BattleAnimSystem_GetPokemonSprite(v0->unk_04, 1);

    GX_SetVisibleWnd(GX_WNDMASK_OW);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
    G2_SetWndOBJInsidePlane(GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_OBJ, 0);

    {
        int v1;
        int v2 = BattleAnimSystem_GetBattlerSpritePaletteIndex(v0->unk_04, BattleAnimSystem_GetAttacker(v0->unk_04));
        int v3 = BattleAnimSystem_GetBattlerSpriteNarcID(v0->unk_04, BattleAnimSystem_GetAttacker(v0->unk_04));

        v1 = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(v0->unk_0C->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
        PaletteData_LoadBufferFromFileStartWithTint(BattleAnimSystem_GetPaletteData(v0->unk_04), v3, v2, BattleAnimSystem_GetHeapID(param0), 2, 0x20, v1 * 16, 256, 256, 256);
    }

    ManagedSprite_SetDrawFlag(v0->unk_0C, 0);
    ManagedSprite_SetDrawFlag(v0->unk_10, 0);
    BattleAnimSystem_StartAnimTask(v0->unk_04, ov12_0222BFF4, v0);
}

static const u8 Unk_ov12_0223A094[] = {
    0x2,
    0x7,
    0xD,
    0x12
};

static void ov12_0222C1A4(SysTask *param0, void *param1)
{
    int v0;
    int v1;
    UnkStruct_ov12_0222C1A4 *v2 = (UnkStruct_ov12_0222C1A4 *)param1;

    switch (v2->unk_00) {
    case 0:
        PokemonSprite_SetAttribute(v2->unk_0C, MON_SPRITE_PARTIAL_DRAW, 1);
        v2->unk_00++;
        break;
    case 1:
        v1 = 0;

        for (v0 = 0; v0 < 3; v0++) {
            switch (v2->unk_18[v0].unk_00) {
            case 0:
                if ((++v2->unk_18[v0].unk_01) >= Unk_ov12_0223A094[v0]) {
                    ScaleLerpContext_InitXY(&v2->unk_18[v0].unk_08, 100, 5, 100, 5, 100, 5);
                    v2->unk_18[v0].unk_00++;
                }
                break;
            case 1:
                if (ScaleLerpContext_UpdateXY(&v2->unk_18[v0].unk_08) == 0) {
                    v2->unk_18[v0].unk_00++;
                } else {
                    f32 v3, v4;

                    BattleAnimUtil_ConvertRelativeToAffineScale(&v2->unk_18[v0].unk_08, &v3, &v4);
                    ManagedSprite_SetAffineScale(v2->unk_18[v0].unk_04, v3 * v2->unk_08, v4);
                    BattleAnimUtil_SetSpriteAnchoredPosition(v2->unk_18[v0].unk_04, v2->unk_02, v2->unk_04, v2->unk_18[v0].unk_08.data[4], 0);
                }
                break;
            default:
                v1++;
                break;
            }

            ManagedSprite_TickFrame(v2->unk_18[v0].unk_04);
        }

        if (v1 >= 3) {
            v2->unk_01++;

            if (v2->unk_01 < 3) {
                for (v0 = 0; v0 < 3; v0++) {
                    {
                        s16 v5;
                        s16 v6;

                        ManagedSprite_GetPositionXY(v2->unk_18[v0].unk_04, &v5, &v6);
                        ManagedSprite_SetPositionXY(v2->unk_18[v0].unk_04, v5, v2->unk_02);
                        ManagedSprite_SetAffineScale(v2->unk_18[v0].unk_04, 1.0f * v2->unk_08, 1.0f);
                    }
                    v2->unk_18[v0].unk_00 = 0;
                    v2->unk_18[v0].unk_01 = 0;
                }

                v2->unk_00--;
            } else {
                v2->unk_00++;
            }
        }
        break;
    case 2:
        for (v0 = 0; v0 < 3; v0++) {
            ManagedSprite_SetExplicitOamMode(v2->unk_18[v0].unk_04, GX_OAM_MODE_NORMAL);
            ScaleLerpContext_InitXY(&v2->unk_18[v0].unk_08, 5, 100, 5, 100, 100, 5);
        }

        v2->unk_00++;
        break;
    case 3:
        v1 = 0;

        for (v0 = 0; v0 < 3; v0++) {
            if (ScaleLerpContext_UpdateXY(&v2->unk_18[v0].unk_08) == 0) {
                v1++;
            } else {
                f32 v7, v8;

                BattleAnimUtil_ConvertRelativeToAffineScale(&v2->unk_18[v0].unk_08, &v7, &v8);
                ManagedSprite_SetAffineScale(v2->unk_18[v0].unk_04, v7 * v2->unk_08, v8);
                BattleAnimUtil_SetSpriteAnchoredPosition(v2->unk_18[v0].unk_04, v2->unk_02, v2->unk_04, v2->unk_18[v0].unk_08.data[4], 0);
            }
        }

        if (v1 >= 3) {
            v2->unk_00++;
        }
        break;
    default:
        PokemonSprite_SetAttribute(v2->unk_0C, MON_SPRITE_PARTIAL_DRAW, 0);
        BattleAnimSystem_EndAnimTask(v2->unk_10, param0);
        Heap_Free(v2);
        return;
    }

    SpriteSystem_DrawSprites(v2->unk_14);
}

void ov12_0222C3C0(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222C1A4 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222C1A4));

    v0->unk_00 = 0;
    v0->unk_01 = 0;
    v0->unk_10 = param0;
    v0->unk_14 = BattleAnimSystem_GetPokemonSpriteManager(v0->unk_10);
    v0->unk_0C = BattleAnimSystem_GetBattlerSprite(v0->unk_10, BattleAnimSystem_GetAttacker(v0->unk_10));
    v0->unk_02 = PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_Y_CENTER);
    v0->unk_02 -= PokemonSprite_GetAttribute(v0->unk_0C, MON_SPRITE_SHADOW_HEIGHT);
    v0->unk_04 = BattleAnimSystem_GetBattlerSpriteHeight(v0->unk_10, BattleAnimSystem_GetAttacker(v0->unk_10));

    BattleAnimUtil_SetSpriteBgBlending(v0->unk_10, 0xffffffff, 0xffffffff);
    G2_ChangeBlendAlpha(12, 6);

    {
        int v1;

        for (v1 = 0; v1 < 3; v1++) {
            v0->unk_18[v1].unk_00 = 0;
            v0->unk_18[v1].unk_01 = 0;
            v0->unk_18[v1].unk_04 = BattleAnimSystem_GetPokemonSprite(v0->unk_10, v1);

            ManagedSprite_SetAffineOverwriteMode(v0->unk_18[v1].unk_04, AFFINE_OVERWRITE_MODE_DOUBLE);
            ManagedSprite_SetExplicitOamMode(v0->unk_18[v1].unk_04, GX_OAM_MODE_XLU);
            ManagedSprite_SetPriority(v0->unk_18[v1].unk_04, v1 + 1);
        }
    }

    if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(param0, 0) == 1) {
        v0->unk_08 = -1;
    } else {
        v0->unk_08 = +1;
    }

    {
        int v2;

        for (v2 = 0; v2 < 3; v2++) {
            ManagedSprite_SetAffineScale(v0->unk_18[v2].unk_04, 1.0f * v0->unk_08, 1.0f);
        }
    }

    BattleAnimSystem_StartAnimTask(v0->unk_10, ov12_0222C1A4, v0);
}

static const s16 Unk_ov12_0223A0EE[] = {
    0xC,
    0xA,
    0x8,
    0x6,
    0x4,
    0x2,
    0x1,
    0x0
};

static void ov12_0222C4A8(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222C4A8 *v1 = (UnkStruct_ov12_0222C4A8 *)param1;

    switch (v1->unk_00) {
    case 0:
        PaletteData_StartFade(BattleAnimSystem_GetPaletteData(v1->unk_0C), 0x1, BattleAnimSystem_GetBaseBgPalettes(v1->unk_0C), 1, 0, 10, 0x0);
        v1->unk_00++;
        break;
    case 1:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(v1->unk_0C)) != 0) {
            break;
        }

        v1->unk_00++;
    case 2:
        ShakeContext_Init(&v1->unk_B4, Unk_ov12_0223A0EE[v1->unk_01], 0, 0, 5);

        if (v1->unk_02 == 0) {
            PaletteData_BlendMulti(BattleAnimSystem_GetPaletteData(v1->unk_0C), 0, 0xFF, 10, 0x0);
        } else {
            PaletteData_BlendMulti(BattleAnimSystem_GetPaletteData(v1->unk_0C), 0, 0xFF, 10, 0x7FFF);
        }

        v1->unk_03 = 3;
        v1->unk_02 ^= 1;
        v1->unk_01++;
        v1->unk_00++;
    case 3:
        if (ShakeContext_Update(&v1->unk_B4) == 0) {
            if (v1->unk_01 >= (NELEMS(Unk_ov12_0223A0EE))) {
                v1->unk_00++;
            } else {
                v1->unk_00--;
            }
        }

        if (v1->unk_03 > 0) {
            v1->unk_03--;

            if (v1->unk_03 == 0) {
                PaletteData_BlendMulti(BattleAnimSystem_GetPaletteData(v1->unk_0C), 0, 0xFF, 0, 0);
            }
        }

        for (v0 = 0; v0 < 4; v0++) {
            if (v1->unk_14[v0].unk_08 == NULL) {
                continue;
            }

            PokemonSprite_SetAttribute(v1->unk_14[v0].unk_08, MON_SPRITE_X_CENTER, v1->unk_14[v0].unk_00.unk_00 + v1->unk_B4.x);
        }

        Bg_SetOffset(v1->unk_08, BG_LAYER_MAIN_3, 0, v1->unk_B4.x);
        break;
    default:
        BattleAnimSystem_EndAnimTask(v1->unk_0C, param0);
        Heap_Free(v1);
        break;
    }
}

void ov12_0222C5FC(BattleAnimSystem *param0)
{
    int v0;
    UnkStruct_ov12_0222C4A8 *v1 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222C4A8));

    v1->unk_00 = 0;
    v1->unk_01 = 0;
    v1->unk_0C = param0;
    v1->unk_10 = BattleAnimSystem_GetPokemonSpriteManager(v1->unk_0C);
    v1->unk_08 = BattleAnimSystem_GetBgConfig(v1->unk_0C);

    {
        int v2;
        int v3;

        if (BattleAnimSystem_IsDoubleBattle(v1->unk_0C) == 1) {
            v2 = 0x40;
            v3 = (0x2 | 0x4 | 0x8 | 0x10);
        } else {
            v2 = (0x2 | 0x8);
            v3 = (0x2 | 0x4);
        }

        ov12_02235998(param0, v2, &(v1->unk_14[0]), &v1->unk_04);
    }

    for (v0 = 0; v0 < v1->unk_04; v0++) {
        v1->unk_14[v0].unk_00.unk_00 = PokemonSprite_GetAttribute(v1->unk_14[v0].unk_08, MON_SPRITE_X_CENTER);
        v1->unk_14[v0].unk_00.unk_02 = PokemonSprite_GetAttribute(v1->unk_14[v0].unk_08, MON_SPRITE_Y_CENTER);
    }

    BattleAnimSystem_StartAnimTask(v1->unk_0C, ov12_0222C4A8, v1);
}

static void ov12_0222C678(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222C678 *v0 = (UnkStruct_ov12_0222C678 *)param1;

    switch (v0->unk_00) {
    case 0:
        if (PosLerpContext_Update(&v0->unk_40) == 0) {
            v0->unk_00++;
        }

        ShakeContext_Update(&v0->unk_1C);
        AlphaFadeContext_IsDone(&v0->unk_64);

        ManagedSprite_SetPositionXY(v0->unk_18, v0->unk_40.x, v0->unk_40.y);
        ManagedSprite_TickFrame(v0->unk_18);
        SpriteSystem_DrawSprites(v0->unk_10);
        break;
    default:
        BattleAnimSystem_EndAnimTask(v0->unk_0C, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_0222C6D4(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222C678 *v0;
    int v1;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222C678));

    v0->unk_00 = 0;
    v0->unk_01 = 0;
    v0->unk_0C = param0;
    v0->unk_10 = BattleAnimSystem_GetPokemonSpriteManager(v0->unk_0C);
    v0->unk_08 = BattleAnimSystem_GetBgConfig(v0->unk_0C);
    v0->unk_18 = BattleAnimSystem_GetPokemonSprite(v0->unk_0C, 0);

    if (BattleAnimSystem_GetScriptVar(param0, 0) == 0) {
        v1 = BattleAnimSystem_GetDefender(v0->unk_0C);
    } else {
        v1 = BattleAnimSystem_GetAttacker(v0->unk_0C);
    }

    v0->unk_14 = BattleAnimSystem_GetBattlerSprite(v0->unk_0C, v1);
    ov12_02235918(v0->unk_14, &v0->unk_04);
    v0->unk_04.unk_02 -= PokemonSprite_GetAttribute(v0->unk_14, MON_SPRITE_SHADOW_HEIGHT);

    {
        int v2 = BattleAnimUtil_GetTransformDirection(v0->unk_0C, v1);
        int v3 = ov12_0222598C(v0->unk_0C, v1);

        PosLerpContext_Init(&v0->unk_40, v0->unk_04.unk_00, v0->unk_04.unk_00 + (-20 * v2), v0->unk_04.unk_02, v0->unk_04.unk_02 + ((+20) * v3), 20);
    }

    BattleAnimUtil_SetSpriteBlending(v0->unk_0C, (1 << BattleAnimSystem_GetBgID(param0, 2)) | GX_BLEND_PLANEMASK_BD | (1 << BattleAnimSystem_GetBgID(param0, 1)) | GX_WND_PLANEMASK_BG0, 0xffffffff, 0xffffffff);
    AlphaFadeContext_Init(&v0->unk_64, 31, 0, 0, 31, 20 - 5);

    ManagedSprite_SetExplicitOamMode(v0->unk_18, GX_OAM_MODE_XLU);
    BattleAnimSystem_StartAnimTask(v0->unk_0C, ov12_0222C678, v0);
}

static const int Unk_ov12_0223A118[][2] = {
    { ((20 * 0xffff) / 360), 0x3 },
    { ((15 * 0xffff) / 360), 0x3 },
    { ((10 * 0xffff) / 360), 0x2 },
    { ((5 * 0xffff) / 360), 0x2 },
    { ((0 * 0xffff) / 360), 0x1 }
};

static void ov12_0222C7E0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222C7E0 *v0 = (UnkStruct_ov12_0222C7E0 *)param1;

    switch (v0->unk_00.unk_00) {
    case 0: {
        int v1;
        int v2;

        if (v0->unk_00.unk_01 == 0) {
            v1 = -Unk_ov12_0223A118[v0->unk_00.unk_02][0];
            v2 = +Unk_ov12_0223A118[v0->unk_00.unk_02][0];
        } else {
            v1 = +Unk_ov12_0223A118[v0->unk_00.unk_02][0];
            v2 = -Unk_ov12_0223A118[v0->unk_00.unk_02][0];
        }

        ValueLerpContext_Init(&v0->unk_5C, v1, v2, Unk_ov12_0223A118[v0->unk_00.unk_02][1]);

        if (v0->unk_00.unk_01 == 1) {
            v0->unk_00.unk_02++;
        }

        v0->unk_00.unk_01 ^= 1;
    }
        v0->unk_00.unk_00++;
    case 1:
        if (ValueLerpContext_Update(&v0->unk_5C) == 1) {
            PokemonSprite_SetAttribute(v0->unk_28[0], MON_SPRITE_ROTATION_Z, (u16)v0->unk_5C.value);
        } else {
            if (v0->unk_00.unk_02 >= 5) {
                v0->unk_00.unk_00++;
            } else {
                v0->unk_00.unk_00--;
            }
        }
        break;
    default:
        PokemonSprite_SetAttribute(v0->unk_28[0], MON_SPRITE_ROTATION_Z, 0);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        break;
    }
}

static void ov12_0222C884(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222C7E0 *v0 = (UnkStruct_ov12_0222C7E0 *)param1;

    switch (v0->unk_00.unk_00) {
    case 0:
        ShakeContext_Init(&v0->unk_38, v0->unk_1C.unk_00, v0->unk_1C.unk_02, v0->unk_1C.unk_04, v0->unk_1C.unk_06);
        v0->unk_00.unk_00++;
        break;
    case 1: {
        UnkStruct_ov12_02235350 v1;

        ov12_02235918(v0->unk_28[1], &v1);

        if (ov12_0222619C(&v0->unk_38, v1.unk_00, v1.unk_02, v0->unk_28[1]) == 0) {
            v0->unk_00.unk_00++;
        }
    } break;
    default:
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSystem, param0);
        Heap_Free(v0);
        break;
    }
}

void ov12_0222C8F8(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222C7E0 *v0;
    int v1 = 0;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222C7E0));
    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_28[0] = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetAttacker(v0->unk_00.battleAnimSystem));
    v0->unk_28[1] = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetDefender(v0->unk_00.battleAnimSystem));

    PokemonSprite_SetAttribute(v0->unk_28[0], MON_SPRITE_Y_PIVOT, 100);

    v1 = BattleAnimSystem_GetScriptVar(param0, 0);

    v0->unk_1C.unk_00 = BattleAnimSystem_GetScriptVar(param0, 1);
    v0->unk_1C.unk_02 = BattleAnimSystem_GetScriptVar(param0, 2);
    v0->unk_1C.unk_04 = BattleAnimSystem_GetScriptVar(param0, 3);
    v0->unk_1C.unk_06 = BattleAnimSystem_GetScriptVar(param0, 4);
    v0->unk_1C.unk_08 = BattleAnimSystem_GetScriptVar(param0, 5);

    if (v1 == 0) {
        BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222C7E0, v0);
    } else {
        BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222C884, v0);
    }
}

static void ov12_0222C994(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222C994 *v1 = (UnkStruct_ov12_0222C994 *)param1;

    switch (v1->unk_00.unk_00) {
    case 0:
        ShakeContext_Init(&v1->unk_4C, 2 + v1->unk_48, v1->unk_48, 0, 10);
        v1->unk_00.unk_00++;
        break;
    case 1:
        if (ShakeContext_Update(&v1->unk_4C) == 0) {
            v1->unk_00.unk_00++;
        } else {
            for (v0 = 0; v0 < 4; v0++) {
                if (v1->unk_38[v0] == NULL) {
                    continue;
                }

                PokemonSprite_SetAttribute(v1->unk_38[v0], MON_SPRITE_X_CENTER, v1->unk_28[v0].unk_00 + v1->unk_4C.x);
            }

            Bg_SetOffset(v1->unk_00.bgConfig, 3, 0, v1->unk_4C.x);
            Bg_SetOffset(v1->unk_00.bgConfig, 3, 3, v1->unk_4C.y);
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(v1->unk_00.battleAnimSystem, param0);
        Heap_Free(v1);
        break;
    }
}

void ov12_0222CA2C(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222C994 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222C994));
    int v1;

    ov12_0223595C(param0, &v0->unk_00);

    {
        int v2 = BattleAnimSystem_GetMoveInfo(v0->unk_00.battleAnimSystem, 1);

        switch (v2) {
        case 150:
            v0->unk_48 = 6;
            break;
        case 110:
            v0->unk_48 = 5;
            break;
        case 90:
            v0->unk_48 = 4;
            break;
        case 70:
            v0->unk_48 = 3;
            break;
        case 50:
            v0->unk_48 = 2;
            break;
        case 30:
            v0->unk_48 = 1;
            break;
        default:
            v0->unk_48 = 0;
            break;
        }
    }

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_38[v1] = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSystem, v1);

        if (v0->unk_38[v1] == NULL) {
            continue;
        }

        ov12_02235918(v0->unk_38[v1], &v0->unk_28[v1]);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222C994, v0);
}

static void ov12_0222CACC(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222CACC *v1 = (UnkStruct_ov12_0222CACC *)param1;

    switch (v1->unk_00.unk_00) {
    case 0:
        ShakeContext_Init(&v1->unk_40[0], 20, 0, 0, 10);
        ShakeContext_Init(&v1->unk_40[1], 2, 0, 0, 10);
        v1->unk_00.unk_00++;
        break;
    case 1:
        if (ShakeContext_Update(&v1->unk_40[0]) == 0) {
            v1->unk_00.unk_00++;
        } else {
            ManagedSprite_SetPositionXY(v1->unk_38[0], +v1->unk_28[1].unk_00 + v1->unk_40[0].x, v1->unk_28[1].unk_02 + v1->unk_40[0].y);
            ManagedSprite_SetPositionXY(v1->unk_38[1], -v1->unk_28[1].unk_00 + v1->unk_40[0].x, v1->unk_28[1].unk_02 + v1->unk_40[0].y);
            ManagedSprite_TickFrame(v1->unk_38[0]);
            ManagedSprite_TickFrame(v1->unk_38[1]);
        }

        SpriteSystem_DrawSprites(v1->unk_00.pokemonSpriteManager);
        break;
    default:
        BattleAnimSystem_EndAnimTask(v1->unk_00.battleAnimSystem, param0);
        Heap_Free(v1);
        break;
    }
}

void ov12_0222CB90(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222CACC *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222CACC));
    int v1;

    ov12_0223595C(param0, &v0->unk_00);

    v0->unk_38[0] = BattleAnimSystem_GetPokemonSprite(v0->unk_00.battleAnimSystem, 0);
    v0->unk_38[1] = BattleAnimSystem_GetPokemonSprite(v0->unk_00.battleAnimSystem, 1);
    v0->unk_30[0] = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetAttacker(v0->unk_00.battleAnimSystem));
    v0->unk_30[1] = BattleAnimSystem_GetBattlerSprite(v0->unk_00.battleAnimSystem, BattleAnimSystem_GetDefender(v0->unk_00.battleAnimSystem));

    ov12_02235918(v0->unk_30[0], &v0->unk_28[0]);
    ov12_02235918(v0->unk_30[1], &v0->unk_28[1]);
    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSystem, ov12_0222CACC, v0);
}

static void ov12_0222CBFC(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222CBFC *v1 = (UnkStruct_ov12_0222CBFC *)param1;

    if (ov12_02225D2C(&v1->unk_8C[0], &v1->unk_8C[1], v1->unk_38) == 0) {
        Sprite_DeleteAndFreeResources(v1->unk_38);
        BattleAnimSystem_EndAnimTask(v1->unk_10.battleAnimSystem, param0);
        ov12_02235E80(v1);
        (v1) = NULL;
        return;
    }

    if (ValueLerpContext_Update(&v1->unk_D4) == 1) {
        ManagedSprite_SetAffineZRotation(v1->unk_38, v1->unk_D4.value);
    }

    ManagedSprite_TickFrame(v1->unk_38);
    SpriteSystem_DrawSprites(v1->unk_10.primarySpriteManager);
}

void ov12_0222CC54(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    int v0;
    int v1;
    UnkStruct_ov12_0222CBFC *v2 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222CBFC));
    ov12_0223595C(param0, &v2->unk_10);

    v2->unk_0C.unk_00 = BattleAnimSystem_GetScriptVar(param0, 0);
    v2->unk_0C.unk_02 = BattleAnimSystem_GetScriptVar(param0, 1);
    v2->unk_04 = BattleAnimSystem_GetScriptVar(param0, 2);
    v2->unk_08 = BattleAnimSystem_GetScriptVar(param0, 3);

    v1 = BattleAnimUtil_GetTransformDirection(param0, BattleAnimSystem_GetAttacker(param0));
    v2->unk_38 = param3;

    ManagedSprite_SetAffineOverwriteMode(v2->unk_38, AFFINE_OVERWRITE_MODE_DOUBLE);

    v2->unk_3C[0].unk_08 = BattleAnimSystem_GetBattlerSprite(param0, BattleAnimSystem_GetAttacker(param0));
    v2->unk_3C[1].unk_08 = BattleAnimSystem_GetBattlerSprite(param0, BattleAnimSystem_GetDefender(param0));

    ov12_02235918(v2->unk_3C[0].unk_08, &v2->unk_3C[0].unk_04);
    ov12_02235918(v2->unk_3C[1].unk_08, &v2->unk_3C[1].unk_04);
    ov12_02225C98(&v2->unk_8C[0], &v2->unk_8C[1], v2->unk_3C[0].unk_04.unk_00, v2->unk_3C[1].unk_04.unk_00 + (v2->unk_0C.unk_00 * v1), v2->unk_3C[0].unk_04.unk_02, v2->unk_3C[1].unk_04.unk_02 + (v2->unk_0C.unk_02 * v1), v2->unk_04, v2->unk_08 * FX32_ONE);

    if ((BattleAnimSystem_GetBattlerType(param0, BattleAnimSystem_GetAttacker(param0)) == 4) && (BattleAnimSystem_GetBattlerType(param0, BattleAnimSystem_GetDefender(param0)) == 2)) {
        v1 *= -1;
    }

    if ((BattleAnimSystem_GetBattlerType(param0, BattleAnimSystem_GetAttacker(param0)) == 5) && (BattleAnimSystem_GetBattlerType(param0, BattleAnimSystem_GetDefender(param0)) == 3)) {
        v1 *= -1;
    }

    if (v1 > 0) {
        ValueLerpContext_Init(&v2->unk_D4, ((20 * 0xffff) / 360) * v1, ((130 * 0xffff) / 360) * v1, 10);
    } else {
        ValueLerpContext_Init(&v2->unk_D4, ((90 * 0xffff) / 360) * v1, ((130 * 0xffff) / 360) * v1, 10);
    }

    ManagedSprite_SetAffineZRotation(v2->unk_38, v2->unk_D4.value);
    ov12_02225D2C(&v2->unk_8C[0], &v2->unk_8C[1], v2->unk_38);

    ManagedSprite_TickFrame(v2->unk_38);
    BattleAnimSystem_StartAnimTask(v2->unk_10.battleAnimSystem, ov12_0222CBFC, v2);
}

static void ov12_0222CDF0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222CDF0 *v0 = (UnkStruct_ov12_0222CDF0 *)param1;

    switch (v0->unk_18.unk_00) {
    case 0:
        ScaleLerpContext_InitXY(&v0->unk_9C, 100 * v0->unk_12, 60 * v0->unk_12, 5, 150, 100, 12);
        v0->unk_18.unk_00++;
        break;
    case 1:
        if (ScaleLerpContext_UpdateXY(&v0->unk_9C) == 0) {
            ScaleLerpContext_InitXY(&v0->unk_9C, 60 * v0->unk_12, 150 * v0->unk_12, 150, 10, 100, 12);
            v0->unk_18.unk_00++;
        } else {
            f32 v1, v2;
            s16 v3;

            BattleAnimUtil_ConvertRelativeToAffineScale(&v0->unk_9C, &v1, &v2);
            ManagedSprite_SetAffineScale(v0->unk_40, v1, v2);
            v3 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v0->unk_14.unk_02, 16, v0->unk_9C.data[4]);
            ManagedSprite_SetPositionXY(v0->unk_40, v0->unk_14.unk_00, v0->unk_14.unk_02 + v3);

            if (v0->unk_0C < v0->unk_10) {
                v0->unk_0C++;
            }

            if (v0->unk_0D > v0->unk_11) {
                v0->unk_0D--;
            }

            G2_ChangeBlendAlpha(v0->unk_0C, v0->unk_0D);
        }
        break;
    case 2:
        if (++v0->unk_04 >= 4) {
            v0->unk_18.unk_00++;
        }
        break;
    case 3:
        if (ScaleLerpContext_UpdateXY(&v0->unk_9C) == 0) {
            v0->unk_18.unk_00++;
        } else {
            f32 v4, v5;
            s16 v6;

            BattleAnimUtil_ConvertRelativeToAffineScale(&v0->unk_9C, &v4, &v5);
            ManagedSprite_SetAffineScale(v0->unk_40, v4, v5);
            v6 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v0->unk_14.unk_02, 16, v0->unk_9C.data[4]);
            ManagedSprite_SetPositionXY(v0->unk_40, v0->unk_14.unk_00, v0->unk_14.unk_02 + v6);

            if (v0->unk_0C > v0->unk_0E) {
                v0->unk_0C--;
            }

            if (v0->unk_0D < v0->unk_0F) {
                v0->unk_0D++;
            }

            G2_ChangeBlendAlpha(v0->unk_0C, v0->unk_0D);
        }
        break;
    default:
        Sprite_DeleteAndFreeResources(v0->unk_44[0]);
        Sprite_DeleteAndFreeResources(v0->unk_44[1]);
        BattleAnimSystem_EndAnimTask(v0->unk_18.battleAnimSystem, param0);
        ov12_02235E80(v0);
        (v0) = NULL;
        return;
    }

    ManagedSprite_TickFrame(v0->unk_40);
    SpriteSystem_DrawSprites(v0->unk_18.primarySpriteManager);
}

void ov12_0222CFA0(BattleAnimSystem *param0)
{
    UnkStruct_ov12_0222CDF0 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222CDF0));

    ov12_0223595C(param0, &v0->unk_18);

    v0->unk_44[0] = BattleAnimSystem_GetSprite(param0, 0);
    v0->unk_44[1] = BattleAnimSystem_GetSprite(param0, 1);

    BattleAnimUtil_SetSpriteBgBlending(v0->unk_18.battleAnimSystem, 0xffffffff, 0xffffffff);

    if (BattleAnimSystem_GetScriptVar(param0, 0) == 0) {
        v0->unk_0C = 0;
        v0->unk_0D = 31;
        v0->unk_0E = 0;
        v0->unk_0F = 31;
        v0->unk_10 = 31;
        v0->unk_11 = 4;
    } else {
        v0->unk_0C = 0;
        v0->unk_0D = 31;
        v0->unk_0E = 0;
        v0->unk_0F = 31;
        v0->unk_10 = 31;
        v0->unk_11 = 4;
    }

    if (BattleAnimSystem_IsContest(param0) == 1) {
        v0->unk_40 = v0->unk_44[0];
        ManagedSprite_SetDrawFlag(v0->unk_44[1], 0);
        ManagedSprite_SetAnim(v0->unk_40, 0);
        v0->unk_14.unk_00 = 255 - 76;
        v0->unk_14.unk_02 = 120;
        ManagedSprite_SetExplicitPriority(v0->unk_40, BattleAnimSystem_GetPokemonSpritePriority(param0) + 1);
        v0->unk_12 = -1;
    } else {
        if (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x4) {
            v0->unk_40 = v0->unk_44[1];
            ManagedSprite_SetDrawFlag(v0->unk_44[0], 0);
            ManagedSprite_SetAnim(v0->unk_40, 1);
            v0->unk_14.unk_00 = 144;
            v0->unk_14.unk_02 = 64;
        } else {
            v0->unk_40 = v0->unk_44[0];
            ManagedSprite_SetDrawFlag(v0->unk_44[1], 0);
            ManagedSprite_SetAnim(v0->unk_40, 0);
            v0->unk_14.unk_00 = 76;
            v0->unk_14.unk_02 = 120;
            ManagedSprite_SetExplicitPriority(v0->unk_40, BattleAnimSystem_GetPokemonSpritePriority(param0) + 1);
        }

        v0->unk_12 = +1;
    }

    ManagedSprite_SetPositionXY(v0->unk_40, v0->unk_14.unk_00, v0->unk_14.unk_02);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_40, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitOamMode(v0->unk_40, GX_OAM_MODE_XLU);

    {
        f32 v1, v2;
        s16 v3;

        ScaleLerpContext_InitXY(&v0->unk_9C, 100 * v0->unk_12, 100 * v0->unk_12, 100, 5, 100, 1);
        ScaleLerpContext_UpdateXY(&v0->unk_9C);

        BattleAnimUtil_ConvertRelativeToAffineScale(&v0->unk_9C, &v1, &v2);
        ManagedSprite_SetAffineScale(v0->unk_40, v1, v2);

        v3 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v0->unk_14.unk_02, 16, v0->unk_9C.data[4]);
        ManagedSprite_SetPositionXY(v0->unk_40, v0->unk_14.unk_00, v0->unk_14.unk_02 + v3);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_18.battleAnimSystem, ov12_0222CDF0, v0);
}

static const u8 Unk_ov12_0223A0D0[][5] = {
    { 0x64, 0x64, 0x64, 0x46, 0x8 },
    { 0x64, 0x64, 0x46, 0x78, 0x3 },
    { 0x64, 0x64, 0x78, 0x64, 0x3 }
};

static void ov12_0222D128(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222D128 *v1 = (UnkStruct_ov12_0222D128 *)param1;

    switch (v1->unk_00) {
    case 0:
        ScaleLerpContext_InitXY(&v1->unk_CC, Unk_ov12_0223A0D0[v1->unk_0C][0], Unk_ov12_0223A0D0[v1->unk_0C][1], Unk_ov12_0223A0D0[v1->unk_0C][2], Unk_ov12_0223A0D0[v1->unk_0C][3], 100, Unk_ov12_0223A0D0[v1->unk_0C][4]);
        v1->unk_0C++;
        v1->unk_00++;
        break;
    case 1:
        if (ScaleLerpContext_UpdateXY(&v1->unk_CC) == 1) {
            PokemonSprite_SetAttribute(v1->unk_1C, MON_SPRITE_SCALE_X, v1->unk_CC.x);
            PokemonSprite_SetAttribute(v1->unk_1C, MON_SPRITE_SCALE_Y, v1->unk_CC.y);
            {
                s16 v2 = BattleAnimUtil_GetGroundAnchoredScaleOffset(v1->unk_20, v1->unk_24, v1->unk_CC.data[4]);
                PokemonSprite_SetAttribute(v1->unk_1C, MON_SPRITE_Y_CENTER, v1->unk_20 + v2);
            }
        } else {
            if (v1->unk_0C >= 3) {
                v1->unk_00++;
            } else {
                v1->unk_00--;
            }
        }
        break;
    case 2:
        if ((++v1->unk_01) >= 1) {
            v1->unk_01 = 0;
            v1->unk_0C = 0;
            v1->unk_00++;
        }
        break;
    case 3: {
        s16 v3, v4;

        ManagedSprite_GetPositionXY(v1->unk_30[0].unk_00, &v3, &v4);

        if (v4 <= ((40 - 16 + 20 + 10) + 50)) {
            ManagedSprite_OffsetPositionXY(v1->unk_30[0].unk_00, 0, 2);
            ManagedSprite_OffsetPositionXY(v1->unk_30[1].unk_00, 0, 2);
        } else {
            v1->unk_00++;
        }
    } break;
    case 4: {
        s16 v5, v6;

        ManagedSprite_GetPositionXY(v1->unk_30[0].unk_00, &v5, &v6);

        if (v6 <= ((40 - 16 + 20 + 10) + 50)) {
            ManagedSprite_OffsetPositionXY(v1->unk_30[0].unk_00, 0, 2);
            ManagedSprite_OffsetPositionXY(v1->unk_30[1].unk_00, 0, 2);
        } else {
            G2_ChangeBlendAlpha(16, 0);
            v1->unk_00++;
        }
    }
        v1->unk_01++;

        ov12_022267A8(&v1->unk_04, 16, +16);
        ov12_022267A8(&v1->unk_08, 0, -16);

        G2_ChangeBlendAlpha(v1->unk_04, v1->unk_08);

        if (v1->unk_01 == 10) {
            ManagedSprite_OffsetPositionXY(v1->unk_30[0].unk_00, 0, 16);
        }

        if (v1->unk_01 == 12) {
            ManagedSprite_OffsetPositionXY(v1->unk_30[1].unk_00, 0, 16);
        }
        break;
    case 5:
        if ((++v1->unk_01) < 1) {
            break;
        }

        v1->unk_01 = 0;

        {
            s16 v7, v8, v9, v10;

            ManagedSprite_GetPositionXY(v1->unk_30[0].unk_00, &v7, &v8);
            ManagedSprite_GetPositionXY(v1->unk_30[1].unk_00, &v9, &v10);

            ov12_02226728(v7, v8, v9, v10, &v1->unk_C8, &v1->unk_CA);
            ov12_02226744(v7, v8, v1->unk_C8, v1->unk_CA, &v1->unk_2C);
            ov12_0222676C(v7, v8, v1->unk_C8, v1->unk_CA, &v1->unk_28);

            v1->unk_2C = (40 * FX32_ONE);
        }
        v1->unk_00++;
        break;

    case 6: {
        s16 v11, v12, v13, v14;
        s8 v15[][2] = {
            { +1, -1 },
            { -1, +1 },
            { +1, -1 },
            { +1, -1 },
            { +1, -1 },
        };

        ManagedSprite_GetPositionXY(v1->unk_30[0].unk_00, &v11, &v12);
        ManagedSprite_GetPositionXY(v1->unk_30[1].unk_00, &v13, &v14);

        ov12_02225C98(&v1->unk_30[0].unk_04[0], &v1->unk_30[0].unk_04[1], v11, v13, v12, v14, 10, v1->unk_2C * v15[v1->unk_0C][0]);
        ov12_02225C98(&v1->unk_30[1].unk_04[0], &v1->unk_30[1].unk_04[1], v13, v11, v14, v12, 10, v1->unk_2C * v15[v1->unk_0C][1]);
    }
        v1->unk_0C++;
        v1->unk_00++;
        break;
    case 7: {
        u8 v16 = 0;

        if (ov12_02225D2C(&v1->unk_30[0].unk_04[0], &v1->unk_30[0].unk_04[1], v1->unk_30[0].unk_00) == 0) {
            v16++;
        }

        if (ov12_02225D2C(&v1->unk_30[1].unk_04[0], &v1->unk_30[1].unk_04[1], v1->unk_30[1].unk_00) == 0) {
            v16++;
        }

        if (v16 == 2) {
            if (v1->unk_0C == 5) {
                v1->unk_00++;
            } else {
                v1->unk_00--;
            }
        }
    } break;
    case 8: {
        int v17 = 0;

        if (ov12_022267A8(&v1->unk_04, 0, -2) == 1) {
            v17++;
        }

        if (ov12_022267A8(&v1->unk_08, 16, +2) == 1) {
            v17++;
        }

        G2_ChangeBlendAlpha(v1->unk_04, v1->unk_08);

        if (v17 == 2) {
            v1->unk_00++;
        }
    } break;
    default:
        for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_10, 0); v0++) {
            Sprite_DeleteAndFreeResources(v1->unk_30[v0].unk_00);
        }

        BattleAnimSystem_EndAnimTask(v1->unk_10, param0);
        Heap_Free(v1);
        return;
    }

    {
        s16 v18, v19;

        for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_10, 0); v0++) {
            ManagedSprite_GetPositionXY(v1->unk_30[v0].unk_00, &v18, &v19);

            if (v19 < 80) {
                ManagedSprite_SetExplicitPriority(v1->unk_30[v0].unk_00, BattleAnimSystem_GetPokemonSpritePriority(v1->unk_10));
            } else {
                if (v18 > 128) {
                    ManagedSprite_SetExplicitPriority(v1->unk_30[v0].unk_00, BattleAnimSystem_GetPokemonSpritePriority(v1->unk_10));
                } else {
                    ManagedSprite_SetExplicitPriority(v1->unk_30[v0].unk_00, BattleAnimSystem_GetPokemonSpritePriority(v1->unk_10) + 1);
                }
            }
        }
    }

    if (v1->unk_00 < 4) {
        return;
    }

    for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_10, 0); v0++) {
        ManagedSprite_TickFrame(v1->unk_30[v0].unk_00);
    }

    SpriteSystem_DrawSprites(v1->unk_18);
}

void ov12_0222D56C(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    int v0;
    UnkStruct_ov12_0222D128 *v1;
    SpriteTemplate v2;

    v1 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0222D128));

    v1->unk_00 = 0;
    v1->unk_01 = 0;
    v1->unk_10 = param0;
    v1->unk_18 = param2;
    v1->unk_14 = param1;
    v1->unk_04 = 0;
    v1->unk_08 = 16;
    v1->unk_1C = BattleAnimSystem_GetBattlerSprite(v1->unk_10, BattleAnimSystem_GetAttacker(v1->unk_10));
    v1->unk_20 = PokemonSprite_GetAttribute(v1->unk_1C, MON_SPRITE_Y_CENTER);
    v1->unk_24 = BattleAnimSystem_GetBattlerSpriteHeight(v1->unk_10, BattleAnimSystem_GetAttacker(v1->unk_10));

    BattleAnimUtil_SetSpriteBlending(v1->unk_10, (1 << BattleAnimSystem_GetBgID(param0, 2)) | (1 << BattleAnimSystem_GetBgID(param0, 1)) | GX_WND_PLANEMASK_BG0, 0xffffffff, 0xffffffff);
    G2_ChangeBlendAlpha(v1->unk_04, v1->unk_08);

    v2 = BattleAnimSystem_GetLastSpriteTemplate(param0);
    v1->unk_30[0].unk_00 = param3;

    {
        for (v0 = 1; v0 < BattleAnimSystem_GetScriptVar(v1->unk_10, 0); v0++) {
            v1->unk_30[v0].unk_00 = SpriteSystem_NewSprite(v1->unk_14, v1->unk_18, &v2);
        }
    }

    for (v0 = 0; v0 < BattleAnimSystem_GetScriptVar(v1->unk_10, 0); v0++) {
        ManagedSprite_SetExplicitOamMode(v1->unk_30[v0].unk_00, GX_OAM_MODE_XLU);
        ManagedSprite_SetExplicitPriority(v1->unk_30[v0].unk_00, BattleAnimSystem_GetPokemonSpritePriority(v1->unk_10) + 1);
    }

    if (BattleAnimSystem_IsContest(param0) == 1) {
        ManagedSprite_SetPositionXY(v1->unk_30[0].unk_00, 180 - 20, 40 - 16 + 20 + 10);
        ManagedSprite_SetPositionXY(v1->unk_30[1].unk_00, 100 - 20, 25 - 16 + 20 + 10);
    } else {
        ManagedSprite_SetPositionXY(v1->unk_30[0].unk_00, 100, 40 - 16 + 20 + 10);
        ManagedSprite_SetPositionXY(v1->unk_30[1].unk_00, 180, 25 - 16 + 20 + 10);
    }

    BattleAnimSystem_StartAnimTask(v1->unk_10, ov12_0222D128, v1);
}
