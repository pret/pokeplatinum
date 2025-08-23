#include "battle_anim/script_funcs_0.h"

#include "nitro/pad/common/pad.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"

#include "battle_script_battlers.h"
#include "bg_window.h"
#include "heap.h"
#include "math_util.h"
#include "palette.h"
#include "pltt_transfer.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

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
    PaletteFadeContext *unk_0C;
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

// -------------------------------------------------------------------
// Splash
// -------------------------------------------------------------------
typedef struct SplashContext {
    u8 state;
    u8 iteration;
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

// -------------------------------------------------------------------
// Harden
// -------------------------------------------------------------------
typedef struct HardenContext {
    u8 state;
    u8 timer;
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    ManagedSprite *attackerSprite1;
    ManagedSprite *attackerSprite2;
} HardenContext;

enum HardenState {
    HARDEN_STATE_WAIT = 0,
    HARDEN_STATE_ENABLE_SPRITES,
    HARDEN_STATE_WAIT_DRAW,
};

#define HARDEN_TINT_R      256
#define HARDEN_TINT_G      256
#define HARDEN_TINT_B      256
#define HARDEN_START_DELAY 10

// -------------------------------------------------------------------
// Minimize
// -------------------------------------------------------------------
#define MINIMIZE_SPRITE_COUNT 3

typedef struct MinimizeSprite {
    u8 state;
    u8 frameCounter;
    ManagedSprite *sprite;
    XYTransformContext scale;
} MinimizeSprite;

typedef struct MinimizeContext {
    u8 state;
    u8 cycles;
    s16 attackerY;
    int attackerSpriteHeight;
    s8 spriteDir;
    PokemonSprite *attackerSprite;
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    MinimizeSprite sprites[MINIMIZE_SPRITE_COUNT];
} MinimizeContext;

enum MiminizeSpriteState {
    MINIMIZE_SPRITE_STATE_INIT = 0,
    MINIMIZE_SPRITE_STATE_SHRINK,
};

enum MinimizeState {
    MINIMIZE_STATE_INIT = 0,
    MINIMIZE_STATE_SHRINK,
    MINIMIZE_STATE_SETUP_GROW,
    MINIMIZE_STATE_GROW,
};

#define MINIMIZE_SPRITE_ALPHA   12
#define MINIMIZE_BG_ALPHA       6
#define MINIMIZE_SHRINK_SCALE_X 5
#define MINIMIZE_SHRINK_SCALE_Y 5
#define MINIMIZE_SHRINK_FRAMES  5
#define MINIMIZE_SHRINK_CYCLES  3

// -------------------------------------------------------------------
// Earthquake
// -------------------------------------------------------------------
typedef struct EarthquakeContext {
    u8 state;
    u8 shakeCount;
    u8 flashFlag;
    u8 flashDuration;
    int spriteCount;
    BgConfig *bgConfig;
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    BattleAnimSpriteInfo sprites[MAX_BATTLERS];
    BattleAnimSpriteInfo unused[MAX_BATTLERS];
    XYTransformContext shake;
} EarthquakeContext;

enum EarthquakeState {
    EARTHQUAKE_STATE_INIT = 0,
    EARTHQUAKE_STATE_FADE_BG,
    EARTHQUAKE_STATE_FLASH,
    EARTHQUAKE_STATE_SHAKE,
};

#define EARTHQUAKE_BG_FADE_DELAY         1
#define EARTHQUAKE_BG_FADE_ALPHA         10
#define EARTHQUAKE_BG_FADE_COLOR         COLOR_BLACK
#define EARTHQUAKE_BG_FLASH_FRAMES       3
#define EARTHQUAKE_BG_FLASH_PALETTES     0xFF
#define EARTHQUAKE_BG_FLASH_ALPHA        10
#define EARTHQUAKE_BG_FLASH_OFF_ALPHA    0
#define EARTHQUAKE_BG_FLASH_OFF_COLOR    COLOR_BLACK
#define EARTHQUAKE_BG_FLASH_0_COLOR      COLOR_BLACK
#define EARTHQUAKE_BG_FLASH_1_COLOR      COLOR_WHITE
#define EARTHQUAKE_SPRITE_SHAKE_EXTENT_Y 0
#define EARTHQUAKE_SPRITE_SHAKE_INTERVAL 0
#define EARTHQUAKE_SPRITE_SHAKE_AMOUNT   5

// -------------------------------------------------------------------
// Nightmare
// -------------------------------------------------------------------
typedef struct NightmareContext {
    u8 state;
    u8 unused;
    u8 unk_02;
    u8 unk_03;
    Point2D monPos;
    BgConfig *bgConfig;
    BattleAnimSystem *system;
    SpriteManager *pokemonSpriteManager;
    PokemonSprite *monSprite;
    ManagedSprite *xluSprite;
    XYTransformContext shake; // Never initialized so it doesn't do anything
    XYTransformContext pos;
    AlphaFadeContext alpha;
} NightmareContext;

#define NIGHTMARE_SPRITE_START_ALPHA   31
#define NIGHTMARE_SPRITE_END_ALPHA     0
#define NIGHTMARE_BG_START_ALPHA       0
#define NIGHTMARE_BG_END_ALPHA         31
#define NIGHTMARE_SPRITE_OFFSET_X      (-20)
#define NIGHTMARE_SPRITE_OFFSET_Y      (20)
#define NIGHTMARE_SPRITE_OFFSET_FRAMES 20
#define NIGHTMARE_SPRITE_ALPHA_FRAMES  (NIGHTMARE_SPRITE_OFFSET_FRAMES - 5)
#define NIGHTMARE_VAR_MOVE_ATTACKER    0

// -------------------------------------------------------------------
// Flail (animation), used by Struggle, Flail, Frustration, etc.
// -------------------------------------------------------------------
typedef struct FlailContext {
    BattleAnimScriptFuncCommon common;
    SpriteShakeInfo shakeInfo;
    PokemonSprite *battlerSprites[2];
    s16 unk_30;
    s16 unk_32;
    s16 unk_34;
    s16 unk_36;
    XYTransformContext shake;
    ValueLerpContext angle;
} FlailContext;

enum FlailState {
    FLAIL_MODE_ATTACKER_STATE_SETUP_ROTATION = 0,
    FLAIL_MODE_ATTACKER_STATE_ROTATE,

    FLAIL_MODE_DEFENDER_STATE_SETUP_SHAKE = 0,
    FLAIL_MODE_DEFENDER_STATE_SHAKE,
};

#define FLAIL_WIGGLES            5
#define FLAIL_WIGGLE_PIVOT_Y     100
#define FLAIL_VAR_MODE           0
#define FLAIL_VAR_SHAKE_EXTENT_X 1
#define FLAIL_VAR_SHAKE_EXTENT_Y 2
#define FLAIL_VAR_SHAKE_INTERVAL 3
#define FLAIL_VAR_SHAKE_AMOUNT   4

// -------------------------------------------------------------------
// Magnitude
// -------------------------------------------------------------------
typedef struct MagnitudeContext {
    BattleAnimScriptFuncCommon common;
    SpriteShakeInfo unk_1C;
    Point2D battlerPositions[MAX_BATTLERS];
    PokemonSprite *battlerSprites[MAX_BATTLERS];
    int power;
    XYTransformContext shake;
} MagnitudeContext;

enum MagnitudeState {
    MAGNITUDE_STATE_INIT = 0,
    MAGNITUDE_STATE_SHAKE,
};

#define MAGNITUDE_POWER150_SHAKE_EXTENT 6
#define MAGNITUDE_POWER110_SHAKE_EXTENT 5
#define MAGNITUDE_POWER90_SHAKE_EXTENT  4
#define MAGNITUDE_POWER70_SHAKE_EXTENT  3
#define MAGNITUDE_POWER50_SHAKE_EXTENT  2
#define MAGNITUDE_POWER30_SHAKE_EXTENT  1
#define MAGNITUDE_DEFAULT_SHAKE_EXTENT  0
#define MAGNITUDE_SHAKE_BASE_EXTENT     2
#define MAGNITUDE_SHAKE_INTERVAL        0
#define MAGNITUDE_SHAKE_AMOUNT          10

// -------------------------------------------------------------------
// Odor Sleuth
// -------------------------------------------------------------------
typedef struct OdorSleuthContext {
    BattleAnimScriptFuncCommon common;
    SpriteShakeInfo unused;
    Point2D spritePositions[NUM_BATTLE_SIDES];
    PokemonSprite *battlerSprites[NUM_BATTLE_SIDES];
    ManagedSprite *monSprites[NUM_BATTLE_SIDES];
    XYTransformContext shake[NUM_BATTLE_SIDES];
} OdorSleuthContext;

enum OdorSleuthState {
    ODOR_SLEUTH_STATE_INIT = 0,
    ODOR_SLEUTH_STATE_SHAKE,
};

#define ODOR_SLEUTH_ATTACKER_SHAKE_EXTENT_X 20
#define ODOR_SLEUTH_ATTACKER_SHAKE_EXTENT_Y 0
#define ODOR_SLEUTH_ATTACKER_SHAKE_INTERVAL 0
#define ODOR_SLEUTH_ATTACKER_SHAKE_AMOUNT   10
#define ODOR_SLEUTH_DEFENDER_SHAKE_EXTENT_X 2 // Note: These "defender" values aren't actually used/applied.
#define ODOR_SLEUTH_DEFENDER_SHAKE_EXTENT_Y 0
#define ODOR_SLEUTH_DEFENDER_SHAKE_INTERVAL 0
#define ODOR_SLEUTH_DEFENDER_SHAKE_AMOUNT   10

typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    Point2D unk_0C;
    BattleAnimScriptFuncCommon unk_10;
    SpriteShakeInfo unk_2C;
    ManagedSprite *unk_38;
    BattleAnimSpriteInfo unk_3C[4];
    XYTransformContext unk_8C[2];
    ValueLerpContext unk_D4;
} UnkStruct_ov12_0222CBFC;

