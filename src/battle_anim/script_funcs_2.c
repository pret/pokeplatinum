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
typedef struct DrillPeckContext {
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

// -------------------------------------------------------------------
// Kinesis Sprite
// -------------------------------------------------------------------

#define KINESIS_EXTRA_SPOON_COUNT 2

typedef struct KinesisSpoon {
    ManagedSprite *sprite;
    XYTransformContext revs;
    ValueLerpContext cosWave;
    s16 revStepSizeX;
    s16 posX;
    s16 posY;
    int state;
    BOOL active;
} KinesisSpoon;

enum KinesisSpoonState {
    KINESIS_SPOON_STATE_INIT_REVS = 0,
    KINESIS_SPOON_STATE_REV,
    KINESIS_SPOON_STATE_DONE,
};

typedef struct KinesisSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    KinesisSpoon spoon;
    KinesisSpoon extraSpoons[KINESIS_EXTRA_SPOON_COUNT];
    int state;
    int delay;
    int activeSpoon;
    int spoonAlpha;
} KinesisSpriteContext;

enum KinesisSpriteState {
    KINESIS_SPRITE_STATE_INIT = 0,
    KINESIS_SPRITE_STATE_FADE_IN_SPOONS,
    KINESIS_SPRITE_STATE_FIX_ALPHA,
    KINESIS_SPRITE_STATE_MOVE_SPOONS,
    KINESIS_SPRITE_STATE_ANIMATE_SPOON,
    KINESIS_SPRITE_STATE_FADE_OUT_SPOONS,
    KINESIS_SPRITE_STATE_CLEANUP,
};

#define KINESIS_SPRITE_START_REV_X          DEG_TO_IDX(90)
#define KINESIS_SPRITE_END_REV_X            DEG_TO_IDX(270)
#define KINESIS_SPRITE_START_REV_Y          DEG_TO_IDX(90)
#define KINESIS_SPRITE_END_REV_Y            DEG_TO_IDX(270)
#define KINESIS_SPRITE_REV_RADIUS_X         FX32_CONST(-32)
#define KINESIS_SPRITE_REV_RADIUS_Y         FX32_CONST(-8)
#define KINESIS_SPRITE_REV_STEP             DEG_TO_IDX(10)
#define KINESIS_SPRITE_SPOON_START_ALPHA    0
#define KINESIS_SPRITE_BG_START_ALPHA       31
#define KINESIS_SPRITE_SPOON_END_ALPHA      31
#define KINESIS_SPRITE_ALPHA_SCALE          10
#define KINESIS_SPRITE_SPOON_STAGGER_FRAMES 8

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

// -------------------------------------------------------------------
// Metronome Sprite
// -------------------------------------------------------------------
typedef struct MetronomeSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    ManagedSprite *sprite;
    XYTransformContext scale;
    ValueLerpContext angle;
    int counter;
    int nextEndAngle;
    int scaleDir;
} MetronomeSpriteContext;

enum MetronomeSpriteState {
    METRONOME_SPRITE_STATE_GROW = 0,
    METRONOME_SPRITE_STATE_WIGGLE,
    METRONOME_SPRITE_STATE_SHRINK,
    METRONOME_SPRITE_STATE_CLEANUP,
};

#define METRONOME_SPRITE_OFFSET_X        40
#define METRONOME_SPRITE_OFFSET_Y        0
#define METRONOME_SPRITE_AFFINE_OFFSET_X -12
#define METRONOME_SPRITE_AFFINE_OFFSET_Y 12
#define METRONOME_SPRITE_START_SCALE     1
#define METRONOME_SPRITE_END_SCALE       10
#define METRONOME_SPRITE_REF_SCALE       10
#define METRONOME_SPRITE_SCALE_FRAMES    8
#define METRONOME_SPRITE_START_ANGLE     DEG_TO_IDX(359)
#define METRONOME_SPRITE_END_ANGLE       DEG_TO_IDX(320)
#define METRONOME_SPRITE_RSTART_ANGLE    DEG_TO_IDX(0)
#define METRONOME_SPRITE_REND_ANGLE      DEG_TO_IDX(40)
#define METRONOME_SPRITE_ROTATE_FRAMES   4
#define METRONOME_SPRITE_WAGGLE_COUNT    5

// -------------------------------------------------------------------
// Constrict Sprite
// -------------------------------------------------------------------
#define CONSTRICT_VINE_COUNT 4

typedef struct ConstrictVine {
    ManagedSprite *sprite;
    XYTransformContext scale;
    BOOL flip;
    int scaleCounter;
    int nextStartScale;
    int nextEndScale;
} ConstrictVine;

typedef struct ConstrictSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    int counter;
    int vineIdx;
    PokemonSprite *defenderSprite;
    s16 defenderX;
    s16 defenderY;
    XYTransformContext shake;
    ConstrictVine vines[CONSTRICT_VINE_COUNT];
    int unused;
} ConstrictSpriteContext;

enum ConstrictSpriteState {
    CONSTRICT_SPRITE_STATE_ANIMATE = 0,
    CONSTRICT_SPRITE_STATE_SHAKE,
    CONSTRICT_SPRITE_STATE_SCALE,
    CONSTRICT_SPRITE_STATE_CLEANUP,
};

#define CONSTRICT_SPRITE_VINE_BASE_OFFSET_Y  16
#define CONSTRICT_SPRITE_VINE_STEP_OFFSET_Y  10
#define CONSTRICT_SPRITE_SHAKE_EXTENT_X      4
#define CONSTRICT_SPRITE_SHAKE_EXTENT_Y      0
#define CONSTRICT_SPRITE_SHAKE_INTERVAL      1
#define CONSTRICT_SPRITE_SHAKE_AMOUNT        1
#define CONSTRICT_SPRITE_VINE_START_SCALE    10
#define CONSTRICT_SPRITE_VINE_REF_SCALE      10
#define CONSTRICT_SPRITE_VINE_END_SCALE      8
#define CONSTRICT_SPRITE_VINE_SCALE_FRAMES   8
#define CONSTRICT_SPRITE_VINE_STAGGER_FRAMES 4
#define CONSTRICT_SPRITE_VINE_SCALE_COUNT    3

// -------------------------------------------------------------------
// Bonemerang Sprite
// -------------------------------------------------------------------
typedef struct BonemerangSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    PokemonSprite *attackerSprite;
    s16 attackerX;
    s16 attackerY;
    XYTransformContext attackerPos;
    s32 dirX;
    PokemonSprite *defenderSprite;
    s16 defenderX;
    s16 defenderY;
    ManagedSprite *sprite;
    XYTransformContext linear;
    XYTransformContext revs;
} BonemerangSpriteContext;

enum BonemerangSpriteState {
    BONEMERANG_SPRITE_STATE_THROW_1 = 0,
    BONEMERANG_SPRITE_STATE_THROW_2,
    BONEMERANG_SPRITE_STATE_BONE_ARC_1,
    BONEMERANG_SPRITE_STATE_BONE_ARC_2,
    BONEMERANG_SPRITE_STATE_CATCH_1,
    BONEMERANG_SPRITE_STATE_CATCH_2,
    BONEMERANG_SPRITE_STATE_CLEANUP,
};

#define BONEMERANG_SPRITE_THROW_MOVE_X        -16
#define BONEMERANG_SPRITE_CATCH_MOVE_X        -32
#define BONEMERANG_SPRITE_THROW_MOVE_FRAMES_A 4
#define BONEMERANG_SPRITE_THROW_MOVE_FRAMES_B 2
#define BONEMERANG_SPRITE_CATCH_MOVE_FRAMES_A 4
#define BONEMERANG_SPRITE_CATCH_MOVE_FRAMES_B 4
#define BONEMERANG_SPRITE_BONE_ARC_RADIUS     FX32_CONST(32)
#define BONEMERANG_SPRITE_BONE_ARC_FRAMES     10

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

// -------------------------------------------------------------------
// Scary Face Sprite
// -------------------------------------------------------------------
typedef struct ScaryFaceSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    PokemonSprite *attackerSprite;
    XYTransformContext attackerScale;
    int attackerScaleState;
    ManagedSprite *sprite;
    int faceState;
    XYTransformContext faceScale;
    XYTransformContext facePos;
    AlphaFadeContext faceAlpha;
    s16 baseX;
    s16 baseY;
} ScaryFaceSpriteContext;

enum ScaryFaceSpriteState {
    SCARY_FACE_SPRITE_STATE_ANIMATE = 0,
    SCARY_FACE_SPRITE_STATE_CLEANUP,

    // Sub-state for attacker vertical stretch
    SCARY_FACE_SPRITE_ATTACKER_STATE_GROW = 0,
    SCARY_FACE_SPRITE_ATTACKER_STATE_SHRINK,
    SCARY_FACE_SPRITE_ATTACKER_STATE_DONE,

    // Sub-state for overlay sprite
    SCARY_FACE_SPRITE_FACE_STATE_GROW_AND_MOVE = 0,
    SCARY_FACE_SPRITE_FACE_STATE_FADE_OUT,
    SCARY_FACE_SPRITE_FACE_STATE_DONE,
};

#define SCARY_FACE_SPRITE_ATTACKER_START_SCALE  10
#define SCARY_FACE_SPRITE_ATTACKER_REF_SCALE    10
#define SCARY_FACE_SPRITE_ATTACKER_END_SCALE    15
#define SCARY_FACE_SPRITE_ATTACKER_SCALE_FRAMES 12
#define SCARY_FACE_SPRITE_ATTACKER_NORMAL_SCALE 0x100 // 1.0 in MON_SPRITE_SCALE fixed-point

#define SCARY_FACE_SPRITE_FACE_START_SCALE   5
#define SCARY_FACE_SPRITE_FACE_REF_SCALE     10
#define SCARY_FACE_SPRITE_FACE_END_SCALE     12
#define SCARY_FACE_SPRITE_FACE_SCALE_FRAMES  32
#define SCARY_FACE_SPRITE_FACE_OFFSET_X      32
#define SCARY_FACE_SPRITE_FACE_MOVE_FRAMES   32
#define SCARY_FACE_SPRITE_FACE_MOVE_Y_ENEMY  (-8) // attacker on the enemy side (dirY < 0)
#define SCARY_FACE_SPRITE_FACE_MOVE_Y_PLAYER (-24) // attacker on the player side
#define SCARY_FACE_SPRITE_FADE_EV1_START     16
#define SCARY_FACE_SPRITE_FADE_EV1_END       0
#define SCARY_FACE_SPRITE_FADE_EV2_START     14
#define SCARY_FACE_SPRITE_FADE_EV2_END       16
#define SCARY_FACE_SPRITE_FADE_FRAMES        8
#define SCARY_FACE_SPRITE_BLEND_A            31
#define SCARY_FACE_SPRITE_BLEND_B            26

// -------------------------------------------------------------------
// Foresight
// -------------------------------------------------------------------
typedef struct ForesightSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    PokemonSprite *defenderSprite;
    ManagedSprite *sprite;
    XYTransformContext pos;
    AlphaFadeContext alpha;
    s16 baseX;
    s16 baseY;
    int segment;
    int delay;
} ForesightSpriteContext;

enum ForesightSpriteState {
    FORESIGHT_SPRITE_STATE_DELAY = 0,
    FORESIGHT_SPRITE_STATE_MOVE,
    FORESIGHT_SPRITE_STATE_FADE_OUT,
    FORESIGHT_SPRITE_STATE_WAIT_FLASH,
    FORESIGHT_SPRITE_STATE_CLEANUP,
};

#define FORESIGHT_SPRITE_MOVE_EXTENT       80
#define FORESIGHT_SPRITE_MOVE_FRAMES       8
#define FORESIGHT_SPRITE_SEGMENT_COUNT     6
#define FORESIGHT_SPRITE_START_DELAY       4
#define FORESIGHT_SPRITE_FADE_EV1_START    16
#define FORESIGHT_SPRITE_FADE_EV1_END      0
#define FORESIGHT_SPRITE_FADE_EV2_START    0
#define FORESIGHT_SPRITE_FADE_EV2_END      16
#define FORESIGHT_SPRITE_FADE_FRAMES       16
#define FORESIGHT_SPRITE_FLASH_START_ALPHA 0
#define FORESIGHT_SPRITE_FLASH_END_ALPHA   10
#define FORESIGHT_SPRITE_FLASH_DELAY       0
#define FORESIGHT_SPRITE_FLASH_COLOR       GX_RGB(31, 31, 31)

