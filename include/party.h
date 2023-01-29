#ifndef POKEPLATINUM_UNK_02079FEC_H
#define POKEPLATINUM_UNK_02079FEC_H

#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_party_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

int Party_sizeof(void);
Party * sub_02079FF4(u32 param0);
void sub_0207A008(Party * param0);
void Party_InitWithCapacity(Party * party, int capacity);
BOOL Party_AddPokemon(Party * party, UnkStruct_02073C74 * pokemon);
BOOL Party_RemovePokemonBySlotIndex(Party * party, int slot);
int Party_GetCapacity(const Party * party);
int Party_GetCurrentCount(const Party * party);
UnkStruct_02073C74 * Party_GetPokemonBySlotIndex(const Party * party, int slot);
void sub_0207A128(Party * party, int slot, UnkStruct_02073C74 * param2);
BOOL Party_SwapSlots(Party * party, int slotA, int slotB);
void Party_cpy(const Party * src, Party * dest);
BOOL Party_HasSpecies(const Party * party, int species);
Party * GetPartyFromSavedata(UnkStruct_021C0794 * party);

#endif // POKEPLATINUM_UNK_02079FEC_H
