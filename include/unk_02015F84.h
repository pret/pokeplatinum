#ifndef POKEPLATINUM_UNK_02015F84_H
#define POKEPLATINUM_UNK_02015F84_H

#include "struct_decls/pokemon_animation_sys_decl.h"
#include "struct_decls/sprite_decl.h"
#include "struct_defs/poke_animation_settings.h"

PokemonAnimationSys *sub_02015F84(const int param0, const int param1, const u8 param2);
void sub_02015FB8(PokemonAnimationSys *param0);
void PokeAnimation_Init(PokemonAnimationSys *param0, Sprite *param1, const PokeAnimationSettings *param2, const u8 param3);
BOOL sub_020160F4(PokemonAnimationSys *param0, const u8 param1);
void sub_02016114(PokemonAnimationSys *param0, const u8 param1);

#endif // POKEPLATINUM_UNK_02015F84_H
