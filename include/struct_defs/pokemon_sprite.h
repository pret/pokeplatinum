#ifndef POKEPLATINUM_STRUCT_POKEMON_SPRITE_H
#define POKEPLATINUM_STRUCT_POKEMON_SPRITE_H

#include "struct_defs/archived_sprite.h"
#include "struct_defs/sprite_animation_frame.h"
#include "struct_defs/struct_02007C7C_sub1.h"
#include "struct_defs/struct_02007C7C_sub2.h"

typedef struct PokemonSprite PokemonSprite;

typedef void(UnkFuncPtr_02007C34)(PokemonSprite *, UnkStruct_02007C7C_sub1 *);

struct PokemonSprite {
    u32 unk_00_0 : 1;
    u32 unk_00_1 : 6;
    u32 unk_00_7 : 1;
    u32 unk_00_8 : 1;
    u32 : 23;
    PokemonSpriteTemplate unk_04;
    PokemonSpriteTemplate unk_14;
    UnkStruct_02007C7C_sub1 unk_24;
    u8 unk_58;
    u8 unk_59;
    u8 unk_5A;
    u8 unk_5B;
    u8 unk_5C[10];
    u8 unk_66[2];
    UnkFuncPtr_02007C34 *unk_68;
    UnkStruct_02007C7C_sub2 unk_6C;
    UnkStruct_02007C7C_sub2 unk_78;
    SpriteAnimationFrame unk_84[10];
};

#endif // POKEPLATINUM_STRUCT_POKEMON_SPRITE_H
