#ifndef POKEPLATINUM_STRUCT_NPC_TRADE_ANIMATION_TEMPLATE_H
#define POKEPLATINUM_STRUCT_NPC_TRADE_ANIMATION_TEMPLATE_H

#include "game_options.h"
#include "pokemon.h"
#include "trainer_info.h"

enum TradeType {
    TRADE_TYPE_NORMAL = 1,
    TRADE_TYPE_SEND_ONLY,
    TRADE_TYPE_RECEIVE_ONLY = 4,
};

enum TradeBackground {
    TRADE_BACKGROUND_DAY = 0,
    TRADE_BACKGROUND_EVENING,
    TRADE_BACKGROUND_NIGHT,
    TRADE_BACKGROUND_WIFI,
};

typedef struct TradeAnimationTemplate {
    const BoxPokemon *sendingPokemon;
    const BoxPokemon *receivingPokemon;
    const TrainerInfo *otherTrainer;
    enum TradeBackground background;
    enum TradeType tradeType;
    const Options *options;
} TradeAnimationTemplate;

#endif // POKEPLATINUM_STRUCT_NPC_TRADE_ANIMATION_TEMPLATE_H