// -------------------------------------------------------------------
// Surf
// -------------------------------------------------------------------
typedef struct SurfContext {
    int state;
    int holdTimer;
    int unused0;
    u8 alphaStart;
    u8 alphaBg;
    u8 alphaEnd;
    u8 alphaReset;
    u8 alphaTargetStart;
    u8 alphaTargetBg;
    s16 dir;
    Point2D spritePos;
    BattleAnimScriptFuncCommon common;
    SpriteShakeInfo unused1;
    ManagedSprite *currentSprite;
    ManagedSprite *sprites[2];
    BattleAnimSpriteInfo unused2[4];
    XYTransformContext scale;
    ValueLerpContext unused3;
} SurfContext;

enum SurfState {
    SURF_STATE_COMPRESS = 0,
    SURF_STATE_STRETCH,
    SURF_STATE_HOLD,
    SURF_STATE_RESTORE,
};

#define SURF_CONTEST_X             (255 - 76)
#define SURF_CONTEST_Y             120
#define SURF_PLAYER_SIDE_X         76
#define SURF_PLAYER_SIDE_Y         120
#define SURF_ENEMY_SIDE_X          144
#define SURF_ENEMY_SIDE_Y          64
#define SURF_SCALE_INITIAL         100
#define SURF_SCALE_COMPRESSED      60
#define SURF_SCALE_STRETCHED       150
#define SURF_SCALE_FRAMES_INITIAL  5
#define SURF_SCALE_FRAMES_STRETCH  150
#define SURF_SCALE_FRAMES_COMPRESS 10
#define SURF_SCALE_FRAMES_GROW     12
#define SURF_HOLD_FRAMES           4
#define SURF_ALPHA_TRANSPARENT     0
#define SURF_ALPHA_OPAQUE          31
#define SURF_ALPHA_TARGET          4
#define SURF_SPRITE_HEIGHT         16

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

                ScaleLerpContext_GetAffineScale(&v1->unk_20, &v4, &v5);
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

    v1 = Heap_Alloc(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_0222AC70));

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
        Point2D v3;
        int v4 = BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetDefender(param0));

        if (v4 == 0x3) {
            BattleAnimUtil_GetBattlerTypeDefaultPos(0, BattleAnimSystem_IsContest(param0), &v3);
        } else {
            BattleAnimUtil_GetBattlerTypeDefaultPos(1, BattleAnimSystem_IsContest(param0), &v3);
        }

        for (v0 = 1; v0 < BattleAnimSystem_GetScriptVar(v1->unk_08, 0); v0++) {
            v1->unk_14[v0] = SpriteSystem_NewSprite(v1->unk_0C, v1->unk_10, &v2);
            ManagedSprite_SetPositionXY(v1->unk_14[v0], v3.x, v3.y);
        }

        ManagedSprite_SetPositionXY(v1->unk_14[0], v3.x, v3.y);
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
    StrengthContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(StrengthContext));

    ctx->blinkCounter = 0;
    ctx->state = STRENGTH_STATE_SHRINK;
    ctx->battleAnimSys = system;
    ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->baseY = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);
    ctx->spriteHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

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
    BulkUpContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(BulkUpContext));

    ctx->state = BULK_UP_STATE_SQUISH_Y;
    ctx->battleAnimSys = system;
    ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->baseY = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);
    ctx->spriteHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

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
    DoubleTeamContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(DoubleTeamContext));

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
    ctx->attackerHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

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
    ctx->attackerHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

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
            sSplashScaleTable[ctx->iteration][SPLASH_TABLE_SCALE_SX],
            sSplashScaleTable[ctx->iteration][SPLASH_TABLE_SCALE_EX],
            sSplashScaleTable[ctx->iteration][SPLASH_TABLE_SCALE_SY],
            sSplashScaleTable[ctx->iteration][SPLASH_TABLE_SCALE_EY],
            100,
            sSplashScaleTable[ctx->iteration][SPLASH_TABLE_SCALE_FRAMES]);

        PosLerpContext_Init(
            &ctx->pos,
            0,
            0,
            ctx->attackerY + sSplashPosTable[ctx->iteration][SPLASH_TABLE_POS_SY],
            ctx->attackerY + sSplashPosTable[ctx->iteration][SPLASH_TABLE_POS_EY],
            sSplashPosTable[ctx->iteration][SPLASH_TABLE_POS_FRAMES]);

        ctx->iteration++;
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
            if (ctx->iteration >= NELEMS(sSplashScaleTable)) {
                ctx->cycles++;
                ctx->iteration = 0;

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
    ctx->iteration = 0;
    ctx->battleAnimSys = system;
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->attackerHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Splash, ctx);
}

