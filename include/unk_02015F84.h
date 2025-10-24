#ifndef POKEPLATINUM_UNK_02015F84_H
#define POKEPLATINUM_UNK_02015F84_H

#include "struct_decls/pokemon_anim_manager_decl.h"
#include "struct_defs/poke_animation_settings.h"

#include "pokemon_sprite.h"

PokemonAnimManager *sub_02015F84(const int heapID, const int param1, const u8 param2);
void sub_02015FB8(PokemonAnimManager *param0);
void PokeAnimation_Init(PokemonAnimManager *param0, PokemonSprite *param1, const PokeAnimationSettings *param2, const u8 param3);
BOOL sub_020160F4(PokemonAnimManager *param0, const u8 param1);
void sub_02016114(PokemonAnimManager *param0, const u8 param1);

#endif // POKEPLATINUM_UNK_02015F84_H
