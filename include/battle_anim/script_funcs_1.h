#ifndef POKEPLATINUM_SCRIPT_FUNCS_1_H
#define POKEPLATINUM_SCRIPT_FUNCS_1_H

#include "battle_anim/battle_anim_system.h"

#include "sprite_system.h"

void BattleAnimScriptFunc_ShadowPunch(BattleAnimSystem *system);
void BattleAnimSpriteFunc_FrenzyPlant(BattleAnimSystem *system, SpriteSystem *spriteSys, SpriteManager *spriteMan, ManagedSprite *sprite);
void BattleAnimScriptFunc_RolePlay(BattleAnimSystem *system);
void BattleAnimScriptFunc_Snatch(BattleAnimSystem *system);
void BattleAnimScriptFunc_Sketch(BattleAnimSystem *system);

#endif // POKEPLATINUM_SCRIPT_FUNCS_1_H
