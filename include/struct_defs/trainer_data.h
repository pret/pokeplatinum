#ifndef POKEPLATINUM_TRAINER_DATA_H
#define POKEPLATINUM_TRAINER_DATA_H

#include "struct_defs/struct_02014A84.h"

typedef struct {
    u8 unk_00;
    u8 class;
    u8 unk_02;
    u8 unk_03;
    u16 unk_04[4];
    u32 unk_0C;
    u32 unk_10;
    u16 unk_14[8];
    UnkStruct_02014A84 unk_24;
    UnkStruct_02014A84 unk_2C;
} TrainerData;

#endif // POKEPLATINUM_TRAINER_DATA_H