static void BattleAnimTask_Harden(SysTask *task, void *param)
{
    HardenContext *ctx = param;

    switch (ctx->state) {
    case HARDEN_STATE_WAIT:
        if (++ctx->timer >= HARDEN_START_DELAY) {
            ctx->timer = 0;
            ctx->state++;
        }
        break;
    case HARDEN_STATE_ENABLE_SPRITES:
        ManagedSprite_SetDrawFlag(ctx->attackerSprite1, TRUE);
        ManagedSprite_SetDrawFlag(ctx->attackerSprite2, TRUE);
        ManagedSprite_SetExplicitOamMode(ctx->attackerSprite2, GX_OAM_MODE_OBJWND);
        ctx->state++;
        break;
    case HARDEN_STATE_WAIT_DRAW:
        if (++ctx->timer >= HARDEN_START_DELAY) {
            G2_SetWndOutsidePlane(BATTLE_BG_WNDMASK_ALL | GX_WND_PLANEMASK_OBJ, FALSE);
            G2_SetWndOBJInsidePlane(BATTLE_BG_WNDMASK_ALL | GX_WND_PLANEMASK_OBJ, FALSE);
            ManagedSprite_SetDrawFlag(ctx->attackerSprite1, FALSE);
            ManagedSprite_SetDrawFlag(ctx->attackerSprite2, FALSE);
            ctx->timer = 0;
            ctx->state++;
        }
        break;
    default:
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    ManagedSprite_TickFrame(ctx->attackerSprite1);
    ManagedSprite_TickFrame(ctx->attackerSprite2);
    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}

void BattleAnimScriptFunc_Harden(BattleAnimSystem *system)
{
    HardenContext *ctx = BattleAnimUtil_Alloc(system, sizeof(HardenContext));

    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);
    ctx->attackerSprite1 = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);
    ctx->attackerSprite2 = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_1);

    GX_SetVisibleWnd(GX_WNDMASK_OW);
    G2_SetWndOutsidePlane(BATTLE_BG_WNDMASK_ALL | GX_WND_PLANEMASK_OBJ, FALSE);
    G2_SetWndOBJInsidePlane(BATTLE_BG_WNDMASK_WINDOW | GX_WND_PLANEMASK_OBJ, FALSE);

    int paletteIndex = BattleAnimSystem_GetBattlerSpritePaletteIndex(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    int narcID = BattleAnimSystem_GetBattlerSpriteNarcID(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    int palOffset = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(ctx->attackerSprite1->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
    PaletteData_LoadBufferFromFileStartWithTint(
        BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
        narcID,
        paletteIndex,
        BattleAnimSystem_GetHeapID(system),
        PLTTBUF_MAIN_OBJ,
        PALETTE_SIZE_BYTES,
        PLTT_DEST(palOffset),
        HARDEN_TINT_R,
        HARDEN_TINT_G,
        HARDEN_TINT_B);

    ManagedSprite_SetDrawFlag(ctx->attackerSprite1, FALSE);
    ManagedSprite_SetDrawFlag(ctx->attackerSprite2, FALSE);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Harden, ctx);
}

static const u8 sMinimizeSpriteDelays[] = {
    2, 7, 13, 18
};

static void BattleAnimTask_Minimize(SysTask *task, void *param)
{
    int i;
    int done;
    MinimizeContext *ctx = param;

    switch (ctx->state) {
    case MINIMIZE_STATE_INIT:
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_PARTIAL_DRAW, TRUE);
        ctx->state++;
        break;
    case MINIMIZE_STATE_SHRINK:
        done = 0;

        for (i = 0; i < MINIMIZE_SPRITE_COUNT; i++) {
            switch (ctx->sprites[i].state) {
            case MINIMIZE_SPRITE_STATE_INIT:
                if (++ctx->sprites[i].frameCounter >= sMinimizeSpriteDelays[i]) {
                    ScaleLerpContext_InitXY(
                        &ctx->sprites[i].scale,
                        BASE_SCALE_XY,
                        MINIMIZE_SHRINK_SCALE_X,
                        BASE_SCALE_XY,
                        MINIMIZE_SHRINK_SCALE_Y,
                        BASE_SCALE_XY,
                        MINIMIZE_SHRINK_FRAMES);
                    ctx->sprites[i].state++;
                }
                break;
            case MINIMIZE_SPRITE_STATE_SHRINK:
                if (ScaleLerpContext_UpdateXY(&ctx->sprites[i].scale) == FALSE) {
                    ctx->sprites[i].state++;
                } else {
                    f32 scaleX, scaleY;
                    ScaleLerpContext_GetAffineScale(&ctx->sprites[i].scale, &scaleX, &scaleY);

                    ManagedSprite_SetAffineScale(ctx->sprites[i].sprite, scaleX * ctx->spriteDir, scaleY);
                    BattleAnimUtil_SetSpriteAnchoredPosition(
                        ctx->sprites[i].sprite,
                        ctx->attackerY,
                        ctx->attackerSpriteHeight,
                        ctx->sprites[i].scale.data[XY_PARAM_CUR_Y],
                        BATTLE_ANIM_ANCHOR_BOTTOM);
                }
                break;
            default:
                done++;
                break;
            }

            ManagedSprite_TickFrame(ctx->sprites[i].sprite);
        }

        if (done >= MINIMIZE_SPRITE_COUNT) {
            ctx->cycles++;

            if (ctx->cycles < MINIMIZE_SHRINK_CYCLES) {
                for (i = 0; i < MINIMIZE_SPRITE_COUNT; i++) {
                    s16 x, y;
                    ManagedSprite_GetPositionXY(ctx->sprites[i].sprite, &x, &y);
                    ManagedSprite_SetPositionXY(ctx->sprites[i].sprite, x, ctx->attackerY);
                    ManagedSprite_SetAffineScale(ctx->sprites[i].sprite, 1.0f * ctx->spriteDir, 1.0f);

                    ctx->sprites[i].state = MINIMIZE_SPRITE_STATE_INIT;
                    ctx->sprites[i].frameCounter = 0;
                }

                ctx->state--;
            } else {
                ctx->state++;
            }
        }
        break;
    case MINIMIZE_STATE_SETUP_GROW:
        for (i = 0; i < MINIMIZE_SPRITE_COUNT; i++) {
            ManagedSprite_SetExplicitOamMode(ctx->sprites[i].sprite, GX_OAM_MODE_NORMAL);
            ScaleLerpContext_InitXY(
                &ctx->sprites[i].scale,
                MINIMIZE_SHRINK_SCALE_X,
                BASE_SCALE_XY,
                MINIMIZE_SHRINK_SCALE_Y,
                BASE_SCALE_XY,
                BASE_SCALE_XY,
                MINIMIZE_SHRINK_FRAMES);
        }

        ctx->state++;
        break;
    case MINIMIZE_STATE_GROW:
        done = 0;

        for (i = 0; i < MINIMIZE_SPRITE_COUNT; i++) {
            if (ScaleLerpContext_UpdateXY(&ctx->sprites[i].scale) == FALSE) {
                done++;
            } else {
                f32 scaleX, scaleY;
                ScaleLerpContext_GetAffineScale(&ctx->sprites[i].scale, &scaleX, &scaleY);
                ManagedSprite_SetAffineScale(ctx->sprites[i].sprite, scaleX * ctx->spriteDir, scaleY);

                BattleAnimUtil_SetSpriteAnchoredPosition(
                    ctx->sprites[i].sprite,
                    ctx->attackerY,
                    ctx->attackerSpriteHeight,
                    ctx->sprites[i].scale.data[XY_PARAM_CUR_Y],
                    BATTLE_ANIM_ANCHOR_BOTTOM);
            }
        }

        if (done >= MINIMIZE_SPRITE_COUNT) {
            ctx->state++;
        }
        break;
    default:
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_PARTIAL_DRAW, 0);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}

