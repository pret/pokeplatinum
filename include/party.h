#ifndef POKEPLATINUM_UNK_02079FEC_H
#define POKEPLATINUM_UNK_02079FEC_H

#include "struct_decls/struct_02073C74_decl.h"
#include "struct_decls/struct_02079FF4_decl.h"
#include "struct_decls/struct_021C0794_decl.h"

int Party_sizeof(void);
UnkStruct_02079FF4 * sub_02079FF4(u32 param0);
void sub_0207A008(UnkStruct_02079FF4 * param0);
void Party_InitWithCapacity(UnkStruct_02079FF4 * party, int capacity);
BOOL Party_AddPokemon(UnkStruct_02079FF4 * party, UnkStruct_02073C74 * pokemon);
BOOL Party_RemovePokemonBySlotIndex(UnkStruct_02079FF4 * party, int slot);
int Party_GetCapacity(const UnkStruct_02079FF4 * party);
int Party_GetCurrentCount(const UnkStruct_02079FF4 * party);
UnkStruct_02073C74 * Party_GetPokemonBySlotIndex(const UnkStruct_02079FF4 * party, int slot);
void sub_0207A128(UnkStruct_02079FF4 * party, int slot, UnkStruct_02073C74 * param2);
BOOL Party_SwapSlots(UnkStruct_02079FF4 * party, int slotA, int slotB);
void Party_cpy(const UnkStruct_02079FF4 * src, UnkStruct_02079FF4 * dest);
BOOL Party_HasPokemon(const UnkStruct_02079FF4 * party, int species);
UnkStruct_02079FF4 * GetPartyFromSavedata(UnkStruct_021C0794 * party);

#endif // POKEPLATINUM_UNK_02079FEC_H
