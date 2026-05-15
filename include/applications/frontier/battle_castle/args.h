#ifndef POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_ARGS_H
#define POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_ARGS_H

#include "party.h"
#include "savedata.h"

typedef struct BattleCastleAppArgs {
    SaveData *saveData;
    u8 challengeType;
    u8 unused[3];
    u8 identityUnlocked[4];
    u8 levelAdjustmentUnlocked[4];
    u8 statsUnlocked[4];
    u8 movesUnlocked[4];
    Party *party;
    Party *opponentsParty;
    u16 selectedMonSlot;
    u8 padding[2];
    void *battleCastle;
    u16 partnersCP;
    u8 padding2[6];
} BattleCastleAppArgs;

#endif // POKEPLATINUM_APPLICATIONS_BATTLE_CASTLE_ARGS_H