void BattleAnimScriptFunc_Minimize(BattleAnimSystem *system)
{
    MinimizeContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MinimizeContext));

    ctx->state = MINIMIZE_STATE_INIT;
    ctx->cycles = 0;
    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->attackerY -= PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_SHADOW_HEIGHT);
    ctx->attackerSpriteHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, BATTLE_ANIM_DEFAULT_ALPHA, BATTLE_ANIM_DEFAULT_ALPHA);
    G2_ChangeBlendAlpha(MINIMIZE_SPRITE_ALPHA, MINIMIZE_BG_ALPHA);

    for (int i = 0; i < MINIMIZE_SPRITE_COUNT; i++) {
        ctx->sprites[i].state = MINIMIZE_SPRITE_STATE_INIT;
        ctx->sprites[i].frameCounter = 0;
        ctx->sprites[i].sprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, i);

        ManagedSprite_SetAffineOverwriteMode(ctx->sprites[i].sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetExplicitOamMode(ctx->sprites[i].sprite, GX_OAM_MODE_XLU);
        ManagedSprite_SetPriority(ctx->sprites[i].sprite, i + 1);
    }

    if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(system, BATTLER_ROLE_ATTACKER) == TRUE) {
        ctx->spriteDir = -1;
    } else {
        ctx->spriteDir = +1;
    }

    for (int i = 0; i < MINIMIZE_SPRITE_COUNT; i++) {
        ManagedSprite_SetAffineScale(ctx->sprites[i].sprite, 1.0f * ctx->spriteDir, 1.0f);
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Minimize, ctx);
}

static const s16 sEarthquakeShakeExtents[] = {
    12, 10, 8, 6, 4, 2, 1, 0
};

static void BattleAnimTask_Earthquake(SysTask *task, void *param)
{
    EarthquakeContext *ctx = param;

    switch (ctx->state) {
    case EARTHQUAKE_STATE_INIT:
        PaletteData_StartFade(
            BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
            PLTTBUF_MAIN_BG_F,
            BattleAnimSystem_GetBaseBgPalettes(ctx->battleAnimSys),
            EARTHQUAKE_BG_FADE_DELAY,
            0,
            EARTHQUAKE_BG_FADE_ALPHA,
            EARTHQUAKE_BG_FADE_COLOR);
        ctx->state++;
        break;
    case EARTHQUAKE_STATE_FADE_BG:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(ctx->battleAnimSys)) != 0) {
            break;
        }

        ctx->state++;
    case EARTHQUAKE_STATE_FLASH:
        ShakeContext_Init(
            &ctx->shake,
            sEarthquakeShakeExtents[ctx->shakeCount],
            EARTHQUAKE_SPRITE_SHAKE_EXTENT_Y,
            EARTHQUAKE_SPRITE_SHAKE_INTERVAL,
            EARTHQUAKE_SPRITE_SHAKE_AMOUNT);

        if (ctx->flashFlag == 0) {
            PaletteData_BlendMulti(
                BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
                PLTTBUF_MAIN_BG,
                EARTHQUAKE_BG_FLASH_PALETTES,
                EARTHQUAKE_BG_FLASH_ALPHA,
                EARTHQUAKE_BG_FLASH_0_COLOR);
        } else {
            PaletteData_BlendMulti(
                BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
                PLTTBUF_MAIN_BG,
                EARTHQUAKE_BG_FLASH_PALETTES,
                EARTHQUAKE_BG_FLASH_ALPHA,
                EARTHQUAKE_BG_FLASH_1_COLOR);
        }

        ctx->flashDuration = EARTHQUAKE_BG_FLASH_FRAMES;
        ctx->flashFlag ^= 1;
        ctx->shakeCount++;
        ctx->state++;
    case EARTHQUAKE_STATE_SHAKE:
        if (ShakeContext_Update(&ctx->shake) == FALSE) {
            if (ctx->shakeCount >= NELEMS(sEarthquakeShakeExtents)) {
                ctx->state++;
            } else {
                ctx->state--;
            }
        }

        if (ctx->flashDuration > 0) {
            ctx->flashDuration--;

            if (ctx->flashDuration == 0) {
                PaletteData_BlendMulti(
                    BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
                    PLTTBUF_MAIN_BG,
                    EARTHQUAKE_BG_FLASH_PALETTES,
                    EARTHQUAKE_BG_FLASH_OFF_ALPHA,
                    EARTHQUAKE_BG_FLASH_OFF_COLOR);
            }
        }

        for (int i = 0; i < MAX_BATTLERS; i++) {
            if (ctx->sprites[i].monSprite == NULL) {
                continue;
            }

            PokemonSprite_SetAttribute(ctx->sprites[i].monSprite, MON_SPRITE_X_CENTER, ctx->sprites[i].basePos.x + ctx->shake.x);
        }

        Bg_SetOffset(ctx->bgConfig, BATTLE_BG_EFFECT, 0, ctx->shake.x);
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Earthquake(BattleAnimSystem *system)
{
    EarthquakeContext *ctx = BattleAnimUtil_Alloc(system, sizeof(EarthquakeContext));

    ctx->state = EARTHQUAKE_STATE_INIT;
    ctx->shakeCount = 0;
    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);
    ctx->bgConfig = BattleAnimSystem_GetBgConfig(ctx->battleAnimSys);

    int sprites = BattleAnimSystem_IsDoubleBattle(ctx->battleAnimSys) == TRUE
        ? BATTLE_ANIM_ALL_BATTLERS
        : (BATTLE_ANIM_ATTACKER | BATTLE_ANIM_DEFENDER);
    BattleAnimUtil_GetBattlerSprites(system, sprites, &ctx->sprites[0], &ctx->spriteCount);

    for (int i = 0; i < ctx->spriteCount; i++) {
        ctx->sprites[i].basePos.x = PokemonSprite_GetAttribute(ctx->sprites[i].monSprite, MON_SPRITE_X_CENTER);
        ctx->sprites[i].basePos.y = PokemonSprite_GetAttribute(ctx->sprites[i].monSprite, MON_SPRITE_Y_CENTER);
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Earthquake, ctx);
}

