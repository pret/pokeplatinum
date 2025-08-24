#ifndef POKEPLATINUM_BATTLE_ANIM_HELPERS_H
#define POKEPLATINUM_BATTLE_ANIM_HELPERS_H

#include "nitro/hw/common/lcd.h"

#include "battle_anim/battle_anim_system.h"

#include "buffer_manager.h"
#include "palette.h"
#include "pokemon_sprite.h"
#include "screen_scroll_manager.h"
#include "sprite.h"

#define REVOLUTION_CONTEXT_OVAL_RADIUS_X     FX32_CONST(32)
#define REVOLUTION_CONTEXT_OVAL_RADIUS_Y     FX32_CONST(-8)
#define REVOLUTION_CONTEXT_OVAL_RADIUS_X_INT (32)
#define REVOLUTION_CONTEXT_OVAL_RADIUS_Y_INT (-8)

#define MAX_AFTERIMAGES               4
#define AFTERIMAGE_TRANSFORM_POSITION 0
#define AFTERIMAGE_TRANSFORM_SCALE    1

#define BG_OFFSET_X_MASK  0xFFFF
#define BG_OFFSET_Y_MASK  0xFFFF
#define BG_OFFSET_X_SHIFT 0
#define BG_OFFSET_Y_SHIFT 16

enum BattleAnimPositionType {
    BATTLE_ANIM_POSITION_MON_X = 0,
    BATTLE_ANIM_POSITION_MON_Y,
    BATTLE_ANIM_POSITION_PARTICLE_X,
    BATTLE_ANIM_POSITION_PARTICLE_Y,
};

enum ValueLerpParam {
    VALUE_PARAM_STEPS = 0,
    VALUE_PARAM_STEP_SIZE,

    VALUE_PARAM_FX32_STEPS = 0,
    VALUE_PARAM_FX32_STEP_SIZE,
    VALUE_PARAM_FX32_CUR_ANGLE,

    VALUE_PARAM_COS_STEPS = 0,
    VALUE_PARAM_COS_CUR_ANGLE,
    VALUE_PARAM_COS_AMPLITUDE,
    VALUE_PARAM_COS_STEP_SIZE,
};

enum XYTransformParam {
    XY_PARAM_STEPS = 0,
    XY_PARAM_STEP_SIZE,
    XY_PARAM_STEP_SIZE_X = 1,
    XY_PARAM_STEP_SIZE_Y,
    XY_PARAM_CUR_X,
    XY_PARAM_CUR_Y,

    XY_PARAM_SHAKE_COUNTER = 0,
    XY_PARAM_SHAKE_INTERVAL,
    XY_PARAM_SHAKE_REMAINING,
    XY_PARAM_SHAKE_CYCLE,
    XY_PARAM_SHAKE_EXTENT_X,
    XY_PARAM_SHAKE_EXTENT_Y,
    XY_PARAM_SHAKE_PREV_X,
    XY_PARAM_SHAKE_PREV_Y,

    XY_PARAM_REV_STEPS = 0,
    XY_PARAM_REV_CUR_X,
    XY_PARAM_REV_RADIUS_X,
    XY_PARAM_REV_CUR_Y,
    XY_PARAM_REV_RADIUS_Y,
    XY_PARAM_REV_STEP_SIZE_X,
    XY_PARAM_REV_STEP_SIZE_Y,
};

enum BattleAnimAnchorType {
    BATTLE_ANIM_ANCHOR_BOTTOM = 0,
    BATTLE_ANIM_ANCHOR_TOP,
};

typedef struct AngleLerpContext {
    s32 value;
    s32 data[4];
} ValueLerpContext;

typedef struct XYTransformContext {
    s16 x;
    s16 y;
    s32 data[8];
} XYTransformContext;

typedef BOOL (*XYTransformFunc)(XYTransformContext *);

typedef struct AfterimageContext {
    s16 x;
    s16 y;
    XYTransformContext transforms[MAX_AFTERIMAGES];
    XYTransformFunc transformFunc;
    ManagedSprite *sprites[MAX_AFTERIMAGES];
    u16 delay; // Delay before the next afterimage appears
    u16 delayCounter;
    u8 count; // Number of afterimages
    u8 activeCount; // Number of active afterimages
    u8 mode; // See AFTERIMAGE_TRANSFORM_*
    u8 unk_AF;
} AfterimageContext;

typedef struct AlphaFadeContext {
    XYTransformContext lerp;
    int done;
} AlphaFadeContext;

typedef void (*VBlankDMAFunc)(void *);

typedef struct VBlankDMAController {
    SysTask *onVBlankTask;
    SysTask *postVBlankTask;
    BOOL doDMA;
    BOOL swapBuffers;
    VBlankDMAFunc dmaFunc;
    VBlankDMAFunc swapBufferFunc;
    void *param;
} VBlankDMAController;

