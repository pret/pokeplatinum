#ifndef POKEPLATINUM_STRUCT_PHOTO_POKEMON_H
#define POKEPLATINUM_STRUCT_PHOTO_POKEMON_H

#include "constants/string.h"

typedef struct PhotoPokemon {
    u32 personality;
    u32 otID;
    u16 species;
    u16 nickname[MON_NAME_LEN + 1];
    u16 trainerName[TRAINER_NAME_LEN + 1];
    s8 priority;
    u8 xPos;
    u8 yPos;
    u8 form;
    u8 trainerGender;
} PhotoPokemon;

#endif // POKEPLATINUM_STRUCT_PHOTO_POKEMON_H
