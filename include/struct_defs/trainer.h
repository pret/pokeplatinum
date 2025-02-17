#ifndef POKEPLATINUM_STRUCT_TRAINER_H
#define POKEPLATINUM_STRUCT_TRAINER_H

#include "constants/string.h"

#include "struct_defs/sentence.h"
#include "struct_defs/trainer_data.h"

#include "charcode.h"

typedef struct Trainer {
    TrainerHeader header;

    charcode_t name[TRAINER_NAME_LEN + 1];
    Sentence winMsg;
    Sentence loseMsg;
} Trainer;

#endif // POKEPLATINUM_STRUCT_TRAINER_H
