#ifndef POKEPLATINUM_STRUCT_OV10_0221F800_H
#define POKEPLATINUM_STRUCT_OV10_0221F800_H

#include "field_battle_data_transfer.h"
#include "party.h"
#include "string_gf.h"

typedef struct TrainerIntroData {
    FieldBattleDTO *fieldBattleDTO;
    Party *party[4];
    String *trainerNames[4];
    enum HeapID heapID;
    u8 unk_28;
    u8 unk_29;
    u8 unk_2A;
    u8 unk_2B;
    u8 unk_2C;
    u8 unk_2D[3];
} TrainerIntroData;

#endif // POKEPLATINUM_STRUCT_OV10_0221F800_H
