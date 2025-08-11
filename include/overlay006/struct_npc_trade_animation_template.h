#ifndef POKEPLATINUM_STRUCT_NPC_TRADE_ANIMATION_TEMPLATE_H
#define POKEPLATINUM_STRUCT_NPC_TRADE_ANIMATION_TEMPLATE_H

#include "game_options.h"
#include "pokemon.h"
#include "trainer_info.h"

typedef struct NpcTradeAnimationTemplate {
    const BoxPokemon *sendingPokemon;
    const BoxPokemon *receivingPokemon;
    const TrainerInfo *otherTrainer;
    int backgroundColour; // background colour; 0 = morning, 1 = evening, 2 = night, 3 = green
    int tradeType; // 1 = player/npc trade; anything else = one-sided trade
    const Options *options;
} NpcTradeAnimationTemplate;

#endif // POKEPLATINUM_STRUCT_NPC_TRADE_ANIMATION_TEMPLATE_H
