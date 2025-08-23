#include "battle_anim/script_funcs_3.h"

#include "nitro/hw/common/lcd.h"
#include <nitro.h>
#include <string.h>

#include "constants/battle.h"
#include "constants/battle/battle_anim.h"
#include "constants/graphics.h"

#include "battle_anim/battle_anim_helpers.h"
#include "battle_anim/battle_anim_system.h"
#include "battle_anim/battle_anim_util.h"
#include "global/utility.h"

#include "battle_script_battlers.h"
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

// -------------------------------------------------------------------
// Scroll Custom BG
// -------------------------------------------------------------------
typedef struct ScrollCustomBgContext {
    BOOL reverse;
    BOOL scrollFinished;
    u16 targetBgAlpha;
    s16 x;
    s16 y;
    s16 stepX;
    s16 stepY;
    u16 slowDownTime;
    u16 timer;
    u16 bgAlpha;
    u16 otherAlpha;
    BattleAnimScriptFuncCommon common;
    SpriteShakeInfo unused0;
    BattleAnimSpriteInfo unused1[MAX_BATTLERS];
    XYTransformContext unused2;
} ScrollCustomBgContext;

enum ScrollCustomBgState {
    SCROLL_CUSTOM_BG_STATE_INIT = 0,
    SCROLL_CUSTOM_BG_STATE_FADE_IN,
    SCROLL_CUSTOM_BG_STATE_WAIT,
    SCROLL_CUSTOM_BG_STATE_FADE_OUT,
};

#define SCROLL_CUSTOM_BG_ALPHA_STEP          2
#define SCROLL_CUSTOM_BG_OTHER_START_ALPHA   31
#define SCROLL_CUSTOM_BG_OTHER_TARGET_ALPHA  7
#define SCROLL_CUSTOM_BG_MAX_Y               512
#define SCROLL_CUSTOM_BG_MIN_Y               (-412)
#define SCROLL_CUSTOM_BG_START_Y_OFFSET      ((128 / 3) * 2)
#define SCROLL_CUSTOM_BG_VAR_BG_ID           0
#define SCROLL_CUSTOM_BG_VAR_START_X         1
#define SCROLL_CUSTOM_BG_VAR_START_Y         2
#define SCROLL_CUSTOM_BG_VAR_STEP_X          3
#define SCROLL_CUSTOM_BG_VAR_STEP_Y          4
#define SCROLL_CUSTOM_BG_VAR_REVERSE         5
#define SCROLL_CUSTOM_BG_VAR_TARGET_BG_ALPHA 6
#define SCROLL_CUSTOM_BG_VAR_SLOW_DOWN_TIME  7

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

// -------------------------------------------------------------------
// Scale Battler Sprite
// -------------------------------------------------------------------
typedef struct ScaleBattlerSpriteContext {
    BattleAnimSystem *battleAnimSys;
    int state;
    s16 battlerY;
    s16 battlerSpriteHeight;
    PokemonSprite *monSprite;
    XYTransformContext scale;
    int startX;
    int endX;
    int startY;
    int endY;
    int reference;
    int cycles;
    int scaleFrames;
    int hold;
} ScaleBattlerSpriteContext;

enum ScaleBattlerSpriteState {
    SCALE_BATTLER_SPRITE_STATE_INIT_SCALE = 0,
    SCALE_BATTLER_SPRITE_STATE_SCALE,
    SCALE_BATTLER_SPRITE_STATE_HOLD,
    SCALE_BATTLER_SPRITE_STATE_INIT_RESTORE,
    SCALE_BATTLER_SPRITE_STATE_RESTORE,
    SCALE_BATTLER_SPRITE_STATE_CLEANUP,
};

#define SCALE_BATTLER_SPRITE_VAR_TARGET      0
#define SCALE_BATTLER_SPRITE_VAR_START_X     1
#define SCALE_BATTLER_SPRITE_VAR_END_X       2
#define SCALE_BATTLER_SPRITE_VAR_START_Y     3
#define SCALE_BATTLER_SPRITE_VAR_END_Y       4
#define SCALE_BATTLER_SPRITE_VAR_REFERENCE   5
#define SCALE_BATTLER_SPRITE_VAR_HOLD_CYCLES 6
#define SCALE_BATTLER_SPRITE_VAR_FRAMES      7

// -------------------------------------------------------------------
// Alpha Fade Pokemon Sprite
// -------------------------------------------------------------------
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

// -------------------------------------------------------------------
// Hide Battler
// -------------------------------------------------------------------
#define HIDE_BATTLER_VAR_TARGET 0
#define HIDE_BATTLER_VAR_HIDE   1

// -------------------------------------------------------------------
// Blink Attacker
// -------------------------------------------------------------------
typedef struct BlinkAttackerContext {
    int count;
    int timer;
    int interval;
    BattleAnimSpriteInfo spriteInfo;
    BattleAnimScriptFuncCommon common;
    BattleAnimSystem *battleAnimSys;
} BlinkAttackerContext;

#define BLINK_ATTACKER_VAR_COUNT    0
#define BLINK_ATTACKER_VAR_INTERVAL 1

// -------------------------------------------------------------------
// Muddy Water
// -------------------------------------------------------------------
typedef struct MuddyWaterContext {
    BOOL reverse;
    BOOL scrollFinished;
    u16 unused;
    s16 x;
    s16 y;
    s16 stepX;
    s16 stepY;
    u16 slowDownTime;
    u16 timer;
    u16 bgAlpha;
    u16 otherAlpha;
    BattleAnimScriptFuncCommon common;
    SpriteShakeInfo shakeInfo;
    BattleAnimSpriteInfo spriteInfo[4];
    XYTransformContext transform;
} MuddyWaterContext;

enum MuddyWaterState {
    MUDDY_WATER_STATE_INIT,
    MUDDY_WATER_STATE_FADE_IN,
    MUDDY_WATER_STATE_WAIT,
    MUDDY_WATER_STATE_FADE_OUT,
    MUDDY_WATER_STATE_END
};

#define MUDDY_WATER_VAR_BG_ID          0
#define MUDDY_WATER_VAR_START_X        1
#define MUDDY_WATER_VAR_START_Y        2
#define MUDDY_WATER_VAR_STEP_X         3
#define MUDDY_WATER_VAR_STEP_Y         4
#define MUDDY_WATER_VAR_REVERSE        5
#define MUDDY_WATER_VAR_UNUSED         6
#define MUDDY_WATER_VAR_SLOW_DOWN_TIME 7
#define MUDDY_WATER_MAX_Y              512
#define MUDDY_WATER_MIN_Y              (-412)
#define MUDDY_WATER_START_Y_OFFSET     ((128 / 3) * 2)
#define MUDDY_WATER_BG_START_ALPHA     4
#define MUDDY_WATER_OTHER_START_ALPHA  16
#define MUDDY_WATER_BG_END_ALPHA       16
#define MUDDY_WATER_OTHER_END_ALPHA    4
#define MUDDY_WATER_ALPHA_STEP         2

// -------------------------------------------------------------------
// Move Battler X
// -------------------------------------------------------------------
typedef struct MoveBattlerXContext {
    int unused0;
    int unused1;
    int frames;
    s16 offset;
    BattleAnimSpriteInfo spriteInfo;
    BattleAnimScriptFuncCommon common;
    XYTransformContext pos;
    BattleAnimSystem *battleAnimSys;
} MoveBattlerXContext;

typedef struct MoveBattlerX2Context {
    int unused0;
    int unused1;
    int frames;
    BattleAnimSpriteInfo spriteInfo;
    BattleAnimScriptFuncCommon common;
    XYTransformContext pos;
    BattleAnimSystem *battleAnimSys;
    s16 offset;
} MoveBattlerX2Context;

enum MoveBattlerXState {
    MOVE_BATTLER_X_STATE_INIT = 0,
    MOVE_BATTLER_X_STATE_MOVE,
};

#define MOVE_BATTLER_X_VAR_FRAMES 0
#define MOVE_BATTLER_X_VAR_OFFSET 1
#define MOVE_BATTLER_X_VAR_TARGET 2

// -------------------------------------------------------------------
// Shake and Scale Attacker
// -------------------------------------------------------------------
typedef struct ShakeAndScaleAttackerContext {
    u8 state;
    u8 unused0;
    s16 spriteY;
    int spriteHeight;
    u8 unused1;
    u8 timer;
    u8 holdFrames;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *sprite;
    XYTransformContext scale;
    XYTransformContext shake;
} ShakeAndScaleAttackerContext;

enum ShakeAndScaleAttackerState {
    SHAKE_AND_SCALE_ATTACKER_STATE_SCALE_1 = 0,
    SHAKE_AND_SCALE_ATTACKER_STATE_HOLD,
    SHAKE_AND_SCALE_ATTACKER_STATE_SCALE_2,
    SHAKE_AND_SCALE_ATTACKER_STATE_WAIT,
};

#define SHAKE_AND_SCALE_ATTACKER_EXTENT_X        2
#define SHAKE_AND_SCALE_ATTACKER_EXTENT_Y        0
#define SHAKE_AND_SCALE_ATTACKER_INTERVAL        0
#define SHAKE_AND_SCALE_ATTACKER_AMOUNT          10
#define SHAKE_AND_SCALE_ATTACKER_VAR_SCALE_1     0
#define SHAKE_AND_SCALE_ATTACKER_VAR_SCALE_2     1
#define SHAKE_AND_SCALE_ATTACKER_VAR_FRAMES_1    2
#define SHAKE_AND_SCALE_ATTACKER_VAR_FRAMES_2    3
#define SHAKE_AND_SCALE_ATTACKER_VAR_HOLD_FRAMES 4

typedef struct ShakeAndScaleAttacker2Context {
    u8 state;
    u8 unused0;
    s16 posY;
    int spriteOffset;
    u8 unused1;
    u8 timer;
    u8 holdFrames;
    int scale2X;
    int scale2Y;
    int scale2Frames;
    BattleAnimSystem *battleAnimSys;
    PokemonSprite *sprite;
    XYTransformContext scale;
    XYTransformContext shake;
} ShakeAndScaleAttacker2Context;

enum ShakeAndScaleAttacker2State {
    SHAKE_AND_SCALE_ATTACKER_2_STATE_SCALE_1 = 0,
    SHAKE_AND_SCALE_ATTACKER_2_STATE_HOLD,
    SHAKE_AND_SCALE_ATTACKER_2_STATE_SCALE_2,
    SHAKE_AND_SCALE_ATTACKER_2_STATE_WAIT,
};

#define SHAKE_AND_SCALE_ATTACKER_2_EXTENT_X           2
#define SHAKE_AND_SCALE_ATTACKER_2_EXTENT_Y           0
#define SHAKE_AND_SCALE_ATTACKER_2_INTERVAL           0
#define SHAKE_AND_SCALE_ATTACKER_2_AMOUNT             10
#define SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_1_X      0
#define SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_1_Y      1
#define SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_1_FRAMES 2
#define SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_2_X      3
#define SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_2_Y      4
#define SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_2_FRAMES 5
#define SHAKE_AND_SCALE_ATTACKER_2_VAR_HOLD_FRAMES    6

// -------------------------------------------------------------------
// Superpower
// -------------------------------------------------------------------
typedef struct SuperpowerContext {
    int unused0;
    BattleAnimScriptFuncCommon common;
    ManagedSprite *unused1;
    ManagedSprite *sprite;
} SuperpowerContext;

// -------------------------------------------------------------------
// Move Battler
// -------------------------------------------------------------------
typedef struct MoveBattlerContext {
    int unk_00;
    int unk_04;
    int frames;
    BattleAnimSpriteInfo spriteInfo;
    BattleAnimScriptFuncCommon common;
    XYTransformContext pos;
    BattleAnimSystem *battleAnimSys;
    s16 offsetX;
    s16 offsetY;
} MoveBattlerContext;

enum MoveBattlerState {
    MOVE_BATTLER_STATE_INIT = 0,
    MOVE_BATTLER_STATE_MOVE,
};

#define MOVE_BATTLER_VAR_FRAMES   0
#define MOVE_BATTLER_VAR_OFFSET_X 1
#define MOVE_BATTLER_VAR_OFFSET_Y 2
#define MOVE_BATTLER_VAR_TARGET   3

// -------------------------------------------------------------------
// Revolve Battler
// -------------------------------------------------------------------
typedef struct RevolveBattlerContext {
    BattleAnimScriptFuncCommon common;
    BattleAnimSpriteInfo spriteInfo;
    XYTransformContext revs;
} RevolveBattlerContext;

#define REVOLVE_BATTLER_VAR_TARGET         0
#define REVOLVE_BATTLER_VAR_REVS           1
#define REVOLVE_BATTLER_VAR_FRAMES_PER_REV 2

// -------------------------------------------------------------------
// Move Battler On/Off-Screen
// -------------------------------------------------------------------
typedef struct MoveBattlerOffScreenContext {
    BattleAnimScriptFuncCommon common;
    BattleAnimSpriteInfo spriteInfo;
    XYTransformContext pos;
    Point2D unused;
    Point2D destPos;
} MoveBattlerOffScreenContext;

#define MOVE_BATTLER_OFF_SCREEN_VAR_TARGET       0
#define MOVE_BATTLER_OFF_SCREEN_VAR_FRAMES       1
#define MOVE_BATTLER_ON_OR_OFF_SCREEN_VAR_MODE   0
#define MOVE_BATTLER_ON_OR_OFF_SCREEN_VAR_TARGET 1
#define MOVE_BATTLER_ON_OR_OFF_SCREEN_VAR_FRAMES 2

// -------------------------------------------------------------------
// Fade Pokemon Sprite
// -------------------------------------------------------------------
typedef struct FadePokemonSpriteContext {
    BattleAnimScriptFuncCommon common;
    BattleAnimSpriteInfo spriteInfo;
    PaletteFadeContext *paletteFade;
} FadePokemonSpriteContext;

#define FADE_POKEMON_SPRITE_TASK_PRIORITY   1100
#define FADE_POKEMON_SPRITE_VAR_TARGET      0
#define FADE_POKEMON_SPRITE_VAR_STEP_FRAMES 1
#define FADE_POKEMON_SPRITE_VAR_STEP_SIZE   2
#define FADE_POKEMON_SPRITE_VAR_START_FRAC  3
#define FADE_POKEMON_SPRITE_VAR_END_FRAC    4
#define FADE_POKEMON_SPRITE_VAR_COLOR       5

// -------------------------------------------------------------------
// Battler Partial Draw Test
// -------------------------------------------------------------------
typedef struct BattlerPartialDrawTestContext {
    BattleAnimScriptFuncCommon common;
    BattleAnimSpriteInfo spriteInfo;
    int xOffset;
    int yOffset;
    int width;
    int height;
    s16 unused;
    s16 step;
    int stepFrames;
    int mode;
    int timer;
    int y;
    int drawHeight;
} BattlerPartialDrawTestContext;

