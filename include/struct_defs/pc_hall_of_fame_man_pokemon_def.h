#ifndef POKEPLATINUM_PC_HALL_OF_FAME_MAN_POKEMON_DEF_H
#define POKEPLATINUM_PC_HALL_OF_FAME_MAN_POKEMON_DEF_H

#include "constants/moves.h"

#include "strbuf.h"

typedef struct PCHallOfFamePokemon {
    Strbuf *nickname;
    Strbuf *OTName;
    u32 personality;
    u32 OTID;
    u16 species;
    u8 level;
    u8 form;
    u16 moves[LEARNED_MOVES_MAX];
} PCHallOfFamePokemon;

#endif // POKEPLATINUM_PC_HALL_OF_FAME_MAN_POKEMON_DEF_H
