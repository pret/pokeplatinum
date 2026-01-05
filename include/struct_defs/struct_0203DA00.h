#ifndef POKEPLATINUM_STRUCT_0203DA00_H
#define POKEPLATINUM_STRUCT_0203DA00_H

#include "struct_defs/dress_up_photo.h"
#include "struct_defs/fashion_case.h"

#include "game_options.h"
#include "game_records.h"
#include "pokemon.h"
#include "trainer_info.h"

typedef struct {
    Pokemon *unk_00;
    DressUpPhoto *photo;
    const FashionCase *fashionCase;
    const Options *options;
    GameRecords *records;
    const TrainerInfo *unk_14;
    BOOL *unk_18;
    BOOL unk_1C;
} UnkStruct_0203DA00;

#endif // POKEPLATINUM_STRUCT_0203DA00_H
