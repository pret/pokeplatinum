#ifndef POKEPLATINUM_BATTLE_REGULATION_VALIDATION_H
#define POKEPLATINUM_BATTLE_REGULATION_VALIDATION_H

#include "battle_regulation.h"
#include "party.h"
#include "pokedex_heightweight.h"
#include "pokemon.h"

enum BattleRegulationValidationResult {
    BATTLE_REGULATION_VALIDATION_RESULT_SUCCESS = 0,
    BATTLE_REGULATION_VALIDATION_RESULT_TOTAL_LEVEL_EXCEEDED = 1,
    BATTLE_REGULATION_VALIDATION_RESULT_DUPLICATE_SPECIES = 2,
    BATTLE_REGULATION_VALIDATION_RESULT_DUPLICATE_ITEMS = 3,
    BATTLE_REGULATION_VALIDATION_RESULT_INVALID_TEAM_SIZE = 4,
    BATTLE_REGULATION_VALIDATION_RESULT_INVALID_POKEMON = 5,
};

BOOL BattleRegulation_ValidatePokemon(const BattleRegulation *regulation, Pokemon *mon, const HeightWeightData *heightWeightData);
enum BattleRegulationValidationResult BattleRegulation_ValidatePartySelection(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData, u8 *selectedSlots);
enum BattleRegulationValidationResult BattleRegulation_SelectValidPokemon(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData);

#endif // POKEPLATINUM_BATTLE_REGULATION_VALIDATION_H
