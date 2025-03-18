#ifndef POKEPLATINUM_STRUCT_MAIL_H
#define POKEPLATINUM_STRUCT_MAIL_H

#include "struct_defs/sentence.h"
#include "struct_defs/union_02028328.h"

typedef struct {
    u32 unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
    u8 unk_07;
    u16 unk_08[8];
    UnkUnion_02028328 unk_18[3];
    u16 unk_1E;
    Sentence unk_20[3];
} Mail;

#endif // POKEPLATINUM_STRUCT_MAIL_H
