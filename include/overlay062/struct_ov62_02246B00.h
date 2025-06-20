#ifndef POKEPLATINUM_STRUCT_OV62_02246B00_H
#define POKEPLATINUM_STRUCT_OV62_02246B00_H

#include "game_options.h"
#include "strbuf.h"

typedef struct {
    int unk_00;
    int unk_04[4];
    u8 padding_14[4];
    Strbuf *unk_18;
    Options *options;
} UnkStruct_ov62_02246B00;

#endif // POKEPLATINUM_STRUCT_OV62_02246B00_H
