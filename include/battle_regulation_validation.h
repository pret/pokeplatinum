#ifndef POKEPLATINUM_BATTLE_REGULATION_VALIDATION_H
#define POKEPLATINUM_BATTLE_REGULATION_VALIDATION_H

#include "constants/heap.h"

#include "struct_decls/struct_02098700_decl.h"
#include "struct_defs/battle_regulation.h"

#include "party.h"
#include "pokemon.h"

HeightWeightData *HeightWeightData_Load(enum HeapID heapID);
void HeightWeightData_Free(HeightWeightData *heightWeightData);
BOOL BattleRegulation_ValidatePokemon(const BattleRegulation *regulation, Pokemon *pokemon, const HeightWeightData *heightWeightData);
int BattleRegulation_ValidatePartySelection(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData, u8 *selectedSlots);
int BattleRegulation_SelectValidPokemon(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData);

#endif // POKEPLATINUM_BATTLE_REGULATION_VALIDATION_H
