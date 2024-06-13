#ifndef POKEPLATINUM_WILD_ENCOUNTER_DATA_H
#define POKEPLATINUM_WILD_ENCOUNTER_DATA_H

#include "overlay006/encounter_field_data.h"
#include "overlay006/encounter_water_data.h"

typedef struct WildEncounterData {
    int encounterRateField;
    FieldEncounterData fieldEncounters[12];
    int swarmEncounters[2];
    int dayEncounters[2];
    int nightEncounters[2];
    int radarEncounters[4];
    int encounterRatesForms[5];
    int unownTableID;
    int dualSlotRubyEncounters[2];
    int dualSlotSapphireEncounters[2];
    int dualSlotEmeraldEncouters[2];
    int dualSlotFireredEncounters[2];
    int dualSlotLeafgreenEncounters[2];
    int encounterRateSurf;
    WaterEncounterData surfEncounters[5];
    int unk_CC;
    WaterEncounterData unk_D0[5];
    int encounterRateOldRod;
    WaterEncounterData oldRodEncounters[5];
    int encounterRateGoodRod;
    WaterEncounterData goodRodEncounters[5];
    int encounterRateSuperRod;
    WaterEncounterData superRodEnconters[5];
} WildEncounterData;

#endif // POKEPLATINUM_WILD_ENCOUNTER_DATA_H