#define BATTLER_PARTIAL_DRAW_TEST_VAR_TARGET      0
#define BATTLER_PARTIAL_DRAW_TEST_VAR_MODE        1
#define BATTLER_PARTIAL_DRAW_TEST_VAR_UNUSED      2
#define BATTLER_PARTIAL_DRAW_TEST_VAR_STEP        3
#define BATTLER_PARTIAL_DRAW_TEST_VAR_STEP_FRAMES 4

// -------------------------------------------------------------------
// Battler Partial Draw
// -------------------------------------------------------------------
typedef struct BattlerPartialDrawContext {
    BattleAnimScriptFuncCommon common;
    s16 step;
    int stepInterval;
    int timer;
    BattleAnimSpriteInfo spriteInfo;
    int yOffset;
    int height;
    int y;
    int baseY;
    int unk_4C;
} BattlerPartialDrawContext;

enum BattlerPartialDrawState {
    BATTLE_PARTIAL_DRAW_STATE_DRAW = 0,
    BATTLE_PARTIAL_DRAW_STATE_CLEANUP,
};

#define BATTLER_PARTIAL_DRAW_VAR_TARGET        0
#define BATTLER_PARTIAL_DRAW_VAR_STEP_SIZE     3
#define BATTLER_PARTIAL_DRAW_VAR_STEP_INTERVAL 4
#define BATTLER_PARTIAL_DRAW_VAR_IS_SKETCH     5

// -------------------------------------------------------------------
// Shake Background
// -------------------------------------------------------------------
typedef struct ShakeBgContext {
    u8 state;
    u8 iteration;
    u8 unused0[2];
    int extentX;
    int extentY;
    int interval;
    int amount;
    int unused1;
    int cycles;
    int bgLayer;
    BOOL resetX;
    BOOL resetY;
    BgConfig *bgConfig;
    BattleAnimSystem *battleAnimSys;
    SpriteManager *pokemonSpriteManager;
    BattleAnimSpriteInfo unused2[8];
    XYTransformContext shake;
} ShakeBgContext;

enum ShakeBgState {
    SHAKE_BG_STATE_INIT = 0,
    SHAKE_BG_STATE_SHAKE,
};

#define SHAKE_BG_VAR_EXTENT_X 0
#define SHAKE_BG_VAR_EXTENT_Y 1
#define SHAKE_BG_VAR_INTERVAL 2
#define SHAKE_BG_VAR_AMOUNT   3
#define SHAKE_BG_VAR_CYCLES   4
#define SHAKE_BG_VAR_TARGET   5

// -------------------------------------------------------------------
// Pixelate Pokemon Sprite
// -------------------------------------------------------------------
typedef struct PixelatePokemonSpriteContext {
    BattleAnimScriptFuncCommon common;
    ManagedSprite *sprite;
    s16 scaleStep;
    int scaleX;
    int scaleY;
    int targetScale;
} PixelatePokemonSpriteContext;

#define PIXELATE_POKEMON_SPRITE_MIN_SCALE   0
#define PIXELATE_POKEMON_SPRITE_MAX_SCALE   15
#define PIXELATE_POKEMON_SPRITE_VAR_TARGET  0
#define PIXELATE_POKEMON_SPRITE_VAR_STEP    1
#define PIXELATE_POKEMON_SPRITE_VAR_START_X 2
#define PIXELATE_POKEMON_SPRITE_VAR_START_Y 3

// -------------------------------------------------------------------
// Emitter Animation
// -------------------------------------------------------------------
typedef struct EmitterAnimationContext {
    int emitterID;
    s16 startDelay;
    s16 frames;
    int radius;
    Point2D offset;
    int mode;
    int startBattler;
    int endBattler;
    int frame; // Never actually used properly so doesn't do anything
    int skipFrames; // Number of steps/frames to skip before updating the emitter
    int maxFrames;
    int timer;
    int angle;
    BOOL curve;
    ParticleSystem *particleSys;
    SPLEmitter *emitter;
    BattleAnimScriptFuncCommon common;
    BattleAnimSpriteInfo unk_58[4];
    XYTransformContext transforms[2];
    ValueLerpContext unused;
} EmitterAnimationContext;

#define EMITTER_ANIMATION_VAR_EMITTER_ID  0
#define EMITTER_ANIMATION_VAR_OFFSET_X    1
#define EMITTER_ANIMATION_VAR_OFFSET_Y    2
#define EMITTER_ANIMATION_VAR_START_DELAY 3
#define EMITTER_ANIMATION_VAR_FRAMES      4
#define EMITTER_ANIMATION_VAR_RADIUS      5
#define EMITTER_ANIMATION_VAR_MODE        6
#define EMITTER_ANIMATION_VAR_PARAMS      7
#define EMITTER_ANIMATION_VAR_CURVE       8
// Vars for MoveEmitterViewportTop
#define EMITTER_ANIMATION_VAR_EMITTER_ID_ALT  0
#define EMITTER_ANIMATION_VAR_MODE_ALT        1
#define EMITTER_ANIMATION_VAR_TYPE_ALT        2
#define EMITTER_ANIMATION_VAR_FRAMES_ALT      3
#define EMITTER_ANIMATION_VAR_START_DELAY_ALT 4
#define EMITTER_ANIMATION_VAR_PARAMS_ALT      5

// -------------------------------------------------------------------
// Emitter Revolution
// -------------------------------------------------------------------
typedef struct EmitterRevolutionContext {
    int emitterID;
    int sx;
    int sy;
    int ex;
    int ey;
    int rx;
    int ry;
    int frames;
    int mode;
    int battler;
    int unused0[3];
    ParticleSystem *particleSys;
    SPLEmitter *emitter;
    BattleAnimScriptFuncCommon common;
    XYTransformContext revs;
    VecFx32 unused1;
    VecFx32 battlerPos;
} EmitterRevolutionContext;

#define EMITTER_REVOLUTION_VAR_EMITTER_ID      0
#define EMITTER_REVOLUTION_VAR_START_X         1
#define EMITTER_REVOLUTION_VAR_END_X           2
#define EMITTER_REVOLUTION_VAR_START_Y         3
#define EMITTER_REVOLUTION_VAR_END_Y           4
#define EMITTER_REVOLUTION_VAR_RADIUS_X        5
#define EMITTER_REVOLUTION_VAR_RADIUS_Y        6
#define EMITTER_REVOLUTION_VAR_FRAMES          7
#define EMITTER_REVOLUTION_VAR_MODE            8
#define EMITTER_REVOLUTION_VAR_PARTICLE_SYSTEM 9

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

// -------------------------------------------------------------------
// Set Pokemon Sprite Priority
// -------------------------------------------------------------------
typedef struct SetPokemonSpritePriorityContext {
    BattleAnimScriptFuncCommon common;
    ManagedSprite *sprite;
    int spriteID;
    int maxFrames;
    int bg;
    int spritePriority;
    int mode;
    int windowType;
    int stepCount;
    int sinkFullyStartFrame;
} SetPokemonSpritePriorityContext;

#define DARK_VOID_RANDOM_STEP_Y                         4
#define DARK_VOID_RANDOM_STEP_Y_L                       8
#define DARK_VOID_MAX_Y                                 130
#define DARK_VOID_SINK_FULLY_MIN_FRAME                  35
#define DARK_VOID_SINK_FULLY_RNG_FRAME                  5
#define SET_POKEMON_SPRITE_PRIORITY_VAR_SPRITE_ID       0
#define SET_POKEMON_SPRITE_PRIORITY_VAR_MAX_FRAMES      1
#define SET_POKEMON_SPRITE_PRIORITY_VAR_BG              2
#define SET_POKEMON_SPRITE_PRIORITY_VAR_SPRITE_PRIORITY 3
#define SET_POKEMON_SPRITE_PRIORITY_VAR_BATTLER         4
#define SET_POKEMON_SPRITE_PRIORITY_VAR_MODE            5
#define SET_POKEMON_SPRITE_PRIORITY_VAR_WINDOW_TYPE     6

// -------------------------------------------------------------------
// Render Pokemon Sprites
// -------------------------------------------------------------------
typedef struct RenderPokemonSpritesContext {
    BattleAnimScriptFuncCommon common;
    ManagedSprite *sprites[MAX_BATTLERS];
    int frames;
    int unused;
} RenderPokemonSpritesContext;

#define RENDER_POKEMON_SPRITES_DEFAULT_FRAMES 3
#define RENDER_POKEMON_SPRITES_VAR_FRAMES     0

// -------------------------------------------------------------------
// Scroll Switched Bg
// -------------------------------------------------------------------
typedef struct ScrollSwitchedBgContext {
    int timer;
    int frames;
    BattleAnimScriptFuncCommon common;
    BgScrollContext *bgScroll;
} ScrollSwitchedBgContext;

enum ScrollSwitchedBgState {
    SCROLL_SWITCHED_BG_STATE_INIT,
    SCROLL_SWITCHED_BG_STATE_SCROLL,
};

#define SCROLL_SWITCHED_BG_START_Y    0
#define SCROLL_SWITCHED_BG_END_Y      160
#define SCROLL_SWITCHED_BG_ANGLE_STEP DEG_TO_IDX(1)
#define SCROLL_SWITCHED_BG_AMPLITUDE  FX32_CONST(32)
#define SCROLL_SWITCHED_BG_SPEED      200
#define SCROLL_SWITCHED_BG_INIT_X     0
#define SCROLL_SWITCHED_BG_INIT_Y     0
#define SCROLL_SWITCHED_BG_VAR_FRAMES 0

static int GetBattlerFromBattlerFlags(BattleAnimSystem *param0, int param1);

static void ResetMonScale(PokemonSprite *sprite)
{
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
    PokemonSprite_SetAttribute(sprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
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
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
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

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_Shake, ctx);
}

static void BattleAnimTask_ScrollCustomBg(SysTask *task, void *param)
{
    ScrollCustomBgContext *ctx = param;

    switch (ctx->common.state) {
    case SCROLL_CUSTOM_BG_STATE_INIT:
        G2_SetBlendAlpha(
            GX_BLEND_PLANEMASK_BG2,
            GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3,
            ctx->bgAlpha,
            ctx->otherAlpha);
        Bg_ToggleLayer(BATTLE_BG_BASE, TRUE);
        ctx->common.state++;
    case SCROLL_CUSTOM_BG_STATE_FADE_IN: {
        int completed = 0;

        if (ctx->bgAlpha < ctx->targetBgAlpha - SCROLL_CUSTOM_BG_ALPHA_STEP) {
            ctx->bgAlpha += SCROLL_CUSTOM_BG_ALPHA_STEP;
        } else {
            completed++;
        }

        if (ctx->otherAlpha > SCROLL_CUSTOM_BG_OTHER_TARGET_ALPHA + SCROLL_CUSTOM_BG_ALPHA_STEP) {
            ctx->otherAlpha -= SCROLL_CUSTOM_BG_ALPHA_STEP;
        } else {
            completed++;
        }

        if (completed == 2) {
            ctx->bgAlpha = ctx->targetBgAlpha;
            ctx->otherAlpha = SCROLL_CUSTOM_BG_OTHER_TARGET_ALPHA;
            ctx->common.state++;
        }

        G2_ChangeBlendAlpha(ctx->bgAlpha, ctx->otherAlpha);
    } break;
    case SCROLL_CUSTOM_BG_STATE_WAIT:
        if (ctx->scrollFinished) {
            ctx->common.state++;
        }
        break;
    case SCROLL_CUSTOM_BG_STATE_FADE_OUT: {
        int completed = 0;

        if (ctx->bgAlpha > SCROLL_CUSTOM_BG_ALPHA_STEP) {
            ctx->bgAlpha -= SCROLL_CUSTOM_BG_ALPHA_STEP;
        } else {
            completed++;
        }

        if (ctx->otherAlpha < SCROLL_CUSTOM_BG_OTHER_START_ALPHA - SCROLL_CUSTOM_BG_ALPHA_STEP) {
            ctx->otherAlpha += SCROLL_CUSTOM_BG_ALPHA_STEP;
        } else {
            completed++;
        }

        if (completed == 2) {
            ctx->bgAlpha = 0;
            ctx->otherAlpha = SCROLL_CUSTOM_BG_OTHER_START_ALPHA;
            ctx->common.state++;
        }

        G2_ChangeBlendAlpha(ctx->bgAlpha, ctx->otherAlpha);
    } break;
    default:
        Bg_ToggleLayer(BATTLE_BG_BASE, FALSE);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    if ((ctx->stepY > 0 && ctx->y >= SCROLL_CUSTOM_BG_MAX_Y) || (ctx->stepY < 0 && ctx->y <= SCROLL_CUSTOM_BG_MIN_Y)) {
        ctx->scrollFinished = TRUE;
    }

    ctx->x += ctx->stepX;
    ctx->y += ctx->stepY;

    if (ctx->slowDownTime < ctx->timer) {
        if (ctx->stepY < 0) {
            ctx->stepY++;
        } else {
            ctx->stepY = 0;
        }

        if (ctx->stepX < 0) {
            ctx->stepX++;
        } else {
            ctx->stepX = 0;
        }

        ctx->timer = 0;
    } else {
        ctx->timer++;
    }

    Bg_SetOffset(ctx->common.bgConfig, 2, 0, ctx->x);
    Bg_SetOffset(ctx->common.bgConfig, 2, 3, ctx->y);
}

void BattleAnimScriptFunc_ScrollCustomBg(BattleAnimSystem *system)
{
    ScrollCustomBgContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ScrollCustomBgContext));

    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->x = BattleAnimSystem_GetScriptVar(system, SCROLL_CUSTOM_BG_VAR_START_X);
    ctx->y = BattleAnimSystem_GetScriptVar(system, SCROLL_CUSTOM_BG_VAR_START_Y);
    ctx->stepX = BattleAnimSystem_GetScriptVar(system, SCROLL_CUSTOM_BG_VAR_STEP_X);
    ctx->stepY = BattleAnimSystem_GetScriptVar(system, SCROLL_CUSTOM_BG_VAR_STEP_Y);
    ctx->reverse = BattleAnimSystem_GetScriptVar(system, SCROLL_CUSTOM_BG_VAR_REVERSE);
    ctx->targetBgAlpha = BattleAnimSystem_GetScriptVar(system, SCROLL_CUSTOM_BG_VAR_TARGET_BG_ALPHA);
    ctx->slowDownTime = BattleAnimSystem_GetScriptVar(system, SCROLL_CUSTOM_BG_VAR_SLOW_DOWN_TIME);
    ctx->timer = 0;

    if (ctx->reverse && BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetAttacker(system)) == BTLSCR_ENEMY) {
        ctx->x *= -1;
        ctx->y *= -1;
        ctx->stepX *= -1;
        ctx->stepY *= -1;
        ctx->y -= SCROLL_CUSTOM_BG_START_Y_OFFSET;
    } else {
        ctx->y += SCROLL_CUSTOM_BG_START_Y_OFFSET;
    }

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        ctx->stepX *= -1;
    }

    ctx->bgAlpha = 0;
    ctx->otherAlpha = SCROLL_CUSTOM_BG_OTHER_START_ALPHA;
    ctx->scrollFinished = FALSE;

    Bg_ToggleLayer(BATTLE_BG_BASE, FALSE);

    int bgID = BattleAnimSystem_GetScriptVar(system, SCROLL_CUSTOM_BG_VAR_BG_ID);

    Graphics_LoadTilesToBgLayer(
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, BG_NARC_MEMBER_NCGR),
        ctx->common.bgConfig,
        BATTLE_BG_BASE,
        0,
        0,
        TRUE,
        BattleAnimSystem_GetHeapID(system));
    PaletteData_LoadBufferFromFileStart(
        ctx->common.paletteData,
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, BG_NARC_MEMBER_NCLR),
        BattleAnimSystem_GetHeapID(system),
        PLTTBUF_MAIN_BG,
        PALETTE_SIZE_BYTES,
        PLTT_DEST(BATTLE_BG_PALETTE_EFFECT));
    Bg_ClearTilemap(ctx->common.bgConfig, BATTLE_BG_BASE);

    enum BgNarcMemberType member = BG_NARC_MEMBER_NSCR1;

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        member = BG_NARC_MEMBER_NSCR3;
    } else if (BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetAttacker(system)) == BTLSCR_ENEMY) {
        member = BG_NARC_MEMBER_NSCR2;
    }

    Graphics_LoadTilemapToBgLayer(
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, member),
        ctx->common.bgConfig,
        BATTLE_BG_BASE,
        0,
        0,
        TRUE,
        BattleAnimSystem_GetHeapID(system));

    Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_X, ctx->x);
    Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_Y, ctx->y);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_ScrollCustomBg, ctx);
}

