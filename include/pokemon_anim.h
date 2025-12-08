#ifndef POKEPLATINUM_POKEMON_ANIM_H
#define POKEPLATINUM_POKEMON_ANIM_H

#include "struct_decls/pokemon_anim_manager_decl.h"
#include "struct_defs/poke_animation_settings.h"

#include "pokemon_sprite.h"

PokemonAnimManager *sub_02015F84(enum HeapID heapID, const int animCount, const u8 reverse);
void sub_02015FB8(PokemonAnimManager *monAnimMan);
void PokeAnimation_Init(PokemonAnimManager *monAnimMan, PokemonSprite *monSprite, const PokeAnimationSettings *param2, const u8 index);
BOOL sub_020160F4(PokemonAnimManager *monAnimMan, const u8 index);
void sub_02016114(PokemonAnimManager *monAnimMan, const u8 index);

#endif // POKEPLATINUM_POKEMON_ANIM_H
