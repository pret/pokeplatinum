#ifndef POKEPLATINUM_ITEM_USE_POKEMON_H
#define POKEPLATINUM_ITEM_USE_POKEMON_H

#include "party.h"
#include "pokemon.h"

u8 Pokemon_CheckItemEffects(Pokemon *mon, u16 itemId, u16 moveSlot, enum HeapID heapID);
u8 Pokemon_ApplyItemEffects(Pokemon *mon, u16 itemId, u16 moveSlot, u16 location, enum HeapID heapID);
u8 Party_CheckItemEffectsOnMember(Party *party, u16 itemId, u8 partySlot, u8 moveSlot, enum HeapID heapID);
u8 Party_ApplyItemEffectsToMember(Party *party, u16 itemId, u8 partySlot, u8 moveSlot, u16 location, enum HeapID heapID);
void Party_HealAllMembers(Party *party);

#endif // POKEPLATINUM_ITEM_USE_POKEMON_H
