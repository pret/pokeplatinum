#ifndef POKEPLATINUM_BOX_POKEMON_GBA_H
#define POKEPLATINUM_BOX_POKEMON_GBA_H

#include "constants/gba/pokemon_storage_system.h"

typedef struct {
    u16 species;
    u16 heldItem;
    u32 experience;
    u8 ppBonuses;
    u8 friendship;
    u16 padding;
} PokemonGBASubstruct0;

typedef struct {
    u16 moves[4];
    u8 pp[4];
} PokemonGBASubstruct1;

typedef struct {
    u8 hpEV;
    u8 attackEV;
    u8 defenseEV;
    u8 speedEV;
    u8 spAttackEV;
    u8 spDefenseEV;
    u8 cool;
    u8 beauty;
    u8 cute;
    u8 smart;
    u8 tough;
    u8 sheen;
} PokemonGBASubstruct2;

typedef struct {
    u32 pokerus : 8;
    u32 metLocation : 8;
    u32 metLevel : 7;
    u32 metGame : 4;
    u32 pokeball : 4;
    u32 otGender : 1;
    u32 hpIV : 5;
    u32 attackIV : 5;
    u32 defenseIV : 5;
    u32 speedIV : 5;
    u32 spAttackIV : 5;
    u32 spDefenseIV : 5;
    u32 isEgg : 1;
    u32 abilityNum : 1;
    u32 coolRibbon : 3; // Stores the highest contest rank achieved in the Cool category.
    u32 beautyRibbon : 3; // Stores the highest contest rank achieved in the Beauty category.
    u32 cuteRibbon : 3; // Stores the highest contest rank achieved in the Cute category.
    u32 smartRibbon : 3; // Stores the highest contest rank achieved in the Smart category.
    u32 toughRibbon : 3; // Stores the highest contest rank achieved in the Tough category.
    u32 championRibbon : 1; // Given when defeating the Champion in both RSE and FRLG.
    u32 winningRibbon : 1; // Given at the Battle Tower's Level 50 challenge by winning a set of seven battles that extends the current streak to 56 or more.
    u32 victoryRibbon : 1; // Given at the Battle Tower's Level 100 challenge by winning a set of seven battles that extends the current streak to 56 or more.
    u32 artistRibbon : 1; // Given at the Contest Hall by winning a Master Rank contest with at least 800 points, and agreeing to have the Pokémon's portrait placed in the museum after being offered.
    u32 effortRibbon : 1; // Given at Slateport's market to Pokémon with maximum EVs.
    u32 marineRibbon : 1; // Never distributed.
    u32 landRibbon : 1; // Never distributed.
    u32 skyRibbon : 1; // Never distributed.
    u32 countryRibbon : 1; // Distributed during Pokémon Festa '04 and '05 to tournament winners.
    u32 nationalRibbon : 1; // Given to purified Shadow Pokémon in Colosseum/XD.
    u32 earthRibbon : 1; // Given to teams that have beaten Mt. Battle's 100-battle challenge in Colosseum/XD.
    u32 worldRibbon : 1; // Distributed during Pokémon Festa '04 and '05 to tournament winners.
    u32 unusedRibbons : 4; // Discarded in Gen 4.

    // The functionality of this bit changed in FRLG:
    // In RS, this bit does nothing, is never set, & is accidentally unset when hatching Eggs.
    // In FRLG & Emerald, this controls Mew & Deoxys obedience and whether they can be traded.
    // If set, a Pokémon is a fateful encounter in FRLG's summary screen if hatched & for all Pokémon in Gen 4+ summary screens.
    // Set for in-game event island legendaries, events distributed after a certain date, & Pokémon from XD: Gale of Darkness.
    // Not to be confused with METLOC_FATEFUL_ENCOUNTER.
    u32 modernFatefulEncounter : 1;
} PokemonGBASubstruct3;

union PokemonGBASubstruct {
    PokemonGBASubstruct0 type0;
    PokemonGBASubstruct1 type1;
    PokemonGBASubstruct2 type2;
    PokemonGBASubstruct3 type3;
    u16 raw[6];
};

typedef struct BoxPokemonGBA {
    u32 personality;
    u32 otId;
    u8 nickname[10];
    u8 language;
    u8 isBadEgg : 1;
    u8 hasSpecies : 1;
    u8 isEgg : 1;
    u8 unused : 5;
    u8 otName[7];
    u8 markings;
    u16 checksum;
    u16 unknown;
    union {
        u32 raw[12];
        union PokemonGBASubstruct substructs[4];
    } secure;
} BoxPokemonGBA;

typedef struct {
    u8 currentBox;
    BoxPokemonGBA boxes[GBA_MAX_PC_BOXES][GBA_MAX_MONS_PER_BOX];
    u8 boxNames[GBA_MAX_PC_BOXES][9];
    u8 boxWallpapers[GBA_MAX_PC_BOXES];
} PokemonStorageGBA;

#endif // POKEPLATINUM_BOX_POKEMON_GBA_H