static void BattleAnimTask_Nightmare(SysTask *task, void *param)
{
    NightmareContext *ctx = param;

    switch (ctx->state) {
    case 0:
        if (PosLerpContext_Update(&ctx->pos) == FALSE) {
            ctx->state++;
        }

        // Doesn't do anything
        ShakeContext_Update(&ctx->shake);
        AlphaFadeContext_IsDone(&ctx->alpha);

        ManagedSprite_SetPositionXY(ctx->xluSprite, ctx->pos.x, ctx->pos.y);
        ManagedSprite_TickFrame(ctx->xluSprite);
        SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->system, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Nightmare(BattleAnimSystem *system)
{
    NightmareContext *ctx = BattleAnimUtil_Alloc(system, sizeof(NightmareContext));

    ctx->state = 0;
    ctx->unused = 0;
    ctx->system = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->system);
    ctx->bgConfig = BattleAnimSystem_GetBgConfig(ctx->system);
    ctx->xluSprite = BattleAnimSystem_GetPokemonSprite(ctx->system, BATTLE_ANIM_MON_SPRITE_0);

    int battler;
    if (BattleAnimSystem_GetScriptVar(system, NIGHTMARE_VAR_MOVE_ATTACKER) == FALSE) {
        battler = BattleAnimSystem_GetDefender(ctx->system);
    } else {
        battler = BattleAnimSystem_GetAttacker(ctx->system);
    }

    ctx->monSprite = BattleAnimSystem_GetBattlerSprite(ctx->system, battler);
    BattleAnimUtil_GetMonSpritePos(ctx->monSprite, &ctx->monPos);
    ctx->monPos.y -= PokemonSprite_GetAttribute(ctx->monSprite, MON_SPRITE_SHADOW_HEIGHT);

    int dirX = BattleAnimUtil_GetTransformDirectionX(ctx->system, battler);
    int dirY = BattleAnimUtil_GetTransformDirectionY(ctx->system, battler);

    PosLerpContext_Init(
        &ctx->pos,
        ctx->monPos.x,
        ctx->monPos.x + NIGHTMARE_SPRITE_OFFSET_X * dirX,
        ctx->monPos.y,
        ctx->monPos.y + NIGHTMARE_SPRITE_OFFSET_Y * dirY,
        NIGHTMARE_SPRITE_OFFSET_FRAMES);

    BattleAnimUtil_SetSpriteBlending(
        ctx->system,
        (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_EFFECT)) | GX_BLEND_PLANEMASK_BD | (1 << BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_BASE)) | GX_WND_PLANEMASK_BG0,
        BATTLE_ANIM_DEFAULT_ALPHA,
        BATTLE_ANIM_DEFAULT_ALPHA);

    AlphaFadeContext_Init(
        &ctx->alpha,
        NIGHTMARE_SPRITE_START_ALPHA,
        NIGHTMARE_SPRITE_END_ALPHA,
        NIGHTMARE_BG_START_ALPHA,
        NIGHTMARE_BG_END_ALPHA,
        NIGHTMARE_SPRITE_ALPHA_FRAMES);

    ManagedSprite_SetExplicitOamMode(ctx->xluSprite, GX_OAM_MODE_XLU);
    BattleAnimSystem_StartAnimTask(ctx->system, BattleAnimTask_Nightmare, ctx);
}

enum {
    FLAIL_ANGLE_TABLE_ANGLE = 0,
    FLAIL_ANGLE_TABLE_FRAMES,
};

static const int sFlailAngles[][2] = {
    { DEG_TO_IDX(20), 3 },
    { DEG_TO_IDX(15), 3 },
    { DEG_TO_IDX(10), 2 },
    { DEG_TO_IDX(5), 2 },
    { DEG_TO_IDX(0), 1 }
};

