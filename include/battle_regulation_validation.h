#ifndef POKEPLATINUM_BATTLE_REGULATION_VALIDATION_H
#define POKEPLATINUM_BATTLE_REGULATION_VALIDATION_H

#include "constants/heap.h"

#include "struct_decls/struct_02098700_decl.h"
#include "struct_defs/battle_regulation.h"

#include "party.h"
#include "pokemon.h"

enum BattleRegulationValidationError {
    BATTLE_REGULATION_VALIDATION_SUCCESS = 0,
    BATTLE_REGULATION_VALIDATION_ERROR_TOTAL_LEVEL_EXCEEDED = 1,
    BATTLE_REGULATION_VALIDATION_ERROR_DUPLICATE_SPECIES = 2,
    BATTLE_REGULATION_VALIDATION_ERROR_DUPLICATE_ITEMS = 3,
    BATTLE_REGULATION_VALIDATION_ERROR_INVALID_TEAM_SIZE = 4,
    BATTLE_REGULATION_VALIDATION_ERROR_INVALID_POKEMON = 5,
};

HeightWeightData *HeightWeightData_Load(enum HeapID heapID);
void HeightWeightData_Free(HeightWeightData *heightWeightData);
BOOL BattleRegulation_ValidatePokemon(const BattleRegulation *regulation, Pokemon *pokemon, const HeightWeightData *heightWeightData);
enum BattleRegulationValidationError BattleRegulation_ValidatePartySelection(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData, u8 *selectedSlots);
enum BattleRegulationValidationError BattleRegulation_SelectValidPokemon(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData);

#endif // POKEPLATINUM_BATTLE_REGULATION_VALIDATION_H
