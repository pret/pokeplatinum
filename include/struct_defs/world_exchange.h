#ifndef POKEPLATINUM_STRUCT_WORLD_EXCHANGE_TRAINER_H
#define POKEPLATINUM_STRUCT_WORLD_EXCHANGE_TRAINER_H

#include "constants/string.h"

typedef struct WorldExchangeTrainer {
    u8 gameCode;
    u8 language;
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

enum WorldExchangeValidationError {
    WE_VALIDATION_ERROR_VALID,
    WE_VALIDATION_ERROR_FAILED_1,
    WE_VALIDATION_ERROR_FAILED_2,
};

enum WorldExchangeSystemError {
    WE_SYSTEM_ERROR_NONE,
    WE_SYSTEM_ERROR_DWC_1,
    WE_SYSTEM_ERROR_DWC_2,
    WE_SYSTEM_ERROR_DWC_3,
};

typedef struct WorldExchangeTrainerError {
    u32 validationError;
    u32 systemError;
} WorldExchangeTrainerError;

#endif // POKEPLATINUM_STRUCT_WORLD_EXCHANGE_TRAINER_H
