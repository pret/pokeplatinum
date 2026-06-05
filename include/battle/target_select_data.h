#ifndef POKEPLATINUM_BATTLE_TARGET_SELECT_DATA_H
#define POKEPLATINUM_BATTLE_TARGET_SELECT_DATA_H

#include "battle/target_mon_data.h"

#include "constants/battle.h"

typedef struct TargetSelectData {
    TargetMonData targetMonData[MAX_BATTLERS];
    u8 battlerType;
    u8 targetingLayout;
} TargetSelectData;

#endif // POKEPLATINUM_BATTLE_TARGET_SELECT_DATA_H
