#ifndef POKEPLATINUM_STRUCT_OV12_022380DC_H
#define POKEPLATINUM_STRUCT_OV12_022380DC_H

#include "constants/battle.h"

#include "battle/pokemon_sprite_data.h"

#include "pokemon_sprite.h"

typedef struct {
    int unk_00;
    int unk_04;
    PokemonSpriteData *pokemonSpriteData[MAX_BATTLERS];
    PokemonSprite *sprites[MAX_BATTLERS];
    u16 species[MAX_BATTLERS];
    u8 genders[MAX_BATTLERS];
    u8 shinyFlags[MAX_BATTLERS];
    u8 forms[MAX_BATTLERS];
    u32 personalities[MAX_BATTLERS];
    u8 types[MAX_BATTLERS];
} UnkStruct_ov12_022380DC;

#endif // POKEPLATINUM_STRUCT_OV12_022380DC_H
