#include "battle_anim/script_funcs_2.h"

#include "nitro/gx/g2.h"
#include "nitro/hw/common/lcd.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"
#include "pch/global_pch.h"

#include "battle_script_battlers.h"
#include "bg_window.h"
#include "brightness_controller.h"
#include "enums.h"
#include "heap.h"
#include "math_util.h"
#include "palette.h"
#include "pokemon_sprite.h"
#include "sprite.h"
#include "sprite_system.h"
#include "sys_task_manager.h"

// -------------------------------------------------------------------
// Quick Attack
// -------------------------------------------------------------------
#define QUICK_ATTACK_AFTERIMAGE_COUNT 2

typedef struct QuickAttackContext {
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    PokemonSprite *attackerSprite;
    XYTransformContext rev;
    ManagedSprite *afterimageSprites[QUICK_ATTACK_AFTERIMAGE_COUNT];
    AfterimageContext afterImageCtx;
    s16 attackerX;
    s16 attackerY;
    s16 attackerShadowHeight;
} QuickAttackContext;

#define QUICK_ATTACK_REVOLUTION_FRAMES            8
#define QUICK_ATTACK_AFTERIMAGE_REVOLUTION_FRAMES 10
#define QUICK_ATTACK_SPRITE_PRIORITY              100
#define QUICK_ATTACK_SPRITE_EXP_PRIORITY          1
#define QUICK_ATTACK_AFTERIMAGE_DELAY             2

// -------------------------------------------------------------------
// Drill Peck
// -------------------------------------------------------------------
typedef struct {
    BattleAnimSystem *battleAnimSys;
    int state;
    s16 delay;
    PokemonSprite *attackerSprite;
    XYTransformContext pos;
    ValueLerpContext angle;
    s16 attackerX;
    s16 attackerY;
} DrillPeckContext;

enum DrillPeckState {
    DRILL_PECK_STATE_MOVE_BWD = 0,
    DRILL_PECK_STATE_ROTATE_FWD,
    DRILL_PECK_STATE_DELAY_1,
    DRILL_PECK_STATE_MOVE_FWD,
    DRILL_PECK_STATE_DELAY_2,
    DRILL_PECK_STATE_ROTATE_BWD,
    DRILL_PECK_STATE_CLEANUP,
};

#define DRILL_PECK_MOVE_BWD_X              -32
#define DRILL_PECK_MOVE_BWD_Y              0
#define DRILL_PECK_MOVE_BWD_FRAMES         3
#define DRILL_PECK_ROTATION_FWD_ANGLE      DEG_TO_IDX(20)
#define DRILL_PECK_ROTATION_FWD_FRAMES     8
#define DRILL_PECK_ROTATION_BWD_FRAMES     4
#define DRILL_PECK_MOVE_FWD_FRAMES         2
#define DRILL_PECK_POST_ROTATION_FWD_DELAY 2
#define DRILL_PECK_POST_MOVE_FWD_DELAY     32

typedef struct {
    ManagedSprite *unk_00;
    XYTransformContext unk_04;
    ValueLerpContext unk_28;
    s16 unk_3C;
    s16 unk_3E;
    s16 unk_40;
    int unk_44;
    BOOL unk_48;
} UnkStruct_ov12_0222FAFC;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    UnkStruct_ov12_0222FAFC unk_0C;
    UnkStruct_ov12_0222FAFC unk_58[2];
    int unk_EC;
    int unk_F0;
    int unk_F4;
    int unk_F8;
} UnkStruct_ov12_0222FC44;

// -------------------------------------------------------------------
// Confusion
// -------------------------------------------------------------------
typedef struct ConfusionContext {
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    int state;
    int unused;
    XYTransformContext shake;
    XYTransformContext scale;
    ManagedSprite *monSprite;
    PokemonSprite *defenderSprite;
    s16 defenderX;
    s16 defenderY;
    s16 jitterDir;
    s16 defenderShadowHeight;
} ConfusionContext;

enum ConfusionState {
    CONFUSION_STATE_GROW = 0,
    CONFUSION_STATE_SHRINK,
    CONFUSION_STATE_CLEANUP,
};

#define CONFUSION_SHAKE_EXTENT_X      2
#define CONFUSION_SHAKE_EXTENT_Y      0
#define CONFUSION_SHAKE_INTERVAL      1
#define CONFUSION_SHAKE_CYCLES        6
#define CONFUSION_SPRITE_PRIORITY     100
#define CONFUSION_SPRITE_EXP_PRIORITY 1
#define CONFUSION_BASE_SCALE_X        10
#define CONFUSION_BASE_SCALE_Y        10
#define CONFUSION_SCALE_X             12
#define CONFUSION_SCALE_Y             15
#define CONFUSION_REFERENCE_SCALE     10
#define CONFUSION_SCALE_FRAMES        7
#define CONFUSION_SCALE_BACK_FRAMES   4
#define CONFUSION_BLEND_A             28
#define CONFUSION_BLEND_B             15
#define CONFUSION_SCALE_X_JITTER      0.1f

// -------------------------------------------------------------------
// Acid Armor
// -------------------------------------------------------------------
typedef struct AcidArmorContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    int delay;
    PokemonSprite *attackerSprite;
    s16 attackerX;
    s16 attackerY;
    s16 scrollStartY;
    s16 scrollEndY;
    BgScrollContext *bgScroll;
    XYTransformContext pos;
    AlphaFadeContext alphaFade;
} AcidArmorContext;

enum AcidArmorState {
    ACID_ARMOR_STATE_SCROLL = 0,
    ACID_ARMOR_STATE_FADE,
    ACID_ARMOR_STATE_WAIT,
    ACID_ARMOR_STATE_FADE_BACK,
    ACID_ARMOR_STATE_CLEANUP,
};

#define ACID_ARMOR_MOVE_X                 80
#define ACID_ARMOR_MOVE_Y                 40
#define ACID_ARMOR_MOVE_FRAMES            24
#define ACID_ARMOR_SCROLL_CORRECTION      8
#define ACID_ARMOR_SCROLL_ANGLE_INCREMENT DEG_TO_IDX(5)
#define ACID_ARMOR_SCROLL_AMPLITUDE       FX32_CONST(8)
#define ACID_ARMOR_SCROLL_SPEED           80
#define ACID_ARMOR_ALPHA_BASE_START       31
#define ACID_ARMOR_ALPHA_BASE_END         0
#define ACID_ARMOR_ALPHA_EFFECT_START     0
#define ACID_ARMOR_ALPHA_EFFECT_END       31
#define ACID_ARMOR_ALPHA_FADE_FRAMES      16
#define ACID_ARMOR_ALPHA_FADE_DELAY       8 // Delay before starting the second fade

// -------------------------------------------------------------------
// Night Shade (Attacker)
// -------------------------------------------------------------------
typedef struct NightShaderAttackerContext {
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    int state;
    int delay;
    ManagedSprite *xluSprite;
    XYTransformContext scale;
    ValueLerpContext alpha;
    BOOL isContest;
} NightShaderAttackerContext;

enum NightShadeAttackerState {
    NIGHT_SHADE_ATTACKER_STATE_FADE_IN = 0,
    NIGHT_SHADE_ATTACKER_STATE_DELAY,
    NIGHT_SHADE_ATTACKER_STATE_GROW,
    NIGHT_SHADE_ATTACKER_STATE_CLEANUP,
};

#define NIGHT_SHADE_ATTACKER_START_SCALE         14
#define NIGHT_SHADE_ATTACKER_END_SCALE           10
#define NIGHT_SHADE_ATTACKER_REF_SCALE           10
#define NIGHT_SHADE_ATTACKER_START_ALPHA         0
#define NIGHT_SHADE_ATTACKER_END_ALPHA           16
#define NIGHT_SHADE_ATTACKER_SCALE_FRAMES        8
#define NIGHT_SHADE_ATTACKER_ALPHA_FRAMES        8
#define NIGHT_SHADE_ATTACKER_SPRITE_PRIORITY     100
#define NIGHT_SHADE_ATTACKER_SPRITE_EXP_PRIORITY 1
#define NIGHT_SHADE_ATTACKER_SPRITE_MAX_ALPHA    31
#define NIGHT_SHADE_ATTACKER_SCALE_DELAY         32
#define NIGHT_SHADE_ATTACKER_START_SCALE_F       ((f32)NIGHT_SHADE_ATTACKER_START_SCALE / NIGHT_SHADE_ATTACKER_REF_SCALE)

// -------------------------------------------------------------------
// Night Shade (Defender)
// -------------------------------------------------------------------
typedef struct NightShadeDefenderContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    PokemonSprite *defenderSprite;
    ManagedSprite *managedSprite;
    BOOL animateManagedSprite;
    XYTransformContext shake;
    s16 defenderX;
    s16 defenderY;
    int defenderShadowHeight;
} NightShadeDefenderContext;

enum NightShadeDefenderState {
    NIGHT_SHADE_DEFENDER_STATE_FADE_OUT = 0,
    NIGHT_SHADE_DEFENDER_STATE_FADE_IN,
    NIGHT_SHADE_DEFENDER_STATE_CLEANUP,
};

#define NIGHT_SHADE_DEFENDER_SHAKE_EXTENT_X   4
#define NIGHT_SHADE_DEFENDER_SHAKE_EXTENT_Y   0
#define NIGHT_SHADE_DEFENDER_SHAKE_INTERVAL   1
#define NIGHT_SHADE_DEFENDER_SHAKE_CYCLES     4
#define NIGHT_SHADE_DEFENDER_FADE_START_ALPHA 0
#define NIGHT_SHADE_DEFENDER_FADE_END_ALPHA   16
#define NIGHT_SHADE_DEFENDER_FADE_COLOR       COLOR_BLACK
#define NIGHT_SHADE_DEFENDER_FADE_DELAY       0
#define NIGHT_SHADE_DEFENDER_FADE_PLTTBUF     PLTTBUF_MAIN_OBJ_F

// -------------------------------------------------------------------
// Spite
// -------------------------------------------------------------------
typedef struct SpiteContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    int subState;
    int unused;
    PokemonSprite *defenderSprite;
    BgScrollContext *bgScroll;
    PaletteData *paletteData;
    AlphaFadeContext alpha;
    int delay;
    ManagedSprite *monSprite;
} SpiteContext;

enum SpiteState {
    SPITE_STATE_INIT = 0,
    SPITE_STATE_SCROLL_AND_FADE,
    SPITE_STATE_CLEANUP,

    SPITE_SUB_STATE_FADE_IN = 0,
    SPITE_SUB_STATE_SCROLL,
    SPITE_SUB_STATE_FADE_OUT,
    SPITE_SUB_STATE_FINISH,
};

#define SPITE_XLU_SPRITE_START_ALPHA 0
#define SPITE_XLU_SPRITE_END_ALPHA   8
#define SPITE_BACKGROUND_START_ALPHA 16
#define SPITE_BACKGROUND_END_ALPHA   8
#define SPITE_ALPHA_FADE_FRAMES      24
#define SPITE_SCROLL_DURATION        32
#define SPITE_SCROLL_ANGLE_INCREMENT DEG_TO_IDX(5)
#define SPITE_SCROLL_AMPLITUDE       FX32_CONST(5)
#define SPITE_SCROLL_SPEED           100
#define SPITE_BLEND_PLTTBUF          PLTTBUF_MAIN_BG
#define SPITE_BLEND_PALETTE          8
#define SPITE_BLEND_FRACTION         8
#define SPITE_BLEND_COLOR            COLOR_BLACK

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    ManagedSprite *unk_10;
    XYTransformContext unk_14;
    ValueLerpContext unk_38;
    int unk_4C;
    int unk_50;
    int unk_54;
} UnkStruct_ov12_02230BE0;

typedef struct {
    ManagedSprite *unk_00;
    XYTransformContext unk_04;
    BOOL unk_28;
    int unk_2C;
    int unk_30;
    int unk_34;
} UnkStruct_ov12_02230E24;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    PokemonSprite *unk_18;
    s16 unk_1C;
    s16 unk_1E;
    XYTransformContext unk_20;
    UnkStruct_ov12_02230E24 unk_44[4];
    int unk_124;
} UnkStruct_ov12_02230F3C;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    s16 unk_14;
    s16 unk_16;
    XYTransformContext unk_18;
    s32 unk_3C;
    PokemonSprite *unk_40;
    s16 unk_44;
    s16 unk_46;
    ManagedSprite *unk_48;
    XYTransformContext unk_4C;
    XYTransformContext unk_70;
} UnkStruct_ov12_022310D4;

// -------------------------------------------------------------------
// Faint Attack
// -------------------------------------------------------------------
typedef struct FaintAttackContext {
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    int state;
    int delay;
    PokemonSprite *attackerSprite;
    ManagedSprite *sprite;
    s16 attackerX;
    s16 attackerY;
    XYTransformContext revs;
    AlphaFadeContext alpha;
    s16 attackerShadowHeight;
} FaintAttackContext;

enum FaintAttackState {
    FAINT_ATTACK_STATE_REVOLVE = 0,
    FAINT_ATTACK_STATE_WAIT,
    FAINT_ATTACK_STATE_FADE_IN,
    FAINT_ATTACK_STATE_CLEANUP,
};

#define FAINT_ATTACK_REVOLUTION_COUNT   2
#define FAINT_ATTACK_REVOLUTION_FRAMES  16
#define FAINT_ATTACK_SPRITE_START_ALPHA 16
#define FAINT_ATTACK_SPRITE_END_ALPHA   0
#define FAINT_ATTACK_ALPHA_FADE_FRAMES  32
#define FAINT_ATTACK_FADE_IN_DELAY      16

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    XYTransformContext unk_14;
    int unk_38;
    ManagedSprite *unk_3C;
    int unk_40;
    XYTransformContext unk_44;
    XYTransformContext unk_68;
    AlphaFadeContext unk_8C;
    s16 unk_B4;
    s16 unk_B6;
} UnkStruct_ov12_02231508;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    ManagedSprite *unk_14;
    XYTransformContext unk_18;
    AlphaFadeContext unk_3C;
    s16 unk_64;
    s16 unk_66;
    int unk_68;
    int unk_6C;
} UnkStruct_ov12_02231760;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    PokemonSprite *unk_14[4];
    ManagedSprite *unk_24;
    XYTransformContext unk_28;
    s16 unk_4C;
    s16 unk_4E;
    int unk_50;
    int unk_54;
    int unk_58;
} UnkStruct_ov12_022319AC;

// -------------------------------------------------------------------
// Playful Hops (Charm, Attract, Tickle, Captivate)
// -------------------------------------------------------------------
typedef struct PlayfulHopsContext {
    int state;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *battlerSprite;
    s16 battlerX;
    s16 battlerY;
    ValueLerpContext angle;
    XYTransformContext pos;
    int hopCount;
    int hopState;
    int hopDelay;
    int flipTilt;
} PlayfulHopsContext;

enum PlayfulHopsHopState {
    PLAYFUL_HOPS_HOP_STATE_TILT = 0,
    PLAYFUL_HOPS_HOP_STATE_MOVE_DOWN,
    PLAYFUL_HOPS_HOP_STATE_MOVE_UP,
    PLAYFUL_HOPS_HOP_STATE_DONE,
};

enum PlayfulHopsState {
    PLAYFUL_HOPS_STATE_DO_HOPS = 0,
    PLAYFUL_HOPS_STATE_CLEANUP,
};

#define PLAYFUL_HOPS_SPRITE_X_PIVOT     16
#define PLAYFUL_HOPS_SPRITE_Y_PIVOT     50
#define PLAYFUL_HOPS_TILT_ANGLE         DEG_TO_IDX(15)
#define PLAYFUL_HOPS_TILT_FRAMES        3
#define PLAYFUL_HOPS_HOP_Y_OFFSET       2
#define PLAYFUL_HOPS_HOP_FRAMES         2
#define PLAYFUL_HOPS_HOP_DELAY          0
#define PLAYFUL_HOPS_HOP_COUNT          4
#define PLAYFUL_HOPS_VAR_TARGET_BATTLER 0

// -------------------------------------------------------------------
// Swagger
// -------------------------------------------------------------------
typedef struct SwaggerContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    int delay;
    PokemonSprite *sprite;
    XYTransformContext scale;
    int scaleDelay;
    int subState;
    int baseY;
    int spriteHeight;
} SwaggerContext;

enum SwaggerState {
    SWAGGER_STATE_SCALE = 0,
    SWAGGER_STATE_WAIT,
    SWAGGER_STATE_CLEANUP,

    SWAGGER_SUB_STATE_GROW = 0,
    SWAGGER_SUB_STATE_WAIT,
    SWAGGER_SUB_STATE_SHRINK,
    SWAGGER_SUB_STATE_FINISH,
};

#define SWAGGER_START_SCALE  10
#define SWAGGER_END_SCALE    15
#define SWAGGER_REF_SCALE    10
#define SWAGGER_SCALE_FRAMES 8
#define SWAGGER_SCALE_DELAY  4
#define SWAGGER_END_DELAY    16

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    ManagedSprite *unk_14;
    XYTransformContext unk_18;
    AlphaFadeContext unk_3C;
    int unk_64;
    int unk_68;
    int unk_6C;
    int unk_70;
    int unk_74;
    int unk_78;
    int unk_7C;
} UnkStruct_ov12_02232084;

// -------------------------------------------------------------------
// Return
// -------------------------------------------------------------------
typedef struct ReturnContext {
    int state;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *attackerSprite;
    s16 attackerX;
    s16 attackerY;
    XYTransformContext pos;
    int moveCount;
} ReturnContext;

enum ReturnState {
    RETURN_STATE_INIT = 0,
    RETURN_STATE_MOVE,
    RETURN_STATE_CLEANUP,
};

#define RETURN_MOVE_START_X 0
#define RETURN_MOVE_START_Y 0
#define RETURN_MOVE_END_X   0
#define RETURN_MOVE_END_Y   32
#define RETURN_MOVE_FRAMES  6
#define RETURN_MOVE_COUNT   4

// -------------------------------------------------------------------
// Vital Throw
// -------------------------------------------------------------------
typedef struct VitalThrowContext {
    int state;
    BattleAnimSystem *battleAnimSys;
    int dir;
    PokemonSprite *attackerSprite;
    s16 attackerX;
    s16 attackerY;
    XYTransformContext attackerPos;
    PokemonSprite *defenderSprite;
    s16 defenderX;
    s16 defenderY;
    XYTransformContext defenderPos;
} VitalThrowContext;

enum VitalThrowState {
    VITAL_THROW_STATE_INIT = 0,
    VITAL_THROW_STATE_REVOLVE,
    VITAL_THROW_STATE_MOVE_ATTACKER,
    VITAL_THROW_STATE_MOVE_DEFENDER,
    VITAL_THROW_STATE_MOVE_BACK_ATTACKER,
    VITAL_THROW_STATE_MOVE_BACK_DEFENDER,
    VITAL_THROW_STATE_CLEANUP,
};

#define VITAL_THROW_REVOLUTION_COUNT  1
#define VITAL_THROW_REVOLUTION_FRAMES 64
#define VITAL_THROW_MOVE_OFFSET_X     32
#define VITAL_THROW_MOVE_FRAMES       2
#define VITAL_THROW_MOVE_BACK_FRAMES  8

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    PokemonSprite *unk_18;
    XYTransformContext unk_1C;
    int unk_40;
    s16 unk_44;
    s16 unk_46;
    ManagedSprite *unk_48[6];
    int unk_60[6];
    int unk_78[6];
} UnkStruct_ov12_02232720;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    XYTransformContext unk_14;
    XYTransformContext unk_38;
    ManagedSprite *unk_5C;
    XYTransformContext unk_60;
    int unk_84;
    s16 unk_88;
    s16 unk_8A;
} UnkStruct_ov12_02232B40;

// -------------------------------------------------------------------
// Memento
// -------------------------------------------------------------------
typedef struct MementoContext {
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    int state;
    int delay;
    int attackerHeight;
    int attackerY;
    ManagedSprite *attackerSprite;
    ManagedSprite *defenderSprite;
    ManagedSprite *attackerPartnerSprite;
    ManagedSprite *defenderPartnerSprite;
    XYTransformContext scale; // Used for Y stretch and defender scale
    XYTransformContext scaleX; // Used for X squish
    XYTransformContext defenderPos;
    int spriteState;
    int spriteDelay;
    AlphaFadeContext alpha;
    PaletteData *paletteData;
    BOOL attackerFlipped;
    BOOL defenderFlipped;
} MementoContext;

enum MementoState {
    MEMENTO_STATE_INIT = 0,
    MEMENTO_STATE_FADE_AND_INIT_ATTACKER,
    MEMENTO_STATE_UPDATE_ATTACKER,
    MEMENTO_STATE_INIT_DEFENDER,
    MEMENTO_STATE_UPDATE_DEFENDER,
    MEMENTO_STATE_FADE,
    MEMENTO_STATE_CLEANUP,

    MEMENTO_ATTACKER_STATE_STRETCH = 0,
    MEMENTO_ATTACKER_STATE_SQUISH,
    MEMENTO_ATTACKER_STATE_FINISH,

    MEMENTO_DEFENDER_STATE_MOVE = 0,
    MEMENTO_DEFENDER_STATE_SCALE,
    MEMENTO_DEFENDER_STATE_FINISH,
};

