#ifndef POKEPLATINUM_STRUCT_WORLD_EXCHANGE_TRAINER_ERROR_H
#define POKEPLATINUM_STRUCT_WORLD_EXCHANGE_TRAINER_ERROR_H

// validationError and systemError values come from Nintendo's closed API;
// the exact semantics are not documented.

typedef struct WorldExchangeTrainerError {
    u32 validationError;
    u32 systemError;
} WorldExchangeTrainerError;

#endif // POKEPLATINUM_STRUCT_WORLD_EXCHANGE_TRAINER_ERROR_H
