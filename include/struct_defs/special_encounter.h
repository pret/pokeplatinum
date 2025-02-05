#ifndef POKEPLATINUM_STRUCT_SPECIAL_ENCOUNTER_H
#define POKEPLATINUM_STRUCT_SPECIAL_ENCOUNTER_H

#include "struct_defs/radar_chain_records.h"

#include "field/field_system.h"

#define FLUTE_FACTOR_NONE       0
#define FLUTE_FACTOR_USED_BLACK 1 // decreases encounter rate by 50%
#define FLUTE_FACTOR_USED_WHITE 2 // increases encounter rate by 50%

enum RoamingSlot {
    ROAMING_SLOT_MESPRIT = 0,
    ROAMING_SLOT_CRESSELIA,
    ROAMING_SLOT_DARKRAI, // Unused in-game, see: https://tcrf.net/Pok%C3%A9mon_Platinum#Unused_Roaming_Darkrai
    ROAMING_SLOT_MOLTRES,
    ROAMING_SLOT_ZAPDOS,
    ROAMING_SLOT_ARTICUNO,
    ROAMING_SLOT_MAX
};

typedef struct TrophyGardenMons {
    BOOL unused;
    u16 slot1;
    u16 slot2;
} TrophyGardenMons;

typedef struct HoneyTree {
    int minutesRemaining;
    u8 encounterSlot;
    u8 encounterTableIndex; // value is normally just encounterGroup - 1
    u8 encounterGroup;
    u8 numShakes;
} HoneyTree;

typedef struct PlayerHoneyTreeStates {
    u8 lastSlatheredTree;
    HoneyTree honeyTrees[NUM_HONEY_TREES];
} PlayerHoneyTreeStates;

typedef struct Roamer {
    int currentMapId;
    u32 ivs;
    u32 personality;
    u16 species;
    u16 currentHP;
    u8 level;
    u8 status;
    u8 active;
} Roamer;

typedef struct PlayerRecentRoutes {
    int currentMapId;
    int previousMapId;
} PlayerRecentRoutes;

typedef struct SpecialEncounter {
    int marshDaily; // random number, index of the mon is derived from this in ReplaceGreatMarshDailyEncounters
    int swarmDaily; // random number, % NUM_SWARMS to get swarm ID
    TrophyGardenMons trophyGarden;
    PlayerHoneyTreeStates treeStates;
    RadarChainRecords chainRecords;
    PlayerRecentRoutes recentRoutes; // Used to prevent roamers from trolling you by moving to the route you just left
    Roamer roamers[ROAMING_SLOT_MAX];
    u8 roamerRouteIndexes[ROAMING_SLOT_MAX]; // Not a map ID. Actually index into RoamingPokemonRoutes in roaming_pokemon.c
    u8 swarmEnabled;
    u8 repelSteps;
    u8 radarCharge;
    u8 fluteFactor;
} SpecialEncounter;

#endif // POKEPLATINUM_STRUCT_SPECIAL_ENCOUNTER_H
