#ifndef POKEPLATINUM_STRUCT_0202F298_H
#define POKEPLATINUM_STRUCT_0202F298_H

#include "struct_defs/struct_0202F298_sub1.h"
#include "struct_defs/struct_0202FAA8.h"
#include "struct_defs/struct_0202FAA8_sub1.h"
#include "struct_defs/struct_0202FD30.h"

#include "game_options.h"
#include "trainer_info.h"

typedef struct UnkStruct_0202F298_t {
    UnkStruct_0202FAA8 unk_00;
    UnkStruct_0202FAA8_sub1 unk_150;
    UnkStruct_0202FD30 unk_1150[4];
    TrainerInfo unk_1B68[4];
    Options unk_1BE8;
    u16 unk_1BEA;
    UnkStruct_0202F298_sub1 unk_1BEC;
} UnkStruct_0202F298;

#endif // POKEPLATINUM_STRUCT_0202F298_H
