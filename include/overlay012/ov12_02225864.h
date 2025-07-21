#ifndef POKEPLATINUM_OV12_02225864_H
#define POKEPLATINUM_OV12_02225864_H

#include "overlay012/battle_anim_system.h"
#include "overlay012/funcptr_ov12_02226274.h"
#include "overlay012/struct_ov12_02226504_decl.h"
#include "overlay012/struct_ov12_0222660C_decl.h"
#include "overlay012/struct_ov12_022267D4_decl.h"

#include "palette.h"
#include "pokemon_sprite.h"
#include "sprite.h"

enum BattleAnimPositionType {
    BATTLE_ANIM_POSITION_MON_X = 0,
    BATTLE_ANIM_POSITION_MON_Y,
    BATTLE_ANIM_POSITION_PARTICLE_X,
    BATTLE_ANIM_POSITION_PARTICLE_Y,
};

typedef struct AngleLerpContext {
    s32 angle;
    s32 data[4];
} AngleLerpContext;

enum XYTransformParam {
    XY_PARAM_STEPS = 0,
    XY_PARAM_STEP_SIZE,
    XY_PARAM_02,
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
};

typedef struct XYTransformContext {
    s16 x;
    s16 y;
    s32 data[8];
} XYTransformContext;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    XYTransformContext unk_04[4];
    UnkFuncPtr_ov12_02226274 unk_94;
    ManagedSprite *unk_98[4];
    u16 unk_A8;
    u16 unk_AA;
    u8 unk_AC;
    u8 unk_AD;
    u8 unk_AE;
    u8 unk_AF;
} UnkStruct_ov12_02226274;

typedef struct {
    XYTransformContext unk_00;
    int unk_24;
} UnkStruct_ov12_02226454;