// -------------------------------------------------------------------
// Lock On
// -------------------------------------------------------------------
typedef struct LockOnSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    PokemonSprite *defenderSprite;
    PokemonSprite *battlerSprites[MAX_BATTLERS];
    ManagedSprite *sprite;
    XYTransformContext pos;
    s16 baseX;
    s16 baseY;
    int segment;
    int delay;
    int blinkVisible;
} LockOnSpriteContext;

enum LockOnSpriteState {
    LOCK_ON_SPRITE_STATE_DELAY = 0,
    LOCK_ON_SPRITE_STATE_MOVE,
    LOCK_ON_SPRITE_STATE_FLASH,
    LOCK_ON_SPRITE_STATE_FADE_BACK,
    LOCK_ON_SPRITE_STATE_INIT_BLINK,
    LOCK_ON_SPRITE_STATE_BLINK,
    LOCK_ON_SPRITE_STATE_CLEANUP,
};

#define LOCK_ON_SPRITE_MOVE_EXTENT         80
#define LOCK_ON_SPRITE_MOVE_FRAMES         4
#define LOCK_ON_SPRITE_SEGMENT_COUNT       4
#define LOCK_ON_SPRITE_START_DELAY         (-16)
#define LOCK_ON_SPRITE_MOVE_DELAY          1 // state advances once delay exceeds this
#define LOCK_ON_SPRITE_LOCKED_ANIM         1 // reticle "locked" animation index
#define LOCK_ON_SPRITE_FLASH_DELAY         8
#define LOCK_ON_SPRITE_FADE_WAIT           (-8)
#define LOCK_ON_SPRITE_BG_FADE_START       0
#define LOCK_ON_SPRITE_BG_FADE_END         16
#define LOCK_ON_SPRITE_MON_FADE_START      14
#define LOCK_ON_SPRITE_MON_FADE_END        16
#define LOCK_ON_SPRITE_MON_FADE_BACK_START 2
#define LOCK_ON_SPRITE_MON_FADE_BACK_END   0
#define LOCK_ON_SPRITE_FLASH_COLOR         GX_RGBA(31, 31, 31, 1)
#define LOCK_ON_SPRITE_BLINK_COUNT         4
#define LOCK_ON_SPRITE_BLINK_INTERVAL      4
#define LOCK_ON_SPRITE_BLEND_A             31
#define LOCK_ON_SPRITE_BLEND_B             26

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

// -------------------------------------------------------------------
// Mean Look Sprite
// -------------------------------------------------------------------
typedef struct MeanLookSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    int timer;
    ManagedSprite *sprite;
    XYTransformContext scale;
    AlphaFadeContext alpha;
    int pulseState;
    int pulseCount;
    int repeatCount;
    int scaleFrames;
    int startScale;
    int endScale;
    int seqState;
} MeanLookSpriteContext;

enum MeanLookSpriteState {
    MEAN_LOOK_SPRITE_STATE_PULSE = 0,
    MEAN_LOOK_SPRITE_STATE_FLASH,
    MEAN_LOOK_SPRITE_STATE_FADE,
    MEAN_LOOK_SPRITE_STATE_WAIT_FADE,
    MEAN_LOOK_SPRITE_STATE_CLEANUP,

    MEAN_LOOK_SPRITE_PULSE_STATE_SHRINK = 0,
    MEAN_LOOK_SPRITE_PULSE_STATE_GROW,
    MEAN_LOOK_SPRITE_PULSE_STATE_WAIT_FADE,
    MEAN_LOOK_SPRITE_PULSE_STATE_DONE,

    MEAN_LOOK_SPRITE_PULSESEQ_STATE_INIT = 0,
    MEAN_LOOK_SPRITE_PULSESEQ_STATE_RUN,
    MEAN_LOOK_SPRITE_PULSESEQ_STATE_DONE,
};

#define MEAN_LOOK_SPRITE_REPEAT_COUNT      3
#define MEAN_LOOK_SPRITE_PULSE_COUNT       2
#define MEAN_LOOK_SPRITE_DECAY_DIVISOR     3
#define MEAN_LOOK_SPRITE_SCALE_PRECISION   100
#define MEAN_LOOK_SPRITE_START_SCALE       15
#define MEAN_LOOK_SPRITE_REF_SCALE         10
#define MEAN_LOOK_SPRITE_END_SCALE         10
#define MEAN_LOOK_SPRITE_SCALE_FRAMES      4
#define MEAN_LOOK_SPRITE_INIT_ANIM_FRAME   4
#define MEAN_LOOK_SPRITE_BLEND_MIN         0
#define MEAN_LOOK_SPRITE_BLEND_MAX         16
#define MEAN_LOOK_SPRITE_PULSE_ALPHA_START 16
#define MEAN_LOOK_SPRITE_PULSE_ALPHA_END   10
#define MEAN_LOOK_SPRITE_PULSE_FADE_SCALE  2 // alpha fade spans twice the scale frames
#define MEAN_LOOK_SPRITE_FLASH_DELAY       30
#define MEAN_LOOK_SPRITE_FLASH_FADE_FRAMES 4
#define MEAN_LOOK_SPRITE_FADE_OUT_FRAMES   8
#define MEAN_LOOK_SPRITE_BRIGHTNESS_FRAMES 8
#define MEAN_LOOK_SPRITE_BRIGHTNESS_MIN    0
#define MEAN_LOOK_SPRITE_BRIGHTNESS_MAX    16
#define MEAN_LOOK_SPRITE_BRIGHTNESS_PLANES (GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3)

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

// -------------------------------------------------------------------
// Torment Sprite
// -------------------------------------------------------------------
#define TORMENT_SPEECH_BUBBLE_COUNT 6

typedef struct TormentSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    int curSpeechBubble;
    int unk_14;
    PokemonSprite *attackerSprite;
    XYTransformContext scale;
    int attackerScaleState;
    s16 attackerY;
    s16 attackerOffset;
    ManagedSprite *speechBubbleSprites[TORMENT_SPEECH_BUBBLE_COUNT];
    int speechBubbleStates[TORMENT_SPEECH_BUBBLE_COUNT];
    int speechBubbleEndDelays[TORMENT_SPEECH_BUBBLE_COUNT];
} TormentSpriteContext;

#define TORMENT_SPRITE_SCALE_STEPS     2
#define TORMENT_SPRITE_BASE_SCALE      10
#define TORMENT_SPRITE_SCALE_SMALL_X   9
#define TORMENT_SPRITE_SCALE_SMALL_Y   8
#define TORMENT_SPRITE_SCALE_LARGE_X   11
#define TORMENT_SPRITE_SCALE_LARGE_Y   15
#define TORMENT_SPRITE_ANIM_SPEED      FX32_CONST(2)
#define TORMENT_SPRITE_INBETWEEN_DELAY 8

enum TormentSpriteState {
    TORMENT_SPRITE_STATE_INIT = 0,
    TORMENT_SPRITE_STATE_ANIMATE,
    TORMENT_SPRITE_STATE_DELAY,
    TORMENT_SPRITE_STATE_REINIT,
    TORMENT_SPRITE_STATE_ANIMATE2,
    TORMENT_SPRITE_STATE_CLEANUP,

    TORMENT_SPRITE_ATTACKER_SCALE_STATE_SHRINK = 0,
    TORMENT_SPRITE_ATTACKER_SCALE_STATE_GROW,
    TORMENT_SPRITE_ATTACKER_SCALE_STATE_RESET,
    TORMENT_SPRITE_ATTACKER_SCALE_STATE_DONE,

    TORMENT_SPRITE_SPEECH_BUBBLE_STATE_ANIMATING = 0,
    TORMENT_SPRITE_SPEECH_BUBBLE_STATE_DONE,
};

// -------------------------------------------------------------------
// Baton Pass Sprite
// -------------------------------------------------------------------
typedef struct BatonPassSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    PokemonSprite *attackerSprite;
    XYTransformContext attackerScale;
    XYTransformContext attackerPos;
    ManagedSprite *ballSprite;
    XYTransformContext ballPos;
    int unused;
    s16 attackerX;
    s16 attackerY;
} BatonPassSpriteContext;

enum BatonPassSpriteState {
    BATON_PASS_SPRITE_STATE_INIT = 0,
    BATON_PASS_SPRITE_STATE_ANIMATE_BALL,
    BATON_PASS_SPRITE_STATE_ANIMATE_ATTACKER,
    BATON_PASS_SPRITE_STATE_WAIT_BALL_ANIM,
    BATON_PASS_SPRITE_STATE_MOVE_BALL_OFF_SCREEN,
    BATON_PASS_SPRITE_STATE_CLEANUP,
};

#define BATON_PASS_SPRITE_ANIM_FRAMES         8
#define BATON_PASS_SPRITE_ATTACKER_BASE_SCALE 10
#define BATON_PASS_SPRITE_ATTACKER_END_SCALE  0

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

// -------------------------------------------------------------------
// Unused
// -------------------------------------------------------------------
#define UNUSED_SPRITE_COUNT 3

typedef struct UnusedSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    PokemonSprite *defenderSprite;
    XYTransformContext shake;
    s16 defenderX;
    s16 defenderY;
    ManagedSprite *sprites[UNUSED_SPRITE_COUNT];
    AfterimageContext afterImage;
    XYTransformContext scale;
} UnusedSpriteContext;

// -------------------------------------------------------------------
// Grudge Sprite
// -------------------------------------------------------------------
#define GRUDGE_SPRITE_COUNT 6

typedef struct GrudgeSpriteContext {
    BattleAnimSystem *battleAnimSys;
    SpriteSystem *spriteSys;
    SpriteManager *spriteMan;
    int state;
    int delay;
    int dir;
    ManagedSprite *flameSprites[GRUDGE_SPRITE_COUNT];
    XYTransformContext revs[GRUDGE_SPRITE_COUNT];
    AlphaFadeContext alpha;
    s16 attackerX;
    s16 attackerY;
} GrudgeSpriteContext;

enum GrudgeSpriteState {
    GRUDGE_SPRITE_STATE_INIT = 0,
    GRUDGE_SPRITE_STATE_REVOLVE_AND_FADE_IN,
    GRUDGE_SPRITE_STATE_REVOLVE,
    GRUDGE_SPRITE_STATE_FADE_OUT,
    GIUDGE_SPRITE_STATE_CLEANUP,
};

#define GRUDGE_SPRITE_START_ANGLE          DEG_TO_IDX(0)
#define GRUDGE_SPRITE_END_ANGLE            DEG_TO_IDX(180)
#define GRUDGE_SPRITE_REV_RADIUS           FX32_CONST(50)
#define GRUDGE_SPRITE_REV_FRAMES           48
#define GURDGE_SPRITE_START_ALPHA          1
#define GRUDGE_SPRITE_END_ALPHA            16
#define GRUDGE_SPRITE_MAX_ALPHA            16
#define GRUDGE_SPRITE_ALPHA_FADE_FRAMES    10
#define GRUDGE_SPRITE_REV_X_SCALE          5
#define GRUDGE_SPRITE_REV_Y_SCALE          FX32_CONST(10)
#define GRUDGE_SPRITE_REV_BEHIND_MIN_ANGLE DEG_TO_IDX(90) // Angle range at which the flame is considered to be "behind" the pokemon
#define GRUDGE_SPRITE_REV_BEHIND_MAX_ANGLE DEG_TO_IDX(269)

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

    for (int i = 0; i < SNELEMS(transformsActive); i++) {
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
    QuickAttackContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(QuickAttackContext));

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
    DrillPeckContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(QuickAttackContext));

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

static void KinesisSpoon_CopyFrom(KinesisSpoon *spoon, SpriteSystem *spriteSys, SpriteManager *spriteMan, const SpriteTemplate *template, const KinesisSpoon *source)
{
    spoon->sprite = SpriteSystem_NewSprite(spriteSys, spriteMan, template);
    spoon->revs = source->revs;
    spoon->cosWave = source->cosWave;
    spoon->revStepSizeX = source->revStepSizeX;
    spoon->posX = source->posX;
    spoon->posY = source->posY;
    spoon->state = source->state;
    spoon->active = 0;

    ManagedSprite_SetDrawFlag(spoon->sprite, FALSE);
    ManagedSprite_SetPriority(spoon->sprite, 100);
    ManagedSprite_SetExplicitPriority(spoon->sprite, 1);
}

