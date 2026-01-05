#ifndef POKEPLATINUM_STRUCT_02093BBC_H
#define POKEPLATINUM_STRUCT_02093BBC_H

#include "struct_defs/fashion_case.h"
#include "struct_defs/struct_02029C88.h"
#include "struct_defs/struct_02095C60.h"

#include "game_options.h"
#include "pokemon.h"
#include "trainer_info.h"

typedef struct {
    Pokemon *unk_00;
    UnkStruct_02029C88 *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    const FashionCase *fashionCase;
    UnkStruct_02095C60 *unk_1C;
    const Options *options;
    const TrainerInfo *unk_24;
} UnkStruct_02093BBC;

#endif // POKEPLATINUM_STRUCT_02093BBC_H