#define MEMENTO_SPRITE_PRIORITY        100
#define MEMENTO_SPRITE_EXP_PRIORITY    1
#define MEMENTO_SPRITE_START_ALPHA     0
#define MEMENTO_SPRITE_END_ALPHA       8
#define MEMENTO_BG_START_ALPHA         16
#define MEMENTO_ALPHA_FADE_FRAMES      8
#define MEMENTO_REF_SCALE              10
#define MEMENTO_START_SCALE_Y          10
#define MEMENTO_END_SCALE_Y            20
#define MEMENTO_START_SCALE_X          10
#define MEMENTO_END_SCALE_X            1
#define MEMENTO_STRETCH_FRAMES         8
#define MEMENTO_SQUISH_FRAMES          4
#define MEMENTO_SQUISH_DELAY           6
#define MEMENTO_SPRITE_BLEND_COLOR     COLOR_BLACK
#define MEMENTO_SPRITE_BLEND_FRACTION  8
#define MEMENTO_DEFENDER_Y_OFFSET      64
#define MEMENTO_DEFENDER_ANIM_FRAMES   8
#define MEMENTO_DEFENDER_START_SCALE_X 2
#define MEMENTO_DEFENDER_SCALE_DELAY   6
#define MEMENTO_DEFENDER_DELAY         2

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    PokemonSprite *unk_10;
    XYTransformContext unk_14;
    s16 unk_38;
    s16 unk_3A;
    ManagedSprite *unk_3C[3];
    AfterimageContext unk_48;
    XYTransformContext unk_F8;
} UnkStruct_ov12_022332E8;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    ManagedSprite *unk_18[6];
    XYTransformContext unk_30[6];
    AlphaFadeContext unk_108;
    s16 unk_130;
    s16 unk_132;
} UnkStruct_ov12_0223351C;

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    ManagedSprite *unk_18[15];
    XYTransformContext unk_54[15];
    int unk_270;
    int unk_274;
} UnkStruct_ov12_02233900;

// -------------------------------------------------------------------
// Extrasensory
// -------------------------------------------------------------------
typedef struct ExtrasensoryContext {
    BattleAnimSystem *battleAnimSys;
    CustomBgScrollContext *bgScroll;
    int state;
    PokemonSprite *defenderSprite;
    int y;
    int centerY;
    int baseAngle;
    fx32 baseAmplitude;
    int dir;
    int amplitudeStep;
    int delay;
    int count;
    u32 initValue;
} ExtrasensoryContext;

enum ExtrasensoryState {
    EXTRASENSORY_STATE_SET_PARAMS = 0,
    EXTRASENSORY_STATE_SCROLL,
    EXTRASENSORY_STATE_CLEANUP,
};

#define EXTRASENSORY_SCROLL_ANGLE_INCREMENT (DEG_TO_IDX(180) / MON_SPRITE_FRAME_HEIGHT)
#define EXTRASENSORY_SCROLL_Y_RANGE_OFFSET  (-8)
#define EXTRASENSORY_SCROLL_JITTER_FACTOR   FX32_CONST(1)
#define EXTRASENSORY_SCROLL_DAMPENING_VALUE 10
#define EXTRASENSORY_DISTORTION_1_ANGLE     DEG_TO_IDX(180)
#define EXTRASENSORY_DISTORTION_1_STEP      5
#define EXTRASENSORY_DISTORTION_1_AMPLITUDE FX32_CONST(16)
#define EXTRASENSORY_DISTORTION_1_FRAMES    16
#define EXTRASENSORY_DISTORTION_2_ANGLE     DEG_TO_IDX(180)
#define EXTRASENSORY_DISTORTION_2_STEP      -5
#define EXTRASENSORY_DISTORTION_2_AMPLITUDE FX32_CONST(-16)
#define EXTRASENSORY_DISTORTION_2_FRAMES    16
#define EXTRASENSORY_DISTORTION_3_ANGLE     DEG_TO_IDX(180)
#define EXTRASENSORY_DISTORTION_3_STEP      10
#define EXTRASENSORY_DISTORTION_3_AMPLITUDE FX32_CONST(20)
#define EXTRASENSORY_DISTORTION_3_FRAMES    16
#define EXTRASENSORY_DISTORTION_COUNT       3

// -------------------------------------------------------------------
// Fake Out Curtain
// -------------------------------------------------------------------
typedef struct FakeOutCurtainContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    int delay;
    XYTransformContext curtainPos;
} FakeOutCurtainContext;

enum FakeOutCurtainState {
    FAKE_OUT_CURTAIN_STATE_INIT = 0,
    FAKE_OUT_CURTAIN_STATE_WAIT,
    FAKE_OUT_CURTAIN_STATE_MOVE_CURTAIN,
    FAKE_OUT_CURTAIN_STATE_HIDE_CURTAIN,
    FAKE_OUT_CURTAIN_STATE_WAIT_FOR_FADE,
    FAKE_OUT_CURTAIN_STATE_CLEANUP,
};

#define FAKE_OUT_CURTAIN_START_X     127
#define FAKE_OUT_CURTAIN_END_X       0
#define FAKE_OUT_CURTAIN_MOVE_FRAMES 8
#define FAKE_OUT_CURTAIN_DELAY       7
#define FAKE_OUT_CURTAIN_COLOR       GX_RGBA(31, 31, 31, 1)
#define FAKE_OUT_CURTAIN_COLOR_ALPHA 16

typedef struct {
    BattleAnimSystem *unk_00;
    SpriteSystem *unk_04;
    SpriteManager *unk_08;
    int unk_0C;
    ManagedSprite *unk_10;
    AlphaFadeContext unk_14;
} UnkStruct_ov12_02233F4C;

// -------------------------------------------------------------------
// Fake Out
// -------------------------------------------------------------------
typedef struct FakeOutContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    s16 defenderY;
    s16 defenderX;
    s16 defenderHeight;
    PokemonSprite *defenderSprite;
    XYTransformContext scale;
    XYTransformContext shake;
    int sx;
    int ex;
    int sy;
    int ey;
    int refScale;
    int cycles;
    int frames;
} FakeOutContext;

enum FakeOutState {
    FAKE_OUT_STATE_INIT_SCALE = 0,
    FAKE_OUT_STATE_SCALE,
    FAKE_OUT_STATE_INIT_RESTORE,
    FAKE_OUT_STATE_RESTORE,
    FAKE_OUT_STATE_CLEANUP,
};

#define FAKE_OUT_SCALE_START_X  10
#define FAKE_OUT_SCALE_START_Y  10
#define FAKE_OUT_SCALE_END_X    7
#define FAKE_OUT_SCALE_END_Y    30
#define FAKE_OUT_SCALE_REF      10
#define FAKE_OUT_SCALE_CYCLES   1
#define FAKE_OUT_SHAKE_FRAMES   SCALE_POKEMON_SPRITE_FRAMES(4, 3)
#define FAKE_OUT_SHAKE_EXTENT_X 2
#define FAKE_OUT_SHAKE_EXTENT_Y 0
#define FAKE_OUT_SHAKE_INTERVAL 1
#define FAKE_OUT_SHAKE_AMOUNT   2

// -------------------------------------------------------------------
// Megahorn (Unused)
// -------------------------------------------------------------------
typedef struct MegahornContext {
    BattleAnimSystem *battleAnimSys;
    SpriteManager *spriteManager;
    XYTransformContext pos;
    ManagedSprite *hornSprite;
} MegahornContext;

#define MEGAHORN_OFFSET_X    64
#define MEGAHORN_OFFSET_Y    (-16)
#define MEGAHORN_MOVE_X      48
#define MEGAHORN_MOVE_Y      (-16)
#define MEGAHORN_MOVE_FRAMES 6

// -------------------------------------------------------------------
// Megahorn (Attacker)
// -------------------------------------------------------------------
typedef struct MegahornAttackerContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    int delay;
    int dirX;
    int dirY;
    PokemonSprite *sprite;
    s16 x;
    s16 y;
    XYTransformContext pos;
    XYTransformContext shake;
} MegahornAttackerContext;

enum MegahornAttackerState {
    MEGAHORN_ATTACKER_STATE_INIT = 0,
    MEGAHORN_ATTACKER_STATE_SHAKE,
    MEGAHORN_ATTACKER_STATE_MOVE,
    MEGAHORN_ATTACKER_STATE_WAIT,
    MEGAHORN_ATTACKER_STATE_MOVE_BACK,
    MEGAHORN_ATTACKER_STATE_CLEANUP,
};

#define MEGAHORN_ATTACKER_SHAKE_EXTENT_X 4
#define MEGAHORN_ATTACKER_SHAKE_EXTENT_Y 0
#define MEGAHORN_ATTACKER_SHAKE_INTERVAL 1
#define MEGAHORN_ATTACKER_SHAKE_AMOUNT   4
#define MEGAHORN_ATTACKER_MOVE_X         40
#define MEGAHORN_ATTACKER_MOVE_Y         (-7)
#define MEGAHORN_ATTACKER_MOVE_FRAMES    4
#define MEGAHORN_ATTACKER_DELAY_FRAMES   8

// -------------------------------------------------------------------
// Megahorn (Defender)
// -------------------------------------------------------------------
typedef struct MegahornDefenderContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    int dirX;
    int dirY;
    PokemonSprite *sprite;
    s16 x;
    s16 y;
    XYTransformContext pos;
    XYTransformContext shake;
} MegahornDefenderContext;

enum MegahornDefenderState {
    MEGAHORN_DEFENDER_STATE_INIT = 0,
    MEGAHORN_DEFENDER_STATE_MOVE,
    MEGAHORN_DEFENDER_STATE_SHAKE,
    MEGAHORN_DEFENDER_STATE_MOVE_BACK,
    MEGAHORN_DEFENDER_STATE_CLEANUP,
};

#define MEGAHORN_DEFENDER_MOVE_X         (-40)
#define MEGAHORN_DEFENDER_MOVE_Y         16
#define MEGAHORN_DEFENDER_MOVE_FRAMES    4
#define MEGAHORN_DEFENDER_SHAKE_EXTENT_X 4
#define MEGAHORN_DEFENDER_SHAKE_EXTENT_Y 0
#define MEGAHORN_DEFENDER_SHAKE_INTERVAL 1
#define MEGAHORN_DEFENDER_SHAKE_AMOUNT   4

static void BattleAnimTask_QuickAttack(SysTask *task, void *param)
{
    QuickAttackContext *ctx = param;

    BOOL transformsActive[3];
    transformsActive[0] = RevolutionContext_UpdateAndApplyToMon(&ctx->rev, ctx->attackerX, ctx->attackerY, ctx->attackerSprite);
    transformsActive[1] = Afterimage_Update(&ctx->afterImageCtx);
    transformsActive[2] = FALSE;

    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);

    for (int i = 0; i < (int)NELEMS(transformsActive); i++) {
        if (transformsActive[i] == TRUE) {
            return;
        }
    }

    PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER, ctx->attackerX);
    PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER, ctx->attackerY + (REVOLUTION_CONTEXT_OVAL_RADIUS_Y >> FX32_SHIFT));
    BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
    Heap_Free(ctx);
}

void BattleAnimScriptFunc_QuickAttack(BattleAnimSystem *system)
{
    QuickAttackContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(QuickAttackContext));

    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->attackerShadowHeight = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_SHADOW_HEIGHT);
    ctx->attackerY -= REVOLUTION_CONTEXT_OVAL_RADIUS_Y >> FX32_SHIFT;

    RevolutionContext_InitOvalRevolutions(&ctx->rev, 1, QUICK_ATTACK_REVOLUTION_FRAMES);

    XYTransformContext afterImageRev;
    RevolutionContext_InitOvalRevolutions(&afterImageRev, 1, QUICK_ATTACK_AFTERIMAGE_REVOLUTION_FRAMES);

    // Adjust rotation direction based on if the attacker is on the player's side or not
    int dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->rev.data[XY_PARAM_REV_RADIUS_X] *= dir;
    afterImageRev.data[XY_PARAM_REV_RADIUS_X] *= dir;

    for (int i = 0; i < QUICK_ATTACK_AFTERIMAGE_COUNT; i++) {
        ctx->afterimageSprites[i] = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, i);
        ManagedSprite_SetPriority(ctx->afterimageSprites[i], QUICK_ATTACK_SPRITE_PRIORITY);
        ManagedSprite_SetExplicitPriority(ctx->afterimageSprites[i], QUICK_ATTACK_SPRITE_EXP_PRIORITY);
        ManagedSprite_SetExplicitOamMode(ctx->afterimageSprites[i], GX_OAM_MODE_XLU);
    }

    Afterimage_Init(
        &ctx->afterImageCtx,
        &afterImageRev,
        RevolutionContext_Update,
        ctx->attackerX,
        ctx->attackerY - ctx->attackerShadowHeight,
        QUICK_ATTACK_AFTERIMAGE_DELAY,
        QUICK_ATTACK_AFTERIMAGE_COUNT,
        AFTERIMAGE_TRANSFORM_POSITION,
        ctx->afterimageSprites[0],
        ctx->afterimageSprites[1],
        NULL,
        NULL);

    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, -1, -1);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_QuickAttack, ctx);
}

static void BattleAnimTask_DrillPeck(SysTask *task, void *param)
{
    DrillPeckContext *ctx = param;

    switch (ctx->state) {
    case DRILL_PECK_STATE_MOVE_BWD:
        if (PosLerpContext_Update(&ctx->pos)) {
            PosLerpContext_Apply(&ctx->pos, ctx->attackerSprite, ctx->attackerX, ctx->attackerY);
        } else {
            PosLerpContext_Init(&ctx->pos, ctx->pos.x, 0, DRILL_PECK_MOVE_BWD_Y, 0, DRILL_PECK_MOVE_FWD_FRAMES);
            ctx->state++;
        }
        break;
    case DRILL_PECK_STATE_ROTATE_FWD:
        if (ValueLerpContext_Update(&ctx->angle)) {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_ROTATION_Z, ctx->angle.value);
        } else {
            ValueLerpContext_Init(&ctx->angle, ctx->angle.value, DEG_TO_IDX(0), DRILL_PECK_ROTATION_BWD_FRAMES);
            ctx->state++;
            ctx->delay = DRILL_PECK_POST_ROTATION_FWD_DELAY;
        }
        break;
    case DRILL_PECK_STATE_DELAY_1:
        ctx->delay--;
        if (ctx->delay < 0) {
            ctx->state++;
        }
        break;
    case DRILL_PECK_STATE_MOVE_FWD:
        if (PosLerpContext_Update(&ctx->pos)) {
            PosLerpContext_Apply(&ctx->pos, ctx->attackerSprite, ctx->attackerX, ctx->attackerY);
        } else {
            ctx->state++;
            ctx->delay = DRILL_PECK_POST_MOVE_FWD_DELAY;
        }
        break;
    case DRILL_PECK_STATE_DELAY_2:
        ctx->delay--;
        if (ctx->delay < 0) {
            ctx->state++;
        }
        break;
    case DRILL_PECK_STATE_ROTATE_BWD:
        if (ValueLerpContext_Update(&ctx->angle)) {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_ROTATION_Z, ctx->angle.value);
        } else {
            ctx->state++;
        }
        break;
    case DRILL_PECK_STATE_CLEANUP:
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER, ctx->attackerX);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER, ctx->attackerY);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_ROTATION_Z, 0);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_DrillPeck(BattleAnimSystem *system)
{
    // BUG: Should be sizeof(DrillPeckContext), not sizeof(QuickAttackContext)
    DrillPeckContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(QuickAttackContext));

    ctx->battleAnimSys = system;
    ctx->state = DRILL_PECK_STATE_MOVE_BWD;
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);

    PosLerpContext_Init(&ctx->pos, 0, DRILL_PECK_MOVE_BWD_X, 0, DRILL_PECK_MOVE_BWD_Y, DRILL_PECK_MOVE_BWD_FRAMES);
    ValueLerpContext_Init(&ctx->angle, 0, DRILL_PECK_ROTATION_FWD_ANGLE, DRILL_PECK_ROTATION_FWD_FRAMES);

    int dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->pos.data[XY_PARAM_STEP_SIZE] *= dir;
    ctx->angle.data[VALUE_PARAM_STEP_SIZE] *= dir;

    int defenderDir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));

    enum Battler attackerSide = BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    enum Battler defenderSide = BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetDefender(ctx->battleAnimSys));

    if (attackerSide == BTLSCR_PLAYER && defenderSide == BTLSCR_PLAYER) {
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_PIVOT, (MON_SPRITE_FRAME_WIDTH / 2) * -1);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_PIVOT, MON_SPRITE_FRAME_HEIGHT / 2);
    } else if (attackerSide == BTLSCR_ENEMY && defenderSide == BTLSCR_ENEMY) {
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_PIVOT, (MON_SPRITE_FRAME_WIDTH / 2) * +1);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_PIVOT, MON_SPRITE_FRAME_HEIGHT / 2);
    } else {
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_PIVOT, (MON_SPRITE_FRAME_WIDTH / 2) * defenderDir);
        PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_PIVOT, MON_SPRITE_FRAME_HEIGHT / 2);
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_DrillPeck, ctx);
}

static void ov12_0222FAFC(UnkStruct_ov12_0222FAFC *param0, SpriteSystem *param1, SpriteManager *param2, const SpriteTemplate *param3, const UnkStruct_ov12_0222FAFC *param4)
{
    param0->unk_00 = SpriteSystem_NewSprite(param1, param2, param3);
    param0->unk_04 = param4->unk_04;
    param0->unk_28 = param4->unk_28;
    param0->unk_3C = param4->unk_3C;
    param0->unk_3E = param4->unk_3E;
    param0->unk_40 = param4->unk_40;
    param0->unk_44 = param4->unk_44;
    param0->unk_48 = 0;

    ManagedSprite_SetDrawFlag(param0->unk_00, 0);
    ManagedSprite_SetPriority(param0->unk_00, 100);
    ManagedSprite_SetExplicitPriority(param0->unk_00, 1);
}

static void ov12_0222FB6C(UnkStruct_ov12_0222FAFC *param0)
{
    Sprite_DeleteAndFreeResources(param0->unk_00);
}

static void ov12_0222FB78(UnkStruct_ov12_0222FAFC *param0, BOOL param1)
{
    ManagedSprite_SetDrawFlag(param0->unk_00, param1);
}

static BOOL ov12_0222FB84(UnkStruct_ov12_0222FAFC *param0)
{
    if (param0->unk_48 == 0) {
        return 1;
    }

    switch (param0->unk_44) {
    case 0:
    case 1:
        if (RevolutionContext_Update(&param0->unk_04)) {
            AngleLerpContext_UpdateCos(&param0->unk_28);
            param0->unk_04.data[5] = param0->unk_3C + param0->unk_28.value;
            ManagedSprite_SetPositionXY(param0->unk_00, param0->unk_3E + param0->unk_04.x, param0->unk_40 + param0->unk_04.y);
        } else {
            if (param0->unk_44 < 1) {
                if (param0->unk_44 == 0) {
                    ov12_02225A8C(&param0->unk_04, param0->unk_04.data[1], (180 * 0xffff) / 360, param0->unk_04.data[1], (180 * 0xffff) / 360, param0->unk_04.data[2], param0->unk_04.data[4], (10 * 0xffff) / 360);
                }

                AngleLerpContext_InitCos(&param0->unk_28, (0 * 0xffff) / 360, (360 * 0xffff) / 360, -1 * FX32_ONE, param0->unk_04.data[0]);
            }

            param0->unk_44++;
        }
        break;
    case 2:
        return 0;
    }

    return 1;
}

