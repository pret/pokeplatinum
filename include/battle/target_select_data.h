#ifndef POKEPLATINUM_STRUCT_TARGET_SELECT_DATA_H
#define POKEPLATINUM_STRUCT_TARGET_SELECT_DATA_H

#include "battle/struct_ov16_0225C29C_sub1.h"

typedef struct TargetSelectData {
    UnkStruct_ov16_0225C29C_sub1 targetMonData[4];
    u8 battlerType;
    u8 targetingLayout;
} TargetSelectData;

#endif // POKEPLATINUM_STRUCT_TARGET_SELECT_DATA_H
