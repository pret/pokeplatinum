#ifndef POKEPLATINUM_OV12_022346A4_H
#define POKEPLATINUM_OV12_022346A4_H

#include "battle_anim/battle_anim_system.h"

#include "sprite_system.h"

void BattleAnimSpriteFunc_Sleep(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);
void BattleAnimSpriteFunc_Freeze(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);
void BattleAnimSpriteFunc_Burn(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);
void BattleAnimSpriteFunc_ConfusionStatus(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);

#endif // POKEPLATINUM_OV12_022346A4_H
