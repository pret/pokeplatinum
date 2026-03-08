#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_ARCADE_SPRITES_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_ARCADE_SPRITES_H

#include "applications/frontier/battle_arcade/sprite_manager.h"

typedef struct BattleArcadeAppSprite {
    u32 unk_00;
    u32 unk_04;
    u16 unk_08;
    u8 unk_0A;
    u8 onSubScreen;
    u16 x;
    u16 y;
    Sprite *sprite;
} BattleArcadeAppSprite;

BattleArcadeAppSprite *BattleArcadeAppSprite_New(BattleArcadeAppSpriteManager *spriteMan, u32 charResourceID, u32 plttResourceID, u32 cellResourceID, u32 animID, u16 x, u16 y, u32 priority, int resourcePriority, u8 onSubScreen);
void *BattleArcadeAppSprite_Free(BattleArcadeAppSprite *sprite);
void BattleArcadeAppSprite_SetDrawFlag(BattleArcadeAppSprite *app, BOOL draw);
void BattleArcadeAppSprite_SetPosition(BattleArcadeAppSprite *sprite, u16 x, u16 y);
void BattleArcadeAppSprite_SetAnim(BattleArcadeAppSprite *sprite, u32 animID);
void BattleArcadeAppSprite_UpdatePalette(BattleArcadeAppSprite *sprite, Pokemon *mon);
void BattleArcadeAppSprite_SetAnimateFlag(BattleArcadeAppSprite *sprite, u8 animate);

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_ARCADE_SPRITES_H
