#ifndef POKEPLATINUM_PC_HALL_OF_FAME_SCREEN_H
#define POKEPLATINUM_PC_HALL_OF_FAME_SCREEN_H

#include <nitro/rtc.h>

#include "constants/pokemon.h"

#include "struct_defs/pc_hall_of_fame_man_pokemon_def.h"

#include "enums.h"

typedef struct PCHallOfFameScreen {
    int entryNum;
    RTCDate date;
    int pokemonCount;
    int pokemonIndex;
    PCHallOfFameTextState textState;
    PCHallOfFameManPokemon pokemon[MAX_PARTY_SIZE];
} PCHallOfFameScreen;

#endif // POKEPLATINUM_PC_HALL_OF_FAME_SCREEN_H
