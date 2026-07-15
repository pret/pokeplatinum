#ifndef POKEPLATINUM_BATTLE_CASTLE_SAVE_H
#define POKEPLATINUM_BATTLE_CASTLE_SAVE_H

#include "savedata.h"

#define CASTLE_SAVE_CHALLENGE_TYPE   0
#define CASTLE_SAVE_CURRENT_BATTLE   1
#define CASTLE_SAVE_MON_HP           2
#define CASTLE_SAVE_MON_PP           3
#define CASTLE_SAVE_MON_STATUS       4
#define CASTLE_SAVE_HELD_ITEMS       5
#define CASTLE_SAVE_TRAINER_IDS      6
#define CASTLE_SAVE_PARTY_SLOTS      7
#define CASTLE_SAVE_MON_SET_IDS      8
#define CASTLE_SAVE_STREAK_FLAGS     9
#define CASTLE_SAVE_HAVE_HEARD_INTRO 10

typedef struct BattleCastleSave {
    u8 challengeType : 3;
    u8 didSave : 1;
    u8 unk_00_4 : 4;
    u8 currentBattleNum;
    u8 unk_02;
    u8 partySlots[3];
    u16 trainerIDs[14];
    u16 monHP[4];
    u8 monPP[4][4];
    u32 monStatus[4];
    u16 heldItems[4];
    u16 monSetIDs[14];
    u16 unk_70;
} BattleCastleSave;

typedef struct UnkStruct_0203041C_t {
    u8 streakActiveFlags;
    u8 haveHeardIntro;
    u8 unk_02[2];
} BattleCastlePersistentSave;

void BattleCastleSave_Init(BattleCastleSave *castleSave);
BattleCastleSave *BattleCastleSave_Get(SaveData *saveData);
BOOL BattleCastleSave_HasSaved(BattleCastleSave *save);
void BattleCastleSave_RecordSave(BattleCastleSave *save, BOOL didSave);
void BattleCastleSave_SetMember(BattleCastleSave *save, u8 field, u8 index, u8 index2, void *value);
u32 BattleCastleSave_GetMember(BattleCastleSave *svae, u8 field, u8 index, u8 unused, void *unused2);
void BattleCastlePersistentSave_Init(BattleCastlePersistentSave *save);
BattleCastlePersistentSave *BattleCastlePersistentSave_Get(SaveData *saveData);
void BattleCastlePersistentSave_SetFlag(BattleCastlePersistentSave *save, u8 field, u8 challengeType, u8 unused, u8 *value);
u32 BattleCastlePersistentSave_GetFlag(BattleCastlePersistentSave *save, u8 field, u8 challengeType, u8 unused, void *unused2);

#endif // POKEPLATINUM_BATTLE_CASTLE_SAVE_H