static void BattleAnimTask_MuddyWater(SysTask *task, void *param)
{
    MuddyWaterContext *ctx = (MuddyWaterContext *)param;

    switch (ctx->common.state) {
    case MUDDY_WATER_STATE_INIT:
        G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG2, GX_BLEND_PLANEMASK_BD | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG3, ctx->bgAlpha, ctx->otherAlpha);
        Bg_ToggleLayer(BATTLE_BG_BASE, TRUE);
        ctx->common.state++;
    case MUDDY_WATER_STATE_FADE_IN: {
        int fadeInComplete = 0;

        if (ctx->bgAlpha < MUDDY_WATER_BG_END_ALPHA) {
            ctx->bgAlpha += MUDDY_WATER_ALPHA_STEP;
        } else {
            fadeInComplete++;
        }

        if (ctx->otherAlpha > MUDDY_WATER_OTHER_END_ALPHA) {
            ctx->otherAlpha -= MUDDY_WATER_ALPHA_STEP;
        } else {
            fadeInComplete++;
        }

        if (fadeInComplete == 2) {
            ctx->bgAlpha = MUDDY_WATER_BG_END_ALPHA;
            ctx->otherAlpha = MUDDY_WATER_OTHER_END_ALPHA;
            ctx->common.state++;
        }

        G2_ChangeBlendAlpha(ctx->bgAlpha, ctx->otherAlpha);
    } break;
    case MUDDY_WATER_STATE_WAIT:
        if (ctx->scrollFinished) {
            ctx->common.state++;
        }
        break;
    case MUDDY_WATER_STATE_FADE_OUT: {
        int fadeOutComplete = 0;

        if (ctx->bgAlpha > 2) {
            ctx->bgAlpha -= MUDDY_WATER_ALPHA_STEP;
        } else {
            fadeOutComplete++;
        }

        if (ctx->otherAlpha < MUDDY_WATER_OTHER_START_ALPHA) {
            ctx->otherAlpha += MUDDY_WATER_ALPHA_STEP;
        } else {
            fadeOutComplete++;
        }

        if (fadeOutComplete == 2) {
            ctx->bgAlpha = 0;
            ctx->otherAlpha = 31;
            ctx->common.state++;
        }

        G2_ChangeBlendAlpha(ctx->bgAlpha, ctx->otherAlpha);
    } break;
    default:
        Bg_ToggleLayer(BATTLE_BG_BASE, FALSE);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    if ((ctx->stepY > 0 && ctx->y >= MUDDY_WATER_MAX_Y) || (ctx->stepY < 0 && ctx->y <= MUDDY_WATER_MIN_Y)) {
        ctx->scrollFinished = TRUE;
    }

    ctx->x += ctx->stepX;
    ctx->y += ctx->stepY;

    if (ctx->slowDownTime < ctx->timer) {
        if (ctx->stepY < 0) {
            ctx->stepY++;
        } else {
            ctx->stepY = 0;
        }

        if (ctx->stepX < 0) {
            ctx->stepX++;
        } else {
            ctx->stepX = 0;
        }

        ctx->timer = 0;
    } else {
        ctx->timer++;
    }

    Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_X, ctx->x);
    Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_Y, ctx->y);
}

void BattleAnimScriptFunc_MuddyWater(BattleAnimSystem *system)
{
    MuddyWaterContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MuddyWaterContext));

    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->x = BattleAnimSystem_GetScriptVar(system, MUDDY_WATER_VAR_START_X);
    ctx->y = BattleAnimSystem_GetScriptVar(system, MUDDY_WATER_VAR_START_Y);
    ctx->stepX = BattleAnimSystem_GetScriptVar(system, MUDDY_WATER_VAR_STEP_X);
    ctx->stepY = BattleAnimSystem_GetScriptVar(system, MUDDY_WATER_VAR_STEP_Y);
    ctx->reverse = BattleAnimSystem_GetScriptVar(system, MUDDY_WATER_VAR_REVERSE);
    ctx->unused = BattleAnimSystem_GetScriptVar(system, MUDDY_WATER_VAR_UNUSED);
    ctx->slowDownTime = BattleAnimSystem_GetScriptVar(system, MUDDY_WATER_VAR_SLOW_DOWN_TIME);
    ctx->timer = 0;

    if (ctx->reverse != 0 && BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetAttacker(system)) == BTLSCR_ENEMY) {
        ctx->x *= -1;
        ctx->y *= -1;
        ctx->stepX *= -1;
        ctx->stepY *= -1;
        ctx->y -= MUDDY_WATER_START_Y_OFFSET;
    } else {
        ctx->y += MUDDY_WATER_START_Y_OFFSET;
    }

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        ctx->stepX *= -1;
    }

    ctx->bgAlpha = MUDDY_WATER_BG_START_ALPHA;
    ctx->otherAlpha = MUDDY_WATER_OTHER_START_ALPHA;
    ctx->bgAlpha = 0;
    ctx->otherAlpha = MUDDY_WATER_OTHER_START_ALPHA;
    ctx->scrollFinished = FALSE;

    Bg_ToggleLayer(BATTLE_BG_BASE, FALSE);

    int bgID = BattleAnimSystem_GetScriptVar(system, MUDDY_WATER_VAR_BG_ID);

    Graphics_LoadTilesToBgLayer(
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, BG_NARC_MEMBER_NCGR),
        ctx->common.bgConfig,
        BATTLE_BG_BASE,
        0,
        0,
        TRUE,
        BattleAnimSystem_GetHeapID(system));
    PaletteData_LoadBufferFromFileStart(
        ctx->common.paletteData,
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, BG_NARC_MEMBER_NCLR),
        BattleAnimSystem_GetHeapID(system),
        0,
        PALETTE_SIZE_BYTES,
        PLTT_DEST(BATTLE_BG_PALETTE_EFFECT));
    Bg_ClearTilemap(ctx->common.bgConfig, BATTLE_BG_BASE);

    enum BgNarcMemberType member = BG_NARC_MEMBER_NSCR1;

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        member = BG_NARC_MEMBER_NSCR3;
    } else if (BattleAnimUtil_GetBattlerSide(system, BattleAnimSystem_GetAttacker(system)) == BTLSCR_ENEMY) {
        member = BG_NARC_MEMBER_NSCR2;
    }

    Graphics_LoadTilemapToBgLayer(
        NARC_INDEX_BATTLE__GRAPHIC__PL_BATT_BG,
        BattleAnimSystem_GetBgNarcMemberIndex(bgID, member),
        ctx->common.bgConfig,
        BATTLE_BG_BASE,
        0,
        0,
        TRUE,
        BattleAnimSystem_GetHeapID(system));

    Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_X, ctx->x);
    Bg_SetOffset(ctx->common.bgConfig, BATTLE_BG_BASE, BG_OFFSET_UPDATE_SET_Y, ctx->y);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_MuddyWater, ctx);
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
    RotateMonContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(RotateMonContext));

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
    SubmissionContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(SubmissionContext));
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
    if (BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_TARGET) == BATTLER_ROLE_ATTACKER) {
        battlerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(system));
        ctx->battlerHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    } else {
        battlerSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));
        ctx->battlerHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetDefender(ctx->battleAnimSys));
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

    int battlerRole = BattleAnimSystem_GetScriptVar(system, SCALE_POKEMON_SPRITE_VAR_TARGET);
    if (battlerRole == BATTLER_ROLE_ATTACKER) {
        battlerRole = BATTLER_ROLE_ATTACKER;
    } else {
        battlerRole = BATTLER_ROLE_DEFENDER;
    }

    if (BattleAnimSystem_ShouldBattlerSpriteBeFlipped(ctx->battleAnimSys, battlerRole) == TRUE) {
        ctx->flip = TRUE;
    }
}

static void BattleAnimTask_ScaleBattlerSprite(SysTask *task, void *param)
{
    ScaleBattlerSpriteContext *ctx = param;

    switch (ctx->state) {
    case SCALE_BATTLER_SPRITE_STATE_INIT_SCALE:
        ScaleLerpContext_InitXY(
            &ctx->scale,
            ctx->startX,
            ctx->endX,
            ctx->startY,
            ctx->endY,
            ctx->reference,
            SCALE_POKEMON_SPRITE_SCALE_FRAMES(ctx->scaleFrames));
        ScaleLerpContext_UpdateAndApplyToMon(&ctx->scale, ctx->monSprite);
        ctx->state++;
        break;
    case SCALE_BATTLER_SPRITE_STATE_SCALE:
        if (ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->monSprite)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
                ctx->monSprite,
                ctx->battlerY,
                ctx->battlerSpriteHeight,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            ctx->state++;
        }
        break;
    case SCALE_BATTLER_SPRITE_STATE_HOLD:
        if (ctx->hold == 0) {
            ctx->state++;
        } else {
            // BUG: Because the initial hold value isn't saved anywhere, the hold
            // will only apply to the first cycle.
            ctx->hold--;
            break;
        }
    case SCALE_BATTLER_SPRITE_STATE_INIT_RESTORE:
        ScaleLerpContext_InitXY(
            &ctx->scale,
            ctx->endX,
            ctx->startX,
            ctx->endY,
            ctx->startY,
            ctx->reference,
            SCALE_POKEMON_SPRITE_RESTORE_FRAMES(ctx->scaleFrames));
        ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->monSprite);
        ctx->state++;
        break;
    case SCALE_BATTLER_SPRITE_STATE_RESTORE:
        if (ScaleLerpContext_UpdateXYAndApplyToMon(&ctx->scale, ctx->monSprite)) {
            BattleAnimUtil_SetPokemonSpriteAnchoredPosition(
                ctx->monSprite,
                ctx->battlerY,
                ctx->battlerSpriteHeight,
                ctx->scale.data[XY_PARAM_CUR_Y],
                BATTLE_ANIM_ANCHOR_BOTTOM);
        } else {
            ctx->cycles--;

            if (ctx->cycles <= 0) {
                ctx->state++;
            } else {
                ctx->state = SCALE_BATTLER_SPRITE_STATE_INIT_SCALE;
            }
        }
        break;
    case SCALE_BATTLER_SPRITE_STATE_CLEANUP:
        ResetMonScale(ctx->monSprite);
        Heap_Free(ctx);
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        return;
    }
}

void BattleAnimScriptFunc_ScaleBattlerSprite(BattleAnimSystem *system)
{
    BattleAnimSpriteInfo sprites[MAX_BATTLERS];
    int spriteCount;

    ScaleBattlerSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ScaleBattlerSpriteContext));
    ctx->battleAnimSys = system;

    switch (BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_TARGET)) {
    case BATTLE_ANIM_BATTLER_SPRITE_ATTACKER:
    case BATTLE_ANIM_BATTLER_SPRITE_ATTACKER_PARTNER:
        ctx->battlerSpriteHeight = BattleAnimSystem_GetBattlerSpriteOffset(
            ctx->battleAnimSys,
            BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
        BattleAnimUtil_GetBattlerSprites(
            ctx->battleAnimSys,
            BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_TARGET),
            sprites,
            &spriteCount);

        ctx->monSprite = sprites[0].monSprite;
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_DEFENDER:
    case BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER:
        ctx->battlerSpriteHeight = BattleAnimSystem_GetBattlerSpriteOffset(
            ctx->battleAnimSys,
            BattleAnimSystem_GetDefender(ctx->battleAnimSys));
        BattleAnimUtil_GetBattlerSprites(
            ctx->battleAnimSys,
            BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_TARGET),
            sprites,
            &spriteCount);

        ctx->monSprite = sprites[0].monSprite;
        break;
    case BATTLE_ANIM_BATTLER_PLAYER_1: {
        int battler = BATTLER_NONE;

        for (int i = 0; i < MAX_BATTLERS; i++) {
            int type = BattleAnimSystem_GetBattlerType(system, i);
            if (type == BATTLER_TYPE_SOLO_PLAYER || type == BATTLER_TYPE_PLAYER_SIDE_SLOT_1) {
                battler = i;
                break;
            }
        }

        if (battler == BATTLER_NONE) {
            battler = BATTLER_PLAYER_1;
        }

        ctx->monSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, battler);
    } break;
    case BATTLE_ANIM_BATTLER_PLAYER_2: {
        int battler = BATTLER_NONE;

        for (int i = 0; i < MAX_BATTLERS; i++) {
            int type = BattleAnimSystem_GetBattlerType(system, i);
            if (type == BATTLER_TYPE_PLAYER_SIDE_SLOT_2) {
                battler = i;
                break;
            }
        }

        if (battler == BATTLER_NONE) {
            battler = BATTLER_PLAYER_1;
        }

        ctx->monSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, battler);
    } break;
    case BATTLE_ANIM_BATTLER_ENEMY_1: {
        int battler = BATTLER_NONE;

        for (int i = 0; i < MAX_BATTLERS; i++) {
            int type = BattleAnimSystem_GetBattlerType(system, i);
            if (type == BATTLER_TYPE_SOLO_ENEMY || type == BATTLER_TYPE_ENEMY_SIDE_SLOT_1) {
                battler = i;
                break;
            }
        }

        if (battler == BATTLER_NONE) {
            battler = BATTLER_PLAYER_1;
        }

        ctx->monSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, battler);
    } break;
    case BATTLE_ANIM_BATTLER_ENEMY_2: {
        int battler = BATTLER_NONE;

        for (int i = 0; i < MAX_BATTLERS; i++) {
            int type = BattleAnimSystem_GetBattlerType(system, i);
            if (type == BATTLER_TYPE_ENEMY_SIDE_SLOT_2) {
                battler = i;
                break;
            }
        }

        if (battler == BATTLER_NONE) {
            battler = BATTLER_PLAYER_1;
        }

        ctx->monSprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, battler);
    } break;
    }

    if (ctx->monSprite == NULL) {
        Heap_Free(ctx);
        return;
    }

    ctx->battlerY = PokemonSprite_GetAttribute(ctx->monSprite, MON_SPRITE_Y_CENTER);
    ctx->battlerSpriteHeight = PokemonSprite_GetAttribute(ctx->monSprite, MON_SPRITE_SHADOW_HEIGHT);
    ctx->battlerSpriteHeight += 16;

    ctx->startX = BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_START_X);
    ctx->endX = BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_END_X);
    ctx->startY = BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_START_Y);
    ctx->endY = BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_END_Y);
    ctx->reference = BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_REFERENCE);
    ctx->cycles = BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_HOLD_CYCLES);
    ctx->scaleFrames = BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_FRAMES);
    ctx->cycles = SCALE_BATTLER_SPRITE_CYCLES(BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_HOLD_CYCLES));
    ctx->hold = SCALE_BATTLER_SPRITE_HOLD(BattleAnimSystem_GetScriptVar(system, SCALE_BATTLER_SPRITE_VAR_HOLD_CYCLES));

    SysTask *task = BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_ScaleBattlerSprite, ctx);
    BattleAnimTask_ScaleBattlerSprite(task, ctx);
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

