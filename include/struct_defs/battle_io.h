#ifndef POKEPLATINUM_STRUCT_BATTLE_IO_H
#define POKEPLATINUM_STRUCT_BATTLE_IO_H

#include "constants/pokemon.h"

typedef struct PartyGaugeData {
    u8 command;
    u8 padding_01;

    u8 status[MAX_PARTY_SIZE];
} PartyGaugeData;

#endif // POKEPLATINUM_STRUCT_BATTLE_IO_H
