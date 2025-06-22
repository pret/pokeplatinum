#ifndef POKEPLATINUM_STRUCT_MAIL_H
#define POKEPLATINUM_STRUCT_MAIL_H

#include "constants/string.h"

#include "struct_defs/sentence.h"
#include "struct_defs/union_02028328.h"

#define MAILBOX_SIZE 20

typedef struct {
    u32 trainerID;
    u8 trainerGender;
    u8 language;
    u8 gameVersion;
    u8 mailType;
    u16 trainerName[TRAINER_NAME_LEN + 1];
    UnkUnion_02028328 unk_18[3];
    u16 unk_1E;
    Sentence unk_20[3];
} Mail;

typedef struct {
    Mail mail[MAILBOX_SIZE];
} Mailbox;

#endif // POKEPLATINUM_STRUCT_MAIL_H