static void ov12_0222FC44(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222FC44 *v0 = param1;
    int v1;
    BOOL v2 = 0;
    BOOL v3;

    switch (v0->unk_EC) {
    case 0:
        ov12_0222FB84(&v0->unk_0C);
        v0->unk_EC++;
        break;
    case 1:
        v0->unk_F8 += 10;
        G2_ChangeBlendAlpha(v0->unk_F8 / 10, 31 - (v0->unk_F8 / 10));

        if (v0->unk_F8 >= 310) {
            ManagedSprite_SetExplicitOamMode(v0->unk_0C.unk_00, GX_OAM_MODE_NORMAL);

            v0->unk_EC++;
        }
        break;
    case 2:
        G2_ChangeBlendAlpha(0xffffffff, 0xffffffff);
        v0->unk_EC++;
        break;
    case 3:
        if (v0->unk_F0 <= 0) {
            v0->unk_58[v0->unk_F4].unk_48 = 1;
            ManagedSprite_SetDrawFlag(v0->unk_58[v0->unk_F4].unk_00, 1);
            v0->unk_F4++;
            v0->unk_F0 = 8;
        }

        if (v0->unk_F4 < 2) {
            v0->unk_F0--;
        }

        v2 = ov12_0222FB84(&v0->unk_0C);

        for (v1 = 0; v1 < 2; v1++) {
            v3 = ov12_0222FB84(&v0->unk_58[v1]);

            if (v3 == 0) {
                ov12_0222FB78(&v0->unk_58[v1], 0);
            }

            v2 |= v3;
        }

        if (v2 == 0) {
            v0->unk_EC++;
        }
        break;
    case 4:
        ManagedSprite_TickFrame(v0->unk_0C.unk_00);

        if (Sprite_IsAnimated(v0->unk_0C.unk_00->sprite) == 0) {
            ManagedSprite_SetExplicitOamMode(v0->unk_0C.unk_00, GX_OAM_MODE_XLU);
            v0->unk_EC++;
        }
        break;
    case 5:
        v0->unk_F8 -= 10;
        G2_ChangeBlendAlpha(v0->unk_F8 / 10, 31 - (v0->unk_F8 / 10));

        if (v0->unk_F8 <= 0) {
            v0->unk_EC++;
        }
        break;
    case 6:
        for (v1 = 0; v1 < 2; v1++) {
            ov12_0222FB6C(&v0->unk_58[v1]);
        }

        Sprite_DeleteAndFreeResources(v0->unk_0C.unk_00);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);

        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_0222FE30(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0222FC44 *v0;
    SpriteTemplate v1;
    int v2;
    int v3;
    int v4;

    v0 = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(param0), sizeof(UnkStruct_ov12_0222FC44));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_F0 = 8;
    v0->unk_F4 = 0;
    v0->unk_EC = 0;

    v3 = BattleAnimSystem_GetAttacker(param0);
    v4 = BattleAnimUtil_GetTransformDirectionX(param0, v3);
    v4 *= (-32 * FX32_ONE);

    v0->unk_0C.unk_00 = param3;
    v0->unk_0C.unk_44 = 0;

    ov12_02225A8C(&v0->unk_0C.unk_04, (90 * 0xffff) / 360, (270 * 0xffff) / 360, (90 * 0xffff) / 360, (270 * 0xffff) / 360, v4, -8 * FX32_ONE, (10 * 0xffff) / 360);
    AngleLerpContext_InitCos(&v0->unk_0C.unk_28, (0 * 0xffff) / 360, (360 * 0xffff) / 360, -1 * FX32_ONE, v0->unk_0C.unk_04.data[0]);

    v0->unk_0C.unk_3C = v0->unk_0C.unk_04.data[5];
    v0->unk_0C.unk_48 = 1;
    v0->unk_0C.unk_3E = BattleAnimUtil_GetBattlerPos(param0, v3, 0);
    v0->unk_0C.unk_40 = BattleAnimUtil_GetBattlerPos(param0, v3, 1);

    ManagedSprite_SetPositionXY(v0->unk_0C.unk_00, v0->unk_0C.unk_3E, v0->unk_0C.unk_40);
    ManagedSprite_SetPriority(v0->unk_0C.unk_00, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_0C.unk_00, 1);

    v1 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00);
    v1.x = v0->unk_0C.unk_3E;
    v1.y = v0->unk_0C.unk_40;

    for (v2 = 0; v2 < 2; v2++) {
        ov12_0222FAFC(&v0->unk_58[v2], v0->unk_04, v0->unk_08, &v1, &v0->unk_0C);
    }

    v0->unk_F8 = 0;

    BattleAnimUtil_SetSpriteBgBlending(v0->unk_00, 0, 31);
    ManagedSprite_SetExplicitOamMode(v0->unk_0C.unk_00, GX_OAM_MODE_XLU);

    for (v2 = 0; v2 < 2; v2++) {
        ManagedSprite_SetExplicitOamMode(v0->unk_58[v2].unk_00, GX_OAM_MODE_XLU);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_0222FC44, v0);
}

static void ConfusionContext_Apply(ConfusionContext *ctx)
{
    PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER, ctx->defenderX + ctx->shake.x);
    PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER, ctx->defenderY + ctx->shake.y);
    ManagedSprite_SetPositionXY(ctx->monSprite, ctx->defenderX + ctx->shake.x, ctx->defenderY + ctx->shake.y - ctx->defenderShadowHeight);

    f32 x, y;
    ScaleLerpContext_GetAffineScale(&ctx->scale, &x, &y);
    x += ctx->jitterDir * CONFUSION_SCALE_X_JITTER;
    ManagedSprite_SetAffineScale(ctx->monSprite, x, y);

    ctx->jitterDir *= -1;
}

static void BattleAnimTask_Confusion(SysTask *task, void *param)
{
    ConfusionContext *ctx = param;
    BOOL active;

    switch (ctx->state) {
    case CONFUSION_STATE_GROW:
        ShakeContext_Update(&ctx->shake);
        active = ScaleLerpContext_UpdateXY(&ctx->scale);

        ConfusionContext_Apply(ctx);

        if (active == FALSE) {
            ScaleLerpContext_InitXY(
                &ctx->scale,
                CONFUSION_SCALE_X,
                CONFUSION_BASE_SCALE_X,
                CONFUSION_SCALE_Y,
                CONFUSION_BASE_SCALE_Y,
                CONFUSION_REFERENCE_SCALE,
                CONFUSION_SCALE_BACK_FRAMES);
            ctx->state++;
        }
        break;
    case CONFUSION_STATE_SHRINK:
        ShakeContext_Update(&ctx->shake);
        active = ScaleLerpContext_UpdateXY(&ctx->scale);

        ConfusionContext_Apply(ctx);

        if (active == FALSE) {
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER, ctx->defenderX);
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER, ctx->defenderY);
            ctx->state++;
        }
        break;
    case CONFUSION_STATE_CLEANUP:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}

void BattleAnimScriptFunc_Confusion(BattleAnimSystem *system)
{
    ConfusionContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(ConfusionContext));

    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);
    ctx->state = 0;
    ctx->unused = 0;
    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));
    ctx->defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    ctx->defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);
    ctx->defenderShadowHeight = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_SHADOW_HEIGHT);

    ShakeContext_Init(
        &ctx->shake,
        CONFUSION_SHAKE_EXTENT_X,
        CONFUSION_SHAKE_EXTENT_Y,
        CONFUSION_SHAKE_INTERVAL,
        CONFUSION_SHAKE_CYCLES);
    ctx->monSprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);

    ManagedSprite_SetExplicitOamMode(ctx->monSprite, GX_OAM_MODE_XLU);
    ManagedSprite_SetAffineOverwriteMode(ctx->monSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetPriority(ctx->monSprite, CONFUSION_SPRITE_PRIORITY);
    ManagedSprite_SetExplicitPriority(ctx->monSprite, CONFUSION_SPRITE_EXP_PRIORITY);

    ScaleLerpContext_InitXY(
        &ctx->scale,
        CONFUSION_BASE_SCALE_X,
        CONFUSION_SCALE_X,
        CONFUSION_BASE_SCALE_Y,
        CONFUSION_SCALE_Y,
        CONFUSION_REFERENCE_SCALE,
        CONFUSION_SCALE_FRAMES);

    ctx->jitterDir = 1;

    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, CONFUSION_BLEND_A, CONFUSION_BLEND_B);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Confusion, ctx);
}

static void AcidArmorContext_ClearBuffer(AcidArmorContext *ctx, void *buffer)
{
    u32 value = ((-ctx->attackerY & BG_OFFSET_Y_MASK) << BG_OFFSET_Y_SHIFT) | (-ctx->attackerX & BG_OFFSET_X_MASK);
    MI_CpuFill32(buffer, value, sizeof(u32) * HW_LCD_HEIGHT);
}

static BOOL AcidArmorContext_UpdateBgScroll(AcidArmorContext *ctx)
{
    u32 *writeBuffer = BgScrollContext_GetWriteBuffer(ctx->bgScroll);
    AcidArmorContext_ClearBuffer(ctx, writeBuffer);

    BOOL active = PosLerpContext_Update(&ctx->pos);

    for (int y = ctx->scrollStartY; y <= ctx->scrollEndY; y++) {
        s16 xOff = writeBuffer[y] & BG_OFFSET_X_MASK;
        s16 yOff = writeBuffer[y] >> BG_OFFSET_Y_SHIFT;

        yOff -= ((ctx->scrollEndY - y) * ctx->pos.y) / 100;
        xOff -= ((ctx->scrollStartY + MON_SPRITE_FRAME_HEIGHT / 2 - y) * ctx->pos.x) / 100;

        int prevY = y - 1;
        if (prevY < 0) {
            prevY += HW_LCD_HEIGHT;
        }

        writeBuffer[prevY] = BattleAnimUtil_MakeBgOffsetValue(xOff, yOff);
    }

    return active;
}

static void BattleAnimTask_AcidArmor(SysTask *task, void *param)
{
    AcidArmorContext *ctx = param;

    switch (ctx->state) {
    case ACID_ARMOR_STATE_SCROLL:
        if (AcidArmorContext_UpdateBgScroll(ctx) == FALSE) {
            ctx->state++;
            BattleAnimUtil_SetEffectBaseBgBlending(ctx->battleAnimSys, ACID_ARMOR_ALPHA_BASE_START, ACID_ARMOR_ALPHA_EFFECT_START);
            AlphaFadeContext_Init(
                &ctx->alphaFade,
                ACID_ARMOR_ALPHA_BASE_START,
                ACID_ARMOR_ALPHA_BASE_END,
                ACID_ARMOR_ALPHA_EFFECT_START,
                ACID_ARMOR_ALPHA_EFFECT_END,
                ACID_ARMOR_ALPHA_FADE_FRAMES);
        }
        break;
    case ACID_ARMOR_STATE_FADE:
        AcidArmorContext_UpdateBgScroll(ctx);

        if (AlphaFadeContext_IsDone(&ctx->alphaFade)) {
            ctx->state++;

            BgScrollContext_Stop(ctx->bgScroll);
            ctx->delay = 0;
        }
        break;
    case ACID_ARMOR_STATE_WAIT:
        Bg_SetOffset(BattleAnimSystem_GetBgConfig(ctx->battleAnimSys), BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_X, -ctx->attackerX);
        Bg_SetOffset(BattleAnimSystem_GetBgConfig(ctx->battleAnimSys), BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_Y, -ctx->attackerY);

        ctx->delay++;

        if (ctx->delay > ACID_ARMOR_ALPHA_FADE_DELAY) {
            AlphaFadeContext_Init(
                &ctx->alphaFade,
                ACID_ARMOR_ALPHA_BASE_END,
                ACID_ARMOR_ALPHA_BASE_START,
                ACID_ARMOR_ALPHA_EFFECT_END,
                ACID_ARMOR_ALPHA_EFFECT_START,
                ACID_ARMOR_ALPHA_FADE_FRAMES);
            ctx->state++;
        }
        break;
    case ACID_ARMOR_STATE_FADE_BACK:
        if (AlphaFadeContext_IsDone(&ctx->alphaFade)) {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_HIDE, FALSE);
            ctx->state++;
        }
        break;
    case ACID_ARMOR_STATE_CLEANUP:
        BgScrollContext_Free(ctx->bgScroll);

        Bg_SetPriority(
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE),
            BattleAnimSystem_GetBgPriority(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE));
        Bg_SetPriority(BG_LAYER_MAIN_0, BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys));

        Bg_ClearTilesRange(
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE),
            0x4000,
            0,
            BattleAnimSystem_GetHeapID(ctx->battleAnimSys));

        Bg_ClearTilemap(
            BattleAnimSystem_GetBgConfig(ctx->battleAnimSys),
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE));

        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    default:
        break;
    }
}

void BattleAnimScriptFunc_AcidArmor(BattleAnimSystem *system)
{
    AcidArmorContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(AcidArmorContext));
    memset(ctx, 0, sizeof(AcidArmorContext));

    ctx->battleAnimSys = system;

    SysTask *task = BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_AcidArmor, ctx);

    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->attackerY -= PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_SHADOW_HEIGHT);

    // Adjust coordinates to the top-left corner of the sprite
    ctx->attackerX -= MON_SPRITE_FRAME_WIDTH / 2;
    ctx->attackerY -= MON_SPRITE_FRAME_HEIGHT / 2;

    PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_HIDE, TRUE);

    int dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    ctx->scrollStartY = ctx->attackerY - ACID_ARMOR_SCROLL_CORRECTION;
    ctx->scrollEndY = ctx->attackerY + MON_SPRITE_FRAME_HEIGHT + ACID_ARMOR_SCROLL_CORRECTION;

    if (ctx->scrollStartY < 0) {
        ctx->scrollStartY = 0;
    }

    if (ctx->scrollEndY > HW_LCD_HEIGHT) {
        ctx->scrollEndY = HW_LCD_HEIGHT;
    }

    ctx->bgScroll = BgScrollContext_New(
        ctx->scrollStartY,
        ctx->scrollEndY,
        ACID_ARMOR_SCROLL_ANGLE_INCREMENT,
        ACID_ARMOR_SCROLL_AMPLITUDE * dir,
        ACID_ARMOR_SCROLL_SPEED,
        BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_BASE),
        SysTask_GetPriority(task) + 1,
        BattleAnimUtil_MakeBgOffsetValue(ctx->attackerX, ctx->attackerY),
        BattleAnimSystem_GetHeapID(system));

    PosLerpContext_Init(&ctx->pos, 0, ACID_ARMOR_MOVE_X, 0, ACID_ARMOR_MOVE_Y, ACID_ARMOR_MOVE_FRAMES);
    ctx->pos.data[XY_PARAM_STEP_SIZE_X] *= dir;

    int battlerType = BattleAnimUtil_GetBattlerType(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
    if (battlerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1 || battlerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
        Bg_SetPriority(
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE),
            BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys));
        Bg_SetPriority(BATTLE_BG_3D, BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys) + 1);
    }

    BattleAnimTask_AcidArmor(task, ctx);
}

static void BattleAnimTask_NightShadeAttacker(SysTask *task, void *param)
{
    NightShaderAttackerContext *ctx = param;
    BOOL active;
    f32 scaleX, scaleY;

    switch (ctx->state) {
    case NIGHT_SHADE_ATTACKER_STATE_FADE_IN:
        active = ValueLerpContext_UpdateFX32(&ctx->alpha);
        G2_ChangeBlendAlpha(ctx->alpha.value, NIGHT_SHADE_ATTACKER_SPRITE_MAX_ALPHA - ctx->alpha.value);

        if (active == FALSE) {
            ctx->state++;
            ctx->delay = 0;
        }
        break;
    case NIGHT_SHADE_ATTACKER_STATE_DELAY:
        ctx->delay++;
        if (ctx->delay > NIGHT_SHADE_ATTACKER_SCALE_DELAY) {
            ctx->state++;
        }
        break;
    case NIGHT_SHADE_ATTACKER_STATE_GROW:
        active = ScaleLerpContext_Update(&ctx->scale);
        ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);

        if (ctx->isContest == TRUE) {
            scaleX = -scaleX;
        }

        ManagedSprite_SetAffineScale(ctx->xluSprite, scaleX, scaleY);

        if (active == FALSE) {
            ManagedSprite_SetDrawFlag(ctx->xluSprite, FALSE);
            ctx->state++;
        }
        break;
    case NIGHT_SHADE_ATTACKER_STATE_CLEANUP:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}

static void BattleAnimTask_NightShadeDefender(SysTask *task, void *param)
{
    NightShadeDefenderContext *ctx = param;
    BOOL active;

    switch (ctx->state) {
    case NIGHT_SHADE_DEFENDER_STATE_FADE_OUT:
        ShakeContext_Update(&ctx->shake);
        XYTransformContext_ApplyPosOffsetToMon(&ctx->shake, ctx->defenderSprite, ctx->defenderX, ctx->defenderY);

        if (ctx->animateManagedSprite == TRUE) {
            XYTransformContext_ApplyPosOffsetToSprite(
                &ctx->shake,
                ctx->managedSprite,
                ctx->defenderX,
                ctx->defenderY - ctx->defenderShadowHeight);
        }

        if (PokemonSprite_IsFadeActive(ctx->defenderSprite) == FALSE) {
            PokemonSprite_StartFade(
                ctx->defenderSprite,
                NIGHT_SHADE_DEFENDER_FADE_END_ALPHA,
                NIGHT_SHADE_DEFENDER_FADE_START_ALPHA,
                NIGHT_SHADE_DEFENDER_FADE_DELAY,
                NIGHT_SHADE_DEFENDER_FADE_COLOR);

            if (ctx->animateManagedSprite == TRUE) {
                int palette = 1 << BattleAnimUtil_GetSpritePalette(ctx->managedSprite);
                PaletteData_StartFade(
                    BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
                    NIGHT_SHADE_DEFENDER_FADE_PLTTBUF,
                    palette,
                    NIGHT_SHADE_DEFENDER_FADE_DELAY,
                    NIGHT_SHADE_DEFENDER_FADE_END_ALPHA,
                    NIGHT_SHADE_DEFENDER_FADE_START_ALPHA,
                    NIGHT_SHADE_DEFENDER_FADE_COLOR);
            }

            ctx->state++;
        }
        break;
    case NIGHT_SHADE_DEFENDER_STATE_FADE_IN:
        active = ShakeContext_Update(&ctx->shake);
        XYTransformContext_ApplyPosOffsetToMon(&ctx->shake, ctx->defenderSprite, ctx->defenderX, ctx->defenderY);

        if (ctx->animateManagedSprite == TRUE) {
            XYTransformContext_ApplyPosOffsetToSprite(
                &ctx->shake,
                ctx->managedSprite,
                ctx->defenderX,
                ctx->defenderY - ctx->defenderShadowHeight);
        }

        if (PokemonSprite_IsFadeActive(ctx->defenderSprite) == FALSE) {
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER, ctx->defenderX);
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER, ctx->defenderY);

            if (ctx->animateManagedSprite == TRUE) {
                if (BattleAnimSystem_IsBattlerSemiInvulnerable(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys)) == FALSE) {
                    PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_HIDE, FALSE);
                }

                ManagedSprite_SetPositionXY(ctx->managedSprite, ctx->defenderX, ctx->defenderY - ctx->defenderShadowHeight);
            }

            ctx->state++;
        }
        break;
    case NIGHT_SHADE_DEFENDER_STATE_CLEANUP:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }
}

void BattleAnimScriptFunc_NightShadeAttacker(BattleAnimSystem *system)
{
    NightShaderAttackerContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(NightShaderAttackerContext));
    memset(ctx, 0, sizeof(NightShaderAttackerContext));

    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);
    ctx->isContest = BattleAnimSystem_IsContest(system);
    ctx->xluSprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);

    ScaleLerpContext_Init(
        &ctx->scale,
        NIGHT_SHADE_ATTACKER_START_SCALE,
        NIGHT_SHADE_ATTACKER_REF_SCALE,
        NIGHT_SHADE_ATTACKER_END_SCALE,
        NIGHT_SHADE_ATTACKER_SCALE_FRAMES);
    ValueLerpContext_InitFX32(
        &ctx->alpha,
        NIGHT_SHADE_ATTACKER_START_ALPHA,
        NIGHT_SHADE_ATTACKER_END_ALPHA,
        NIGHT_SHADE_ATTACKER_ALPHA_FRAMES);

    ManagedSprite_SetExplicitOamMode(ctx->xluSprite, GX_OAM_MODE_XLU);
    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, 0, NIGHT_SHADE_ATTACKER_SPRITE_MAX_ALPHA);
    ManagedSprite_SetAffineOverwriteMode(ctx->xluSprite, AFFINE_OVERWRITE_MODE_DOUBLE);

    if (ctx->isContest == TRUE) {
        ManagedSprite_SetAffineScale(ctx->xluSprite, -NIGHT_SHADE_ATTACKER_START_SCALE_F, NIGHT_SHADE_ATTACKER_START_SCALE_F);
    } else {
        ManagedSprite_SetAffineScale(ctx->xluSprite, NIGHT_SHADE_ATTACKER_START_SCALE_F, NIGHT_SHADE_ATTACKER_START_SCALE_F);
    }

    ManagedSprite_SetPriority(ctx->xluSprite, NIGHT_SHADE_ATTACKER_SPRITE_PRIORITY);
    ManagedSprite_SetExplicitPriority(ctx->xluSprite, NIGHT_SHADE_ATTACKER_SPRITE_EXP_PRIORITY);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_NightShadeAttacker, ctx);
}

void BattleAnimScriptFunc_NightShadeDefender(BattleAnimSystem *system)
{
    NightShadeDefenderContext *ctx = Heap_AllocFromHeap(BattleAnimSystem_GetHeapID(system), sizeof(NightShadeDefenderContext));
    memset(ctx, 0, sizeof(NightShadeDefenderContext));

    ctx->battleAnimSys = system;
    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));
    ctx->defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    ctx->defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);
    ctx->defenderShadowHeight = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_SHADOW_HEIGHT);

    ShakeContext_Init(
        &ctx->shake,
        NIGHT_SHADE_DEFENDER_SHAKE_EXTENT_X,
        NIGHT_SHADE_DEFENDER_SHAKE_EXTENT_Y,
        NIGHT_SHADE_DEFENDER_SHAKE_INTERVAL,
        NIGHT_SHADE_DEFENDER_SHAKE_CYCLES);

    int dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));

    // BUG: This should be
    // ctx->shake.data[XY_PARAM_SHAKE_EXTENT_X] *= dir;
    ctx->shake.x += dir;

    PokemonSprite_StartFade(
        ctx->defenderSprite,
        NIGHT_SHADE_DEFENDER_FADE_START_ALPHA,
        NIGHT_SHADE_DEFENDER_FADE_END_ALPHA,
        NIGHT_SHADE_DEFENDER_FADE_DELAY,
        NIGHT_SHADE_DEFENDER_FADE_COLOR);

    ctx->managedSprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_1);
    int attackerType = BattleAnimUtil_GetBattlerType(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    int defenderType = BattleAnimUtil_GetBattlerType(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));

    if ((attackerType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1 && defenderType == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) || (attackerType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2 && defenderType == BATTLER_TYPE_ENEMY_SIDE_SLOT_1)) {
        int palette = 1 << BattleAnimUtil_GetSpritePalette(ctx->managedSprite);
        PaletteData_StartFade(
            BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
            NIGHT_SHADE_DEFENDER_FADE_PLTTBUF,
            palette,
            NIGHT_SHADE_DEFENDER_FADE_DELAY,
            NIGHT_SHADE_DEFENDER_FADE_START_ALPHA,
            NIGHT_SHADE_DEFENDER_FADE_END_ALPHA,
            NIGHT_SHADE_DEFENDER_FADE_COLOR);
        ctx->animateManagedSprite = TRUE;

        if (BattleAnimSystem_IsBattlerSemiInvulnerable(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys)) == FALSE) {
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_HIDE, TRUE);
        }
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_NightShadeDefender, ctx);
}