static void KinesisSpoon_FreeSprite(KinesisSpoon *spoon)
{
    Sprite_DeleteAndFreeResources(spoon->sprite);
}

static void KinesisSpoon_SetDrawFlag(KinesisSpoon *spoon, BOOL draw)
{
    ManagedSprite_SetDrawFlag(spoon->sprite, draw);
}

static BOOL KinesisSpoon_Update(KinesisSpoon *spoon)
{
    if (spoon->active == FALSE) {
        return TRUE;
    }

    switch (spoon->state) {
    case KINESIS_SPOON_STATE_INIT_REVS:
    case KINESIS_SPOON_STATE_REV:
        if (RevolutionContext_Update(&spoon->revs)) {
            ValueLerpContext_UpdateSinusoidal(&spoon->cosWave);
            spoon->revs.data[XY_PARAM_REV_STEP_SIZE_X] = spoon->revStepSizeX + spoon->cosWave.value;
            ManagedSprite_SetPositionXY(spoon->sprite, spoon->posX + spoon->revs.x, spoon->posY + spoon->revs.y);
        } else {
            if (spoon->state < KINESIS_SPOON_STATE_REV) {
                if (spoon->state == KINESIS_SPOON_STATE_INIT_REVS) {
                    RevolutionContext_InitWithStepSize(
                        &spoon->revs,
                        spoon->revs.data[XY_PARAM_REV_CUR_X],
                        DEG_TO_IDX(180),
                        spoon->revs.data[XY_PARAM_REV_CUR_X],
                        DEG_TO_IDX(180),
                        spoon->revs.data[XY_PARAM_REV_RADIUS_X],
                        spoon->revs.data[XY_PARAM_REV_RADIUS_Y],
                        KINESIS_SPRITE_REV_STEP);
                }

                ValueLerpContext_InitSinusoidal(
                    &spoon->cosWave,
                    DEG_TO_IDX(0),
                    DEG_TO_IDX(360),
                    -FX32_ONE,
                    spoon->revs.data[XY_PARAM_REV_STEPS]);
            }

            spoon->state++;
        }
        break;
    case KINESIS_SPOON_STATE_DONE:
        return FALSE;
    }

    return TRUE;
}

static void BattleAnimTask_KinesisSprite(SysTask *task, void *param)
{
    KinesisSpriteContext *ctx = param;
    int i;

    switch (ctx->state) {
    case KINESIS_SPRITE_STATE_INIT:
        KinesisSpoon_Update(&ctx->spoon);
        ctx->state++;
        break;
    case KINESIS_SPRITE_STATE_FADE_IN_SPOONS:
        ctx->spoonAlpha += 1 * KINESIS_SPRITE_ALPHA_SCALE;
        G2_ChangeBlendAlpha(
            ctx->spoonAlpha / KINESIS_SPRITE_ALPHA_SCALE,
            KINESIS_SPRITE_BG_START_ALPHA - (ctx->spoonAlpha / KINESIS_SPRITE_ALPHA_SCALE));

        if (ctx->spoonAlpha >= KINESIS_SPRITE_SPOON_END_ALPHA * KINESIS_SPRITE_ALPHA_SCALE) {
            ManagedSprite_SetExplicitOamMode(ctx->spoon.sprite, GX_OAM_MODE_NORMAL);

            ctx->state++;
        }
        break;
    case KINESIS_SPRITE_STATE_FIX_ALPHA:
        G2_ChangeBlendAlpha(BATTLE_ANIM_DEFAULT_ALPHA, BATTLE_ANIM_DEFAULT_ALPHA);
        ctx->state++;
        break;
    case KINESIS_SPRITE_STATE_MOVE_SPOONS: {
        if (ctx->delay <= 0) {
            ctx->extraSpoons[ctx->activeSpoon].active = TRUE;
            ManagedSprite_SetDrawFlag(ctx->extraSpoons[ctx->activeSpoon].sprite, TRUE);
            ctx->activeSpoon++;
            ctx->delay = KINESIS_SPRITE_SPOON_STAGGER_FRAMES;
        }

        if (ctx->activeSpoon < KINESIS_EXTRA_SPOON_COUNT) {
            ctx->delay--;
        }

        BOOL anyActive = KinesisSpoon_Update(&ctx->spoon);

        for (i = 0; i < KINESIS_EXTRA_SPOON_COUNT; i++) {
            BOOL active = KinesisSpoon_Update(&ctx->extraSpoons[i]);
            if (active == FALSE) {
                KinesisSpoon_SetDrawFlag(&ctx->extraSpoons[i], FALSE);
            }

            anyActive |= active;
        }

        if (anyActive == FALSE) {
            ctx->state++;
        }
    } break;
    case KINESIS_SPRITE_STATE_ANIMATE_SPOON:
        ManagedSprite_TickFrame(ctx->spoon.sprite);

        if (Sprite_IsAnimated(ctx->spoon.sprite->sprite) == FALSE) {
            ManagedSprite_SetExplicitOamMode(ctx->spoon.sprite, GX_OAM_MODE_XLU);
            ctx->state++;
        }
        break;
    case KINESIS_SPRITE_STATE_FADE_OUT_SPOONS:
        ctx->spoonAlpha -= 1 * KINESIS_SPRITE_ALPHA_SCALE;
        G2_ChangeBlendAlpha(
            ctx->spoonAlpha / KINESIS_SPRITE_ALPHA_SCALE,
            KINESIS_SPRITE_BG_START_ALPHA - (ctx->spoonAlpha / KINESIS_SPRITE_ALPHA_SCALE));

        if (ctx->spoonAlpha <= 0) {
            ctx->state++;
        }
        break;
    case KINESIS_SPRITE_STATE_CLEANUP:
        for (i = 0; i < KINESIS_EXTRA_SPOON_COUNT; i++) {
            KinesisSpoon_FreeSprite(&ctx->extraSpoons[i]);
        }

        Sprite_DeleteAndFreeResources(ctx->spoon.sprite);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);

        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Kinesis(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    SpriteTemplate template;
    int i;

    KinesisSpriteContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(KinesisSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->delay = KINESIS_SPRITE_SPOON_STAGGER_FRAMES;
    ctx->activeSpoon = 0;
    ctx->state = 0;

    int attacker = BattleAnimSystem_GetAttacker(system);
    int revRadiusX = BattleAnimUtil_GetTransformDirectionX(system, attacker);
    revRadiusX *= KINESIS_SPRITE_REV_RADIUS_X;

    ctx->spoon.sprite = sprite;
    ctx->spoon.state = 0;

    RevolutionContext_InitWithStepSize(
        &ctx->spoon.revs,
        KINESIS_SPRITE_START_REV_X,
        KINESIS_SPRITE_END_REV_X,
        KINESIS_SPRITE_START_REV_Y,
        KINESIS_SPRITE_END_REV_Y,
        revRadiusX,
        KINESIS_SPRITE_REV_RADIUS_Y,
        KINESIS_SPRITE_REV_STEP);
    ValueLerpContext_InitSinusoidal(
        &ctx->spoon.cosWave,
        DEG_TO_IDX(0),
        DEG_TO_IDX(360),
        -1 * FX32_ONE,
        ctx->spoon.revs.data[0]);

    ctx->spoon.revStepSizeX = ctx->spoon.revs.data[XY_PARAM_REV_STEP_SIZE_X];
    ctx->spoon.active = 1;
    ctx->spoon.posX = BattleAnimUtil_GetBattlerPos(system, attacker, BATTLE_ANIM_POSITION_MON_X);
    ctx->spoon.posY = BattleAnimUtil_GetBattlerPos(system, attacker, BATTLE_ANIM_POSITION_MON_Y);

    ManagedSprite_SetPositionXY(ctx->spoon.sprite, ctx->spoon.posX, ctx->spoon.posY);
    ManagedSprite_SetPriority(ctx->spoon.sprite, 100);
    ManagedSprite_SetExplicitPriority(ctx->spoon.sprite, 1);

    template = BattleAnimSystem_GetLastSpriteTemplate(ctx->battleAnimSys);
    template.x = ctx->spoon.posX;
    template.y = ctx->spoon.posY;

    for (i = 0; i < KINESIS_EXTRA_SPOON_COUNT; i++) {
        KinesisSpoon_CopyFrom(&ctx->extraSpoons[i], ctx->spriteSys, ctx->spriteMan, &template, &ctx->spoon);
    }

    ctx->spoonAlpha = 0;

    BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, KINESIS_SPRITE_SPOON_START_ALPHA, KINESIS_SPRITE_BG_START_ALPHA);
    ManagedSprite_SetExplicitOamMode(ctx->spoon.sprite, GX_OAM_MODE_XLU);

    for (i = 0; i < KINESIS_EXTRA_SPOON_COUNT; i++) {
        ManagedSprite_SetExplicitOamMode(ctx->extraSpoons[i].sprite, GX_OAM_MODE_XLU);
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_KinesisSprite, ctx);
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
    ConfusionContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(ConfusionContext));

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
    AcidArmorContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(AcidArmorContext));
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
    NightShaderAttackerContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(NightShaderAttackerContext));
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
    NightShadeDefenderContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(NightShadeDefenderContext));
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
    // ctx->shake.data[XY_PARAM_SHAKE_PREV_X] *= dir;
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

