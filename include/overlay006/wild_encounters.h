#ifndef POKEPLATINUM_WILD_ENCOUNTERS_H
#define POKEPLATINUM_WILD_ENCOUNTERS_H

#include "constants/wild_encounters.h"

typedef struct GrassEncounterData {
    s8 level;
    u8 padding_01[3];
    int species;
} GrassEncounterData;

typedef struct GrassEncounters {
    int encounterRate;
    GrassEncounterData encounters[MAX_GRASS_ENCOUNTERS];
} GrassEncounters;

typedef struct WaterEncounterData {
    s8 maxLevel;
    s8 minLevel;
    u8 padding_02[2];
    int species;
} WaterEncounterData;

typedef struct WaterEncounters {
    int encounterRate;
    WaterEncounterData encounters[MAX_WATER_ENCOUNTERS];
} WaterEncounters;

typedef struct WildEncounters {
    GrassEncounters grassEncounters;
    int swarmEncounters[MAX_SWARM_ENCOUNTERS];
    int dayEncounters[MAX_TIMED_ENCOUNTERS];
    int nightEncounters[MAX_TIMED_ENCOUNTERS];
    int radarEncounters[MAX_RADAR_ENCOUNTERS];
    int encounterRatesForms[5];
    int unownTableID;
    int dualSlotRubyEncounters[MAX_DUAL_SLOT_ENCOUNTERS];
    int dualSlotSapphireEncounters[MAX_DUAL_SLOT_ENCOUNTERS];
    int dualSlotEmeraldEncouters[MAX_DUAL_SLOT_ENCOUNTERS];
    int dualSlotFireredEncounters[MAX_DUAL_SLOT_ENCOUNTERS];
    int dualSlotLeafgreenEncounters[MAX_DUAL_SLOT_ENCOUNTERS];
    WaterEncounters surfEncounters;
    WaterEncounters unused;
    WaterEncounters oldRodEncounters;
    WaterEncounters goodRodEncounters;
    WaterEncounters superRodEncounters;
} WildEncounters;

#endif // POKEPLATINUM_WILD_ENCOUNTERS_H