void ov12_02225864(int param0, int param1, s16 *param2, s16 *param3);
void ov12_02225898(BattleAnimSystem *param0, int param1, s16 *param2, s16 *param3);
s16 BattleAnimUtil_GetBattlerPos(BattleAnimSystem *param0, int param1, enum BattleAnimPositionType param2);
u8 ov12_02225950(ManagedSprite *param0);
int BattleAnimMath_GetRotationDirection(BattleAnimSystem *param0, int param1);
int ov12_0222598C(BattleAnimSystem *param0, int param1);
fx32 BattleAnimMath_GetStepSize(fx32 param0, fx32 param1, u32 param2);
u32 ov12_022259AC(fx32 param0, fx32 param1, fx32 param2);
void ov12_022259DC(XYTransformContext *param0, ManagedSprite *param1, s16 param2, s16 param3);
void ov12_022259FC(XYTransformContext *param0, ManagedSprite *param1);
void ov12_02225A18(XYTransformContext *param0, PokemonSprite *param1, s16 param2, s16 param3);
void ov12_02225A3C(XYTransformContext *param0, PokemonSprite *param1);
void ov12_02225A5C(XYTransformContext *param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, int param7);
void ov12_02225A8C(XYTransformContext *param0, u16 param1, u16 param2, u16 param3, u16 param4, fx32 param5, fx32 param6, u16 param7);
BOOL ov12_02225AE0(XYTransformContext *param0);
BOOL ov12_02225B78(XYTransformContext *param0, s16 param1, s16 param2, ManagedSprite *param3);
BOOL ov12_02225BA0(XYTransformContext *param0, s16 param1, s16 param2, PokemonSprite *param3);
void ov12_02225BC8(XYTransformContext *param0, s16 param1, s16 param2, s16 param3, s16 param4, u16 param5);
BOOL ov12_02225C14(XYTransformContext *param0);
BOOL ov12_02225C50(XYTransformContext *param0, ManagedSprite *param1);
BOOL ov12_02225C74(XYTransformContext *param0, PokemonSprite *param1);
void ov12_02225C98(XYTransformContext *param0, XYTransformContext *param1, s16 param2, s16 param3, s16 param4, s16 param5, u16 param6, fx32 param7);
BOOL ov12_02225CE4(XYTransformContext *param0, XYTransformContext *param1);
BOOL ov12_02225D2C(XYTransformContext *param0, XYTransformContext *param1, ManagedSprite *param2);
void AngleLerpContext_Init(AngleLerpContext *param0, s32 param1, s32 param2, u32 param3);
void AngleLerpContext_InitFX32(AngleLerpContext *param0, s16 param1, s16 param2, u32 param3); // Uses FX32 internally
BOOL AngleLerpContext_Update(AngleLerpContext *param0);
BOOL AngleLerpContext_UpdateFX32(AngleLerpContext *param0);
void AngleLerpContext_InitCos(AngleLerpContext *param0, u16 param1, u16 param2, fx32 param3, u32 param4);
BOOL AngleLerpContext_UpdateCos(AngleLerpContext *param0);
void ScaleLerpContext_Init(XYTransformContext *param0, s16 param1, s16 param2, s16 param3, u32 param4);
BOOL ScaleLerpContext_Update(XYTransformContext *param0);
void ov12_02225EF0(XYTransformContext *param0, s16 param1, s16 param2, s16 param3, s16 param4, s16 param5, u32 param6);
BOOL ov12_02225F6C(XYTransformContext *param0);
void ov12_02225FA4(XYTransformContext *param0, f32 *param1, f32 *param2);
s16 BattleAnimUtil_GetGroundAnchoredScaleOffset(s16 param0, int param1, fx32 param2);
void ov12_02226024(PokemonSprite *param0, s16 param1, s16 param2, fx32 param3, int param4);
void ov12_0222605C(ManagedSprite *param0, s16 param1, s16 param2, fx32 param3, int param4);
BOOL ov12_022260A8(XYTransformContext *param0, ManagedSprite *param1);
BOOL ov12_022260C8(XYTransformContext *param0, PokemonSprite *param1);
BOOL ov12_022260E8(XYTransformContext *param0, PokemonSprite *param1);
void ShakeContext_Init(XYTransformContext *ctx, s16 extentX, s16 extentY, u32 interval, u32 amount);
BOOL ShakeContext_Update(XYTransformContext *param0);
BOOL ov12_0222619C(XYTransformContext *param0, s16 param1, s16 param2, PokemonSprite *param3);
void ov12_022261C4(UnkStruct_ov12_02226274 *param0, XYTransformContext *param1, UnkFuncPtr_ov12_02226274 param2, s16 param3, s16 param4, u16 param5, u8 param6, u8 param7, ManagedSprite *param8, ManagedSprite *param9, ManagedSprite *param10, ManagedSprite *param11);
BOOL ov12_02226274(UnkStruct_ov12_02226274 *param0);
void ov12_022263A4(XYTransformContext *param0, int param1, int param2);
void ov12_02226424(UnkStruct_ov12_02226454 *param0, s16 param1, s16 param2, s16 param3, s16 param4, int param5);
BOOL ov12_02226454(const UnkStruct_ov12_02226454 *param0);
UnkStruct_ov12_02226504 *ov12_02226544(u32 param0, u32 param1, enum HeapId heapID);
void ov12_022265C0(UnkStruct_ov12_02226504 *param0);
void *ov12_022265E4(const UnkStruct_ov12_02226504 *param0);
void ov12_022265F8(UnkStruct_ov12_02226504 *param0);
UnkStruct_ov12_0222660C *ov12_0222662C(u8 param0, u8 param1, u16 param2, fx32 param3, s16 param4, u32 param5, u32 param6, u32 param7, int heapID);
void ov12_0222669C(UnkStruct_ov12_0222660C *param0);
void *ov12_022266C0(const UnkStruct_ov12_0222660C *param0);
void ov12_022266D4(UnkStruct_ov12_0222660C *param0);
u32 ov12_022266E8(u16 param0, u16 param1);
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