static void BattleAnimTask_MetronomeSprite(SysTask *task, void *param)
{
    MetronomeSpriteContext *ctx = param;
    f32 scaleX, scaleY;

    switch (ctx->state) {
    case METRONOME_SPRITE_STATE_GROW: {
        BOOL active = ScaleLerpContext_Update(&ctx->scale);
        if (active == TRUE) {
            ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
            ManagedSprite_SetAffineScale(ctx->sprite, scaleX * ctx->scaleDir, scaleY);
        } else {
            ctx->state++;
            ctx->counter = METRONOME_SPRITE_WAGGLE_COUNT;

            ScaleLerpContext_Init(
                &ctx->scale,
                METRONOME_SPRITE_END_SCALE,
                METRONOME_SPRITE_REF_SCALE,
                METRONOME_SPRITE_START_SCALE,
                METRONOME_SPRITE_SCALE_FRAMES);
        }
    } break;
    case METRONOME_SPRITE_STATE_WIGGLE: {
        BOOL active = ValueLerpContext_Update(&ctx->angle);
        ManagedSprite_SetAffineZRotation(ctx->sprite, ctx->angle.value);

        if (active == FALSE) {
            if (ctx->counter > 0) {
                ctx->counter--;

                int start = ctx->angle.value;
                int end = ctx->nextEndAngle;
                ctx->nextEndAngle = ctx->angle.value;

                ValueLerpContext_Init(&ctx->angle, start, end, METRONOME_SPRITE_ROTATE_FRAMES);
            } else {
                ctx->state++;
            }
        }
    } break;
    case METRONOME_SPRITE_STATE_SHRINK: {
        BOOL active = ScaleLerpContext_Update(&ctx->scale);
        if (active == TRUE) {
            ScaleLerpContext_GetAffineScale(&ctx->scale, &scaleX, &scaleY);
            ManagedSprite_SetAffineScale(ctx->sprite, scaleX * ctx->scaleDir, scaleY);
        } else {
            ctx->state++;
        }
    } break;
    case METRONOME_SPRITE_STATE_CLEANUP:
        Sprite_DeleteAndFreeResources(ctx->sprite);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Metronome(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    MetronomeSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MetronomeSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;

    int dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    int translationDir;
    if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(ctx->battleAnimSys, BATTLER_ROLE_ATTACKER) == TRUE) {
        ctx->scaleDir = -1;
        translationDir = dir * -1;
    } else {
        ctx->scaleDir = 1;
        translationDir = dir;
    }

    s16 x = BattleAnimUtil_GetBattlerPos(system, BattleAnimSystem_GetAttacker(ctx->battleAnimSys), BATTLE_ANIM_POSITION_MON_X);
    s16 y = BattleAnimUtil_GetBattlerPos(system, BattleAnimSystem_GetAttacker(ctx->battleAnimSys), BATTLE_ANIM_POSITION_MON_Y);

    ctx->sprite = sprite;

    ManagedSprite_SetAffineOverwriteMode(ctx->sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAffineScale(ctx->sprite, 1.0f, 1.0f);
    ManagedSprite_SetPositionXY(ctx->sprite, x, y);
    ManagedSprite_OffsetPositionXY(ctx->sprite, METRONOME_SPRITE_OFFSET_X * dir, METRONOME_SPRITE_OFFSET_Y);
    ManagedSprite_SetPriority(ctx->sprite, 100);
    ManagedSprite_SetExplicitPriority(ctx->sprite, 1);
    ManagedSprite_SetAffineTranslation(
        ctx->sprite,
        METRONOME_SPRITE_AFFINE_OFFSET_X * translationDir,
        METRONOME_SPRITE_AFFINE_OFFSET_Y);

    if (BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetAttacker(system)) == BTLSCR_ENEMY) {
        ManagedSprite_SetAnim(ctx->sprite, 1);
    } else {
        ManagedSprite_SetAnim(ctx->sprite, 0);
    }

    ScaleLerpContext_Init(
        &ctx->scale,
        METRONOME_SPRITE_START_SCALE,
        METRONOME_SPRITE_REF_SCALE,
        METRONOME_SPRITE_END_SCALE,
        METRONOME_SPRITE_SCALE_FRAMES);

    if (translationDir >= 0) {
        ValueLerpContext_Init(
            &ctx->angle,
            METRONOME_SPRITE_START_ANGLE,
            METRONOME_SPRITE_END_ANGLE,
            METRONOME_SPRITE_ROTATE_FRAMES);
        ctx->nextEndAngle = METRONOME_SPRITE_START_ANGLE;
    } else {
        ValueLerpContext_Init(
            &ctx->angle,
            METRONOME_SPRITE_RSTART_ANGLE,
            METRONOME_SPRITE_REND_ANGLE,
            METRONOME_SPRITE_ROTATE_FRAMES);
        ctx->nextEndAngle = METRONOME_SPRITE_RSTART_ANGLE;
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_MetronomeSprite, ctx);
}

static void ConstrictVine_Init(ConstrictVine *vine, ManagedSprite *sprite, s16 x, s16 y, BOOL flip)
{
    vine->sprite = sprite;

    ScaleLerpContext_Init(
        &vine->scale,
        CONSTRICT_SPRITE_VINE_START_SCALE,
        CONSTRICT_SPRITE_VINE_REF_SCALE,
        CONSTRICT_SPRITE_VINE_END_SCALE,
        CONSTRICT_SPRITE_VINE_SCALE_FRAMES);

    vine->scaleCounter = CONSTRICT_SPRITE_VINE_SCALE_COUNT;
    vine->nextStartScale = CONSTRICT_SPRITE_VINE_END_SCALE;
    vine->nextEndScale = CONSTRICT_SPRITE_VINE_START_SCALE;
    vine->flip = flip;

    ManagedSprite_SetPositionXY(vine->sprite, x, y);
    ManagedSprite_SetPositionXY(vine->sprite, x, y);
    ManagedSprite_SetAffineOverwriteMode(vine->sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetPriority(vine->sprite, 100);
    ManagedSprite_SetExplicitPriority(vine->sprite, 1);

    if (flip) {
        ManagedSprite_SetAffineScale(vine->sprite, -1.0f, 1.0f);
    }

    ManagedSprite_SetDrawFlag(vine->sprite, FALSE);
}

static void ConstrictVine_Free(ConstrictVine *vine)
{
    Sprite_DeleteAndFreeResources(vine->sprite);
}

static void ConstrictVine_Enable(ConstrictVine *vine)
{
    ManagedSprite_SetDrawFlag(vine->sprite, TRUE);
    ManagedSprite_SetAnimateFlag(vine->sprite, TRUE);
}

static BOOL ConstrictVine_Update(ConstrictVine *vine)
{
    BOOL scaleActive = ScaleLerpContext_Update(&vine->scale);
    if (scaleActive == TRUE) {
        f32 scaleX, scaleY;
        ScaleLerpContext_GetAffineScale(&vine->scale, &scaleX, &scaleY);

        if (vine->flip) {
            ManagedSprite_SetAffineScale(vine->sprite, -scaleX, 1.0f);
        } else {
            ManagedSprite_SetAffineScale(vine->sprite, scaleX, 1.0f);
        }
    } else {
        if (vine->scaleCounter > 0) {
            vine->scaleCounter--;
            ScaleLerpContext_Init(
                &vine->scale,
                vine->nextStartScale,
                CONSTRICT_SPRITE_VINE_REF_SCALE,
                vine->nextEndScale,
                CONSTRICT_SPRITE_VINE_SCALE_FRAMES);
            int startScale = vine->nextStartScale;
            vine->nextStartScale = vine->nextEndScale;
            vine->nextEndScale = startScale;
        } else {
            return FALSE;
        }
    }

    return TRUE;
}

static void BattleAnimTask_ConstrictSprite(SysTask *task, void *param)
{
    ConstrictSpriteContext *ctx = param;
    int i;

    switch (ctx->state) {
    case CONSTRICT_SPRITE_STATE_ANIMATE:
        if (ctx->counter >= CONSTRICT_SPRITE_VINE_STAGGER_FRAMES) {
            ctx->counter = 0;
            ConstrictVine_Enable(&ctx->vines[ctx->vineIdx]);
            ctx->vineIdx++;

            if (ctx->vineIdx >= CONSTRICT_VINE_COUNT) {
                ctx->state++;
            }
        }

        ctx->counter++;
        break;
    case CONSTRICT_SPRITE_STATE_SHAKE:
        if (ShakeContext_UpdateAndApplyToMon(&ctx->shake, ctx->defenderX, ctx->defenderY, ctx->defenderSprite) == FALSE) {
            ctx->state++;
        }
        break;
    case CONSTRICT_SPRITE_STATE_SCALE: {
        BOOL active;
        for (i = 0; i < CONSTRICT_VINE_COUNT; i++) {
            // BUG: This should be |= instead of =
            active = ConstrictVine_Update(ctx->vines + i);
        }

        if (active == FALSE) {
            ctx->state++;
        }
    } break;
    case CONSTRICT_SPRITE_STATE_CLEANUP:
        PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER, ctx->defenderX);
        PokemonSprite_SetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER, ctx->defenderY);

        for (i = 0; i < CONSTRICT_VINE_COUNT; i++) {
            ConstrictVine_Free(ctx->vines + i);
        }

        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Constrict(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    SpriteTemplate template;

    ConstrictSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ConstrictSpriteContext));
    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;

    int defender = BattleAnimSystem_GetDefender(system);

    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, defender);
    ctx->defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    ctx->defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);

    ShakeContext_Init(
        &ctx->shake,
        CONSTRICT_SPRITE_SHAKE_EXTENT_X,
        CONSTRICT_SPRITE_SHAKE_EXTENT_Y,
        CONSTRICT_SPRITE_SHAKE_INTERVAL,
        CONSTRICT_SPRITE_SHAKE_AMOUNT);

    int vineY = ctx->defenderY + CONSTRICT_SPRITE_VINE_BASE_OFFSET_Y;
    BOOL flip = FALSE;
    template = BattleAnimSystem_GetLastSpriteTemplate(ctx->battleAnimSys);

    for (int i = 0; i < CONSTRICT_VINE_COUNT; i++) {
        if (i == 0) {
            ConstrictVine_Init(
                &ctx->vines[i],
                sprite,
                ctx->defenderX,
                vineY,
                flip);
        } else {
            ConstrictVine_Init(
                &ctx->vines[i],
                SpriteSystem_NewSprite(spriteSys, spriteMan, &template),
                ctx->defenderX,
                vineY,
                flip);
        }

        vineY -= CONSTRICT_SPRITE_VINE_STEP_OFFSET_Y;
        flip ^= 1;
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_ConstrictSprite, ctx);
}

static void BattleAnimTask_BonemerangSprite(SysTask *task, void *param)
{
    BonemerangSpriteContext *ctx = param;

    switch (ctx->state) {
    case BONEMERANG_SPRITE_STATE_THROW_1:
        if (PosLerpContext_Update(&ctx->attackerPos)) {
            XYTransformContext_ApplyPosOffsetToMon(
                &ctx->attackerPos,
                ctx->attackerSprite,
                ctx->attackerX,
                ctx->attackerY);
        } else {
            PosLerpContext_Init(
                &ctx->attackerPos,
                ctx->attackerPos.x,
                0,
                0,
                0,
                BONEMERANG_SPRITE_THROW_MOVE_FRAMES_B);
            ctx->state++;
        }

        return;
    case BONEMERANG_SPRITE_STATE_THROW_2:
        if (PosLerpContext_Update(&ctx->attackerPos)) {
            XYTransformContext_ApplyPosOffsetToMon(
                &ctx->attackerPos,
                ctx->attackerSprite,
                ctx->attackerX,
                ctx->attackerY);
        } else {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER, ctx->attackerX);
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER, ctx->attackerY);
            PosLerpContext_Init(
                &ctx->attackerPos,
                0,
                BONEMERANG_SPRITE_CATCH_MOVE_X * ctx->dirX,
                0,
                0,
                BONEMERANG_SPRITE_CATCH_MOVE_FRAMES_A);
            ctx->state++;
        }

        return;
    case BONEMERANG_SPRITE_STATE_BONE_ARC_1:
        if (XYTransformContext_UpdateAndApplyParabolic(&ctx->linear, &ctx->revs, ctx->sprite) == FALSE) {
            XYTransformContext_InitParabolic(
                &ctx->linear,
                &ctx->revs,
                ctx->defenderX,
                ctx->attackerX,
                ctx->defenderY,
                ctx->attackerY,
                BONEMERANG_SPRITE_BONE_ARC_FRAMES,
                -BONEMERANG_SPRITE_BONE_ARC_RADIUS);
            ctx->state++;
        }
        break;
    case BONEMERANG_SPRITE_STATE_BONE_ARC_2:
        if (XYTransformContext_UpdateAndApplyParabolic(&ctx->linear, &ctx->revs, ctx->sprite) == FALSE) {
            ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
            ctx->state++;
        }
        break;
    case BONEMERANG_SPRITE_STATE_CATCH_1:
        if (PosLerpContext_Update(&ctx->attackerPos)) {
            XYTransformContext_ApplyPosOffsetToMon(
                &ctx->attackerPos,
                ctx->attackerSprite,
                ctx->attackerX,
                ctx->attackerY);
        } else {
            PosLerpContext_Init(
                &ctx->attackerPos,
                ctx->attackerPos.x,
                0,
                0,
                0,
                BONEMERANG_SPRITE_CATCH_MOVE_FRAMES_B);
            ctx->state++;
        }
        break;
    case BONEMERANG_SPRITE_STATE_CATCH_2:
        if (PosLerpContext_Update(&ctx->attackerPos)) {
            XYTransformContext_ApplyPosOffsetToMon(
                &ctx->attackerPos,
                ctx->attackerSprite,
                ctx->attackerX,
                ctx->attackerY);
        } else {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER, ctx->attackerX);
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER, ctx->attackerY);

            ctx->state++;
        }
        break;
    case BONEMERANG_SPRITE_STATE_CLEANUP:
        Sprite_DeleteAndFreeResources(ctx->sprite);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Bonemerang(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    BonemerangSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(BonemerangSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->dirX = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
    ctx->attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    ctx->attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);

    PosLerpContext_Init(
        &ctx->attackerPos,
        0,
        BONEMERANG_SPRITE_THROW_MOVE_X * ctx->dirX,
        0,
        0,
        BONEMERANG_SPRITE_THROW_MOVE_FRAMES_A);

    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));
    ctx->defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    ctx->defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);
    ctx->sprite = sprite;

    ManagedSprite_SetAnimateFlag(ctx->sprite, TRUE);
    ManagedSprite_SetPriority(ctx->sprite, 100);
    ManagedSprite_SetExplicitPriority(ctx->sprite, 1);

    XYTransformContext_InitParabolic(
        &ctx->linear,
        &ctx->revs,
        ctx->attackerX,
        ctx->defenderX,
        ctx->attackerY,
        ctx->defenderY,
        BONEMERANG_SPRITE_BONE_ARC_FRAMES,
        BONEMERANG_SPRITE_BONE_ARC_RADIUS);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_BonemerangSprite, ctx);
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

