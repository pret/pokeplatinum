#ifndef POKEPLATINUM_EASY_CHAT_DEFS_H
#define POKEPLATINUM_EASY_CHAT_DEFS_H

#include "res/text/bank/ability_names_uppercase.h"
#include "res/text/bank/feelings.h"
#include "res/text/bank/greetings.h"
#include "res/text/bank/lifestyle_words.h"
#include "res/text/bank/move_names_uppercase.h"
#include "res/text/bank/people_words.h"
#include "res/text/bank/pokemon_type_names.h"
#include "res/text/bank/species_name.h"
#include "res/text/bank/tough_words.h"
#include "res/text/bank/trainer_words.h"

enum EasyChatType {
    EASY_CHAT_TYPE_ONE_WORD = 0,
    EASY_CHAT_TYPE_TWO_WORDS,
    EASY_CHAT_TYPE_SENTENCE,
};

enum EasyChatMode {
    GROUP_MODE = 0,
    ABC_MODE,
};

enum EasyChatGroup {
    GROUP_POKEMON = 0,
    GROUP_POKEMON_2,
    GROUP_MOVE,
    GROUP_MOVE_2,
    GROUP_STATUS,
    GROUP_TRAINER,
    GROUP_PEOPLE,
    GROUP_GREETINGS,
    GROUP_LIFESTYLE,
    GROUP_FEELINGS,
    GROUP_TOUGH_WORDS,
    GROUP_UNION,
    EASY_CHAT_GROUP_COUNT,
    GROUP_MODE_CANCEL_INDEX = EASY_CHAT_GROUP_COUNT,
};

enum ABCModeChars {
    A = 0,
    B,
    C,
    D,
    E,
    F,
    G,
    H,
    I,
    J,
    K,
    L,
    M,
    N,
    O,
    P,
    Q,
    R,
    S,
    T,
    U,
    V,
    W,
    X,
    Y,
    Z,
    EXCLAMATION,
    ABC_MODE_CHAR_COUNT,
};

#define MOVE_WORD(move)           (TEXT_BANK_SPECIES_NAME_ENTRY_COUNT + move)
#define TYPE_WORD(type)           (MOVE_WORD(TEXT_BANK_MOVE_NAMES_UPPERCASE_ENTRY_COUNT) + type)
#define ABILITY_WORD(ability)     (TYPE_WORD(TEXT_BANK_POKEMON_TYPE_NAMES_ENTRY_COUNT) + ability)
#define TRAINER_WORD(bankEntry)   (ABILITY_WORD(TEXT_BANK_ABILITY_NAMES_UPPERCASE_ENTRY_COUNT) + bankEntry)
#define PEOPLE_WORD(bankEntry)    (TRAINER_WORD(TEXT_BANK_TRAINER_WORDS_ENTRY_COUNT) + bankEntry)
#define GREETING_WORD(bankEntry)  (PEOPLE_WORD(TEXT_BANK_PEOPLE_WORDS_ENTRY_COUNT) + bankEntry)
#define LIFESTYLE_WORD(bankEntry) (GREETING_WORD(TEXT_BANK_GREETINGS_ENTRY_COUNT) + bankEntry)
#define FEELINGS_WORD(bankEntry)  (LIFESTYLE_WORD(TEXT_BANK_LIFESTYLE_WORDS_ENTRY_COUNT) + bankEntry)
#define TOUGH_WORD(bankEntry)     (FEELINGS_WORD(TEXT_BANK_FEELINGS_ENTRY_COUNT) + bankEntry)
#define UNION_WORD(bankEntry)     (TOUGH_WORD(TEXT_BANK_TOUGH_WORDS_ENTRY_COUNT) + bankEntry)

#define MAX_EASY_CHAT_WORDS 2

#define EASY_CHAT_NOTHING_CHOSEN 0xFF
#define EASY_CHAT_CANCEL         0xFE

#endif // POKEPLATINUM_EASY_CHAT_DEFS_H
