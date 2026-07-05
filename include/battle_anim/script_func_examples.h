#ifndef POKEPLATINUM_SCRIPT_FUNC_EXAMPLES_H
#define POKEPLATINUM_SCRIPT_FUNC_EXAMPLES_H

#include "battle_anim/battle_anim_system.h"

#include "sprite_system.h"

void BattleAnimScriptFunc_Nop(BattleAnimSystem *system);
void BattleAnimScriptFunc_AnimExample(BattleAnimSystem *system);
void BattleAnimScriptFunc_SoundExample(BattleAnimSystem *system);
void BattleAnimScriptFunc_GenericExample(BattleAnimSystem *system);
void BattleAnimScriptFunc_SpriteExample(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteManager, ManagedSprite *managedSprite);

#endif // POKEPLATINUM_SCRIPT_FUNC_EXAMPLES_H
