#ifndef POKEPLATINUM_CLEAR_GAME_PLAYER_INFO_H
#define POKEPLATINUM_CLEAR_GAME_PLAYER_INFO_H

#include "struct_decls/pokedexdata_decl.h"

typedef struct ClearGamePlayerInfo {
    int gender;
    BOOL gameCompleted;
    const Pokedex *pokedex;
} ClearGamePlayerInfo;

#endif // POKEPLATINUM_CLEAR_GAME_PLAYER_INFO_H
