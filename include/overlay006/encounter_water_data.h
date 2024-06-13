#ifndef POKEPLATINUM_WATER_ENCOUNTER_DATA_H
#define POKEPLATINUM_WATER_ENCOUNTER_DATA_H

typedef struct {
    char maxLevel;
    char minLevel;
    u8 padding_02[2];
    int species;
} WaterEncounterData;

#endif // POKEPLATINUM_WATER_ENCOUNTER_DATA_H
