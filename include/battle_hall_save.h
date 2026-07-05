#ifndef POKEPLATINUM_BATTLE_HALL_SAVE_H
#define POKEPLATINUM_BATTLE_HALL_SAVE_H

#include "constants/battle_frontier.h"

#include "savedata.h"

#define HALL_SAVE_CHALLENGE_TYPE  0
#define HALL_SAVE_CURRENT_BATTLE  1
#define HALL_SAVE_TRAINER_IDS     2
#define HALL_SAVE_PARTY_SLOTS     3
#define HALL_SAVE_POKEMON_INDICES 4
#define HALL_SAVE_STREAK_FLAGS    5

typedef struct BattleHallSave {
    u8 challengeType : 3;
    u8 didSave : 1;
    u8 currentBattleNum;
    u8 partySlots[2];
    u16 trainerIDs[HALL_BATTLES_PER_ROUND * 2];
    u16 monIndices[HALL_BATTLES_PER_ROUND * 2];
} BattleHallSave;

typedef struct BattleHallStreakFlags {
    u8 streakActiveFlags;
    u8 unused[3];
} BattleHallStreakFlags;

void BattleHallSave_Init(BattleHallSave *challenge);
BattleHallSave *BattleHallSave_Get(SaveData *saveData);
BOOL BattleHallSave_HasSaved(BattleHallSave *save);
void BattleHallSave_RecordSave(BattleHallSave *save, BOOL didSave);
void BattleHallSave_SetMember(BattleHallSave *save, u8 field, u8 index, u8 unused, void *value);
u32 BattleHallSave_GetMember(BattleHallSave *save, u8 field, u8 index, u8 unused, void *unused2);
u8 BattleHall_GetRankOfType(u8 idx, u8 *typeRanks);
void BattleHall_SetRankOfType(u8 pokemonType, u8 *typeRanks, u8 value);
void BattleHall_ResetRankOfAllTypes(u8 *typeRanks);
void BattleHallStreakFlags_Init(BattleHallStreakFlags *flags);
BattleHallStreakFlags *BattleHallStreakFlags_Get(SaveData *saveData);
void BattleHallStreakFlags_SetFlag(BattleHallStreakFlags *flags, u8 field, u8 challengeType, u8 unused, u8 *value);
u32 BattleHallStreakFlags_GetFlag(BattleHallStreakFlags *flags, u8 field, u8 challengeType, u8 unused, void *unused2);

#endif // POKEPLATINUM_BATTLE_HALL_SAVE_H
