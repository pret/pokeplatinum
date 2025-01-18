#ifndef POKEPLATINUM_PARTY_H
#define POKEPLATINUM_PARTY_H

#include "struct_decls/struct_party_decl.h"

#include "pokemon.h"
#include "savedata.h"

int Party_SaveSize(void);
Party *Party_New(u32 heapID);
void Party_Init(Party *party);
void Party_InitWithCapacity(Party *party, int capacity);
BOOL Party_AddPokemon(Party *party, Pokemon *pokemon);
BOOL Party_RemovePokemonBySlotIndex(Party *party, int slot);
int Party_GetCapacity(const Party *party);
int Party_GetCurrentCount(const Party *party);
Pokemon *Party_GetPokemonBySlotIndex(const Party *party, int slot);
void sub_0207A128(Party *party, int slot, Pokemon *pokemon);
BOOL Party_SwapSlots(Party *party, int slotA, int slotB);
void Party_Copy(const Party *src, Party *dest);
BOOL Party_HasSpecies(const Party *party, int species);
Party *Party_GetFromSavedata(SaveData *saveData);

#endif // POKEPLATINUM_PARTY_H
