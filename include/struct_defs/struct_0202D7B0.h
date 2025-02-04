#ifndef POKEPLATINUM_STRUCT_0202D7B0_H
#define POKEPLATINUM_STRUCT_0202D7B0_H

#include "struct_defs/struct_0202D7B0_sub2.h"
#include "struct_defs/struct_020698E4.h"
#include "struct_defs/struct_0206C638.h"

#include "field/field_system.h"

#define FLUTE_FACTOR_NONE       0
#define FLUTE_FACTOR_USED_BLACK 1 // decreases encounter rate by 50%
#define FLUTE_FACTOR_USED_WHITE 2 // increases encounter rate by 50%

#define ROAMING_SLOT_MESPRIT   (0)
#define ROAMING_SLOT_CRESSELIA (1)
#define ROAMING_SLOT_DARKRAI   (2) // Unused in-game, see: https://tcrf.net/Pok%C3%A9mon_Platinum#Unused_Roaming_Darkrai
#define ROAMING_SLOT_MOLTRES   (3)
#define ROAMING_SLOT_ZAPDOS    (4)
#define ROAMING_SLOT_ARTICUNO  (5)
#define ROAMING_SLOT_MAX       (6)

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

typedef struct {
    u8 lastSlatheredTree;
    HoneyTree honeyTrees[NUM_HONEY_TREES];
} HoneyTreeData;

typedef struct SpecialEncounter {
    int marshDaily; // random number, index of the mon is derived from this in ReplaceGreatMarshDailyEncounters
    int swarmDaily; // random number, % NUM_SWARMS to get swarm ID
    TrophyGardenMons trophyGarden;
    HoneyTreeData treeData;
    UnkStruct_020698E4 unk_BC;
    SpecialEncounter_sub2 unk_C8;
    Roamer roamers[ROAMING_SLOT_MAX];
    u8 roamerRouteIndexes[ROAMING_SLOT_MAX]; // Not a map ID. Actually index into RoamingPokemonRoutes in roaming_pokemon.c
    u8 swarmEnabled;
    u8 repelSteps;
    u8 radarCharge;
    u8 fluteFactor;
} SpecialEncounter;

#endif // POKEPLATINUM_STRUCT_0202D7B0_H
