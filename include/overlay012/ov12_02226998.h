#ifndef POKEPLATINUM_OV12_02226998_H
#define POKEPLATINUM_OV12_02226998_H

#include "sprite_system.h"

struct BattleAnimSystem;

typedef void (*BattleAnimScriptFunc)(struct BattleAnimSystem *system);
typedef void (*BattleAnimScriptSpriteFunc)(struct BattleAnimSystem *, SpriteSystem *, SpriteManager *, ManagedSprite *);

enum BattleAnimScriptFuncID {
    BATTLE_ANIM_SCRIPT_FUNC_NOOP = 0,
};

BattleAnimScriptFunc BattleAnimScript_GetFunc(enum BattleAnimScriptFuncID param0);
BattleAnimScriptSpriteFunc BattleAnimScript_GetSpriteFunc(u32 param0);

#endif // POKEPLATINUM_OV12_02226998_H
