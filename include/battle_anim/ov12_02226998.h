#ifndef POKEPLATINUM_OV12_02226998_H
#define POKEPLATINUM_OV12_02226998_H

#include "sprite_system.h"

struct BattleAnimSystem;

typedef void (*BattleAnimScriptFunc)(struct BattleAnimSystem *system);
typedef void (*BattleAnimScriptSpriteFunc)(struct BattleAnimSystem *, SpriteSystem *, SpriteManager *, ManagedSprite *);

BattleAnimScriptFunc BattleAnimScript_GetFunc(u32 id);
BattleAnimScriptSpriteFunc BattleAnimScript_GetSpriteFunc(u32 id);

#endif // POKEPLATINUM_OV12_02226998_H
