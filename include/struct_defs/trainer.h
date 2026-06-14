#ifndef POKEPLATINUM_STRUCT_TRAINER_H
#define POKEPLATINUM_STRUCT_TRAINER_H

#include "constants/string.h"

#include "struct_defs/trainer_data.h"

#include "charcode.h"
#include "easy_chat_sentence.h"

typedef struct Trainer {
    TrainerHeader header;
    charcode_t name[TRAINER_NAME_LEN + 1];
    EasyChatSentence winMsg;
    EasyChatSentence loseMsg;
} Trainer;

#endif // POKEPLATINUM_STRUCT_TRAINER_H
