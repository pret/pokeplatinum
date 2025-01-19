#ifndef POKEPLATINUM_STRUCT_02093BBC_H
#define POKEPLATINUM_STRUCT_02093BBC_H

#include "struct_decls/struct_02029C88_decl.h"
#include "struct_decls/struct_02029D04_decl.h"
#include "struct_defs/pokemon.h"
#include "struct_defs/struct_02095C60.h"

#include "game_options.h"
#include "trainer_info.h"

typedef struct {
    Pokemon *unk_00;
    UnkStruct_02029C88 *unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    int unk_14;
    const UnkStruct_02029D04 *unk_18;
    UnkStruct_02095C60 *unk_1C;
    const Options *unk_20;
    const TrainerInfo *unk_24;
} UnkStruct_02093BBC;

#endif // POKEPLATINUM_STRUCT_02093BBC_H
