#ifndef POKEPLATINUM_BATTLE_TRAINER_INTRO_DATA_H
#define POKEPLATINUM_BATTLE_TRAINER_INTRO_DATA_H

#include "field_battle_data_transfer.h"
#include "party.h"
#include "string_gf.h"

typedef struct TrainerIntroData {
    FieldBattleDTO *dto;
    Party *party[MAX_BATTLERS];
    String *trainerNames[MAX_BATTLERS];
    enum HeapID heapID;
    u8 mode;
    u8 playerSide;
    u8 battleResult;
    u8 isDone;
    u8 recordingType;
} TrainerIntroData;

#endif // POKEPLATINUM_BATTLE_TRAINER_INTRO_DATA_H
