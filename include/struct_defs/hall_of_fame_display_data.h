#ifndef POKEPLATINUM_STRUCT_DEF_HALL_OF_FAME_DISPLAY_DATA_H
#define POKEPLATINUM_STRUCT_DEF_HALL_OF_FAME_DISPLAY_DATA_H

#include "party.h"
#include "play_time.h"
#include "trainer_info.h"

typedef struct HallOfFameDisplayData {
    const TrainerInfo *trainerInfo;
    const Party *party;
    const PlayTime *playTime;
} HallOfFameDisplayData;

#endif // POKEPLATINUM_STRUCT_DEF_HALL_OF_FAME_DISPLAY_DATA_H
