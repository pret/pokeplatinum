#ifndef POKEPLATINUM_STRUCT_BATTLE_IO_H
#define POKEPLATINUM_STRUCT_BATTLE_IO_H

#include "constants/pokemon.h"

enum PartyGaugeBallStatus {
    BALL_STATUS_NO_MON = 0,
    BALL_STATUS_MON_ALIVE,
    BALL_STATUS_MON_FAINTED,
    BALL_STATUS_HAS_STATUS_CONDITION,
};

typedef struct PartyGaugeData {
    u8 command;
    u8 padding_01;

    u8 status[MAX_PARTY_SIZE];
} PartyGaugeData;

typedef struct HealthbarData {
    u8 command;
    u8 level;
    s16 curHP;
    u16 maxHP;
    u8 selectedPartySlot;
    u8 status : 5;
    u8 gender : 2;
    u8 speciesCaught : 1;
    u32 expFromLastLevel;
    u32 expToNextLevel;
    int numSafariBalls;
    u8 delay;
} HealthbarData;

#endif // POKEPLATINUM_STRUCT_BATTLE_IO_H
