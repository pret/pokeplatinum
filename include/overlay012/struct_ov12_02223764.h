#ifndef POKEPLATINUM_STRUCT_OV12_02223764_H
#define POKEPLATINUM_STRUCT_OV12_02223764_H

#include "battle/pokemon_sprite_data.h"
#include "overlay012/struct_ov12_02223764_sub1.h"

#include "pokemon_sprite.h"
#include "sprite_system.h"

typedef struct {
    int heapID;
    int unk_04;
    UnkStruct_ov12_02223764_sub1 unk_08;
    int unk_14[4];
    ManagedSprite *unk_24[4];
    PokemonSpriteData *pokemonSpriteRefs[4];
    u8 unk_44[4];
    PokemonSprite *unk_48[4];
} UnkStruct_ov12_02223764;

#endif // POKEPLATINUM_STRUCT_OV12_02223764_H
