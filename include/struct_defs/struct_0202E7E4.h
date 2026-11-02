#ifndef POKEPLATINUM_STRUCT_0202E7E4_H
#define POKEPLATINUM_STRUCT_0202E7E4_H

#include "constants/string.h"

#include "charcode.h"

typedef struct {
    u8 unk_00;
    u8 padding_01;
    u16 species;
    u8 gender;
    u8 language;
    u8 metGame;
    u8 hasNickname;
    charcode_t nickname[MON_NAME_LEN + 1];
    u8 nature;
    u8 unk_1F;
    u8 unk_20;
    u8 padding_21;
    u16 unk_22;
} UnkStruct_0202E7E4;

#endif // POKEPLATINUM_STRUCT_0202E7E4_H