void BattleAnimScriptFunc_HideBattler(BattleAnimSystem *system)
{
    int i; // required to match
    BOOL hide = BattleAnimSystem_GetScriptVar(system, HIDE_BATTLER_VAR_HIDE);

    // BUG: spriteInfo should really be an array here so you can pass in multiple sprites at once.
    int spriteCount;
    BattleAnimSpriteInfo spriteInfo;
    BattleAnimUtil_GetBattlerSprites(
        system,
        BattleAnimSystem_GetScriptVar(system, HIDE_BATTLER_VAR_TARGET),
        &spriteInfo,
        &spriteCount);

    for (i = 0; i < spriteCount; i++) {
        if (BattleAnimSystem_IsBattlerSemiInvulnerable(system, spriteInfo.battler) == TRUE && hide == FALSE) {
            continue;
        }

        PokemonSprite_SetAttribute(spriteInfo.monSprite, MON_SPRITE_HIDE, hide);
    }
}

static void BattleAnimTask_BlinkAttacker(SysTask *task, void *param)
{
    BlinkAttackerContext *ctx = param;

    if (ctx->timer >= ctx->interval) {
        if (ctx->count == 0) {
            PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_HIDE, FALSE);
            Heap_Free(ctx);
            BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        } else {
            BOOL hide = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_HIDE);
            PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_HIDE, hide ^ 1);
            ctx->count--;
            ctx->timer = 0;
        }
    } else {
        ctx->timer++;
    }
}

void BattleAnimScriptFunc_BlinkAttacker(BattleAnimSystem *system)
{
    BlinkAttackerContext *ctx = BattleAnimUtil_Alloc(system, sizeof(BlinkAttackerContext));

    ctx->battleAnimSys = system;
    ctx->count = BattleAnimSystem_GetScriptVar(system, BLINK_ATTACKER_VAR_COUNT) * 2;
    ctx->interval = BattleAnimSystem_GetScriptVar(system, BLINK_ATTACKER_VAR_INTERVAL);

    BattleAnimSystem_GetCommonData(system, &ctx->common);
    ctx->spriteInfo.monSprite = BattleAnimSystem_GetBattlerSprite(system, BattleAnimSystem_GetAttacker(system));
    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_BlinkAttacker, ctx);
}

static void BattleAnimTask_MoveBattlerX(SysTask *task, void *param)
{
    MoveBattlerXContext *ctx = param;

    switch (ctx->common.state) {
    case MOVE_BATTLER_X_STATE_INIT:
        PosLerpContext_Init(
            &ctx->pos,
            ctx->spriteInfo.pos.x,
            ctx->spriteInfo.pos.x + ctx->offset,
            ctx->spriteInfo.pos.y,
            ctx->spriteInfo.pos.y,
            ctx->frames);
        ctx->common.state++;
        break;
    case MOVE_BATTLER_X_STATE_MOVE:
        if (PosLerpContext_Update(&ctx->pos) == FALSE) {
            ctx->common.state++;
        }

        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_X_CENTER, ctx->pos.x);
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_MoveBattlerX(BattleAnimSystem *system)
{
    MoveBattlerXContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MoveBattlerXContext));

    ctx->battleAnimSys = system;
    ctx->frames = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_X_VAR_FRAMES);
    ctx->offset = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_X_VAR_OFFSET);
    int target = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_X_VAR_TARGET);
    int battler = BATTLER_NONE;

    switch (target) {
    case BATTLE_ANIM_BATTLER_SPRITE_ATTACKER:
        battler = BattleAnimSystem_GetAttacker(system);
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_ATTACKER_PARTNER:
        if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
            battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system));
        }
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_DEFENDER:
        battler = BattleAnimSystem_GetDefender(system);
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER:
        if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
            battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system));
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    if (battler == BATTLER_NONE) {
        Heap_Free(ctx);
        return;
    }

    BattleAnimSystem_GetCommonData(system, &ctx->common);
    ctx->spriteInfo.monSprite = BattleAnimSystem_GetBattlerSprite(system, battler);

    BattleAnimUtil_GetMonSpritePos(ctx->spriteInfo.monSprite, &ctx->spriteInfo.pos);

    int dir = BattleAnimUtil_GetTransformDirectionX(system, battler);
    if (dir > 0) {
        ctx->offset *= +1;
    } else {
        ctx->offset *= -1;
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_MoveBattlerX, ctx);
}

static void BattleAnimTask_MoveBattlerX2(SysTask *task, void *param)
{
    MoveBattlerX2Context *ctx = param;

    switch (ctx->common.state) {
    case MOVE_BATTLER_X_STATE_INIT:
        if (ctx->spriteInfo.monSprite == NULL) {
            ctx->common.state = 0xFF;
            break;
        }

        PosLerpContext_Init(
            &ctx->pos,
            ctx->spriteInfo.pos.x,
            ctx->spriteInfo.pos.x + ctx->offset,
            ctx->spriteInfo.pos.y,
            ctx->spriteInfo.pos.y,
            ctx->frames);
        ctx->common.state++;
    case MOVE_BATTLER_X_STATE_MOVE:
        if (PosLerpContext_Update(&ctx->pos) == FALSE) {
            ctx->common.state++;
        }

        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_X_CENTER, ctx->pos.x);
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_MoveBattlerX2(BattleAnimSystem *system)
{
    MoveBattlerX2Context *ctx = BattleAnimUtil_Alloc(system, sizeof(MoveBattlerX2Context));

    ctx->battleAnimSys = system;
    ctx->frames = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_X_VAR_FRAMES);
    ctx->offset = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_X_VAR_OFFSET);
    int target = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_X_VAR_TARGET);
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    int battler = BATTLER_NONE;

    switch (target) {
    case BATTLE_ANIM_BATTLER_SPRITE_ATTACKER:
        battler = BattleAnimSystem_GetAttacker(system);
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_ATTACKER_PARTNER:
        if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
            battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system));
        }
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_DEFENDER:
        battler = BattleAnimSystem_GetDefender(system);
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER:
        if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
            battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system));
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    if (battler == BATTLER_NONE) {
        Heap_Free(ctx);
        return;
    }

    ctx->spriteInfo.monSprite = BattleAnimSystem_GetBattlerSprite(system, battler);
    BattleAnimUtil_GetMonSpritePos(ctx->spriteInfo.monSprite, &ctx->spriteInfo.pos);

    int dir = BattleAnimUtil_GetTransformDirectionX(system, battler);
    if (dir > 0) {
        ctx->offset *= +1;
    } else {
        ctx->offset *= -1;
    }

    // Required to match
    if (BattleAnimSystem_IsContest(system) == TRUE) {
        UNUSED(FALSE);
    }

    SysTask *task = BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_MoveBattlerX2, ctx);
    BattleAnimTask_MoveBattlerX2(task, ctx);
}

static void BattleAnimTask_ShakeAndScaleAttacker(SysTask *task, void *param)
{
    ShakeAndScaleAttackerContext *ctx = param;

    switch (ctx->state) {
    case SHAKE_AND_SCALE_ATTACKER_STATE_SCALE_1:
        if (ScaleLerpContext_Update(&ctx->scale) == TRUE) {
            ShakeContext_Update(&ctx->shake);

            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            PokemonSprite_AddAttribute(ctx->sprite, MON_SPRITE_X_CENTER, ctx->shake.x);

            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->spriteY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->spriteY + offset);
        } else {
            ctx->state++;
        }
        break;
    case SHAKE_AND_SCALE_ATTACKER_STATE_HOLD:
        if (++ctx->timer > ctx->holdFrames) {
            ScaleLerpContext_Init(
                &ctx->scale,
                BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, SHAKE_AND_SCALE_ATTACKER_VAR_SCALE_1),
                BASE_SCALE_XY,
                BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, SHAKE_AND_SCALE_ATTACKER_VAR_SCALE_2),
                BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, SHAKE_AND_SCALE_ATTACKER_VAR_FRAMES_2));
            ctx->state++;
        }
        break;
    case SHAKE_AND_SCALE_ATTACKER_STATE_SCALE_2:
        if (ScaleLerpContext_Update(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->spriteY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->spriteY + offset);
        } else {
            ctx->state++;
        }
        break;
    case SHAKE_AND_SCALE_ATTACKER_STATE_WAIT:
        if (ScaleLerpContext_Update(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);

            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->spriteY, ctx->spriteHeight, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->spriteY + offset);
        } else {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->spriteY);
            ctx->state++;
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_ShakeAndScaleAttacker(BattleAnimSystem *system)
{
    ShakeAndScaleAttackerContext *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(ShakeAndScaleAttackerContext));

    ctx->unused1 = 0;
    ctx->state = SHAKE_AND_SCALE_ATTACKER_STATE_SCALE_1;
    ctx->battleAnimSys = system;
    ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->timer = 0;
    ctx->holdFrames = BattleAnimSystem_GetScriptVar(system, SHAKE_AND_SCALE_ATTACKER_VAR_HOLD_FRAMES);
    ctx->spriteY = PokemonSprite_GetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER);
    ctx->spriteHeight = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));

    ScaleLerpContext_Init(
        &ctx->scale,
        BASE_SCALE_XY,
        BASE_SCALE_XY,
        BattleAnimSystem_GetScriptVar(system, SHAKE_AND_SCALE_ATTACKER_VAR_SCALE_1),
        BattleAnimSystem_GetScriptVar(system, SHAKE_AND_SCALE_ATTACKER_VAR_FRAMES_1));

    ShakeContext_Init(
        &ctx->shake,
        SHAKE_AND_SCALE_ATTACKER_EXTENT_X,
        SHAKE_AND_SCALE_ATTACKER_EXTENT_Y,
        SHAKE_AND_SCALE_ATTACKER_INTERVAL,
        SHAKE_AND_SCALE_ATTACKER_AMOUNT);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_ShakeAndScaleAttacker, ctx);
}

static void BattleAnimTask_ShakeAndScaleAttacker2(SysTask *task, void *param)
{
    ShakeAndScaleAttacker2Context *ctx = param;

    switch (ctx->state) {
    case SHAKE_AND_SCALE_ATTACKER_2_STATE_SCALE_1:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == TRUE) {
            ShakeContext_Update(&ctx->shake);

            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);
            PokemonSprite_AddAttribute(ctx->sprite, MON_SPRITE_X_CENTER, ctx->shake.x);

            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->posY, ctx->spriteOffset, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->posY + offset);
        } else {
            ctx->state++;
        }
        break;
    case SHAKE_AND_SCALE_ATTACKER_2_STATE_HOLD:
        if (++ctx->timer > ctx->holdFrames) {
            s16 sx = SHAKE_AND_SCALE_ATTACKER_START(ctx->scale2X);
            s16 ex = SHAKE_AND_SCALE_ATTACKER_END(ctx->scale2X);
            s16 sy = SHAKE_AND_SCALE_ATTACKER_START(ctx->scale2Y);
            s16 ey = SHAKE_AND_SCALE_ATTACKER_END(ctx->scale2Y);

            ScaleLerpContext_InitXY(&ctx->scale, sx, ex, sy, ey, BASE_SCALE_XY, ctx->scale2Frames);

            ctx->state++;
        }
        break;
    case SHAKE_AND_SCALE_ATTACKER_2_STATE_SCALE_2:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);

            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->posY, ctx->spriteOffset, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->posY + offset);
        } else {
            ctx->state++;
        }
        break;
    case SHAKE_AND_SCALE_ATTACKER_2_STATE_WAIT:
        if (ScaleLerpContext_UpdateXY(&ctx->scale) == TRUE) {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, ctx->scale.x);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, ctx->scale.y);

            s16 offset = BattleAnimUtil_GetGroundAnchoredScaleOffset(ctx->posY, ctx->spriteOffset, ctx->scale.data[XY_PARAM_CUR_Y]);
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->posY + offset);
        } else {
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_X, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_SCALE_Y, MON_AFFINE_SCALE(1));
            PokemonSprite_SetAttribute(ctx->sprite, MON_SPRITE_Y_CENTER, ctx->posY);
            ctx->state++;
        }
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_ShakeAndScaleAttacker2(BattleAnimSystem *system)
{
    ShakeAndScaleAttacker2Context *ctx = Heap_Alloc(BattleAnimSystem_GetHeapID(system), sizeof(ShakeAndScaleAttacker2Context));

    ctx->unused1 = 0;
    ctx->state = SHAKE_AND_SCALE_ATTACKER_2_STATE_SCALE_1;
    ctx->battleAnimSys = system;
    ctx->sprite = BattleAnimSystem_GetBattlerSprite(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->timer = 0;
    ctx->holdFrames = BattleAnimSystem_GetScriptVar(system, SHAKE_AND_SCALE_ATTACKER_2_VAR_HOLD_FRAMES);
    ctx->scale2X = BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_2_X);
    ctx->scale2Y = BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_2_Y);
    ctx->scale2Frames = BattleAnimSystem_GetScriptVar(ctx->battleAnimSys, SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_2_FRAMES);

    BattleAnimUtil_GetBattlerDefaultPos2(system, BattleAnimSystem_GetAttacker(ctx->battleAnimSys), NULL, &ctx->posY);

    ctx->spriteOffset = BattleAnimSystem_GetBattlerSpriteOffset(ctx->battleAnimSys, BattleAnimSystem_GetAttacker(ctx->battleAnimSys));
    ctx->posY += ctx->spriteOffset;

    // Need to be declared like this because of the decl order
    s16 sx, sy, ex, ey;
    sx = SHAKE_AND_SCALE_ATTACKER_START(BattleAnimSystem_GetScriptVar(system, SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_1_X));
    ex = SHAKE_AND_SCALE_ATTACKER_END(BattleAnimSystem_GetScriptVar(system, SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_1_X));
    sy = SHAKE_AND_SCALE_ATTACKER_START(BattleAnimSystem_GetScriptVar(system, SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_1_Y));
    ey = SHAKE_AND_SCALE_ATTACKER_END(BattleAnimSystem_GetScriptVar(system, SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_1_Y));

    ScaleLerpContext_InitXY(
        &ctx->scale,
        sx,
        ex,
        sy,
        ey,
        BASE_SCALE_XY,
        BattleAnimSystem_GetScriptVar(system, SHAKE_AND_SCALE_ATTACKER_2_VAR_SCALE_1_FRAMES));
    ShakeContext_Init(
        &ctx->shake,
        SHAKE_AND_SCALE_ATTACKER_2_EXTENT_X,
        SHAKE_AND_SCALE_ATTACKER_2_EXTENT_Y,
        SHAKE_AND_SCALE_ATTACKER_2_INTERVAL,
        SHAKE_AND_SCALE_ATTACKER_2_AMOUNT);

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_ShakeAndScaleAttacker2, ctx);
}

