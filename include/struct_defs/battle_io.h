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

#endif // POKEPLATINUM_STRUCT_BATTLE_IO_H
