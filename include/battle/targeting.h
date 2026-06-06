#ifndef POKEPLATINUM_BATTLE_TARGETING_H
#define POKEPLATINUM_BATTLE_TARGETING_H

#include "constants/battle.h"

typedef struct TargetMonData {
    u8 partySlot;
    u8 gender : 2;
    u8 isPresent : 1;
    u8 : 5;
    u8 stockStatus;
    u8 padding_03;
    s16 curHP;
    u16 maxHP;
} TargetMonData;

typedef struct TargetSelectData {
    TargetMonData targetMonData[MAX_BATTLERS];
    u8 battlerType;
    u8 targetingLayout;
} TargetSelectData;

#endif // POKEPLATINUM_BATTLE_TARGETING_H
