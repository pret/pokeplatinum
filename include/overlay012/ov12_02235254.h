#ifndef POKEPLATINUM_OV12_02235254_H
#define POKEPLATINUM_OV12_02235254_H

#include <nitro/fx/fx.h>

#include "generated/battle_script_battlers.h"

#include "overlay012/battle_anim_system.h"

#include "math_util.h"
#include "pokemon_sprite.h"
#include "sprite.h"

#define BATTLE_ANIM_DEFAULT_ALPHA        -1
#define BATTLE_ANIM_DEFAULT_SPRITE_ALPHA 26
#define BATTLE_ANIM_DEFAULT_BG_ALPHA     5

enum BattleAnimWindow {
    BATTLE_ANIM_WINDOW_0 = 0,
    BATTLE_ANIM_WINDOW_1,
};

typedef struct BattleAnimScriptFuncCommon {
    u8 state;
    u8 counter1; // General purpose counters
    u8 counter2;
    u8 unk_03;
    BattleAnimSystem *battleAnimSystem;
    SpriteSystem *spriteSystem;
    SpriteManager *pokemonSpriteManager;
    SpriteManager *primarySpriteManager;
    BgConfig *bgConfig;
    PaletteData *paletteData;
} BattleAnimScriptFuncCommon;

typedef struct BattleAnimSpriteInfo {
    Point2D basePos;
    Point2D pos;
    PokemonSprite *monSprite;
    ManagedSprite *hwSprite;
    int battler;
} BattleAnimSpriteInfo;

int BattleAnimUtil_GetBattlerType(BattleAnimSystem *param0, int param1);
enum Battler BattleAnimUtil_GetBattlerSide(BattleAnimSystem *param0, int param1);
int BattleAnimUtil_GetBattlerOfType(BattleAnimSystem *param0, int param1);
int BattleAnimUtil_GetAlliedBattler(BattleAnimSystem *param0, int param1);
int BattleAnimUtil_GetOpposingBattlerType(int param0);
void BattleAnimUtil_GetBattlerTypeDefaultPos(int param0, BOOL param1, Point2D *param2);
void BattleAnimUtil_GetBattlerDefaultPos(BattleAnimSystem *param0, int param1, Point2D *param2);
void BattleAnimUtil_GetBattlerTypeWorldPos_Normal(int param0, VecFx32 *param1, BOOL isContest, enum CameraProjection projection);
void ov12_02235458(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235468(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235478(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235488(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235498(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354A8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354B8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354C8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354D8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354E8(int param0, VecFx32 *param1, int param2, int param3);
void ov12_022354F8(int param0, VecFx32 *param1, int param2, int param3);
void BattleAnimUtil_GetBattlerWorldPos_Normal(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235538(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235568(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235598(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_022355C8(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_022355F8(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235628(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235658(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235688(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_022356B8(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_022356E8(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235718(BattleAnimSystem *param0, int param1, VecFx32 *param2);
void ov12_02235748(VecFx32 *param0);
void ov12_02235758(int param0, VecFx32 *param1, int param2, int param3);
void ov12_02235760(int param0, VecFx32 *param1);
void BattleAnimUtil_SetSpriteBgBlending(BattleAnimSystem *param0, int param1, int param2);
void BattleAnimUtil_SetSpriteBlending(BattleAnimSystem *param0, int param1, int param2, int param3);
void BattleAnimUtil_SetEffectBaseBgBlending(BattleAnimSystem *param0, int param1, int param2);
void BattleAnimUtil_SetBackgroundWindowMask(BattleAnimSystem *param0, enum BattleAnimWindow param1, BOOL applyEffects);
void BattleAnimUtil_GetMonSpritePos(PokemonSprite *param0, Point2D *param1);
void BattleAnimUtil_GetSpritePos(ManagedSprite *param0, Point2D *param1);
void BattleAnimSystem_GetCommonData(BattleAnimSystem *param0, BattleAnimScriptFuncCommon *param1);
void BattleAnimUtil_GetBattlerSprites(BattleAnimSystem *param0, int param1, BattleAnimSpriteInfo *param2, int *param3);
void BattleAnimUtil_GetPokemonSprites(BattleAnimSystem *param0, int param1, BattleAnimSpriteInfo *param2, int *param3);
void *BattleAnimUtil_Alloc(BattleAnimSystem *param0, int param1);
void BattleAnimUtil_Free(void *param0);

static inline BOOL BattleAnimUtil_IsMaskSet(int value, int mask)
{
    if ((value & mask) == mask) {
        return TRUE;
    }

    return FALSE;
}

#endif // POKEPLATINUM_OV12_02235254_H
