#ifndef POKEPLATINUM_STRUCT_OV12_022380DC_H
#define POKEPLATINUM_STRUCT_OV12_022380DC_H

#include "battle/pokemon_sprite_data.h"

#include "pokemon_sprite.h"

typedef struct {
    int unk_00;
    int unk_04;
    PokemonSpriteData *pokemonSpriteData[4];
    PokemonSprite *unk_18[4];
    u16 unk_28[4];
    u8 unk_30[4];
    u8 unk_34[4];
    u8 unk_38[4];
    u32 unk_3C[4];
    u8 unk_4C[4];
} UnkStruct_ov12_022380DC;

#endif // POKEPLATINUM_STRUCT_OV12_022380DC_H