static BOOL SpiteContext_UpdateFade(SpiteContext *ctx)
{
    BOOL done = FALSE;

    switch (ctx->subState) {
    case SPITE_SUB_STATE_FADE_IN:
        if (AlphaFadeContext_IsDone(&ctx->alpha) == TRUE) {
            ctx->subState++;
            ctx->delay = SPITE_SCROLL_DURATION;
        }
        break;
    case SPITE_SUB_STATE_SCROLL:
        ctx->delay--;

        if (ctx->delay < 0) {
            ctx->subState++;

            AlphaFadeContext_Init(
                &ctx->alpha,
                SPITE_XLU_SPRITE_END_ALPHA,
                SPITE_XLU_SPRITE_START_ALPHA,
                SPITE_BACKGROUND_END_ALPHA,
                SPITE_BACKGROUND_START_ALPHA,
                SPITE_ALPHA_FADE_FRAMES);
        }
        break;
    case SPITE_SUB_STATE_FADE_OUT:
        if (AlphaFadeContext_IsDone(&ctx->alpha) == TRUE) {
            ctx->subState++;
            BgScrollContext_Free(ctx->bgScroll);
        }
        break;
    case SPITE_SUB_STATE_FINISH:
        done = TRUE;
        break;
    }

    return done;
}

static void BattleAnimTask_Spite(SysTask *task, void *param)
{
    SpiteContext *ctx = param;

    switch (ctx->state) {
    case SPITE_STATE_INIT:
        SpiteContext_UpdateFade(ctx);

        if (ManagedSprite_GetDrawFlag(ctx->monSprite) == TRUE) {
            if (BattleAnimSystem_IsBattlerSemiInvulnerable(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys)) == FALSE) {
                PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_HIDE, TRUE);
            }
        }

        ctx->state++;
        break;
    case SPITE_STATE_SCROLL_AND_FADE:
        if (SpiteContext_UpdateFade(ctx)) {
            ctx->state++;
        }
        break;
    case SPITE_STATE_CLEANUP:
        Bg_SetPriority(
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE),
            BattleAnimSystem_GetBgPriority(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE));
        Bg_SetPriority(BATTLE_BG_3D, BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys));

        if (BattleAnimSystem_IsBattlerSemiInvulnerable(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys)) == FALSE) {
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_HIDE, FALSE);
        }

        Bg_ClearTilesRange(
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE),
            0x4000,
            0,
            BattleAnimSystem_GetHeapID(ctx->battleAnimSys));
        Bg_ClearTilemap(
            BattleAnimSystem_GetBgConfig(ctx->battleAnimSys),
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE));

        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Spite(BattleAnimSystem *system)
{
    SpiteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(SpiteContext));

    ctx->battleAnimSys = system;
    ctx->paletteData = BattleAnimSystem_GetPaletteData(ctx->battleAnimSys);

    // Small Explanation of what is happening here:
    // First, the battle anim script for Spite creates a copy of the defenders 3D sprites
    // as a 2D (hardware) sprite. It then loads that sprite into BATTLE_ANIM_BG_BASE (i.e. BG Layer 2).

    // Set BG Base to transparent
    BattleAnimUtil_SetEffectBaseBgBlending(ctx->battleAnimSys, SPITE_XLU_SPRITE_START_ALPHA, SPITE_BACKGROUND_START_ALPHA);

    // Setup task to slowly fade in BG Base
    AlphaFadeContext_Init(
        &ctx->alpha,
        SPITE_XLU_SPRITE_START_ALPHA,
        SPITE_XLU_SPRITE_END_ALPHA,
        SPITE_BACKGROUND_START_ALPHA,
        SPITE_BACKGROUND_END_ALPHA,
        SPITE_ALPHA_FADE_FRAMES);

    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));

    s16 defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    s16 defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);
    defenderY -= PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_SHADOW_HEIGHT);
    defenderX -= MON_SPRITE_FRAME_WIDTH / 2;
    defenderY -= MON_SPRITE_FRAME_HEIGHT / 2;

    ctx->monSprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);
    int defenderType = BattleAnimUtil_GetBattlerType(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));

    if (defenderType == BATTLER_TYPE_ENEMY_SIDE_SLOT_2 || defenderType == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
        // P1 and E2 3D sprites require special handling so we use the 2D sprite with a higher priority instead
        ManagedSprite_SetDrawFlag(ctx->monSprite, TRUE);
        ManagedSprite_SetExplicitPriority(ctx->monSprite, 2);
    } else {
        // Make sure BG Base is drawn on top of the 3D Pokemon sprite and disable drawing
        // of the 2D Pokemon sprite.
        Bg_SetPriority(
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE),
            BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys));
        Bg_SetPriority(BATTLE_BG_3D, BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys) + 1);
        ManagedSprite_SetDrawFlag(ctx->monSprite, FALSE);
    }

    // Setup scrolling for BG Base
    ctx->bgScroll = BgScrollContext_New(
        defenderY,
        defenderY + MON_SPRITE_FRAME_HEIGHT,
        SPITE_SCROLL_ANGLE_INCREMENT,
        SPITE_SCROLL_AMPLITUDE,
        SPITE_SCROLL_SPEED,
        BattleAnimSystem_GetBgID(system, BATTLE_ANIM_BG_BASE),
        0,
        BattleAnimUtil_MakeBgOffsetValue(-defenderX, -defenderY),
        BattleAnimSystem_GetHeapID(system));

    PaletteData_BlendMulti(ctx->paletteData, SPITE_BLEND_PLTTBUF, 1 << SPITE_BLEND_PALETTE, SPITE_BLEND_FRACTION, SPITE_BLEND_COLOR);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Spite, ctx);
}

static void ov12_02230BE0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02230BE0 *v0 = param1;
    BOOL v1;
    f32 v2, v3;
    int v4, v5;

    switch (v0->unk_0C) {
    case 0:
        v1 = ScaleLerpContext_Update(&v0->unk_14);

        if (v1 == 1) {
            ScaleLerpContext_GetAffineScale(&v0->unk_14, &v2, &v3);
            ManagedSprite_SetAffineScale(v0->unk_10, v2 * v0->unk_54, v3);
        } else {
            v0->unk_0C++;
            v0->unk_4C = 5;

            ScaleLerpContext_Init(
                &v0->unk_14, 10, 10, 1, 8);
        }
        break;
    case 1:
        v1 = ValueLerpContext_Update(&v0->unk_38);
        ManagedSprite_SetAffineZRotation(v0->unk_10, v0->unk_38.value);

        if (v1 == 0) {
            if (v0->unk_4C > 0) {
                v0->unk_4C--;

                v4 = v0->unk_38.value;
                v5 = v0->unk_50;
                v0->unk_50 = v0->unk_38.value;

                ValueLerpContext_Init(&v0->unk_38, v4, v5, 4);
            } else {
                v0->unk_0C++;
            }
        }
        break;
    case 2:
        v1 = ScaleLerpContext_Update(&v0->unk_14);

        if (v1 == 1) {
            ScaleLerpContext_GetAffineScale(&v0->unk_14, &v2, &v3);
            ManagedSprite_SetAffineScale(v0->unk_10, v2 * v0->unk_54, v3);
        } else {
            v0->unk_0C++;
        }
        break;
    case 3:
        Sprite_DeleteAndFreeResources(v0->unk_10);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02230CEC(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02230BE0 *v0;
    int v1;
    int v2;
    s16 v3, v4;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02230BE0));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v1 = BattleAnimUtil_GetTransformDirectionX(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(v0->unk_00, 0) == 1) {
        v0->unk_54 = -1;
        v2 = v1 * -1;
    } else {
        v0->unk_54 = 1;
        v2 = v1;
    }

    v3 = BattleAnimUtil_GetBattlerPos(param0, BattleAnimSystem_GetAttacker(v0->unk_00), 0);
    v4 = BattleAnimUtil_GetBattlerPos(param0, BattleAnimSystem_GetAttacker(v0->unk_00), 1);

    v0->unk_10 = param3;

    ManagedSprite_SetAffineOverwriteMode(v0->unk_10, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAffineScale(v0->unk_10, 1, 1);
    ManagedSprite_SetPositionXY(v0->unk_10, v3, v4);
    ManagedSprite_OffsetPositionXY(v0->unk_10, 40 * v1, 0);
    ManagedSprite_SetPriority(v0->unk_10, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_10, 1);
    ManagedSprite_SetAffineTranslation(v0->unk_10, -12 * v2, 12);

    if (BattleAnimUtil_GetBattlerSide(param0, BattleAnimSystem_GetAttacker(param0)) == 0x4) {
        ManagedSprite_SetAnim(v0->unk_10, 1);
    } else {
        ManagedSprite_SetAnim(v0->unk_10, 0);
    }

    ScaleLerpContext_Init(&v0->unk_14, 1, 10, 10, 8);

    if (v2 >= 0) {
        ValueLerpContext_Init(&v0->unk_38, (359 * 0xffff) / 360, (320 * 0xffff) / 360, 4);
        v0->unk_50 = ((359 * 0xffff) / 360);
    } else {
        ValueLerpContext_Init(&v0->unk_38, (0 * 0xffff) / 360, (40 * 0xffff) / 360, 4);
        v0->unk_50 = ((0 * 0xffff) / 360);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02230BE0, v0);
}

static void ov12_02230E24(UnkStruct_ov12_02230E24 *param0, ManagedSprite *param1, s16 param2, s16 param3, BOOL param4)
{
    param0->unk_00 = param1;

    ScaleLerpContext_Init(&param0->unk_04, 10, 10, 8, 8);

    param0->unk_2C = 3;
    param0->unk_30 = 8;
    param0->unk_34 = 10;
    param0->unk_28 = param4;

    ManagedSprite_SetPositionXY(param0->unk_00, param2, param3);
    ManagedSprite_SetPositionXY(param0->unk_00, param2, param3);
    ManagedSprite_SetAffineOverwriteMode(param0->unk_00, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetPriority(param0->unk_00, 100);
    ManagedSprite_SetExplicitPriority(param0->unk_00, 1);

    if (param4) {
        ManagedSprite_SetAffineScale(param0->unk_00, -1, 1);
    }

    ManagedSprite_SetDrawFlag(param0->unk_00, 0);
}

static void ov12_02230E9C(UnkStruct_ov12_02230E24 *param0)
{
    Sprite_DeleteAndFreeResources(param0->unk_00);
}

static void ov12_02230EA8(UnkStruct_ov12_02230E24 *param0)
{
    ManagedSprite_SetDrawFlag(param0->unk_00, 1);
    ManagedSprite_SetAnimateFlag(param0->unk_00, 1);
}

static BOOL ov12_02230EC0(UnkStruct_ov12_02230E24 *param0)
{
    BOOL v0;
    f32 v1, v2;
    int v3;

    v0 = ScaleLerpContext_Update(&param0->unk_04);

    if (v0 == 1) {
        ScaleLerpContext_GetAffineScale(&param0->unk_04, &v1, &v2);

        if (param0->unk_28) {
            ManagedSprite_SetAffineScale(param0->unk_00, -v1, 1);
        } else {
            ManagedSprite_SetAffineScale(param0->unk_00, v1, 1);
        }
    } else {
        if (param0->unk_2C > 0) {
            param0->unk_2C--;
            ScaleLerpContext_Init(&param0->unk_04, param0->unk_30, 10, param0->unk_34, 8);
            v3 = param0->unk_30;
            param0->unk_30 = param0->unk_34;
            param0->unk_34 = v3;
        } else {
            return 0;
        }
    }

    return 1;
}

static void ov12_02230F3C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02230F3C *v0 = param1;
    int v1;
    BOOL v2;

    switch (v0->unk_0C) {
    case 0:
        if (v0->unk_10 >= 4) {
            v0->unk_10 = 0;
            ov12_02230EA8(&v0->unk_44[v0->unk_14]);
            v0->unk_14++;

            if (v0->unk_14 >= 4) {
                v0->unk_0C++;
            }
        }

        v0->unk_10++;
        break;
    case 1:
        if (ShakeContext_UpdateAndApplyToMon(&v0->unk_20, v0->unk_1C, v0->unk_1E, v0->unk_18) == 0) {
            v0->unk_0C++;
        }
        break;
    case 2:
        for (v1 = 0; v1 < 4; v1++) {
            v2 = ov12_02230EC0(v0->unk_44 + v1);
        }

        if (v2 == 0) {
            v0->unk_0C++;
        }
        break;
    case 3:
        PokemonSprite_SetAttribute(v0->unk_18, MON_SPRITE_X_CENTER, v0->unk_1C);
        PokemonSprite_SetAttribute(v0->unk_18, MON_SPRITE_Y_CENTER, v0->unk_1E);

        for (v1 = 0; v1 < 4; v1++) {
            ov12_02230E9C(v0->unk_44 + v1);
        }

        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02231010(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02230F3C *v0;
    int v1;
    int v2;
    int v3;
    int v4;
    SpriteTemplate v5;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02230F3C));
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v2 = BattleAnimSystem_GetDefender(param0);

    v0->unk_18 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, v2);
    v0->unk_1C = PokemonSprite_GetAttribute(v0->unk_18, MON_SPRITE_X_CENTER);
    v0->unk_1E = PokemonSprite_GetAttribute(v0->unk_18, MON_SPRITE_Y_CENTER);

    ShakeContext_Init(&v0->unk_20, 4, 0, 1, 1);

    v3 = v0->unk_1E + 16;
    v4 = 0;
    v5 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00);

    for (v1 = 0; v1 < 4; v1++) {
        if (v1 == 0) {
            ov12_02230E24(&v0->unk_44[v1], param3, v0->unk_1C, v3, v4);
        } else {
            ov12_02230E24(&v0->unk_44[v1], SpriteSystem_NewSprite(param1, param2, &v5), v0->unk_1C, v3, v4);
        }

        v3 -= 10;
        v4 ^= 1;
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02230F3C, v0);
}

static void ov12_022310D4(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022310D4 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        if (PosLerpContext_Update(&v0->unk_18)) {
            XYTransformContext_ApplyPosOffsetToMon(&v0->unk_18, v0->unk_10, v0->unk_14, v0->unk_16);
        } else {
            PosLerpContext_Init(
                &v0->unk_18, v0->unk_18.x, 0, 0, 0, 2);
            v0->unk_0C++;
        }

        return;
    case 1:
        if (PosLerpContext_Update(&v0->unk_18)) {
            XYTransformContext_ApplyPosOffsetToMon(&v0->unk_18, v0->unk_10, v0->unk_14, v0->unk_16);
        } else {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_X_CENTER, v0->unk_14);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_16);
            PosLerpContext_Init(&v0->unk_18, 0, -32 * v0->unk_3C, 0, 0, 4);
            v0->unk_0C++;
        }

        return;
    case 2:
        if (ov12_02225D2C(&v0->unk_4C, &v0->unk_70, v0->unk_48) == 0) {
            XYTransformContext_InitParabolic(&v0->unk_4C, &v0->unk_70, v0->unk_44, v0->unk_14, v0->unk_46, v0->unk_16, 10, -(32 * FX32_ONE));
            v0->unk_0C++;
        }
        break;
    case 3:
        if (ov12_02225D2C(&v0->unk_4C, &v0->unk_70, v0->unk_48) == 0) {
            ManagedSprite_SetDrawFlag(v0->unk_48, 0);
            v0->unk_0C++;
        }
        break;
    case 4:
        if (PosLerpContext_Update(&v0->unk_18)) {
            XYTransformContext_ApplyPosOffsetToMon(&v0->unk_18, v0->unk_10, v0->unk_14, v0->unk_16);
        } else {
            PosLerpContext_Init(&v0->unk_18, v0->unk_18.x, 0, 0, 0, 4);
            v0->unk_0C++;
        }
        break;
    case 5:
        if (PosLerpContext_Update(&v0->unk_18)) {
            XYTransformContext_ApplyPosOffsetToMon(&v0->unk_18, v0->unk_10, v0->unk_14, v0->unk_16);
        } else {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_X_CENTER, v0->unk_14);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER, v0->unk_16);

            v0->unk_0C++;
        }
        break;
    case 6:
        Sprite_DeleteAndFreeResources(v0->unk_48);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_022312A4(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_022310D4 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_022310D4));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_3C = BattleAnimUtil_GetTransformDirectionX(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));
    v0->unk_14 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v0->unk_16 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);

    PosLerpContext_Init(&v0->unk_18, 0, -16 * v0->unk_3C, 0, 0, 4);

    v0->unk_40 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));
    v0->unk_44 = PokemonSprite_GetAttribute(v0->unk_40, MON_SPRITE_X_CENTER);
    v0->unk_46 = PokemonSprite_GetAttribute(v0->unk_40, MON_SPRITE_Y_CENTER);
    v0->unk_48 = param3;

    ManagedSprite_SetAnimateFlag(v0->unk_48, 1);
    ManagedSprite_SetPriority(v0->unk_48, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_48, 1);

    XYTransformContext_InitParabolic(&v0->unk_4C, &v0->unk_70, v0->unk_14, v0->unk_44, v0->unk_16, v0->unk_46, 10, 32 * FX32_ONE);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_022310D4, v0);
}

static void BattleAnimTask_FaintAttack(SysTask *task, void *param)
{
    FaintAttackContext *ctx = param;

    switch (ctx->state) {
    case FAINT_ATTACK_STATE_REVOLVE:
        if (RevolutionContext_UpdateAndApplyToSprite(
                &ctx->revs,
                ctx->attackerX,
                ctx->attackerY - ctx->attackerShadowHeight,
                ctx->sprite)
            == FALSE) {
            ctx->state++;
            ctx->delay = FAINT_ATTACK_FADE_IN_DELAY;
        }
        break;
    case FAINT_ATTACK_STATE_WAIT:
        ctx->delay--;

        if (ctx->delay < 0) {
            ctx->state++;

            AlphaFadeContext_Init(
                &ctx->alpha,
                FAINT_ATTACK_SPRITE_END_ALPHA,
                FAINT_ATTACK_SPRITE_START_ALPHA,
                16 - FAINT_ATTACK_SPRITE_END_ALPHA,
                16 - FAINT_ATTACK_SPRITE_START_ALPHA,
                FAINT_ATTACK_ALPHA_FADE_FRAMES);
        }
        break;
    case FAINT_ATTACK_STATE_FADE_IN:
        if (AlphaFadeContext_IsDone(&ctx->alpha)) {
            ManagedSprite_SetDrawFlag(ctx->sprite, TRUE);
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_HIDE, FALSE);
            ctx->state++;
        }
        break;
    case FAINT_ATTACK_STATE_CLEANUP:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}

void BattleAnimScriptFunc_FaintAttack(BattleAnimSystem *system)
{
    FaintAttackContext *ctx = BattleAnimUtil_Alloc(system, sizeof(FaintAttackContext));

    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);

    int dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
    ctx->attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->attackerShadowHeight = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_SHADOW_HEIGHT);
    ctx->attackerY -= REVOLUTION_CONTEXT_OVAL_RADIUS_Y_INT;
    ctx->sprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);

    ManagedSprite_SetExplicitOamMode(ctx->sprite, GX_OAM_MODE_XLU);
    PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_HIDE, TRUE);

    RevolutionContext_InitOvalRevolutions(&ctx->revs, FAINT_ATTACK_REVOLUTION_COUNT, FAINT_ATTACK_REVOLUTION_FRAMES);
    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, FAINT_ATTACK_SPRITE_START_ALPHA, 16 - FAINT_ATTACK_SPRITE_START_ALPHA);
    AlphaFadeContext_Init(
        &ctx->alpha,
        FAINT_ATTACK_SPRITE_START_ALPHA,
        FAINT_ATTACK_SPRITE_END_ALPHA,
        16 - FAINT_ATTACK_SPRITE_START_ALPHA,
        16 - FAINT_ATTACK_SPRITE_END_ALPHA,
        FAINT_ATTACK_ALPHA_FADE_FRAMES);

    ctx->revs.data[XY_PARAM_REV_RADIUS_X] *= dir;

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_FaintAttack, ctx);
    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}