static BOOL ScaryFaceSprite_UpdateAttackerScale(ScaryFaceSpriteContext *ctx)
{
    BOOL done = FALSE;

    switch (ctx->attackerScaleState) {
    case SCARY_FACE_SPRITE_ATTACKER_STATE_GROW:
        if (ScaleLerpContext_Update(&ctx->attackerScale)) {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, ctx->attackerScale.y);
        } else {
            ctx->attackerScaleState++;
            ScaleLerpContext_Init(
                &ctx->attackerScale,
                SCARY_FACE_SPRITE_ATTACKER_END_SCALE,
                SCARY_FACE_SPRITE_ATTACKER_REF_SCALE,
                SCARY_FACE_SPRITE_ATTACKER_START_SCALE,
                SCARY_FACE_SPRITE_ATTACKER_SCALE_FRAMES);
        }
        break;
    case SCARY_FACE_SPRITE_ATTACKER_STATE_SHRINK:
        if (ScaleLerpContext_Update(&ctx->attackerScale)) {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, ctx->attackerScale.y);
        } else {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, SCARY_FACE_SPRITE_ATTACKER_NORMAL_SCALE);
            ctx->attackerScaleState++;
        }
        break;
    case SCARY_FACE_SPRITE_ATTACKER_STATE_DONE:
        done = TRUE;
        break;
    }

    return done;
}

// Grows the overlay sprite while sliding it into place, then fades it out.
static BOOL ScaryFaceSprite_UpdateFace(ScaryFaceSpriteContext *ctx)
{
    BOOL done = FALSE;

    switch (ctx->faceState) {
    case SCARY_FACE_SPRITE_FACE_STATE_GROW_AND_MOVE:
        ScaleLerpContext_UpdateAndApplyToSprite(&ctx->faceScale, ctx->sprite);

        if (PosLerpContext_Update(&ctx->facePos)) {
            XYTransformContext_ApplyPosOffsetToSprite(&ctx->facePos, ctx->sprite, ctx->baseX, ctx->baseY);
        } else {
            ctx->faceState++;
            AlphaFadeContext_Init(
                &ctx->faceAlpha,
                SCARY_FACE_SPRITE_FADE_EV1_START,
                SCARY_FACE_SPRITE_FADE_EV1_END,
                SCARY_FACE_SPRITE_FADE_EV2_START,
                SCARY_FACE_SPRITE_FADE_EV2_END,
                SCARY_FACE_SPRITE_FADE_FRAMES);
        }
        break;
    case SCARY_FACE_SPRITE_FACE_STATE_FADE_OUT:
        if (AlphaFadeContext_IsDone(&ctx->faceAlpha)) {
            ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
            ctx->faceState++;
        }
        break;
    case SCARY_FACE_SPRITE_FACE_STATE_DONE:
        done = TRUE;
        break;
    }

    return done;
}

static void BattleAnimTask_ScaryFaceSprite(SysTask *task, void *param)
{
    ScaryFaceSpriteContext *ctx = param;

    switch (ctx->state) {
    case SCARY_FACE_SPRITE_STATE_ANIMATE:
        ScaryFaceSprite_UpdateAttackerScale(ctx);
        if (ScaryFaceSprite_UpdateFace(ctx)) {
            ctx->state++;
        }
        break;
    case SCARY_FACE_SPRITE_STATE_CLEANUP:
        Sprite_DeleteAndFreeResources(ctx->sprite);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_ScaryFace(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    ScaryFaceSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ScaryFaceSpriteContext));
    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;

    int dirX = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    int dirY = BattleAnimUtil_GetTransformDirectionY(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));

    s16 attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    s16 attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);

    ScaleLerpContext_Init(
        &ctx->attackerScale,
        SCARY_FACE_SPRITE_ATTACKER_START_SCALE,
        SCARY_FACE_SPRITE_ATTACKER_REF_SCALE,
        SCARY_FACE_SPRITE_ATTACKER_END_SCALE,
        SCARY_FACE_SPRITE_ATTACKER_SCALE_FRAMES);
    ctx->sprite = sprite;

    ManagedSprite_SetAnimateFlag(ctx->sprite, TRUE);
    ManagedSprite_SetAffineOverwriteMode(ctx->sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitOamMode(ctx->sprite, GX_OAM_MODE_XLU);
    ManagedSprite_SetPriority(ctx->sprite, 100);
    ManagedSprite_SetExplicitPriority(ctx->sprite, 1);

    ctx->baseX = attackerX + (SCARY_FACE_SPRITE_FACE_OFFSET_X * dirX);
    ctx->baseY = attackerY;

    int moveY;
    if (dirY < 0) {
        moveY = SCARY_FACE_SPRITE_FACE_MOVE_Y_ENEMY;
    } else {
        moveY = SCARY_FACE_SPRITE_FACE_MOVE_Y_PLAYER;
    }

    PosLerpContext_Init(&ctx->facePos, 0, 0 * dirX, 0, moveY * dirY, SCARY_FACE_SPRITE_FACE_MOVE_FRAMES);
    ScaleLerpContext_Init(
        &ctx->faceScale,
        SCARY_FACE_SPRITE_FACE_START_SCALE,
        SCARY_FACE_SPRITE_FACE_REF_SCALE,
        SCARY_FACE_SPRITE_FACE_END_SCALE,
        SCARY_FACE_SPRITE_FACE_SCALE_FRAMES);

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, SCARY_FACE_SPRITE_BLEND_A, SCARY_FACE_SPRITE_BLEND_B);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_ScaryFaceSprite, ctx);
}

// Sets up the offset lerp for the current path segment, doing a zig-zag over the defender.
static void ForesightSprite_InitMoveSegment(ForesightSpriteContext *ctx)
{
    switch (ctx->segment) {
    case 0:
        PosLerpContext_Init(&ctx->pos, 0, FORESIGHT_SPRITE_MOVE_EXTENT / 2, 0, FORESIGHT_SPRITE_MOVE_EXTENT / 2, FORESIGHT_SPRITE_MOVE_FRAMES);
        break;
    case 1:
        PosLerpContext_Init(&ctx->pos, 0, 0, 0, -FORESIGHT_SPRITE_MOVE_EXTENT, FORESIGHT_SPRITE_MOVE_FRAMES);
        break;
    case 2:
        PosLerpContext_Init(&ctx->pos, 0, -FORESIGHT_SPRITE_MOVE_EXTENT, 0, FORESIGHT_SPRITE_MOVE_EXTENT, FORESIGHT_SPRITE_MOVE_FRAMES);
        break;
    case 3:
        PosLerpContext_Init(&ctx->pos, 0, 0, 0, -FORESIGHT_SPRITE_MOVE_EXTENT, FORESIGHT_SPRITE_MOVE_FRAMES);
        break;
    case 4:
        PosLerpContext_Init(&ctx->pos, 0, FORESIGHT_SPRITE_MOVE_EXTENT, 0, FORESIGHT_SPRITE_MOVE_EXTENT, FORESIGHT_SPRITE_MOVE_FRAMES);
        break;
    case 5:
        PosLerpContext_Init(&ctx->pos, 0, -FORESIGHT_SPRITE_MOVE_EXTENT / 2, 0, -FORESIGHT_SPRITE_MOVE_EXTENT / 2, FORESIGHT_SPRITE_MOVE_FRAMES);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void BattleAnimTask_ForesightSprite(SysTask *task, void *param)
{
    ForesightSpriteContext *ctx = param;

    switch (ctx->state) {
    case FORESIGHT_SPRITE_STATE_DELAY:
        ctx->delay++;

        if (ctx->delay > FORESIGHT_SPRITE_START_DELAY) {
            ForesightSprite_InitMoveSegment(ctx);
            ctx->state++;
            ctx->delay = 0;
        }
        break;
    case FORESIGHT_SPRITE_STATE_MOVE:
        if (PosLerpContext_Update(&ctx->pos)) {
            XYTransformContext_ApplyPosOffsetToSprite(&ctx->pos, ctx->sprite, ctx->baseX, ctx->baseY);
        } else {
            ctx->segment++;

            if (ctx->segment < FORESIGHT_SPRITE_SEGMENT_COUNT) {
                ctx->state = FORESIGHT_SPRITE_STATE_DELAY;
                ctx->baseX += ctx->pos.x;
                ctx->baseY += ctx->pos.y;
            } else {
                ctx->state++;

                ManagedSprite_SetExplicitOamMode(ctx->sprite, GX_OAM_MODE_XLU);
                AlphaFadeContext_Init(
                    &ctx->alpha,
                    FORESIGHT_SPRITE_FADE_EV1_START,
                    FORESIGHT_SPRITE_FADE_EV1_END,
                    FORESIGHT_SPRITE_FADE_EV2_START,
                    FORESIGHT_SPRITE_FADE_EV2_END,
                    FORESIGHT_SPRITE_FADE_FRAMES);

                PokemonSprite_StartFade(
                    ctx->defenderSprite,
                    FORESIGHT_SPRITE_FLASH_START_ALPHA,
                    FORESIGHT_SPRITE_FLASH_END_ALPHA,
                    FORESIGHT_SPRITE_FLASH_DELAY,
                    FORESIGHT_SPRITE_FLASH_COLOR);
            }
        }
        break;
    case FORESIGHT_SPRITE_STATE_FADE_OUT:
        if (AlphaFadeContext_IsDone(&ctx->alpha)) {
            ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
        }

        if (PokemonSprite_IsFadeActive(ctx->defenderSprite) == FALSE) {
            ctx->state++;
            PokemonSprite_StartFade(
                ctx->defenderSprite,
                FORESIGHT_SPRITE_FLASH_END_ALPHA,
                FORESIGHT_SPRITE_FLASH_START_ALPHA,
                FORESIGHT_SPRITE_FLASH_DELAY,
                FORESIGHT_SPRITE_FLASH_COLOR);
        }
        break;
    case FORESIGHT_SPRITE_STATE_WAIT_FLASH:
        if (PokemonSprite_IsFadeActive(ctx->defenderSprite) == FALSE) {
            ctx->state++;
        }
        break;
    case FORESIGHT_SPRITE_STATE_CLEANUP:
        Sprite_DeleteAndFreeResources(ctx->sprite);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Foresight(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    ForesightSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ForesightSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));
    ctx->sprite = sprite;

    ManagedSprite_SetPriority(ctx->sprite, 100);
    ManagedSprite_SetExplicitPriority(ctx->sprite, 1);
    ManagedSprite_GetPositionXY(ctx->sprite, &ctx->baseX, &ctx->baseY);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_ForesightSprite, ctx);
}

// Sets up the offset lerp for the current path segment, tracing the reticle in toward the target.
static void LockOnSprite_InitMoveSegment(LockOnSpriteContext *ctx)
{
    switch (ctx->segment) {
    case 0:
        PosLerpContext_Init(&ctx->pos, 0, LOCK_ON_SPRITE_MOVE_EXTENT, 0, LOCK_ON_SPRITE_MOVE_EXTENT, LOCK_ON_SPRITE_MOVE_FRAMES);
        break;
    case 1:
        PosLerpContext_Init(&ctx->pos, 0, 0, 0, -LOCK_ON_SPRITE_MOVE_EXTENT, LOCK_ON_SPRITE_MOVE_FRAMES);
        break;
    case 2:
        PosLerpContext_Init(&ctx->pos, 0, -LOCK_ON_SPRITE_MOVE_EXTENT, 0, LOCK_ON_SPRITE_MOVE_EXTENT, LOCK_ON_SPRITE_MOVE_FRAMES);
        break;
    case 3:
        PosLerpContext_Init(&ctx->pos, 0, LOCK_ON_SPRITE_MOVE_EXTENT / 2, 0, -LOCK_ON_SPRITE_MOVE_EXTENT / 2, LOCK_ON_SPRITE_MOVE_FRAMES);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void BattleAnimTask_LockOnSprite(SysTask *task, void *param)
{
    LockOnSpriteContext *ctx = param;
    int i;

    switch (ctx->state) {
    case LOCK_ON_SPRITE_STATE_DELAY:
        ctx->delay++;

        if (ctx->delay > LOCK_ON_SPRITE_MOVE_DELAY) {
            LockOnSprite_InitMoveSegment(ctx);
            ctx->state++;
            ctx->delay = 0;
        }
        break;
    case LOCK_ON_SPRITE_STATE_MOVE:
        if (PosLerpContext_Update(&ctx->pos)) {
            XYTransformContext_ApplyPosOffsetToSprite(&ctx->pos, ctx->sprite, ctx->baseX, ctx->baseY);
        } else {
            ctx->segment++;

            if (ctx->segment < LOCK_ON_SPRITE_SEGMENT_COUNT) {
                ctx->state = LOCK_ON_SPRITE_STATE_DELAY;
                ctx->baseX += ctx->pos.x;
                ctx->baseY += ctx->pos.y;
            } else {
                ctx->state++;
                ctx->delay = LOCK_ON_SPRITE_FLASH_DELAY;

                ManagedSprite_SetAnim(ctx->sprite, LOCK_ON_SPRITE_LOCKED_ANIM);
                ManagedSprite_SetAnimateFlag(ctx->sprite, TRUE);
            }
        }
        break;
    case LOCK_ON_SPRITE_STATE_FLASH:
        ctx->delay--;

        if (ctx->delay < 0) {
            ctx->state++;

            PaletteData_StartFade(
                BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
                PLTTBUF_MAIN_BG_F,
                BattleAnimSystem_GetBaseBgPalettes(ctx->battleAnimSys),
                LOCK_ON_SPRITE_FADE_WAIT,
                LOCK_ON_SPRITE_BG_FADE_START,
                LOCK_ON_SPRITE_BG_FADE_END,
                LOCK_ON_SPRITE_FLASH_COLOR);

            for (i = 0; i < MAX_BATTLERS; i++) {
                if (ctx->battlerSprites[i]) {
                    PokemonSprite_StartFade(
                        ctx->battlerSprites[i],
                        LOCK_ON_SPRITE_MON_FADE_START,
                        LOCK_ON_SPRITE_MON_FADE_END,
                        0,
                        LOCK_ON_SPRITE_FLASH_COLOR);
                }
            }
        }
        break;
    case LOCK_ON_SPRITE_STATE_FADE_BACK:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(ctx->battleAnimSys)) == 0) {
            ctx->state++;
            PaletteData_StartFade(
                BattleAnimSystem_GetPaletteData(ctx->battleAnimSys),
                PLTTBUF_MAIN_BG_F,
                BattleAnimSystem_GetBaseBgPalettes(ctx->battleAnimSys),
                LOCK_ON_SPRITE_FADE_WAIT,
                LOCK_ON_SPRITE_BG_FADE_END,
                LOCK_ON_SPRITE_BG_FADE_START,
                LOCK_ON_SPRITE_FLASH_COLOR);

            for (i = 0; i < MAX_BATTLERS; i++) {
                if (ctx->battlerSprites[i]) {
                    PokemonSprite_StartFade(
                        ctx->battlerSprites[i],
                        LOCK_ON_SPRITE_MON_FADE_BACK_START,
                        LOCK_ON_SPRITE_MON_FADE_BACK_END,
                        0,
                        LOCK_ON_SPRITE_FLASH_COLOR);
                }
            }
        }
        break;
    case LOCK_ON_SPRITE_STATE_INIT_BLINK:
        if (PaletteData_GetSelectedBuffersMask(BattleAnimSystem_GetPaletteData(ctx->battleAnimSys)) == 0) {
            ctx->state++;
            ctx->delay = LOCK_ON_SPRITE_BLINK_INTERVAL;
            ctx->segment = LOCK_ON_SPRITE_BLINK_COUNT;
            ctx->blinkVisible = 0;
        }
        break;
    case LOCK_ON_SPRITE_STATE_BLINK:
        ctx->delay--;

        if (ctx->delay < 0) {
            ctx->delay = LOCK_ON_SPRITE_BLINK_INTERVAL;
            ctx->segment--;

            if (ctx->segment < 0) {
                ctx->state++;
            } else {
                ManagedSprite_SetDrawFlag(ctx->sprite, ctx->blinkVisible);
                ctx->blinkVisible ^= 1;
            }
        }
        break;
    case LOCK_ON_SPRITE_STATE_CLEANUP:
        Sprite_DeleteAndFreeResources(ctx->sprite);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_LockOn(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    LockOnSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(LockOnSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));

    for (int i = 0; i < MAX_BATTLERS; i++) {
        ctx->battlerSprites[i] = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, i);
    }

    ctx->sprite = sprite;

    ManagedSprite_SetPriority(ctx->sprite, 100);
    ManagedSprite_SetExplicitPriority(ctx->sprite, 1);
    ManagedSprite_GetPositionXY(ctx->sprite, &ctx->baseX, &ctx->baseY);

    ctx->baseX -= LOCK_ON_SPRITE_MOVE_EXTENT / 2;
    ctx->baseY -= LOCK_ON_SPRITE_MOVE_EXTENT / 2;

    ManagedSprite_SetPositionXY(ctx->sprite, ctx->baseX, ctx->baseY);
    ManagedSprite_SetExplicitOamMode(ctx->sprite, GX_OAM_MODE_XLU);

    ctx->delay = LOCK_ON_SPRITE_START_DELAY;

    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_NONE, GX_BLEND_ALL, LOCK_ON_SPRITE_BLEND_A, LOCK_ON_SPRITE_BLEND_B);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_LockOnSprite, ctx);
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

