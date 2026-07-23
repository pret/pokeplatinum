#ifndef POKEPLATINUM_UNK_0202FF4C_H
#define POKEPLATINUM_UNK_0202FF4C_H

#include "struct_defs/struct_0202FF58.h"

#include "savedata.h"

#define FACTORY_SAVE_STREAK_FLAGS 10

typedef struct BattleFactoryStreakFlags {
    u8 streakActiveFlags;
    u8 unused[3];
} BattleFactoryStreakFlags;

void sub_0202FF4C(UnkStruct_0202FF58 *param0);
UnkStruct_0202FF58 *sub_0202FF58(SaveData *saveData);
BOOL sub_0202FF68(UnkStruct_0202FF58 *param0);
void sub_0202FF70(UnkStruct_0202FF58 *param0, BOOL param1);
void sub_0202FF84(UnkStruct_0202FF58 *param0, u8 field, u8 index, const void *value);
u32 sub_02030030(UnkStruct_0202FF58 *param0, u8 field, u8 index, void *unused);
void BattleFactoryStreakFlags_Init(BattleFactoryStreakFlags *flags);
void BattleFactoryStreakFlags_SetFlag(BattleFactoryStreakFlags *flags, u8 field, u8 challengeType, u8 *value);
u32 BattleFactoryStreakFlags_GetFlag(BattleFactoryStreakFlags *flags, u8 field, u8 challengeType, void *unused);
BattleFactoryStreakFlags *BattleFactoryStreakFlags_Get(SaveData *saveData);

#endif // POKEPLATINUM_UNK_0202FF4C_H