static BOOL ov12_02231508(UnkStruct_ov12_02231508 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_38) {
    case 0:
        if (ScaleLerpContext_Update(&param0->unk_14)) {
            PokemonSprite_SetAttribute(param0->unk_10, MON_SPRITE_SCALE_Y, param0->unk_14.y);
        } else {
            param0->unk_38++;
            ScaleLerpContext_Init(
                &param0->unk_14, 15, 10, 10, 12);
        }
        break;
    case 1:
        if (ScaleLerpContext_Update(&param0->unk_14)) {
            PokemonSprite_SetAttribute(param0->unk_10, MON_SPRITE_SCALE_Y, param0->unk_14.y);
        } else {
            PokemonSprite_SetAttribute(param0->unk_10, MON_SPRITE_SCALE_Y, 0x100);
            param0->unk_38++;
        }
        break;
    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL ov12_02231584(UnkStruct_ov12_02231508 *param0)
{
    BOOL v0 = 0;
    BOOL v1;

    switch (param0->unk_40) {
    case 0:
        ScaleLerpContext_UpdateAndApplyToSprite(&param0->unk_44, param0->unk_3C);
        v1 = PosLerpContext_Update(&param0->unk_68);

        if (v1) {
            XYTransformContext_ApplyPosOffsetToSprite(&param0->unk_68, param0->unk_3C, param0->unk_B4, param0->unk_B6);
        } else {
            param0->unk_40++;
            AlphaFadeContext_Init(&param0->unk_8C, 16, 0, 14, 16, 8);
        }
        break;
    case 1:
        if (AlphaFadeContext_IsDone(&param0->unk_8C)) {
            ManagedSprite_SetDrawFlag(param0->unk_3C, 0);
            param0->unk_40++;
        }
        break;

    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_02231608(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02231508 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        ov12_02231508(v0);

        if (ov12_02231584(v0)) {
            v0->unk_0C++;
        }
        break;
    case 1:
        Sprite_DeleteAndFreeResources(v0->unk_3C);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02231650(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02231508 *v0;
    int v1;
    int v2;
    s16 v3;
    s16 v4;
    int v5;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02231508));
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v1 = BattleAnimUtil_GetTransformDirectionX(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v2 = BattleAnimUtil_GetTransformDirectionY(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));

    v3 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v4 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);

    ScaleLerpContext_Init(&v0->unk_14, 10, 10, 15, 12);
    v0->unk_3C = param3;

    ManagedSprite_SetAnimateFlag(v0->unk_3C, 1);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_3C, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitOamMode(v0->unk_3C, GX_OAM_MODE_XLU);
    ManagedSprite_SetPriority(v0->unk_3C, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_3C, 1);

    v0->unk_B4 = v3 + (32 * v1);
    v0->unk_B6 = v4;

    if (v2 < 0) {
        v5 = -8;
    } else {
        v5 = -24;
    }

    PosLerpContext_Init(&v0->unk_68, 0, 0 * v1, 0, v5 * v2, 32);
    ScaleLerpContext_Init(&v0->unk_44, 5, 10, 12, 32);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 31, 26);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02231608, v0);
}

static void ov12_02231760(UnkStruct_ov12_02231760 *param0)
{
    switch (param0->unk_68) {
    case 0:
        PosLerpContext_Init(&param0->unk_18, 0, 80 / 2, 0, 80 / 2, 8);
        break;
    case 1:
        PosLerpContext_Init(&param0->unk_18, 0, 0, 0, -80, 8);
        break;
    case 2:
        PosLerpContext_Init(&param0->unk_18, 0, -80, 0, 80, 8);
        break;
    case 3:
        PosLerpContext_Init(&param0->unk_18, 0, 0, 0, -80, 8);
        break;
    case 4:
        PosLerpContext_Init(&param0->unk_18, 0, 80, 0, 80, 8);
        break;
    case 5:
        PosLerpContext_Init(&param0->unk_18, 0, -80 / 2, 0, -80 / 2, 8);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov12_0223181C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02231760 *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        v0->unk_6C++;

        if (v0->unk_6C > 4) {
            ov12_02231760(v0);
            v0->unk_0C++;
            v0->unk_6C = 0;
        }
        break;
    case 1:
        if (PosLerpContext_Update(&v0->unk_18)) {
            XYTransformContext_ApplyPosOffsetToSprite(&v0->unk_18, v0->unk_14, v0->unk_64, v0->unk_66);
        } else {
            v0->unk_68++;

            if (v0->unk_68 < 6) {
                v0->unk_0C = 0;
                v0->unk_64 += v0->unk_18.x;
                v0->unk_66 += v0->unk_18.y;
            } else {
                v0->unk_0C++;

                ManagedSprite_SetExplicitOamMode(v0->unk_14, GX_OAM_MODE_XLU);
                AlphaFadeContext_Init(
                    &v0->unk_3C, 16, 0, 0, 16, 16);

                PokemonSprite_StartFade(v0->unk_10, 0, 10, 0, GX_RGB(31, 31, 31));
            }
        }
        break;
    case 2:
        if (AlphaFadeContext_IsDone(&v0->unk_3C)) {
            ManagedSprite_SetDrawFlag(v0->unk_14, 0);
        }

        if (PokemonSprite_IsFadeActive(v0->unk_10) == 0) {
            v0->unk_0C++;
            PokemonSprite_StartFade(v0->unk_10, 10, 0, 0, GX_RGB(31, 31, 31));
        }
        break;
    case 3:
        if (PokemonSprite_IsFadeActive(v0->unk_10) == 0) {
            v0->unk_0C++;
        }
        break;
    case 4:
        Sprite_DeleteAndFreeResources(v0->unk_14);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02231950(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02231760 *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02231760));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));
    v0->unk_14 = param3;

    ManagedSprite_SetPriority(v0->unk_14, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_14, 1);
    ManagedSprite_GetPositionXY(v0->unk_14, &v0->unk_64, &v0->unk_66);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_0223181C, v0);
}

static void ov12_022319AC(UnkStruct_ov12_022319AC *param0)
{
    switch (param0->unk_50) {
    case 0:
        PosLerpContext_Init(&param0->unk_28, 0, 80, 0, 80, 4);
        break;
    case 1:
        PosLerpContext_Init(&param0->unk_28, 0, 0, 0, -80, 4);
        break;
    case 2:
        PosLerpContext_Init(&param0->unk_28, 0, -80, 0, 80, 4);
        break;
    case 3:
        PosLerpContext_Init(&param0->unk_28, 0, 80 / 2, 0, -80 / 2, 4);
        break;
    default:
        GF_ASSERT(0);
        break;
    }
}

static void ov12_02231A38(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022319AC *v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:
        v0->unk_54++;

        if (v0->unk_54 > 1) {
            ov12_022319AC(v0);
            v0->unk_0C++;
            v0->unk_54 = 0;
        }
        break;
    case 1:
        if (PosLerpContext_Update(&v0->unk_28)) {
            XYTransformContext_ApplyPosOffsetToSprite(&v0->unk_28, v0->unk_24, v0->unk_4C, v0->unk_4E);
        } else {
            v0->unk_50++;

            if (v0->unk_50 < 4) {
                v0->unk_0C = 0;
                v0->unk_4C += v0->unk_28.x;
                v0->unk_4E += v0->unk_28.y;
            } else {
                v0->unk_0C++;
                v0->unk_54 = 8;

                ManagedSprite_SetAnim(v0->unk_24, 1);
                ManagedSprite_SetAnimateFlag(v0->unk_24, 1);
            }
        }
        break;
    case 2:
        v0->unk_54--;

        if (v0->unk_54 < 0) {
            v0->unk_0C++;

            PaletteData_StartFade(BattleAnimSystem_GetPaletteData(v0->unk_00), 0x1, BattleAnimSystem_GetBaseBgPalettes(v0->unk_00), -8, 0, 16, 0xffff);

            for (v1 = 0; v1 < 4; v1++) {
                if (v0->unk_14[v1]) {
                    PokemonSprite_StartFade(v0->unk_14[v1], 14, 16, 0, 0xffff);
                }
            }
        }
        break;
    case 3:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(v0->unk_00)) == 0) {
            v0->unk_0C++;
            PaletteData_StartFade(BattleAnimSystem_GetPaletteData(v0->unk_00), 0x1, BattleAnimSystem_GetBaseBgPalettes(v0->unk_00), -8, 16, 0, 0xffff);

            for (v1 = 0; v1 < 4; v1++) {
                if (v0->unk_14[v1]) {
                    PokemonSprite_StartFade(v0->unk_14[v1], 2, 0, 0, 0xffff);
                }
            }
        }
        break;
    case 4:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(v0->unk_00)) == 0) {
            v0->unk_0C++;
            v0->unk_54 = 4;
            v0->unk_50 = 4;
            v0->unk_58 = 0;
        }
        break;
    case 5:
        v0->unk_54--;

        if (v0->unk_54 < 0) {
            v0->unk_54 = 4;
            v0->unk_50--;

            if (v0->unk_50 < 0) {
                v0->unk_0C++;
            } else {
                ManagedSprite_SetDrawFlag(v0->unk_24, v0->unk_58);
                v0->unk_58 ^= 1;
            }
        }
        break;
    case 6:
        Sprite_DeleteAndFreeResources(v0->unk_24);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02231C1C(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_022319AC *v0;
    int v1;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_022319AC));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));

    for (v1 = 0; v1 < 4; v1++) {
        v0->unk_14[v1] = BattleAnimSystem_GetBattlerSprite(v0->unk_00, v1);
    }

    v0->unk_24 = param3;

    ManagedSprite_SetPriority(v0->unk_24, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_24, 1);
    ManagedSprite_GetPositionXY(v0->unk_24, &v0->unk_4C, &v0->unk_4E);

    v0->unk_4C -= 80 / 2;
    v0->unk_4E -= 80 / 2;

    ManagedSprite_SetPositionXY(v0->unk_24, v0->unk_4C, v0->unk_4E);
    ManagedSprite_SetExplicitOamMode(v0->unk_24, GX_OAM_MODE_XLU);

    v0->unk_54 = -16;

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, 31, 26);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02231A38, v0);
}

static void PlayfulHopsContext_InitTilt(PlayfulHopsContext *ctx, BOOL flip)
{
    ValueLerpContext_InitFX32(
        &ctx->angle,
        0,
        PLAYFUL_HOPS_TILT_ANGLE,
        PLAYFUL_HOPS_TILT_FRAMES);

    if (flip) {
        ctx->angle.data[VALUE_PARAM_FX32_STEP_SIZE] *= -1;
        PokemonSprite_SetAttribute(ctx->battlerSprite, MON_SPRITE_X_PIVOT, PLAYFUL_HOPS_SPRITE_X_PIVOT);
    } else {
        PokemonSprite_SetAttribute(ctx->battlerSprite, MON_SPRITE_X_PIVOT, -PLAYFUL_HOPS_SPRITE_X_PIVOT);
    }

    ctx->hopState = PLAYFUL_HOPS_HOP_STATE_TILT;
    ctx->hopDelay = PLAYFUL_HOPS_HOP_DELAY;
}

static BOOL PlayfulHopsContext_UpdateHop(PlayfulHopsContext *ctx)
{
    BOOL done = FALSE;

    switch (ctx->hopState) {
    case PLAYFUL_HOPS_HOP_STATE_TILT:
        ValueLerpContext_UpdateFX32(&ctx->angle);
        PokemonSprite_SetAttribute(ctx->battlerSprite, MON_SPRITE_ROTATION_Z, ctx->angle.value);

        ctx->hopDelay--;

        if (ctx->hopDelay < 0) {
            ctx->hopState++;

            PosLerpContext_Init(
                &ctx->pos,
                ctx->battlerX,
                ctx->battlerX,
                ctx->battlerY,
                ctx->battlerY + PLAYFUL_HOPS_HOP_Y_OFFSET,
                PLAYFUL_HOPS_HOP_FRAMES);
        }
        break;
    case PLAYFUL_HOPS_HOP_STATE_MOVE_DOWN:
        if (ValueLerpContext_UpdateFX32(&ctx->angle)) {
            PokemonSprite_SetAttribute(ctx->battlerSprite, MON_SPRITE_ROTATION_Z, ctx->angle.value);
        }

        if (PosLerpContext_UpdateAndApplyToMon(&ctx->pos, ctx->battlerSprite) == FALSE) {
            ctx->hopState++;
            ValueLerpContext_InitFX32(
                &ctx->angle,
                ctx->angle.value,
                DEG_TO_IDX(0),
                PLAYFUL_HOPS_TILT_FRAMES);

            PosLerpContext_Init(
                &ctx->pos,
                ctx->battlerX,
                ctx->battlerX,
                ctx->battlerY + PLAYFUL_HOPS_HOP_Y_OFFSET,
                ctx->battlerY,
                PLAYFUL_HOPS_HOP_FRAMES);
        }
        break;
    case PLAYFUL_HOPS_HOP_STATE_MOVE_UP:
        PosLerpContext_UpdateAndApplyToMon(&ctx->pos, ctx->battlerSprite);

        if (ValueLerpContext_UpdateFX32(&ctx->angle)) {
            PokemonSprite_SetAttribute(ctx->battlerSprite, MON_SPRITE_ROTATION_Z, ctx->angle.value);
        } else {
            PokemonSprite_SetAttribute(ctx->battlerSprite, MON_SPRITE_X_CENTER, ctx->battlerX);
            PokemonSprite_SetAttribute(ctx->battlerSprite, MON_SPRITE_Y_CENTER, ctx->battlerY);
            PokemonSprite_SetAttribute(ctx->battlerSprite, MON_SPRITE_ROTATION_Z, 0);
            ctx->hopState++;
        }
        break;
    case PLAYFUL_HOPS_HOP_STATE_DONE:
        done = TRUE;
        break;
    }

    return done;
}

static void BattleAnimTask_PlayfulHops(SysTask *task, void *param)
{
    PlayfulHopsContext *ctx = param;

    switch (ctx->state) {
    case PLAYFUL_HOPS_STATE_DO_HOPS:
        if (PlayfulHopsContext_UpdateHop(ctx)) {
            ctx->hopCount++;

            if (ctx->hopCount < PLAYFUL_HOPS_HOP_COUNT) {
                ctx->flipTilt ^= 1;
                PlayfulHopsContext_InitTilt(ctx, ctx->flipTilt);
                PlayfulHopsContext_UpdateHop(ctx);
            } else {
                ctx->state++;
            }
        }
        break;
    case PLAYFUL_HOPS_STATE_CLEANUP:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }
}

void BattleAnimScriptFunc_PlayfulHops(BattleAnimSystem *system)
{
    PlayfulHopsContext *ctx = BattleAnimUtil_Alloc(system, sizeof(PlayfulHopsContext));
    ctx->battleAnimSys = system;

    int dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    if (BattleAnimSystem_GetScriptVar(system, PLAYFUL_HOPS_VAR_TARGET_BATTLER) == BATTLER_ROLE_ATTACKER) {
        ctx->battlerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
        ctx->battlerX = PokemonSprite_GetAttribute(ctx->battlerSprite, MON_SPRITE_X_CENTER);
        ctx->battlerY = PokemonSprite_GetAttribute(ctx->battlerSprite, MON_SPRITE_Y_CENTER);
    } else {
        ctx->battlerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));
        ctx->battlerX = PokemonSprite_GetAttribute(ctx->battlerSprite, MON_SPRITE_X_CENTER);
        ctx->battlerY = PokemonSprite_GetAttribute(ctx->battlerSprite, MON_SPRITE_Y_CENTER);
    }

    PokemonSprite_SetAttribute(ctx->battlerSprite, MON_SPRITE_Y_PIVOT, PLAYFUL_HOPS_SPRITE_Y_PIVOT);

    if (dir == 1) {
        ctx->flipTilt = FALSE;
    } else {
        ctx->flipTilt = TRUE;
    }

    PlayfulHopsContext_InitTilt(ctx, ctx->flipTilt);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_PlayfulHops, ctx);
}

static BOOL SwaggerContext_UpdateScale(SwaggerContext *ctx)
{
    BOOL done = FALSE;

    switch (ctx->subState) {
    case SWAGGER_SUB_STATE_GROW:
        if (ScaleLerpContext_UpdateAndApplyToMon(&ctx->scale, ctx->sprite)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
                ctx->sprite,
                ctx->baseY,
                ctx->spriteHeight,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            ctx->subState++;
        }
        break;
    case SWAGGER_SUB_STATE_WAIT:
        ctx->scaleDelay--;
        if (ctx->scaleDelay < 0) {
            ctx->subState++;
            ScaleLerpContext_Init(
                &ctx->scale,
                SWAGGER_END_SCALE,
                SWAGGER_REF_SCALE,
                SWAGGER_START_SCALE,
                SWAGGER_SCALE_FRAMES);
        }
        break;
    case SWAGGER_SUB_STATE_SHRINK:
        if (ScaleLerpContext_UpdateAndApplyToMon(&ctx->scale, ctx->sprite)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
                ctx->sprite,
                ctx->baseY,
                ctx->spriteHeight,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            ctx->subState++;
        }
        break;
    case SWAGGER_SUB_STATE_FINISH:
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
        done = TRUE;
        break;
    }

    return done;
}

static void BattleAnimTask_Swagger(SysTask *task, void *param)
{
    SwaggerContext *ctx = param;

    switch (ctx->state) {
    case SWAGGER_STATE_SCALE:
        if (SwaggerContext_UpdateScale(ctx)) {
            ctx->state++;
            ctx->delay = SWAGGER_END_DELAY;
        }
        break;
    case SWAGGER_STATE_WAIT:
        ctx->delay--;
        if (ctx->delay < 0) {
            ctx->state++;
        }
        break;
    case SWAGGER_STATE_CLEANUP:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }
}

void BattleAnimScriptFunc_Swagger(BattleAnimSystem *system)
{
    SwaggerContext *ctx = BattleAnimUtil_Alloc(system, sizeof(SwaggerContext));

    ctx->battleAnimSys = system;
    ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));

    ScaleLerpContext_Init(
        &ctx->scale,
        SWAGGER_START_SCALE,
        SWAGGER_REF_SCALE,
        SWAGGER_END_SCALE,
        SWAGGER_SCALE_FRAMES);

    ctx->scaleDelay = SWAGGER_SCALE_DELAY;
    ctx->spriteHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->baseY = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Swagger, ctx);
}

static void ov12_02232084(UnkStruct_ov12_02232084 *param0)
{
    ScaleLerpContext_Init(&param0->unk_18, param0->unk_74 / 100, 10, param0->unk_78 / 100, param0->unk_70 / 100);
    BattleAnimUtil_SetSpriteBgBlending(param0->unk_00, 16, 16 - 16);
    AlphaFadeContext_Init(&param0->unk_3C, 16, 10, 16 - 16, 16 - 10, (param0->unk_70 / 100) * 2);

    param0->unk_64 = 0;
    param0->unk_68 = 0;
}

static BOOL ov12_022320EC(UnkStruct_ov12_02232084 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_64) {
    case 0:
        if (ScaleLerpContext_UpdateAndApplyToSprite(&param0->unk_18, param0->unk_14) == 0) {
            ScaleLerpContext_Init(&param0->unk_18, param0->unk_78 / 100, 10, param0->unk_74 / 100, param0->unk_70 / 100);
            param0->unk_64++;
        }
        break;
    case 1:
        if (ScaleLerpContext_UpdateAndApplyToSprite(&param0->unk_18, param0->unk_14) == 0) {
            param0->unk_68++;

            if (param0->unk_68 < 2) {
                param0->unk_64 = 0;
                ScaleLerpContext_Init(&param0->unk_18, param0->unk_74 / 100, 10, param0->unk_78 / 100, param0->unk_70 / 100);
            } else {
                param0->unk_64++;
            }
        }
        break;
    case 2:
        if (AlphaFadeContext_IsDone(&param0->unk_3C)) {
            param0->unk_64++;
            v0 = 1;
        }
        break;
    case 3:
        v0 = 1;
        break;
    }

    return v0;
}

