#ifndef POKEPLATINUM_SPECIES_H
#define POKEPLATINUM_SPECIES_H

#define MAX_ABILITIES  2
#define MAX_EGG_GROUPS 2
#define MAX_TYPES      2

#define MAX_EVOLUTIONS 7

#define MAX_LEARNSET_ENTRIES        20
#define LEARNSET_NO_MOVE_TO_LEARN   0
#define LEARNSET_MOVE_ALREADY_KNOWN 0xFFFE
#define LEARNSET_ALL_SLOTS_FILLED   0xFFFF
#define LEARNSET_SENTINEL_ENTRY     0xFFFF

typedef struct SpeciesBaseStats {
    u8 hp;
    u8 attack;
    u8 defense;
    u8 speed;
    u8 spAttack;
    u8 spDefense;
} SpeciesBaseStats;

typedef struct SpeciesEVYields {
    u16 hp : 2;
    u16 attack : 2;
    u16 defense : 2;
    u16 speed : 2;
    u16 spAttack : 2;
    u16 spDefense : 2;
} SpeciesEVYields;

typedef struct SpeciesWildHeldItems {
    u16 common;
    u16 rare;
} SpeciesWildHeldItems;

typedef struct SpeciesData {
    SpeciesBaseStats baseStats;
    u8 types[MAX_TYPES];
    u8 catchRate;
    u8 baseExpReward;
    SpeciesEVYields evYields;
    SpeciesWildHeldItems wildHeldItems;
    u8 genderRatio;
    u8 hatchCycles;
    u8 baseFriendship;
    u8 expRate;
    u8 eggGroups[MAX_EGG_GROUPS];
    u8 abilities[MAX_ABILITIES];
    u8 safariFleeRate;
    u8 bodyColor : 7;
    u8 flipSprite : 1;
    // u16 padding;

    u32 tmLearnsetMasks[4]; // Bitflags for whether this pokemon can learn a TM
} SpeciesData;

typedef struct SpeciesEvolution {
    u16 method;
    u16 param;
    u16 targetSpecies;
} SpeciesEvolution;

// This struct is not explicitly used; it is provided to document and enforce the size of
// the learnset entries.
typedef struct SpeciesLearnset {
    ALIGN_4 u16 entries[MAX_LEARNSET_ENTRIES + 1];
} SpeciesLearnset;

#endif // POKEPLATINUM_SPECIES_H
