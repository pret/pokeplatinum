#ifndef POKEPLATINUM_UNK_02096420_H
#define POKEPLATINUM_UNK_02096420_H

#include "party.h"
#include "pokemon.h"

u8 PartyUseItem_CheckItemEffectsOnPokemon(Pokemon *mon, u16 itemId, u16 moveSlot, enum HeapId heapID);
u8 PartyUseItem_CheckItemEffectsOnPartyMember(Party *party, u16 itemId, u8 partySlot, u8 moveSlot, enum HeapId heapID);
u8 PartyUseItem_ApplyItemEffectsToPokemon(Pokemon *mon, u16 itemId, u16 moveSlot, u16 location, enum HeapId heapID);
u8 PartyUseItem_ApplyItemEffectsToPartyMon(Party *party, u16 itemId, u8 partySlot, u8 moveSlot, u16 location, enum HeapId heapID);
void Party_HealAllPokemon(Party *party);

#endif // POKEPLATINUM_UNK_02096420_H
