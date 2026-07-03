#ifndef POKEPLATINUM_SCRIPT_FUNCS_4_H
#define POKEPLATINUM_SCRIPT_FUNCS_4_H

#include "battle_anim/battle_anim_system.h"

#include "sprite_system.h"

void BattleAnimSpriteFunc_Taunt(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3);
void BattleAnimSpriteFunc_HelpingHand(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3);
void ov12_0222DEFC(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3);
void BattleAnimScriptFunc_Camouflage(BattleAnimSystem *system);
void BattleAnimUtil_TickSpriteIfVisible(ManagedSprite *param0);
void ov12_0222E2F8(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3);
void ov12_0222E61C(BattleAnimSystem *param0, SpriteSystem *param1, SpriteManager *param2, ManagedSprite *param3);

#endif // POKEPLATINUM_SCRIPT_FUNCS_4_H
