#ifndef POKEPLATINUM_UNK_02096420_H
#define POKEPLATINUM_UNK_02096420_H

#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"

u8 CheckItemEffectsOnPokemon(Pokemon * param0, u16 param1, u16 param2, u32 param3);
u8 CheckItemEffectsOnPartyMember(Party * param0, u16 param1, u8 param2, u8 param3, u32 param4);
u8 ApplyItemEffectsToPokemon(Pokemon * param0, u16 param1, u16 param2, u16 param3, u32 param4);
u8 sub_02096F14(Party * param0, u16 param1, u8 param2, u8 param3, u16 param4, u32 param5);
void HealAllPokemonInParty(Party * party);

#endif // POKEPLATINUM_UNK_02096420_H