static BOOL ov12_022321C4(UnkStruct_ov12_02232084 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_7C) {
    case 0:
        ov12_02232084(param0);
        ov12_022320EC(param0);
        param0->unk_7C++;
        break;
    case 1:
        if (ov12_022320EC(param0)) {
            param0->unk_6C--;

            if (param0->unk_6C >= 0) {
                param0->unk_70 -= param0->unk_70 / 3;
                param0->unk_74 -= param0->unk_74 / 3;
                param0->unk_78 -= param0->unk_78 / 3;
                param0->unk_7C = 0;
            } else {
                param0->unk_7C++;
                v0 = 1;
            }
        }
        break;
    case 2:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_0223223C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02232084 *v0 = param1;
    BOOL v1, v2;

    switch (v0->unk_0C) {
    case 0:
        if (ov12_022321C4(v0)) {
            v0->unk_0C++;
            v0->unk_10 = 30;

            ManagedSprite_SetAnim(v0->unk_14, 0);
            ManagedSprite_SetAnimateFlag(v0->unk_14, 1);
            ManagedSprite_SetAffineScale(v0->unk_14, 1, 1);

            AlphaFadeContext_Init(&v0->unk_3C, 0, 16, 16, 0, 4);
        }
        break;
    case 1:
        if (v0->unk_10 == 0) {
            BrightnessController_StartTransition(8, 16, 0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
            v0->unk_10 = -1;
        } else {
            if (v0->unk_10 > 0) {
                v0->unk_10--;
            }
        }

        if (v0->unk_10 == -1) {
            if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
                BrightnessController_StartTransition(8, 0, 16, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, BRIGHTNESS_MAIN_SCREEN);
                v0->unk_10 = -2;
            }
        }

        if (ManagedSprite_IsAnimated(v0->unk_14) == 0) {
            v0->unk_0C++;
        }
        break;
    case 2:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
            v0->unk_0C++;
            BattleAnimUtil_SetSpriteBgBlending(v0->unk_00, 16, 0);
            AlphaFadeContext_Init(&v0->unk_3C, 16, 0, 0, 16, 8);
        }
        break;
    case 3:
        if (AlphaFadeContext_IsDone(&v0->unk_3C)) {
            ManagedSprite_SetDrawFlag(v0->unk_14, 0);
            v0->unk_0C++;
        }
        break;
    case 4:
        Sprite_DeleteAndFreeResources(v0->unk_14);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02232378(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02232084 *v0;
    PokemonSprite *v1;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02232084));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_14 = param3;

    ManagedSprite_SetPriority(v0->unk_14, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_14, 1);
    ManagedSprite_SetAffineOverwriteMode(v0->unk_14, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitOamMode(v0->unk_14, GX_OAM_MODE_XLU);
    ManagedSprite_SetAnimationFrame(v0->unk_14, 4);

    v0->unk_6C = 3;
    v0->unk_70 = (4 * 100);
    v0->unk_74 = (15 * 100);
    v0->unk_78 = (10 * 100);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_0223223C, v0);
}

static void ReturnContext_InitMovement(ReturnContext *ctx)
{
    switch (ctx->moveCount) {
    case 0:
    case 2:
        PosLerpContext_Init(
            &ctx->pos,
            RETURN_MOVE_START_X,
            RETURN_MOVE_END_X,
            RETURN_MOVE_START_Y,
            RETURN_MOVE_END_Y,
            RETURN_MOVE_FRAMES);
        break;
    case 1:
    case 3:
        PosLerpContext_Init(
            &ctx->pos,
            RETURN_MOVE_END_X,
            RETURN_MOVE_START_X,
            RETURN_MOVE_END_Y,
            RETURN_MOVE_START_Y,
            RETURN_MOVE_FRAMES);
        break;
    }
}

static void BattleAnimTask_Return(SysTask *task, void *param)
{
    ReturnContext *ctx = param;

    switch (ctx->state) {
    case RETURN_STATE_INIT:
        ReturnContext_InitMovement(ctx);
        ctx->state++;
        break;
    case RETURN_STATE_MOVE:
        if (PosLerpContext_Update(&ctx->pos)) {
            XYTransformContext_ApplyPosOffsetToMon(&ctx->pos, ctx->attackerSprite, ctx->attackerX, ctx->attackerY);
        } else {
            ctx->moveCount++;
            if (ctx->moveCount < RETURN_MOVE_COUNT) {
                ctx->state = RETURN_STATE_INIT;
            } else {
                ctx->state++;
            }
        }
        break;
    case RETURN_STATE_CLEANUP:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_Return(BattleAnimSystem *system)
{
    ReturnContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ReturnContext));

    ctx->battleAnimSys = system;
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
    ctx->attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
    ctx->moveCount = 0;

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Return, ctx);
}

static void BattleAnimTask_VitalThrow(SysTask *task, void *param)
{
    VitalThrowContext *ctx = param;

    switch (ctx->state) {
    case VITAL_THROW_STATE_INIT:
        RevolutionContext_InitOvalRevolutions(
            &ctx->attackerPos,
            VITAL_THROW_REVOLUTION_COUNT,
            VITAL_THROW_REVOLUTION_FRAMES);
        ctx->attackerPos.data[XY_PARAM_REV_RADIUS_X] *= ctx->dir;
        ctx->state++;
        break;
    case VITAL_THROW_STATE_REVOLVE:
        if (RevolutionContext_UpdateAndApplyToMon(
                &ctx->attackerPos,
                ctx->attackerX,
                ctx->attackerY - REVOLUTION_CONTEXT_OVAL_RADIUS_Y_INT,
                ctx->attackerSprite)
            == FALSE) {

            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER, ctx->attackerX);
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER, ctx->attackerY);

            PosLerpContext_Init(
                &ctx->attackerPos,
                ctx->attackerX,
                ctx->attackerX + VITAL_THROW_MOVE_OFFSET_X,
                0,
                0,
                VITAL_THROW_MOVE_FRAMES);

            ctx->attackerPos.data[XY_PARAM_REV_CUR_X] *= ctx->dir;
            ctx->state++;

            PosLerpContext_Update(&ctx->attackerPos);
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER, ctx->attackerPos.x);
        }
        break;
    case VITAL_THROW_STATE_MOVE_ATTACKER:
        if (PosLerpContext_Update(&ctx->attackerPos)) {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER, ctx->attackerPos.x);
        } else {
            PosLerpContext_Init(
                &ctx->defenderPos,
                ctx->defenderX,
                ctx->defenderX + (VITAL_THROW_MOVE_OFFSET_X * ctx->dir),
                0,
                0,
                VITAL_THROW_MOVE_FRAMES);
            ctx->state++;
        }
        break;
    case VITAL_THROW_STATE_MOVE_DEFENDER:
        if (PosLerpContext_Update(&ctx->defenderPos)) {
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER, ctx->defenderPos.x);
        } else {
            PosLerpContext_Init(&ctx->attackerPos, ctx->attackerPos.x, ctx->attackerX, 0, 0, VITAL_THROW_MOVE_BACK_FRAMES);
            ctx->state++;
        }
        break;
    case VITAL_THROW_STATE_MOVE_BACK_ATTACKER:
        if (PosLerpContext_Update(&ctx->attackerPos)) {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER, ctx->attackerPos.x);
        } else {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER, ctx->attackerX);
            PosLerpContext_Init(&ctx->defenderPos, ctx->defenderPos.x, ctx->defenderX, 0, 0, VITAL_THROW_MOVE_BACK_FRAMES);
            ctx->state++;
        }
        break;
    case VITAL_THROW_STATE_MOVE_BACK_DEFENDER:
        if (PosLerpContext_Update(&ctx->defenderPos)) {
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER, ctx->defenderPos.x);
        } else {
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER, ctx->defenderX);
            ctx->state++;
        }
        break;
    case VITAL_THROW_STATE_CLEANUP:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_VitalThrow(BattleAnimSystem *system)
{
    VitalThrowContext *ctx = BattleAnimUtil_Alloc(system, sizeof(VitalThrowContext));

    ctx->battleAnimSys = system;
    ctx->dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
    ctx->attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);

    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));
    ctx->defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    ctx->defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_VitalThrow, ctx);
}

static void ov12_02232720(UnkStruct_ov12_02232720 *param0)
{
    param0->unk_40 = 0;
    ScaleLerpContext_InitXY(&param0->unk_1C, 10, 9, 10, 8, 10, 2);
}

static BOOL ov12_02232744(UnkStruct_ov12_02232720 *param0)
{
    BOOL v0 = 0;

    switch (param0->unk_40) {
    case 0:
        if (ScaleLerpContext_UpdateXYAndApplyToMon(&param0->unk_1C, param0->unk_18)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(param0->unk_18, param0->unk_44, param0->unk_46, param0->unk_1C.data[4], 0);
        } else {
            param0->unk_40++;
            ScaleLerpContext_InitXY(&param0->unk_1C, 9, 11, 8, 15, 10, 2);
        }
        break;
    case 1:
        if (ScaleLerpContext_UpdateXYAndApplyToMon(&param0->unk_1C, param0->unk_18)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(param0->unk_18, param0->unk_44, param0->unk_46, param0->unk_1C.data[4], 0);
        } else {
            param0->unk_40++;
            ScaleLerpContext_InitXY(&param0->unk_1C, 11, 10, 15, 10, 10, 2);
        }
        break;
    case 2:
        if (ScaleLerpContext_UpdateXYAndApplyToMon(&param0->unk_1C, param0->unk_18)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(param0->unk_18, param0->unk_44, param0->unk_46, param0->unk_1C.data[4], 0);
        } else {
            PokemonSprite_SetAttribute(param0->unk_18, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(param0->unk_18, MON_SPRITE_SCALE_Y, 0x100);
            param0->unk_40++;
            v0 = 1;
        }
        break;
    case 3:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_0223283C(ManagedSprite *param0, int *param1, fx32 param2)
{
    *param1 = 0;

    ManagedSprite_SetPriority(param0, 100);
    ManagedSprite_SetExplicitPriority(param0, 1);
    ManagedSprite_SetDrawFlag(param0, 1);
    ManagedSprite_SetAnimateFlag(param0, 1);
    ManagedSprite_SetAnimationSpeed(param0, param2);
    ManagedSprite_SetAnim(param0, 0);
    ManagedSprite_SetAnimationFrame(param0, 0);
    ManagedSprite_TickNFrames(param0, 55 * FX32_ONE);
}

static BOOL ov12_02232888(ManagedSprite *param0, int *param1)
{
    BOOL v0 = 0;

    switch (*param1) {
    case 0:
        if (ManagedSprite_IsAnimated(param0) == 0) {
            (*param1)++;
            v0 = 1;
        }
        break;
    case 1:
        v0 = 1;
        break;
    default:
        v0 = 1;
        break;
    }

    return v0;
}

static void ov12_022328B8(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02232720 *v0 = param1;
    BOOL v1, v2;
    int v3;

    switch (v0->unk_0C) {
    case 0:
        ov12_02232720(v0);
        ov12_0223283C(v0->unk_48[v0->unk_10], &v0->unk_60[v0->unk_10], FX32_ONE * 2);
        v0->unk_0C++;
        break;
    case 1:
        v1 = ov12_02232744(v0);
        v2 = ov12_02232888(v0->unk_48[v0->unk_10], &v0->unk_60[v0->unk_10]);

        if ((v1 == v2) && (v1 == 1)) {
            ManagedSprite_SetAnim(v0->unk_48[v0->unk_10], 1);
            v0->unk_0C++;
        }
        break;
    case 2:
        v0->unk_78[v0->unk_10]--;

        if (v0->unk_78[v0->unk_10] < 0) {
            v0->unk_10++;

            if (v0->unk_10 < 6) {
                v0->unk_0C = 0;
            } else {
                v0->unk_0C++;
            }
        }
        break;
    case 3:
        for (v3 = 0; v3 < 6; v3++) {
            ov12_0223283C(v0->unk_48[v3], &v0->unk_60[v3], FX32_ONE * 2);
        }

        v0->unk_0C++;
        break;
    case 4:
        for (v3 = 0; v3 < 6; v3++) {
            v1 = ov12_02232888(v0->unk_48[v3], &v0->unk_60[v3]);
        }

        if (v1 == 1) {
            v0->unk_0C++;
        }
        break;
    case 5:
        for (v3 = 0; v3 < 6; v3++) {
            Sprite_DeleteAndFreeResources(v0->unk_48[v3]);
        }

        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_022329E0(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02232720 *v0;
    SpriteTemplate v1;
    int v2;
    s16 v3;
    s16 v4;
    s16 v5;
    s16 v6;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02232720));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_18 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v3 = PokemonSprite_GetAttribute(v0->unk_18, MON_SPRITE_X_CENTER);
    v4 = PokemonSprite_GetAttribute(v0->unk_18, MON_SPRITE_Y_CENTER);

    v0->unk_44 = v4;
    v0->unk_46 = BattleAnimSystem_GetBattlerSpriteOffset(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    v1 = BattleAnimSystem_GetLastSpriteTemplate(v0->unk_00);

    for (v2 = 0; v2 < 6; v2++) {
        if (v2 == 0) {
            v0->unk_48[v2] = param3;
        } else {
            v0->unk_48[v2] = SpriteSystem_NewSprite(param1, param2, &v1);
        }

        ManagedSprite_SetDrawFlag(v0->unk_48[v2], 0);

        v5 = FX_Mul(FX_CosIdx((((90 * 0xffff) / 360) / (6 / 2)) * (v2 / 2)), 48 * FX32_ONE) >> FX32_SHIFT;
        v6 = FX_Mul(FX_SinIdx((((90 * 0xffff) / 360) / (6 / 2)) * (v2 / 2)), 48 * FX32_ONE) >> FX32_SHIFT;

        if ((v2 % 2) == 0) {
            v5 = v3 + v5;
            ManagedSprite_SetFlipMode(v0->unk_48[v2], 1);
        } else {
            v5 = v3 - v5;
        }

        v6 = v4 - v6;
        ManagedSprite_SetPositionXY(v0->unk_48[v2], v5, v6);

        if (v2 < 2) {
            v0->unk_78[v2] = 8;
        } else {
            v0->unk_78[v2] = 0;
        }
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_022328B8, v0);
}

static void ov12_02232B40(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02232B40 *v0 = param1;
    int v1, v2;

    switch (v0->unk_0C) {
    case 0:
        ManagedSprite_SetAnimateFlag(v0->unk_5C, 1);
        v0->unk_0C++;
        break;
    case 1:
        if (ManagedSprite_IsAnimated(v0->unk_5C) == 0) {
            ManagedSprite_SetAnimateFlag(v0->unk_5C, 0);
            v0->unk_0C++;
            ScaleLerpContext_Init(&v0->unk_14, 10, 10, 0, 8);
            v1 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
            v2 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
            PosLerpContext_Init(&v0->unk_38, v1, v0->unk_88, v2, v0->unk_8A, 8);
        }
        break;
    case 2:
        PosLerpContext_UpdateAndApplyToMon(&v0->unk_38, v0->unk_10);

        if (ScaleLerpContext_UpdateAndApplyToMon(&v0->unk_14, v0->unk_10) == 0) {
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_HIDE, 1);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_X, 0x100);
            PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_SCALE_Y, 0x100);
            ManagedSprite_SetAnim(v0->unk_5C, 1);
            ManagedSprite_SetAnimationSpeed(v0->unk_5C, FX32_ONE);
            ManagedSprite_SetAnimateFlag(v0->unk_5C, 1);
            v0->unk_0C++;
        }
        break;
    case 3:
        if (ManagedSprite_IsAnimated(v0->unk_5C) == 0) {
            ManagedSprite_SetAnimateFlag(v0->unk_5C, 0);
            v0->unk_0C++;
            PosLerpContext_Init(&v0->unk_60, 0, 0, v0->unk_8A, 0, 8);
        }
        break;
    case 4:
        if (PosLerpContext_Update(&v0->unk_60)) {
            ManagedSprite_SetPositionXY(v0->unk_5C, v0->unk_88, v0->unk_60.y);
        } else {
            v0->unk_0C++;
        }
        break;
    case 5:
        Sprite_DeleteAndFreeResources(v0->unk_5C);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02232CA8(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02232B40 *v0;
    s16 v1, v2;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02232B40));
    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));

    PokemonSprite_SetAttribute(v0->unk_10, MON_SPRITE_HIDE, 0);

    v0->unk_88 = BattleAnimUtil_GetBattlerPos(param0, BattleAnimSystem_GetAttacker(param0), 0);
    v0->unk_8A = BattleAnimUtil_GetBattlerPos(param0, BattleAnimSystem_GetAttacker(param0), 1);
    v0->unk_5C = param3;

    ManagedSprite_SetPriority(v0->unk_5C, 100);
    ManagedSprite_SetExplicitPriority(v0->unk_5C, 1);
    ManagedSprite_SetPositionXY(v0->unk_5C, v0->unk_88, v0->unk_8A);
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02232B40, v0);
}

static const u16 sMementoPartnerVisibilities[] = {
    [BATTLER_TYPE_SOLO_PLAYER] = FALSE,
    [BATTLER_TYPE_SOLO_ENEMY] = FALSE,
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_1] = TRUE,
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_1] = FALSE,
    [BATTLER_TYPE_PLAYER_SIDE_SLOT_2] = FALSE,
    [BATTLER_TYPE_ENEMY_SIDE_SLOT_2] = TRUE
};

static void MementoContext_BlendSprite(MementoContext *ctx, ManagedSprite *sprite)
{
    int paletteMask = 1 << BattleAnimUtil_GetSpritePalette(sprite);
    PaletteData_BlendMulti(
        ctx->paletteData,
        PLTTBUF_MAIN_OBJ,
        paletteMask,
        MEMENTO_SPRITE_BLEND_FRACTION,
        MEMENTO_SPRITE_BLEND_COLOR);
}

static void MementoContext_InitAttacker(MementoContext *ctx)
{
    ScaleLerpContext_InitXY(
        &ctx->scale,
        MEMENTO_REF_SCALE,
        MEMENTO_REF_SCALE,
        MEMENTO_START_SCALE_Y,
        MEMENTO_END_SCALE_Y,
        MEMENTO_REF_SCALE,
        MEMENTO_STRETCH_FRAMES);
    ScaleLerpContext_Init(
        &ctx->scaleX,
        MEMENTO_START_SCALE_X,
        MEMENTO_REF_SCALE,
        MEMENTO_END_SCALE_X,
        MEMENTO_SQUISH_FRAMES);

    ctx->spriteState = MEMENTO_ATTACKER_STATE_STRETCH;
    ctx->spriteDelay = MEMENTO_SQUISH_DELAY;

    int battlerType = BattleAnimUtil_GetBattlerType(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ManagedSprite_SetDrawFlag(ctx->attackerPartnerSprite, sMementoPartnerVisibilities[battlerType]);
    ManagedSprite_SetDrawFlag(ctx->attackerSprite, TRUE);

    f32 scaleX, scaleY;
    ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);

    if (ctx->attackerFlipped == TRUE) {
        scaleX = -scaleX;
    }

    ManagedSprite_SetAffineScale(ctx->attackerSprite, scaleX, scaleY);
    MementoContext_BlendSprite(ctx, ctx->attackerSprite);
}

static BOOL MementoContext_UpdateAttacker(MementoContext *ctx)
{
    BOOL done = FALSE;
    f32 scaleX, scaleY;

    switch (ctx->spriteState) {
    case MEMENTO_ATTACKER_STATE_STRETCH:
        ScaleLerpContext_UpdateXY(&ctx->scale);
        ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
        if (ctx->attackerFlipped == TRUE) {
            scaleX = -scaleX;
        }

        ManagedSprite_SetAffineScale(ctx->attackerSprite, scaleX, scaleY);
        BattleAnimUtil_SetSpriteAnchoredPosition(
            ctx->attackerSprite,
            ctx->attackerY,
            ctx->attackerHeight,
            ctx->scale.data[XY_PARAM_CUR_Y],
            BATTLE_ANIM_ANCHOR_BOTTOM);

        ctx->spriteDelay--;
        if (ctx->spriteDelay < 0) {
            ctx->spriteState++;

            // Only used here to make sure the Y scale of the sprite doesn't change anymore
            ScaleLerpContext_InitXY(
                &ctx->scale,
                MEMENTO_START_SCALE_X,
                MEMENTO_END_SCALE_X,
                MEMENTO_END_SCALE_Y,
                MEMENTO_END_SCALE_Y,
                MEMENTO_REF_SCALE,
                MEMENTO_SQUISH_FRAMES);
        }
        break;
    case MEMENTO_ATTACKER_STATE_SQUISH:
        ScaleLerpContext_UpdateXY(&ctx->scale);
        if (ScaleLerpContext_Update(&ctx->scaleX)) {
            ctx->scale.x = ctx->scaleX.x;

            ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
            if (ctx->attackerFlipped == TRUE) {
                scaleX = -scaleX;
            }

            ManagedSprite_SetAffineScale(ctx->attackerSprite, scaleX, scaleY);
            BattleAnimUtil_SetSpriteAnchoredPosition(
                ctx->attackerSprite,
                ctx->attackerY,
                ctx->attackerHeight,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            ctx->spriteState++;

            ManagedSprite_SetDrawFlag(ctx->attackerPartnerSprite, FALSE);
            ManagedSprite_SetDrawFlag(ctx->attackerSprite, FALSE);

            done = TRUE;
        }
        break;
    case MEMENTO_ATTACKER_STATE_FINISH:
        done = TRUE;
        break;
    }

    return done;
}

static void MementoContext_InitDefender(MementoContext *ctx)
{
    s16 posX, posY;
    ManagedSprite_GetPositionXY(ctx->defenderSprite, &posX, &posY);

    PosLerpContext_Init(
        &ctx->defenderPos,
        posX,
        posX,
        posY - MEMENTO_DEFENDER_Y_OFFSET,
        posY,
        MEMENTO_DEFENDER_ANIM_FRAMES);
    ScaleLerpContext_InitXY(
        &ctx->scale,
        MEMENTO_DEFENDER_START_SCALE_X,
        MEMENTO_START_SCALE_X,
        MEMENTO_END_SCALE_Y,
        MEMENTO_START_SCALE_Y,
        MEMENTO_REF_SCALE,
        MEMENTO_DEFENDER_ANIM_FRAMES);

    f32 scaleX, scaleY;
    ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
    if (ctx->defenderFlipped == TRUE) {
        scaleX = -scaleX;
    }

    ManagedSprite_SetAffineScale(ctx->defenderSprite, scaleX, scaleY);
    PosLerpContext_UpdateAndApplyToSprite(&ctx->defenderPos, ctx->defenderSprite);

    ctx->spriteState = MEMENTO_DEFENDER_STATE_MOVE;
    ctx->spriteDelay = MEMENTO_DEFENDER_SCALE_DELAY;

    int battlerType = BattleAnimUtil_GetBattlerType(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));
    ManagedSprite_SetDrawFlag(ctx->defenderPartnerSprite, sMementoPartnerVisibilities[battlerType]);
    ManagedSprite_SetDrawFlag(ctx->defenderSprite, TRUE);

    MementoContext_BlendSprite(ctx, ctx->defenderSprite);
}

