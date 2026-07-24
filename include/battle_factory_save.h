#ifndef POKEPLATINUM_BATTLE_FACTORY_SAVE_H
#define POKEPLATINUM_BATTLE_FACTORY_SAVE_H

#include "savedata.h"

#define FACTORY_SAVE_OPEN_LEVEL 0
#define FACTORY_SAVE_CHALLENGE_TYPE 1
#define FACTORY_SAVE_CURRENT_BATTLE 2
#define FACTORY_SAVE_TRAINER_IDS 3
#define FACTORY_SAVE_PLAYER_SETS 4
#define FACTORY_SAVE_PLAYER_IVS 5
#define FACTORY_SAVE_PLAYER_PERSONALITY 6
#define FACTORY_SAVE_OPPONENT_SETS 7
#define FACTORY_SAVE_OPPONENT_IVS 8
#define FACTORY_SAVE_OPPONENT_PERSONALITY 9
#define FACTORY_SAVE_STREAK_FLAGS 10

typedef struct BattleFactoryStreakFlags {
    u8 streakActiveFlags;
    u8 unused[3];
} BattleFactoryStreakFlags;

typedef struct BattleFactorySave {
    u8 isOpenLevel: 1;
    u8 challengeType: 3;
    u8 didSave: 1;
    u8 unused: 3;
    u8 currentBattleNum;
    u16 unused2;
    u16 trainerIDs[14];
    u16 playerPartySets[4];
    u8 playerIVs[4];
    u32 playerPersonality[4];
    u16 opponentPartySets[4];
    u8 opponentIVs[4];
    u32 opponentPersonality[4];
} BattleFactorySave;

void BattleFactorySave_Init(BattleFactorySave *save);
BattleFactorySave *BattleFactorySave_Get(SaveData *saveData);
BOOL BattleFactorySave_HasSaved(BattleFactorySave *save);
void BattleFactorySave_RecordSave(BattleFactorySave *save, BOOL didSave);
void BattleFactorySave_SetMember(BattleFactorySave *save, u8 field, u8 index, const void *value);
u32 BattleFactorySave_GetMember(BattleFactorySave *save, u8 field, u8 index, void *unused);
void BattleFactoryStreakFlags_Init(BattleFactoryStreakFlags *flags);
void BattleFactoryStreakFlags_SetFlag(BattleFactoryStreakFlags *flags, u8 field, u8 challengeType, u8 *value);
u32 BattleFactoryStreakFlags_GetFlag(BattleFactoryStreakFlags *flags, u8 field, u8 challengeType, void *unused);
BattleFactoryStreakFlags *BattleFactoryStreakFlags_Get(SaveData *saveData);

#endif // POKEPLATINUM_BATTLE_FACTORY_SAVE_H
