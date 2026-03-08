#ifndef POKEPLATINUM_CLEAR_GAME_PLAYER_INFO_H
#define POKEPLATINUM_CLEAR_GAME_PLAYER_INFO_H

#include "pokedex.h"

typedef struct ClearGamePlayerInfo {
    int gender;
    BOOL gameCompleted;
    const Pokedex *pokedex;
} ClearGamePlayerInfo;

#endif // POKEPLATINUM_CLEAR_GAME_PLAYER_INFO_H