static BOOL MementoContext_UpdateDefender(MementoContext *ctx)
{
    f32 scaleX, scaleY;
    BOOL done = FALSE;
    BOOL scaleActive;

    switch (ctx->spriteState) {
    case MEMENTO_DEFENDER_STATE_MOVE:
        ctx->spriteDelay--;
        PosLerpContext_UpdateAndApplyToSprite(&ctx->defenderPos, ctx->defenderSprite);

        if (ctx->spriteDelay < 0) {
            ctx->spriteState++;
        }
        break;
    case MEMENTO_DEFENDER_STATE_SCALE:
        PosLerpContext_UpdateAndApplyToSprite(&ctx->defenderPos, ctx->defenderSprite);

        scaleActive = ScaleLerpContext_UpdateXY(&ctx->scale);

        ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
        if (ctx->defenderFlipped == TRUE) {
            scaleX = -scaleX;
        }

        ManagedSprite_SetAffineScale(ctx->defenderSprite, scaleX, scaleY);

        if (scaleActive == FALSE) {
            ctx->spriteState++;
            done = TRUE;
        }
        break;
    case MEMENTO_DEFENDER_STATE_FINISH:
        done = TRUE;
        break;
    }

    return done;
}

static void BattleAnimTask_Memento(SysTask *task, void *param)
{
    MementoContext *ctx = param;

    switch (ctx->state) {
    case MEMENTO_STATE_INIT:
        BattleAnimUtil_SetSpriteBgBlending(
            ctx->battleAnimSys,
            MEMENTO_SPRITE_START_ALPHA,
            MEMENTO_BG_START_ALPHA - MEMENTO_SPRITE_START_ALPHA);
        AlphaFadeContext_Init(
            &ctx->alpha,
            MEMENTO_SPRITE_START_ALPHA,
            MEMENTO_SPRITE_END_ALPHA,
            MEMENTO_BG_START_ALPHA - MEMENTO_SPRITE_START_ALPHA,
            MEMENTO_BG_START_ALPHA - MEMENTO_SPRITE_END_ALPHA,
            MEMENTO_ALPHA_FADE_FRAMES);
        ctx->state++;
        break;
    case MEMENTO_STATE_FADE_AND_INIT_ATTACKER:
        if (AlphaFadeContext_IsDone(&ctx->alpha)) {
            ctx->state++;
            MementoContext_InitAttacker(ctx);
        }
        break;
    case MEMENTO_STATE_UPDATE_ATTACKER:
        if (MementoContext_UpdateAttacker(ctx)) {
            ctx->state++;
            ctx->delay = MEMENTO_DEFENDER_DELAY;
        }
        break;
    case MEMENTO_STATE_INIT_DEFENDER:
        ctx->delay--;

        if (ctx->delay < 0) {
            MementoContext_InitDefender(ctx);
            ctx->state++;
        }
        break;
    case MEMENTO_STATE_UPDATE_DEFENDER:
        if (MementoContext_UpdateDefender(ctx)) {
            ctx->state++;
            AlphaFadeContext_Init(
                &ctx->alpha,
                MEMENTO_SPRITE_END_ALPHA,
                MEMENTO_SPRITE_START_ALPHA,
                MEMENTO_BG_START_ALPHA - MEMENTO_SPRITE_END_ALPHA,
                MEMENTO_BG_START_ALPHA - MEMENTO_SPRITE_START_ALPHA,
                MEMENTO_ALPHA_FADE_FRAMES);
        }
        break;
    case MEMENTO_STATE_FADE:
        if (AlphaFadeContext_IsDone(&ctx->alpha)) {
            ctx->state++;
        }
        break;
    case MEMENTO_STATE_CLEANUP:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }

    SpriteSystem_DrawSprites(ctx->pokemonSpriteManager);
}

void BattleAnimScriptFunc_Memento(BattleAnimSystem *system)
{
    MementoContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MementoContext));

    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);
    ctx->paletteData = BattleAnimSystem_GetPaletteData(ctx->battleAnimSys);

    PokemonSprite *attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
    s16 attackerX = PokemonSprite_GetAttribute(attackerSprite, MON_SPRITE_X_CENTER);
    s16 attackerY = PokemonSprite_GetAttribute(attackerSprite, MON_SPRITE_Y_CENTER);
    attackerY -= PokemonSprite_GetAttribute(attackerSprite, MON_SPRITE_SHADOW_HEIGHT);

    PokemonSprite *defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));
    s16 defenderX = PokemonSprite_GetAttribute(defenderSprite, MON_SPRITE_X_CENTER);
    s16 defenderY = PokemonSprite_GetAttribute(defenderSprite, MON_SPRITE_Y_CENTER);
    defenderY -= PokemonSprite_GetAttribute(defenderSprite, MON_SPRITE_SHADOW_HEIGHT);

    ctx->attackerY = attackerY;
    ctx->attackerHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerSprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);

    ManagedSprite_SetPriority(ctx->attackerSprite, MEMENTO_SPRITE_PRIORITY);
    ManagedSprite_SetExplicitPriority(ctx->attackerSprite, MEMENTO_SPRITE_EXP_PRIORITY);
    ManagedSprite_SetPositionXY(ctx->attackerSprite, attackerX, attackerY);
    ManagedSprite_SetDrawFlag(ctx->attackerSprite, FALSE);
    ManagedSprite_SetExplicitOamMode(ctx->attackerSprite, GX_OAM_MODE_XLU);
    ManagedSprite_SetAffineOverwriteMode(ctx->attackerSprite, AFFINE_OVERWRITE_MODE_DOUBLE);

    ctx->defenderSprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_1);

    ManagedSprite_SetPriority(ctx->defenderSprite, MEMENTO_SPRITE_PRIORITY);
    ManagedSprite_SetExplicitPriority(ctx->defenderSprite, MEMENTO_SPRITE_EXP_PRIORITY);
    ManagedSprite_SetPositionXY(ctx->defenderSprite, defenderX, defenderY);
    ManagedSprite_SetDrawFlag(ctx->defenderSprite, FALSE);
    ManagedSprite_SetExplicitOamMode(ctx->defenderSprite, GX_OAM_MODE_XLU);
    ManagedSprite_SetAffineOverwriteMode(ctx->defenderSprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAffineTranslation(ctx->defenderSprite, 0, MON_SPRITE_FRAME_HEIGHT / 2);

    ctx->attackerFlipped = BattleAnimSystem_ShouldBattlerSpriteBeFlipped(ctx->battleAnimSys, BATTLER_ROLE_ATTACKER);
    ctx->defenderFlipped = BattleAnimSystem_ShouldBattlerSpriteBeFlipped(ctx->battleAnimSys, BATTLER_ROLE_DEFENDER);
    ctx->attackerPartnerSprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_2);
    ctx->defenderPartnerSprite = BattleAnimSystem_GetPokemonSprite(ctx->battleAnimSys, BATTLE_ANIM_MON_SPRITE_3);

    ManagedSprite_SetDrawFlag(ctx->attackerPartnerSprite, FALSE);
    ManagedSprite_SetDrawFlag(ctx->defenderPartnerSprite, FALSE);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Memento, ctx);
}

static void ov12_022332E8(UnkStruct_ov12_022332E8 *param0)
{
    ScaleLerpContext_Init(&param0->unk_F8, 25, 10, 10, 10);
    Afterimage_Init(&param0->unk_48, &param0->unk_F8, ScaleLerpContext_Update, param0->unk_38, param0->unk_3A, 9, 3, 1, param0->unk_3C[2], param0->unk_3C[1], param0->unk_3C[0], NULL);
}

static void ov12_02233338(UnkStruct_ov12_022332E8 *param0)
{
    ScaleLerpContext_Init(&param0->unk_F8, 10, 10, 25, 6);
    Afterimage_Init(&param0->unk_48, &param0->unk_F8, ScaleLerpContext_Update, param0->unk_38, param0->unk_3A, 5, 3, 1, param0->unk_3C[0], param0->unk_3C[1], param0->unk_3C[2], NULL);
    ManagedSprite_SetDrawFlag(param0->unk_3C[0], 1);
}

static void ov12_02233394(SysTask *param0, void *param1)
{
    UnkStruct_ov12_022332E8 *v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:
        ov12_022332E8(v0);
        v0->unk_0C++;
        break;
    case 1:
        if (Afterimage_Update(&v0->unk_48) == 0) {
            ManagedSprite_SetDrawFlag(v0->unk_3C[0], 1);
            v0->unk_0C++;
            ShakeContext_Init(&v0->unk_14, 4, 0, 1, 6);
        }
        break;
    case 2:
        if (ShakeContext_UpdateAndApplyToMon(&v0->unk_14, v0->unk_38, v0->unk_3A, v0->unk_10) == 0) {
            v0->unk_0C++;
            ov12_02233338(v0);
        }
        break;
    case 3:
        if (Afterimage_Update(&v0->unk_48) == 0) {
            v0->unk_0C++;
        }
        break;
    case 4:
        for (v1 = 0; v1 < 3; v1++) {
            Sprite_DeleteAndFreeResources(v0->unk_3C[v1]);
        }

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02233454(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_022332E8 *v0;
    int v1;
    SpriteTemplate v2;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_022332E8));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetDefender(param0));
    v0->unk_38 = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_X_CENTER);
    v0->unk_3A = PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_Y_CENTER);
    v0->unk_3A -= PokemonSprite_GetAttribute(v0->unk_10, MON_SPRITE_SHADOW_HEIGHT);

    v2 = BattleAnimSystem_GetLastSpriteTemplate(param0);

    for (v1 = 0; v1 < 3; v1++) {
        if (v1 == 0) {
            v0->unk_3C[v1] = param3;
            ManagedSprite_SetAnim(v0->unk_3C[v1], 1);
        } else {
            v0->unk_3C[v1] = SpriteSystem_NewSprite(v0->unk_04, v0->unk_08, &v2);
            ManagedSprite_SetExplicitOamMode(v0->unk_3C[v1], GX_OAM_MODE_XLU);
        }

        ManagedSprite_SetPriority(v0->unk_3C[v1], 100);
        ManagedSprite_SetExplicitPriority(v0->unk_3C[v1], 1);
        ManagedSprite_SetPositionXY(v0->unk_3C[v1], v0->unk_38, v0->unk_3A);
        ManagedSprite_SetDrawFlag(v0->unk_3C[v1], FALSE);
        ManagedSprite_SetAffineOverwriteMode(v0->unk_3C[v1], AFFINE_OVERWRITE_MODE_DOUBLE);
    }

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233394, v0);
}

static void ov12_0223351C(UnkStruct_ov12_0223351C *param0, int param1)
{
    int v0;
    int v1 = ((360 * 0xffff) / 360) / 6;

    for (v0 = 0; v0 < 6; v0++) {
        RevolutionContext_Init(&param0->unk_30[v0], (0 * 0xffff) / 360, (180 * 0xffff) / 360, 0, 0, FX32_ONE * 50, 0, 48);
        param0->unk_30[v0].data[1] += (v1 * v0);
        param0->unk_30[v0].data[5] *= param1;
    }
}

static void ov12_02233574(UnkStruct_ov12_0223351C *param0)
{
    int v0;
    s16 v1;
    u16 v2;

    for (v0 = 0; v0 < 6; v0++) {
        RevolutionContext_Update(&param0->unk_30[v0]);

        v2 = param0->unk_30[v0].data[1] * 5;
        v1 = FX_Mul(FX_SinIdx(v2), (FX32_ONE * 10) * param0->unk_14) >> FX32_SHIFT;

        ManagedSprite_SetPositionXY(param0->unk_18[v0], param0->unk_130 + param0->unk_30[v0].x, param0->unk_132 + v1);

        if ((param0->unk_30[v0].data[1] >= ((90 * 0xffff) / 360)) && (param0->unk_30[v0].data[1] <= ((269 * 0xffff) / 360))) {
            ManagedSprite_SetExplicitPriority(param0->unk_18[v0], 1);
        } else {
            ManagedSprite_SetExplicitPriority(param0->unk_18[v0], BattleAnimSystem_GetPokemonSpritePriority(param0->unk_00) + 1);
        }
    }
}

static void ov12_02233644(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0223351C *v0 = param1;
    int v1;

    switch (v0->unk_0C) {
    case 0:
        BattleAnimUtil_SetSpriteBgBlending(v0->unk_00, 1, 16 - 1);
        AlphaFadeContext_Init(&v0->unk_108, 1, 16, 16 - 1, 16 - 16, 10);
        ov12_0223351C(v0, v0->unk_14);
        ov12_02233574(v0);
        v0->unk_0C++;
        break;
    case 1:
        ov12_02233574(v0);

        if (AlphaFadeContext_IsDone(&v0->unk_108)) {
            v0->unk_0C++;
            v0->unk_10 = (48 - (10 * 2));
        }
        break;
    case 2:
        ov12_02233574(v0);
        v0->unk_10--;

        if (v0->unk_10 < 0) {
            v0->unk_0C++;
            AlphaFadeContext_Init(&v0->unk_108, 16, 1, 16 - 16, 16 - 1, 10);
        }
        break;
    case 3:
        ov12_02233574(v0);

        if (AlphaFadeContext_IsDone(&v0->unk_108)) {
            v0->unk_0C++;
        }
        break;
    case 4:
        for (v1 = 0; v1 < 6; v1++) {
            Sprite_DeleteAndFreeResources(v0->unk_18[v1]);
        }

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02233734(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_0223351C *v0;
    int v1;
    PokemonSprite *v2;
    SpriteTemplate v3;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_0223351C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v2 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));

    v0->unk_130 = PokemonSprite_GetAttribute(v2, MON_SPRITE_X_CENTER);
    v0->unk_132 = PokemonSprite_GetAttribute(v2, MON_SPRITE_Y_CENTER);

    v3 = BattleAnimSystem_GetLastSpriteTemplate(param0);

    for (v1 = 0; v1 < 6; v1++) {
        if (v1 == 0) {
            v0->unk_18[v1] = param3;
        } else {
            v0->unk_18[v1] = SpriteSystem_NewSprite(v0->unk_04, v0->unk_08, &v3);
        }

        ManagedSprite_SetPriority(v0->unk_18[v1], 100);
        ManagedSprite_SetExplicitOamMode(v0->unk_18[v1], GX_OAM_MODE_XLU);
        ManagedSprite_SetAnimateFlag(v0->unk_18[v1], 1);
    }

    v0->unk_14 = BattleAnimUtil_GetTransformDirectionX(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233644, v0);
}

static void ov12_022337E0(ManagedSprite *param0, XYTransformContext *param1, int param2, int param3)
{
    s16 v0, v1;

    ManagedSprite_GetPositionXY(param0, &v0, &v1);
    PosLerpContext_Init(param1, v0 + (0 * param2), v0 + (256 * param2), v1 + (0 * param3), v1 + (-128 * param3), 59);
    ManagedSprite_SetDrawFlag(param0, 1);
}

static BOOL ov12_02233834(ManagedSprite *param0, XYTransformContext *param1)
{
    s16 v0, v1;
    s16 v2;
    fx32 v3;
    f32 v4;
    u16 v5;

    if (PosLerpContext_UpdateAndApplyToSprite(param1, param0)) {
        ManagedSprite_GetPositionXY(param0, &v0, &v1);

        v5 = v0 * ((2 * 0xffff) / 360);
        v2 = FX_Mul(FX_SinIdx(v5), FX32_ONE * 14) >> FX32_SHIFT;

        ManagedSprite_SetPositionXY(param0, v0, v1 + v2);

        v3 = FX_Mul(FX_SinIdx(v5), FX32_CONST(0.17f));
        v3 *= -1;
        v4 = (1.0f) + FX_FX32_TO_F32(v3);

        ManagedSprite_SetAffineScale(param0, v4, v4);
        return 0;
    }

    return 1;
}

static BOOL ov12_02233900(UnkStruct_ov12_02233900 *param0)
{
    int v0;
    BOOL v1;

    if (param0->unk_274 < 15) {
        param0->unk_270++;

        if (param0->unk_270 > 6) {
            param0->unk_270 = 0;

            ov12_022337E0(param0->unk_18[param0->unk_274], &param0->unk_54[param0->unk_274], param0->unk_10, param0->unk_14);
            param0->unk_274++;
        }
    }

    for (v0 = 0; v0 < param0->unk_274; v0++) {
        v1 = ov12_02233834(param0->unk_18[v0], &param0->unk_54[v0]);
    }

    if (param0->unk_274 >= 15) {
        if (v1 == 1) {
            return 1;
        }
    }

    return 0;
}

static void ov12_02233988(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02233900 *v0 = param1;
    int v1;

    if (ov12_02233900(v0)) {
        for (v1 = 0; v1 < 15; v1++) {
            Sprite_DeleteAndFreeResources(v0->unk_18[v1]);
        }

        Heap_Free(v0);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
    } else {
        SpriteSystem_DrawSprites(v0->unk_08);
    }
}

void ov12_022339C4(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02233900 *v0;
    int v1;
    s16 v2, v3;
    PokemonSprite *v4;
    SpriteTemplate v5;

    v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02233900));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;

    v4 = BattleAnimSystem_GetBattlerSprite(v0->unk_00, BattleAnimSystem_GetAttacker(param0));
    v2 = PokemonSprite_GetAttribute(v4, MON_SPRITE_X_CENTER);
    v3 = PokemonSprite_GetAttribute(v4, MON_SPRITE_Y_CENTER);
    v5 = BattleAnimSystem_GetLastSpriteTemplate(param0);

    for (v1 = 0; v1 < 15; v1++) {
        if (v1 == 0) {
            v0->unk_18[v1] = param3;
        } else {
            v0->unk_18[v1] = SpriteSystem_NewSprite(v0->unk_04, v0->unk_08, &v5);
        }

        ManagedSprite_SetPriority(v0->unk_18[v1], 100);
        ManagedSprite_SetExplicitPriority(v0->unk_18[v1], 1);
        ManagedSprite_SetAffineOverwriteMode(v0->unk_18[v1], AFFINE_OVERWRITE_MODE_DOUBLE);
        ManagedSprite_SetDrawFlag(v0->unk_18[v1], FALSE);
        ManagedSprite_SetPositionXY(v0->unk_18[v1], v2, v3);
        ManagedSprite_SetAnim(v0->unk_18[v1], v1 % 3);
    }

    v0->unk_10 = BattleAnimUtil_GetTransformDirectionX(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));
    v0->unk_14 = BattleAnimUtil_GetTransformDirectionY(v0->unk_00, BattleAnimSystem_GetAttacker(v0->unk_00));

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233988, v0);
}

static void ExtrasensoryContext_SetParameters(ExtrasensoryContext *ctx)
{
    switch (ctx->count) {
    case 0:
        ctx->baseAngle = EXTRASENSORY_DISTORTION_1_ANGLE;
        ctx->amplitudeStep = EXTRASENSORY_DISTORTION_1_STEP;
        ctx->baseAmplitude = EXTRASENSORY_DISTORTION_1_AMPLITUDE;
        ctx->delay = EXTRASENSORY_DISTORTION_1_FRAMES;
        break;
    case 1:
        ctx->baseAngle = EXTRASENSORY_DISTORTION_2_ANGLE;
        ctx->amplitudeStep = EXTRASENSORY_DISTORTION_2_STEP;
        ctx->baseAmplitude = EXTRASENSORY_DISTORTION_2_AMPLITUDE;
        ctx->delay = EXTRASENSORY_DISTORTION_2_FRAMES;
        break;
    case 2:
        ctx->baseAngle = EXTRASENSORY_DISTORTION_3_ANGLE;
        ctx->amplitudeStep = EXTRASENSORY_DISTORTION_3_STEP;
        ctx->baseAmplitude = EXTRASENSORY_DISTORTION_3_AMPLITUDE;
        ctx->delay = EXTRASENSORY_DISTORTION_3_FRAMES;
        break;
    }
}

