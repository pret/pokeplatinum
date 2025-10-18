#ifndef POKEPLATINUM_BATTLE_ANIM_UTIL_H
#define POKEPLATINUM_BATTLE_ANIM_UTIL_H

#include <nitro/fx/fx.h>

#include "generated/battle_script_battlers.h"

#include "battle_anim/battle_anim_system.h"

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
    BattleAnimSystem *battleAnimSys;
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

int BattleAnimUtil_GetBattlerType(BattleAnimSystem *system, int battler);
enum Battler BattleAnimUtil_GetBattlerSide(BattleAnimSystem *system, int battler);
int BattleAnimUtil_GetBattlerOfType(BattleAnimSystem *system, int type);
int BattleAnimUtil_GetAlliedBattler(BattleAnimSystem *system, int battler);
int BattleAnimUtil_GetOpposingBattlerType(int battler);
void BattleAnimUtil_GetBattlerTypeDefaultPos(int battler, BOOL isDoubles, Point2D *pos);
void BattleAnimUtil_GetBattlerDefaultPos(BattleAnimSystem *system, int battler, Point2D *pos);
void BattleAnimUtil_GetBattlerTypeWorldPos_Normal(int battler, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_Beam1(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_Beam2(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_Beam3(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_Hypnosis(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_TriAttack(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_HydroCannon(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_HyperVoice(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_GrassWhistle(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_DragonPulse(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_CameraLookAt(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerTypeWorldPos_HydroPump(int battlerType, VecFx32 *pos, BOOL isContest, enum CameraProjection projection);
void BattleAnimUtil_GetBattlerWorldPos_Normal(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_Beam1(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_Beam2(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_Beam3(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_Hypnosis(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_TriAttack(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_HydroCannon(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_HyperVoice(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_GrassWhistle(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_DragonPulse(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_CameraLookAt(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetBattlerWorldPos_HydroPump(BattleAnimSystem *system, int battler, VecFx32 *pos);
void BattleAnimUtil_GetParticleViewportTopPosition(VecFx32 *pos);
void ov12_02235758(int param0, VecFx32 *param1, int param2, int param3);
void BattleAnimUtil_GetUpVectorForBattler(int param0, VecFx32 *param1);
void BattleAnimUtil_SetSpriteBgBlending(BattleAnimSystem *system, int spriteAlpha, int bgAlpha);
void BattleAnimUtil_SetSpriteBlending(BattleAnimSystem *system, int planes, int spriteAlpha, int otherAlpha);
void BattleAnimUtil_SetEffectBaseBgBlending(BattleAnimSystem *system, int alphaBase, int alphaEffect);
void BattleAnimUtil_SetBackgroundWindowMask(BattleAnimSystem *system, enum BattleAnimWindow window, BOOL applyEffects);
void BattleAnimUtil_GetMonSpritePos(PokemonSprite *sprite, Point2D *pos);
void BattleAnimUtil_GetSpritePos(ManagedSprite *sprite, Point2D *pos);
void BattleAnimSystem_GetCommonData(BattleAnimSystem *system, BattleAnimScriptFuncCommon *common);
void BattleAnimUtil_GetBattlerSprites(BattleAnimSystem *system, int battler, BattleAnimSpriteInfo *sprites, int *count);
void BattleAnimUtil_GetPokemonSprites(BattleAnimSystem *system, int pokemon, BattleAnimSpriteInfo *sprites, int *count);
void *BattleAnimUtil_Alloc(BattleAnimSystem *system, int size);
void BattleAnimUtil_Free(void *ptr);

static inline BOOL BattleAnimUtil_IsMaskSet(int value, int mask)
{
    if ((value & mask) == mask) {
        return TRUE;
    }

    return FALSE;
}

#endif // POKEPLATINUM_BATTLE_ANIM_UTIL_H
