#ifndef POKEPLATINUM_SCRIPT_FUNCS_4_H
#define POKEPLATINUM_SCRIPT_FUNCS_4_H

#include "battle_anim/battle_anim_system.h"

#include "sprite_system.h"

void BattleAnimSpriteFunc_Taunt(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);
void BattleAnimSpriteFunc_HelpingHand(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);
void BattleAnimSpriteFunc_Assist(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);
void BattleAnimScriptFunc_Camouflage(BattleAnimSystem *system);
void BattleAnimUtil_TickSpriteIfVisible(ManagedSprite *sprite);
void BattleAnimSpriteFunc_MetalClaw(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);
void BattleAnimSpriteFunc_Ingrain(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);

#endif // POKEPLATINUM_SCRIPT_FUNCS_4_H
