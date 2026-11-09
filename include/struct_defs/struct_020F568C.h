#ifndef POKEPLATINUM_STRUCT_020F568C_H
#define POKEPLATINUM_STRUCT_020F568C_H

#define CONTEST_EFFECT_ACTING_MESSAGE_NONE 0xFFFF

enum ContestEffectActingMessage { // TODO: name these properly after getting more context from overlay017.
    CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_1 = 0,
    CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_2,
    CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_3,
    CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_4,
    CONTEST_EFFECT_ACTING_MESSAGE_PREVIEW,
    CONTEST_EFFECT_NUM_ACTING_MESSAGES,
};

typedef struct ContestEffectMessage {
    u16 messageID;
    u8 format;
} ContestEffectMessage;

typedef struct ContestEffectData {
    u16 lineOneEffectMessageID;
    u16 lineTwoEffectMessageID;
    s8 appeal;
    ContestEffectMessage actingMessages[CONTEST_EFFECT_NUM_ACTING_MESSAGES];
} ContestEffectData;

#endif // POKEPLATINUM_STRUCT_020F568C_H
