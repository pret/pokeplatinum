#ifndef POKEPLATINUM_GBA_SAVE_H
#define POKEPLATINUM_GBA_SAVE_H

#include "constants/gba/global.h"
#include "constants/gba/pokemon.h"
#include "constants/gba/save.h"

typedef struct GBAPokemonSubstruct0 {
    u16 species;
    u16 heldItem;
    u32 experience;
    u8 ppBonuses;
    u8 friendship;
    u16 padding;
} GBAPokemonSubstruct0;

typedef struct GBAPokemonSubstruct1 {
    u16 moves[GBA_LEARNED_MOVES_MAX];
    u8 pp[GBA_LEARNED_MOVES_MAX];
} GBAPokemonSubstruct1;

typedef struct GBAPokemonSubstruct2 {
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
} GBAPokemonSubstruct2;

typedef struct GBAPokemonSubstruct3 {
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
} GBAPokemonSubstruct3;

union GBAPokemonSubstruct {
    GBAPokemonSubstruct0 type0;
    GBAPokemonSubstruct1 type1;
    GBAPokemonSubstruct2 type2;
    GBAPokemonSubstruct3 type3;
    u16 raw[6];
};

typedef struct GBABoxPokemon {
    u32 personality;
    u32 otId;
    u8 nickname[GBA_MON_NAME_LEN];
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
        union GBAPokemonSubstruct substructs[4];
    } secure;
} GBABoxPokemon;

typedef struct {
    u8 currentBox;
    GBABoxPokemon boxes[GBA_MAX_PC_BOXES][GBA_MAX_MONS_PER_BOX];
    u8 boxNames[GBA_MAX_PC_BOXES][GBA_BOX_NAME_LEN + 1];
    u8 boxWallpapers[GBA_MAX_PC_BOXES];
} GBAPokemonStorage;

typedef struct {
    u32 unk_00[1024];
    u8 saveBlock2[GBA_SECTOR_SIZE * 1];
    u8 saveBlock1[GBA_SECTOR_SIZE * 4];
    GBAPokemonStorage pokemonStorage;
} GBASaveSlot;

#endif // POKEPLATINUM_GBA_SAVE_H