static void ExtrasensoryContext_UpdateScroll(ExtrasensoryContext *ctx)
{
    u32 *buffer = CustomBgScrollContext_GetWriteBuffer(ctx->bgScroll);

    int startY = ctx->y + EXTRASENSORY_SCROLL_Y_RANGE_OFFSET;
    int endY = ctx->y + MON_SPRITE_FRAME_HEIGHT - EXTRASENSORY_SCROLL_Y_RANGE_OFFSET;

    if (startY < 0) {
        startY = 0;
    }

    if (endY > HW_LCD_HEIGHT) {
        endY = HW_LCD_HEIGHT;
    }

    // Switch direction every frame to create a jittery effect
    ctx->dir *= -1;

    for (int y = startY; y < endY; y++) {
        // Alternate every 4th row
        int amplitude;
        if (y & 2) {
            amplitude = ctx->baseAmplitude + (EXTRASENSORY_SCROLL_JITTER_FACTOR * ctx->dir);
        } else {
            amplitude = ctx->baseAmplitude - (EXTRASENSORY_SCROLL_JITTER_FACTOR * ctx->dir);
        }

        u16 angle = ctx->baseAngle + EXTRASENSORY_SCROLL_ANGLE_INCREMENT * (y - startY);
        s16 xOffset = FX_Mul(FX_SinIdx(angle), amplitude) >> FX32_SHIFT;
        xOffset += ((y - ctx->centerY) * ctx->amplitudeStep) / EXTRASENSORY_SCROLL_DAMPENING_VALUE;
        s16 initX = ctx->initValue & BG_OFFSET_X_MASK;
        s16 initY = ctx->initValue >> BG_OFFSET_Y_SHIFT;

        int index = y - 1;
        if (index < 0) {
            index += HW_LCD_HEIGHT;
        }

        buffer[index] = BattleAnimUtil_MakeBgOffsetValue(initX + xOffset, initY);
    }
}

static void BattleAnimTask_Extrasensory(SysTask *task, void *param)
{
    ExtrasensoryContext *ctx = param;

    switch (ctx->state) {
    case EXTRASENSORY_STATE_SET_PARAMS:
        ExtrasensoryContext_SetParameters(ctx);
        ExtrasensoryContext_UpdateScroll(ctx);
        ctx->state++;
        break;
    case EXTRASENSORY_STATE_SCROLL:
        ctx->delay--;
        ExtrasensoryContext_UpdateScroll(ctx);

        if (ctx->delay < 0) {
            ctx->count++;

            if (ctx->count < EXTRASENSORY_DISTORTION_COUNT) {
                ctx->state = EXTRASENSORY_STATE_SET_PARAMS;
            } else {
                ctx->state++;
            }
        }
        break;
    case EXTRASENSORY_STATE_CLEANUP:
        if (BattleAnimSystem_IsBattlerSemiInvulnerable(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys)) == FALSE) {
            PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_HIDE, FALSE);
        }

        CustomBgScrollContext_Stop(ctx->bgScroll);
        CustomBgScrollContext_Free(ctx->bgScroll);

        Bg_SetPriority(
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE),
            BattleAnimSystem_GetBgPriority(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE));
        Bg_SetPriority(BATTLE_BG_3D, BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys));

        Bg_ClearTilesRange(
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE),
            0x4000,
            0,
            BattleAnimSystem_GetHeapID(ctx->battleAnimSys));
        Bg_ClearTilemap(
            BattleAnimSystem_GetBgConfig(ctx->battleAnimSys),
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE));

        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        break;
    }
}

void BattleAnimScriptFunc_Extrasensory(BattleAnimSystem *system)
{
    ExtrasensoryContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ExtrasensoryContext));

    ctx->battleAnimSys = system;
    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));

    s16 defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    s16 defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);
    defenderY -= PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_SHADOW_HEIGHT);

    if (BattleAnimSystem_IsBattlerSemiInvulnerable(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys)) == FALSE) {
        PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_HIDE, TRUE);
    }

    ctx->centerY = defenderY;
    defenderX -= (MON_SPRITE_FRAME_WIDTH / 2);
    ctx->y = defenderY - (MON_SPRITE_FRAME_HEIGHT / 2);

    ctx->initValue = BattleAnimUtil_MakeBgOffsetValue(-defenderX, -ctx->y);
    ctx->bgScroll = CustomBgScrollContext_New(
        BattleAnimUtil_GetHOffsetRegisterForBg(BattleAnimSystem_GetBgID(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE)),
        ctx->initValue,
        BattleAnimSystem_GetHeapID(ctx->battleAnimSys));
    ctx->dir = 1;

    int type = BattleAnimUtil_GetBattlerType(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));
    if (type == BATTLER_TYPE_ENEMY_SIDE_SLOT_1 || type == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
        Bg_SetPriority(
            BattleAnimSystem_GetBgLayer(ctx->battleAnimSys, BATTLE_ANIM_BG_BASE),
            BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys));
        Bg_SetPriority(BATTLE_BG_3D, BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys) + 1);
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Extrasensory, ctx);
}

static void BattleAnimTask_FakeOutCurtain(SysTask *task, void *param)
{
    FakeOutCurtainContext *ctx = param;

    switch (ctx->state) {
    case FAKE_OUT_CURTAIN_STATE_INIT:
        PosLerpContext_Init(
            &ctx->curtainPos,
            FAKE_OUT_CURTAIN_START_X,
            FAKE_OUT_CURTAIN_END_X,
            0,
            0,
            FAKE_OUT_CURTAIN_MOVE_FRAMES);
        GX_SetVisibleWnd(GX_WNDMASK_W0);
        BattleAnimUtil_SetBackgroundWindowMask(ctx->battleAnimSys, BATTLE_ANIM_WINDOW_0, FALSE);
        G2_SetWnd0Position(0, 0, HW_LCD_WIDTH - 1, HW_LCD_HEIGHT - 1);
        ctx->delay = FAKE_OUT_CURTAIN_DELAY;
        ctx->state++;
        break;
    case FAKE_OUT_CURTAIN_STATE_WAIT:
        ctx->delay--;

        if (ctx->delay < 0) {
            PaletteData_StartFade(
                BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
                PLTTBUF_MAIN_BG_F,
                BattleAnimSystem_GetBaseBgPalettes(ctx->battleAnimSys),
                0,
                0,
                FAKE_OUT_CURTAIN_COLOR_ALPHA,
                FAKE_OUT_CURTAIN_COLOR);
            ctx->state++;
        }
        break;
    case FAKE_OUT_CURTAIN_STATE_MOVE_CURTAIN:
        if (PosLerpContext_Update(&ctx->curtainPos)) {
            G2_SetWnd0Position(
                (HW_LCD_WIDTH / 2 - 1) - ctx->curtainPos.x,
                0,
                (HW_LCD_WIDTH / 2) + ctx->curtainPos.x,
                HW_LCD_HEIGHT - 1);
        } else {
            ctx->state++;
        }
        break;
    case FAKE_OUT_CURTAIN_STATE_HIDE_CURTAIN:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(ctx->battleAnimSys)) == 0) {
            ctx->state++;
            GX_SetVisibleWnd(GX_WNDMASK_NONE);
            PaletteData_StartFade(
                BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
                PLTTBUF_MAIN_BG_F,
                BattleAnimSystem_GetBaseBgPalettes(ctx->battleAnimSys),
                0,
                FAKE_OUT_CURTAIN_COLOR_ALPHA,
                0,
                FAKE_OUT_CURTAIN_COLOR);
        }
        break;
    case FAKE_OUT_CURTAIN_STATE_WAIT_FOR_FADE:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(ctx->battleAnimSys)) == 0) {
            ctx->state++;
        }
        break;
    case FAKE_OUT_CURTAIN_STATE_CLEANUP:
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        break;
    }
}

void BattleAnimScriptFunc_FakeOutCurtain(BattleAnimSystem *system)
{
    // BUG: Should be sizeof(FakeOutCurtainContext), but since sizeof(ExtrasensoryContext) is larger, it works anyway.
    FakeOutCurtainContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ExtrasensoryContext));
    ctx->battleAnimSys = system;

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_FakeOutCurtain, ctx);
}

static void ov12_02233F4C(SysTask *param0, void *param1)
{
    UnkStruct_ov12_02233F4C *v0 = param1;

    switch (v0->unk_0C) {
    case 0:
        BattleAnimUtil_SetSpriteBgBlending(v0->unk_00, 0, 16 - 0);
        AlphaFadeContext_Init(&v0->unk_14, 0, 16, 16 - 0, 16 - 16, 8);
        v0->unk_0C++;
        break;
    case 1:
        if (AlphaFadeContext_IsDone(&v0->unk_14)) {
            v0->unk_0C++;
        }
        break;
    case 2:
        if (ManagedSprite_IsAnimated(v0->unk_10) == 0) {
            v0->unk_0C++;
            AlphaFadeContext_Init(&v0->unk_14, 16, 0, 16 - 16, 16 - 0, 8);
        }
        break;
    case 3:
        if (AlphaFadeContext_IsDone(&v0->unk_14)) {
            v0->unk_0C++;
        }
        break;
    case 4:
        Sprite_DeleteAndFreeResources(v0->unk_10);
        BattleAnimSystem_EndAnimTask(v0->unk_00, param0);
        Heap_Free(v0);
        return;
    }

    SpriteSystem_DrawSprites(v0->unk_08);
}

void ov12_02234008(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3)
{
    UnkStruct_ov12_02233F4C *v0 = BattleAnimUtil_Alloc(param0, sizeof(UnkStruct_ov12_02233F4C));

    v0->unk_00 = param0;
    v0->unk_04 = param1;
    v0->unk_08 = param2;
    v0->unk_10 = param3;

    ManagedSprite_SetAnimateFlag(v0->unk_10, 1);
    ManagedSprite_SetExplicitOamMode(v0->unk_10, GX_OAM_MODE_XLU);

    BattleAnimSystem_StartAnimTask(v0->unk_00, ov12_02233F4C, v0);
}

static void BattleAnimTask_FakeOut(SysTask *task, void *param)
{
    FakeOutContext *ctx = param;
    BOOL active;

    switch (ctx->state) {
    case FAKE_OUT_STATE_INIT_SCALE:
        ScaleLerpContext_InitXY(
            &ctx->scale,
            ctx->sx,
            ctx->ex,
            ctx->sy,
            ctx->ey,
            ctx->refScale,
            SCALE_POKEMON_SPRITE_SCALE_FRAMES(ctx->frames));
        ShakeContext_UpdateAndApplyToMon(&ctx->shake, ctx->defenderX, ctx->defenderY, ctx->defenderSprite);
        ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->defenderSprite);
        BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
            ctx->defenderSprite,
            ctx->defenderY,
            ctx->defenderHeight,
            ctx->scale.data[XY_PARAM_CUR_Y],
            BATTLE_ANIM_ANCHOR_BOTTOM);
        ctx->state++;
        break;
    case FAKE_OUT_STATE_SCALE:
        ShakeContext_UpdateAndApplyToMon(&ctx->shake, ctx->defenderX, ctx->defenderY, ctx->defenderSprite);
        active = ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->defenderSprite);
        BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
            ctx->defenderSprite,
            ctx->defenderY,
            ctx->defenderHeight,
            ctx->scale.data[XY_PARAM_CUR_Y],
            BATTLE_ANIM_ANCHOR_BOTTOM);

        if (active == FALSE) {
            ctx->state++;
        }
        break;
    case FAKE_OUT_STATE_INIT_RESTORE:
        ScaleLerpContext_InitXY(
            &ctx->scale,
            ctx->ex,
            ctx->sx,
            ctx->ey,
            ctx->sy,
            ctx->refScale,
            SCALE_POKEMON_SPRITE_RESTORE_FRAMES(ctx->frames));
        ShakeContext_UpdateAndApplyToMon(&ctx->shake, ctx->defenderX, ctx->defenderY, ctx->defenderSprite);
        ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->defenderSprite);
        BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
            ctx->defenderSprite,
            ctx->defenderY,
            ctx->defenderHeight,
            ctx->scale.data[XY_PARAM_CUR_Y],
            BATTLE_ANIM_ANCHOR_BOTTOM);
        ctx->state++;
        break;
    case FAKE_OUT_STATE_RESTORE:
        ShakeContext_UpdateAndApplyToMon(&ctx->shake, ctx->defenderX, ctx->defenderY, ctx->defenderSprite);
        active = ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->defenderSprite);
        BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
            ctx->defenderSprite,
            ctx->defenderY,
            ctx->defenderHeight,
            ctx->scale.data[XY_PARAM_CUR_Y],
            BATTLE_ANIM_ANCHOR_BOTTOM);

        if (active == FALSE) {
            ctx->cycles--;

            if (ctx->cycles <= 0) {
                ctx->state++;
            } else {
                ctx->state = 0;
            }
        }
        break;
    case FAKE_OUT_STATE_CLEANUP:
        PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER, ctx->defenderX);
        PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER, ctx->defenderY);

        PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
        PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));

        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        return;
    }
}

void BattleAnimScriptFunc_FakeOut(BattleAnimSystem *system)
{
    FakeOutContext *ctx = BattleAnimUtil_Alloc(system, sizeof(FakeOutContext));

    ctx->battleAnimSys = system;
    ctx->defenderHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));
    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));
    ctx->defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);
    ctx->defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    ctx->sx = FAKE_OUT_SCALE_START_X;
    ctx->ex = FAKE_OUT_SCALE_END_X;
    ctx->sy = FAKE_OUT_SCALE_START_Y;
    ctx->ey = FAKE_OUT_SCALE_END_Y;
    ctx->refScale = FAKE_OUT_SCALE_REF;
    ctx->cycles = FAKE_OUT_SCALE_CYCLES;
    ctx->frames = FAKE_OUT_SHAKE_FRAMES;

    ShakeContext_Init(
        &ctx->shake,
        FAKE_OUT_SHAKE_EXTENT_X,
        FAKE_OUT_SHAKE_EXTENT_Y,
        FAKE_OUT_SHAKE_INTERVAL,
        FAKE_OUT_SHAKE_AMOUNT);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_FakeOut, ctx);
}

static void BattleAnimTask_Megahorn(SysTask *task, void *param)
{
    MegahornContext *ctx = param;

    if (PosLerpContext_UpdateAndApplyToSprite(&ctx->pos, ctx->hornSprite) == FALSE) {
        Sprite_DeleteAndFreeResources(ctx->hornSprite);
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteManager);
}

void BattleAnimScriptFunc_Megahorn(BattleAnimSystem *system)
{
    MegahornContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MegahornContext));

    ctx->battleAnimSys = system;
    ctx->spriteManager = BattleAnimSystem_GetPrimarySpriteManager(system);

    int attacker = BattleAnimSystem_GetAttacker(system);

    if (BattleAnimUtil_GetBattlerSide(system, attacker) == BTLSCR_PLAYER) {
        ctx->hornSprite = BattleAnimSystem_GetSprite(system, 0);
        Sprite_DeleteAndFreeResources(BattleAnimSystem_GetSprite(system, 1));
    } else {
        ctx->hornSprite = BattleAnimSystem_GetSprite(system, 1);
        Sprite_DeleteAndFreeResources(BattleAnimSystem_GetSprite(system, 0));
    }

    int dirX = BattleAnimUtil_GetTransformDirectionX(system, attacker);
    int dirY = BattleAnimUtil_GetTransformDirectionY(system, attacker);
    int hornX = BattleAnimUtil_GetBattlerPos(system, attacker, BATTLE_ANIM_POSITION_MON_X);
    int hornY = BattleAnimUtil_GetBattlerPos(system, attacker, BATTLE_ANIM_POSITION_MON_Y);

    hornX += MEGAHORN_OFFSET_X * dirX;
    hornY += MEGAHORN_OFFSET_Y * dirY;

    ManagedSprite_SetPositionXY(ctx->hornSprite, hornX, hornY);

    PosLerpContext_Init(
        &ctx->pos,
        hornX,
        hornX + MEGAHORN_MOVE_X * dirX,
        hornY,
        hornY + MEGAHORN_MOVE_Y * dirY,
        MEGAHORN_MOVE_FRAMES);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_Megahorn, ctx);
}

static void BattleAnimTask_MegahornAttacker(SysTask *task, void *param)
{
    MegahornAttackerContext *ctx = param;

    switch (ctx->state) {
    case MEGAHORN_ATTACKER_STATE_INIT:
        ShakeContext_Init(
            &ctx->shake,
            MEGAHORN_ATTACKER_SHAKE_EXTENT_X,
            MEGAHORN_ATTACKER_SHAKE_EXTENT_Y,
            MEGAHORN_ATTACKER_SHAKE_INTERVAL,
            MEGAHORN_ATTACKER_SHAKE_AMOUNT);
        ctx->state++;
        break;
    case MEGAHORN_ATTACKER_STATE_SHAKE:
        if (ShakeContext_UpdateAndApplyToMon(&ctx->shake, ctx->x, ctx->y, ctx->sprite) == FALSE) {
            ctx->state++;
            PosLerpContext_Init(
                &ctx->pos,
                ctx->x,
                ctx->x + (MEGAHORN_ATTACKER_MOVE_X * ctx->dirX),
                ctx->y,
                ctx->y + (MEGAHORN_ATTACKER_MOVE_Y * ctx->dirY),
                MEGAHORN_ATTACKER_MOVE_FRAMES);
        }
        break;
    case MEGAHORN_ATTACKER_STATE_MOVE:
        if (PosLerpContext_UpdateAndApplyToMon(&ctx->pos, ctx->sprite) == FALSE) {
            ctx->state++;
            ctx->delay = MEGAHORN_ATTACKER_DELAY_FRAMES;
        }
        break;
    case MEGAHORN_ATTACKER_STATE_WAIT:
        ctx->delay--;

        if (ctx->delay < 0) {
            ctx->state++;
            PosLerpContext_Init(
                &ctx->pos,
                ctx->x + (MEGAHORN_ATTACKER_MOVE_X * ctx->dirX),
                ctx->x,
                ctx->y + (MEGAHORN_ATTACKER_MOVE_Y * ctx->dirY),
                ctx->y,
                MEGAHORN_ATTACKER_MOVE_FRAMES);
        }
        break;
    case MEGAHORN_ATTACKER_STATE_MOVE_BACK:
        if (PosLerpContext_UpdateAndApplyToMon(&ctx->pos, ctx->sprite) == FALSE) {
            ctx->state++;
        }
        break;
    case MEGAHORN_ATTACKER_STATE_CLEANUP:
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_X_CENTER, ctx->x);
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->y);
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        break;
    }
}

void BattleAnimScriptFunc_MegahornAttacker(BattleAnimSystem *system)
{
    MegahornAttackerContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MegahornAttackerContext));
    ctx->battleAnimSys = system;

    int attacker = BattleAnimSystem_GetAttacker(system);

    ctx->sprite = BattleAnimSystem_GetBattlerSprite(system, attacker);
    ctx->x = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_X_CENTER);
    ctx->y = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);
    ctx->dirX = BattleAnimUtil_GetTransformDirectionX(system, attacker);
    ctx->dirY = BattleAnimUtil_GetTransformDirectionY(system, attacker);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_MegahornAttacker, ctx);
}

static void BattleAnimTask_MegahornDefender(SysTask *task, void *param)
{
    MegahornDefenderContext *ctx = param;
    s16 baseX, baseY;

    switch (ctx->state) {
    case MEGAHORN_DEFENDER_STATE_INIT:
        PosLerpContext_Init(
            &ctx->pos,
            ctx->x,
            ctx->x + (MEGAHORN_DEFENDER_MOVE_X * ctx->dirX),
            ctx->y,
            ctx->y + (MEGAHORN_DEFENDER_MOVE_Y * ctx->dirY),
            MEGAHORN_DEFENDER_MOVE_FRAMES);
        ctx->state++;
        break;
    case MEGAHORN_DEFENDER_STATE_MOVE:
        if (PosLerpContext_UpdateAndApplyToMon(&ctx->pos, ctx->sprite) == FALSE) {
            ctx->state++;
            ShakeContext_Init(
                &ctx->shake,
                MEGAHORN_DEFENDER_SHAKE_EXTENT_X,
                MEGAHORN_DEFENDER_SHAKE_EXTENT_Y,
                MEGAHORN_DEFENDER_SHAKE_INTERVAL,
                MEGAHORN_DEFENDER_SHAKE_AMOUNT);
        }
        break;
    case MEGAHORN_DEFENDER_STATE_SHAKE:
        baseX = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_X_CENTER);
        baseY = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);

        if (ShakeContext_UpdateAndApplyToMon(&ctx->shake, baseX, baseY, ctx->sprite) == FALSE) {
            ctx->state++;
            PosLerpContext_Init(
                &ctx->pos,
                ctx->x + (MEGAHORN_DEFENDER_MOVE_X * ctx->dirX),
                ctx->x,
                ctx->y + (MEGAHORN_DEFENDER_MOVE_Y * ctx->dirY),
                ctx->y,
                MEGAHORN_DEFENDER_MOVE_FRAMES);
        }
        break;
    case MEGAHORN_DEFENDER_STATE_MOVE_BACK:
        if (PosLerpContext_UpdateAndApplyToMon(&ctx->pos, ctx->sprite) == FALSE) {
            ctx->state++;
        }
        break;
    case MEGAHORN_DEFENDER_STATE_CLEANUP:
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_X_CENTER, ctx->x);
        PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->y);
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        break;
    }
}

void BattleAnimScriptFunc_MegahornDefender(BattleAnimSystem *system)
{
    MegahornDefenderContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MegahornDefenderContext));
    ctx->battleAnimSys = system;

    int defender = BattleAnimSystem_GetDefender(system);

    ctx->sprite = BattleAnimSystem_GetBattlerSprite(system, defender);
    ctx->x = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_X_CENTER);
    ctx->y = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);
    ctx->dirX = BattleAnimUtil_GetTransformDirectionX(system, defender);
    ctx->dirY = BattleAnimUtil_GetTransformDirectionY(system, defender);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_MegahornDefender, ctx);
}