static void BattleAnimTask_Superpower(SysTask *task, void *param)
{
    SuperpowerContext *ctx = param;

    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    BattleAnimSystem_UnloadBaseBg(ctx->common.battleAnimSys, BATTLE_BG_BASE);
    BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
    Heap_Free(ctx);
}

void BattleAnimScriptFunc_Superpower(BattleAnimSystem *system)
{
    SuperpowerContext *ctx = BattleAnimUtil_Alloc(system, sizeof(SuperpowerContext));
    UNUSED(BattleAnimSystem_GetScriptVar(system, 0));

    BattleAnimSystem_GetCommonData(system, &ctx->common);
    BattleAnimSystem_LoadBaseBg(ctx->common.battleAnimSys, BATTLE_BG_BASE);

    ctx->sprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, BATTLE_ANIM_MON_SPRITE_0);

    ManagedSprite_SetExplicitOamMode(ctx->sprite, GX_OAM_MODE_OBJWND);
    ManagedSprite_SetAffineOverwriteMode(ctx->sprite, AFFINE_OVERWRITE_MODE_DOUBLE);
    ManagedSprite_SetAffineScale(ctx->sprite, 1.2f, 1.2f);

    GX_SetVisibleWnd(GX_WNDMASK_OW);
    G2_SetWndOutsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_EFFECT | GX_WND_PLANEMASK_OBJ, FALSE);
    G2_SetWndOBJInsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_BASE, FALSE);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_Superpower, ctx);
}

static void BattleAnimTask_MoveBattler(SysTask *task, void *param)
{
    MoveBattlerContext *ctx = param;

    switch (ctx->common.state) {
    case MOVE_BATTLER_STATE_INIT:
        PosLerpContext_Init(
            &ctx->pos,
            ctx->spriteInfo.pos.x,
            ctx->spriteInfo.pos.x + ctx->offsetX,
            ctx->spriteInfo.pos.y,
            ctx->spriteInfo.pos.y + ctx->offsetY,
            ctx->frames);
        ctx->common.state++;
    case MOVE_BATTLER_STATE_MOVE:
        if (PosLerpContext_Update(&ctx->pos) == FALSE) {
            ctx->common.state++;
        }

        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_X_CENTER, ctx->pos.x);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->pos.y);
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_MoveBattler(BattleAnimSystem *system)
{
    MoveBattlerContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MoveBattlerContext));

    ctx->battleAnimSys = system;
    ctx->frames = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_VAR_FRAMES);
    ctx->offsetX = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_VAR_OFFSET_X);
    ctx->offsetY = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_VAR_OFFSET_Y);
    int target = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_VAR_TARGET);

    BattleAnimSystem_GetCommonData(system, &ctx->common);
    int battler = BATTLER_NONE;

    switch (target) {
    case BATTLE_ANIM_BATTLER_SPRITE_ATTACKER:
        battler = BattleAnimSystem_GetAttacker(system);
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_ATTACKER_PARTNER:
        if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
            battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system));
        }
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_DEFENDER:
        battler = BattleAnimSystem_GetDefender(system);
        break;
    case BATTLE_ANIM_BATTLER_SPRITE_DEFENDER_PARTNER:
        if (BattleAnimSystem_IsDoubleBattle(system) == TRUE) {
            battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system));
        }
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    if (battler == BATTLER_NONE) {
        Heap_Free(ctx);
        return;
    }

    ctx->spriteInfo.monSprite = BattleAnimSystem_GetBattlerSprite(system, battler);
    if (ctx->spriteInfo.monSprite == NULL) {
        Heap_Free(ctx);
        return;
    }

    BattleAnimUtil_GetMonSpritePos(ctx->spriteInfo.monSprite, &ctx->spriteInfo.pos);

    int dir = BattleAnimUtil_GetTransformDirectionX(system, battler);
    if (dir > 0) {
        ctx->offsetX *= +1;
        ctx->offsetY *= +1;
    } else {
        ctx->offsetX *= -1;
        ctx->offsetY *= -1;
    }

    if (BattleAnimSystem_IsContest(system) == TRUE) {
        ctx->offsetY *= -1;
    }

    SysTask *task = BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_MoveBattler, ctx);
    BattleAnimTask_MoveBattler(task, ctx);
}

static void BattleAnimTask_RevolveBattler(SysTask *task, void *param)
{
    RevolveBattlerContext *ctx = param;

    BOOL ative = RevolutionContext_UpdateAndApplyToMon(&ctx->revs, ctx->spriteInfo.pos.x, ctx->spriteInfo.pos.y, ctx->spriteInfo.monSprite);
    if (ative == FALSE) {
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_X_CENTER, ctx->spriteInfo.pos.x);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->spriteInfo.pos.y + REVOLUTION_CONTEXT_OVAL_RADIUS_Y_INT);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
    }
}

void BattleAnimScriptFunc_RevolveBattler(BattleAnimSystem *system)
{
    RevolveBattlerContext *ctx = BattleAnimUtil_Alloc(system, sizeof(RevolveBattlerContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    int spriteCount;
    BattleAnimUtil_GetBattlerSprites(system, BattleAnimSystem_GetScriptVar(system, REVOLVE_BATTLER_VAR_TARGET), &ctx->spriteInfo, &spriteCount);

    ctx->spriteInfo.pos.y -= REVOLUTION_CONTEXT_OVAL_RADIUS_Y_INT;

    RevolutionContext_InitOvalRevolutions(
        &ctx->revs,
        BattleAnimSystem_GetScriptVar(system, REVOLVE_BATTLER_VAR_REVS),
        BattleAnimSystem_GetScriptVar(system, REVOLVE_BATTLER_VAR_FRAMES_PER_REV));

    ctx->revs.data[XY_PARAM_REV_RADIUS_X] /= 2;
    ctx->revs.data[XY_PARAM_REV_RADIUS_Y] /= 2;

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_RevolveBattler, ctx);
}

static void BattleAnimTask_MoveBattlerOffScreen(SysTask *task, void *param)
{
    MoveBattlerOffScreenContext *ctx = param;

    switch (ctx->common.state) {
    case 0:
        if (PosLerpContext_Update(&ctx->pos) == FALSE) {
            ctx->common.state++;
        }

        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_X_CENTER, ctx->pos.x);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->pos.y);
        break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_MoveBattlerOffScreen(BattleAnimSystem *system)
{
    // Need to be declared here to match
    int target, battler, frames;

    MoveBattlerOffScreenContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MoveBattlerOffScreenContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    target = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_OFF_SCREEN_VAR_TARGET);
    frames = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_OFF_SCREEN_VAR_FRAMES);

    switch (target) {
    case BATTLE_ANIM_ATTACKER:
        battler = BattleAnimSystem_GetAttacker(system);
        break;
    case BATTLE_ANIM_ATTACKER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system));
        break;
    case BATTLE_ANIM_DEFENDER:
        battler = BattleAnimSystem_GetDefender(system);
        break;
    case BATTLE_ANIM_DEFENDER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    BattleAnimUtil_GetBattlerDefaultPos(system, battler, &ctx->unused);

    int spriteCount;
    BattleAnimUtil_GetBattlerSprites(system, target, &ctx->spriteInfo, &spriteCount);

    ctx->destPos.x = 0;
    ctx->destPos.y = 0;

    if (BattleAnimUtil_GetBattlerSide(ctx->common.battleAnimSys, battler) == BTLSCR_PLAYER) {
        ctx->destPos.x = -MON_SPRITE_FRAME_WIDTH;
    } else {
        ctx->destPos.x = HW_LCD_WIDTH + MON_SPRITE_FRAME_WIDTH;
    }

    PosLerpContext_Init(&ctx->pos, ctx->spriteInfo.pos.x, ctx->destPos.x, ctx->spriteInfo.pos.y, ctx->spriteInfo.pos.y, frames);
    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_MoveBattlerOffScreen, ctx);
}

void BattleAnimScriptFunc_MoveBattlerOnOrOffScreen(BattleAnimSystem *system)
{
    int mode, battler, count;
    MoveBattlerOffScreenContext *ctx = BattleAnimUtil_Alloc(system, sizeof(MoveBattlerOffScreenContext));

    BattleAnimSystem_GetCommonData(system, &ctx->common);

    mode = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_ON_OR_OFF_SCREEN_VAR_MODE);
    int target = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_ON_OR_OFF_SCREEN_VAR_TARGET);
    int frames = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_ON_OR_OFF_SCREEN_VAR_FRAMES);

    switch (target) {
    case BATTLE_ANIM_ATTACKER:
        battler = BattleAnimSystem_GetAttacker(system);
        break;
    case BATTLE_ANIM_ATTACKER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system));
        break;
    case BATTLE_ANIM_DEFENDER:
        battler = BattleAnimSystem_GetDefender(system);
        break;
    case BATTLE_ANIM_DEFENDER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    BattleAnimUtil_GetBattlerDefaultPos(system, battler, &ctx->unused);
    BattleAnimUtil_GetBattlerSprites(system, target, &ctx->spriteInfo, &count);

    ctx->destPos.x = 0;
    ctx->destPos.y = 0;

    if (BattleAnimUtil_GetBattlerSide(ctx->common.battleAnimSys, battler) == BTLSCR_PLAYER) {
        ctx->destPos.x = -MON_SPRITE_FRAME_WIDTH;
    } else {
        ctx->destPos.x = HW_LCD_WIDTH + MON_SPRITE_FRAME_WIDTH;
    }

    if (mode == MOVE_BATTLER_OFF_SCREEN) {
        PosLerpContext_Init(&ctx->pos, ctx->spriteInfo.pos.x, ctx->destPos.x, ctx->spriteInfo.pos.y, ctx->spriteInfo.pos.y, frames);
    } else {
        s16 battlerX = BattleAnimUtil_GetBattlerPos(system, battler, BATTLE_ANIM_POSITION_MON_X);
        PosLerpContext_Init(&ctx->pos, ctx->destPos.x, battlerX, ctx->spriteInfo.pos.y, ctx->spriteInfo.pos.y, frames);
    }

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_MoveBattlerOffScreen, ctx);
}

#define MOVE_BATTLER_TO_DEFAULT_POS_VAR_TARGET 0

void BattleAnimScriptFunc_MoveBattlerToDefaultPos(BattleAnimSystem *system)
{
    // Need to be declared here to match
    int battler, count;
    Point2D destPos;
    BattleAnimSpriteInfo spriteInfo;

    int target = BattleAnimSystem_GetScriptVar(system, MOVE_BATTLER_TO_DEFAULT_POS_VAR_TARGET);

    switch (target) {
    case BATTLE_ANIM_ATTACKER:
        battler = BattleAnimSystem_GetAttacker(system);
        break;
    case BATTLE_ANIM_ATTACKER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system));
        break;
    case BATTLE_ANIM_DEFENDER:
        battler = BattleAnimSystem_GetDefender(system);
        break;
    case BATTLE_ANIM_DEFENDER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    BattleAnimUtil_GetBattlerDefaultPos(system, battler, &destPos);
    BattleAnimUtil_GetBattlerSprites(system, target, &spriteInfo, &count);

    s16 height = BattleAnimSystem_GetBattlerSpriteOffset(system, battler);
    PokemonSprite_SetAttribute(spriteInfo.monSprite, MON_SPRITE_X_CENTER, destPos.x);
    PokemonSprite_SetAttribute(spriteInfo.monSprite, MON_SPRITE_Y_CENTER, destPos.y + height);
}

static void BattleAnimTask_FadePokemonSprite(SysTask *task, void *param)
{
    FadePokemonSpriteContext *ctx = param;

    if (PaletteFadeContext_IsActive(ctx->paletteFade) == FALSE) {
        PaletteFadeContext_Free(ctx->paletteFade);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
    }
}

