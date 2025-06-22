#ifndef POKEPLATINUM_STRUCT_020978D8_H
#define POKEPLATINUM_STRUCT_020978D8_H

#include "struct_defs/sentence.h"
#include "struct_defs/union_02028328.h"

#include "game_options.h"
#include "strbuf.h"

typedef struct {
    u16 unk_00;
    u8 unk_02;
    u8 unk_03;
    Options *options;
    u32 unk_08;
    u8 unk_0C;
    u8 language;
    u8 gameVersion;
    u8 mailType;
    Strbuf *unk_10;
    UnkUnion_02028328 unk_14[3];
    Sentence unk_1A[3];
} UnkStruct_020978D8;

#endif // POKEPLATINUM_STRUCT_020978D8_H
