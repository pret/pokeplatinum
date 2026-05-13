#ifndef POKEPLATINUM_STRUCT_OV10_0221F800_H
#define POKEPLATINUM_STRUCT_OV10_0221F800_H

#include "field_battle_data_transfer.h"
#include "party.h"
#include "string_gf.h"

typedef struct TrainerIntroData {
    FieldBattleDTO *dto;
    Party *party[4];
    String *trainerNames[4];
    enum HeapID heapID;
    u8 mode;
    u8 playerSide;
    u8 battleResult;
    u8 isDone;
    u8 recordingType;
    u8 padding[3]; // to align the struct
} TrainerIntroData;

#endif // POKEPLATINUM_STRUCT_OV10_0221F800_H
