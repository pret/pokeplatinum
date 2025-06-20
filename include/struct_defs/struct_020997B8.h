#ifndef POKEPLATINUM_STRUCT_020997B8_H
#define POKEPLATINUM_STRUCT_020997B8_H

#include "game_options.h"
#include "pokemon.h"
#include "trainer_info.h"

typedef struct {
    Pokemon *unk_00;
    TrainerInfo *unk_04;
    Options *options;
    u16 *unk_0C;
    u16 unk_10;
    u16 unk_12;
    u8 unk_14;
    u8 unk_15;
    u8 unk_16;
    u8 unk_17;
} UnkStruct_020997B8;

#endif // POKEPLATINUM_STRUCT_020997B8_H