static void BattleAnimTask_FlailAttackerMode(SysTask *task, void *param)
{
    FlailContext *ctx = param;

    switch (ctx->common.state) {
    case FLAIL_MODE_ATTACKER_STATE_SETUP_ROTATION: {
        int startAngle;
        int endAngle;

        if (ctx->common.counter1 == 0) {
            startAngle = -sFlailAngles[ctx->common.counter2][FLAIL_ANGLE_TABLE_ANGLE];
            endAngle = +sFlailAngles[ctx->common.counter2][FLAIL_ANGLE_TABLE_ANGLE];
        } else {
            startAngle = +sFlailAngles[ctx->common.counter2][FLAIL_ANGLE_TABLE_ANGLE];
            endAngle = -sFlailAngles[ctx->common.counter2][FLAIL_ANGLE_TABLE_ANGLE];
        }

        ValueLerpContext_Init(
            &ctx->angle,
            startAngle,
            endAngle,
            sFlailAngles[ctx->common.counter2][FLAIL_ANGLE_TABLE_FRAMES]);

        if (ctx->common.counter1 == 1) {
            ctx->common.counter2++;
        }

        ctx->common.counter1 ^= 1;
        ctx->common.state++;
    }
    case FLAIL_MODE_ATTACKER_STATE_ROTATE:
        if (ValueLerpContext_Update(&ctx->angle) == TRUE) {
            PokemonSprite_SetAttribute(
                ctx->battlerSprites[BATTLER_ROLE_ATTACKER],
                MON_SPRITE_ROTATION_Z,
                (u16)ctx->angle.value);
        } else {
            if (ctx->common.counter2 >= FLAIL_WIGGLES) {
                ctx->common.state++;
            } else {
                ctx->common.state--;
            }
        }
        break;
    default:
        PokemonSprite_SetAttribute(ctx->battlerSprites[BATTLER_ROLE_ATTACKER], MON_SPRITE_ROTATION_Z, 0);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

static void BattleAnimTask_FlailDefenderMode(SysTask *task, void *param)
{
    FlailContext *ctx = param;

    switch (ctx->common.state) {
    case FLAIL_MODE_DEFENDER_STATE_SETUP_SHAKE:
        ShakeContext_Init(
            &ctx->shake,
            ctx->shakeInfo.extentX,
            ctx->shakeInfo.extentY,
            ctx->shakeInfo.interval,
            ctx->shakeInfo.amount);
        ctx->common.state++;
        break;
    case FLAIL_MODE_DEFENDER_STATE_SHAKE: {
        Point2D pos;
        BattleAnimUtil_GetMonSpritePos(ctx->battlerSprites[BATTLER_ROLE_DEFENDER], &pos);

        if (ShakeContext_UpdateAndApplyToMon(&ctx->shake, pos.x, pos.y, ctx->battlerSprites[BATTLER_ROLE_DEFENDER]) == FALSE) {
            ctx->common.state++;
        }
    } break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Flail(BattleAnimSystem *system)
{
    FlailContext *ctx = BattleAnimUtil_Alloc(system, sizeof(FlailContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->battlerSprites[BATTLER_ROLE_ATTACKER] = BattleAnimSystem_GetBattlerSprite(
        ctx->common.battleAnimSys,
        BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys));
    ctx->battlerSprites[BATTLER_ROLE_DEFENDER] = BattleAnimSystem_GetBattlerSprite(
        ctx->common.battleAnimSys,
        BattleAnimSystem_GetDefender(ctx->common.battleAnimSys));

    PokemonSprite_SetAttribute(ctx->battlerSprites[BATTLER_ROLE_ATTACKER], MON_SPRITE_Y_PIVOT, FLAIL_WIGGLE_PIVOT_Y);

    int mode = BattleAnimSystem_GetScriptVar(system, FLAIL_VAR_MODE);

    ctx->shakeInfo.extentX = BattleAnimSystem_GetScriptVar(system, FLAIL_VAR_SHAKE_EXTENT_X);
    ctx->shakeInfo.extentY = BattleAnimSystem_GetScriptVar(system, FLAIL_VAR_SHAKE_EXTENT_Y);
    ctx->shakeInfo.interval = BattleAnimSystem_GetScriptVar(system, FLAIL_VAR_SHAKE_INTERVAL);
    ctx->shakeInfo.amount = BattleAnimSystem_GetScriptVar(system, FLAIL_VAR_SHAKE_AMOUNT);
    ctx->shakeInfo.targets = BattleAnimSystem_GetScriptVar(system, 5);

    if (mode == FLAIL_MODE_ATTACKER) {
        BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_FlailAttackerMode, ctx);
    } else {
        BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_FlailDefenderMode, ctx);
    }
}

static void BattleAnimTask_Magnitude(SysTask *task, void *param1)
{
    MagnitudeContext *ctx = param1;

    switch (ctx->common.state) {
    case MAGNITUDE_STATE_INIT:
        ShakeContext_Init(
            &ctx->shake,
            MAGNITUDE_SHAKE_BASE_EXTENT + ctx->power,
            ctx->power,
            MAGNITUDE_SHAKE_INTERVAL,
            MAGNITUDE_SHAKE_AMOUNT);
        ctx->common.state++;
        break;
    case MAGNITUDE_STATE_SHAKE:
        if (ShakeContext_Update(&ctx->shake) == FALSE) {
            ctx->common.state++;
        } else {
            for (int battler = 0; battler < MAX_BATTLERS; battler++) {
                if (ctx->battlerSprites[battler] == NULL) {
                    continue;
                }

                PokemonSprite_SetAttribute(
                    ctx->battlerSprites[battler],
                    MON_SPRITE_X_CENTER,
                    ctx->battlerPositions[battler].x + ctx->shake.x);
            }

            Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_EFFECT, BG_OFFSET_UPDATE_SET_X, ctx->shake.x);
            Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_EFFECT, BG_OFFSET_UPDATE_SET_Y, ctx->shake.y);
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Magnitude(BattleAnimSystem *system)
{
    MagnitudeContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MagnitudeContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    int power = BattleAnimSystem_GetMoveInfo(ctx->common.battleAnimSys, BATTLE_ANIM_MOVE_INFO_POWER);
    switch (power) {
    case 150:
        ctx->power = MAGNITUDE_POWER150_SHAKE_EXTENT;
        break;
    case 110:
        ctx->power = MAGNITUDE_POWER110_SHAKE_EXTENT;
        break;
    case 90:
        ctx->power = MAGNITUDE_POWER90_SHAKE_EXTENT;
        break;
    case 70:
        ctx->power = MAGNITUDE_POWER70_SHAKE_EXTENT;
        break;
    case 50:
        ctx->power = MAGNITUDE_POWER50_SHAKE_EXTENT;
        break;
    case 30:
        ctx->power = MAGNITUDE_POWER30_SHAKE_EXTENT;
        break;
    default:
        ctx->power = MAGNITUDE_DEFAULT_SHAKE_EXTENT;
        break;
    }

    for (int battler = 0; battler < MAX_BATTLERS; battler++) {
        ctx->battlerSprites[battler] = BattleAnimSystem_GetBattlerSprite(ctx->common.battleAnimSys, battler);
        if (ctx->battlerSprites[battler] == NULL) {
            continue;
        }

        BattleAnimUtil_GetMonSpritePos(ctx->battlerSprites[battler], &ctx->battlerPositions[battler]);
    }

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_Magnitude, ctx);
}

static void BattleAnimTask_OdorSleuth(SysTask *task, void *param)
{
    OdorSleuthContext *ctx = param;

    switch (ctx->common.state) {
    case 0:
        ShakeContext_Init(
            &ctx->shake[BATTLER_ROLE_ATTACKER],
            ODOR_SLEUTH_ATTACKER_SHAKE_EXTENT_X,
            ODOR_SLEUTH_ATTACKER_SHAKE_EXTENT_Y,
            ODOR_SLEUTH_ATTACKER_SHAKE_INTERVAL,
            ODOR_SLEUTH_ATTACKER_SHAKE_AMOUNT);
        ShakeContext_Init(
            &ctx->shake[BATTLER_ROLE_DEFENDER],
            ODOR_SLEUTH_DEFENDER_SHAKE_EXTENT_X,
            ODOR_SLEUTH_DEFENDER_SHAKE_EXTENT_Y,
            ODOR_SLEUTH_DEFENDER_SHAKE_INTERVAL,
            ODOR_SLEUTH_DEFENDER_SHAKE_AMOUNT);
        ctx->common.state++;
        break;
    case 1:
        if (ShakeContext_Update(&ctx->shake[BATTLER_ROLE_ATTACKER]) == FALSE) {
            ctx->common.state++;
        } else {
            ManagedSprite_SetPositionXY(
                ctx->monSprites[BATTLER_ROLE_ATTACKER],
                +ctx->spritePositions[BATTLER_ROLE_DEFENDER].x + ctx->shake[BATTLER_ROLE_ATTACKER].x,
                ctx->spritePositions[BATTLER_ROLE_DEFENDER].y + ctx->shake[BATTLER_ROLE_ATTACKER].y);
            ManagedSprite_SetPositionXY(
                ctx->monSprites[BATTLER_ROLE_DEFENDER],
                -ctx->spritePositions[BATTLER_ROLE_DEFENDER].x + ctx->shake[BATTLER_ROLE_ATTACKER].x,
                ctx->spritePositions[BATTLER_ROLE_DEFENDER].y + ctx->shake[BATTLER_ROLE_ATTACKER].y);

            ManagedSprite_TickFrame(ctx->monSprites[BATTLER_ROLE_ATTACKER]);
            ManagedSprite_TickFrame(ctx->monSprites[BATTLER_ROLE_DEFENDER]);
        }

        SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_OdorSleuth(BattleAnimSystem *system)
{
    OdorSleuthContext *ctx = BattleAnimUtil_Alloc(system, sizeof(OdorSleuthContext));

    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->monSprites[BATTLER_ROLE_ATTACKER] = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);
    ctx->monSprites[BATTLER_ROLE_DEFENDER] = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_1);
    ctx->battlerSprites[BATTLER_ROLE_ATTACKER] = BattleAnimSystem_GetBattlerSprite(ctx->common.battleAnimSys, BattleAnimSystem_GetAttacker(ctx->common.battleAnimSys));
    ctx->battlerSprites[BATTLER_ROLE_DEFENDER] = BattleAnimSystem_GetBattlerSprite(ctx->common.battleAnimSys, BattleAnimSystem_GetDefender(ctx->common.battleAnimSys));

    BattleAnimUtil_GetMonSpritePos(ctx->battlerSprites[BATTLER_ROLE_ATTACKER], &ctx->spritePositions[BATTLER_ROLE_ATTACKER]);
    BattleAnimUtil_GetMonSpritePos(ctx->battlerSprites[BATTLER_ROLE_DEFENDER], &ctx->spritePositions[BATTLER_ROLE_DEFENDER]);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_OdorSleuth, ctx);
}

static void ov12_0222CBFC(SysTask *param0, void *param1)
{
    int v0;
    UnkStruct_ov12_0222CBFC *v1 = (UnkStruct_ov12_0222CBFC *)param1;

    if (ov12_02225D2C(&v1->unk_8C[0], &v1->unk_8C[1], v1->unk_38) == 0) {
        Sprite_DeleteAndFreeResources(v1->unk_38);
        BattleAnimSystem_EndAnimTask(v1->unk_10.battleAnimSys, param0);
        BattleAnimUtil_Free(v1);
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
    BattleAnimSystem_GetCommonData(param0, &v2->unk_10);

    v2->unk_0C.x = BattleAnimSystem_GetScriptVar(param0, 0);
    v2->unk_0C.y = BattleAnimSystem_GetScriptVar(param0, 1);
    v2->unk_04 = BattleAnimSystem_GetScriptVar(param0, 2);
    v2->unk_08 = BattleAnimSystem_GetScriptVar(param0, 3);

    v1 = BattleAnimUtil_GetTransformDirectionX(param0, BattleAnimSystem_GetAttacker(param0));
    v2->unk_38 = param3;

    ManagedSprite_SetAffineOverwriteMode(v2->unk_38, AFFINE_OVERWRITE_MODE_DOUBLE);

    v2->unk_3C[0].monSprite = BattleAnimSystem_GetBattlerSprite(param0, BattleAnimSystem_GetAttacker(param0));
    v2->unk_3C[1].monSprite = BattleAnimSystem_GetBattlerSprite(param0, BattleAnimSystem_GetDefender(param0));

    BattleAnimUtil_GetMonSpritePos(v2->unk_3C[0].monSprite, &v2->unk_3C[0].pos);
    BattleAnimUtil_GetMonSpritePos(v2->unk_3C[1].monSprite, &v2->unk_3C[1].pos);
    XYTransformContext_InitParabolic(&v2->unk_8C[0], &v2->unk_8C[1], v2->unk_3C[0].pos.x, v2->unk_3C[1].pos.x + (v2->unk_0C.x * v1), v2->unk_3C[0].pos.y, v2->unk_3C[1].pos.y + (v2->unk_0C.y * v1), v2->unk_04, v2->unk_08 * FX32_ONE);

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
    BattleAnimSystem_StartAnimTask(v2->unk_10.battleAnimSys, ov12_0222CBFC, v2);
}

static void BattleAnimTask_Surf(SysTask *task, void *param)
{
    SurfContext *ctx = param;

    switch (ctx->common.state) {
    case SURF_STATE_COMPRESS:
        ScaleLerpContext_InitXY(
            &ctx->scale,
            SURF_SCALE_INITIAL * ctx->dir,
            SURF_SCALE_COMPRESSED * ctx->dir,
            SURF_SCALE_FRAMES_INITIAL,
            SURF_SCALE_STRETCHED,
            SURF_SCALE_INITIAL,
            SURF_SCALE_FRAMES_GROW);

        ctx->common.state++;
        break;
    case SURF_STATE_STRETCH:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == FALSE) {
            ScaleLerpContext_InitXY(&ctx->scale, SURF_SCALE_COMPRESSED * ctx->dir, SURF_SCALE_STRETCHED * ctx->dir, SURF_SCALE_FRAMES_STRETCH, SURF_SCALE_FRAMES_COMPRESS, SURF_SCALE_INITIAL, SURF_SCALE_FRAMES_GROW);
            ctx->common.state++;
        } else {
            f32 scaleX, scaleY;
            ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
            ManagedSprite_SetAffineScale(ctx->currentSprite, scaleX, scaleY);
            s16 offsetY = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->spritePos.y, SURF_SPRITE_HEIGHT, ctx->scale.data[4]);
            ManagedSprite_SetPositionXY(ctx->currentSprite, ctx->spritePos.x, ctx->spritePos.y + offsetY);

            if (ctx->alphaStart < ctx->alphaTargetStart) {
                ctx->alphaStart++;
            }

            if (ctx->alphaBg > ctx->alphaTargetBg) {
                ctx->alphaBg--;
            }

            G2_ChangeBlendAlpha(ctx->alphaStart, ctx->alphaBg);
        }
        break;
    case SURF_STATE_HOLD:
        if (++ctx->holdTimer >= SURF_HOLD_FRAMES) {
            ctx->common.state++;
        }
        break;
    case SURF_STATE_RESTORE:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == FALSE) {
            ctx->common.state++;
        } else {
            f32 scaleX, scaleY;
            ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
            ManagedSprite_SetAffineScale(ctx->currentSprite, scaleX, scaleY);
            s16 offsetY = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->spritePos.y, SURF_SPRITE_HEIGHT, ctx->scale.data[4]);
            ManagedSprite_SetPositionXY(ctx->currentSprite, ctx->spritePos.x, ctx->spritePos.y + offsetY);

            if (ctx->alphaStart > ctx->alphaEnd) {
                ctx->alphaStart--;
            }

            if (ctx->alphaBg < ctx->alphaReset) {
                ctx->alphaBg++;
            }

            G2_ChangeBlendAlpha(ctx->alphaStart, ctx->alphaBg);
        }
        break;
    default:
        Sprite_DeleteAndFreeResources(ctx->sprites[0]);
        Sprite_DeleteAndFreeResources(ctx->sprites[1]);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        BattleAnimUtil_Free(ctx);
        (ctx) = NULL;
        return;
    }

    ManagedSprite_TickFrame(ctx->currentSprite);
    SpriteSystem_DrawSprites(ctx->common.primarySpriteManager);
}

