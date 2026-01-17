#ifndef POKEPLATINUM_STRUCT_WORLD_EXCHANGE_TRAINER_H
#define POKEPLATINUM_STRUCT_WORLD_EXCHANGE_TRAINER_H

#include "constants/string.h"

typedef struct WorldExchangeTrainer {
    u8 gameCode;
    u8 languageCode;
    u8 country;
    u8 unk_03;
    u32 trainerId;
    u16 trainerName[TRAINER_NAME_LEN + 1];
    u32 unk_10;
    u8 macAddress[6];
    u8 unk_1A[2];
    char email[56];
    u32 emailInitialised;
    u16 rngValue;
    u16 unk_5A;
} WorldExchangeTrainer;

#endif // POKEPLATINUM_STRUCT_WORLD_EXCHANGE_TRAINER_H