struct CustomBgScrollContext {
    VBlankDMAController dmaController;
    BufferManager *bufferManager;
    u32 buffer1[HW_LCD_HEIGHT];
    u32 buffer2[HW_LCD_HEIGHT];
    u32 offsetReg;
};

typedef struct BgScrollContext {
    VBlankDMAController dmaController;
    ScreenScrollManager *screenScrollMgr;
} BgScrollContext;

typedef struct SpriteShakeInfo {
    s16 extentX;
    s16 extentY;
    s16 interval;
    s16 amount;
    int targets;
} SpriteShakeInfo;

typedef struct PaletteFadeContext {
    BOOL active;
    SysTask *task;
    enum PaletteBufferID bufferID;
    u16 index;
    u16 count;
    u16 color;
    u8 startFrac;
    u8 endFrac;
    u8 fraction;
    s8 step;
    s8 stepFrames;
    s8 timer;
    PaletteData *paletteData;
} PaletteFadeContext;

void BattleAnimUtil_GetBattlerTypeDefaultPos2(int isDoubles, int battlerType, s16 *px, s16 *py);
void BattleAnimUtil_GetBattlerDefaultPos2(BattleAnimSystem *system, int battler, s16 *px, s16 *py);
s16 BattleAnimUtil_GetBattlerPos(BattleAnimSystem *system, int battler, enum BattleAnimPositionType posType);
u8 BattleAnimUtil_GetSpritePalette(ManagedSprite *sprite);
int BattleAnimUtil_GetTransformDirectionX(BattleAnimSystem *system, int battler);
int BattleAnimUtil_GetTransformDirectionY(BattleAnimSystem *system, int battler);
fx32 BattleAnimMath_GetStepSize(fx32 start, fx32 end, u32 steps);
u32 ov12_022259AC(fx32 param0, fx32 param1, fx32 param2);
void XYTransformContext_ApplyPosOffsetToSprite(XYTransformContext *ctx, ManagedSprite *sprite, s16 cx, s16 cy);
void ScaleLerpContext_ApplyToSprite(XYTransformContext *ctx, ManagedSprite *sprite);
void XYTransformContext_ApplyPosOffsetToMon(XYTransformContext *ctx, PokemonSprite *sprite, s16 cx, s16 cy);
#define RevolutionContext_Apply XYTransformContext_ApplyPosOffsetToMon
#define PosLerpContext_Apply    XYTransformContext_ApplyPosOffsetToMon
void ScaleLerpContext_ApplyToMon(XYTransformContext *ctx, PokemonSprite *sprite);
void RevolutionContext_Init(XYTransformContext *ctx, u16 sx, u16 ex, u16 sy, u16 ey, fx32 rx, fx32 ry, int steps);
void ov12_02225A8C(XYTransformContext *ctx, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, u16 param7);
BOOL RevolutionContext_Update(XYTransformContext *ctx);
BOOL RevolutionContext_UpdateAndApplyToSprite(XYTransformContext *ctx, s16 cx, s16 cy, ManagedSprite *sprite);
BOOL RevolutionContext_UpdateAndApplyToMon(XYTransformContext *ctx, s16 cx, s16 cy, PokemonSprite *sprite);
void PosLerpContext_Init(XYTransformContext *ctx, s16 sx, s16 ex, s16 sy, s16 ey, u16 steps);
BOOL PosLerpContext_Update(XYTransformContext *ctx);
BOOL PosLerpContext_UpdateAndApplyToSprite(XYTransformContext *ctx, ManagedSprite *sprite);
BOOL PosLerpContext_UpdateAndApplyToMon(XYTransformContext *ctx, PokemonSprite *sprite);
void XYTransformContext_InitParabolic(XYTransformContext *linear, XYTransformContext *revs, s16 sx, s16 ex, s16 sy, s16 ey, u16 frames, fx32 r);
BOOL XYTransformContext_UpdateParabolic(XYTransformContext *ctx, XYTransformContext *revs);
BOOL ov12_02225D2C(XYTransformContext *ctx, XYTransformContext *revs, ManagedSprite *sprite);
void ValueLerpContext_Init(ValueLerpContext *ctx, s32 start, s32 end, u32 steps);
void ValueLerpContext_InitFX32(ValueLerpContext *ctx, s16 start, s16 end, u32 steps); // Uses FX32 internally
BOOL ValueLerpContext_Update(ValueLerpContext *ctx);
BOOL ValueLerpContext_UpdateFX32(ValueLerpContext *ctx);
void AngleLerpContext_InitCos(ValueLerpContext *ctx, u16 start, u16 end, fx32 r, u32 steps);
BOOL AngleLerpContext_UpdateCos(ValueLerpContext *ctx);
void ScaleLerpContext_Init(XYTransformContext *ctx, s16 sx, s16 ex, s16 sy, u32 steps);
BOOL ScaleLerpContext_Update(XYTransformContext *ctx);
void ScaleLerpContext_InitXY(XYTransformContext *ctx, s16 sx, s16 ex, s16 sy, s16 ey, s16 ref, u32 steps);
BOOL ScaleLerpContext_UpdateXY(XYTransformContext *ctx);
void ScaleLerpContext_GetAffineScale(XYTransformContext *ctx, f32 *px, f32 *py);
s16 BattleAnimUtil_GetGroundAnchoredScaleOffset(s16 baseY, int height, fx32 scaleY);
void BattleAnimUtil_SetPokemonSpriteAnchoredPosition(PokemonSprite *sprite, s16 y, s16 height, fx32 scale, enum BattleAnimAnchorType anchor);
void BattleAnimUtil_SetSpriteAnchoredPosition(ManagedSprite *sprite, s16 y, s16 height, fx32 scale, enum BattleAnimAnchorType anchor);
BOOL ScaleLerpContext_UpdateAndApplyToSprite(XYTransformContext *ctx, ManagedSprite *sprite);
BOOL ScaleLerpContext_UpdateAndApplyToMon(XYTransformContext *ctx, PokemonSprite *sprite);
BOOL ScaleLerpContext_UpdateXYAndApplyToMon(XYTransformContext *ctx, PokemonSprite *sprite);
void ShakeContext_Init(XYTransformContext *ctx, s16 extentX, s16 extentY, u32 interval, u32 amount);
BOOL ShakeContext_Update(XYTransformContext *ctx);
BOOL ShakeContext_UpdateAndApplyToMon(XYTransformContext *ctx, s16 cx, s16 cy, PokemonSprite *sprite);
void Afterimage_Init(AfterimageContext *ctx, XYTransformContext *transformCtx, XYTransformFunc transformFunc, s16 x, s16 y, u16 delay, u8 count, u8 mode, ManagedSprite *sprite0, ManagedSprite *sprite1, ManagedSprite *sprite2, ManagedSprite *sprite3);
BOOL Afterimage_Update(AfterimageContext *ctx);
void RevolutionContext_InitOvalRevolutions(XYTransformContext *ctx, int revs, int stepsPerRev);
void AlphaFadeContext_Init(AlphaFadeContext *ctx, s16 sev1, s16 eev1, s16 sev2, s16 eev2, int steps);
BOOL AlphaFadeContext_IsDone(const AlphaFadeContext *ctx);
CustomBgScrollContext *CustomBgScrollContext_New(u32 offsetReg, u32 initValue, enum HeapID heapID);
void CustomBgScrollContext_Free(CustomBgScrollContext *ctx);
void *CustomBgScrollContext_GetWriteBuffer(const CustomBgScrollContext *ctx);
void CustomBgScrollContext_Stop(CustomBgScrollContext *ctx);
BgScrollContext *BgScrollContext_New(u8 startY, u8 endY, u16 angleIncrement, fx32 amplitude, s16 speed, u32 bgID, u32 priority, u32 initValue, enum HeapID heapID);
void BgScrollContext_Free(BgScrollContext *ctx);
void *BgScrollContext_GetWriteBuffer(const BgScrollContext *ctx);
void BgScrollContext_Stop(BgScrollContext *ctx);
u32 BattleAnimUtil_MakeBgOffsetValue(u16 x, u16 y);
u32 BattleAnimUtil_GetHOffsetRegisterForBg(int bgID);
void ov12_02226728(s16 param0, s16 param1, s16 param2, s16 param3, s16 *param4, s16 *param5);
void ov12_02226744(s16 param0, s16 param1, s16 param2, s16 param3, fx32 *param4);
void ov12_0222676C(s16 param0, s16 param1, s16 param2, s16 param3, u16 *param4);
BOOL ov12_022267A8(int *param0, int param1, s32 param2);
BOOL PaletteFadeContext_IsActive(PaletteFadeContext *ctx);
void PaletteFadeContext_Free(PaletteFadeContext *ctx);
PaletteFadeContext *PaletteFadeContext_New(PaletteData *paletteData, enum HeapID heapID, enum PaletteBufferID bufferID, u16 index, u16 count, s8 stepFrames, s8 step, u8 startFrac, u8 endFrac, u16 color, int priority);
void BattleAnimUtil_MakeBgPalsGrayscale(BattleAnimSystem *ctx);
void BattleAnimUtil_ReturnBgPalsToNormal(BattleAnimSystem *ctx);

#endif // POKEPLATINUM_BATTLE_ANIM_HELPERS_H
