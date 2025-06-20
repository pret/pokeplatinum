#ifndef POKEPLATINUM_STRUCT_0203DA00_H
#define POKEPLATINUM_STRUCT_0203DA00_H

#include "struct_decls/struct_02029C68_decl.h"
#include "struct_decls/struct_02029D04_decl.h"

#include "game_options.h"
#include "game_records.h"
#include "pokemon.h"
#include "trainer_info.h"

typedef struct {
    Pokemon *unk_00;
    UnkStruct_02029C68 *unk_04;
    const UnkStruct_02029D04 *unk_08;
    const Options *options;
    GameRecords *records;
    const TrainerInfo *unk_14;
    BOOL *unk_18;
    BOOL unk_1C;
} UnkStruct_0203DA00;

#endif // POKEPLATINUM_STRUCT_0203DA00_H
