#ifndef POKEPLATINUM_OV12_02226998_H
#define POKEPLATINUM_OV12_02226998_H

#include "overlay012/funcptr_ov12_02239E68.h"
#include "overlay012/funcptr_ov12_02239EEC.h"

typedef void (*BattleAnimScriptFunc)(BattleAnimSystem *system);

enum BattleAnimScriptFuncID {
    BATTLE_ANIM_SCRIPT_FUNC_NOOP = 0,
};

BattleAnimScriptFunc BattleAnimScript_GetFunc(enum BattleAnimScriptFuncID param0);
BattleAnimScriptSpriteFunc BattleAnimScript_GetSpriteFunc(u32 param0);

#endif // POKEPLATINUM_OV12_02226998_H