static void MeanLookSprite_InitPulse(MeanLookSpriteContext *ctx)
{
    ScaleLerpContext_Init(
        &ctx->scale,
        ctx->startScale / MEAN_LOOK_SPRITE_SCALE_PRECISION,
        MEAN_LOOK_SPRITE_REF_SCALE,
        ctx->endScale / MEAN_LOOK_SPRITE_SCALE_PRECISION,
        ctx->scaleFrames / MEAN_LOOK_SPRITE_SCALE_PRECISION);

    BattleAnimUtil_SetSpriteBgBlending(
        ctx->battleAnimSys,
        MEAN_LOOK_SPRITE_BLEND_MAX,
        MEAN_LOOK_SPRITE_BLEND_MIN);

    AlphaFadeContext_Init(
        &ctx->alpha,
        MEAN_LOOK_SPRITE_PULSE_ALPHA_START,
        MEAN_LOOK_SPRITE_PULSE_ALPHA_END,
        MEAN_LOOK_SPRITE_BLEND_MAX - MEAN_LOOK_SPRITE_PULSE_ALPHA_START,
        MEAN_LOOK_SPRITE_BLEND_MAX - MEAN_LOOK_SPRITE_PULSE_ALPHA_END,
        (ctx->scaleFrames / MEAN_LOOK_SPRITE_SCALE_PRECISION) * MEAN_LOOK_SPRITE_PULSE_FADE_SCALE);

    ctx->pulseState = MEAN_LOOK_SPRITE_PULSE_STATE_SHRINK;
    ctx->pulseCount = 0;
}

static BOOL MeanLookSprite_UpdatePulse(MeanLookSpriteContext *ctx)
{
    BOOL done = FALSE;

    switch (ctx->pulseState) {
    case MEAN_LOOK_SPRITE_PULSE_STATE_SHRINK:
        if (ScaleLerpContext_UpdateAndApplyToSprite(&ctx->scale, ctx->sprite) == FALSE) {
            ScaleLerpContext_Init(
                &ctx->scale,
                ctx->endScale / MEAN_LOOK_SPRITE_SCALE_PRECISION,
                MEAN_LOOK_SPRITE_REF_SCALE,
                ctx->startScale / MEAN_LOOK_SPRITE_SCALE_PRECISION,
                ctx->scaleFrames / MEAN_LOOK_SPRITE_SCALE_PRECISION);
            ctx->pulseState++;
        }
        break;
    case MEAN_LOOK_SPRITE_PULSE_STATE_GROW:
        if (ScaleLerpContext_UpdateAndApplyToSprite(&ctx->scale, ctx->sprite) == FALSE) {
            ctx->pulseCount++;

            if (ctx->pulseCount < MEAN_LOOK_SPRITE_PULSE_COUNT) {
                ctx->pulseState = MEAN_LOOK_SPRITE_PULSE_STATE_SHRINK;
                ScaleLerpContext_Init(
                    &ctx->scale,
                    ctx->startScale / MEAN_LOOK_SPRITE_SCALE_PRECISION,
                    MEAN_LOOK_SPRITE_REF_SCALE,
                    ctx->endScale / MEAN_LOOK_SPRITE_SCALE_PRECISION,
                    ctx->scaleFrames / MEAN_LOOK_SPRITE_SCALE_PRECISION);
            } else {
                ctx->pulseState++;
            }
        }
        break;
    case MEAN_LOOK_SPRITE_PULSE_STATE_WAIT_FADE:
        if (AlphaFadeContext_IsDone(&ctx->alpha)) {
            ctx->pulseState++;
            done = TRUE;
        }
        break;
    case MEAN_LOOK_SPRITE_PULSE_STATE_DONE:
        done = TRUE;
        break;
    }

    return done;
}

static BOOL MeanLookSprite_UpdatePulses(MeanLookSpriteContext *ctx)
{
    BOOL done = FALSE;

    switch (ctx->seqState) {
    case MEAN_LOOK_SPRITE_PULSESEQ_STATE_INIT:
        MeanLookSprite_InitPulse(ctx);
        MeanLookSprite_UpdatePulse(ctx);
        ctx->seqState++;
        break;
    case MEAN_LOOK_SPRITE_PULSESEQ_STATE_RUN:
        if (MeanLookSprite_UpdatePulse(ctx)) {
            ctx->repeatCount--;

            if (ctx->repeatCount >= 0) {
                ctx->scaleFrames -= ctx->scaleFrames / MEAN_LOOK_SPRITE_DECAY_DIVISOR;
                ctx->startScale -= ctx->startScale / MEAN_LOOK_SPRITE_DECAY_DIVISOR;
                ctx->endScale -= ctx->endScale / MEAN_LOOK_SPRITE_DECAY_DIVISOR;
                ctx->seqState = MEAN_LOOK_SPRITE_PULSESEQ_STATE_INIT;
            } else {
                ctx->seqState++;
                done = TRUE;
            }
        }
        break;
    case MEAN_LOOK_SPRITE_PULSESEQ_STATE_DONE:
        done = TRUE;
        break;
    }

    return done;
}