void BattleAnimScriptFunc_FadePokemonSprite(BattleAnimSystem *system)
{
    FadePokemonSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(FadePokemonSpriteContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    int target = BattleAnimSystem_GetScriptVar(system, FADE_POKEMON_SPRITE_VAR_TARGET);
    int stepFrames = BattleAnimSystem_GetScriptVar(system, FADE_POKEMON_SPRITE_VAR_STEP_FRAMES);
    int step = BattleAnimSystem_GetScriptVar(system, FADE_POKEMON_SPRITE_VAR_STEP_SIZE);
    int startFrac = BattleAnimSystem_GetScriptVar(system, FADE_POKEMON_SPRITE_VAR_START_FRAC);
    int endFrac = BattleAnimSystem_GetScriptVar(system, FADE_POKEMON_SPRITE_VAR_END_FRAC);
    int color = BattleAnimSystem_GetScriptVar(system, FADE_POKEMON_SPRITE_VAR_COLOR);

    int count;
    BattleAnimUtil_GetPokemonSprites(system, target, &ctx->spriteInfo, &count);

    int palDest = PlttTransfer_GetPlttOffset(Sprite_GetPaletteProxy(ctx->spriteInfo.hwSprite->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
    ctx->paletteFade = PaletteFadeContext_New(
        ctx->common.paletteData,
        BattleAnimSystem_GetHeapID(system),
        PLTTBUF_MAIN_OBJ,
        PLTT_DEST(palDest),
        PALETTE_SIZE,
        stepFrames,
        step,
        startFrac,
        endFrac,
        color,
        FADE_POKEMON_SPRITE_TASK_PRIORITY);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_FadePokemonSprite, ctx);
}

static void BattleAnimTask_BattlerPartialDrawTest(SysTask *task, void *param)
{
    BattlerPartialDrawTestContext *ctx = param;

    switch (ctx->common.state) {
    case 0: {
        if (++ctx->timer < ctx->stepFrames) {
            return;
        }

        ctx->timer = 0;

        if (ctx->mode == 0) {
            if (ctx->drawHeight < 0) {
                ctx->drawHeight = 0;
            }

            if (ctx->drawHeight == 0) {
                ctx->common.state++;
            }
        } else {
            if (ctx->drawHeight > MON_SPRITE_FRAME_HEIGHT) {
                ctx->drawHeight = MON_SPRITE_FRAME_HEIGHT;
            }

            if (ctx->drawHeight == MON_SPRITE_FRAME_HEIGHT) {
                ctx->common.state++;
            }
        }

        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_DRAW_HEIGHT, ctx->drawHeight);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->y);

        ctx->y -= ctx->step;
        ctx->drawHeight += ctx->step;
    } break;
    default:
        ResetMonScale(ctx->spriteInfo.monSprite);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_BattlerPartialDrawTest(BattleAnimSystem *system)
{
    BattlerPartialDrawTestContext *ctx = BattleAnimUtil_Alloc(system, sizeof(BattlerPartialDrawTestContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    int target = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_TEST_VAR_TARGET);

    int count;
    BattleAnimUtil_GetBattlerSprites(system, target, &ctx->spriteInfo, &count);

    int battler;
    switch (target) {
    case BATTLE_ANIM_ATTACKER:
        battler = BattleAnimSystem_GetAttacker(system);
        break;
    case BATTLE_ANIM_ATTACKER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system));
        break;
    case BATTLE_ANIM_DEFENDER:
        battler = BattleAnimSystem_GetDefender(system);
        break;
    case BATTLE_ANIM_DEFENDER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    ctx->mode = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_TEST_VAR_MODE);
    if (ctx->mode == 0) {
        ctx->y = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER);
        ctx->drawHeight = MON_SPRITE_FRAME_HEIGHT - PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_DRAW_HEIGHT);
        ctx->unused = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_TEST_VAR_UNUSED);
        ctx->step = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_TEST_VAR_STEP);
        ctx->step *= -1;
    } else {
        ctx->y = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER);
        ctx->drawHeight = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_DRAW_HEIGHT);
        ctx->unused = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_TEST_VAR_UNUSED);
        ctx->step = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_TEST_VAR_STEP);
    }

    ctx->xOffset = 0;
    ctx->yOffset = 0;
    ctx->width = MON_SPRITE_FRAME_WIDTH;
    ctx->height = MON_SPRITE_FRAME_HEIGHT - BattleAnimSystem_GetBattlerSpriteOffset(system, battler);
    ctx->stepFrames = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_TEST_VAR_STEP_FRAMES);
    ctx->timer = 0;

    PokemonSprite_SetPartialDraw(ctx->spriteInfo.monSprite, ctx->xOffset, ctx->yOffset, ctx->width, ctx->height);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_BattlerPartialDrawTest, ctx);
}

static int GetBattlerFromBattlerFlags(BattleAnimSystem *system, int battlerFlags)
{
    int battler = BATTLER_PLAYER_1;

    switch (battlerFlags) {
    case BATTLE_ANIM_ATTACKER:
        battler = BattleAnimSystem_GetAttacker(system);
        break;
    case BATTLE_ANIM_ATTACKER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetAttacker(system));
        break;
    case BATTLE_ANIM_DEFENDER:
        battler = BattleAnimSystem_GetDefender(system);
        break;
    case BATTLE_ANIM_DEFENDER_PARTNER:
        battler = BattleAnimUtil_GetAlliedBattler(system, BattleAnimSystem_GetDefender(system));
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }

    return battler;
}

static void BattleAnimTask_BattlerPartialDrawAppear(SysTask *task, void *param)
{
    BattlerPartialDrawContext *ctx = param;

    switch (ctx->common.state) {
    case BATTLE_PARTIAL_DRAW_STATE_DRAW:
        if (++ctx->timer < ctx->stepInterval) {
            break;
        }

        ctx->timer = 0;
        ctx->y += ctx->step;
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->y);
        ctx->yOffset -= ctx->step;

        if (ctx->yOffset > ctx->height) {
            ctx->yOffset = ctx->height;
            ctx->common.state++;
        }

        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_DRAW_HEIGHT, ctx->yOffset);
        break;
    case BATTLE_PARTIAL_DRAW_STATE_CLEANUP:
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_PARTIAL_DRAW, FALSE);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->baseY);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_DRAW_HEIGHT, ctx->height);
        ResetMonScale(ctx->spriteInfo.monSprite);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

static void BattleAnimTask_BattlerPartialDrawDisappear(SysTask *task, void *param)
{
    BattlerPartialDrawContext *ctx = param;

    switch (ctx->common.state) {
    case BATTLE_PARTIAL_DRAW_STATE_DRAW:
        if (++ctx->timer < ctx->stepInterval) {
            break;
        }

        ctx->timer = 0;
        ctx->y += ctx->step;
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->y);
        ctx->yOffset -= ctx->step;

        if (ctx->yOffset < 0) {
            ctx->yOffset = 0;
            ctx->common.state++;
        }

        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_DRAW_HEIGHT, ctx->yOffset);
        break;
    case BATTLE_PARTIAL_DRAW_STATE_CLEANUP:
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_PARTIAL_DRAW, FALSE);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->baseY);
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_DRAW_HEIGHT, ctx->height);
        ResetMonScale(ctx->spriteInfo.monSprite);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

static void BattleAnimTask_BattlerPartialDrawSketch(SysTask *task, void *param)
{
    BattlerPartialDrawContext *ctx = param;

    switch (ctx->common.state) {
    case BATTLE_PARTIAL_DRAW_STATE_DRAW:
        if (++ctx->timer < ctx->stepInterval) {
            break;
        }

        ctx->timer = 0;
        ctx->yOffset -= ctx->step;
        ctx->height += ctx->step;

        if (ctx->yOffset < 0) {
            ctx->yOffset = 0;
            ctx->common.state++;
        }

        PokemonSprite_SetPartialDraw(ctx->spriteInfo.monSprite, 0, ctx->yOffset, MON_SPRITE_FRAME_WIDTH, ctx->height);
        break;
    case BATTLE_PARTIAL_DRAW_STATE_CLEANUP:
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_PARTIAL_DRAW, FALSE);
        ResetMonScale(ctx->spriteInfo.monSprite);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_BattlerPartialDraw(BattleAnimSystem *system)
{
    BattlerPartialDrawContext *ctx = BattleAnimUtil_Alloc(system, sizeof(BattlerPartialDrawContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->step = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_VAR_STEP_SIZE);
    ctx->stepInterval = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_VAR_STEP_INTERVAL);

    int target = BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_VAR_TARGET);

    int count;
    BattleAnimUtil_GetBattlerSprites(system, target, &ctx->spriteInfo, &count);
    int battler = GetBattlerFromBattlerFlags(system, target);

    if (BattleAnimSystem_GetScriptVar(system, BATTLER_PARTIAL_DRAW_VAR_IS_SKETCH) != FALSE) {
        ctx->yOffset = BattleAnimSystem_GetBattlerSpriteOffset(system, battler);
        ctx->yOffset = MON_SPRITE_FRAME_HEIGHT - ctx->yOffset;
        ctx->height = 0;

        PokemonSprite_SetPartialDraw(ctx->spriteInfo.monSprite, 0, ctx->yOffset, MON_SPRITE_FRAME_WIDTH, ctx->height);
        BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_BattlerPartialDrawSketch, ctx);

        return;
    }

    ctx->y = PokemonSprite_GetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER);
    ctx->baseY = ctx->y;
    ctx->yOffset = BattleAnimSystem_GetBattlerSpriteOffset(system, battler);
    ctx->yOffset = MON_SPRITE_FRAME_HEIGHT - ctx->yOffset;
    ctx->height = ctx->yOffset;

    if (ctx->step > 0) {
        PokemonSprite_SetPartialDraw(ctx->spriteInfo.monSprite, 0, 0, MON_SPRITE_FRAME_WIDTH, ctx->yOffset);
        BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_BattlerPartialDrawDisappear, ctx);
    } else {
        ctx->yOffset = 0;
        ctx->y += ctx->height;
        PokemonSprite_SetAttribute(ctx->spriteInfo.monSprite, MON_SPRITE_Y_CENTER, ctx->y);
        PokemonSprite_SetPartialDraw(ctx->spriteInfo.monSprite, 0, 0, MON_SPRITE_FRAME_HEIGHT, ctx->yOffset);
        BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_BattlerPartialDrawAppear, ctx);
    }
}

static void BattleAnimTask_ShakeBg(SysTask *task, void *param)
{
    ShakeBgContext *ctx = param;

    switch (ctx->state) {
    case SHAKE_BG_STATE_INIT:
        ShakeContext_Init(&ctx->shake, ctx->extentX, ctx->extentY, ctx->interval, ctx->amount);
        ctx->state++;
    case SHAKE_BG_STATE_SHAKE: {
        if (ShakeContext_Update(&ctx->shake) == FALSE) {
            if (ctx->iteration >= ctx->cycles) {
                ctx->state++;
            } else {
                ctx->state--;
            }

            if (ctx->resetX != FALSE) {
                Bg_SetOffset(ctx->bgConfig, ctx->bgLayer, BG_OFFSET_UPDATE_SET_X, 0);
            }

            if (ctx->resetY != FALSE) {
                Bg_SetOffset(ctx->bgConfig, ctx->bgLayer, BG_OFFSET_UPDATE_SET_Y, 0);
            }

            ctx->iteration++;
        } else {
            if (ctx->shake.x != 0) {
                ctx->resetX = TRUE;
                Bg_SetOffset(ctx->bgConfig, ctx->bgLayer, BG_OFFSET_UPDATE_SET_X, ctx->shake.x);
            }

            if (ctx->shake.y != 0) {
                ctx->resetY = TRUE;
                Bg_SetOffset(ctx->bgConfig, ctx->bgLayer, BG_OFFSET_UPDATE_SET_Y, ctx->shake.y);
            }
        }
    } break;
    default:
        BattleAnimSystem_EndAnimTask(ctx->battleAnimSys, task);
        Heap_Free(ctx);
        break;
    }
}

void BattleAnimScriptFunc_ShakeBg(BattleAnimSystem *system)
{
    ShakeBgContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ShakeBgContext));

    ctx->state = SHAKE_BG_STATE_INIT;
    ctx->iteration = 0;
    ctx->battleAnimSys = system;
    ctx->pokemonSpriteManager = BattleAnimSystem_GetPokemonSpriteManager(ctx->battleAnimSys);
    ctx->bgConfig = BattleAnimSystem_GetBgConfig(ctx->battleAnimSys);

    ctx->extentX = BattleAnimSystem_GetScriptVar(system, SHAKE_BG_VAR_EXTENT_X);
    ctx->extentY = BattleAnimSystem_GetScriptVar(system, SHAKE_BG_VAR_EXTENT_Y);
    ctx->interval = BattleAnimSystem_GetScriptVar(system, SHAKE_BG_VAR_INTERVAL);
    ctx->amount = BattleAnimSystem_GetScriptVar(system, SHAKE_BG_VAR_AMOUNT);
    ctx->cycles = BattleAnimSystem_GetScriptVar(system, SHAKE_BG_VAR_CYCLES);

    if (BattleAnimSystem_GetScriptVar(system, SHAKE_BG_VAR_TARGET) == SHAKE_BG_TARGET_EFFECT) {
        ctx->bgLayer = BATTLE_BG_EFFECT;
    } else {
        ctx->bgLayer = BATTLE_BG_BASE;
    }

    BattleAnimSystem_StartAnimTask(ctx->battleAnimSys, BattleAnimTask_ShakeBg, ctx);
}

static void BattleAnimTask_PixelatePokemonSprite(SysTask *task, void *param)
{
    PixelatePokemonSpriteContext *ctx = param;

    if (ctx->scaleX == ctx->targetScale || ctx->scaleY == ctx->targetScale) {
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    if (ctx->scaleStep < 0) {
        if (ctx->scaleX + ctx->scaleStep > PIXELATE_POKEMON_SPRITE_MIN_SCALE) {
            ctx->scaleX += ctx->scaleStep;
            ctx->scaleY += ctx->scaleStep;
        } else {
            ctx->scaleX = ctx->targetScale;
            ctx->scaleY = ctx->targetScale;
        }
    } else {
        if (ctx->scaleX + ctx->scaleStep < PIXELATE_POKEMON_SPRITE_MAX_SCALE) {
            ctx->scaleX += ctx->scaleStep;
            ctx->scaleY += ctx->scaleStep;
        } else {
            ctx->scaleX = ctx->targetScale;
            ctx->scaleY = ctx->targetScale;
        }
    }

    ManagedSprite_TickFrame(ctx->sprite);
    G2_SetOBJMosaicSize(ctx->scaleX, ctx->scaleY);
    SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
}

void BattleAnimScriptFunc_PixelatePokemonSprite(BattleAnimSystem *system)
{
    PixelatePokemonSpriteContext *ctx = BattleAnimUtil_Alloc(system, sizeof(PixelatePokemonSpriteContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->scaleStep = BattleAnimSystem_GetScriptVar(ctx->common.battleAnimSys, PIXELATE_POKEMON_SPRITE_VAR_STEP);
    ctx->scaleX = BattleAnimSystem_GetScriptVar(ctx->common.battleAnimSys, PIXELATE_POKEMON_SPRITE_VAR_START_X);
    ctx->scaleY = BattleAnimSystem_GetScriptVar(ctx->common.battleAnimSys, PIXELATE_POKEMON_SPRITE_VAR_START_Y);
    ctx->sprite = BattleAnimSystem_GetPokemonSprite(
        ctx->common.battleAnimSys,
        BattleAnimSystem_GetScriptVar(ctx->common.battleAnimSys, PIXELATE_POKEMON_SPRITE_VAR_TARGET));

    ManagedSprite_SetDrawFlag(ctx->sprite, TRUE);

    if (ctx->scaleStep < PIXELATE_POKEMON_SPRITE_MIN_SCALE) {
        ctx->targetScale = PIXELATE_POKEMON_SPRITE_MIN_SCALE;
    } else {
        ctx->targetScale = PIXELATE_POKEMON_SPRITE_MAX_SCALE;
    }

    ManagedSprite_SetMosaicFlag(ctx->sprite, TRUE);

    SysTask *task = BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_PixelatePokemonSprite, ctx);
    BattleAnimTask_PixelatePokemonSprite(task, ctx);
}

static void EmitterAnimationContext_Init(BattleAnimSystem *system, EmitterAnimationContext *ctx)
{
    ctx->emitterID = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_EMITTER_ID);
    ctx->offset.x = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_OFFSET_X);
    ctx->offset.y = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_OFFSET_Y);
    ctx->startDelay = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_START_DELAY);
    ctx->frames = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_FRAMES);
    ctx->radius = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_RADIUS);
    ctx->mode = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_MODE);
    ctx->curve = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_CURVE);

    int params = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_PARAMS);

    ctx->frame = 0;
    ctx->skipFrames = EMITTER_ANIMATION_SKIP_FRAMES(params);
    ctx->maxFrames = EMITTER_ANIMATION_MAX_FRAMES(params);

    if (ctx->skipFrames == 0) {
        ctx->skipFrames = 0;
    }

    if (ctx->maxFrames == 0) {
        ctx->maxFrames = EMITTER_ANIMATION_DEFAULT_FRAMES;
    }

    ctx->emitter = BattleAnimSystem_GetEmitter(system, ctx->emitterID);
    ctx->particleSys = BattleAnimSystem_GetCurrentParticleSystem(system);

    if (ctx->mode == EMITTER_ANIMATION_MODE_ATK_TO_DEF) {
        ctx->startBattler = BattleAnimSystem_GetAttacker(system);
        ctx->endBattler = BattleAnimSystem_GetDefender(system);
    } else if (ctx->mode == EMITTER_ANIMATION_MODE_DEF_TO_ATK) {
        ctx->startBattler = BattleAnimSystem_GetDefender(system);
        ctx->endBattler = BattleAnimSystem_GetAttacker(system);
    } else {
        GF_ASSERT("FALSE"); // bruh
    }

    if (ctx->emitter == NULL) {
        GF_ASSERT(FALSE);
    }
}

