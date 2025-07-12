#ifndef POKEPLATINUM_STRUCT_OV6_02246254_H
#define POKEPLATINUM_STRUCT_OV6_02246254_H

#include "game_options.h"
#include "pokemon.h"
#include "trainer_info.h"

typedef struct NpcTradeAnimationConfig {
    const BoxPokemon *sendingPokemon;
    const BoxPokemon *receivingPokemon;
    const TrainerInfo *otherTrainer;
    int backgroundColour; // background colour; 0 = morning, 1 = evening, 2 = night, 3 = green
    int tradeType; // 1 = player/npc trade; anything else = one-sided trade
    const Options *options;
} NpcTradeAnimationConfig;

#endif // POKEPLATINUM_STRUCT_OV6_02246254_H
