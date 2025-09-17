#ifndef POKEPLATINUM_STRUCT_BATTLE_REGULATION_H
#define POKEPLATINUM_STRUCT_BATTLE_REGULATION_H

typedef struct {
    u16 name[12]; // Battle regulation name (12 characters)
    u16 maxTotalLevel; // Maximum total level sum for team
    u8 teamSize; // Required team size
    u8 maxLevel; // Maximum level per Pokémon
    s8 heightRestriction; // Height restriction value (positive/negative)
    s8 weightRestriction; // Weight restriction value (positive/negative)
    u8 speciesRestriction : 1; // Enable species restrictions
    u8 itemRestriction : 1; // Enable item restrictions
    u8 speciesUniqueness : 1; // Require unique species (no duplicates)
    u8 itemUniqueness : 1; // Require unique items (no duplicates)
    u8 moveRestrictions : 1; // Move restrictions flag for regulated battles
} BattleRegulation;

#endif // POKEPLATINUM_STRUCT_BATTLE_REGULATION_H