static BOOL IsEmitterActive(SPLEmitter *emitter)
{
    BOOL active = FALSE;
    SPLParticle *particle = emitter->particles.first;

    int age;
    int lifeTime;
    while (particle != NULL) {
        age = particle->age;
        lifeTime = particle->lifeTime;
        particle = particle->next;
    }

    // If the youngest particle is still alive, the emitter is active
    if (age != lifeTime) {
        active = TRUE;
    }

    return active;
}

static void BattleAnimTask_MoveEmitterA2BLinear(SysTask *task, void *param)
{
    EmitterAnimationContext *ctx = param;
    BOOL emitterActive = IsEmitterActive(ctx->emitter);

    if (ctx->timer < ctx->startDelay) {
        ctx->timer++;
        return;
    }

    if (PosLerpContext_Update(&ctx->transforms[0]) == FALSE && emitterActive == FALSE) {
        ParticleSystem_DeleteEmitter(ctx->particleSys, ctx->emitter);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        BattleAnimUtil_Free(ctx);
        ctx = NULL;
        return;
    } else {
        if ((ctx->skipFrames > ctx->frame || ctx->maxFrames < ctx->frame) && ctx->maxFrames != EMITTER_ANIMATION_DEFAULT_FRAMES) {
            return;
        }

        SPLEmitter_SetPosX(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].x));
        SPLEmitter_SetPosY(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].y));

        if (ctx->curve) {
            ctx->angle += 360 / (ctx->frames);
            SPLEmitter_SetPosY(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].y) + CalcSineDegrees_Wraparound(ctx->angle));
        }
    }
}

void BattleAnimScriptFunc_MoveEmitterA2BLinear(BattleAnimSystem *system)
{
    EmitterAnimationContext *ctx = BattleAnimUtil_Alloc(system, sizeof(EmitterAnimationContext));

    BattleAnimSystem_GetCommonData(system, &ctx->common);
    EmitterAnimationContext_Init(system, ctx);

    int dir = BattleAnimUtil_GetTransformDirectionX(system, BattleAnimSystem_GetAttacker(system));

    VecFx32 startPos, endPos;
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, ctx->startBattler, &startPos);
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, ctx->endBattler, &endPos);

    PosLerpContext_Init(
        &ctx->transforms[0],
        BATTLE_PARTICLE_WORLD_TO_SCREEN(startPos.x),
        BATTLE_PARTICLE_WORLD_TO_SCREEN(endPos.x) + (ctx->offset.x * dir),
        BATTLE_PARTICLE_WORLD_TO_SCREEN(startPos.y),
        BATTLE_PARTICLE_WORLD_TO_SCREEN(endPos.y) + (ctx->offset.y * dir),
        ctx->frames);

    if (dir > 0) {
        ValueLerpContext_Init(&ctx->unused, DEG_TO_IDX(20) * dir, DEG_TO_IDX(130) * dir, 10);
    } else {
        ValueLerpContext_Init(&ctx->unused, DEG_TO_IDX(90) * dir, DEG_TO_IDX(130) * dir, 10);
    }

    for (int i = 0; i < ctx->skipFrames; i++) {
        PosLerpContext_Update(&ctx->transforms[0]);
    }

    if (ctx->maxFrames != EMITTER_ANIMATION_DEFAULT_FRAMES) {
        ctx->frame = ctx->maxFrames + 1;
    }

    SPLEmitter_SetPosX(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].x));
    SPLEmitter_SetPosY(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].y));

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_MoveEmitterA2BLinear, ctx);
}

void BattleAnimScriptFunc_MoveEmitterViewportTop(BattleAnimSystem *system)
{
    EmitterAnimationContext *ctx = BattleAnimUtil_Alloc(system, sizeof(EmitterAnimationContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->emitterID = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_EMITTER_ID_ALT);
    ctx->mode = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_MODE_ALT);

    int type = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_TYPE_ALT);

    ctx->frames = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_FRAMES_ALT);
    ctx->startDelay = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_START_DELAY_ALT);
    ctx->timer = 0;

    int params = BattleAnimSystem_GetScriptVar(system, EMITTER_ANIMATION_VAR_PARAMS_ALT);

    ctx->frame = 0;
    ctx->skipFrames = EMITTER_ANIMATION_SKIP_FRAMES(params);
    ctx->maxFrames = EMITTER_ANIMATION_MAX_FRAMES(params);

    if (ctx->skipFrames == 0) {
        ctx->skipFrames = 0;
    }

    if (ctx->maxFrames == 0) {
        ctx->maxFrames = EMITTER_ANIMATION_DEFAULT_FRAMES;
    }

    ctx->emitter = BattleAnimSystem_GetEmitter(system, ctx->emitterID);
    ctx->particleSys = BattleAnimSystem_GetCurrentParticleSystem(system);

    if (ctx->mode == EMITTER_ANIMATION_MODE_ATK_TO_DEF) {
        ctx->startBattler = BattleAnimSystem_GetAttacker(system);
        ctx->endBattler = BattleAnimSystem_GetAttacker(system);
    } else {
        ctx->startBattler = BattleAnimSystem_GetDefender(system);
        ctx->endBattler = BattleAnimSystem_GetDefender(system);
    }

    if (ctx->emitter == NULL) {
        GF_ASSERT(FALSE);
    }

    VecFx32 startPos, endPos;
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, ctx->startBattler, &startPos);
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, ctx->endBattler, &endPos);

    if (type == EMITTER_ANIMATION_FROM_TOP) {
        BattleAnimUtil_GetParticleViewportTopPosition(&startPos);
        startPos.x = endPos.x;
    } else {
        BattleAnimUtil_GetParticleViewportTopPosition(&endPos);
        endPos.x = startPos.x;
    }

    PosLerpContext_Init(
        &ctx->transforms[0],
        BATTLE_PARTICLE_WORLD_TO_SCREEN(startPos.x),
        BATTLE_PARTICLE_WORLD_TO_SCREEN(endPos.x),
        BATTLE_PARTICLE_WORLD_TO_SCREEN(startPos.y),
        BATTLE_PARTICLE_WORLD_TO_SCREEN(endPos.y),
        ctx->frames);

    for (int i = 0; i < ctx->skipFrames; i++) {
        PosLerpContext_Update(&ctx->transforms[0]);
    }

    if (ctx->maxFrames != EMITTER_ANIMATION_DEFAULT_FRAMES) {
        ctx->frame = ctx->maxFrames + 1;
    }

    SPLEmitter_SetPosX(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].x));
    SPLEmitter_SetPosY(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].y));

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_MoveEmitterA2BLinear, ctx);
}

static void BattleAnimTask_MoveEmitterA2BParabolic(SysTask *task, void *param)
{
    EmitterAnimationContext *ctx = param;
    BOOL emitterActive = IsEmitterActive(ctx->emitter);

    if (XYTransformContext_UpdateParabolic(&ctx->transforms[0], &ctx->transforms[1]) == FALSE && emitterActive == FALSE) {
        ParticleSystem_DeleteEmitter(ctx->particleSys, ctx->emitter);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        BattleAnimUtil_Free(ctx);
        ctx = NULL;
        return;
    } else {
        SPLEmitter_SetPosX(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].x));
        SPLEmitter_SetPosY(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].y));
    }
}

void BattleAnimScriptFunc_MoveEmitterA2BParabolic(BattleAnimSystem *system)
{
    EmitterAnimationContext *ctx = BattleAnimUtil_Alloc(system, sizeof(EmitterAnimationContext));

    BattleAnimSystem_GetCommonData(system, &ctx->common);
    EmitterAnimationContext_Init(system, ctx);

    int dir = BattleAnimUtil_GetTransformDirectionX(system, BattleAnimSystem_GetAttacker(system));

    VecFx32 startPos, endPos;
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, ctx->startBattler, &startPos);
    BattleAnimUtil_GetBattlerWorldPos_Normal(system, ctx->endBattler, &endPos);
    XYTransformContext_InitParabolic(
        &ctx->transforms[0],
        &ctx->transforms[1],
        BATTLE_PARTICLE_WORLD_TO_SCREEN(startPos.x),
        BATTLE_PARTICLE_WORLD_TO_SCREEN(endPos.x) + (ctx->offset.x * dir),
        BATTLE_PARTICLE_WORLD_TO_SCREEN(startPos.y),
        BATTLE_PARTICLE_WORLD_TO_SCREEN(endPos.y) + (ctx->offset.y * dir),
        ctx->frames,
        ctx->radius * -FX32_ONE);

    if (dir > 0) {
        ValueLerpContext_Init(&ctx->unused, DEG_TO_IDX(20) * dir, DEG_TO_IDX(130) * dir, 10);
    } else {
        ValueLerpContext_Init(&ctx->unused, DEG_TO_IDX(90) * dir, DEG_TO_IDX(130) * dir, 10);
    }

    for (int i = 0; i < ctx->skipFrames; i++) {
        XYTransformContext_UpdateParabolic(&ctx->transforms[0], &ctx->transforms[1]);
    }

    if (ctx->maxFrames != EMITTER_ANIMATION_DEFAULT_FRAMES) {
        ctx->frame = ctx->maxFrames + 1;
    }

    SPLEmitter_SetPosX(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].x));
    SPLEmitter_SetPosY(ctx->emitter, BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->transforms[0].y));

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_MoveEmitterA2BParabolic, ctx);
}

static void BattleAnimTask_RevolveEmitter(SysTask *task, void *param)
{
    EmitterRevolutionContext *ctx = param;
    BOOL emitterActive = IsEmitterActive(ctx->emitter);

    if (RevolutionContext_Update(&ctx->revs) == FALSE && emitterActive == FALSE) {
        ParticleSystem_DeleteEmitter(ctx->particleSys, ctx->emitter);
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
    } else {
        VecFx32 emitterPos;
        emitterPos.x = ctx->battlerPos.x + BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->revs.x);
        emitterPos.y = ctx->battlerPos.y + BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->revs.y);

        SPLEmitter_SetPosX(ctx->emitter, emitterPos.x);
        SPLEmitter_SetPosY(ctx->emitter, emitterPos.y);
    }
}

void BattleAnimScriptFunc_RevolveEmitter(BattleAnimSystem *system)
{
    EmitterRevolutionContext *ctx = BattleAnimUtil_Alloc(system, sizeof(EmitterRevolutionContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->emitterID = BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_EMITTER_ID);
    ctx->sx = BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_START_X);
    ctx->ex = BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_END_X);
    ctx->sy = BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_START_Y);
    ctx->ey = BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_END_Y);
    ctx->rx = BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_RADIUS_X);
    ctx->ry = BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_RADIUS_Y);
    ctx->frames = BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_FRAMES);
    ctx->mode = BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_MODE);

    if (ctx->mode == EMITTER_REVOLUTION_MODE_ATTACKER) {
        ctx->battler = BattleAnimSystem_GetAttacker(system);
    } else {
        ctx->battler = BattleAnimSystem_GetDefender(system);
    }

    BattleAnimUtil_GetBattlerWorldPos_Normal(system, ctx->battler, &ctx->battlerPos);

    ctx->emitter = BattleAnimSystem_GetEmitter(system, ctx->emitterID);
    ctx->particleSys = BattleAnimSystem_GetParticleSystem(system, BattleAnimSystem_GetScriptVar(system, EMITTER_REVOLUTION_VAR_PARTICLE_SYSTEM));

    RevolutionContext_Init(
        &ctx->revs,
        DEG_TO_IDX(ctx->sx),
        DEG_TO_IDX(ctx->ex),
        DEG_TO_IDX(ctx->sy),
        DEG_TO_IDX(ctx->ey),
        ctx->rx * FX32_ONE,
        ctx->ry * FX32_ONE,
        ctx->frames);

    RevolutionContext_Update(&ctx->revs);

    VecFx32 startPos;
    startPos.x = ctx->battlerPos.x + BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->revs.x);
    startPos.y = ctx->battlerPos.y + BATTLE_PARTICLE_SCREEN_TO_WORLD(ctx->revs.y);

    SPLEmitter_SetPosX(ctx->emitter, startPos.x);
    SPLEmitter_SetPosY(ctx->emitter, startPos.y);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_RevolveEmitter, ctx);
}

static void ov12_0222A178(SysTask *param0, void *param1)
{
    BOOL v0;
    UnkStruct_ov12_0222A178 *v1 = (UnkStruct_ov12_0222A178 *)param1;

    v0 = 1;
    v0 = ManagedSprite_IsAnimated(v1->unk_1C);

    if (v0 == 0) {
        Sprite_DeleteAndFreeResources(v1->unk_1C);
        BattleAnimSystem_EndAnimTask(v1->unk_00.battleAnimSys, param0);
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

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSys, ov12_0222A178, v0);
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

                if (v2 == BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00.battleAnimSys)) {
                    v3 = BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSys, 2);
                    ManagedSprite_SetExplicitPriority(v0->unk_1C, v3);
                } else {
                    v3 = BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00.battleAnimSys);
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
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSys, param0);
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

    ManagedSprite_SetExplicitPriority(v0->unk_1C, BattleAnimSystem_GetPokemonSpritePriority(v0->unk_00.battleAnimSys));
    ManagedSprite_OffsetPositionXY(v0->unk_1C, 0, +12);

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSys, ov12_0222A1F4, v0);
}

static void ov12_0222A3DC(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A3DC *v0 = param1;
    BOOL v1 = ManagedSprite_IsAnimated(v0->unk_1C);

    if (v1 == 0) {
        Sprite_DeleteAndFreeResources(v0->unk_1C);
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSys, param0);
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
            if (BattleAnimUtil_GetBattlerSide(v0->unk_00.battleAnimSys, v2) == 0x3) {
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

    ManagedSprite_SetExplicitPriority(v0->unk_1C, BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSys, 2));
    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSys, ov12_0222A3DC, v0);
}

