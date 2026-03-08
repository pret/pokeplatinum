#ifndef POKEPLATINUM_STRUCT_MOVE_ANIMATION_H
#define POKEPLATINUM_STRUCT_MOVE_ANIMATION_H

#include "constants/battle.h"

typedef struct {
    u8 command;
    u8 unk_01;
    u16 move;
    s32 damage;
    u16 power;
    u16 effectChance;
    u16 friendship;
    u16 isSubstitute : 1;
    u16 isTransformed : 1;
    u16 : 14;
    u32 fieldConditions;
    u16 attacker;
    u16 defender;
    u16 species[MAX_BATTLERS];
    u8 genders[MAX_BATTLERS];
    u8 isShiny[MAX_BATTLERS];
    u8 formNums[MAX_BATTLERS];
    u32 personalities[MAX_BATTLERS];
    u32 moveEffectMasks[MAX_BATTLERS];
    int unk_4C;
    int unk_50;
    int terrain;
} MoveAnimation;

#endif // POKEPLATINUM_STRUCT_MOVE_ANIMATION_H
