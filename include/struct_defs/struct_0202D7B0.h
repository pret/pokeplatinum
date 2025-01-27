#ifndef POKEPLATINUM_STRUCT_0202D7B0_H
#define POKEPLATINUM_STRUCT_0202D7B0_H

#include "struct_defs/struct_0202D7B0_sub2.h"
#include "struct_defs/struct_0202D844.h"
#include "struct_defs/struct_020698E4.h"
#include "struct_defs/struct_0206C638.h"

#define FLUTE_FACTOR_NONE       0
#define FLUTE_FACTOR_USED_BLACK 1 // decreases encounter rate by 50%
#define FLUTE_FACTOR_USED_WHITE 2 // increases encounter rate by 50%

typedef struct TrophyGardenMons {
    BOOL unused;
    u16 slot1;
    u16 slot2;
} TrophyGardenMons;

typedef struct SpecialEncounter {
    int marshDaily; // random number, index of the mon is derived from this in ReplaceGreatMarshDailyEncounters
    int swarmDaily; // random number, % NUM_SWARMS to get swarm ID
    TrophyGardenMons trophyGarden;
    UnkStruct_0202D844 unk_10;
    UnkStruct_020698E4 unk_BC;
    SpecialEncounter_sub2 unk_C8;
    Roamer roamers[6];
    u8 roamerRouteIndexes[6]; // Not a map ID. Actually index into RoamingPokemonRoutes in roaming_pokemon.c
    u8 swarmEnabled;
    u8 repelSteps;
    u8 radarCharge;
    u8 fluteFactor;
} SpecialEncounter;

#endif // POKEPLATINUM_STRUCT_0202D7B0_H
