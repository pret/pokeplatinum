#include "battle_regulation_validation.h"

#include <nitro.h>

#include "constants/heap.h"

#include "struct_decls/struct_02098700_decl.h"
#include "struct_defs/battle_regulation.h"

#include "battle_regulation.h"
#include "party.h"
#include "pokedex_heightweight.h"
#include "pokemon.h"

HeightWeightData *HeightWeightData_Load(enum HeapID heapID)
{
    HeightWeightData *data = Pokedex_HeightWeightData(heapID);
    Pokedex_HeightWeightData_Load(data, FALSE, heapID);
    return data;
}

void HeightWeightData_Free(HeightWeightData *heightWeightData)
{
    Pokedex_HeightWeightData_Release(heightWeightData);
    Pokedex_HeightWeightData_Free(heightWeightData);
}

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

    if (Pokemon_GetValue(pokemon, MON_DATA_IS_EGG, NULL) != 0) {
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

int BattleRegulation_ValidatePartySelection(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData, u8 *selectedSlots)
{
    Pokemon *pokemon;
    int ruleValue, selectedCount = 0, i, j, totalLevel = 0;
    u16 species[6], heldItems[6];

    if (regulation == NULL) {
        return 0;
    }

    for (i = 0; i < 6; i++) {
        species[i] = 0;
        heldItems[i] = 0;

        if (selectedSlots[i]) {
            selectedCount++;
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_TEAM_SIZE);

    if (selectedCount != ruleValue) {
        return 4;
    }

    for (i = 0; i < 6; i++) {
        if (selectedSlots[i]) {
            int slotIndex = selectedSlots[i] - 1;

            pokemon = Party_GetPokemonBySlotIndex(party, slotIndex);

            if (BattleRegulation_ValidatePokemon(regulation, pokemon, heightWeightData) == FALSE) {
                return 5;
            }

            species[i] = (u16)Pokemon_GetValue(pokemon, MON_DATA_SPECIES, NULL);
            heldItems[i] = (u16)Pokemon_GetValue(pokemon, MON_DATA_HELD_ITEM, NULL);

            totalLevel += Pokemon_GetValue(pokemon, MON_DATA_LEVEL, NULL);
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL);

    if ((totalLevel > ruleValue) && (ruleValue != 0)) {
        return 1;
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_SPECIES_UNIQUE);

    if ((ruleValue == 0) && (selectedCount > 1)) {
        for (i = 0; i < (6 - 1); i++) {
            for (j = i + 1; j < 6; j++) {
                if ((species[i] == species[j]) && (species[i] != 0)) {
                    return 2;
                }
            }
        }
    }

    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_ITEM_UNIQUE);

    if ((ruleValue == 0) && (selectedCount > 1)) {
        for (i = 0; i < (6 - 1); i++) {
            for (j = i + 1; j < 6; j++) {
                if ((heldItems[i] == heldItems[j]) && (species[i] != 0) && (0 != heldItems[i])) {
                    return 3;
                }
            }
        }
    }

    return 0;
}

static BOOL BattleRegulation_FindValidTeamCombination(u16 *species, u16 *levels, u16 *used, int maxLevelSum, int slotIndex, int remainingSlots, int totalSlots)
{
    int currentLevelSum = maxLevelSum;
    int i;
    int slotsNeeded = remainingSlots;

    if ((species[slotIndex] != 0) && (used[slotIndex] == 0)) {
        currentLevelSum -= levels[slotIndex];

        if (currentLevelSum < 0) {
            return FALSE;
        }

        slotsNeeded--;

        if (slotsNeeded == 0) {
            return TRUE;
        }

        used[slotIndex] = 1;
    }

    for (i = slotIndex + 1; i < totalSlots; i++) {
        if (BattleRegulation_FindValidTeamCombination(species, levels, used, currentLevelSum, i, slotsNeeded, totalSlots)) {
            return TRUE;
        }
    }

    used[slotIndex] = 0;
    return FALSE;
}

int BattleRegulation_SelectValidPokemon(const BattleRegulation *regulation, Party *party, const HeightWeightData *heightWeightData)
{
    Pokemon *pokemon;
    int ruleValue, partyCount, i, j, validCount = 0;
    u16 species[6], levels[6], used[6];
    int requiredCount;

    partyCount = Party_GetCurrentCount(party);
    validCount = partyCount;

    MI_CpuClear8(used, 6 * sizeof(u16));

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

    if ((ruleValue == 0) && (partyCount > 1)) {
        for (i = 0; i < (partyCount - 1); i++) {
            for (j = i + 1; j < partyCount; j++) {
                if ((species[i] == species[j]) && (species[i] != 0)) {
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
        return 4;
    }

    requiredCount = ruleValue;
    ruleValue = BattleRegulation_GetRuleValue(regulation, BATTLE_REGULATION_RULE_MAX_TOTAL_LEVEL);

    if (ruleValue == 0) {
        return 0;
    }

    for (i = 0; i < partyCount; i++) {
        if (BattleRegulation_FindValidTeamCombination(species, levels, used, ruleValue, i, requiredCount, partyCount)) {
            return 0;
        }
    }

    return 1;
}
