#ifndef POKEPLATINUM_BATTLE_TARGET_SELECT_DATA_H
#define POKEPLATINUM_BATTLE_TARGET_SELECT_DATA_H

#include "constants/battle.h"

#include "battle/target_mon_data.h"

typedef struct TargetSelectData {
    TargetMonData targetMonData[MAX_BATTLERS];
    u8 battlerType;
    u8 targetingLayout;
} TargetSelectData;

#endif // POKEPLATINUM_BATTLE_TARGET_SELECT_DATA_H
