#ifndef POKEPLATINUM_STRUCT_02097F18_H
#define POKEPLATINUM_STRUCT_02097F18_H

#include "struct_defs/seal_case.h"

#include "game_options.h"
#include "party.h"
#include "pokemon.h"
#include "savedata.h"

typedef struct {
    int unk_00;
    Pokemon *unk_04[6];
    Party *unk_1C;
    SealCase *unk_20;
    Options *options;
    SaveData *saveData;
    u8 unk_2C;
    u8 unk_2D;
    u8 padding[2];
} UnkStruct_02097F18;

#endif // POKEPLATINUM_STRUCT_02097F18_H