static void BattleAnimTask_MeanLookSprite(SysTask *task, void *param)
{
    MeanLookSpriteContext *ctx = param;

    switch (ctx->state) {
    case MEAN_LOOK_SPRITE_STATE_PULSE:
        if (MeanLookSprite_UpdatePulses(ctx)) {
            ctx->state++;
            ctx->timer = MEAN_LOOK_SPRITE_FLASH_DELAY;

            ManagedSprite_SetAnim(ctx->sprite, 0);
            ManagedSprite_SetAnimateFlag(ctx->sprite, TRUE);
            ManagedSprite_SetAffineScale(ctx->sprite, 1.0f, 1.0f);

            AlphaFadeContext_Init(
                &ctx->alpha,
                MEAN_LOOK_SPRITE_BLEND_MIN,
                MEAN_LOOK_SPRITE_BLEND_MAX,
                MEAN_LOOK_SPRITE_BLEND_MAX,
                MEAN_LOOK_SPRITE_BLEND_MIN,
                MEAN_LOOK_SPRITE_FLASH_FADE_FRAMES);
        }
        break;
    case MEAN_LOOK_SPRITE_STATE_FLASH:
        // timer -1 means dimming, -2 means brightening
        if (ctx->timer == 0) {
            BrightnessController_StartTransition(
                MEAN_LOOK_SPRITE_BRIGHTNESS_FRAMES,
                MEAN_LOOK_SPRITE_BRIGHTNESS_MAX,
                MEAN_LOOK_SPRITE_BRIGHTNESS_MIN,
                MEAN_LOOK_SPRITE_BRIGHTNESS_PLANES,
                BRIGHTNESS_MAIN_SCREEN);
            ctx->timer = -1;
        } else {
            if (ctx->timer > 0) {
                ctx->timer--;
            }
        }

        if (ctx->timer == -1) {
            if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
                BrightnessController_StartTransition(
                    MEAN_LOOK_SPRITE_BRIGHTNESS_FRAMES,
                    MEAN_LOOK_SPRITE_BRIGHTNESS_MIN,
                    MEAN_LOOK_SPRITE_BRIGHTNESS_MAX,
                    MEAN_LOOK_SPRITE_BRIGHTNESS_PLANES,
                    BRIGHTNESS_MAIN_SCREEN);
                ctx->timer = -2;
            }
        }

        if (ManagedSprite_IsAnimated(ctx->sprite) == FALSE) {
            ctx->state++;
        }
        break;
    case MEAN_LOOK_SPRITE_STATE_FADE:
        if (BrightnessController_IsTransitionComplete(BRIGHTNESS_MAIN_SCREEN)) {
            ctx->state++;
            BattleAnimUtil_SetSpriteBgBlending(ctx->battleAnimSys, MEAN_LOOK_SPRITE_BLEND_MAX, MEAN_LOOK_SPRITE_BLEND_MIN);
            AlphaFadeContext_Init(
                &ctx->alpha,
                MEAN_LOOK_SPRITE_BLEND_MAX,
                MEAN_LOOK_SPRITE_BLEND_MIN,
                MEAN_LOOK_SPRITE_BLEND_MIN,
                MEAN_LOOK_SPRITE_BLEND_MAX,
                MEAN_LOOK_SPRITE_FADE_OUT_FRAMES);
        }
        break;
    case MEAN_LOOK_SPRITE_STATE_WAIT_FADE:
        if (AlphaFadeContext_IsDone(&ctx->alpha)) {
            ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
            ctx->state++;
        }
        break;
    case MEAN_LOOK_SPRITE_STATE_CLEANUP:
        Sprite_DeleteAndFreeResources(ctx->sprite);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_MeanLook(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    MeanLookSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MeanLookSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->sprite = sprite;

    ManagedSprite_SetPriority(ctx->sprite, 100);
    ManagedSprite_SetExplicitPriority(ctx->sprite, 1);
    ManagedSprite_SetAffineOverwriteMode(ctx->sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetExplicitOamMode(ctx->sprite, GX_OAM_MODE_XLU);
    ManagedSprite_SetAnimationFrame(ctx->sprite, MEAN_LOOK_SPRITE_INIT_ANIM_FRAME);

    ctx->repeatCount = MEAN_LOOK_SPRITE_REPEAT_COUNT;
    ctx->scaleFrames = MEAN_LOOK_SPRITE_SCALE_FRAMES * MEAN_LOOK_SPRITE_SCALE_PRECISION;
    ctx->startScale = MEAN_LOOK_SPRITE_START_SCALE * MEAN_LOOK_SPRITE_SCALE_PRECISION;
    ctx->endScale = MEAN_LOOK_SPRITE_END_SCALE * MEAN_LOOK_SPRITE_SCALE_PRECISION;

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_MeanLookSprite, ctx);
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

static void TormentSprite_InitAttackerScale(TormentSpriteContext *ctx)
{
    ctx->attackerScaleState = TORMENT_SPRITE_ATTACKER_SCALE_STATE_SHRINK;
    ScaleLerpContext_InitXY(
        &ctx->scale,
        TORMENT_SPRITE_BASE_SCALE,
        TORMENT_SPRITE_SCALE_SMALL_X,
        TORMENT_SPRITE_BASE_SCALE,
        TORMENT_SPRITE_SCALE_SMALL_Y,
        TORMENT_SPRITE_BASE_SCALE,
        TORMENT_SPRITE_SCALE_STEPS);
}

static BOOL TormentSprite_UpdateAttackerScale(TormentSpriteContext *ctx)
{
    BOOL done = FALSE;

    switch (ctx->attackerScaleState) {
    case TORMENT_SPRITE_ATTACKER_SCALE_STATE_SHRINK:
        if (ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->attackerSprite)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
                ctx->attackerSprite,
                ctx->attackerY,
                ctx->attackerOffset,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            ctx->attackerScaleState++;
            ScaleLerpContext_InitXY(
                &ctx->scale,
                TORMENT_SPRITE_SCALE_SMALL_X,
                TORMENT_SPRITE_SCALE_LARGE_X,
                TORMENT_SPRITE_SCALE_SMALL_Y,
                TORMENT_SPRITE_SCALE_LARGE_Y,
                TORMENT_SPRITE_BASE_SCALE,
                TORMENT_SPRITE_SCALE_STEPS);
        }
        break;
    case TORMENT_SPRITE_ATTACKER_SCALE_STATE_GROW:
        if (ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->attackerSprite)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
                ctx->attackerSprite,
                ctx->attackerY,
                ctx->attackerOffset,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            ctx->attackerScaleState++;
            ScaleLerpContext_InitXY(
                &ctx->scale,
                TORMENT_SPRITE_SCALE_LARGE_X,
                TORMENT_SPRITE_BASE_SCALE,
                TORMENT_SPRITE_SCALE_LARGE_Y,
                TORMENT_SPRITE_BASE_SCALE,
                TORMENT_SPRITE_BASE_SCALE,
                TORMENT_SPRITE_SCALE_STEPS);
        }
        break;
    case TORMENT_SPRITE_ATTACKER_SCALE_STATE_RESET:
        if (ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->attackerSprite)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
                ctx->attackerSprite,
                ctx->attackerY,
                ctx->attackerOffset,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
            ctx->attackerScaleState++;
            done = TRUE;
        }
        break;
    case TORMENT_SPRITE_ATTACKER_SCALE_STATE_DONE:
        done = TRUE;
        break;
    }

    return done;
}

static void TormentSprite_InitSpeechBubble(ManagedSprite *sprite, int *outState, fx32 animSpeed)
{
    *outState = TORMENT_SPRITE_SPEECH_BUBBLE_STATE_ANIMATING;

    ManagedSprite_SetPriority(sprite, 100);
    ManagedSprite_SetExplicitPriority(sprite, 1);
    ManagedSprite_SetDrawFlag(sprite, TRUE);
    ManagedSprite_SetAnimateFlag(sprite, TRUE);
    ManagedSprite_SetAnimationSpeed(sprite, animSpeed);
    ManagedSprite_SetAnim(sprite, 0);
    ManagedSprite_SetAnimationFrame(sprite, 0);
    ManagedSprite_TickNFrames(sprite, FX32_CONST(55));
}

static BOOL TormentSprite_UpdateSpeechBubble(ManagedSprite *speechBubble, int *state)
{
    BOOL done = FALSE;

    switch (*state) {
    case TORMENT_SPRITE_SPEECH_BUBBLE_STATE_ANIMATING:
        if (ManagedSprite_IsAnimated(speechBubble) == FALSE) {
            (*state)++;
            done = TRUE;
        }
        break;
    case TORMENT_SPRITE_SPEECH_BUBBLE_STATE_DONE:
        done = TRUE;
        break;
    default:
        done = TRUE;
        break;
    }

    return done;
}

static void BattleAnimTask_TormentSprite(SysTask *task, void *param)
{
    TormentSpriteContext *ctx = param;
    BOOL attackerScaleDone, speechBubbleDone;
    int i;

    switch (ctx->state) {
    case TORMENT_SPRITE_STATE_INIT:
        TormentSprite_InitAttackerScale(ctx);
        TormentSprite_InitSpeechBubble(
            ctx->speechBubbleSprites[ctx->curSpeechBubble],
            &ctx->speechBubbleStates[ctx->curSpeechBubble],
            TORMENT_SPRITE_ANIM_SPEED);
        ctx->state++;
        break;
    case TORMENT_SPRITE_STATE_ANIMATE:
        attackerScaleDone = TormentSprite_UpdateAttackerScale(ctx);
        speechBubbleDone = TormentSprite_UpdateSpeechBubble(
            ctx->speechBubbleSprites[ctx->curSpeechBubble],
            &ctx->speechBubbleStates[ctx->curSpeechBubble]);

        if (attackerScaleDone == speechBubbleDone && attackerScaleDone == TRUE) {
            ManagedSprite_SetAnim(ctx->speechBubbleSprites[ctx->curSpeechBubble], 1);
            ctx->state++;
        }
        break;
    case TORMENT_SPRITE_STATE_DELAY:
        ctx->speechBubbleEndDelays[ctx->curSpeechBubble]--;

        if (ctx->speechBubbleEndDelays[ctx->curSpeechBubble] < 0) {
            ctx->curSpeechBubble++;

            if (ctx->curSpeechBubble < TORMENT_SPEECH_BUBBLE_COUNT) {
                ctx->state = 0;
            } else {
                ctx->state++;
            }
        }
        break;
    case TORMENT_SPRITE_STATE_REINIT:
        for (i = 0; i < TORMENT_SPEECH_BUBBLE_COUNT; i++) {
            TormentSprite_InitSpeechBubble(
                ctx->speechBubbleSprites[i],
                &ctx->speechBubbleStates[i],
                TORMENT_SPRITE_ANIM_SPEED);
        }

        ctx->state++;
        break;
    case TORMENT_SPRITE_STATE_ANIMATE2:
        for (i = 0; i < TORMENT_SPEECH_BUBBLE_COUNT; i++) {
            attackerScaleDone = TormentSprite_UpdateSpeechBubble(
                ctx->speechBubbleSprites[i],
                &ctx->speechBubbleStates[i]);
        }

        if (attackerScaleDone == TRUE) {
            ctx->state++;
        }
        break;
    case TORMENT_SPRITE_STATE_CLEANUP:
        for (i = 0; i < TORMENT_SPEECH_BUBBLE_COUNT; i++) {
            Sprite_DeleteAndFreeResources(ctx->speechBubbleSprites[i]);
        }

        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Torment(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    SpriteTemplate template;

    TormentSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(TormentSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    s16 attackerX = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
    s16 attackerY = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);

    ctx->attackerY = attackerY;
    ctx->attackerOffset = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    template = BattleAnimSystem_GetLastSpriteTemplate(ctx->battleAnimSys);

    for (int i = 0; i < TORMENT_SPEECH_BUBBLE_COUNT; i++) {
        if (i == 0) {
            ctx->speechBubbleSprites[i] = sprite;
        } else {
            ctx->speechBubbleSprites[i] = SpriteSystem_NewSprite(spriteSys, spriteMan, &template);
        }

        ManagedSprite_SetDrawFlag(ctx->speechBubbleSprites[i], FALSE);

        s16 offsetX = FX_Mul(FX_CosIdx((DEG_TO_IDX(90) / (TORMENT_SPEECH_BUBBLE_COUNT / 2)) * (i / 2)), FX32_CONST(48)) >> FX32_SHIFT;
        s16 offsetY = FX_Mul(FX_SinIdx((DEG_TO_IDX(90) / (TORMENT_SPEECH_BUBBLE_COUNT / 2)) * (i / 2)), FX32_CONST(48)) >> FX32_SHIFT;

        if ((i % 2) == 0) {
            offsetX = attackerX + offsetX;
            ManagedSprite_SetFlipMode(ctx->speechBubbleSprites[i], TRUE);
        } else {
            offsetX = attackerX - offsetX;
        }

        offsetY = attackerY - offsetY;
        ManagedSprite_SetPositionXY(ctx->speechBubbleSprites[i], offsetX, offsetY);

        if (i < 2) {
            ctx->speechBubbleEndDelays[i] = TORMENT_SPRITE_INBETWEEN_DELAY;
        } else {
            ctx->speechBubbleEndDelays[i] = 0;
        }
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_TormentSprite, ctx);
}

static void BattleAnimTask_BatonPassSprite(SysTask *task, void *param)
{
    BatonPassSpriteContext *ctx = param;

    switch (ctx->state) {
    case BATON_PASS_SPRITE_STATE_INIT:
        ManagedSprite_SetAnimateFlag(ctx->ballSprite, TRUE);
        ctx->state++;
        break;
    case BATON_PASS_SPRITE_STATE_ANIMATE_BALL:
        if (ManagedSprite_IsAnimated(ctx->ballSprite) == FALSE) {
            ManagedSprite_SetAnimateFlag(ctx->ballSprite, FALSE);
            ctx->state++;
            ScaleLerpContext_Init(
                &ctx->attackerScale,
                BATON_PASS_SPRITE_ATTACKER_BASE_SCALE,
                BATON_PASS_SPRITE_ATTACKER_BASE_SCALE,
                BATON_PASS_SPRITE_ATTACKER_END_SCALE,
                BATON_PASS_SPRITE_ANIM_FRAMES);
            int cx = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_X_CENTER);
            int cy = PokemonSprite_GetAttribute(ctx->attackerSprite, MON_SPRITE_Y_CENTER);
            PosLerpContext_Init(
                &ctx->attackerPos,
                cx,
                ctx->attackerX,
                cy,
                ctx->attackerY,
                BATON_PASS_SPRITE_ANIM_FRAMES);
        }
        break;
    case BATON_PASS_SPRITE_STATE_ANIMATE_ATTACKER:
        PosLerpContext_UpdateAndApplyToMon(&ctx->attackerPos, ctx->attackerSprite);

        if (ScaleLerpContext_UpdateAndApplyToMon(&ctx->attackerScale, ctx->attackerSprite) == FALSE) {
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_HIDE, TRUE);
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
            ManagedSprite_SetAnim(ctx->ballSprite, 1);
            ManagedSprite_SetAnimationSpeed(ctx->ballSprite, FX32_ONE);
            ManagedSprite_SetAnimateFlag(ctx->ballSprite, TRUE);
            ctx->state++;
        }
        break;
    case BATON_PASS_SPRITE_STATE_WAIT_BALL_ANIM:
        if (ManagedSprite_IsAnimated(ctx->ballSprite) == FALSE) {
            ManagedSprite_SetAnimateFlag(ctx->ballSprite, FALSE);
            ctx->state++;

            // Move Pokeball off-screen
            PosLerpContext_Init(
                &ctx->ballPos,
                0,
                0,
                ctx->attackerY,
                0,
                BATON_PASS_SPRITE_ANIM_FRAMES);
        }
        break;
    case BATON_PASS_SPRITE_STATE_MOVE_BALL_OFF_SCREEN:
        if (PosLerpContext_Update(&ctx->ballPos)) {
            ManagedSprite_SetPositionXY(ctx->ballSprite, ctx->attackerX, ctx->ballPos.y);
        } else {
            ctx->state++;
        }
        break;
    case BATON_PASS_SPRITE_STATE_CLEANUP:
        Sprite_DeleteAndFreeResources(ctx->ballSprite);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_BatonPass(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    BatonPassSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(BatonPassSpriteContext));
    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));

    PokemonSprite_SetAttribute(ctx->attackerSprite, MON_SPRITE_HIDE, FALSE);

    ctx->attackerX = BattleAnimUtil_GetBattlerPos(system, BattleAnimSystem_GetAttacker(system), BATTLE_ANIM_POSITION_MON_X);
    ctx->attackerY = BattleAnimUtil_GetBattlerPos(system, BattleAnimSystem_GetAttacker(system), BATTLE_ANIM_POSITION_MON_Y);
    ctx->ballSprite = sprite;

    ManagedSprite_SetPriority(ctx->ballSprite, 100);
    ManagedSprite_SetExplicitPriority(ctx->ballSprite, 1);
    ManagedSprite_SetPositionXY(ctx->ballSprite, ctx->attackerX, ctx->attackerY);
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_BatonPassSprite, ctx);
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

