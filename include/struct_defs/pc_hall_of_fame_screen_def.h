#ifndef POKEPLATINUM_PC_HALL_OF_FAME_SCREEN_H
#define POKEPLATINUM_PC_HALL_OF_FAME_SCREEN_H

#include <nitro/rtc.h>

#include "constants/pokemon.h"

#include "hall_of_fame.h"

typedef enum PCHallOfFameTextState {
    PC_HALL_OF_FAME_TEXT_GENERAL,
    PC_HALL_OF_FAME_TEXT_MOVES,
} PCHallOfFameTextState;

typedef struct PCHallOfFameScreen {
    int entryNum;
    RTCDate date;
    int pokemonCount;
    int pokemonIndex;
    PCHallOfFameTextState textState;
    PCHallOfFamePokemon pokemon[MAX_PARTY_SIZE];
} PCHallOfFameScreen;

#endif // POKEPLATINUM_PC_HALL_OF_FAME_SCREEN_H
