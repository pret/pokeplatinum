#ifndef POKEPLATINUM_UNK_02079FEC_H
#define POKEPLATINUM_UNK_02079FEC_H

#include "pokemon.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

int Party_SaveSize(void);
Party * Party_New(u32 param0);
void Party_Init(Party * param0);
void Party_InitWithCapacity(Party * party, int capacity);
BOOL Party_AddPokemon(Party * party, Pokemon * pokemon);
BOOL Party_RemovePokemonBySlotIndex(Party * party, int slot);
int Party_GetCapacity(const Party * party);
int Party_GetCurrentCount(const Party * party);
Pokemon * Party_GetPokemonBySlotIndex(const Party * party, int slot);
void sub_0207A128(Party * party, int slot, Pokemon * param2);
BOOL Party_SwapSlots(Party * party, int slotA, int slotB);
void Party_cpy(const Party * src, Party * dest);
BOOL Party_HasSpecies(const Party * party, int species);
Party * Party_GetFromSavedata(SaveData * party);

#endif // POKEPLATINUM_UNK_02079FEC_H