static void UnusedSprite_InitScaleAndAfterImage(UnusedSpriteContext *ctx)
{
    ScaleLerpContext_Init(&ctx->scale, 25, 10, 10, 10);
    Afterimage_Init(
        &ctx->afterImage,
        &ctx->scale,
        ScaleLerpContext_Update,
        ctx->defenderX,
        ctx->defenderY,
        9,
        3,
        1,
        ctx->sprites[2],
        ctx->sprites[1],
        ctx->sprites[0],
        NULL);
}

static void UnusedSprite_InitScaleAndAfterImage2(UnusedSpriteContext *ctx)
{
    ScaleLerpContext_Init(&ctx->scale, 10, 10, 25, 6);
    Afterimage_Init(
        &ctx->afterImage,
        &ctx->scale,
        ScaleLerpContext_Update,
        ctx->defenderX,
        ctx->defenderY,
        5,
        3,
        1,
        ctx->sprites[0],
        ctx->sprites[1],
        ctx->sprites[2],
        NULL);
    ManagedSprite_SetDrawFlag(ctx->sprites[0], TRUE);
}

static void BattleAnimTask_UnusedSprite(SysTask *param0, void *param)
{
    UnusedSpriteContext *ctx = param;

    switch (ctx->state) {
    case 0:
        UnusedSprite_InitScaleAndAfterImage(ctx);
        ctx->state++;
        break;
    case 1:
        if (Afterimage_Update(&ctx->afterImage) == FALSE) {
            ManagedSprite_SetDrawFlag(ctx->sprites[0], TRUE);
            ctx->state++;
            ShakeContext_Init(&ctx->shake, 4, 0, 1, 6);
        }
        break;
    case 2:
        if (ShakeContext_UpdateAndApplyToMon(&ctx->shake, ctx->defenderX, ctx->defenderY, ctx->defenderSprite) == FALSE) {
            ctx->state++;
            UnusedSprite_InitScaleAndAfterImage2(ctx);
        }
        break;
    case 3:
        if (Afterimage_Update(&ctx->afterImage) == FALSE) {
            ctx->state++;
        }
        break;
    case 4:
        for (int i = 0; i < UNUSED_SPRITE_COUNT; i++) {
            Sprite_DeleteAndFreeResources(ctx->sprites[i]);
        }

        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, param0);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Unused(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    SpriteTemplate template;

    UnusedSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(UnusedSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;
    ctx->defenderSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(system));
    ctx->defenderX = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_X_CENTER);
    ctx->defenderY = PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_Y_CENTER);
    ctx->defenderY -= PokemonSprite_GetAttribute(ctx->defenderSprite, MON_SPRITE_SHADOW_HEIGHT);

    template = BattleAnimSystem_GetLastSpriteTemplate(system);

    for (int i = 0; i < UNUSED_SPRITE_COUNT; i++) {
        if (i == 0) {
            ctx->sprites[i] = sprite;
            ManagedSprite_SetAnim(ctx->sprites[i], 1);
        } else {
            ctx->sprites[i] = SpriteSystem_NewSprite(ctx->spriteSys, ctx->spriteMan, &template);
            ManagedSprite_SetExplicitOamMode(ctx->sprites[i], GX_OAM_MODE_XLU);
        }

        ManagedSprite_SetPriority(ctx->sprites[i], 100);
        ManagedSprite_SetExplicitPriority(ctx->sprites[i], 1);
        ManagedSprite_SetPositionXY(ctx->sprites[i], ctx->defenderX, ctx->defenderY);
        ManagedSprite_SetDrawFlag(ctx->sprites[i], FALSE);
        ManagedSprite_SetAffineOverwriteMode(ctx->sprites[i], AFFINE_OVERWRITE_MODE_DOUBLE);
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_UnusedSprite, ctx);
}

static void GrudgeSprite_InitRevolutions(GrudgeSpriteContext *ctx, int dir)
{
    int angleStep = DEG_TO_IDX(360) / GRUDGE_SPRITE_COUNT;

    for (int i = 0; i < GRUDGE_SPRITE_COUNT; i++) {
        RevolutionContext_Init(
            &ctx->revs[i],
            GRUDGE_SPRITE_START_ANGLE,
            GRUDGE_SPRITE_END_ANGLE,
            0,
            0,
            GRUDGE_SPRITE_REV_RADIUS,
            0,
            GRUDGE_SPRITE_REV_FRAMES);
        ctx->revs[i].data[XY_PARAM_REV_CUR_X] += angleStep * i;
        ctx->revs[i].data[XY_PARAM_REV_STEP_SIZE_X] *= dir;
    }
}

static void GrudgeSprite_UpdateRevolutions(GrudgeSpriteContext *ctx)
{
    for (int i = 0; i < GRUDGE_SPRITE_COUNT; i++) {
        RevolutionContext_Update(&ctx->revs[i]);

        u16 angle = ctx->revs[i].data[XY_PARAM_REV_CUR_X] * GRUDGE_SPRITE_REV_X_SCALE;
        s16 offsetY = FX_Mul(FX_SinIdx(angle), GRUDGE_SPRITE_REV_Y_SCALE * ctx->dir) >> FX32_SHIFT;

        ManagedSprite_SetPositionXY(ctx->flameSprites[i], ctx->attackerX + ctx->revs[i].x, ctx->attackerY + offsetY);

        if (ctx->revs[i].data[XY_PARAM_REV_CUR_X] >= GRUDGE_SPRITE_REV_BEHIND_MIN_ANGLE
            && ctx->revs[i].data[XY_PARAM_REV_CUR_X] <= GRUDGE_SPRITE_REV_BEHIND_MAX_ANGLE) {
            ManagedSprite_SetExplicitPriority(ctx->flameSprites[i], 1);
        } else {
            ManagedSprite_SetExplicitPriority(ctx->flameSprites[i], BattleAnimSystem_GetPokemonSpritePriority(ctx->battleAnimSys) + 1);
        }
    }
}

static void BattleAnimTask_GrudgeSprite(SysTask *task, void *param)
{
    GrudgeSpriteContext *ctx = param;

    switch (ctx->state) {
    case GRUDGE_SPRITE_STATE_INIT:
        BattleAnimUtil_SetSpriteBgBlending(
            ctx->battleAnimSys,
            GURDGE_SPRITE_START_ALPHA,
            GRUDGE_SPRITE_MAX_ALPHA - GURDGE_SPRITE_START_ALPHA);
        AlphaFadeContext_Init(
            &ctx->alpha,
            GURDGE_SPRITE_START_ALPHA,
            GRUDGE_SPRITE_END_ALPHA,
            GRUDGE_SPRITE_MAX_ALPHA - GURDGE_SPRITE_START_ALPHA,
            GRUDGE_SPRITE_MAX_ALPHA - GRUDGE_SPRITE_END_ALPHA,
            GRUDGE_SPRITE_ALPHA_FADE_FRAMES);
        GrudgeSprite_InitRevolutions(ctx, ctx->dir);
        GrudgeSprite_UpdateRevolutions(ctx);
        ctx->state++;
        break;
    case GRUDGE_SPRITE_STATE_REVOLVE_AND_FADE_IN:
        GrudgeSprite_UpdateRevolutions(ctx);

        if (AlphaFadeContext_IsDone(&ctx->alpha)) {
            ctx->state++;
            ctx->delay = GRUDGE_SPRITE_REV_FRAMES - (2 * GRUDGE_SPRITE_ALPHA_FADE_FRAMES);
        }
        break;
    case GRUDGE_SPRITE_STATE_REVOLVE:
        GrudgeSprite_UpdateRevolutions(ctx);
        ctx->delay--;

        if (ctx->delay < 0) {
            ctx->state++;
            AlphaFadeContext_Init(
                &ctx->alpha,
                GRUDGE_SPRITE_END_ALPHA,
                GURDGE_SPRITE_START_ALPHA,
                GRUDGE_SPRITE_MAX_ALPHA - GRUDGE_SPRITE_END_ALPHA,
                GRUDGE_SPRITE_MAX_ALPHA - GURDGE_SPRITE_START_ALPHA,
                GRUDGE_SPRITE_ALPHA_FADE_FRAMES);
        }
        break;
    case GRUDGE_SPRITE_STATE_FADE_OUT:
        GrudgeSprite_UpdateRevolutions(ctx);

        if (AlphaFadeContext_IsDone(&ctx->alpha)) {
            ctx->state++;
        }
        break;
    case GIUDGE_SPRITE_STATE_CLEANUP:
        for (int i = 0; i < GRUDGE_SPRITE_COUNT; i++) {
            Sprite_DeleteAndFreeResources(ctx->flameSprites[i]);
        }

        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        return;
    }

    SpriteSystem_DrawSprites(ctx->spriteMan);
}

void BattleAnimSpriteFunc_Grudge(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite)
{
    SpriteTemplate template;

    GrudgeSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(GrudgeSpriteContext));

    ctx->battleAnimSys = system;
    ctx->spriteSys = spriteSys;
    ctx->spriteMan = spriteMan;

    PokemonSprite *attackerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));

    ctx->attackerX = PokemonSprite_GetAttribute(attackerSprite, MON_SPRITE_X_CENTER);
    ctx->attackerY = PokemonSprite_GetAttribute(attackerSprite, MON_SPRITE_Y_CENTER);

    template = BattleAnimSystem_GetLastSpriteTemplate(system);

    for (int i = 0; i < GRUDGE_SPRITE_COUNT; i++) {
        if (i == 0) {
            ctx->flameSprites[i] = sprite;
        } else {
            ctx->flameSprites[i] = SpriteSystem_NewSprite(ctx->spriteSys, ctx->spriteMan, &template);
        }

        ManagedSprite_SetPriority(ctx->flameSprites[i], 100);
        ManagedSprite_SetExplicitOamMode(ctx->flameSprites[i], GX_OAM_MODE_XLU);
        ManagedSprite_SetAnimateFlag(ctx->flameSprites[i], TRUE);
    }

    ctx->dir = BattleAnimUtil_GetTransformDirectionX(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_GrudgeSprite, ctx);
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