static void ov12_0222A4A0(SysTask *param0, void *param1)
{
    UnkStruct_ov12_0222A4A0 *v0 = param1;
    BOOL v1;

    switch (v0->unk_00.state) {
    case 0:
        XYTransformContext_InitParabolic(&v0->unk_24[0], &v0->unk_24[1], -30, 128 - 16, 160, 80 + 32, 21, 64 * FX32_ONE);
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
            BattleAnimUtil_SetSpriteBgBlending(v0->unk_00.battleAnimSys, v0->unk_20, v0->unk_21);
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
        BattleAnimSystem_EndAnimTask(v0->unk_00.battleAnimSys, param0);
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
    ManagedSprite_SetExplicitPriority(v0->unk_1C, BattleAnimSystem_GetBgPriority(v0->unk_00.battleAnimSys, 2));

    BattleAnimSystem_StartAnimTask(v0->unk_00.battleAnimSys, ov12_0222A4A0, v0);
}

void BattleAnimScriptFunc_SetBgGrayscale(BattleAnimSystem *system)
{
    BOOL grayscale = BattleAnimSystem_GetScriptVar(system, 0);
    if (grayscale != FALSE) {
        BattleAnimUtil_MakeBgPalsGrayscale(system);
    } else {
        BattleAnimUtil_ReturnBgPalsToNormal(system);
    }
}

static void SetPokemonSpritePriorityContext_DoDarkVoidEffects(SetPokemonSpritePriorityContext *ctx)
{
    switch (ctx->common.state) {
    case 0:
        if (ctx->windowType == 0) {
            GX_SetVisibleWnd(GX_WNDMASK_W0);
            G2_SetWnd0InsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_BASE | BATTLE_BG_WNDMASK_EFFECT, TRUE);
            G2_SetWndOutsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_BASE | BATTLE_BG_WNDMASK_EFFECT | GX_WND_PLANEMASK_OBJ, TRUE);
            G2_SetWnd0Position(0, 160, HW_LCD_WIDTH / 2, HW_LCD_HEIGHT);
            ctx->sinkFullyStartFrame = DARK_VOID_SINK_FULLY_MIN_FRAME + (LCRNG_Next() % DARK_VOID_SINK_FULLY_RNG_FRAME);
        } else {
            GX_SetVisibleWnd(GX_WNDMASK_W0);
            G2_SetWnd0InsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_BASE | BATTLE_BG_WNDMASK_EFFECT, TRUE);
            G2_SetWndOutsidePlane(BATTLE_BG_WNDMASK_3D | BATTLE_BG_WNDMASK_WINDOW | BATTLE_BG_WNDMASK_BASE | BATTLE_BG_WNDMASK_EFFECT | GX_WND_PLANEMASK_OBJ, TRUE);
            G2_SetWnd0Position(HW_LCD_WIDTH / 2, (HW_LCD_HEIGHT / 2) - 10, HW_LCD_WIDTH, HW_LCD_HEIGHT);
            ctx->sinkFullyStartFrame = DARK_VOID_SINK_FULLY_MIN_FRAME + (LCRNG_Next() % DARK_VOID_SINK_FULLY_RNG_FRAME);
        }
        break;
    case 5:
    case 6:
        if (LCRNG_Next() % 2) {
            if (ctx->stepCount == 0) {
                ctx->stepCount++;
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, DARK_VOID_RANDOM_STEP_Y);
            }
        }
        break;
    case 7:
        if (ctx->stepCount != 1) {
            ctx->stepCount++;
            ManagedSprite_OffsetPositionXY(ctx->sprite, 0, DARK_VOID_RANDOM_STEP_Y);
        }
        break;
    case 10:
    case 11:
        if (LCRNG_Next() % 2) {
            if (ctx->stepCount == 1) {
                ctx->stepCount++;
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, DARK_VOID_RANDOM_STEP_Y);
            }
        }
        break;
    case 12:
        if (ctx->stepCount != 2) {
            ctx->stepCount++;
            ManagedSprite_OffsetPositionXY(ctx->sprite, 0, DARK_VOID_RANDOM_STEP_Y);
        }
        break;
    case 15:
    case 16:
        if (LCRNG_Next() % 2) {
            if (ctx->stepCount == 2) {
                ctx->stepCount++;
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, DARK_VOID_RANDOM_STEP_Y);
            }
        }
        break;
    case 17:
        if (ctx->stepCount != 3) {
            ctx->stepCount++;
            ManagedSprite_OffsetPositionXY(ctx->sprite, 0, DARK_VOID_RANDOM_STEP_Y);
        }
        break;
    case 22:
    case 23:
        if (LCRNG_Next() % 2) {
            if (ctx->stepCount == 3) {
                ctx->stepCount++;
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, DARK_VOID_RANDOM_STEP_Y_L);
            }
        }
        break;
    case 24:
        if (ctx->stepCount != 4) {
            ctx->stepCount++;
            ManagedSprite_OffsetPositionXY(ctx->sprite, 0, DARK_VOID_RANDOM_STEP_Y_L);
        }
        break;
    default:
        if (ctx->common.state > ctx->sinkFullyStartFrame) {
            if (ctx->stepCount < 20) {
                ManagedSprite_OffsetPositionXY(ctx->sprite, 0, DARK_VOID_RANDOM_STEP_Y);

                s16 x, y;
                ManagedSprite_GetPositionXY(ctx->sprite, &x, &y);

                if (y > DARK_VOID_MAX_Y) {
                    ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
                }

                ctx->stepCount++;
            } else {
                ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
            }
        }

        break;
    }
}

static void BattleAnimTask_SetPokemonSpritePriority(SysTask *task, void *param)
{
    SetPokemonSpritePriorityContext *ctx = param;

    if (ctx->mode != POKEMON_SPRITE_PRIORITY_MODE_DEFAULT) {
        SetPokemonSpritePriorityContext_DoDarkVoidEffects(ctx);
    }

    ctx->common.state++;

    if (ctx->common.state >= ctx->maxFrames) {
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_NONE, FALSE);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_NONE, FALSE);
        G2_SetWnd0Position(0, 0, 0, 0);

        ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
        SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);

        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }

    ManagedSprite_TickFrame(ctx->sprite);
    SpriteSystem_DrawSprites(ctx->common.pokemonSpriteManager);
}

void BattleAnimScriptFunc_SetPokemonSpritePriority(BattleAnimSystem *system)
{
    SetPokemonSpritePriorityContext *ctx = BattleAnimUtil_Alloc(system, sizeof(SetPokemonSpritePriorityContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);

    ctx->spriteID = BattleAnimSystem_GetScriptVar(system, SET_POKEMON_SPRITE_PRIORITY_VAR_SPRITE_ID);
    ctx->maxFrames = BattleAnimSystem_GetScriptVar(system, SET_POKEMON_SPRITE_PRIORITY_VAR_MAX_FRAMES);
    ctx->bg = BattleAnimSystem_GetScriptVar(system, SET_POKEMON_SPRITE_PRIORITY_VAR_BG);
    ctx->spritePriority = BattleAnimSystem_GetScriptVar(system, SET_POKEMON_SPRITE_PRIORITY_VAR_SPRITE_PRIORITY);
    ctx->mode = BattleAnimSystem_GetScriptVar(system, SET_POKEMON_SPRITE_PRIORITY_VAR_MODE);
    ctx->windowType = BattleAnimSystem_GetScriptVar(system, SET_POKEMON_SPRITE_PRIORITY_VAR_WINDOW_TYPE);
    ctx->sprite = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, ctx->spriteID);
    ctx->stepCount = 0;

    if (ctx->bg != BATTLE_ANIM_BG_NONE) {
        int bgPriority = BattleAnimSystem_GetBgPriority(system, ctx->bg);
        ManagedSprite_SetExplicitPriority(ctx->sprite, bgPriority);
    }

    if (ctx->spritePriority != BATTLE_ANIM_DEFAULT_PRIORITY) {
        ManagedSprite_SetPriority(ctx->sprite, ctx->spritePriority);
    }

    if (BattleAnimSystem_IsDoubleBattle(system) != TRUE) {
        if (BattleAnimSystem_GetScriptVar(system, SET_POKEMON_SPRITE_PRIORITY_VAR_BATTLER) == BATTLER_ROLE_ATTACKER_PARTNER || BattleAnimSystem_GetScriptVar(system, SET_POKEMON_SPRITE_PRIORITY_VAR_BATTLER) == BATTLER_ROLE_DEFENDER_PARTNER) {
            ManagedSprite_SetDrawFlag(ctx->sprite, FALSE);
            Heap_Free(ctx);
            return;
        }
    }

    int battlerType = BattleAnimSystem_GetScriptVar(system, SET_POKEMON_SPRITE_PRIORITY_VAR_BATTLER);
    int attacker = BattleAnimSystem_GetAttacker(system);
    int defender = BattleAnimSystem_GetDefender(system);

    // Seems like a bug, should probably be == instead of !=
    if (ctx->spritePriority != BATTLE_ANIM_DEFAULT_PRIORITY) {
        int attackerType = BattleAnimUtil_GetBattlerType(system, attacker);
        int defenderType = BattleAnimUtil_GetBattlerType(system, defender);

        switch (battlerType) {
        case BATTLER_ROLE_ATTACKER:
            switch (attackerType) {
            case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
                ManagedSprite_SetPriority(ctx->sprite, 20);
                break;
            case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
                ManagedSprite_SetPriority(ctx->sprite, 10);
                break;
            case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
                ManagedSprite_SetPriority(ctx->sprite, 10);
                break;
            case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
                ManagedSprite_SetPriority(ctx->sprite, 20);
                break;
            }
            break;
        case BATTLER_ROLE_ATTACKER_PARTNER:
            switch (attackerType) {
            case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
                ManagedSprite_SetPriority(ctx->sprite, 10);
                break;
            case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
                ManagedSprite_SetPriority(ctx->sprite, 20);
                break;
            case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
                ManagedSprite_SetPriority(ctx->sprite, 20);
                break;
            case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
                ManagedSprite_SetPriority(ctx->sprite, 10);
                break;
            }
            break;
        case BATTLER_ROLE_DEFENDER:
            switch (defenderType) {
            case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
                ManagedSprite_SetPriority(ctx->sprite, 20);
                break;
            case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
                ManagedSprite_SetPriority(ctx->sprite, 10);
                break;
            case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
                ManagedSprite_SetPriority(ctx->sprite, 10);
                break;
            case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
                ManagedSprite_SetPriority(ctx->sprite, 20);
                break;
            }
            break;
        case BATTLER_ROLE_DEFENDER_PARTNER:
            switch (defenderType) {
            case BATTLER_TYPE_PLAYER_SIDE_SLOT_1:
                ManagedSprite_SetPriority(ctx->sprite, 10);
                break;
            case BATTLER_TYPE_ENEMY_SIDE_SLOT_1:
                ManagedSprite_SetPriority(ctx->sprite, 20);
                break;
            case BATTLER_TYPE_PLAYER_SIDE_SLOT_2:
                ManagedSprite_SetPriority(ctx->sprite, 20);
                break;
            case BATTLER_TYPE_ENEMY_SIDE_SLOT_2:
                ManagedSprite_SetPriority(ctx->sprite, 10);
                break;
            }
            break;
        }
    }

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_SetPokemonSpritePriority, ctx);
}

static void BattleAnimTask_RenderPokemonSprites(SysTask *task, void *param)
{
    RenderPokemonSpritesContext *ctx = param;

    if (ctx->frames == 0) {
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
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

    if (BattleAnimSystem_GetScriptVar(system, RENDER_POKEMON_SPRITES_VAR_FRAMES) == 0) {
        ctx->frames = RENDER_POKEMON_SPRITES_DEFAULT_FRAMES;
    } else {
        ctx->frames = BattleAnimSystem_GetScriptVar(system, RENDER_POKEMON_SPRITES_VAR_FRAMES);
    }

    static int priorityTable[MAX_BATTLERS] = {
        [BATTLER_PLAYER_1] = 20,
        [BATTLER_ENEMY_1] = 10,
        [BATTLER_PLAYER_2] = 10,
        [BATTLER_ENEMY_2] = 20,
    };

    for (int battler = BATTLER_PLAYER_1; battler < MAX_BATTLERS; battler++) {
        ctx->sprites[battler] = BattleAnimSystem_GetPokemonSprite(ctx->common.battleAnimSys, battler);

        if (ctx->sprites[battler] != NULL) {
            ManagedSprite_SetPriority(ctx->sprites[battler], priorityTable[battler]);
        }
    }

    SysTask *task = BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_RenderPokemonSprites, ctx);
    BattleAnimTask_RenderPokemonSprites(task, ctx);
}

static void BattleAnimTask_ScrollSwitchedBg(SysTask *task, void *param)
{
    ScrollSwitchedBgContext *ctx = param;

    switch (ctx->common.state) {
    case SCROLL_SWITCHED_BG_STATE_INIT:
        ctx->timer = 0;
        ctx->bgScroll = BgScrollContext_New(
            SCROLL_SWITCHED_BG_START_Y,
            SCROLL_SWITCHED_BG_END_Y,
            SCROLL_SWITCHED_BG_ANGLE_STEP,
            SCROLL_SWITCHED_BG_AMPLITUDE,
            SCROLL_SWITCHED_BG_SPEED,
            BattleAnimSystem_GetBgID(ctx->common.battleAnimSys, BATTLE_ANIM_BG_EFFECT),
            0,
            BattleAnimUtil_MakeBgOffsetValue(SCROLL_SWITCHED_BG_INIT_X, SCROLL_SWITCHED_BG_INIT_Y),
            BattleAnimSystem_GetHeapID(ctx->common.battleAnimSys));
        ctx->common.state++;
        break;
    case SCROLL_SWITCHED_BG_STATE_SCROLL:
        ctx->timer++;
        if (ctx->timer < ctx->frames) {
            break;
        }

        BgScrollContext_Free(ctx->bgScroll);
        ctx->common.state++;
    default:
        BattleAnimSystem_EndAnimTask(ctx->common.battleAnimSys, task);
        Heap_Free(ctx);
        return;
    }
}

void BattleAnimScriptFunc_ScrollSwitchedBg(BattleAnimSystem *system)
{
    ScrollSwitchedBgContext *ctx = BattleAnimUtil_Alloc(system, sizeof(ScrollSwitchedBgContext));
    BattleAnimSystem_GetCommonData(system, &ctx->common);
    ctx->frames = BattleAnimSystem_GetScriptVar(system, SCROLL_SWITCHED_BG_VAR_FRAMES);

    BattleAnimSystem_StartAnimTask(ctx->common.battleAnimSys, BattleAnimTask_ScrollSwitchedBg, ctx);
}
