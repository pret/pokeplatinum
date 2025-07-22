#ifndef POKEPLATINUM_OV12_02225864_H
#define POKEPLATINUM_OV12_02225864_H

#include "nitro/hw/common/lcd.h"
#include "overlay012/battle_anim_system.h"
#include "overlay012/struct_ov12_022267D4_decl.h"

#include "buffer_manager.h"
#include "palette.h"
#include "pokemon_sprite.h"
#include "screen_scroll_manager.h"
#include "sprite.h"

#define REVOLUTION_CONTEXT_OVAL_RADIUS_X FX32_CONST(32)
#define REVOLUTION_CONTEXT_OVAL_RADIUS_Y FX32_CONST(-8)

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

enum AngleLerpParam {
    ANGLE_PARAM_STEPS = 0,
    ANGLE_PARAM_STEP_SIZE,

    ANGLE_PARAM_FX32_STEPS = 0,
    ANGLE_PARAM_FX32_STEP_SIZE,
    ANGLE_PARAM_FX32_CUR_ANGLE,

    ANGLE_PARAM_COS_STEPS = 0,
    ANGLE_PARAM_COS_CUR_ANGLE,
    ANGLE_PARAM_COS_AMPLITUDE,
    ANGLE_PARAM_COS_STEP_SIZE,
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

typedef struct {
    XYTransformContext lerp;
    int done;
} AlphaFadeContext;

typedef void (*VBlankDMAFunc)(void *);

typedef struct {
    SysTask *onVBlankTask;
    SysTask *postVBlankTask;
    BOOL doDMA;
    BOOL swapBuffers;
    VBlankDMAFunc dmaFunc;
    VBlankDMAFunc swapBufferFunc;
    void *param;
} VBlankDMAController;

typedef struct UnkStruct_ov12_02226504 {
    VBlankDMAController unk_00;
    BufferManager *bufferManager;
    u32 unk_20[HW_LCD_HEIGHT];
    u32 unk_320[HW_LCD_HEIGHT];
    u32 unk_620;
} UnkStruct_ov12_02226504;

typedef struct BgScrollContext {
    VBlankDMAController dmaController;
    ScreenScrollManager *screenScrollMgr;
} BgScrollContext;

void ov12_02225864(int param0, int param1, s16 *param2, s16 *param3);
void ov12_02225898(BattleAnimSystem *param0, int param1, s16 *param2, s16 *param3);
s16 BattleAnimUtil_GetBattlerPos(BattleAnimSystem *param0, int param1, enum BattleAnimPositionType param2);
u8 BattleAnimUtil_GetSpritePalette(ManagedSprite *param0);
int BattleAnimUtil_GetTransformDirection(BattleAnimSystem *param0, int param1);
int ov12_0222598C(BattleAnimSystem *param0, int param1);
fx32 BattleAnimMath_GetStepSize(fx32 param0, fx32 param1, u32 param2);
u32 ov12_022259AC(fx32 param0, fx32 param1, fx32 param2);
void XYTransformContext_ApplyPosOffsetToSprite(XYTransformContext *param0, ManagedSprite *param1, s16 param2, s16 param3);
void ov12_022259FC(XYTransformContext *param0, ManagedSprite *param1);
void XYTransformContext_ApplyPosOffsetToMon(XYTransformContext *param0, PokemonSprite *param1, s16 param2, s16 param3);
#define RevolutionContext_Apply XYTransformContext_ApplyPosOffsetToMon
#define PosLerpContext_Apply XYTransformContext_ApplyPosOffsetToMon
void ov12_02225A3C(XYTransformContext *param0, PokemonSprite *param1);
void RevolutionContext_Init(XYTransformContext *param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, int param7);
void ov12_02225A8C(XYTransformContext *param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, u16 param7);
BOOL RevolutionContext_Update(XYTransformContext *param0);
BOOL ov12_02225B78(XYTransformContext *param0, s16 param1, s16 param2, ManagedSprite *param3);
BOOL RevolutionContext_UpdateAndApply(XYTransformContext *param0, s16 param1, s16 param2, PokemonSprite *param3);
void PosLerpContext_Init(XYTransformContext *param0, s16 param1, s16 param2, s16 param3, s16 param4, u16 param5);
BOOL PosLerpContext_Update(XYTransformContext *param0);
BOOL ov12_02225C50(XYTransformContext *param0, ManagedSprite *param1);
BOOL ov12_02225C74(XYTransformContext *param0, PokemonSprite *param1);
void ov12_02225C98(XYTransformContext *param0, XYTransformContext *param1, s16 param2, s16 param3, s16 param4, s16 param5, u16 param6, fx32 param7);
BOOL ov12_02225CE4(XYTransformContext *param0, XYTransformContext *param1);
BOOL ov12_02225D2C(XYTransformContext *param0, XYTransformContext *param1, ManagedSprite *param2);
void ValueLerpContext_Init(ValueLerpContext *param0, s32 param1, s32 param2, u32 param3);
void ValueLerpContext_InitFX32(ValueLerpContext *param0, s16 param1, s16 param2, u32 param3); // Uses FX32 internally
BOOL ValueLerpContext_Update(ValueLerpContext *param0);
BOOL ValueLerpContext_UpdateFX32(ValueLerpContext *param0);
void AngleLerpContext_InitCos(ValueLerpContext *param0, u16 param1, u16 param2, fx32 param3, u32 param4);
BOOL AngleLerpContext_UpdateCos(ValueLerpContext *param0);
void ScaleLerpContext_Init(XYTransformContext *param0, s16 param1, s16 param2, s16 param3, u32 param4);
BOOL ScaleLerpContext_Update(XYTransformContext *param0);
void ScaleLerpContext_InitXY(XYTransformContext *param0, s16 param1, s16 param2, s16 param3, s16 param4, s16 param5, u32 param6);
BOOL ScaleLerpContext_UpdateXY(XYTransformContext *param0);
void BattleAnimUtil_ConvertRelativeToAffineScale(XYTransformContext *param0, f32 *param1, f32 *param2);
s16 BattleAnimUtil_GetGroundAnchoredScaleOffset(s16 param0, int param1, fx32 param2);
void BattleAnimUtil_SetPokemonSpriteAnchoredPosition(PokemonSprite *param0, s16 param1, s16 param2, fx32 param3, enum BattleAnimAnchorType param4);
void BattleAnimUtil_SetSpriteAnchoredPosition(ManagedSprite *param0, s16 param1, s16 param2, fx32 param3, enum BattleAnimAnchorType param4);
BOOL ov12_022260A8(XYTransformContext *param0, ManagedSprite *param1);
BOOL ov12_022260C8(XYTransformContext *param0, PokemonSprite *param1);
BOOL ov12_022260E8(XYTransformContext *param0, PokemonSprite *param1);
void ShakeContext_Init(XYTransformContext *ctx, s16 extentX, s16 extentY, u32 interval, u32 amount);
BOOL ShakeContext_Update(XYTransformContext *param0);
BOOL ov12_0222619C(XYTransformContext *param0, s16 param1, s16 param2, PokemonSprite *param3);
void Afterimage_Init(AfterimageContext *ctx, XYTransformContext *transformCtx, XYTransformFunc transformFunc, s16 x, s16 y, u16 delay, u8 count, u8 mode, ManagedSprite *sprite0, ManagedSprite *sprite1, ManagedSprite *sprite2, ManagedSprite *sprite3);
BOOL Afterimage_Update(AfterimageContext *param0);
void RevolutionContext_InitOvalRevolutions(XYTransformContext *param0, int param1, int param2);
void AlphaFadeContext_Init(AlphaFadeContext *param0, s16 param1, s16 param2, s16 param3, s16 param4, int param5);
BOOL AlphaFadeContext_IsDone(const AlphaFadeContext *param0);
UnkStruct_ov12_02226504 *ov12_02226544(u32 param0, u32 param1, enum HeapId heapID);
void ov12_022265C0(UnkStruct_ov12_02226504 *param0);
void *ov12_022265E4(const UnkStruct_ov12_02226504 *param0);
void ov12_022265F8(UnkStruct_ov12_02226504 *param0);
BgScrollContext *BgScrollContext_New(u8 param0, u8 param1, u16 param2, fx32 param3, s16 param4, u32 param5, u32 param6, u32 param7, enum HeapId heapID);
void BgScrollContext_Free(BgScrollContext *param0);
void *BgScrollContext_GetWriteBuffer(const BgScrollContext *param0);
void BgScrollContext_Stop(BgScrollContext *param0);
u32 BattleAnimUtil_MakeBgOffsetValue(u16 param0, u16 param1);
u32 BattleAnimUtil_GetHOffsetRegisterForBg(int param0);
void ov12_02226728(s16 param0, s16 param1, s16 param2, s16 param3, s16 *param4, s16 *param5);
void ov12_02226744(s16 param0, s16 param1, s16 param2, s16 param3, fx32 *param4);
void ov12_0222676C(s16 param0, s16 param1, s16 param2, s16 param3, u16 *param4);
BOOL ov12_022267A8(int *param0, int param1, s32 param2);
BOOL ov12_02226848(UnkStruct_ov12_022267D4 *param0);
void ov12_02226858(UnkStruct_ov12_022267D4 *param0);
UnkStruct_ov12_022267D4 *ov12_02226870(PaletteData *param0, int heapID, int param2, u16 param3, u16 param4, s8 param5, s8 param6, u8 param7, u8 param8, u16 param9, int param10);
void ov12_02226924(BattleAnimSystem *param0);
void ov12_02226954(BattleAnimSystem *param0);

#endif // POKEPLATINUM_OV12_02225864_H
