#ifndef POKEPLATINUM_STRUCT_0202D060_H
#define POKEPLATINUM_STRUCT_0202D060_H

#include "constants/battle_tower.h"

#include "struct_defs/struct_0204B404.h"

typedef struct WifiBattleTowerSave_t {
    u8 unk_00_0 : 1;
    u8 isInProgress : 1;
    u8 challengeMode : 3;
    u8 partnerID : 3;
    u8 unused_01;
    u8 nextOpponentNum;
    u8 unk_03;
    u16 unk_04;
    u16 unk_06;
    u8 partySlots[4];
    u16 trainerIDs[BT_OPPONENTS_COUNT * 2];
    u32 rngSeed;
    UnkStruct_0204B404 unk_2C;
} WifiBattleTowerSave;

#endif // POKEPLATINUM_STRUCT_0202D060_H