void BattleAnimScriptFunc_Surf(BattleAnimSystem *system)
{
    SurfContext *ctx = BattleAnimUtil_Alloc(system, sizeof(SurfContext));

    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->sprites[0] = BattleAnimSystem_GetSprite(system, 0);
    ctx->sprites[1] = BattleAnimSystem_GetSprite(system, 1);

    BattleAnimUtil_SetSpriteBgBlending(ctx->common.battleAnimSys, BATTLE_ANIM_DEFAULT_ALPHA, BATTLE_ANIM_DEFAULT_ALPHA);

    if (BattleAnimSystem_GetScriptVar(system, 0) == 0) {
        ctx->alphaStart = SURF_ALPHA_TRANSPARENT;
        ctx->alphaBg = SURF_ALPHA_OPAQUE;
        ctx->alphaEnd = SURF_ALPHA_TRANSPARENT;
        ctx->alphaReset = SURF_ALPHA_OPAQUE;
        ctx->alphaTargetStart = SURF_ALPHA_OPAQUE;
        ctx->alphaTargetBg = SURF_ALPHA_TARGET;
    } else {
        ctx->alphaStart = SURF_ALPHA_TRANSPARENT;
        ctx->alphaBg = SURF_ALPHA_OPAQUE;
        ctx->alphaEnd = SURF_ALPHA_TRANSPARENT;
        ctx->alphaReset = SURF_ALPHA_OPAQUE;
        ctx->alphaTargetStart = SURF_ALPHA_OPAQUE;
        ctx->alphaTargetBg = SURF_ALPHA_TARGET;
    }

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        ctx->currentSprite = ctx->sprites[0];
        ManagedSprite_SetDrawFlag(ctx->sprites[1], FALSE);
        ManagedSprite_SetAnim(ctx->currentSprite, 0);
        ctx->spritePos.x = SURF_CONTEST_X;
        ctx->spritePos.y = SURF_CONTEST_Y;
        ManagedSprite_SetExplicitPriority(
            ctx->currentSprite,
            BattleAnimSystem_GetPokemonSpritePriority(system) + 1);
        ctx->dir = -1;
    } else {
        if (BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetAttacker(system))
            == BTLSCR_ENEMY) {
            ctx->currentSprite = ctx->sprites[1];
            ManagedSprite_SetDrawFlag(ctx->sprites[0], FALSE);
            ManagedSprite_SetAnim(ctx->currentSprite, 1);
            ctx->spritePos.x = SURF_ENEMY_SIDE_X;
            ctx->spritePos.y = SURF_ENEMY_SIDE_Y;
        } else {
            ctx->currentSprite = ctx->sprites[0];
            ManagedSprite_SetDrawFlag(ctx->sprites[1], FALSE);
            ManagedSprite_SetAnim(ctx->currentSprite, 0);
            ctx->spritePos.x = SURF_PLAYER_SIDE_X;
            ctx->spritePos.y = SURF_PLAYER_SIDE_Y;
            ManagedSprite_SetExplicitPriority(
                ctx->currentSprite,
                BattleAnimSystem_GetPokemonSpritePriority(system) + 1);
        }

        ctx->dir = 1;
    }

    ManagedSprite_SetPositionXY(ctx->currentSprite, ctx->spritePos.x, ctx->spritePos.y);
    ManagedSprite_SetAffineOverwriteMode(ctx->currentSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitOamMode(ctx->currentSprite, GX_OAM_MODE_XLU);

    ScaleLerpContext_InitXY(
        &ctx->scale,
        SURF_SCALE_INITIAL * ctx->dir,
        SURF_SCALE_INITIAL * ctx->dir,
        SURF_SCALE_INITIAL,
        SURF_SCALE_FRAMES_INITIAL,
        SURF_SCALE_INITIAL,
        1);
    ScaleLerpContext_UpdateXY(&ctx->scale);

    f32 scaleX, scaleY;
    ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
    ManagedSprite_SetAffineScale(ctx->currentSprite, scaleX, scaleY);

    s16 offsetY = BattleAnimUtil_GetGroundAnchoredScaleOffset(
        ctx->spritePos.y,
        SURF_SPRITE_HEIGHT,
        ctx->scale.data[XY_PARAM_CUR_Y]);
    ManagedSprite_SetPositionXY(ctx->currentSprite, ctx->spritePos.x, ctx->spritePos.y + offsetY);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_Surf, ctx);
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

        XYTransformContext_InitParabolic(&v1->unk_30[0].unk_04[0], &v1->unk_30[0].unk_04[1], v11, v13, v12, v14, 10, v1->unk_2C * v15[v1->unk_0C][0]);
        XYTransformContext_InitParabolic(&v1->unk_30[1].unk_04[0], &v1->unk_30[1].unk_04[1], v13, v11, v14, v12, 10, v1->unk_2C * v15[v1->unk_0C][1]);
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
    v1->unk_24 = BattleAnimSystem_GetBattlerSpriteOffset(v1->unk_10, BattleAnimSystem_GetAttacker(v1->unk_10));

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
