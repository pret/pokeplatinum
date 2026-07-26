#ifndef POKEPLATINUM_BATTLE_ARCADE_SAVE_H
#define POKEPLATINUM_BATTLE_ARCADE_SAVE_H

#include "savedata.h"

#define ARCADE_SAVE_CHALLENGE_TYPE    0
#define ARCADE_SAVE_CURSOR_RANDOMIZED 1
#define ARCADE_SAVE_CURRENT_BATTLE    2
#define ARCADE_SAVE_ROULETTE_SPEED    3
#define ARCADE_SAVE_HELD_ITEMS        4
#define ARCADE_SAVE_TRAINER_IDS       5
#define ARCADE_SAVE_PARTY_SLOTS       6
#define ARCADE_SAVE_MON_SET_IDS       7
#define ARCADE_SAVE_STREAK_FLAGS      8

typedef struct BattleArcadeSave {
    u8 challengeType : 3;
    u8 didSave : 1;
    u8 cursorRandomized : 1;
    u8 currentBattle;
    u8 rouletteSpeed;
    u8 partySlots[3];
    u16 heldItems[4];
    u16 trainerIDs[14];
    u16 monSetIDs[14];
    u16 unused;
} BattleArcadeSave;

typedef struct BattleArcadeStreakFlags {
    u8 streakActiveFlags;
    u8 unused[3];
} BattleArcadeStreakFlags;

void BattleArcadeSave_Init(BattleArcadeSave *arcadeSave);
BattleArcadeSave *BattleArcadeSave_Get(SaveData *saveData);
BOOL BattleArcadeSave_HasSaved(BattleArcadeSave *save);
void BattleArcadeSave_RecordSave(BattleArcadeSave *save, BOOL didSave);
void BattleArcadeSave_SetMember(BattleArcadeSave *save, u8 field, u8 index, u8 unused, const void *value);
u32 BattleArcadeSave_GetMember(BattleArcadeSave *save, u8 field, u8 index, u8 unused, void *unused2);
void BattleArcadeStreakFlags_Init(BattleArcadeStreakFlags *flags);
BattleArcadeStreakFlags *BattleArcadeStreakFlags_Get(SaveData *saveData);
void BattleArcadeStreakFlags_SetFlag(BattleArcadeStreakFlags *flags, u8 field, u8 challengeType, u8 unused, const void *value);
u32 BattleArcadeStreakFlags_GetFlag(BattleArcadeStreakFlags *flags, u8 field, u8 challengeType, u8 unused, void *unused2);

#endif // POKEPLATINUM_BATTLE_ARCADE_SAVE_H
