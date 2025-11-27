#include "battle_regulation_validation.h"

#include <nitro.h>

#include "constants/pokemon.h"

#include "battle_regulation.h"
#include "party.h"
#include "pokedex_heightweight.h"
#include "pokemon.h"

BOOL BattleRegulation_ValidatePokemon(const BattleRegulation *regulation, Pokemon *pokemon, const HeightWeightData *heightWeightData)
{
    u16 species = (u16)Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
    int ruleValue, height, weight;

    if (regulation == NULL) {
        return TRUE;
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_MAX_LEVEL);

    if (Pokemon_GetValue(pokemon, MON_DATA_LEVEL, NULL) > ruleValue) {
        return FALSE;
    }

    if (Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL)) {
        return FALSE;
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_SPECIES_RESTRICT);

    if (ruleValue == 0) {
        if (species != Pokemon_GetBaseSpeciesForBattle(species)) {
            return FALSE;
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_HEIGHT_RESTRICT);

    if (ruleValue != 0) {
        height = Pokedex_HeightWeightData_Height(heightWeightData, species);

        if (ruleValue > 0) {
            if (height < ruleValue) {
                return FALSE;
            }
        } else {
            if (height > (-ruleValue)) {
                return FALSE;
            }
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_WEIGHT_RESTRICT) * 10;

    if (ruleValue != 0) {
        weight = Pokedex_HeightWeightData_Weight(heightWeightData, species);

        if (ruleValue > 0) {
            if (weight < ruleValue) {
                return FALSE;
            }
        } else {
            if (weight > (-ruleValue)) {
                return FALSE;
            }
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_ITEM_RESTRICT);

    if (ruleValue == 0) {
        if (Pokemon_IsBannedFromBattleFrontier(pokemon)) {
            return FALSE;
        }
    }

    return TRUE;
}

enum BattleRegulationValidationError BattleRegulation_ValidatePartySelection(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData, u8 *selectedSlots)
{
    Pokemon *pokemon;
    int ruleValue, selectedCount = 0, i, j, totalLevel = 0;
    u16 species[MAX_PARTY_SIZE], heldItems[MAX_PARTY_SIZE];

    if (regulation == NULL) {
        return BATTLE_REGULATION_VALIDATION_SUCCESS;
    }

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        species[i] = 0;
        heldItems[i] = 0;

        if (selectedSlots[i]) {
            selectedCount++;
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_TEAM_SIZE);

    if (selectedCount != ruleValue) {
        return BATTLE_REGULATION_VALIDATION_ERROR_INVALID_TEAM_SIZE;
    }

    for (i = 0; i < MAX_PARTY_SIZE; i++) {
        if (selectedSlots[i]) {
            int slotIndex = selectedSlots[i] - 1;

            pokemon = Party_GetPokemonBySlotIndex(party, slotIndex);

            if (BattleRegulation_ValidatePokemon(regulation, pokemon, heightWeightData) == FALSE) {
                return BATTLE_REGULATION_VALIDATION_ERROR_INVALID_POKEMON;
            }

            species[i] = (u16)Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
            heldItems[i] = (u16)Pokemon_GetValue(pokemon, MON_DATA_HELD_ITEM, NULL);

            totalLevel += Pokemon_GetValue(pokemon, MON_DATA_LEVEL, NULL);
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL);

    if (totalLevel > ruleValue && ruleValue != 0) {
        return BATTLE_REGULATION_VALIDATION_ERROR_TOTAL_LEVEL_EXCEEDED;
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_SPECIES_UNIQUE);

    // Check for duplicate species if species uniqueness is required
    if (ruleValue == 0 && selectedCount > 1) {
        // Compare all pairs of Pokémon to detect duplicates
        // i goes from 0 to MAX_PARTY_SIZE-2 (avoids self-comparison)
        // j goes from i+1 to MAX_PARTY_SIZE-1 (avoids duplicate pairs)
        for (i = 0; i < (MAX_PARTY_SIZE - 1); i++) {
            for (j = i + 1; j < MAX_PARTY_SIZE; j++) {
                if (species[i] == species[j] && species[i] != 0) {
                    return BATTLE_REGULATION_VALIDATION_ERROR_DUPLICATE_SPECIES;
                }
            }
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_ITEM_UNIQUE);

    // Check for duplicate held items if item uniqueness is required
    if (ruleValue == 0 && selectedCount > 1) {
        // Compare all pairs of Pokémon to detect duplicate held items
        // Only check items for valid Pokémon (species[i] != 0) and non-empty items (heldItems[i] != 0)
        for (i = 0; i < (MAX_PARTY_SIZE - 1); i++) {
            for (j = i + 1; j < MAX_PARTY_SIZE; j++) {
                if (heldItems[i] == heldItems[j] && species[i] != 0 && heldItems[i] != 0) {
                    return BATTLE_REGULATION_VALIDATION_ERROR_DUPLICATE_ITEMS;
                }
            }
        }
    }

    return BATTLE_REGULATION_VALIDATION_SUCCESS;
}

static BOOL BattleRegulation_FindValidTeamCombination(u16 *species, u16 *levels, u16 *used, int maxLevelSum, int slotIndex, int remainingSlots, int totalSlots)
{
    int currentLevelSum = maxLevelSum;
    int i;
    int slotsNeeded = remainingSlots;

    // Try to use the current slot if it has a valid Pokémon and hasn't been used
    if (species[slotIndex] != 0 && used[slotIndex] == 0) {
        currentLevelSum -= levels[slotIndex];

        // If adding this Pokémon would exceed the level limit, backtrack
        if (currentLevelSum < 0) {
            return FALSE;
        }

        slotsNeeded--;

        // If we've filled all required slots, we found a valid combination
        if (slotsNeeded == 0) {
            return TRUE;
        }

        used[slotIndex] = 1;
    }

    // Try all remaining slots to complete the team
    for (i = slotIndex + 1; i < totalSlots; i++) {
        if (BattleRegulation_FindValidTeamCombination(species, levels, used, currentLevelSum, i, slotsNeeded, totalSlots)) {
            return TRUE;
        }
    }

    // Backtrack: unmark this slot and return failure
    used[slotIndex] = 0;
    return FALSE;
}

enum BattleRegulationValidationError BattleRegulation_SelectValidPokemon(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData)
{
    Pokemon *pokemon;
    int ruleValue, partyCount, i, j, validCount = 0;
    u16 species[MAX_PARTY_SIZE], levels[MAX_PARTY_SIZE], used[MAX_PARTY_SIZE];
    int requiredCount;

    partyCount = Party_GetCurrentCount(party);
    validCount = partyCount;

    MI_CpuClear8(used, MAX_PARTY_SIZE * sizeof(u16));

    for (i = 0; i < partyCount; i++) {
        pokemon = Party_GetPokemonBySlotIndex(party, i);
        species[i] = (u16)Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
        levels[i] = Pokemon_GetValue(pokemon, MON_DATA_LEVEL, NULL);

        if (BattleRegulation_ValidatePokemon(regulation, pokemon, heightWeightData) == FALSE) {
            species[i] = 0;
            validCount--;
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_SPECIES_UNIQUE);

    // Remove duplicate species by keeping the higher-level Pokémon
    if (ruleValue == 0 && partyCount > 1) {
        // Compare all pairs of Pokémon to find duplicates
        for (i = 0; i < (partyCount - 1); i++) {
            for (j = i + 1; j < partyCount; j++) {
                if (species[i] == species[j] && species[i] != 0) {
                    if (levels[i] > levels[j]) {
                        species[i] = 0;
                    } else {
                        species[j] = 0;
                    }

                    validCount--;
                }
            }
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_TEAM_SIZE);

    if (validCount < ruleValue) {
        return BATTLE_REGULATION_VALIDATION_ERROR_INVALID_TEAM_SIZE;
    }

    requiredCount = ruleValue;
    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL);

    if (ruleValue == 0) {
        return BATTLE_REGULATION_VALIDATION_SUCCESS;
    }

    for (i = 0; i < partyCount; i++) {
        if (BattleRegulation_FindValidTeamCombination(species, levels, used, ruleValue, i, requiredCount, partyCount)) {
            return BATTLE_REGULATION_VALIDATION_SUCCESS;
        }
    }

    return BATTLE_REGULATION_VALIDATION_ERROR_TOTAL_LEVEL_EXCEEDED;
}
